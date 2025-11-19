uint64_t Apple_Workout_Core_HKActivitySummary.activeEnergyBurned.getter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = *(v2 + *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20));
  v10 = *a1;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v9 + v10, v8, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v11 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v12 = *(*(v11 - 8) + 48);
  if (v12(v8, 1, v11) != 1)
  {
    return outlined init with take of Apple_Workout_Core_HKActivitySummary(v8, a2, type metadata accessor for Apple_Workout_Core_HKQuantity);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xE000000000000000;
  v13 = a2 + *(v11 + 24);
  UnknownStorage.init()();
  result = (v12)(v8, 1, v11);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_HKActivitySummary?(v8, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_HKActivitySummary.activeEnergyBurned : Apple_Workout_Core_HKActivitySummary@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = *(a1 + *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20));
  v11 = *a2;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v10 + v11, v9, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v13 = *(*(v12 - 8) + 48);
  if (v13(v9, 1, v12) != 1)
  {
    return outlined init with take of Apple_Workout_Core_HKActivitySummary(v9, a3, type metadata accessor for Apple_Workout_Core_HKQuantity);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0xE000000000000000;
  v14 = a3 + *(v12 + 24);
  UnknownStorage.init()();
  result = (v13)(v9, 1, v12);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_HKActivitySummary?(v9, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_HKActivitySummary.activeEnergyBurned : Apple_Workout_Core_HKActivitySummary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  v12 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_HKActivitySummary(a1, v16, type metadata accessor for Apple_Workout_Core_HKQuantity);
  v17 = *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20);
  v18 = *(a2 + v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(a2 + v17);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v20 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v20);
    *(a2 + v17) = v20;
  }

  outlined init with take of Apple_Workout_Core_HKActivitySummary(v16, v11, type metadata accessor for Apple_Workout_Core_HKQuantity);
  (*(v13 + 56))(v11, 0, 1, v12);
  v24 = *a5;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_HKQuantity?(v11, v20 + v24);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_HKActivitySummary.activeEnergyBurned.setter(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  v10 = *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20);
  v11 = *(v2 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v2 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    v13 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v13);
    *(v4 + v10) = v13;
  }

  outlined init with take of Apple_Workout_Core_HKActivitySummary(a1, v9, type metadata accessor for Apple_Workout_Core_HKQuantity);
  v17 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
  v18 = *a2;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_HKQuantity?(v9, v13 + v18);
  return swift_endAccess();
}

void (*Apple_Workout_Core_HKActivitySummary.standHoursGoal.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__standHoursGoal;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0xE000000000000000;
    v19 = v14 + *(v9 + 24);
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_HKActivitySummary?(v8, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_HKActivitySummary(v8, v14, type metadata accessor for Apple_Workout_Core_HKQuantity);
  }

  return Apple_Workout_Core_HKActivitySummary.standHoursGoal.modify;
}

void Apple_Workout_Core_HKActivitySummary.activeEnergyBurned.modify(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    v6 = *(v4 + 72);
    outlined init with copy of Apple_Workout_Core_HKActivitySummary(*(v4 + 120), *(v4 + 112), type metadata accessor for Apple_Workout_Core_HKQuantity);
    v7 = *(v6 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = *(v4 + 128);
      v11 = *(v4 + 72);
      v12 = type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      swift_allocObject();
      v9 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v9);
      *(v11 + v10) = v9;
    }

    v16 = *(v4 + 112);
    v15 = *(v4 + 120);
    v17 = *(v4 + 96);
    v18 = *(v4 + 104);
    v20 = *(v4 + 80);
    v19 = *(v4 + 88);
    outlined init with take of Apple_Workout_Core_HKActivitySummary(v16, v20, type metadata accessor for Apple_Workout_Core_HKQuantity);
    (*(v18 + 56))(v20, 0, 1, v17);
    v21 = *a3;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_HKQuantity?(v20, v9 + v21);
    swift_endAccess();
    outlined destroy of Apple_Workout_Core_HKActivitySummary(v15, type metadata accessor for Apple_Workout_Core_HKQuantity);
  }

  else
  {
    v22 = *(v4 + 72);
    v23 = *(v22 + v5);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v22 + v5);
    if ((v24 & 1) == 0)
    {
      v26 = *(v4 + 128);
      v27 = *(v4 + 72);
      v28 = type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
      v29 = *(v28 + 48);
      v30 = *(v28 + 52);
      swift_allocObject();
      v25 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v25);
      *(v27 + v26) = v25;
    }

    v16 = *(v4 + 112);
    v15 = *(v4 + 120);
    v31 = *(v4 + 96);
    v32 = *(v4 + 104);
    v20 = *(v4 + 80);
    v19 = *(v4 + 88);
    outlined init with take of Apple_Workout_Core_HKActivitySummary(v15, v20, type metadata accessor for Apple_Workout_Core_HKQuantity);
    (*(v32 + 56))(v20, 0, 1, v31);
    v33 = *a3;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_HKQuantity?(v20, v25 + v33);
    swift_endAccess();
  }

  free(v15);
  free(v16);
  free(v19);
  free(v20);

  free(v4);
}

uint64_t Apple_Workout_Core_HKActivitySummary.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Apple_Workout_Core_HKActivitySummary.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Apple_Workout_Core_ActivitySummaryMetricsPublisher.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      closure #1 in Apple_Workout_Core_ActivitySummaryMetricsPublisher.decodeMessage<A>(decoder:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_ActivitySummaryMetricsPublisher.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0) + 24);
  type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_HKActivitySummary and conformance Apple_Workout_Core_HKActivitySummary, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_Core_ActivitySummaryMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Apple_Workout_Core_ActivitySummaryMetricsPublisher.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3 == 1)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    v6 = &v3[*(type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0) + 20)];
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_ActivitySummaryMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(a1 + *(v14 + 24), v8, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_HKActivitySummary?(v8, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  }

  outlined init with take of Apple_Workout_Core_HKActivitySummary(v8, v13, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_HKActivitySummary and conformance Apple_Workout_Core_HKActivitySummary, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_HKActivitySummary(v13, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  v4 = &a2[*(a1 + 20)];
  UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher()
{
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);

  return Message.hash(into:)();
}

uint64_t static Apple_Workout_Core_ActivityMoveMode._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v7 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurned;
  v8 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v9 = *(*(v8 - 8) + 56);
  v9(v1 + v7, 1, 1, v8);
  v10 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTime;
  v9(v1 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTime, 1, 1, v8);
  v27 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleExerciseTime;
  v9(v1 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleExerciseTime, 1, 1, v8);
  v28 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleStandHours;
  v9(v1 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleStandHours, 1, 1, v8);
  v29 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurnedGoal;
  v9(v1 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurnedGoal, 1, 1, v8);
  v30 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTimeGoal;
  v9(v1 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTimeGoal, 1, 1, v8);
  v31 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__exerciseTimeGoal;
  v9(v1 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__exerciseTimeGoal, 1, 1, v8);
  v32 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__standHoursGoal;
  v9(v1 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__standHoursGoal, 1, 1, v8);
  swift_beginAccess();
  v11 = *(a1 + 16);
  LOBYTE(v8) = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v11;
  *(v1 + 24) = v8;
  v12 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurned;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(a1 + v12, v6, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_HKQuantity?(v6, v1 + v7);
  swift_endAccess();
  v13 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTime;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(a1 + v13, v6, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_HKQuantity?(v6, v1 + v10);
  swift_endAccess();
  v14 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleExerciseTime;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(a1 + v14, v6, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v15 = v27;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_HKQuantity?(v6, v1 + v15);
  swift_endAccess();
  v16 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleStandHours;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(a1 + v16, v6, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v17 = v28;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_HKQuantity?(v6, v1 + v17);
  swift_endAccess();
  v18 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurnedGoal;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(a1 + v18, v6, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v19 = v29;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_HKQuantity?(v6, v1 + v19);
  swift_endAccess();
  v20 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTimeGoal;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(a1 + v20, v6, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v21 = v30;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_HKQuantity?(v6, v1 + v21);
  swift_endAccess();
  v22 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__exerciseTimeGoal;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(a1 + v22, v6, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v23 = v31;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_HKQuantity?(v6, v1 + v23);
  swift_endAccess();
  v24 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__standHoursGoal;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(a1 + v24, v6, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);

  v25 = v32;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_HKQuantity?(v6, v1 + v25);
  swift_endAccess();
  return v1;
}

uint64_t outlined init with copy of Apple_Workout_Core_HKActivitySummary?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of Apple_Workout_Core_HKActivitySummary(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of Apple_Workout_Core_HKQuantity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_Core_HKActivitySummary(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_HKActivitySummary(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Apple_Workout_Core_HKActivitySummary._StorageClass.__deallocating_deinit()
{
  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v0 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurned, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v0 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTime, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v0 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleExerciseTime, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v0 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleStandHours, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v0 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurnedGoal, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v0 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTimeGoal, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v0 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__exerciseTimeGoal, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v0 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__standHoursGoal, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t Apple_Workout_Core_HKActivitySummary.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v3 + v8);
    v13 = type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v12);
    *(v4 + v8) = v11;
  }

  return closure #1 in Apple_Workout_Core_HKActivitySummary.decodeMessage<A>(decoder:)(v11, a1, a2, a3);
}

uint64_t closure #1 in Apple_Workout_Core_HKActivitySummary.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result > 2)
        {
          if (result == 3)
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTime;
          }

          else
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleExerciseTime;
          }

          goto LABEL_5;
        }

        if (result == 1)
        {
          closure #1 in closure #1 in Apple_Workout_Core_HKActivitySummary.decodeMessage<A>(decoder:)();
        }

        else if (result == 2)
        {
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurned;
          goto LABEL_5;
        }
      }

      else
      {
        if (result <= 6)
        {
          if (result == 5)
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleStandHours;
          }

          else
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurnedGoal;
          }

          goto LABEL_5;
        }

        switch(result)
        {
          case 7:
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTimeGoal;
            goto LABEL_5;
          case 8:
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__exerciseTimeGoal;
            goto LABEL_5;
          case 9:
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__standHoursGoal;
LABEL_5:
            closure #2 in closure #1 in Apple_Workout_Core_HKActivitySummary.decodeMessage<A>(decoder:)(v11, v12, v13, v14, v15);
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in Apple_Workout_Core_HKActivitySummary.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMoveMode and conformance Apple_Workout_Core_ActivityMoveMode();
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #2 in closure #1 in Apple_Workout_Core_HKActivitySummary.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_HKQuantity();
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_HKQuantity and conformance Apple_Workout_Core_HKQuantity, type metadata accessor for Apple_Workout_Core_HKQuantity);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_HKActivitySummary.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  result = closure #1 in Apple_Workout_Core_HKActivitySummary.traverse<A>(visitor:)(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_HKActivitySummary.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(a1 + 16) || (v10 = *(a1 + 16), v11 = *(a1 + 24), lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMoveMode and conformance Apple_Workout_Core_ActivityMoveMode(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in closure #1 in Apple_Workout_Core_HKActivitySummary.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurned, 2);
    if (!v4)
    {
      closure #1 in closure #1 in Apple_Workout_Core_HKActivitySummary.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTime, 3);
      closure #1 in closure #1 in Apple_Workout_Core_HKActivitySummary.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleExerciseTime, 4);
      closure #1 in closure #1 in Apple_Workout_Core_HKActivitySummary.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleStandHours, 5);
      closure #1 in closure #1 in Apple_Workout_Core_HKActivitySummary.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurnedGoal, 6);
      closure #1 in closure #1 in Apple_Workout_Core_HKActivitySummary.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTimeGoal, 7);
      closure #1 in closure #1 in Apple_Workout_Core_HKActivitySummary.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__exerciseTimeGoal, 8);
      return closure #1 in closure #1 in Apple_Workout_Core_HKActivitySummary.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__standHoursGoal, 9);
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in Apple_Workout_Core_HKActivitySummary.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v19[1] = a6;
  v19[2] = a3;
  v19[7] = a4;
  v19[0] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v19 - v10;
  v12 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a5;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(a1 + v17, v11, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return outlined destroy of Apple_Workout_Core_HKActivitySummary?(v11, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  }

  outlined init with take of Apple_Workout_Core_HKActivitySummary(v11, v16, type metadata accessor for Apple_Workout_Core_HKQuantity);
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_HKQuantity and conformance Apple_Workout_Core_HKQuantity, type metadata accessor for Apple_Workout_Core_HKQuantity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_HKActivitySummary(v16, type metadata accessor for Apple_Workout_Core_HKQuantity);
}

BOOL closure #1 in static Apple_Workout_Core_HKActivitySummary.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v5 = *(v4 - 8);
  v249 = v4;
  v250 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v221 = &v217 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v222 = &v217 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v225 = &v217 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v228 = &v217 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v232 = &v217 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v236 = &v217 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v240 = &v217 - v20;
  MEMORY[0x28223BE20](v19);
  v244 = &v217 - v21;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMR);
  v22 = *(*(v248 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v248);
  v25 = &v217 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v226 = &v217 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v230 = &v217 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v234 = &v217 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v238 = &v217 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v242 = &v217 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v245 = &v217 - v37;
  MEMORY[0x28223BE20](v36);
  v39 = &v217 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v44 = (&v217 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = MEMORY[0x28223BE20](v42);
  v224 = &v217 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v223 = &v217 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v229 = &v217 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v227 = &v217 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v233 = &v217 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v231 = &v217 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v237 = &v217 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v235 = &v217 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v241 = &v217 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v239 = &v217 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v246 = &v217 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v243 = &v217 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v247 = &v217 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v73 = &v217 - v72;
  MEMORY[0x28223BE20](v71);
  v75 = &v217 - v74;
  swift_beginAccess();
  v76 = *(a1 + 16);
  v77 = *(a1 + 24);
  swift_beginAccess();
  v78 = *(a2 + 16);
  v79 = v76 != 0;
  if (!v77)
  {
    v79 = v76;
  }

  if (*(a2 + 24) != 1)
  {
    if (v79 != v78)
    {
      return 0;
    }

    goto LABEL_10;
  }

  if (v78)
  {
    if (v79 != 1)
    {
      return 0;
    }

LABEL_10:
    v219 = v44;
    v220 = v25;
    v251 = a2;
    v80 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurned;
    swift_beginAccess();
    outlined init with copy of Apple_Workout_Core_HKActivitySummary?(a1 + v80, v75, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    v81 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurned;
    swift_beginAccess();
    v82 = *(v248 + 48);
    outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v75, v39, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    v83 = v251;
    outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v251 + v81, &v39[v82], &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    v84 = v249;
    v86 = v250 + 48;
    v85 = *(v250 + 48);
    if (v85(v39, 1, v249) == 1)
    {

      outlined destroy of Apple_Workout_Core_HKActivitySummary?(v75, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
      if (v85(&v39[v82], 1, v84) == 1)
      {
        v218 = v85;
        v250 = v86;
        outlined destroy of Apple_Workout_Core_HKActivitySummary?(v39, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
        v87 = v83;
        goto LABEL_13;
      }
    }

    else
    {
      outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v39, v73, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
      v163 = v84;
      if (v85(&v39[v82], 1, v84) != 1)
      {
        v164 = v244;
        outlined init with take of Apple_Workout_Core_HKActivitySummary(&v39[v82], v244, type metadata accessor for Apple_Workout_Core_HKQuantity);
        if (*v73 != *v164 || (*(v73 + 1) != *(v164 + 8) || *(v73 + 2) != *(v164 + 16)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {

          outlined destroy of Apple_Workout_Core_HKActivitySummary?(v75, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
          outlined destroy of Apple_Workout_Core_HKActivitySummary(v164, type metadata accessor for Apple_Workout_Core_HKQuantity);
          outlined destroy of Apple_Workout_Core_HKActivitySummary(v73, type metadata accessor for Apple_Workout_Core_HKQuantity);
          outlined destroy of Apple_Workout_Core_HKActivitySummary?(v39, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
LABEL_109:

          goto LABEL_110;
        }

        v218 = v85;
        v250 = v86;
        v165 = *(v163 + 24);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);

        v166 = v164;
        v87 = v251;

        v167 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Apple_Workout_Core_HKActivitySummary?(v75, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
        outlined destroy of Apple_Workout_Core_HKActivitySummary(v166, type metadata accessor for Apple_Workout_Core_HKQuantity);
        outlined destroy of Apple_Workout_Core_HKActivitySummary(v73, type metadata accessor for Apple_Workout_Core_HKQuantity);
        outlined destroy of Apple_Workout_Core_HKActivitySummary?(v39, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
        if ((v167 & 1) == 0)
        {
          goto LABEL_109;
        }

LABEL_13:
        v88 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTime;
        swift_beginAccess();
        v217 = a1;
        v89 = a1 + v88;
        v90 = v247;
        outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v89, v247, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
        v91 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTime;
        swift_beginAccess();
        v92 = *(v248 + 48);
        v93 = v245;
        outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v90, v245, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
        outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v87 + v91, v93 + v92, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
        v94 = v249;
        v95 = v218;
        if (v218(v93, 1, v249) == 1)
        {
          outlined destroy of Apple_Workout_Core_HKActivitySummary?(v90, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
          v96 = v95(v93 + v92, 1, v94);
          v97 = v246;
          v98 = v217;
          if (v96 == 1)
          {
            outlined destroy of Apple_Workout_Core_HKActivitySummary?(v93, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
LABEL_16:
            v99 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleExerciseTime;
            swift_beginAccess();
            outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v98 + v99, v97, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
            v100 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleExerciseTime;
            v101 = v97;
            v102 = v251;
            swift_beginAccess();
            v103 = *(v248 + 48);
            v104 = v242;
            outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v101, v242, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
            v105 = v102 + v100;
            v106 = v249;
            outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v105, v104 + v103, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
            if (v95(v104, 1, v106) == 1)
            {
              outlined destroy of Apple_Workout_Core_HKActivitySummary?(v101, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
              v107 = v95(v104 + v103, 1, v106);
              v108 = v241;
              v109 = v217;
              if (v107 == 1)
              {
                v218 = v95;
                outlined destroy of Apple_Workout_Core_HKActivitySummary?(v104, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                goto LABEL_19;
              }
            }

            else
            {
              v177 = v239;
              outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v104, v239, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
              v178 = v95(v104 + v103, 1, v106);
              v108 = v241;
              if (v178 != 1)
              {
                v179 = v104 + v103;
                v180 = v236;
                outlined init with take of Apple_Workout_Core_HKActivitySummary(v179, v236, type metadata accessor for Apple_Workout_Core_HKQuantity);
                v109 = v217;
                if (*v177 != *v180 || (*(v177 + 8) != *(v180 + 8) || *(v177 + 16) != *(v180 + 16)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v246, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                  outlined destroy of Apple_Workout_Core_HKActivitySummary(v180, type metadata accessor for Apple_Workout_Core_HKQuantity);
                  outlined destroy of Apple_Workout_Core_HKActivitySummary(v177, type metadata accessor for Apple_Workout_Core_HKQuantity);
                  v172 = v242;
                  goto LABEL_107;
                }

                v218 = v95;
                v181 = *(v106 + 24);
                type metadata accessor for UnknownStorage();
                v182 = v177;
                lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
                v183 = dispatch thunk of static Equatable.== infix(_:_:)();
                outlined destroy of Apple_Workout_Core_HKActivitySummary?(v246, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                outlined destroy of Apple_Workout_Core_HKActivitySummary(v180, type metadata accessor for Apple_Workout_Core_HKQuantity);
                outlined destroy of Apple_Workout_Core_HKActivitySummary(v182, type metadata accessor for Apple_Workout_Core_HKQuantity);
                outlined destroy of Apple_Workout_Core_HKActivitySummary?(v242, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                if ((v183 & 1) == 0)
                {
                  goto LABEL_109;
                }

LABEL_19:
                v110 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleStandHours;
                swift_beginAccess();
                outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v109 + v110, v108, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                v111 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleStandHours;
                v112 = v108;
                v113 = v251;
                swift_beginAccess();
                v114 = *(v248 + 48);
                v115 = v238;
                outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v112, v238, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                v116 = v113 + v111;
                v117 = v249;
                v118 = v115;
                outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v116, v115 + v114, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                v119 = v218;
                if (v218(v115, 1, v117) == 1)
                {
                  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v112, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                  v120 = v119(v115 + v114, 1, v117);
                  v121 = v237;
                  if (v120 != 1)
                  {
                    goto LABEL_86;
                  }

                  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v118, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                }

                else
                {
                  v184 = v235;
                  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v115, v235, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                  v185 = v119(v115 + v114, 1, v117);
                  v121 = v237;
                  if (v185 == 1)
                  {
                    outlined destroy of Apple_Workout_Core_HKActivitySummary?(v241, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                    v186 = v184;
LABEL_85:
                    outlined destroy of Apple_Workout_Core_HKActivitySummary(v186, type metadata accessor for Apple_Workout_Core_HKQuantity);
                    goto LABEL_86;
                  }

                  v187 = v232;
                  outlined init with take of Apple_Workout_Core_HKActivitySummary(v118 + v114, v232, type metadata accessor for Apple_Workout_Core_HKQuantity);
                  if (*v184 != *v187 || (*(v184 + 8) != *(v187 + 8) || *(v184 + 16) != *(v187 + 16)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {
                    outlined destroy of Apple_Workout_Core_HKActivitySummary?(v241, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                    outlined destroy of Apple_Workout_Core_HKActivitySummary(v187, type metadata accessor for Apple_Workout_Core_HKQuantity);
                    outlined destroy of Apple_Workout_Core_HKActivitySummary(v184, type metadata accessor for Apple_Workout_Core_HKQuantity);
                    v172 = v238;
                    goto LABEL_107;
                  }

                  v188 = v184;
                  v189 = *(v117 + 24);
                  type metadata accessor for UnknownStorage();
                  lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
                  v190 = dispatch thunk of static Equatable.== infix(_:_:)();
                  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v241, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                  outlined destroy of Apple_Workout_Core_HKActivitySummary(v187, type metadata accessor for Apple_Workout_Core_HKQuantity);
                  outlined destroy of Apple_Workout_Core_HKActivitySummary(v188, type metadata accessor for Apple_Workout_Core_HKQuantity);
                  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v238, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                  if ((v190 & 1) == 0)
                  {
                    goto LABEL_109;
                  }
                }

                v122 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurnedGoal;
                swift_beginAccess();
                outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v109 + v122, v121, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                v123 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurnedGoal;
                v124 = v251;
                swift_beginAccess();
                v125 = *(v248 + 48);
                v126 = v121;
                v127 = v121;
                v128 = v234;
                outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v126, v234, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                v129 = v124 + v123;
                v130 = v249;
                v118 = v128;
                outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v129, v128 + v125, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                v131 = v218;
                if (v218(v128, 1, v130) == 1)
                {
                  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v127, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                  v132 = v131(v128 + v125, 1, v130);
                  v133 = v233;
                  if (v132 != 1)
                  {
                    goto LABEL_86;
                  }

                  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v128, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                }

                else
                {
                  v191 = v128;
                  v192 = v231;
                  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v191, v231, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                  v193 = v131(v118 + v125, 1, v130);
                  v133 = v233;
                  if (v193 == 1)
                  {
                    v194 = v237;
LABEL_84:
                    outlined destroy of Apple_Workout_Core_HKActivitySummary?(v194, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                    v186 = v192;
                    goto LABEL_85;
                  }

                  v195 = v228;
                  outlined init with take of Apple_Workout_Core_HKActivitySummary(v118 + v125, v228, type metadata accessor for Apple_Workout_Core_HKQuantity);
                  if (*v192 != *v195 || (*(v192 + 8) != *(v195 + 8) || *(v192 + 16) != *(v195 + 16)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {
                    outlined destroy of Apple_Workout_Core_HKActivitySummary?(v237, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                    outlined destroy of Apple_Workout_Core_HKActivitySummary(v195, type metadata accessor for Apple_Workout_Core_HKQuantity);
                    outlined destroy of Apple_Workout_Core_HKActivitySummary(v192, type metadata accessor for Apple_Workout_Core_HKQuantity);
                    v172 = v234;
                    goto LABEL_107;
                  }

                  v196 = *(v249 + 24);
                  type metadata accessor for UnknownStorage();
                  lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
                  v197 = dispatch thunk of static Equatable.== infix(_:_:)();
                  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v237, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                  outlined destroy of Apple_Workout_Core_HKActivitySummary(v195, type metadata accessor for Apple_Workout_Core_HKQuantity);
                  outlined destroy of Apple_Workout_Core_HKActivitySummary(v192, type metadata accessor for Apple_Workout_Core_HKQuantity);
                  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v234, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                  if ((v197 & 1) == 0)
                  {
                    goto LABEL_109;
                  }
                }

                v134 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTimeGoal;
                swift_beginAccess();
                outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v109 + v134, v133, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                v135 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTimeGoal;
                v136 = v133;
                v137 = v251;
                swift_beginAccess();
                v138 = *(v248 + 48);
                v139 = v230;
                outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v136, v230, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                v118 = v139;
                outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v137 + v135, v139 + v138, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                v140 = v249;
                v141 = v218;
                if (v218(v139, 1, v249) == 1)
                {
                  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v136, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                  v142 = v141(v139 + v138, 1, v140);
                  v143 = v229;
                  if (v142 == 1)
                  {
                    outlined destroy of Apple_Workout_Core_HKActivitySummary?(v139, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
LABEL_28:
                    v144 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__exerciseTimeGoal;
                    swift_beginAccess();
                    outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v109 + v144, v143, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                    v145 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__exerciseTimeGoal;
                    v146 = v143;
                    v147 = v251;
                    swift_beginAccess();
                    v148 = *(v248 + 48);
                    v149 = v226;
                    outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v146, v226, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                    v150 = v147 + v145;
                    v151 = v148;
                    v118 = v149;
                    outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v150, v149 + v148, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                    v152 = v249;
                    v153 = v218;
                    if (v218(v149, 1, v249) == 1)
                    {
                      outlined destroy of Apple_Workout_Core_HKActivitySummary?(v146, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                      if (v153(v149 + v151, 1, v152) == 1)
                      {
                        outlined destroy of Apple_Workout_Core_HKActivitySummary?(v149, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                        v154 = v220;
                        goto LABEL_31;
                      }

                      goto LABEL_86;
                    }

                    v203 = v149;
                    v204 = v223;
                    outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v203, v223, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                    if (v153(v118 + v151, 1, v152) == 1)
                    {
                      outlined destroy of Apple_Workout_Core_HKActivitySummary?(v229, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                      v186 = v204;
                      goto LABEL_85;
                    }

                    v205 = v222;
                    outlined init with take of Apple_Workout_Core_HKActivitySummary(v118 + v151, v222, type metadata accessor for Apple_Workout_Core_HKQuantity);
                    if (*v204 == *v205 && (*(v204 + 8) == *(v205 + 8) && *(v204 + 16) == *(v205 + 16) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
                    {
                      v206 = *(v249 + 24);
                      type metadata accessor for UnknownStorage();
                      lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
                      v207 = dispatch thunk of static Equatable.== infix(_:_:)();
                      outlined destroy of Apple_Workout_Core_HKActivitySummary?(v229, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                      outlined destroy of Apple_Workout_Core_HKActivitySummary(v205, type metadata accessor for Apple_Workout_Core_HKQuantity);
                      outlined destroy of Apple_Workout_Core_HKActivitySummary(v204, type metadata accessor for Apple_Workout_Core_HKQuantity);
                      outlined destroy of Apple_Workout_Core_HKActivitySummary?(v226, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                      v154 = v220;
                      if (v207)
                      {
LABEL_31:
                        v155 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__standHoursGoal;
                        swift_beginAccess();
                        v156 = v224;
                        outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v109 + v155, v224, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                        v157 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__standHoursGoal;
                        v158 = v251;
                        swift_beginAccess();
                        v159 = *(v248 + 48);
                        outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v156, v154, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                        outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v158 + v157, v154 + v159, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                        v160 = v249;
                        v161 = v218;
                        if (v218(v154, 1, v249) == 1)
                        {

                          outlined destroy of Apple_Workout_Core_HKActivitySummary?(v224, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                          if (v161(v154 + v159, 1, v160) == 1)
                          {
                            outlined destroy of Apple_Workout_Core_HKActivitySummary?(v154, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                            return 1;
                          }
                        }

                        else
                        {
                          v208 = v219;
                          outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v154, v219, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                          if (v161(v154 + v159, 1, v160) != 1)
                          {
                            v212 = v221;
                            outlined init with take of Apple_Workout_Core_HKActivitySummary(v154 + v159, v221, type metadata accessor for Apple_Workout_Core_HKQuantity);
                            if (*v208 == *v212 && (*(v219 + 1) == *(v221 + 8) && *(v219 + 2) == *(v221 + 16) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
                            {
                              v213 = *(v249 + 24);
                              type metadata accessor for UnknownStorage();
                              lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
                              v214 = v219;
                              v215 = v221;
                              v216 = dispatch thunk of static Equatable.== infix(_:_:)();

                              outlined destroy of Apple_Workout_Core_HKActivitySummary?(v224, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                              outlined destroy of Apple_Workout_Core_HKActivitySummary(v215, type metadata accessor for Apple_Workout_Core_HKQuantity);
                              outlined destroy of Apple_Workout_Core_HKActivitySummary(v214, type metadata accessor for Apple_Workout_Core_HKQuantity);
                              outlined destroy of Apple_Workout_Core_HKActivitySummary?(v220, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                              return (v216 & 1) != 0;
                            }

                            outlined destroy of Apple_Workout_Core_HKActivitySummary?(v224, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                            outlined destroy of Apple_Workout_Core_HKActivitySummary(v221, type metadata accessor for Apple_Workout_Core_HKQuantity);
                            outlined destroy of Apple_Workout_Core_HKActivitySummary(v219, type metadata accessor for Apple_Workout_Core_HKQuantity);
                            v211 = v220;
                            v209 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd;
                            v210 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR;
                            goto LABEL_119;
                          }

                          outlined destroy of Apple_Workout_Core_HKActivitySummary?(v224, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                          outlined destroy of Apple_Workout_Core_HKActivitySummary(v208, type metadata accessor for Apple_Workout_Core_HKQuantity);
                        }

                        v209 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMd;
                        v210 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMR;
                        v211 = v154;
LABEL_119:
                        outlined destroy of Apple_Workout_Core_HKActivitySummary?(v211, v209, v210);
                        return 0;
                      }

                      goto LABEL_109;
                    }

                    outlined destroy of Apple_Workout_Core_HKActivitySummary?(v229, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                    outlined destroy of Apple_Workout_Core_HKActivitySummary(v205, type metadata accessor for Apple_Workout_Core_HKQuantity);
                    outlined destroy of Apple_Workout_Core_HKActivitySummary(v204, type metadata accessor for Apple_Workout_Core_HKQuantity);
                    v172 = v226;
LABEL_107:
                    v170 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd;
                    v171 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR;
                    goto LABEL_108;
                  }

LABEL_86:
                  v170 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMd;
                  v171 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMR;
                  v172 = v118;
                  goto LABEL_108;
                }

                v198 = v139;
                v192 = v227;
                outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v198, v227, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                v199 = v141(v118 + v138, 1, v140);
                v143 = v229;
                if (v199 != 1)
                {
                  v200 = v225;
                  outlined init with take of Apple_Workout_Core_HKActivitySummary(v118 + v138, v225, type metadata accessor for Apple_Workout_Core_HKQuantity);
                  if (*v192 != *v200 || (*(v192 + 8) != *(v200 + 8) || *(v192 + 16) != *(v200 + 16)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {
                    outlined destroy of Apple_Workout_Core_HKActivitySummary?(v233, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                    outlined destroy of Apple_Workout_Core_HKActivitySummary(v200, type metadata accessor for Apple_Workout_Core_HKQuantity);
                    outlined destroy of Apple_Workout_Core_HKActivitySummary(v192, type metadata accessor for Apple_Workout_Core_HKQuantity);
                    v172 = v230;
                    goto LABEL_107;
                  }

                  v201 = *(v249 + 24);
                  type metadata accessor for UnknownStorage();
                  lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
                  v202 = dispatch thunk of static Equatable.== infix(_:_:)();
                  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v233, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                  outlined destroy of Apple_Workout_Core_HKActivitySummary(v200, type metadata accessor for Apple_Workout_Core_HKQuantity);
                  outlined destroy of Apple_Workout_Core_HKActivitySummary(v192, type metadata accessor for Apple_Workout_Core_HKQuantity);
                  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v230, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
                  if ((v202 & 1) == 0)
                  {
                    goto LABEL_109;
                  }

                  goto LABEL_28;
                }

                v194 = v233;
                goto LABEL_84;
              }

              outlined destroy of Apple_Workout_Core_HKActivitySummary?(v246, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
              outlined destroy of Apple_Workout_Core_HKActivitySummary(v177, type metadata accessor for Apple_Workout_Core_HKQuantity);
            }

            v170 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMd;
            v171 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMR;
            v172 = v104;
LABEL_108:
            outlined destroy of Apple_Workout_Core_HKActivitySummary?(v172, v170, v171);
            goto LABEL_109;
          }
        }

        else
        {
          v168 = v243;
          outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v93, v243, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
          v169 = v95(v93 + v92, 1, v94);
          v97 = v246;
          if (v169 != 1)
          {
            v173 = v240;
            outlined init with take of Apple_Workout_Core_HKActivitySummary(v93 + v92, v240, type metadata accessor for Apple_Workout_Core_HKQuantity);
            v98 = v217;
            if (*v168 != *v173 || (*(v168 + 8) != *(v173 + 8) || *(v168 + 16) != *(v173 + 16)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              outlined destroy of Apple_Workout_Core_HKActivitySummary?(v247, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
              outlined destroy of Apple_Workout_Core_HKActivitySummary(v173, type metadata accessor for Apple_Workout_Core_HKQuantity);
              outlined destroy of Apple_Workout_Core_HKActivitySummary(v168, type metadata accessor for Apple_Workout_Core_HKQuantity);
              v172 = v93;
              goto LABEL_107;
            }

            v174 = v168;
            v175 = *(v94 + 24);
            type metadata accessor for UnknownStorage();
            lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
            v176 = dispatch thunk of static Equatable.== infix(_:_:)();
            outlined destroy of Apple_Workout_Core_HKActivitySummary?(v247, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
            outlined destroy of Apple_Workout_Core_HKActivitySummary(v173, type metadata accessor for Apple_Workout_Core_HKQuantity);
            outlined destroy of Apple_Workout_Core_HKActivitySummary(v174, type metadata accessor for Apple_Workout_Core_HKQuantity);
            outlined destroy of Apple_Workout_Core_HKActivitySummary?(v245, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
            if ((v176 & 1) == 0)
            {
              goto LABEL_109;
            }

            goto LABEL_16;
          }

          outlined destroy of Apple_Workout_Core_HKActivitySummary?(v247, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
          outlined destroy of Apple_Workout_Core_HKActivitySummary(v168, type metadata accessor for Apple_Workout_Core_HKQuantity);
        }

        v170 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMd;
        v171 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMR;
        v172 = v93;
        goto LABEL_108;
      }

      outlined destroy of Apple_Workout_Core_HKActivitySummary?(v75, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
      outlined destroy of Apple_Workout_Core_HKActivitySummary(v73, type metadata accessor for Apple_Workout_Core_HKQuantity);
    }

    outlined destroy of Apple_Workout_Core_HKActivitySummary?(v39, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMR);

LABEL_110:

    return 0;
  }

  if (!v79)
  {
    goto LABEL_10;
  }

  return 0;
}

Swift::Int Apple_Workout_Core_ActivitySummaryMetricsPublisher.hashValue.getter(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_HKActivitySummary@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v4) = static Apple_Workout_Core_HKActivitySummary._StorageClass.defaultInstance;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_HKActivitySummary@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_HKActivitySummary(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_HKActivitySummary(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_HKActivitySummary and conformance Apple_Workout_Core_HKActivitySummary, type metadata accessor for Apple_Workout_Core_HKActivitySummary);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_ActivityMoveMode@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_HKActivitySummary(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_HKActivitySummary and conformance Apple_Workout_Core_HKActivitySummary, type metadata accessor for Apple_Workout_Core_HKActivitySummary);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_HKActivitySummary()
{
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_HKActivitySummary and conformance Apple_Workout_Core_HKActivitySummary, type metadata accessor for Apple_Workout_Core_HKActivitySummary);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_ActivitySummaryMetricsPublisher.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSg_ADtMd, _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v33 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  v17 = *(v33 + 24);
  v18 = *(v13 + 56);
  v35 = a1;
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(&a1[v17], v16, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(&a2[v17], &v16[v18], &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v16, v11, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v34;
      outlined init with take of Apple_Workout_Core_HKActivitySummary(&v16[v18], v34, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
      v23 = *(v4 + 20);
      v24 = *&v11[v23];
      v25 = *(v22 + v23);
      if (v24 == v25 || (v26 = *&v11[v23], , , v27 = closure #1 in static Apple_Workout_Core_HKActivitySummary.== infix(_:_:)(v24, v25), , , v27))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v28 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Apple_Workout_Core_HKActivitySummary(v22, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
        outlined destroy of Apple_Workout_Core_HKActivitySummary(v11, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
        outlined destroy of Apple_Workout_Core_HKActivitySummary?(v16, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
        if ((v28 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      outlined destroy of Apple_Workout_Core_HKActivitySummary(v22, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
      outlined destroy of Apple_Workout_Core_HKActivitySummary(v11, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
      v20 = &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd;
      v21 = &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR;
LABEL_7:
      outlined destroy of Apple_Workout_Core_HKActivitySummary?(v16, v20, v21);
      goto LABEL_12;
    }

    outlined destroy of Apple_Workout_Core_HKActivitySummary(v11, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
LABEL_6:
    v20 = &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSg_ADtMd;
    v21 = _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSg_ADtMR;
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v16, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
LABEL_11:
  if (*v35 == *a2)
  {
    v31 = *(v33 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v29 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v29 & 1;
  }

LABEL_12:
  v29 = 0;
  return v29 & 1;
}

uint64_t specialized static Apple_Workout_Core_HKActivitySummary.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = closure #1 in static Apple_Workout_Core_HKActivitySummary.== infix(_:_:)(v5, v6);

    if (!v8)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMoveMode and conformance Apple_Workout_Core_ActivityMoveMode()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMoveMode and conformance Apple_Workout_Core_ActivityMoveMode;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMoveMode and conformance Apple_Workout_Core_ActivityMoveMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMoveMode and conformance Apple_Workout_Core_ActivityMoveMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMoveMode and conformance Apple_Workout_Core_ActivityMoveMode;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMoveMode and conformance Apple_Workout_Core_ActivityMoveMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMoveMode and conformance Apple_Workout_Core_ActivityMoveMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMoveMode and conformance Apple_Workout_Core_ActivityMoveMode;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMoveMode and conformance Apple_Workout_Core_ActivityMoveMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMoveMode and conformance Apple_Workout_Core_ActivityMoveMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMoveMode and conformance Apple_Workout_Core_ActivityMoveMode;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMoveMode and conformance Apple_Workout_Core_ActivityMoveMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMoveMode and conformance Apple_Workout_Core_ActivityMoveMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Apple_Workout_Core_ActivityMoveMode] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Apple_Workout_Core_ActivityMoveMode] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Apple_Workout_Core_ActivityMoveMode] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore06Apple_a1_B17_ActivityMoveModeOGMd, &_sSay11WorkoutCore06Apple_a1_B17_ActivityMoveModeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Apple_Workout_Core_ActivityMoveMode] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Apple_Workout_Core_ActivityMoveMode(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Apple_Workout_Core_ActivityMoveMode(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for Apple_Workout_Core_ActivityMoveMode(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for Apple_Workout_Core_ActivityMoveMode(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void type metadata completion function for Apple_Workout_Core_ActivitySummaryMetricsPublisher()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_Core_HKActivitySummary?(319, &lazy cache variable for type metadata for Apple_Workout_Core_HKActivitySummary?, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for Apple_Workout_Core_HKActivitySummary()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for Apple_Workout_Core_HKActivitySummary._StorageClass()
{
  type metadata accessor for Apple_Workout_Core_HKActivitySummary?(319, &lazy cache variable for type metadata for Apple_Workout_Core_HKQuantity?, type metadata accessor for Apple_Workout_Core_HKQuantity);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Apple_Workout_Core_HKActivitySummary?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t outlined destroy of Apple_Workout_Core_HKActivitySummary?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t TargetZone.PrimaryType.displayString(activityType:)(void *a1)
{
  if (*v1 > 1u)
  {
    if (*v1 != 2)
    {
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v3 = [objc_opt_self() bundleForClass_];
      v5 = 0xD000000000000011;
      v4 = 0x800000020B46B900;
      goto LABEL_13;
    }

    v6 = [a1 effectiveTypeIdentifier];
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v7 = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    if (v6 == 13)
    {
      v8 = "CADENCE_ALERT_TITLE_PEDOMETER";
      v5 = 0xD00000000000001BLL;
    }

    else
    {
      v8 = "POWER_ALERT_TITLE";
      v5 = 0xD00000000000001DLL;
    }

LABEL_11:
    v4 = v8 | 0x8000000000000000;
    goto LABEL_13;
  }

  if (*v1)
  {
    v9 = FIUIDistanceTypeForActivityType();
    v10 = MEMORY[0x20F2E8410](v9);
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v11 = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    if (v10 != 4)
    {
      v4 = 0x800000020B46B960;
      v5 = 0xD000000000000010;
      goto LABEL_13;
    }

    v8 = "PACE_ALERT_TITLE";
    v5 = 0xD000000000000011;
    goto LABEL_11;
  }

  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  v2 = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = 0x800000020B46B9A0;
  v5 = 0xD000000000000010;
LABEL_13:
  v13 = MEMORY[0x20F2E6C00](v5, v4);
  v14 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v15 = [v3 localizedStringForKey:v13 value:0 table:v14];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v16;
}

id TargetZone.displayString(formattingManager:activityType:)(void *a1, void *a2)
{
  v3 = v2;
  swift_beginAccess();
  if ((*(v2 + 40) & 1) == 0)
  {
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    v11 = MEMORY[0x20F2E6C00](0xD000000000000010, 0x800000020B46B9A0);
    v12 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v13 = [v10 localizedStringForKey:v11 value:0 table:v12];
    goto LABEL_5;
  }

  swift_beginAccess();
  v6 = *(v2 + 24);
  swift_beginAccess();
  v7 = *(v2 + 16);
  if (v6 == *(v2 + 32))
  {
    v70 = *(v2 + 16);
    return TargetZone.ZoneType.valueAndUnitString(activityType:formattingManager:value:)(a2, a1, v6);
  }

  v71 = *(v2 + 16);
  TargetZone.ZoneType.valueString(activityType:formattingManager:value:)(v6, a2, a1);
  v67 = v16;
  v69 = v17;
  v72 = *(v2 + 16);
  TargetZone.ZoneType.valueString(activityType:formattingManager:value:)(*(v2 + 32), a2, a1);
  v66 = v18;
  v68 = v19;
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  v20 = swift_getObjCClassFromMetadata();
  v21 = objc_opt_self();
  v22 = [v21 bundleForClass_];
  v23 = MEMORY[0x20F2E6C00](0xD000000000000016, 0x800000020B46B9C0);
  v24 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v25 = [v22 localizedStringForKey:v23 value:0 table:v24];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = *(v3 + 16);
  if (v26 > 4)
  {
    if (v26 - 5 < 2)
    {
      v37 = [objc_opt_self() localizedShortPowerUnitString];
      if (v37)
      {
        v38 = v37;
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;
      }

      else
      {
        v41 = 0xE100000000000000;
        v39 = 87;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_20B423A20;
      v64 = MEMORY[0x277D837D0];
      *(v63 + 56) = MEMORY[0x277D837D0];
      v65 = lazy protocol witness table accessor for type String and conformance String();
      *(v63 + 32) = v67;
      *(v63 + 40) = v69;
      *(v63 + 96) = v64;
      *(v63 + 104) = v65;
      *(v63 + 64) = v65;
      *(v63 + 72) = v66;
      *(v63 + 80) = v68;
      *(v63 + 136) = v64;
      *(v63 + 144) = v65;
      *(v63 + 112) = v39;
      *(v63 + 120) = v41;
      v62 = static String.localizedStringWithFormat(_:_:)();

      goto LABEL_29;
    }

    v10 = [v21 bundleForClass_];
    v11 = MEMORY[0x20F2E6C00](0xD000000000000010, 0x800000020B46B9A0);
    v12 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v13 = [v10 localizedStringForKey:v11 value:0 table:v12];
LABEL_5:
    v14 = v13;

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v15;
  }

  if (v26 >= 3)
  {
    v42 = [a2 effectiveTypeIdentifier];
    if (v42 == 13)
    {
      v43 = 0xD000000000000029;
    }

    else
    {
      v43 = 0xD000000000000021;
    }

    if (v42 == 13)
    {
      v44 = "SHORT_DESCRIPTION";
    }

    else
    {
      v44 = "NUMBER_RANGE_WITH_UNIT";
    }

    v45 = [v21 bundleForClass_];
    v46 = MEMORY[0x20F2E6C00](v43, v44 | 0x8000000000000000);

    v47 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v48 = [v45 localizedStringForKey:v46 value:0 table:v47];

    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_20B423A20;
    v53 = MEMORY[0x277D837D0];
    *(v52 + 56) = MEMORY[0x277D837D0];
    v54 = lazy protocol witness table accessor for type String and conformance String();
    *(v52 + 32) = v67;
    *(v52 + 40) = v69;
    *(v52 + 96) = v53;
    *(v52 + 104) = v54;
    *(v52 + 64) = v54;
    *(v52 + 72) = v66;
    *(v52 + 80) = v68;
    *(v52 + 136) = v53;
    *(v52 + 144) = v54;
    *(v52 + 112) = v49;
    *(v52 + 120) = v51;
    v15 = static String.localizedStringWithFormat(_:_:)();

    goto LABEL_23;
  }

  v27 = FIUIDistanceTypeForActivityType();
  result = [a1 unitManager];
  if (!result)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v28 = result;
  v29 = [result userDistanceUnitForDistanceType_];

  if (v27 == 2)
  {
    result = [a1 localizedSpeedUnitStringForActivityType_];
    if (result)
    {
      v30 = result;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_20B423A20;
      v35 = MEMORY[0x277D837D0];
      *(v34 + 56) = MEMORY[0x277D837D0];
      v36 = lazy protocol witness table accessor for type String and conformance String();
      *(v34 + 32) = v67;
      *(v34 + 40) = v69;
      *(v34 + 96) = v35;
      *(v34 + 104) = v36;
      *(v34 + 64) = v36;
      *(v34 + 72) = v66;
      *(v34 + 80) = v68;
      *(v34 + 136) = v35;
      *(v34 + 144) = v36;
      *(v34 + 112) = v31;
      *(v34 + 120) = v33;
      v15 = static String.localizedStringWithFormat(_:_:)();

LABEL_23:

      return v15;
    }

    goto LABEL_31;
  }

  result = [a1 localizedPaceUnitStringWithDistanceType:v27 distanceUnit:v29];
  if (result)
  {
    v55 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    lazy protocol witness table accessor for type String and conformance String();
    v56 = MEMORY[0x277D837D0];
    v57 = StringProtocol.localizedUppercase.getter();
    v59 = v58;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_20B423A20;
    *(v60 + 56) = v56;
    v61 = lazy protocol witness table accessor for type String and conformance String();
    *(v60 + 32) = v66;
    *(v60 + 40) = v68;
    *(v60 + 96) = v56;
    *(v60 + 104) = v61;
    *(v60 + 64) = v61;
    *(v60 + 72) = v67;
    *(v60 + 80) = v69;
    *(v60 + 136) = v56;
    *(v60 + 144) = v61;
    *(v60 + 112) = v57;
    *(v60 + 120) = v59;
    v62 = static String.localizedStringWithFormat(_:_:)();

LABEL_29:

    return v62;
  }

LABEL_32:
  __break(1u);
  return result;
}

id PowerZonesAlertTargetZone.displayString(formattingManager:activityType:)(void *a1, void *a2)
{
  v5 = v2 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  LODWORD(v8) = *(v5 + 16);
  v9 = v8 >> 6;
  if (v8 >> 6 <= 1)
  {
    if (v9)
    {
      v11 = 0xEB00000000656C62;
      v18 = 0x617A696C61636F4CLL;
      if (v7 == 0.0)
      {
        goto LABEL_15;
      }

      if (*&v7 >> 62)
      {
        goto LABEL_36;
      }

      swift_bridgeObjectRetain_n();
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for Zone();
      v20 = *&v7;
      goto LABEL_11;
    }

    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = objc_opt_self();
    v12 = [v11 bundleForClass_];
    v13 = MEMORY[0x20F2E6C00](0xD00000000000001ALL, 0x800000020B46BA40);
    v7 = COERCE_DOUBLE(MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62));
    v14 = [v12 localizedStringForKey:v13 value:0 table:*&v7];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = [objc_opt_self() localizedShortPowerUnitString];
    if (v15)
    {
      v16 = v15;
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
    }

    else
    {
      v18 = 0xE100000000000000;
      v8 = 87;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_20B4282E0;
    if ((~*&v6 & 0x7FF0000000000000) != 0)
    {
      if (v6 > -9.22337204e18)
      {
        if (v6 < 9.22337204e18)
        {
          v49 = v48;
          v50 = v6;
          v51 = [v11 mainBundle];
          v65._object = 0x800000020B456470;
          v65._countAndFlagsBits = 0xD000000000000018;
          v52._countAndFlagsBits = 1684827173;
          v52._object = 0xE400000000000000;
          v53._countAndFlagsBits = 0;
          v53._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v52, 0, v51, v53, v65);

          v54 = swift_allocObject();
          v55 = MEMORY[0x277D83B88];
          *(v54 + 16) = xmmword_20B423A90;
          v56 = MEMORY[0x277D83C10];
          *(v54 + 56) = v55;
          *(v54 + 64) = v56;
          *(v54 + 32) = v50;
          v57 = static String.localizedStringWithFormat(_:_:)();
          v59 = v58;

          v60 = MEMORY[0x277D837D0];
          v49[7] = MEMORY[0x277D837D0];
          v61 = lazy protocol witness table accessor for type String and conformance String();
          v49[4] = v57;
          v49[5] = v59;
          v49[12] = v60;
          v49[13] = v61;
          v49[8] = v61;
          v49[9] = v8;
          v49[10] = v18;
          v47 = static String.localizedStringWithFormat(_:_:)();

LABEL_24:

          return v47;
        }

LABEL_34:
        __break(1u);
        do
        {
          __break(1u);
LABEL_36:
          type metadata accessor for Zone();

          v20 = _bridgeCocoaArray<A>(_:)();
LABEL_11:
          outlined consume of PowerZonesAlertZoneType(*&v6, *&v7, v8);
          v21 = specialized static CyclingPowerZonesConfigurationEditor.hasAllEmptyZones(_:)(v20);

          if (v21)
          {
            type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
            v22 = swift_getObjCClassFromMetadata();
            v23 = [objc_opt_self() bundleForClass_];
            v24 = MEMORY[0x20F2E6C00](0xD000000000000010, 0x800000020B46B9A0);
            v25 = MEMORY[0x20F2E6C00](v18, v11);
            v26 = [v23 localizedStringForKey:v24 value:0 table:v25];
            goto LABEL_14;
          }

LABEL_15:
          type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
          v31 = swift_getObjCClassFromMetadata();
          v8 = objc_opt_self();
          v32 = [v8 bundleForClass_];
          v33 = MEMORY[0x20F2E6C00](0x4F5A5F5245574F50, 0xEF454D414E5F454ELL);
          v34 = MEMORY[0x20F2E6C00](v18, v11);
          v11 = [v32 localizedStringForKey:v33 value:0 table:v34];

          v7 = COERCE_DOUBLE(static String._unconditionallyBridgeFromObjectiveC(_:)());
          v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v35 = swift_allocObject();
          *(v35 + 16) = xmmword_20B423A90;
          v36 = *&v6 + 1;
        }

        while (__OFADD__(*&v6, 1));
        v37 = v35;
        v38 = [v8 mainBundle];
        v64._object = 0x800000020B456470;
        v64._countAndFlagsBits = 0xD000000000000018;
        v39._countAndFlagsBits = 1684827173;
        v39._object = 0xE400000000000000;
        v40._countAndFlagsBits = 0;
        v40._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v39, 0, v38, v40, v64);

        v41 = swift_allocObject();
        v42 = MEMORY[0x277D83B88];
        *(v41 + 16) = xmmword_20B423A90;
        v43 = MEMORY[0x277D83C10];
        *(v41 + 56) = v42;
        *(v41 + 64) = v43;
        *(v41 + 32) = v36;
        v44 = static String.localizedStringWithFormat(_:_:)();
        v46 = v45;

        v37[7] = MEMORY[0x277D837D0];
        v37[8] = lazy protocol witness table accessor for type String and conformance String();
        v37[4] = v44;
        v37[5] = v46;
        v47 = static String.localizedStringWithFormat(_:_:)();

        goto LABEL_24;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_34;
  }

  if (v9 == 2)
  {
    type metadata accessor for TargetZone();
    inited = swift_initStackObject();
    *(inited + 16) = v8 & 0x3F;
    *(inited + 24) = v6;
    *(inited + 32) = v7;
    if ((v8 & 0x3Fu) <= 3 || (v8 & 0x3Fu) <= 5 || (v8 & 0x3F) == 6)
    {
      v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v63 = 0;
      if ((v62 & 1) == 0)
      {
        v63 = v6 > 0.0 || v7 > 0.0;
      }
    }

    else
    {

      v63 = 0;
    }

    *(inited + 40) = v63;
    return TargetZone.displayString(formattingManager:activityType:)(a1, a2);
  }

  else
  {
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v27 = swift_getObjCClassFromMetadata();
    v23 = [objc_opt_self() bundleForClass_];
    v24 = MEMORY[0x20F2E6C00](0xD000000000000010, 0x800000020B46B9A0);
    v25 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v26 = [v23 localizedStringForKey:v24 value:0 table:v25];
LABEL_14:
    v28 = v26;

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v29;
  }
}

_OWORD *PowerZonesAlertTargetZone.spokenString(formattingManager:activityType:)(void *a1, void *a2)
{
  v5 = (v2 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type);
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 16) >> 6;
  if (v7 <= 1)
  {
    if (v7)
    {
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v97 = objc_opt_self();
      v98 = [v97 bundleForClass_];
      v99 = MEMORY[0x20F2E6C00](0x4D414E5F454E4F5ALL, 0xE900000000000045);
      v100 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v101 = [v98 localizedStringForKey:v99 value:0 table:v100];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      result = swift_allocObject();
      result[1] = xmmword_20B423A90;
      if (!__OFADD__(*&v6, 1))
      {
        v102 = MEMORY[0x277D83C10];
        *(result + 7) = MEMORY[0x277D83B88];
        *(result + 8) = v102;
        *(result + 4) = *&v6 + 1;
        v103 = String.init(format:_:)();
        v125 = v104;
        v128 = v103;

        v105 = [v97 bundleForClass_];
        v106 = MEMORY[0x20F2E6C00](0xD00000000000001BLL, 0x800000020B4683A0);
        v107 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
        v108 = [v105 localizedStringForKey:v106 value:0 table:v107];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v109 = swift_allocObject();
        *(v109 + 16) = xmmword_20B4282E0;
        v110 = [v97 bundleForClass_];
        v111 = MEMORY[0x20F2E6C00](0xD000000000000011, 0x800000020B46B900);
        v112 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
        v113 = [v110 localizedStringForKey:v111 value:0 table:v112];

        v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v116 = v115;

        v117 = MEMORY[0x277D837D0];
        *(v109 + 56) = MEMORY[0x277D837D0];
        v118 = lazy protocol witness table accessor for type String and conformance String();
        *(v109 + 32) = v114;
        *(v109 + 40) = v116;
        *(v109 + 96) = v117;
        *(v109 + 104) = v118;
        *(v109 + 64) = v118;
        *(v109 + 72) = v128;
        *(v109 + 80) = v125;
        v48 = String.init(format:_:)();
        goto LABEL_19;
      }

      __break(1u);
    }

    else
    {
      result = [a1 localizedPowerUnitStringForPower_];
      if (!result)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v9 = result;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      lazy protocol witness table accessor for type String and conformance String();
      v10 = MEMORY[0x277D837D0];
      v11 = StringProtocol.localizedLowercase.getter();
      v121 = v12;
      v126 = v11;

      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      v13 = swift_getObjCClassFromMetadata();
      v14 = objc_opt_self();
      v15 = [v14 bundleForClass_];
      v16 = MEMORY[0x20F2E6C00](0xD000000000000017, 0x800000020B46BA60);
      v17 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v18 = [v15 localizedStringForKey:v16 value:0 table:v17];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      result = swift_allocObject();
      result[1] = xmmword_20B4282E0;
      if ((~*&v6 & 0x7FF0000000000000) != 0)
      {
        if (v6 > -9.22337204e18)
        {
          if (v6 < 9.22337204e18)
          {
            v19 = result;
            v20 = dispatch thunk of CustomStringConvertible.description.getter();
            v21 = v10;
            v23 = v22;
            v19[7] = v21;
            v24 = lazy protocol witness table accessor for type String and conformance String();
            v19[4] = v20;
            v19[5] = v23;
            v19[12] = v21;
            v19[13] = v24;
            v19[8] = v24;
            v19[9] = v126;
            v19[10] = v121;
            v25 = static String.localizedStringWithFormat(_:_:)();
            v122 = v26;
            v127 = v25;

            v27 = [v14 bundleForClass_];
            v28 = MEMORY[0x20F2E6C00](0xD000000000000013, 0x800000020B468380);
            v29 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
            v30 = [v27 localizedStringForKey:v28 value:0 table:v29];

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v31 = swift_allocObject();
            *(v31 + 16) = xmmword_20B423A90;
            v32 = [v14 bundleForClass_];
            v33 = MEMORY[0x20F2E6C00](0xD000000000000011, 0x800000020B46B900);
            v34 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
            v35 = [v32 localizedStringForKey:v33 value:0 table:v34];

            v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v38 = v37;

            *(v31 + 56) = MEMORY[0x277D837D0];
            *(v31 + 64) = v24;
            *(v31 + 32) = v36;
            *(v31 + 40) = v38;
            v39 = String.init(format:_:)();
            v41 = v40;

            v42 = [v14 bundleForClass_];
            v43 = MEMORY[0x20F2E6C00](0xD00000000000001BLL, 0x800000020B4683A0);
            v44 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
            v45 = [v42 localizedStringForKey:v43 value:0 table:v44];

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v46 = swift_allocObject();
            *(v46 + 16) = xmmword_20B4282E0;
            v47 = MEMORY[0x277D837D0];
            *(v46 + 56) = MEMORY[0x277D837D0];
            *(v46 + 64) = v24;
            *(v46 + 32) = v39;
            *(v46 + 40) = v41;
            *(v46 + 96) = v47;
            *(v46 + 104) = v24;
            *(v46 + 72) = v127;
            *(v46 + 80) = v122;
            v48 = String.init(format:_:)();
LABEL_19:

            return v48;
          }

          goto LABEL_26;
        }

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v7 != 2)
  {
    return PowerZonesAlertTargetZone.displayString(formattingManager:activityType:)(a1, a2);
  }

  v49 = v5[1];
  result = [a1 localizedPowerUnitStringForPower_];
  if (result)
  {
    v50 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    lazy protocol witness table accessor for type String and conformance String();
    v51 = MEMORY[0x277D837D0];
    v52 = StringProtocol.localizedLowercase.getter();
    v54 = v53;

    if ((~*&v6 & 0x7FF0000000000000) != 0)
    {
      if (v6 > -9.22337204e18)
      {
        if (v6 < 9.22337204e18)
        {
          v55 = dispatch thunk of CustomStringConvertible.description.getter();
          v57 = v56;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          result = swift_allocObject();
          result[1] = xmmword_20B4282E0;
          if ((~*&v49 & 0x7FF0000000000000) != 0)
          {
            if (v49 > -9.22337204e18)
            {
              if (v49 < 9.22337204e18)
              {
                v58 = result;
                v123 = v55;
                v59 = dispatch thunk of CustomStringConvertible.description.getter();
                v61 = v60;
                v58[7] = v51;
                v62 = lazy protocol witness table accessor for type String and conformance String();
                v58[4] = v59;
                v58[5] = v61;
                v58[12] = v51;
                v58[13] = v62;
                v58[8] = v62;
                v58[9] = v52;
                v58[10] = v54;
                v63 = String.init(format:_:)();
                v119 = v64;
                type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
                v65 = swift_getObjCClassFromMetadata();
                v66 = objc_opt_self();
                v67 = [v66 bundleForClass_];
                v68 = MEMORY[0x20F2E6C00](0xD00000000000001ALL, 0x800000020B4683C0);
                v69 = v57;
                v70 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
                v71 = [v67 localizedStringForKey:v68 value:0 table:v70];

                static String._unconditionallyBridgeFromObjectiveC(_:)();
                v72 = swift_allocObject();
                *(v72 + 16) = xmmword_20B4282E0;
                v73 = MEMORY[0x277D837D0];
                *(v72 + 56) = MEMORY[0x277D837D0];
                *(v72 + 64) = v62;
                *(v72 + 32) = v123;
                *(v72 + 40) = v69;
                *(v72 + 96) = v73;
                *(v72 + 104) = v62;
                *(v72 + 72) = v63;
                *(v72 + 80) = v119;
                v124 = String.init(format:_:)();
                v120 = v74;

                v75 = [v66 bundleForClass_];
                v76 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B4683E0);
                v77 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
                v78 = [v75 localizedStringForKey:v76 value:0 table:v77];

                static String._unconditionallyBridgeFromObjectiveC(_:)();
                v79 = swift_allocObject();
                *(v79 + 16) = xmmword_20B423A90;
                v80 = [v66 bundleForClass_];
                v81 = MEMORY[0x20F2E6C00](0xD000000000000011, 0x800000020B46B900);
                v82 = MEMORY[0x20F2E6C00]();
                v83 = [v80 localizedStringForKey:v81 value:0 table:v82];

                v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v86 = v85;

                *(v79 + 56) = MEMORY[0x277D837D0];
                *(v79 + 64) = v62;
                *(v79 + 32) = v84;
                *(v79 + 40) = v86;
                v87 = String.init(format:_:)();
                v89 = v88;

                v90 = [v66 bundleForClass_];
                v91 = MEMORY[0x20F2E6C00](0xD00000000000001BLL, 0x800000020B4683A0);
                v92 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
                v93 = [v90 localizedStringForKey:v91 value:0 table:v92];

                static String._unconditionallyBridgeFromObjectiveC(_:)();
                v94 = swift_allocObject();
                *(v94 + 16) = xmmword_20B4282E0;
                v95 = MEMORY[0x277D837D0];
                *(v94 + 56) = MEMORY[0x277D837D0];
                *(v94 + 64) = v62;
                *(v94 + 32) = v87;
                *(v94 + 40) = v89;
                *(v94 + 96) = v95;
                *(v94 + 104) = v62;
                *(v94 + 72) = v124;
                *(v94 + 80) = v120;
                v48 = String.init(format:_:)();
                goto LABEL_19;
              }

              goto LABEL_30;
            }

LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      goto LABEL_25;
    }

    goto LABEL_23;
  }

LABEL_32:
  __break(1u);
  return result;
}

id TargetZone.ZoneType.valueAndUnitString(activityType:formattingManager:value:)(id a1, void *a2, double a3)
{
  v7 = *v3;
  if (v7 > 4)
  {
    if (v7 - 5 >= 2)
    {
      return 0;
    }

    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v27 = [objc_opt_self() bundleForClass_];
    v28 = MEMORY[0x20F2E6C00](0xD00000000000001ALL, 0x800000020B46BA40);
    v29 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v30 = [v27 localizedStringForKey:v28 value:0 table:v29];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = [objc_opt_self() localizedShortPowerUnitString];
    if (v31)
    {
      v32 = v31;
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;
    }

    else
    {
      v35 = 0xE100000000000000;
      v33 = 87;
    }

    TargetZone.ZoneType.valueString(activityType:formattingManager:value:)(a3, a1, a2);
    v61 = v60;
    v63 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_20B4282E0;
    v65 = MEMORY[0x277D837D0];
    *(v64 + 56) = MEMORY[0x277D837D0];
    v66 = lazy protocol witness table accessor for type String and conformance String();
    *(v64 + 32) = v61;
    *(v64 + 40) = v63;
    *(v64 + 96) = v65;
    *(v64 + 104) = v66;
    *(v64 + 64) = v66;
    *(v64 + 72) = v33;
    *(v64 + 80) = v35;
    v25 = static String.localizedStringWithFormat(_:_:)();
LABEL_21:

    goto LABEL_22;
  }

  if (v7 >= 3)
  {
    v36 = [a1 effectiveTypeIdentifier];
    if (v36 == 13)
    {
      v37 = 0xD000000000000029;
    }

    else
    {
      v37 = 0xD000000000000021;
    }

    if (v36 == 13)
    {
      v38 = "SHORT_DESCRIPTION";
    }

    else
    {
      v38 = "NUMBER_RANGE_WITH_UNIT";
    }

    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v39 = swift_getObjCClassFromMetadata();
    v40 = objc_opt_self();
    v41 = [v40 bundleForClass_];
    v42 = MEMORY[0x20F2E6C00](v37, v38 | 0x8000000000000000);

    v43 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v67 = a2;
    v44 = [v41 localizedStringForKey:v42 value:0 table:v43];

    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    v48 = [v40 bundleForClass_];
    v49 = MEMORY[0x20F2E6C00](0xD000000000000014, 0x800000020B46BA80);
    v50 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v51 = [v48 localizedStringForKey:v49 value:0 table:v50];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    TargetZone.ZoneType.valueString(activityType:formattingManager:value:)(a3, a1, v67);
    v53 = v52;
    v55 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_20B4282E0;
    v57 = MEMORY[0x277D837D0];
    *(v56 + 56) = MEMORY[0x277D837D0];
    v58 = lazy protocol witness table accessor for type String and conformance String();
    *(v56 + 32) = v53;
    *(v56 + 40) = v55;
    *(v56 + 96) = v57;
    *(v56 + 104) = v58;
    *(v56 + 64) = v58;
    *(v56 + 72) = v45;
    *(v56 + 80) = v47;
    v25 = static String.localizedStringWithFormat(_:_:)();
    goto LABEL_21;
  }

  if (FIUIDistanceTypeForActivityType() != 2)
  {
    result = [a2 localizedPaceAndUnitStringForSpeed:a1 activityType:a3];
    if (!result)
    {
      goto LABEL_25;
    }

    v59 = result;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v25;
  }

  TargetZone.ZoneType.valueString(activityType:formattingManager:value:)(a3, a1, a2);
  v9 = v8;
  v11 = v10;
  result = [a2 localizedSpeedUnitStringForActivityType_];
  if (result)
  {
    v13 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    lazy protocol witness table accessor for type String and conformance String();
    v14 = MEMORY[0x277D837D0];
    v15 = StringProtocol.localizedUppercase.getter();
    v17 = v16;

    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v18 = swift_getObjCClassFromMetadata();
    v19 = [objc_opt_self() bundleForClass_];
    v20 = MEMORY[0x20F2E6C00](0xD00000000000001CLL, 0x800000020B46BAA0);
    v21 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_20B4282E0;
    *(v23 + 56) = v14;
    v24 = lazy protocol witness table accessor for type String and conformance String();
    *(v23 + 32) = v9;
    *(v23 + 40) = v11;
    *(v23 + 96) = v14;
    *(v23 + 104) = v24;
    *(v23 + 64) = v24;
    *(v23 + 72) = v15;
    *(v23 + 80) = v17;
    v25 = static String.localizedStringWithFormat(_:_:)();

LABEL_22:

    return v25;
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void TargetZone.ZoneType.valueString(activityType:formattingManager:value:)(double a1, uint64_t a2, void *a3)
{
  v4 = *v3;
  if (v4 - 3 < 4)
  {
    if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (a1 > -9.22337204e18)
    {
      if (a1 < 9.22337204e18)
      {
        v5 = a1;
        v6 = [objc_opt_self() mainBundle];
        v24._object = 0x800000020B456470;
        v7._countAndFlagsBits = 1684827173;
        v7._object = 0xE400000000000000;
        v8._countAndFlagsBits = 0;
        v8._object = 0xE000000000000000;
        v24._countAndFlagsBits = 0xD000000000000018;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v24);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v9 = swift_allocObject();
        v10 = MEMORY[0x277D83B88];
        *(v9 + 16) = xmmword_20B423A90;
        v11 = MEMORY[0x277D83C10];
        *(v9 + 56) = v10;
        *(v9 + 64) = v11;
        *(v9 + 32) = v5;
        static String.localizedStringWithFormat(_:_:)();

        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v4 < 3)
  {
    v14 = FIUIDistanceTypeForActivityType();
    v15 = MEMORY[0x20F2E8410]();
    v16 = [objc_opt_self() meterUnit];
    v17 = [objc_opt_self() quantityWithUnit:v16 doubleValue:a1];

    if (v15 == 4)
    {
      [a3 speedPerHourWithDistance:v17 overDuration:4 paceFormat:v14 distanceType:1.0];
      v19 = v18;
      v20 = objc_opt_self();
      v21 = MEMORY[0x20F2E7210](v19);
      v22 = [v20 stringWithNumber:v21 decimalPrecision:1 roundingMode:4 decimalTrimmingMode:1];

      if (!v22)
      {

        return;
      }
    }

    else
    {
      v23 = [a3 localizedPaceStringWithDistance:v17 overDuration:v15 paceFormat:v14 distanceType:1.0];
      if (!v23)
      {
LABEL_17:
        __break(1u);
        return;
      }

      v22 = v23;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }
}

uint64_t specialized HeartRateTargetZone.displayString(formattingManager:activityType:)(void *a1)
{
  v2 = OBJC_IVAR___WOCoreHeartRateTargetZone_type;
  if (*(v1 + OBJC_IVAR___WOCoreHeartRateTargetZone_type))
  {
    if (*(v1 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) != 1)
    {
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v33 = [objc_opt_self() bundleForClass_];
      v34 = MEMORY[0x20F2E6C00](0xD000000000000010, 0x800000020B46B9A0);
      v35 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v36 = [v33 localizedStringForKey:v34 value:0 table:v35];

      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      return v37;
    }

    v4 = v1 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange;
    swift_beginAccess();
    if (*(v4 + 16))
    {
      goto LABEL_24;
    }

    v6 = *v4;
    v5 = *(v4 + 8);
    v7 = [a1 localizedHeartRateUnitString];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
    }

    else
    {
      v11 = 0xE300000000000000;
      v9 = 5066818;
    }

    if (*(v1 + v2) == 1 && (*(v4 + 16) & 1) == 0 && *(v4 + 8) - *v4 <= 1.0)
    {
      v63 = [objc_opt_self() _countPerMinuteUnit];
      v64 = [objc_opt_self() quantityWithUnit:v63 doubleValue:v5];

      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      v65 = swift_getObjCClassFromMetadata();
      v66 = [objc_opt_self() bundleForClass_];
      v67 = MEMORY[0x20F2E6C00](0xD000000000000017, 0x800000020B46BA60);
      v68 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v69 = [v66 localizedStringForKey:v67 value:0 table:v68];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_20B4282E0;
      v71 = [a1 localizedStringWithHeartRate_];
      if (v71)
      {
        v72 = v71;
        v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v75 = v74;

        v76 = MEMORY[0x277D837D0];
        *(v70 + 56) = MEMORY[0x277D837D0];
        v77 = lazy protocol witness table accessor for type String and conformance String();
        *(v70 + 32) = v73;
        *(v70 + 40) = v75;
        *(v70 + 96) = v76;
        *(v70 + 104) = v77;
        *(v70 + 64) = v77;
        *(v70 + 72) = v9;
        *(v70 + 80) = v11;
        v31 = static String.localizedStringWithFormat(_:_:)();

        goto LABEL_17;
      }

      goto LABEL_23;
    }

    v78 = v9;
    v79 = v11;
    v39 = objc_opt_self();
    v40 = [v39 _countPerMinuteUnit];
    v41 = objc_opt_self();
    v42 = [v41 quantityWithUnit:v40 doubleValue:v6];

    v43 = [v39 _countPerMinuteUnit];
    v80 = [v41 quantityWithUnit:v43 doubleValue:v5];

    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v44 = swift_getObjCClassFromMetadata();
    v45 = [objc_opt_self() bundleForClass_];
    v46 = MEMORY[0x20F2E6C00](0xD000000000000016, 0x800000020B46B9C0);
    v47 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v48 = [v45 localizedStringForKey:v46 value:0 table:v47];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_20B423A20;
    v50 = v42;
    v51 = [a1 localizedStringWithHeartRate_];
    if (v51)
    {
      v52 = v51;
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      v56 = MEMORY[0x277D837D0];
      *(v49 + 56) = MEMORY[0x277D837D0];
      v57 = lazy protocol witness table accessor for type String and conformance String();
      *(v49 + 64) = v57;
      *(v49 + 32) = v53;
      *(v49 + 40) = v55;
      v58 = [a1 localizedStringWithHeartRate_];
      if (v58)
      {
        v59 = v58;
        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v61;

        *(v49 + 96) = v56;
        *(v49 + 104) = v57;
        *(v49 + 72) = v60;
        *(v49 + 80) = v62;
        *(v49 + 136) = v56;
        *(v49 + 144) = v57;
        *(v49 + 112) = v78;
        *(v49 + 120) = v79;
        v31 = static String.localizedStringWithFormat(_:_:)();

        goto LABEL_17;
      }

      goto LABEL_22;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = (v1 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZoneIndex);
  swift_beginAccess();
  if ((v12[1] & 1) == 0)
  {
    v13 = *v12;
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v14 = swift_getObjCClassFromMetadata();
    v15 = objc_opt_self();
    v16 = [v15 bundleForClass_];
    v17 = MEMORY[0x20F2E6C00](0xD000000000000014, 0x800000020B46BB90);
    v18 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_20B423A90;
    if (!__OFADD__(v13, 1))
    {
      v21 = v20;
      v22 = [v15 mainBundle];
      v81._object = 0x800000020B456470;
      v81._countAndFlagsBits = 0xD000000000000018;
      v23._countAndFlagsBits = 1684827173;
      v23._object = 0xE400000000000000;
      v24._countAndFlagsBits = 0;
      v24._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v81);

      v25 = swift_allocObject();
      v26 = MEMORY[0x277D83B88];
      *(v25 + 16) = xmmword_20B423A90;
      v27 = MEMORY[0x277D83C10];
      *(v25 + 56) = v26;
      *(v25 + 64) = v27;
      *(v25 + 32) = v13 + 1;
      v28 = static String.localizedStringWithFormat(_:_:)();
      v30 = v29;

      v21[7] = MEMORY[0x277D837D0];
      v21[8] = lazy protocol witness table accessor for type String and conformance String();
      v21[4] = v28;
      v21[5] = v30;
      v31 = static String.localizedStringWithFormat(_:_:)();

LABEL_17:

      return v31;
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_24:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized HeartRateTargetZone.spokenString(formattingManager:activityType:)(void *a1)
{
  v2 = OBJC_IVAR___WOCoreHeartRateTargetZone_type;
  if (!*(v1 + OBJC_IVAR___WOCoreHeartRateTargetZone_type))
  {
    v58 = (v1 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZoneIndex);
    swift_beginAccess();
    if ((v58[1] & 1) == 0)
    {
      v59 = *v58;
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v61 = objc_opt_self();
      v62 = [v61 bundleForClass_];
      v63 = MEMORY[0x20F2E6C00](0x4D414E5F454E4F5ALL, 0xE900000000000045);
      v64 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v65 = [v62 localizedStringForKey:v63 value:0 table:v64];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_20B423A90;
      if (!__OFADD__(v59, 1))
      {
        v67 = MEMORY[0x277D83C10];
        *(v66 + 56) = MEMORY[0x277D83B88];
        *(v66 + 64) = v67;
        *(v66 + 32) = v59 + 1;
        v68 = String.init(format:_:)();
        v129 = v69;
        v131 = v68;

        v70 = [v61 bundleForClass_];
        v71 = MEMORY[0x20F2E6C00](0xD00000000000001BLL, 0x800000020B4683A0);
        v72 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
        v73 = [v70 localizedStringForKey:v71 value:0 table:v72];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v74 = swift_allocObject();
        *(v74 + 16) = xmmword_20B4282E0;
        v75 = [v61 bundleForClass_];
        v76 = MEMORY[0x20F2E6C00](0xD000000000000016, 0x800000020B46BB30);
        v77 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
        v78 = [v75 localizedStringForKey:v76 value:0 table:v77];

        v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v81 = v80;

        v82 = MEMORY[0x277D837D0];
        *(v74 + 56) = MEMORY[0x277D837D0];
        v83 = lazy protocol witness table accessor for type String and conformance String();
        *(v74 + 32) = v79;
        *(v74 + 40) = v81;
        *(v74 + 96) = v82;
        *(v74 + 104) = v83;
        *(v74 + 64) = v83;
        *(v74 + 72) = v131;
        *(v74 + 80) = v129;
        v57 = String.init(format:_:)();
        goto LABEL_17;
      }

      __break(1u);
      goto LABEL_24;
    }

LABEL_31:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (*(v1 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) == 1)
  {
    v4 = v1 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange;
    swift_beginAccess();
    if ((*(v4 + 16) & 1) == 0)
    {
      v6 = *v4;
      v5 = *(v4 + 8);
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      v7 = swift_getObjCClassFromMetadata();
      v128 = objc_opt_self();
      v130 = v7;
      v8 = [v128 bundleForClass_];
      v9 = MEMORY[0x20F2E6C00](0xD000000000000016, 0x800000020B4685F0);
      v10 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v11 = [v8 localizedStringForKey:v9 value:0 table:v10];

      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      if (*(v1 + v2) == 1 && (*(v4 + 16) & 1) == 0 && *(v4 + 8) - *v4 <= 1.0)
      {
        v85 = [objc_opt_self() _countPerMinuteUnit];
        v86 = [objc_opt_self() quantityWithUnit:v85 doubleValue:v5];

        v87 = [v128 bundleForClass_];
        v88 = MEMORY[0x20F2E6C00](0xD000000000000017, 0x800000020B46BA60);
        v89 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
        v90 = [v87 localizedStringForKey:v88 value:0 table:v89];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v91 = swift_allocObject();
        *(v91 + 16) = xmmword_20B4282E0;
        v127 = v86;
        v92 = [a1 localizedStringWithHeartRate_];
        if (v92)
        {
          v93 = v92;
          v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v96 = v95;

          v97 = MEMORY[0x277D837D0];
          *(v91 + 56) = MEMORY[0x277D837D0];
          v120 = lazy protocol witness table accessor for type String and conformance String();
          *(v91 + 32) = v94;
          *(v91 + 40) = v96;
          *(v91 + 96) = v97;
          *(v91 + 104) = v120;
          *(v91 + 64) = v120;
          *(v91 + 72) = v12;
          *(v91 + 80) = v14;
          v124 = static String.localizedStringWithFormat(_:_:)();
          v121 = v98;

          v99 = [v128 bundleForClass_];
          v100 = MEMORY[0x20F2E6C00](0xD000000000000013, 0x800000020B468380);
          v101 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
          v102 = [v99 localizedStringForKey:v100 value:0 table:v101];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v103 = swift_allocObject();
          *(v103 + 16) = xmmword_20B423A90;
          v104 = [v128 bundleForClass_];
          v105 = MEMORY[0x20F2E6C00](0xD000000000000016, 0x800000020B46BB30);
          v106 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
          v107 = [v104 &selRef_timeIntervalSinceReferenceDate + 4];

          v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v110 = v109;

          *(v103 + 56) = MEMORY[0x277D837D0];
          *(v103 + 64) = v120;
          *(v103 + 32) = v108;
          *(v103 + 40) = v110;
          v111 = String.init(format:_:)();
          v113 = v112;

          v114 = [v128 bundleForClass_];
          v115 = MEMORY[0x20F2E6C00](0xD00000000000001BLL, 0x800000020B4683A0);
          v116 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
          v117 = [v114 localizedStringForKey:v115 value:0 table:v116];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v118 = swift_allocObject();
          *(v118 + 16) = xmmword_20B4282E0;
          v119 = MEMORY[0x277D837D0];
          *(v118 + 56) = MEMORY[0x277D837D0];
          *(v118 + 64) = v120;
          *(v118 + 32) = v111;
          *(v118 + 40) = v113;
          *(v118 + 96) = v119;
          *(v118 + 104) = v120;
          *(v118 + 72) = v124;
          *(v118 + 80) = v121;
          v57 = String.init(format:_:)();

          goto LABEL_17;
        }

        goto LABEL_30;
      }

      if ((~*&v6 & 0x7FF0000000000000) != 0)
      {
        if (v6 > -9.22337204e18)
        {
          if (v6 < 9.22337204e18)
          {
            v15 = dispatch thunk of CustomStringConvertible.description.getter();
            v17 = v16;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
            v18 = swift_allocObject();
            *(v18 + 16) = xmmword_20B4282E0;
            if ((~*&v5 & 0x7FF0000000000000) != 0)
            {
              if (v5 > -9.22337204e18)
              {
                if (v5 < 9.22337204e18)
                {
                  v19 = v18;
                  v20 = dispatch thunk of CustomStringConvertible.description.getter();
                  v125 = v15;
                  v21 = v14;
                  v23 = v22;
                  v24 = MEMORY[0x277D837D0];
                  v19[7] = MEMORY[0x277D837D0];
                  v25 = lazy protocol witness table accessor for type String and conformance String();
                  v19[4] = v20;
                  v19[5] = v23;
                  v19[12] = v24;
                  v19[13] = v25;
                  v19[8] = v25;
                  v19[9] = v12;
                  v19[10] = v21;
                  v122 = String.init(format:_:)();
                  v27 = v26;
                  v28 = [v128 bundleForClass_];
                  v29 = MEMORY[0x20F2E6C00](0xD00000000000001ALL, 0x800000020B4683C0);
                  v30 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
                  v31 = v17;
                  v32 = [v28 localizedStringForKey:v29 value:0 table:v30];

                  static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v33 = swift_allocObject();
                  *(v33 + 16) = xmmword_20B4282E0;
                  *(v33 + 56) = v24;
                  *(v33 + 64) = v25;
                  *(v33 + 32) = v125;
                  *(v33 + 40) = v31;
                  *(v33 + 96) = v24;
                  *(v33 + 104) = v25;
                  *(v33 + 72) = v122;
                  *(v33 + 80) = v27;
                  v34 = String.init(format:_:)();
                  v123 = v35;
                  v126 = v34;

                  v36 = [v128 bundleForClass_];
                  v37 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B4683E0);
                  v38 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
                  v39 = [v36 localizedStringForKey:v37 value:0 table:v38];

                  static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v40 = swift_allocObject();
                  *(v40 + 16) = xmmword_20B423A90;
                  v41 = [v128 bundleForClass_];
                  v42 = MEMORY[0x20F2E6C00](0xD000000000000016, 0x800000020B46BB30);
                  v43 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
                  v44 = [v41 localizedStringForKey:v42 value:0 table:v43];

                  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v47 = v46;

                  v48 = MEMORY[0x277D837D0];
                  *(v40 + 56) = MEMORY[0x277D837D0];
                  *(v40 + 64) = v25;
                  *(v40 + 32) = v45;
                  *(v40 + 40) = v47;
                  v49 = String.init(format:_:)();
                  v51 = v50;

                  v52 = [v128 bundleForClass_];
                  v53 = MEMORY[0x20F2E6C00](0xD00000000000001BLL, 0x800000020B4683A0);
                  v54 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
                  v55 = [v52 localizedStringForKey:v53 value:0 table:v54];

                  static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v56 = swift_allocObject();
                  *(v56 + 16) = xmmword_20B4282E0;
                  *(v56 + 56) = v48;
                  *(v56 + 64) = v25;
                  *(v56 + 32) = v49;
                  *(v56 + 40) = v51;
                  *(v56 + 96) = v48;
                  *(v56 + 104) = v25;
                  *(v56 + 72) = v126;
                  *(v56 + 80) = v123;
                  v57 = String.init(format:_:)();
LABEL_17:

                  return v57;
                }

                goto LABEL_29;
              }

LABEL_28:
              __break(1u);
LABEL_29:
              __break(1u);
LABEL_30:
              __break(1u);
              goto LABEL_31;
            }

LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    goto LABEL_31;
  }

  return specialized HeartRateTargetZone.displayString(formattingManager:activityType:)(a1);
}

char *TargetZone.PrimaryType.subTypes(activityType:configurationContext:activityMoveMode:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *a2;
  if (*v3 > 1u)
  {
    if (*v3 == 2)
    {
      if (v5 == 1)
      {
        v15[3] = &type metadata for WorkoutFeatures;
        v15[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
        LOBYTE(v15[0]) = 2;
        v8 = isFeatureEnabled(_:)();
        __swift_destroy_boxed_opaque_existential_1(v15);
        if (v8)
        {
          v7 = &outlined read-only object #2 of TargetZone.PrimaryType.subTypes(activityType:configurationContext:activityMoveMode:);
        }

        else
        {
          v7 = &outlined read-only object #3 of TargetZone.PrimaryType.subTypes(activityType:configurationContext:activityMoveMode:);
        }
      }

      else
      {
        v7 = &outlined read-only object #4 of TargetZone.PrimaryType.subTypes(activityType:configurationContext:activityMoveMode:);
      }
    }

    else
    {
      v7 = &outlined read-only object #5 of TargetZone.PrimaryType.subTypes(activityType:configurationContext:activityMoveMode:);
    }
  }

  else
  {
    v6 = &outlined read-only object #1 of TargetZone.PrimaryType.subTypes(activityType:configurationContext:activityMoveMode:);
    if (v5 == 1)
    {
      v6 = &outlined read-only object #0 of TargetZone.PrimaryType.subTypes(activityType:configurationContext:activityMoveMode:);
    }

    if (*v3)
    {
      v7 = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }
  }

  LOBYTE(v15[0]) = v5;
  v9 = FIUIWorkoutActivityType.supportedTargetZoneAlerts(activityMoveMode:configurationContext:)(a3, v15);
  v10 = specialized _NativeSet.genericIntersection<A>(_:)(v7, v9);

  v11 = *(v10 + 16);
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore10TargetZoneC0K4TypeO_Tt1g5(*(v10 + 16), 0);
  v13 = specialized Sequence._copySequenceContents(initializing:)(v15, v12 + 32, v11, v10);
  outlined consume of Set<TargetZone.ZoneType>.Iterator._Variant();
  if (v13 != v11)
  {
    __break(1u);
LABEL_17:

    v12 = MEMORY[0x277D84F90];
  }

  v15[0] = v12;

  specialized MutableCollection<>.sort(by:)(v15);

  return v15[0];
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance TargetZone.ZoneType(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return (specialized static TargetZone.ZoneType.< infix(_:_:)(&v4, &v5) & 1) == 0;
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance TargetZone.ZoneType(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return (specialized static TargetZone.ZoneType.< infix(_:_:)(&v5, &v4) & 1) == 0;
}

uint64_t protocol witness for static Comparable.> infix(_:_:) in conformance TargetZone.ZoneType(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return specialized static TargetZone.ZoneType.< infix(_:_:)(&v4, &v5) & 1;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v116 = result;
  v7 = *(a3 + 8);
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_184:
    v9 = v6;
    v6 = *v116;
    if (!*v116)
    {
      goto LABEL_223;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_217:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
      v10 = result;
    }

    v109 = v5;
    v125 = v10;
    v110 = *(v10 + 2);
    if (v110 >= 2)
    {
      while (*v9)
      {
        v5 = v110 - 1;
        v111 = *&v10[16 * v110];
        v112 = *&v10[16 * v110 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v9 + v111), (*v9 + *&v10[16 * v110 + 16]), *v9 + v112, v6);
        if (v109)
        {
        }

        if (v112 < v111)
        {
          goto LABEL_210;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        }

        if (v110 - 2 >= *(v10 + 2))
        {
          goto LABEL_211;
        }

        v113 = &v10[16 * v110];
        *v113 = v111;
        *(v113 + 1) = v112;
        v125 = v10;
        result = specialized Array.remove(at:)(v110 - 1);
        v10 = v125;
        v110 = *(v125 + 2);
        if (v110 <= 1)
        {
        }
      }

      goto LABEL_221;
    }
  }

  v8 = 0;
  v9 = 0xEC00000065636170;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v8++;
    v118 = v11;
    if (v8 < v7)
    {
      v12 = v11;
      v13 = *v6;
      v14 = *(*v6 + v11);
      v124 = v8[*v6];
      v123 = v14;
      result = specialized static TargetZone.ZoneType.< infix(_:_:)(&v124, &v123);
      __dst = result;
      v15 = v12 + 2;
      if (v15 < v7)
      {
        v8 = (v7 - 1);
        while (1)
        {
          v19 = *(v13 + v15);
          if (v19 > 3)
          {
            if (*(v13 + v15) > 5u)
            {
              if (v19 == 6)
              {
                v20 = 0x5F65676172657661;
                v21 = 0xED00007265776F70;
              }

              else
              {
                v21 = 0xE400000000000000;
                v20 = 1701736302;
              }
            }

            else if (v19 == 4)
            {
              v20 = 0x5F65676172657661;
              v21 = 0xEF65636E65646163;
            }

            else
            {
              v20 = 0xD000000000000013;
              v21 = 0x800000020B4544E0;
            }
          }

          else if (*(v13 + v15) > 1u)
          {
            if (v19 == 2)
            {
              v20 = 0xD000000000000012;
              v21 = 0x800000020B454490;
            }

            else
            {
              v20 = 0xD000000000000015;
              v21 = 0x800000020B4544B0;
            }
          }

          else
          {
            v20 = 0x5F676E696C6C6F72;
            v21 = 0xEC00000065636170;
            if (*(v13 + v15))
            {
              v20 = 0x5F65676172657661;
              v21 = 0xEC00000065636170;
            }
          }

          v22 = *(v13 + v15 - 1);
          v23 = 1701736302;
          if (v22 == 6)
          {
            v23 = 0x5F65676172657661;
          }

          v24 = 0xED00007265776F70;
          if (v22 != 6)
          {
            v24 = 0xE400000000000000;
          }

          if (v22 == 4)
          {
            v25 = 0x5F65676172657661;
          }

          else
          {
            v25 = 0xD000000000000013;
          }

          v26 = 0xEF65636E65646163;
          if (v22 != 4)
          {
            v26 = 0x800000020B4544E0;
          }

          if (*(v13 + v15 - 1) <= 5u)
          {
            v23 = v25;
            v24 = v26;
          }

          v27 = 0xD000000000000015;
          if (v22 == 2)
          {
            v27 = 0xD000000000000012;
            v28 = 0x800000020B454490;
          }

          else
          {
            v28 = 0x800000020B4544B0;
          }

          if (*(v13 + v15 - 1))
          {
            v29 = 0x5F65676172657661;
          }

          else
          {
            v29 = 0x5F676E696C6C6F72;
          }

          if (*(v13 + v15 - 1) <= 1u)
          {
            v27 = v29;
            v28 = 0xEC00000065636170;
          }

          if (*(v13 + v15 - 1) <= 3u)
          {
            v30 = v27;
          }

          else
          {
            v30 = v23;
          }

          if (*(v13 + v15 - 1) <= 3u)
          {
            v31 = v28;
          }

          else
          {
            v31 = v24;
          }

          if (v20 == v30 && v21 == v31)
          {

            if (__dst)
            {
              v32 = (v15 - 1);
              v9 = 0xEC00000065636170;
              v11 = v118;
              goto LABEL_55;
            }
          }

          else
          {
            v16 = v7;
            v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v18 = __dst ^ v17;
            v7 = v16;
            v6 = a3;
            if (v18)
            {
              v8 = (v15 - 1);
              v9 = 0xEC00000065636170;
              break;
            }
          }

          ++v15;
          v9 = 0xEC00000065636170;
          if (v7 == v15)
          {
            v15 = v7;
            break;
          }
        }
      }

      v32 = v8;
      v8 = v15;
      v11 = v118;
      if (__dst)
      {
LABEL_55:
        if (v15 < v11)
        {
          goto LABEL_214;
        }

        if (v11 <= v32)
        {
          v57 = v15 - 1;
          v58 = v11;
          do
          {
            if (v58 != v57)
            {
              v60 = *v6;
              if (!*v6)
              {
                goto LABEL_220;
              }

              v61 = *(v60 + v58);
              *(v60 + v58) = *(v60 + v57);
              *(v60 + v57) = v61;
            }
          }

          while (++v58 < v57--);
        }

        v8 = v15;
      }
    }

    v33 = *(v6 + 1);
    if (v8 < v33)
    {
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_213;
      }

      if (&v8[-v11] < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_215;
        }

        if (v11 + a4 < v33)
        {
          v33 = (v11 + a4);
        }

        if (v33 < v11)
        {
LABEL_216:
          __break(1u);
          goto LABEL_217;
        }

        if (v8 != v33)
        {
          break;
        }
      }
    }

LABEL_133:
    if (v8 < v11)
    {
      goto LABEL_212;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v63 = *(v10 + 2);
    v62 = *(v10 + 3);
    v9 = v63 + 1;
    if (v63 >= v62 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v9;
    v64 = &v10[16 * v63];
    *(v64 + 4) = v118;
    *(v64 + 5) = v8;
    __dstb = *v116;
    if (!*v116)
    {
      goto LABEL_222;
    }

    if (v63)
    {
      while (1)
      {
        v65 = v9 - 1;
        if (v9 >= 4)
        {
          break;
        }

        if (v9 == 3)
        {
          v66 = *(v10 + 4);
          v67 = *(v10 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_153:
          if (v69)
          {
            goto LABEL_201;
          }

          v82 = &v10[16 * v9];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_204;
          }

          v88 = &v10[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_207;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_208;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v9 - 2;
            }

            goto LABEL_174;
          }

          goto LABEL_167;
        }

        v92 = &v10[16 * v9];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_167:
        if (v87)
        {
          goto LABEL_203;
        }

        v95 = &v10[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_206;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_174:
        v103 = v65 - 1;
        if (v65 - 1 >= v9)
        {
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
          goto LABEL_216;
        }

        v104 = *v6;
        if (!*v6)
        {
          goto LABEL_219;
        }

        v105 = v8;
        v106 = v6;
        v107 = *&v10[16 * v103 + 32];
        v6 = *&v10[16 * v65 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((v104 + v107), (v104 + *&v10[16 * v65 + 32]), &v6[v104], __dstb);
        if (v5)
        {
        }

        if (v6 < v107)
        {
          goto LABEL_197;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        }

        if (v103 >= *(v10 + 2))
        {
          goto LABEL_198;
        }

        v108 = &v10[16 * v103];
        *(v108 + 4) = v107;
        *(v108 + 5) = v6;
        v125 = v10;
        result = specialized Array.remove(at:)(v65);
        v10 = v125;
        v9 = *(v125 + 2);
        v8 = v105;
        v6 = v106;
        if (v9 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v10[16 * v9 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_199;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_200;
      }

      v77 = &v10[16 * v9];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_202;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_205;
      }

      if (v81 >= v73)
      {
        v99 = &v10[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_209;
        }

        if (v68 < v102)
        {
          v65 = v9 - 2;
        }

        goto LABEL_174;
      }

      goto LABEL_153;
    }

LABEL_3:
    v7 = *(v6 + 1);
    v9 = 0xEC00000065636170;
    if (v8 >= v7)
    {
      goto LABEL_184;
    }
  }

  v114 = v5;
  v34 = *v6;
  v35 = &v8[*v6];
  v36 = v11 - v8;
  v119 = v33;
LABEL_69:
  __dsta = v8;
  v37 = v8[v34];
  v38 = v36;
  v39 = v35;
  while (1)
  {
    if (v37 > 3u)
    {
      if (v37 > 5u)
      {
        if (v37 == 6)
        {
          v43 = 0x5F65676172657661;
          v44 = 0xED00007265776F70;
        }

        else
        {
          v44 = 0xE400000000000000;
          v43 = 1701736302;
        }
      }

      else
      {
        if (v37 == 4)
        {
          v43 = 0x5F65676172657661;
        }

        else
        {
          v43 = 0xD000000000000013;
        }

        if (v37 == 4)
        {
          v44 = 0xEF65636E65646163;
        }

        else
        {
          v44 = 0x800000020B4544E0;
        }
      }
    }

    else
    {
      v40 = 0xD000000000000015;
      if (v37 == 2)
      {
        v40 = 0xD000000000000012;
        v41 = 0x800000020B454490;
      }

      else
      {
        v41 = 0x800000020B4544B0;
      }

      if (v37)
      {
        v42 = 0x5F65676172657661;
      }

      else
      {
        v42 = 0x5F676E696C6C6F72;
      }

      if (v37 <= 1u)
      {
        v43 = v42;
      }

      else
      {
        v43 = v40;
      }

      if (v37 <= 1u)
      {
        v44 = 0xEC00000065636170;
      }

      else
      {
        v44 = v41;
      }
    }

    v45 = *(v39 - 1);
    v46 = 1701736302;
    if (v45 == 6)
    {
      v46 = 0x5F65676172657661;
    }

    v47 = 0xED00007265776F70;
    if (v45 != 6)
    {
      v47 = 0xE400000000000000;
    }

    if (v45 == 4)
    {
      v48 = 0x5F65676172657661;
    }

    else
    {
      v48 = 0xD000000000000013;
    }

    v49 = 0xEF65636E65646163;
    if (v45 != 4)
    {
      v49 = 0x800000020B4544E0;
    }

    if (*(v39 - 1) <= 5u)
    {
      v46 = v48;
      v47 = v49;
    }

    v50 = 0xD000000000000015;
    if (v45 == 2)
    {
      v50 = 0xD000000000000012;
      v51 = 0x800000020B454490;
    }

    else
    {
      v51 = 0x800000020B4544B0;
    }

    if (*(v39 - 1))
    {
      v52 = 0x5F65676172657661;
    }

    else
    {
      v52 = 0x5F676E696C6C6F72;
    }

    if (*(v39 - 1) <= 1u)
    {
      v50 = v52;
      v51 = 0xEC00000065636170;
    }

    if (*(v39 - 1) <= 3u)
    {
      v53 = v50;
    }

    else
    {
      v53 = v46;
    }

    if (*(v39 - 1) <= 3u)
    {
      v54 = v51;
    }

    else
    {
      v54 = v47;
    }

    if (v43 == v53 && v44 == v54)
    {

LABEL_68:
      v8 = __dsta + 1;
      ++v35;
      --v36;
      if (__dsta + 1 != v119)
      {
        goto LABEL_69;
      }

      v8 = v119;
      v5 = v114;
      v6 = a3;
      v11 = v118;
      goto LABEL_133;
    }

    v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v55 & 1) == 0)
    {
      v9 = 0xEC00000065636170;
      goto LABEL_68;
    }

    if (!v34)
    {
      break;
    }

    v37 = *v39;
    *v39 = *(v39 - 1);
    *--v39 = v37;
    v56 = __CFADD__(v38++, 1);
    v9 = 0xEC00000065636170;
    if (v56)
    {
      goto LABEL_68;
    }
  }

  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
LABEL_223:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(_BYTE *__src, _BYTE *a2, unint64_t a3, _BYTE *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a3 - a2;
  if (a2 - __src < (a3 - a2))
  {
    if (__dst != __src || __dst >= a2)
    {
      memmove(__dst, __src, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1)
    {
      if (v6 < v5)
      {
        while (1)
        {
          v11 = *v6;
          if (v11 > 3)
          {
            if (*v6 > 5u)
            {
              if (v11 == 6)
              {
                v12 = 0x5F65676172657661;
                v13 = 0xED00007265776F70;
              }

              else
              {
                v13 = 0xE400000000000000;
                v12 = 1701736302;
              }
            }

            else if (v11 == 4)
            {
              v12 = 0x5F65676172657661;
              v13 = 0xEF65636E65646163;
            }

            else
            {
              v12 = 0xD000000000000013;
              v13 = 0x800000020B4544E0;
            }
          }

          else if (*v6 > 1u)
          {
            if (v11 == 2)
            {
              v12 = 0xD000000000000012;
              v13 = 0x800000020B454490;
            }

            else
            {
              v12 = 0xD000000000000015;
              v13 = 0x800000020B4544B0;
            }
          }

          else
          {
            v12 = 0x5F676E696C6C6F72;
            v13 = 0xEC00000065636170;
            if (*v6)
            {
              v12 = 0x5F65676172657661;
            }
          }

          v14 = *v4;
          if (v14 > 3)
          {
            if (*v4 > 5u)
            {
              if (v14 == 6)
              {
                v16 = 0xED00007265776F70;
                if (v12 != 0x5F65676172657661)
                {
                  goto LABEL_43;
                }
              }

              else
              {
                v16 = 0xE400000000000000;
                if (v12 != 1701736302)
                {
                  goto LABEL_43;
                }
              }
            }

            else if (v14 == 4)
            {
              v16 = 0xEF65636E65646163;
              if (v12 != 0x5F65676172657661)
              {
                goto LABEL_43;
              }
            }

            else
            {
              v16 = 0x800000020B4544E0;
              if (v12 != 0xD000000000000013)
              {
                goto LABEL_43;
              }
            }
          }

          else
          {
            if (*v4 > 1u)
            {
              if (v14 == 2)
              {
                v16 = 0x800000020B454490;
                if (v12 != 0xD000000000000012)
                {
                  goto LABEL_43;
                }

                goto LABEL_40;
              }

              v15 = 0xD000000000000015;
              v16 = 0x800000020B4544B0;
            }

            else
            {
              v15 = 0x5F676E696C6C6F72;
              v16 = 0xEC00000065636170;
              if (*v4)
              {
                if (v12 != 0x5F65676172657661)
                {
                  goto LABEL_43;
                }

                goto LABEL_40;
              }
            }

            if (v12 != v15)
            {
              goto LABEL_43;
            }
          }

LABEL_40:
          if (v13 == v16)
          {

            goto LABEL_47;
          }

LABEL_43:
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v17)
          {
            v18 = v6 + 1;
            v19 = v6;
            if (v7 >= v6 && v7 < v18)
            {
              goto LABEL_52;
            }

            goto LABEL_51;
          }

LABEL_47:
          v20 = v4 + 1;
          v19 = v4;
          v18 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v20)
            {
              goto LABEL_52;
            }
          }

LABEL_51:
          *v7 = *v19;
LABEL_52:
          ++v7;
          if (v4 < v10)
          {
            v6 = v18;
            if (v18 < v5)
            {
              continue;
            }
          }

          v6 = v7;
          goto LABEL_116;
        }
      }

      v6 = v7;
      if (v7 != v4)
      {
        goto LABEL_123;
      }

LABEL_122:
      if (v6 >= v10)
      {
        goto LABEL_123;
      }

      return 1;
    }

    v6 = v7;
LABEL_121:
    if (v6 != v4)
    {
      goto LABEL_123;
    }

    goto LABEL_122;
  }

  if (__dst != a2 || __dst >= a3)
  {
    memmove(__dst, a2, a3 - a2);
  }

  v10 = &v4[v9];
  if (v9 < 1 || v6 <= v7)
  {
    goto LABEL_121;
  }

LABEL_60:
  v21 = v6 - 1;
  --v5;
  v22 = v10;
  __dsta = v6 - 1;
  do
  {
    v24 = *--v22;
    v23 = v24;
    if (v24 > 3)
    {
      if (v23 > 5)
      {
        if (v23 == 6)
        {
          v25 = 0x5F65676172657661;
          v26 = 0xED00007265776F70;
        }

        else
        {
          v26 = 0xE400000000000000;
          v25 = 1701736302;
        }
      }

      else if (v23 == 4)
      {
        v25 = 0x5F65676172657661;
        v26 = 0xEF65636E65646163;
      }

      else
      {
        v25 = 0xD000000000000013;
        v26 = 0x800000020B4544E0;
      }
    }

    else if (v23 > 1)
    {
      if (v23 == 2)
      {
        v25 = 0xD000000000000012;
        v26 = 0x800000020B454490;
      }

      else
      {
        v25 = 0xD000000000000015;
        v26 = 0x800000020B4544B0;
      }
    }

    else
    {
      v25 = 0x5F676E696C6C6F72;
      v26 = 0xEC00000065636170;
      if (v23)
      {
        v25 = 0x5F65676172657661;
      }
    }

    v27 = *v21;
    if (v27 > 3)
    {
      if (*v21 > 5u)
      {
        if (v27 == 6)
        {
          v30 = 0x5F65676172657661;
        }

        else
        {
          v30 = 1701736302;
        }

        if (v27 == 6)
        {
          v29 = 0xED00007265776F70;
        }

        else
        {
          v29 = 0xE400000000000000;
        }

        if (v25 != v30)
        {
          goto LABEL_104;
        }
      }

      else if (v27 == 4)
      {
        v29 = 0xEF65636E65646163;
        if (v25 != 0x5F65676172657661)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v29 = 0x800000020B4544E0;
        if (v25 != 0xD000000000000013)
        {
          goto LABEL_104;
        }
      }
    }

    else if (*v21 > 1u)
    {
      if (v27 == 2)
      {
        v29 = 0x800000020B454490;
        if (v25 != 0xD000000000000012)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v29 = 0x800000020B4544B0;
        if (v25 != 0xD000000000000015)
        {
          goto LABEL_104;
        }
      }
    }

    else
    {
      if (*v21)
      {
        v28 = 0x5F65676172657661;
      }

      else
      {
        v28 = 0x5F676E696C6C6F72;
      }

      v29 = 0xEC00000065636170;
      if (v25 != v28)
      {
        goto LABEL_104;
      }
    }

    if (v26 == v29)
    {

      goto LABEL_105;
    }

LABEL_104:
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v31)
    {
      if (v5 + 1 < v6 || v5 >= v6)
      {
        *v5 = *__dsta;
      }

      if (v10 > v4)
      {
        --v6;
        if (__dsta > v7)
        {
          goto LABEL_60;
        }
      }

      v6 = __dsta;
      if (__dsta == v4)
      {
        goto LABEL_122;
      }

      goto LABEL_123;
    }

LABEL_105:
    v21 = v6 - 1;
    if ((v5 + 1) < v10 || v5 >= v10)
    {
      *v5 = *v22;
    }

    --v5;
    v10 = v22;
  }

  while (v22 > v4);
  v10 = v22;
LABEL_116:
  if (v6 == v4)
  {
    goto LABEL_122;
  }

LABEL_123:
  memmove(v6, v4, v10 - v4);
  return 1;
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore10TargetZoneC0F4TypeOGMd, &_ss11_SetStorageCy11WorkoutCore10TargetZoneC0F4TypeOGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();

    result = Hasher._finalize()();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + v21) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.genericIntersection<A>(_:)(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(v9, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    partial apply for specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(v15, v7, v18);
    v10 = v18[0];

    MEMORY[0x20F2E9420](v15, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *(a3 + 16);
  if (!v34)
  {
    v31 = 0;
LABEL_70:

    return specialized _NativeSet.extractSubset(using:count:)(a1, a2, v31, a4);
  }

  v31 = 0;
  v5 = 0;
  v37 = a4 + 56;
  v33 = a3 + 32;
  while (2)
  {
    v6 = *(v33 + v5++);
    v7 = *(a4 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();

    v8 = Hasher._finalize()();
    v9 = -1 << *(a4 + 32);
    v10 = v8 & ~v9;
    v11 = v10 >> 6;
    v12 = 1 << v10;
    if (((1 << v10) & *(v37 + 8 * (v10 >> 6))) == 0)
    {
      goto LABEL_3;
    }

    v35 = v5;
    v36 = ~v9;
    while (1)
    {
      v13 = *(*(a4 + 48) + v10);
      if (v13 <= 3)
      {
        break;
      }

      if (*(*(a4 + 48) + v10) > 5u)
      {
        if (v13 == 6)
        {
          v17 = 0x5F65676172657661;
          v18 = 0xED00007265776F70;
          if (v6 > 3)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v18 = 0xE400000000000000;
          v17 = 1701736302;
          if (v6 > 3)
          {
            goto LABEL_32;
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

        if (v6 > 3)
        {
          goto LABEL_32;
        }
      }

LABEL_49:
      if (v6 > 1)
      {
        if (v6 == 2)
        {
          v28 = 0xD000000000000012;
        }

        else
        {
          v28 = 0xD000000000000015;
        }

        if (v6 == 2)
        {
          v24 = 0x800000020B454490;
        }

        else
        {
          v24 = 0x800000020B4544B0;
        }

        if (v17 == v28)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v25 = 0x5F676E696C6C6F72;
        v24 = 0xEC00000065636170;
        if (v6)
        {
          v25 = 0x5F65676172657661;
        }

        if (v17 == v25)
        {
          goto LABEL_53;
        }
      }

LABEL_54:
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v26)
      {
        goto LABEL_66;
      }

      v10 = (v10 + 1) & v36;
      v11 = v10 >> 6;
      v12 = 1 << v10;
      if ((*(v37 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        v5 = v35;
        goto LABEL_3;
      }
    }

    v14 = 0xD000000000000015;
    if (v13 == 2)
    {
      v14 = 0xD000000000000012;
    }

    v15 = 0x800000020B4544B0;
    if (v13 == 2)
    {
      v15 = 0x800000020B454490;
    }

    v16 = 0x5F676E696C6C6F72;
    if (*(*(a4 + 48) + v10))
    {
      v16 = 0x5F65676172657661;
    }

    if (*(*(a4 + 48) + v10) <= 1u)
    {
      v17 = v16;
    }

    else
    {
      v17 = v14;
    }

    if (*(*(a4 + 48) + v10) <= 1u)
    {
      v18 = 0xEC00000065636170;
    }

    else
    {
      v18 = v15;
    }

    if (v6 <= 3)
    {
      goto LABEL_49;
    }

LABEL_32:
    v19 = 0x5F65676172657661;
    v20 = 1701736302;
    if (v6 == 6)
    {
      v20 = 0x5F65676172657661;
    }

    v21 = 0xED00007265776F70;
    if (v6 != 6)
    {
      v21 = 0xE400000000000000;
    }

    if (v6 != 4)
    {
      v19 = 0xD000000000000013;
    }

    v22 = 0xEF65636E65646163;
    if (v6 != 4)
    {
      v22 = 0x800000020B4544E0;
    }

    if (v6 <= 5)
    {
      v23 = v19;
    }

    else
    {
      v23 = v20;
    }

    if (v6 <= 5)
    {
      v24 = v22;
    }

    else
    {
      v24 = v21;
    }

    if (v17 != v23)
    {
      goto LABEL_54;
    }

LABEL_53:
    if (v18 != v24)
    {
      goto LABEL_54;
    }

LABEL_66:
    v29 = a1[v11];
    a1[v11] = v29 | v12;
    v5 = v35;
    if ((v29 & v12) != 0)
    {
LABEL_3:
      if (v5 == v34)
      {
        goto LABEL_70;
      }

      continue;
    }

    break;
  }

  if (!__OFADD__(v31, 1))
  {
    ++v31;
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t specialized static TargetZone.ZoneType.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEC00000065636170;
  v3 = *a1;
  v4 = *a2;
  if (v3 <= 3)
  {
    v5 = 0xD000000000000012;
    v6 = 0x800000020B454490;
    if (v3 != 2)
    {
      v5 = 0xD000000000000015;
      v6 = 0x800000020B4544B0;
    }

    v7 = 0x5F65676172657661;
    if (!*a1)
    {
      v7 = 0x5F676E696C6C6F72;
    }

    if (*a1 <= 1u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    if (v3 <= 1)
    {
      v9 = 0xEC00000065636170;
    }

    else
    {
      v9 = v6;
    }

    if (*a2 > 3u)
    {
      goto LABEL_13;
    }

LABEL_28:
    if (*a2 > 1u)
    {
      if (v4 == 2)
      {
        v16 = 0xD000000000000012;
      }

      else
      {
        v16 = 0xD000000000000015;
      }

      if (v4 == 2)
      {
        v2 = 0x800000020B454490;
      }

      else
      {
        v2 = 0x800000020B4544B0;
      }

      if (v8 != v16)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (*a2)
      {
        v14 = 0x5F65676172657661;
      }

      else
      {
        v14 = 0x5F676E696C6C6F72;
      }

      if (v8 != v14)
      {
        goto LABEL_53;
      }
    }

    goto LABEL_51;
  }

  v10 = 0x5F65676172657661;
  v11 = 0xED00007265776F70;
  if (v3 != 6)
  {
    v10 = 1701736302;
    v11 = 0xE400000000000000;
  }

  v12 = 0x5F65676172657661;
  v13 = 0xEF65636E65646163;
  if (v3 != 4)
  {
    v12 = 0xD000000000000013;
    v13 = 0x800000020B4544E0;
  }

  if (*a1 <= 5u)
  {
    v8 = v12;
  }

  else
  {
    v8 = v10;
  }

  if (v3 <= 5)
  {
    v9 = v13;
  }

  else
  {
    v9 = v11;
  }

  if (*a2 <= 3u)
  {
    goto LABEL_28;
  }

LABEL_13:
  if (*a2 > 5u)
  {
    if (v4 == 6)
    {
      v15 = 0x5F65676172657661;
    }

    else
    {
      v15 = 1701736302;
    }

    if (v4 == 6)
    {
      v2 = 0xED00007265776F70;
    }

    else
    {
      v2 = 0xE400000000000000;
    }

    if (v8 != v15)
    {
      goto LABEL_53;
    }
  }

  else if (v4 == 4)
  {
    v2 = 0xEF65636E65646163;
    if (v8 != 0x5F65676172657661)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v2 = 0x800000020B4544E0;
    if (v8 != 0xD000000000000013)
    {
LABEL_53:
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_54;
    }
  }

LABEL_51:
  if (v9 != v2)
  {
    goto LABEL_53;
  }

  v17 = 0;
LABEL_54:

  return v17 & 1;
}

uint64_t partial apply for specialized closure #1 in _NativeSet.genericIntersection<A>(_:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t Published.Publisher.didSet.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v18 - v4;
  v6 = type metadata accessor for NSRunLoop();
  WitnessTable = swift_getWitnessTable();
  v8 = lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
  v18[0] = a1;
  v18[1] = v6;
  v18[2] = WitnessTable;
  v18[3] = v8;
  v9 = type metadata accessor for Publishers.ReceiveOn();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v18 - v12;
  v14 = [objc_opt_self() mainRunLoop];
  v18[0] = v14;
  v15 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSRunLoop.SchedulerOptions?(v5);

  swift_getWitnessTable();
  v16 = Publisher.eraseToAnyPublisher()();
  (*(v10 + 8))(v13, v9);
  return v16;
}

unint64_t type metadata accessor for NSRunLoop()
{
  result = lazy cache variable for type metadata for NSRunLoop;
  if (!lazy cache variable for type metadata for NSRunLoop)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSRunLoop);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop()
{
  result = lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop;
  if (!lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop)
  {
    type metadata accessor for NSRunLoop();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop);
  }

  return result;
}

uint64_t outlined destroy of NSRunLoop.SchedulerOptions?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Apple_Workout_Core_MultiSportMetricsPublisher.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v2) = static Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.defaultInstance;
}

unint64_t Apple_Workout_Core_MultisportTransitionState.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance Apple_Workout_Core_MultisportTransitionState@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance Apple_Workout_Core_MultisportTransitionState@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_MultisportTransitionState()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_MultisportTransitionState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_MultisportTransitionState and conformance Apple_Workout_Core_MultisportTransitionState();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_MultisportTransitionState()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

double Apple_Workout_Core_MultiSportMetricsPublisher.currentActivityStartSinceReference.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20));
  swift_beginAccess();
  result = *(v1 + 16);
  if (*(v1 + 24))
  {
    return 0.0;
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MultiSportMetricsPublisher.currentActivityStartSinceReference : Apple_Workout_Core_MultiSportMetricsPublisher(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v7);
    *(a2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 16) = v3;
  *(v7 + 24) = 0;
  return result;
}

uint64_t Apple_Workout_Core_MultiSportMetricsPublisher.currentActivityStartSinceReference.setter(double a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  v4 = *(v1 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    v6 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v6);
    *(v1 + v3) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 16) = a1;
  *(v6 + 24) = 0;
  return result;
}

void (*Apple_Workout_Core_MultiSportMetricsPublisher.currentActivityStartSinceReference.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v6 + 24))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Apple_Workout_Core_MultiSportMetricsPublisher.currentActivityStartSinceReference.modify;
}

void Apple_Workout_Core_MultiSportMetricsPublisher.currentActivityStartSinceReference.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    v10 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 16) = v2;
  *(v7 + 24) = 0;

  free(v1);
}

BOOL Apple_Workout_Core_MultiSportMetricsPublisher.hasCurrentActivityStartSinceReference.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20));
  swift_beginAccess();
  return (*(v1 + 24) & 1) == 0;
}

Swift::Void __swiftcall Apple_Workout_Core_MultiSportMetricsPublisher.clearCurrentActivityStartSinceReference()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  v2 = *(v0 + v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v4 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v4);
    *(v0 + v1) = v4;
  }

  swift_beginAccess();
  *(v4 + 16) = 0;
  *(v4 + 24) = 1;
}

void (*Apple_Workout_Core_MultiSportMetricsPublisher.currentActivity.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_Activity(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__currentActivity;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_Activity?(v16 + v17, v8);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *(v14 + 8) = 0;
    *v14 = 0;
    *(v14 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v19 = v14 + *(v9 + 36);
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Activity(v8, v14);
  }

  return Apple_Workout_Core_MultiSportMetricsPublisher.currentActivity.modify;
}

void (*Apple_Workout_Core_MultiSportMetricsPublisher.lastLegTime.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegTime;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MultiSportMetricsPublisher.lastLegTime.modify;
}

double Apple_Workout_Core_MultiSportMetricsPublisher.lastLegTime.getter(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4);
}

uint64_t key path setter for Apple_Workout_Core_MultiSportMetricsPublisher.lastLegTime : Apple_Workout_Core_MultiSportMetricsPublisher(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  v9 = *(a2 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v11);
    *(a2 + v8) = v11;
  }

  v15 = *a5;
  result = swift_beginAccess();
  *(v11 + v15) = v7;
  return result;
}

uint64_t Apple_Workout_Core_MultiSportMetricsPublisher.lastLegTime.setter(uint64_t *a1, double a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v9);
    *(v4 + v6) = v9;
  }

  v13 = *a1;
  result = swift_beginAccess();
  *(v9 + v13) = a2;
  return result;
}

void (*Apple_Workout_Core_MultiSportMetricsPublisher.lastLegDistance.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegDistance;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MultiSportMetricsPublisher.lastLegDistance.modify;
}

void Apple_Workout_Core_MultiSportMetricsPublisher.lastLegTime.modify(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 80);
  v8 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 88);
    v12 = *(v4 + 80);
    v13 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v10 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v10);
    *(v12 + v11) = v10;
  }

  v16 = *a3;
  swift_beginAccess();
  *(v10 + v16) = v5;

  free(v4);
}

void (*Apple_Workout_Core_MultiSportMetricsPublisher.lastLegAveragePace.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegAveragePace;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MultiSportMetricsPublisher.lastLegAveragePace.modify;
}

uint64_t Apple_Workout_Core_MultiSportMetricsPublisher.transitionState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__transitionState;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  return result;
}

uint64_t key path getter for Apple_Workout_Core_MultiSportMetricsPublisher.transitionState : Apple_Workout_Core_MultiSportMetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__transitionState;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t key path setter for Apple_Workout_Core_MultiSportMetricsPublisher.transitionState : Apple_Workout_Core_MultiSportMetricsPublisher(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v8);
    *(a2 + v5) = v8;
  }

  v12 = v8 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__transitionState;
  result = swift_beginAccess();
  *v12 = v3;
  *(v12 + 8) = v4;
  return result;
}

uint64_t Apple_Workout_Core_MultiSportMetricsPublisher.transitionState.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  v6 = *(v1 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v8);
    *(v2 + v5) = v8;
  }

  v12 = v8 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__transitionState;
  result = swift_beginAccess();
  *v12 = v3;
  *(v12 + 8) = v4;
  return result;
}

void (*Apple_Workout_Core_MultiSportMetricsPublisher.transitionState.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__transitionState;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;
  return Apple_Workout_Core_MultiSportMetricsPublisher.transitionState.modify;
}

void Apple_Workout_Core_MultiSportMetricsPublisher.transitionState.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  v6 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v1 + 84);
    v10 = *(v1 + 88);
    v11 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v8 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v8);
    *(v10 + v9) = v8;
  }

  v14 = v8 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__transitionState;
  swift_beginAccess();
  *v14 = v2;
  *(v14 + 8) = v5;

  free(v1);
}

uint64_t Apple_Workout_Core_MultiSportMetricsPublisher.remainingLegCount.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20));
  v2 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__remainingLegCount;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t key path setter for Apple_Workout_Core_MultiSportMetricsPublisher.remainingLegCount : Apple_Workout_Core_MultiSportMetricsPublisher(int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v7);
    *(a2 + v4) = v7;
  }

  v11 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__remainingLegCount;
  result = swift_beginAccess();
  *(v7 + v11) = v3;
  return result;
}

uint64_t Apple_Workout_Core_MultiSportMetricsPublisher.remainingLegCount.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v7);
    *(v2 + v4) = v7;
  }

  v11 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__remainingLegCount;
  result = swift_beginAccess();
  *(v7 + v11) = a1;
  return result;
}

void (*Apple_Workout_Core_MultiSportMetricsPublisher.remainingLegCount.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__remainingLegCount;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return Apple_Workout_Core_MultiSportMetricsPublisher.remainingLegCount.modify;
}

void Apple_Workout_Core_MultiSportMetricsPublisher.remainingLegCount.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  v13 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__remainingLegCount;
  swift_beginAccess();
  *(v7 + v13) = v2;

  free(v1);
}

void (*Apple_Workout_Core_MultiSportMetricsPublisher.lastEffectiveTransitionDateSinceReference.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastEffectiveTransitionDateSinceReference;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MultiSportMetricsPublisher.lastEffectiveTransitionDateSinceReference.modify;
}

uint64_t Apple_Workout_Core_MultiSportMetricsPublisher.currentActivity.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = *(v2 + *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20));
  v10 = *a1;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_Activity?(v9 + v10, v8);
  v11 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v8, 1, v11) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Activity(v8, a2);
  }

  *(a2 + 8) = 0;
  *a2 = 0;
  *(a2 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v13 = a2 + *(v11 + 36);
  UnknownStorage.init()();
  result = (v12)(v8, 1, v11);
  if (result != 1)
  {
    return _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MultiSportMetricsPublisher.currentActivity : Apple_Workout_Core_MultiSportMetricsPublisher(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  v12 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_Activity(a1, v16);
  v17 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  v18 = *(a2 + v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(a2 + v17);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v20 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v20);
    *(a2 + v17) = v20;
  }

  outlined init with take of Apple_Workout_Core_Activity(v16, v11);
  (*(v13 + 56))(v11, 0, 1, v12);
  v24 = *a5;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_Activity?(v11, v20 + v24);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MultiSportMetricsPublisher.currentActivity.setter(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  v10 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  v11 = *(v2 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v2 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    v13 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v13);
    *(v4 + v10) = v13;
  }

  outlined init with take of Apple_Workout_Core_Activity(a1, v9);
  v17 = type metadata accessor for Apple_Workout_Core_Activity(0);
  (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
  v18 = *a2;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_Activity?(v9, v13 + v18);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MultiSportMetricsPublisher.nextMultisportActivity.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_Activity(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__nextMultisportActivity;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_Activity?(v16 + v17, v8);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *(v14 + 8) = 0;
    *v14 = 0;
    *(v14 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v19 = v14 + *(v9 + 36);
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Activity(v8, v14);
  }

  return Apple_Workout_Core_MultiSportMetricsPublisher.nextMultisportActivity.modify;
}

void Apple_Workout_Core_MultiSportMetricsPublisher.currentActivity.modify(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    v6 = *(v4 + 72);
    outlined init with copy of Apple_Workout_Core_Activity(*(v4 + 120), *(v4 + 112));
    v7 = *(v6 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = *(v4 + 128);
      v11 = *(v4 + 72);
      v12 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      swift_allocObject();
      v9 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v9);
      *(v11 + v10) = v9;
    }

    v16 = *(v4 + 112);
    v15 = *(v4 + 120);
    v17 = *(v4 + 96);
    v18 = *(v4 + 104);
    v20 = *(v4 + 80);
    v19 = *(v4 + 88);
    outlined init with take of Apple_Workout_Core_Activity(v16, v20);
    (*(v18 + 56))(v20, 0, 1, v17);
    v21 = *a3;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_Activity?(v20, v9 + v21);
    swift_endAccess();
    outlined destroy of Apple_Workout_Core_Activity(v15);
  }

  else
  {
    v22 = *(v4 + 72);
    v23 = *(v22 + v5);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v22 + v5);
    if ((v24 & 1) == 0)
    {
      v26 = *(v4 + 128);
      v27 = *(v4 + 72);
      v28 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
      v29 = *(v28 + 48);
      v30 = *(v28 + 52);
      swift_allocObject();
      v25 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v25);
      *(v27 + v26) = v25;
    }

    v16 = *(v4 + 112);
    v15 = *(v4 + 120);
    v31 = *(v4 + 96);
    v32 = *(v4 + 104);
    v20 = *(v4 + 80);
    v19 = *(v4 + 88);
    outlined init with take of Apple_Workout_Core_Activity(v15, v20);
    (*(v32 + 56))(v20, 0, 1, v31);
    v33 = *a3;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_Activity?(v20, v25 + v33);
    swift_endAccess();
  }

  free(v15);
  free(v16);
  free(v19);
  free(v20);

  free(v4);
}

BOOL Apple_Workout_Core_MultiSportMetricsPublisher.hasCurrentActivity.getter(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20));
  v8 = *a1;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_Activity?(v7 + v8, v6);
  v9 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v10 = (*(*(v9 - 8) + 48))(v6, 1, v9) != 1;
  _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v6, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  return v10;
}

uint64_t Apple_Workout_Core_MultiSportMetricsPublisher.clearCurrentActivity()(uint64_t *a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v11);
    *(v3 + v8) = v11;
  }

  v15 = type metadata accessor for Apple_Workout_Core_Activity(0);
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  v16 = *a1;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_Activity?(v7, v11 + v16);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MultiSportMetricsPublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Apple_Workout_Core_MultiSportMetricsPublisher.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t static Apple_Workout_Core_MultisportTransitionState._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v32 = &v32 - v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v6 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__currentActivity;
  v7 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v1 + v6, 1, 1, v7);
  v9 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegTime;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegTime) = 0;
  v33 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegDistance;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegDistance) = 0;
  v34 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegAveragePace;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegAveragePace) = 0;
  v10 = v1 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__transitionState;
  *v10 = 0;
  *(v10 + 8) = 1;
  v35 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__remainingLegCount;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__remainingLegCount) = 0;
  v36 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastEffectiveTransitionDateSinceReference;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastEffectiveTransitionDateSinceReference) = 0;
  v37 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__nextMultisportActivity;
  v8(v1 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__nextMultisportActivity, 1, 1, v7);
  swift_beginAccess();
  v11 = *(a1 + 16);
  LOBYTE(v8) = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v11;
  *(v1 + 24) = v8;
  v12 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__currentActivity;
  swift_beginAccess();
  v13 = v32;
  outlined init with copy of Apple_Workout_Core_Activity?(a1 + v12, v32);
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_Activity?(v13, v1 + v6);
  swift_endAccess();
  v14 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegTime;
  swift_beginAccess();
  v15 = *(a1 + v14);
  swift_beginAccess();
  *(v1 + v9) = v15;
  v16 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegDistance;
  swift_beginAccess();
  v17 = *(a1 + v16);
  v18 = v33;
  swift_beginAccess();
  *(v1 + v18) = v17;
  v19 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegAveragePace;
  swift_beginAccess();
  v20 = *(a1 + v19);
  v21 = v34;
  swift_beginAccess();
  *(v1 + v21) = v20;
  v22 = (a1 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__transitionState);
  swift_beginAccess();
  v23 = *v22;
  LOBYTE(v22) = *(v22 + 8);
  swift_beginAccess();
  *v10 = v23;
  *(v10 + 8) = v22;
  v24 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__remainingLegCount;
  swift_beginAccess();
  LODWORD(v24) = *(a1 + v24);
  v25 = v35;
  swift_beginAccess();
  *(v1 + v25) = v24;
  v26 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastEffectiveTransitionDateSinceReference;
  swift_beginAccess();
  v27 = *(a1 + v26);
  v28 = v36;
  swift_beginAccess();
  *(v1 + v28) = v27;
  v29 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__nextMultisportActivity;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_Activity?(a1 + v29, v13);

  v30 = v37;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_Activity?(v13, v1 + v30);
  swift_endAccess();
  return v1;
}

uint64_t Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.__deallocating_deinit()
{
  _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v0 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__currentActivity, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v0 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__nextMultisportActivity, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t Apple_Workout_Core_MultiSportMetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v3 + v8);
    v13 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v12);
    *(v4 + v8) = v11;
  }

  return closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.decodeMessage<A>(decoder:)(v11, a1, a2, a3);
}

uint64_t closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result > 2)
        {
          if (result == 3)
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegTime;
          }

          else
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegDistance;
          }

          goto LABEL_5;
        }

        if (result != 1)
        {
          if (result != 2)
          {
            goto LABEL_6;
          }

          v16 = a2;
          v17 = a1;
          v18 = a3;
          v19 = a4;
          v20 = &OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__currentActivity;
          goto LABEL_18;
        }

        closure #1 in closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.decodeMessage<A>(decoder:)();
      }

      else if (result <= 6)
      {
        if (result == 5)
        {
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegAveragePace;
LABEL_5:
          closure #3 in closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.decodeMessage<A>(decoder:)(v11, v12, v13, v14, v15);
          goto LABEL_6;
        }

        closure #6 in closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.decodeMessage<A>(decoder:)();
      }

      else
      {
        switch(result)
        {
          case 7:
            closure #7 in closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.decodeMessage<A>(decoder:)();
            break;
          case 8:
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastEffectiveTransitionDateSinceReference;
            goto LABEL_5;
          case 9:
            v16 = a2;
            v17 = a1;
            v18 = a3;
            v19 = a4;
            v20 = &OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__nextMultisportActivity;
LABEL_18:
            closure #2 in closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.decodeMessage<A>(decoder:)(v16, v17, v18, v19, v20);
            break;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
  return swift_endAccess();
}

uint64_t closure #6 in closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  lazy protocol witness table accessor for type Apple_Workout_Core_MultisportTransitionState and conformance Apple_Workout_Core_MultisportTransitionState();
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #7 in closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
  return swift_endAccess();
}

uint64_t closure #3 in closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
  return swift_endAccess();
}

uint64_t closure #2 in closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_Activity(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_Activity and conformance Apple_Workout_Core_Activity, type metadata accessor for Apple_Workout_Core_Activity);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MultiSportMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  result = closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.traverse<A>(visitor:)(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = closure #1 in closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.traverse<A>(visitor:)(a1);
  if (!v4)
  {
    closure #2 in closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__currentActivity);
    v10 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegTime;
    swift_beginAccess();
    if (*(a1 + v10))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v11 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegDistance;
    swift_beginAccess();
    if (*(a1 + v11))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v12 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegAveragePace;
    swift_beginAccess();
    if (*(a1 + v12))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v13 = a1 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__transitionState;
    swift_beginAccess();
    if (*v13)
    {
      v16 = *v13;
      v17 = *(v13 + 8);
      lazy protocol witness table accessor for type Apple_Workout_Core_MultisportTransitionState and conformance Apple_Workout_Core_MultisportTransitionState();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    v14 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__remainingLegCount;
    swift_beginAccess();
    if (*(a1 + v14))
    {
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    v15 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastEffectiveTransitionDateSinceReference;
    swift_beginAccess();
    if (*(a1 + v15))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    return closure #2 in closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__nextMultisportActivity);
  }

  return result;
}

uint64_t closure #1 in closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 16);
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in closure #1 in Apple_Workout_Core_MultiSportMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v18[5] = a4;
  v18[0] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a5;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_Activity?(a1 + v16, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v10, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  }

  outlined init with take of Apple_Workout_Core_Activity(v10, v15);
  lazy protocol witness table accessor for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_Activity and conformance Apple_Workout_Core_Activity, type metadata accessor for Apple_Workout_Core_Activity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_Activity(v15);
}

BOOL closure #1 in static Apple_Workout_Core_MultiSportMetricsPublisher.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v67 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMR);
  v8 = *(*(v68 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v68);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v62 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v65 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v66 = &v62 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v62 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v62 - v23;
  swift_beginAccess();
  v25 = *(a1 + 16);
  v26 = *(a1 + 24);
  swift_beginAccess();
  v27 = *(a2 + 24);
  if (v26)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v25 != *(a2 + 16))
    {
      v27 = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  v64 = v11;
  v28 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__currentActivity;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_Activity?(a1 + v28, v24);
  v29 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__currentActivity;
  swift_beginAccess();
  v30 = *(v68 + 48);
  outlined init with copy of Apple_Workout_Core_Activity?(v24, v13);
  outlined init with copy of Apple_Workout_Core_Activity?(a2 + v29, &v13[v30]);
  v31 = *(v5 + 48);
  if (v31(v13, 1, v4) == 1)
  {

    _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v24, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    if (v31(&v13[v30], 1, v4) == 1)
    {
      v63 = v31;
      _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v13, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
      goto LABEL_14;
    }

LABEL_12:
    _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v13, &_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMR);
    goto LABEL_32;
  }

  outlined init with copy of Apple_Workout_Core_Activity?(v13, v22);
  if (v31(&v13[v30], 1, v4) == 1)
  {

    _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v24, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    outlined destroy of Apple_Workout_Core_Activity(v22);
    goto LABEL_12;
  }

  v63 = v31;
  v32 = v67;
  outlined init with take of Apple_Workout_Core_Activity(&v13[v30], v67);

  v33 = static Apple_Workout_Core_Activity.== infix(_:_:)(v22, v32);
  outlined destroy of Apple_Workout_Core_Activity(v32);
  _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v24, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  outlined destroy of Apple_Workout_Core_Activity(v22);
  _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v13, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  if ((v33 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_14:
  v34 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegTime;
  swift_beginAccess();
  v35 = *(a1 + v34);
  v36 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegTime;
  swift_beginAccess();
  if (v35 != *(a2 + v36))
  {
    goto LABEL_32;
  }

  v37 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegDistance;
  swift_beginAccess();
  v38 = *(a1 + v37);
  v39 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegDistance;
  swift_beginAccess();
  if (v38 != *(a2 + v39))
  {
    goto LABEL_32;
  }

  v40 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegAveragePace;
  swift_beginAccess();
  v41 = *(a1 + v40);
  v42 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegAveragePace;
  swift_beginAccess();
  if (v41 != *(a2 + v42))
  {
    goto LABEL_32;
  }

  v43 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__transitionState;
  swift_beginAccess();
  v44 = *(a1 + v43);
  v45 = (a2 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__transitionState);
  swift_beginAccess();
  v46 = *v45;
  if (*(v45 + 8) != 1)
  {
    v47 = v64;
    v48 = v66;
    if (v44 != v46)
    {
      goto LABEL_32;
    }

    goto LABEL_27;
  }

  v47 = v64;
  v48 = v66;
  if (!v46)
  {
    if (!v44)
    {
      goto LABEL_27;
    }

    goto LABEL_32;
  }

  if (v46 != 1)
  {
    if (v44 == 2)
    {
      goto LABEL_27;
    }

LABEL_32:

    return 0;
  }

  if (v44 != 1)
  {
    goto LABEL_32;
  }

LABEL_27:
  v49 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__remainingLegCount;
  swift_beginAccess();
  LODWORD(v49) = *(a1 + v49);
  v50 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__remainingLegCount;
  swift_beginAccess();
  if (v49 != *(a2 + v50))
  {
    goto LABEL_32;
  }

  v51 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastEffectiveTransitionDateSinceReference;
  swift_beginAccess();
  v52 = *(a1 + v51);
  v53 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastEffectiveTransitionDateSinceReference;
  swift_beginAccess();
  if (v52 != *(a2 + v53))
  {
    goto LABEL_32;
  }

  v54 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__nextMultisportActivity;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_Activity?(a1 + v54, v48);
  v55 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__nextMultisportActivity;
  swift_beginAccess();
  v56 = *(v68 + 48);
  outlined init with copy of Apple_Workout_Core_Activity?(v48, v47);
  outlined init with copy of Apple_Workout_Core_Activity?(a2 + v55, v47 + v56);
  v57 = v63;
  if (v63(v47, 1, v4) == 1)
  {

    _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v48, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    if (v57(v47 + v56, 1, v4) == 1)
    {
      _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v47, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
      return 1;
    }

LABEL_36:
    _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v47, &_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMR);
    return 0;
  }

  v59 = v65;
  outlined init with copy of Apple_Workout_Core_Activity?(v47, v65);
  if (v57(v47 + v56, 1, v4) == 1)
  {

    _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v48, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    outlined destroy of Apple_Workout_Core_Activity(v59);
    goto LABEL_36;
  }

  v60 = v67;
  outlined init with take of Apple_Workout_Core_Activity(v47 + v56, v67);
  v61 = static Apple_Workout_Core_Activity.== infix(_:_:)(v59, v60);

  outlined destroy of Apple_Workout_Core_Activity(v60);
  _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v48, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  outlined destroy of Apple_Workout_Core_Activity(v59);
  _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(v47, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  return (v61 & 1) != 0;
}

Swift::Int Apple_Workout_Core_MultiSportMetricsPublisher.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_MultiSportMetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v4) = static Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.defaultInstance;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_MultiSportMetricsPublisher@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_MultiSportMetricsPublisher(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_MultiSportMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_MultisportTransitionState@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_MultiSportMetricsPublisher(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_MultiSportMetricsPublisher()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_MultiSportMetricsPublisher()
{
  lazy protocol witness table accessor for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_MultiSportMetricsPublisher()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_MultiSportMetricsPublisher.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = closure #1 in static Apple_Workout_Core_MultiSportMetricsPublisher.== infix(_:_:)(v5, v6);

    if (!v8)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t outlined init with copy of Apple_Workout_Core_Activity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_Activity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_MultisportTransitionState and conformance Apple_Workout_Core_MultisportTransitionState()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MultisportTransitionState and conformance Apple_Workout_Core_MultisportTransitionState;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MultisportTransitionState and conformance Apple_Workout_Core_MultisportTransitionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MultisportTransitionState and conformance Apple_Workout_Core_MultisportTransitionState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MultisportTransitionState and conformance Apple_Workout_Core_MultisportTransitionState;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MultisportTransitionState and conformance Apple_Workout_Core_MultisportTransitionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MultisportTransitionState and conformance Apple_Workout_Core_MultisportTransitionState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MultisportTransitionState and conformance Apple_Workout_Core_MultisportTransitionState;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MultisportTransitionState and conformance Apple_Workout_Core_MultisportTransitionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MultisportTransitionState and conformance Apple_Workout_Core_MultisportTransitionState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MultisportTransitionState and conformance Apple_Workout_Core_MultisportTransitionState;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MultisportTransitionState and conformance Apple_Workout_Core_MultisportTransitionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MultisportTransitionState and conformance Apple_Workout_Core_MultisportTransitionState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Apple_Workout_Core_MultisportTransitionState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Apple_Workout_Core_MultisportTransitionState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Apple_Workout_Core_MultisportTransitionState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore06Apple_a1_B26_MultisportTransitionStateOGMd, &_sSay11WorkoutCore06Apple_a1_B26_MultisportTransitionStateOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Apple_Workout_Core_MultisportTransitionState] and conformance [A]);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher(unint64_t *a1, void (*a2)(uint64_t))
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

double keypath_get_8Tm_0@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20));
  v6 = *a2;
  swift_beginAccess();
  result = *(v5 + v6);
  *a3 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Apple_Workout_Core_MultisportTransitionState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Apple_Workout_Core_MultisportTransitionState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for Apple_Workout_Core_MultisportTransitionState(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for Apple_Workout_Core_MultisportTransitionState(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t type metadata completion function for Apple_Workout_Core_MultiSportMetricsPublisher()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass()
{
  type metadata accessor for Apple_Workout_Core_Activity?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Apple_Workout_Core_Activity?()
{
  if (!lazy cache variable for type metadata for Apple_Workout_Core_Activity?)
  {
    type metadata accessor for Apple_Workout_Core_Activity(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Apple_Workout_Core_Activity?);
    }
  }
}

uint64_t _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *WorkoutConfiguration.sanitized()()
{
  v0 = specialized WorkoutConfiguration.sanitized()();

  return v0;
}

char *specialized WorkoutConfiguration.sanitized()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20]();
  v37 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v6 = [*&v0[v5] metadata];
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = *(v7 + 16);

  v9 = *&v1[v5];
  v10 = FIUIWorkoutActivityType.activityTypeForRegistry()();

  v11 = *&v1[v5];
  *&v1[v5] = v10;
  v12 = v10;

  v13 = [v12 metadata];
  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = *(v14 + 16);

  v38 = v8;
  if (v8 != v15)
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static WOLog.app);
    v17 = v1;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v41 = v36;
      *v20 = 136315906;
      v35 = v19;
      v21 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
      swift_beginAccess();
      v23 = v39;
      v22 = v40;
      v24 = v37;
      (*(v39 + 16))(v37, &v17[v21], v40);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v23 + 8))(v24, v22);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v41);

      *(v20 + 4) = v28;
      *(v20 + 12) = 2048;
      *(v20 + 14) = v38;
      *(v20 + 22) = 2048;
      *(v20 + 24) = v15;
      *(v20 + 32) = 2080;
      v29 = WorkoutConfiguration.logDisplayName.getter();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v41);

      *(v20 + 34) = v31;
      _os_log_impl(&dword_20AEA4000, v18, v35, "[ConfigurationStore] sanitized activityType in workout_configuration %s, metadata count (before: %ld, after: %ld) (%s)", v20, 0x2Au);
      v32 = v36;
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v32, -1, -1);
      MEMORY[0x20F2E9420](v20, -1, -1);
    }
  }

  return v1;
}

uint64_t getEnumTagSinglePayload for RaceMetadataKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RaceMetadataKeys(_WORD *result, int a2, int a3)
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

NSString __swiftcall NSString.firstLetterCapitalized()()
{
  v1 = [v0 substringToIndex_];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.uppercased()();

  v2 = [v0 substringFromIndex_];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = String.init<A>(_:)();
  v7 = v3;
  String.append<A>(contentsOf:)();

  v4 = MEMORY[0x20F2E6C00](v6, v7);

  return v4;
}

id @objc NSString.firstLetterCapitalized()(void *a1)
{
  v1 = a1;
  v2 = NSString.firstLetterCapitalized()();

  return v2;
}

id WorkoutCoreInjector.inject()()
{
  return static WorkoutCoreInjector.shared.getter(&one-time initialization token for nanoSyncControl, &static WorkoutCoreInjector.nanoSyncControl);
}

{
  return static WorkoutCoreInjector.shared.getter(&one-time initialization token for unitManager, &static WorkoutCoreInjector.unitManager);
}

{
  if (one-time initialization token for unitManager != -1)
  {
    swift_once();
  }

  v0 = [static WorkoutCoreInjector.unitManager unitManager];

  return v0;
}

{
  return static WorkoutCoreInjector.shared.getter(&one-time initialization token for formattingManager, &static WorkoutCoreInjector.formattingManager);
}

{
  return static WorkoutCoreInjector.shared.getter(&one-time initialization token for backgroundAssertionManager, &static WorkoutCoreInjector.backgroundAssertionManager);
}

void one-time initialization function for formattingManager()
{
  if (one-time initialization token for unitManager != -1)
  {
    swift_once();
  }

  v0 = static WorkoutCoreInjector.unitManager;
  v1 = objc_allocWithZone(MEMORY[0x277D0A7E8]);
  v2 = v0;
  v3 = [v1 initWithUnitManager_];

  if (v3)
  {
    static WorkoutCoreInjector.formattingManager = v3;
  }

  else
  {
    __break(1u);
  }
}

char *WorkoutCoreInjector.inject()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  v0 = static WorkoutCoreInjector.healthStore;
  v1 = objc_allocWithZone(type metadata accessor for QueryClient());
  return QueryClient.init(_:)(v0);
}

id @objc static WorkoutCoreInjector.shared.getter(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

id one-time initialization function for nanoSyncControl(uint64_t a1, Class *a2, void *a3)
{
  if (one-time initialization token for shared != -1)
  {
    v5 = a2;
    swift_once();
    a2 = v5;
  }

  if (one-time initialization token for healthStore != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  result = [objc_allocWithZone(*a2) initWithHealthStore_];
  *a3 = result;
  return result;
}

id WorkoutCoreInjector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutCoreInjector();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static WorkoutConfiguration.makeOpenGoal(activityType:)(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
  v3 = specialized static WorkoutConfiguration.make(activityType:goal:)(a1, v2);

  return v3;
}

_OWORD *specialized static WorkoutConfigurationFactory.make(for:activityMoveMode:)(void *a1, void *a2)
{
  v248 = a2;
  v232 = a1;
  v245 = type metadata accessor for Date();
  v226 = *(v245 - 8);
  v2 = v226[8];
  v3 = MEMORY[0x28223BE20](v245);
  v220 = &v209 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v225 = &v209 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v221 = &v209 - v8;
  MEMORY[0x28223BE20](v7);
  v222 = &v209 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v212 = *(v10 - 8);
  v213 = v10;
  v11 = *(v212 + 64);
  MEMORY[0x28223BE20](v10);
  v211 = &v209 - v12;
  v13 = type metadata accessor for UUID();
  v246 = *(v13 - 1);
  v14 = v246;
  v15 = *(v246 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v214 = &v209 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v215 = &v209 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v216 = &v209 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v217 = &v209 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v219 = &v209 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v218 = &v209 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v209 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v209 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v209 - v34;
  v247 = &v209 - v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  i = swift_allocObject();
  i[1] = xmmword_20B42FA20;
  v36 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
  UUID.init()();
  v234 = specialized Occurrence.__allocating_init(count:)(0);
  v37 = *(v14 + 16);
  v244 = v33;
  v37(v33, v35, v13);
  v227 = type metadata accessor for GoalWorkoutConfiguration();
  v38 = objc_allocWithZone(v227);
  swift_beginAccess();
  v259 = v36;
  v233 = _sSo21NLSessionActivityGoalCMaTm_3(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  v231 = v36;
  Published.init(initialValue:)();
  swift_endAccess();
  v37(v30, v33, v13);
  v241 = v37;
  *&v38[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v40 = v226 + 7;
  v39 = v226[7];
  v240 = v39;
  v41 = v245;
  v39(&v38[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v245);
  v39(&v38[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v41);
  v42 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v239 = type metadata accessor for WorkoutPlan.Route();
  v43 = *(v239 - 8);
  v44 = *(v43 + 56);
  v237 = v43 + 56;
  v238 = v44;
  v44(&v38[v42], 1, 1, v239);
  v45 = v246;
  v235 = *(v246 + 56);
  v236 = v246 + 56;
  v235(&v38[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v13);
  v46 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v38[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v243 = v30;
  v37(&v38[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v30, v13);
  v47 = v232;
  *&v38[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v232;
  v38[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v38[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v234;
  swift_beginAccess();
  *&v38[v46] = 0;
  v38[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v234 = type metadata accessor for WorkoutConfiguration();
  v260.receiver = v38;
  v260.super_class = v234;
  v232 = v47;
  v48 = objc_msgSendSuper2(&v260, sel_init);

  v49 = *(v45 + 8);
  v246 = v45 + 8;
  v49(v30, v13);
  v50 = v244;
  v49(v244, v13);
  v51 = v247;
  v49(v247, v13);
  *(i + 4) = v48;
  v224 = objc_opt_self();
  v52 = [v224 minuteUnit];
  v223 = objc_opt_self();
  v53 = [v223 quantityWithUnit:v52 doubleValue:30.0];

  v54 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v53];
  UUID.init()();
  v229 = specialized Occurrence.__allocating_init(count:)(0);
  v55 = v241;
  v241(v50, v51, v13);
  v56 = objc_allocWithZone(v227);
  swift_beginAccess();
  v257 = v54;
  v231 = v54;
  Published.init(initialValue:)();
  swift_endAccess();
  v57 = v243;
  v55(v243, v50, v13);
  *&v56[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v58 = v245;
  v59 = v240;
  v240(&v56[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v245);
  v228 = v40;
  v59(&v56[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v58);
  v60 = i;
  v238(&v56[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v239);
  v235(&v56[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v13);
  v61 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v56[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v230 = v14 + 16;
  v55(&v56[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v57, v13);
  v62 = v232;
  *&v56[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v232;
  v56[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v56[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v229;
  swift_beginAccess();
  *&v56[v61] = 0;
  v56[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v258.receiver = v56;
  v258.super_class = v234;
  v63 = v62;
  v64 = objc_msgSendSuper2(&v258, sel_init);

  v49(v57, v13);
  v49(v244, v13);
  v231 = v13;
  v229 = v49;
  v49(v247, v13);
  v60[5] = v64;
  v261 = v60;
  v232 = v63;
  if (v248 == 1)
  {
    v65 = [v224 kilocalorieUnit];
    v66 = [v223 quantityWithUnit:v65 doubleValue:200.0];

    v67 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:3 value:v66];
    v68 = v247;
    UUID.init()();
    v210 = specialized Occurrence.__allocating_init(count:)(0);
    v69 = v244;
    v70 = v231;
    v71 = v241;
    v241(v244, v68, v231);
    v72 = objc_allocWithZone(v227);
    swift_beginAccess();
    v255 = v67;
    i = v67;
    Published.init(initialValue:)();
    swift_endAccess();
    v73 = v243;
    v71(v243, v69, v70);
    *&v72[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
    v74 = v245;
    v75 = v240;
    v240(&v72[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v245);
    v75(&v72[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v74);
    v63 = v232;
    v238(&v72[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v239);
    v235(&v72[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v70);
    v76 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
    *&v72[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
    v71(&v72[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v73, v70);
    *&v72[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v63;
    v72[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
    *&v72[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v210;
    swift_beginAccess();
    *&v72[v76] = 0;
    v72[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
    v249.receiver = v72;
    v249.super_class = v234;
    v77 = v63;
    v78 = objc_msgSendSuper2(&v249, sel_init);

    v79 = v229;
    v229(v73, v70);
    v79(v69, v70);
    v79(v247, v70);
    v80 = v78;
    MEMORY[0x20F2E6F30]();
    if (*((v261 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v261 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v204 = *((v261 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v60 = v261;
  }

  result = [objc_opt_self() fiui:v63 supportedGoalTypesForActivityType:v248 activityMoveMode:?];
  if (result)
  {
    v82 = result;
    _sSo21NLSessionActivityGoalCMaTm_3(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    v83 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v83 >> 62)
    {
      goto LABEL_22;
    }

    v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v60; v84; i = v60)
    {
      v85 = 0;
      v248 = (v83 & 0xC000000000000001);
      v86 = v83 & 0xFFFFFFFFFFFFFF8;
      v87 = MEMORY[0x277D84F90];
      v88 = v83;
      while (1)
      {
        if (v248)
        {
          v89 = MEMORY[0x20F2E7A20](v85, v83);
        }

        else
        {
          if (v85 >= *(v86 + 16))
          {
            goto LABEL_21;
          }

          v89 = *(v83 + 8 * v85 + 32);
        }

        v90 = v89;
        v91 = (v85 + 1);
        if (__OFADD__(v85, 1))
        {
          break;
        }

        v60 = v84;
        v92 = [v89 unsignedIntegerValue];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v87 + 2) + 1, 1, v87);
        }

        v94 = *(v87 + 2);
        v93 = *(v87 + 3);
        if (v94 >= v93 >> 1)
        {
          v87 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v93 > 1), v94 + 1, 1, v87);
        }

        *(v87 + 2) = v94 + 1;
        *&v87[8 * v94 + 32] = v92;
        ++v85;
        v84 = v60;
        v83 = v88;
        if (v91 == v60)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      v84 = __CocoaSet.count.getter();
    }

    v87 = MEMORY[0x277D84F90];
LABEL_24:

    v95 = *(v87 + 2);
    v96 = 32;
    v97 = i;
    do
    {
      if (!v95)
      {

        goto LABEL_31;
      }

      v98 = *&v87[v96];
      v96 += 8;
      --v95;
    }

    while (v98 != 1);

    v99 = [v224 mileUnit];
    v100 = [v223 quantityWithUnit:v99 doubleValue:2.0];

    v101 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v100];
    v102 = v247;
    UUID.init()();
    v248 = specialized Occurrence.__allocating_init(count:)(0);
    v103 = v244;
    v104 = v231;
    v105 = v241;
    v241(v244, v102, v231);
    v106 = objc_allocWithZone(v227);
    swift_beginAccess();
    v255 = v101;
    i = v101;
    Published.init(initialValue:)();
    swift_endAccess();
    v107 = v243;
    v105(v243, v103, v104);
    *&v106[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
    v108 = v245;
    v109 = v240;
    v240(&v106[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v245);
    v109(&v106[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v108);
    v238(&v106[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v239);
    v235(&v106[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v104);
    v110 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
    *&v106[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
    v105(&v106[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v107, v104);
    v111 = v232;
    *&v106[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v232;
    v106[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
    *&v106[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v248;
    swift_beginAccess();
    *&v106[v110] = 0;
    v106[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
    v256.receiver = v106;
    v256.super_class = v234;
    v112 = v111;
    v113 = objc_msgSendSuper2(&v256, sel_init);

    v114 = v229;
    v229(v107, v104);
    v114(v103, v104);
    v114(v247, v104);
    v115 = v113;
    MEMORY[0x20F2E6F30]();
    if (*((v261 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v261 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v208 = *((v261 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v97 = v261;
LABEL_31:
    v116 = FIUIWorkoutActivityType.configurationTypes.getter();
    v117 = specialized Set.contains(_:)(3u, v116);

    if (v117)
    {
      v118 = v224;
      v119 = [v224 mileUnit];
      v120 = v223;
      v121 = [v223 quantityWithUnit:v119 doubleValue:2.0];

      v122 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v121];
      v123 = [v118 minuteUnit];
      v124 = [v120 quantityWithUnit:v123 doubleValue:30.0];

      v125 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v124];
      v126 = v247;
      UUID.init()();
      v248 = specialized Occurrence.__allocating_init(count:)(0);
      v127 = v244;
      v128 = v231;
      v129 = v241;
      v241(v244, v126, v231);
      v130 = objc_allocWithZone(type metadata accessor for PacerWorkoutConfiguration());
      swift_beginAccess();
      v252 = v122;
      i = v122;
      Published.init(initialValue:)();
      swift_endAccess();
      swift_beginAccess();
      v252 = v125;
      v227 = v125;
      Published.init(initialValue:)();
      swift_endAccess();
      v131 = v243;
      v129(v243, v127, v128);
      *&v130[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
      v132 = v245;
      v133 = v240;
      v240(&v130[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v245);
      v133(&v130[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v132);
      v134 = v232;
      v238(&v130[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v239);
      v235(&v130[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v128);
      v135 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
      *&v130[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
      v129(&v130[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v131, v128);
      *&v130[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v134;
      v130[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 3;
      *&v130[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v248;
      swift_beginAccess();
      *&v130[v135] = 0;
      v130[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
      v250.receiver = v130;
      v250.super_class = v234;
      v136 = v134;
      v137 = objc_msgSendSuper2(&v250, sel_init);

      v138 = v229;
      v229(v131, v128);
      v138(v127, v128);
      v138(v247, v128);
      v139 = v137;
      MEMORY[0x20F2E6F30]();
      if (*((v261 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v261 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v205 = *((v261 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v97 = v261;
    }

    v140 = FIUIWorkoutActivityType.configurationTypes.getter();
    v141 = specialized Set.contains(_:)(1u, v140);

    if (v141)
    {
      v142 = v247;
      UUID.init()();
      v143 = objc_allocWithZone(type metadata accessor for IntervalWorkout());
      v144 = specialized IntervalWorkout.init(_:uuid:warmupStep:cooldownStep:)(0x6D6B3120782034, 0xE700000000000000, v142, 0, 0);
      UUID.init()();
      v248 = specialized Occurrence.__allocating_init(count:)(0);
      v145 = v244;
      v146 = v231;
      v147 = v241;
      v241(v244, v142, v231);
      v148 = objc_allocWithZone(type metadata accessor for IntervalWorkoutConfiguration());
      v149 = OBJC_IVAR____TtC11WorkoutCore28IntervalWorkoutConfiguration__forceUpdatePublisher;
      LOBYTE(v255) = 0;
      v150 = v211;
      Published.init(initialValue:)();
      (*(v212 + 32))(&v148[v149], v150, v213);
      swift_beginAccess();
      v252 = v144;
      i = v144;
      Published.init(initialValue:)();
      swift_endAccess();
      v151 = v243;
      v147(v243, v145, v146);
      *&v148[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
      v152 = v245;
      v153 = v240;
      v240(&v148[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v245);
      v153(&v148[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v152);
      v154 = v232;
      v238(&v148[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v239);
      v235(&v148[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v146);
      v155 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
      *&v148[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
      v147(&v148[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v151, v146);
      *&v148[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v154;
      v148[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 1;
      *&v148[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v248;
      swift_beginAccess();
      *&v148[v155] = 0;
      v148[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
      v251.receiver = v148;
      v251.super_class = v234;
      v156 = v154;
      v157 = objc_msgSendSuper2(&v251, sel_init);

      v158 = v229;
      v229(v151, v146);
      v158(v145, v146);
      v158(v247, v146);
      v159 = v157;
      MEMORY[0x20F2E6F30]();
      if (*((v261 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v261 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v206 = *((v261 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v97 = v261;
    }

    v160 = FIUIWorkoutActivityType.configurationTypes.getter();
    v161 = specialized Set.contains(_:)(2u, v160);

    if (v161)
    {
      v162 = MEMORY[0x20F2E6C00](7364973, 0xE300000000000000);
      v163 = [objc_opt_self() systemImageNamed_];

      if (one-time initialization token for outdoorRun != -1)
      {
        swift_once();
      }

      v164 = static FIUIWorkoutActivityType.outdoorRun;
      UUID.init()();
      v165 = UUID.init()();
      v166 = specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v165, 1600.0, 1610.0);
      v168 = v167;
      specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v166, 480.0, 500.0);
      v170 = v169;
      static Date.now.getter();
      v171 = UUID.init()();
      v172 = specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v171, 1600.0, 1610.0);
      v174 = v173;
      specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v172, 400.0, 420.0);
      v176 = v175;
      v177 = v225;
      static Date.now.getter();
      Date.addingTimeInterval(_:)();
      v178 = v226 + 1;
      v179 = v226[1];
      v179(v177, v245);
      v248 = v163;
      i = v164;
      v232 = v178;
      v233 = v179;
      if (v163 && (v180 = UIImagePNGRepresentation(v163)) != 0)
      {
        v181 = v180;
        v182 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v223 = v183;
        v224 = v182;
      }

      else
      {
        v223 = 0xC000000000000000;
        v224 = 0;
      }

      v184 = v247;
      UUID.init()();
      v227 = specialized Occurrence.__allocating_init(count:)(0);
      v185 = v244;
      v186 = v231;
      v187 = v241;
      v241(v244, v218, v231);
      v187(v243, v219, v186);
      v188 = v226[2];
      v189 = v245;
      v188(v225, v222, v245);
      v187(v216, v217, v186);
      v188(v220, v221, v189);
      v187(v215, v184, v186);
      v190 = objc_allocWithZone(type metadata accessor for RaceWorkoutConfiguration());
      v191 = &v190[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle];
      *v191 = 0x1000000000000013;
      v191[1] = 0x800000020B46BF60;
      v187(&v190[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID], v185, v186);
      swift_beginAccess();
      v254 = 1;
      Published.init(initialValue:)();
      swift_endAccess();
      v187(&v190[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID], v243, v186);
      *&v190[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance] = v168;
      *&v190[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration] = v170;
      v188(&v190[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDate], v225, v189);
      v187(&v190[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID], v216, v186);
      *&v190[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance] = v174;
      *&v190[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration] = v176;
      v188(&v190[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDate], v220, v189);
      v192 = &v190[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData];
      v193 = v223;
      *v192 = v224;
      v192[1] = v193;
      *&v190[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterSize] = 4;
      *&v190[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude] = 0x412E848000000000;
      *&v190[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude] = 0x412E848000000000;
      *&v190[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue] = 0x3FE999999999999ALL;
      v195 = v214;
      v194 = v215;
      v187(v214, v215, v186);
      *&v190[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
      v196 = v240;
      v240(&v190[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v189);
      v196(&v190[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v189);
      v238(&v190[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v239);
      v235(&v190[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v186);
      v197 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
      *&v190[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
      v187(&v190[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v195, v186);
      v198 = i;
      *&v190[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = i;
      v190[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 2;
      *&v190[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v227;
      swift_beginAccess();
      *&v190[v197] = 0;
      v190[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
      v253.receiver = v190;
      v253.super_class = v234;
      v199 = v198;
      v200 = objc_msgSendSuper2(&v253, sel_init);
      v201 = v229;
      v229(v195, v186);
      v201(v194, v186);
      v202 = v233;
      v233(v220, v189);
      v201(v216, v186);
      v202(v225, v189);
      v201(v243, v186);
      v201(v244, v186);
      v201(v247, v186);
      v202(v221, v189);
      v201(v217, v186);
      v202(v222, v189);
      v201(v219, v186);
      v201(v218, v186);
      v203 = v200;
      MEMORY[0x20F2E6F30]();
      if (*((v261 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v261 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v207 = *((v261 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      return v261;
    }

    return v97;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _sSo21NLSessionActivityGoalCMaTm_3(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t Date.logString.getter()
{
  if (one-time initialization token for logDateFormatter != -1)
  {
    swift_once();
  }

  v0 = static WOLog.logDateFormatter;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v2 = [v0 stringFromDate_];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

uint64_t Date.offset(until:pauseTimes:lastUnbalancedPauseStart:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a4;
  v55 = a3;
  v53 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v56 = &v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v49 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v51 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v49 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v49 - v20;
  v22 = type metadata accessor for DateInterval();
  v57 = *(v22 - 8);
  v23 = *(v57 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v49 - v27;
  v29 = a1;
  v30 = v59;
  v31 = static Date.> infix(_:_:)();
  v54 = v13;
  v32 = *(v13 + 16);
  if (v31)
  {
    v60 = (v13 + 16);
    v52 = v32;
    v32(v21, v30, v12);
    v49 = v29;
    v50 = v12;
    v52(v19, v29, v12);
    v60 = v28;
    DateInterval.init(start:end:)();
    v33 = *(v53 + 16);
    if (v33)
    {
      v34 = v53 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
      v35 = *(v57 + 72);
      v36 = (v57 + 48);
      v37 = (v57 + 32);
      v38 = (v57 + 8);
      v39 = 0.0;
      do
      {
        DateInterval.intersection(with:)();
        if ((*v36)(v11, 1, v22) == 1)
        {
          outlined destroy of DateInterval?(v11, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
        }

        else
        {
          (*v37)(v26, v11, v22);
          DateInterval.duration.getter();
          v41 = v40;
          (*v38)(v26, v22);
          v39 = v39 + v41;
        }

        v34 += v35;
        --v33;
      }

      while (v33);
    }

    v44 = v56;
    outlined init with copy of Date?(v55, v56);
    v45 = v54;
    v46 = v50;
    if ((*(v54 + 48))(v44, 1, v50) == 1)
    {
      outlined destroy of DateInterval?(v44, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }

    else
    {
      v47 = v51;
      (*(v45 + 32))(v51, v44, v46);
      Date.timeIntervalSince(_:)();
      (*(v45 + 8))(v47, v46);
    }

    v48 = v60;
    Date.addingTimeInterval(_:)();
    return (*(v57 + 8))(v48, v22);
  }

  else
  {
    v42 = v58;

    return (v32)(v42, v30, v12);
  }
}

uint64_t outlined destroy of DateInterval?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t static Date.loggingString(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Date?(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of DateInterval?(v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    return 7104878;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    if (one-time initialization token for logDateFormatter != -1)
    {
      swift_once();
    }

    v12 = static WOLog.logDateFormatter;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v14 = [v12 stringFromDate_];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v7 + 8))(v10, v6);
    return v15;
  }
}

uint64_t protocol witness for CustomLogStringConvertible.logString.getter in conformance Date()
{
  if (one-time initialization token for logDateFormatter != -1)
  {
    swift_once();
  }

  v0 = static WOLog.logDateFormatter;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v2 = [v0 stringFromDate_];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

uint64_t WorkoutConfigurationWeight.init(completedCount:daysAgo:addedWeight:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

double one-time initialization function for zero()
{
  *&result = 0x100000000;
  static WorkoutConfigurationWeight.zero = 0x100000000;
  dword_27C72E250 = 0;
  return result;
}

double static WorkoutConfigurationWeight.zero.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for zero != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = dword_27C72E250;
  result = *&static WorkoutConfigurationWeight.zero;
  *a1 = static WorkoutConfigurationWeight.zero;
  *(a1 + 8) = v1;
  return result;
}

uint64_t WorkoutConfigurationWeight.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  _StringGuts.grow(_:)(55);
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0xD000000000000012, 0x800000020B46BF80);
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v4);

  MEMORY[0x20F2E6D80](0x73796164202F2029, 0xEC000000286F6741);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v5);

  MEMORY[0x20F2E6D80](0xD000000000000010, 0x800000020B46BFA0);
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v6);

  MEMORY[0x20F2E6D80](41, 0xE100000000000000);
  return 0;
}

unint64_t lazy protocol witness table accessor for type WorkoutConfigurationWeight and conformance WorkoutConfigurationWeight()
{
  result = lazy protocol witness table cache variable for type WorkoutConfigurationWeight and conformance WorkoutConfigurationWeight;
  if (!lazy protocol witness table cache variable for type WorkoutConfigurationWeight and conformance WorkoutConfigurationWeight)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutConfigurationWeight and conformance WorkoutConfigurationWeight);
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutConfigurationWeight(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WorkoutConfigurationWeight(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 12) = v3;
  return result;
}

uint64_t Apple_Workout_Core_Zone.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Apple_Workout_Core_Zone();
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v3 = a1 + *(v2 + 32);
  return UnknownStorage.init()();
}

uint64_t type metadata accessor for Apple_Workout_Core_Zone()
{
  result = type metadata singleton initialization cache for Apple_Workout_Core_Zone;
  if (!type metadata singleton initialization cache for Apple_Workout_Core_Zone)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_Zone.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_Zone() + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_Zone.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_Zone() + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static Apple_Workout_Core_Zone._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_Zone._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Workout_Core_Zone.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      if (result == 4 || result == 5)
      {
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }
    }

    else if (result == 2 || result == 3)
    {
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_Zone.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v1))
  {
    if (!*(v0 + 8) || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v1))
    {
      if (!*(v0 + 16) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v1))
      {
        if (!*(v0 + 20) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v1))
        {
          v3 = v0 + *(type metadata accessor for Apple_Workout_Core_Zone() + 32);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

Swift::Int Apple_Workout_Core_Zone.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Workout_Core_Zone();
  lazy protocol witness table accessor for type Apple_Workout_Core_Zone and conformance Apple_Workout_Core_Zone(&lazy protocol witness table cache variable for type Apple_Workout_Core_Zone and conformance Apple_Workout_Core_Zone, type metadata accessor for Apple_Workout_Core_Zone);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_Zone@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = a2 + *(a1 + 32);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_Zone@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_Zone(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_Zone(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_Zone;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_Zone(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_Zone and conformance Apple_Workout_Core_Zone(&lazy protocol witness table cache variable for type Apple_Workout_Core_Zone and conformance Apple_Workout_Core_Zone, type metadata accessor for Apple_Workout_Core_Zone);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_Zone@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_Zone._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_Zone(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_Zone and conformance Apple_Workout_Core_Zone(&lazy protocol witness table cache variable for type Apple_Workout_Core_Zone and conformance Apple_Workout_Core_Zone, type metadata accessor for Apple_Workout_Core_Zone);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_Zone()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_Zone()
{
  lazy protocol witness table accessor for type Apple_Workout_Core_Zone and conformance Apple_Workout_Core_Zone(&lazy protocol witness table cache variable for type Apple_Workout_Core_Zone and conformance Apple_Workout_Core_Zone, type metadata accessor for Apple_Workout_Core_Zone);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_Zone()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_Zone.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20))
  {
    return 0;
  }

  v2 = *(type metadata accessor for Apple_Workout_Core_Zone() + 32);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_Zone and conformance Apple_Workout_Core_Zone(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t type metadata completion function for Apple_Workout_Core_Zone()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_Zone and conformance Apple_Workout_Core_Zone(unint64_t *a1, void (*a2)(uint64_t))
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

id static HKQuery._predicateForWorkoutsWithMetadata(indoor:)(char a1)
{
  if (a1)
  {
    v1 = 4;
  }

  else
  {
    v1 = 5;
  }

  v2 = objc_opt_self();
  v3 = *MEMORY[0x277CCC4C0];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v5 = [v2 predicateForObjectsWithMetadataKey:v3 operatorType:v1 value:isa];

  return v5;
}

void closure #1 in static HKQuery.lastWorkoutQuery(activityType:completion:)(uint64_t a1, unint64_t a2, void *a3, void (*a4)(id, void *))
{
  if (!a2 || (v6 = specialized _arrayConditionalCast<A, B>(_:)(a2)) == 0)
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static WOLog.app);

    v14 = a3;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28 = v18;
      *v17 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8HKSampleCGSgMd, &_sSaySo8HKSampleCGSgMR);
      v19 = Optional.description.getter();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v28);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
      v22 = Optional.description.getter();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v28);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_20AEA4000, v15, v16, "Unexpected query result with samples: %s, error: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v18, -1, -1);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }

    a4(0, a3);
    return;
  }

  v7 = v6 & 0xFFFFFFFFFFFFFF8;
  if (!(v6 >> 62))
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_19:

    lazy protocol witness table accessor for type LastWorkoutQueryError and conformance LastWorkoutQueryError();
    v26 = swift_allocError();
    a4(0, v26);
    v12 = v26;

    goto LABEL_12;
  }

  v25 = v6;
  v8 = __CocoaSet.count.getter();
  v6 = v25;
  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_5:
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v9)
  {
    __break(1u);
    goto LABEL_23;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_23:
    v11 = MEMORY[0x20F2E7A20](v10);
LABEL_10:
    v27 = v11;

    a4(v27, a3);
    v12 = v27;

LABEL_12:

    return;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v10 < *(v7 + 16))
  {
    v11 = *(v6 + 8 * v10 + 32);
    goto LABEL_10;
  }

  __break(1u);
}

id @objc static HKQuery.lastWorkoutQuery(activityType:completion:)(int a1, int a2, void *a3, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = a3;
  v8 = specialized static HKQuery.lastWorkoutQuery(activityType:completion:)(v7, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned HKWorkout?, @unowned NSError?) -> (), v6);

  return v8;
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned HKWorkout?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id @objc static HKQuery._swimmingLocationTypePredicate(activityType:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = specialized static HKQuery._swimmingLocationTypePredicate(activityType:)(v3);

  return v4;
}

id @objc static HKQuery._predicateForWorkoutsWithMetadata(indoor:)(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 5;
  }

  v4 = objc_opt_self();
  v5 = *MEMORY[0x277CCC4C0];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v7 = [v4 predicateForObjectsWithMetadataKey:v5 operatorType:v3 value:isa];

  return v7;
}

id @objc static HKQuery._predicateForWorkouts(swimmingLocationType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_opt_self();
  v5 = *MEMORY[0x277CCC510];
  v6 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v7 = v5;
  v8 = [v6 initWithInteger_];
  v9 = [v4 predicateForObjectsWithMetadataKey:v7 operatorType:4 value:v8];

  return v9;
}

id specialized static HKQuery._swimmingLocationTypePredicate(activityType:)(void *a1)
{
  if ([a1 identifier] != 46)
  {
    return 0;
  }

  result = [a1 swimmingLocationType];
  if (result)
  {
    v3 = [a1 swimmingLocationType];
    v4 = objc_opt_self();
    v5 = *MEMORY[0x277CCC510];
    v6 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v7 = v5;
    v8 = [v6 initWithInteger_];
    v9 = [v4 predicateForObjectsWithMetadataKey:v7 operatorType:4 value:v8];

    return v9;
  }

  return result;
}

uint64_t specialized static HKQuery.lastWorkoutQuery(activityType:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20B425990;
  v7 = objc_opt_self();
  *(v6 + 32) = [v7 _predicateForObjectsFromAppleWatches];
  v42 = v6;
  type metadata accessor for HKSampleQuery(0, &lazy cache variable for type metadata for HKSampleQuery, 0x277CCD8D0);
  v8 = [swift_getObjCClassFromMetadata() predicateForWorkoutsWithWorkoutActivityType_];
  if ([a1 isIndoor])
  {
    v9 = 4;
  }

  else
  {
    v9 = 5;
  }

  v10 = *MEMORY[0x277CCC4C0];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v12 = [v7 predicateForObjectsWithMetadataKey:v10 operatorType:v9 value:isa];

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B42FA20;
  *(inited + 32) = v8;
  *(inited + 40) = v12;
  v14 = v8;
  v15 = v12;
  specialized Array.append<A>(contentsOf:)(inited);
  v16 = specialized static HKQuery._swimmingLocationTypePredicate(activityType:)(a1);
  v17 = v16;
  if (v16)
  {
    v18 = v16;
    MEMORY[0x20F2E6F30]();
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v37 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if (!(v42 >> 62))
  {
    result = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_10;
    }

LABEL_18:
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static WOLog.default);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_20AEA4000, v34, v35, "[LastWorkoutQuery] subPredicates is empty. Not executing last workout query.", v36, 2u);
      MEMORY[0x20F2E9420](v36, -1, -1);
    }

    return 0;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_18;
  }

  result = __CocoaSet.count.getter();
LABEL_10:
  v39 = v15;
  v40 = v14;
  v38 = v17;
  if (result != 1)
  {
    v20 = a3;
    v21 = a2;
    type metadata accessor for HKSampleQuery(0, &lazy cache variable for type metadata for NSPredicate, 0x277CCAC30);
    v23 = Array._bridgeToObjectiveC()().super.isa;
    v22 = [objc_opt_self() andPredicateWithSubpredicates_];

    goto LABEL_15;
  }

  if ((v42 & 0xC000000000000001) != 0)
  {
    v20 = a3;
    v21 = a2;
    v22 = MEMORY[0x20F2E7A20](0, v42);
    goto LABEL_15;
  }

  if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = a3;
    v21 = a2;
    v22 = *(v42 + 32);
LABEL_15:
    v24 = [objc_allocWithZone(MEMORY[0x277CCAC98]) initWithKey:*MEMORY[0x277CCCD50] ascending:0];
    type metadata accessor for HKSampleQuery(0, &lazy cache variable for type metadata for HKSeriesType, 0x277CCD920);
    v25 = [swift_getObjCClassFromMetadata() workoutType];
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_20B425990;
    *(v26 + 32) = v24;
    v27 = swift_allocObject();
    *(v27 + 16) = v21;
    *(v27 + 24) = v20;
    v28 = objc_allocWithZone(MEMORY[0x277CCD8D0]);
    type metadata accessor for HKSampleQuery(0, &lazy cache variable for type metadata for NSSortDescriptor, 0x277CCAC98);
    v29 = v24;

    v30 = Array._bridgeToObjectiveC()().super.isa;

    aBlock[4] = partial apply for closure #1 in static HKQuery.lastWorkoutQuery(activityType:completion:);
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKSampleQuery, @guaranteed [HKSample]?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_81;
    v31 = _Block_copy(aBlock);
    v32 = [v28 initWithSampleType:v25 predicate:v22 limit:1 sortDescriptors:v30 resultsHandler:v31];

    _Block_release(v31);

    return v32;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for HKSampleQuery(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

double IntervalWorkoutTracker.instantaneousPower.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
  swift_beginAccess();
  return *(v1 + 144);
}

id IntervalWorkoutTracker.instantaneousPowerStale.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) powerProvider];
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 instantaneousPowerStale];
  swift_unknownObjectRelease();
  return v2;
}

double IntervalWorkoutTracker.averagePower.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
  swift_beginAccess();
  return *(v1 + 136);
}

id IntervalWorkoutTracker.thirtySecondAveragePower.getter()
{
  result = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) powerProvider];
  if (result)
  {
    [result thirtySecondAveragePower];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t IntervalWorkoutTracker.chartDataElements.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) powerProvider];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = [v1 chartDataElements];
  swift_unknownObjectRelease();
  type metadata accessor for WorkoutChartDataElement();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id IntervalWorkoutTracker.setInstantaneousPower(_:sampleDate:)(double a1)
{
  result = [*(v1 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) powerProvider];
  if (result)
  {
    v4 = result;
    isa = Date._bridgeToObjectiveC()().super.isa;
    [v4 setInstantaneousPower:isa sampleDate:a1];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *IntervalWorkoutTracker.zoneTracker.getter()
{
  v1 = OBJC_IVAR___WOIntervalWorkoutTracker_zoneTracker;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void IntervalWorkoutTracker.zoneTracker.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WOIntervalWorkoutTracker_zoneTracker;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void key path setter for IntervalWorkoutTracker.zoneTracker : IntervalWorkoutTracker(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOIntervalWorkoutTracker_zoneTracker;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t IntervalWorkoutTracker.firstActivityStarted.getter()
{
  v1 = OBJC_IVAR___WOIntervalWorkoutTracker_firstActivityStarted;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t IntervalWorkoutTracker.firstActivityStarted.setter(char a1)
{
  v3 = OBJC_IVAR___WOIntervalWorkoutTracker_firstActivityStarted;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t (*IntervalWorkoutTracker.delegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR___WOIntervalWorkoutTracker_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return IntervalWorkoutTracker.delegate.modify;
}

id @objc IntervalWorkoutTracker.delegate.getter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t IntervalWorkoutTracker.delegate.getter(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t @objc IntervalWorkoutTracker.delegate.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t IntervalWorkoutTracker.delegate.setter(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*IntervalWorkoutTracker.alertDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR___WOIntervalWorkoutTracker_alertDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return IntervalWorkoutTracker.alertDelegate.modify;
}