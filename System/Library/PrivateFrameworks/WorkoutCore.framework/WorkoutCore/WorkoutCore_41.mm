uint64_t IntervalsMetricsPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized static IntervalsMetricsPublisher.decodeProto(serializedData:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

uint64_t protocol witness for ProDatable.wireData() in conformance IntervalsMetricsPublisher()
{
  v1 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  IntervalsMetricsPublisher.protobuf.getter(v4);
  lazy protocol witness table accessor for type Apple_Workout_Core_IntervalsMetricsPublisher and conformance Apple_Workout_Core_IntervalsMetricsPublisher();
  v6 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_IntervalsMetricsPublisher(v4, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
  return v6;
}

uint64_t protocol witness for static ProDatable.decodeProto(serializedData:) in conformance IntervalsMetricsPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized static IntervalsMetricsPublisher.decodeProto(serializedData:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t protocol witness for ProDatable.init(serializedData:) in conformance IntervalsMetricsPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = specialized static IntervalsMetricsPublisher.decodeProto(serializedData:)(a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t specialized static IntervalsMetricsPublisher.decodeProto(serializedData:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for BinaryDecodingOptions();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IntervalsMetricsPublisher();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  IntervalsMetricsPublisher.init()();
  v18 = a1;
  v19 = a2;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_IntervalsMetricsPublisher and conformance Apple_Workout_Core_IntervalsMetricsPublisher();
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v2)
  {
  }

  else
  {
    Apple_Workout_Core_IntervalsMetricsPublisher.decodeInto(publisher:)();
    outlined destroy of Apple_Workout_Core_IntervalsMetricsPublisher(v10, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
  }

  return v14;
}

uint64_t type metadata accessor for IntervalsMetricsPublisher()
{
  result = type metadata singleton initialization cache for IntervalsMetricsPublisher;
  if (!type metadata singleton initialization cache for IntervalsMetricsPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for IntervalsMetricsPublisher()
{
  type metadata accessor for Published<Double>(319, &lazy cache variable for type metadata for Published<Double>);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    type metadata accessor for Published<WorkoutStep?>(319, &lazy cache variable for type metadata for Published<WorkoutStep?>, &_s11WorkoutCore0A4StepCSgMd, &_s11WorkoutCore0A4StepCSgMR);
    if (v4 <= 0x3F)
    {
      v13 = *(v3 - 8) + 64;
      type metadata accessor for Published<WorkoutStep?>(319, &lazy cache variable for type metadata for Published<Date?>, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if (v6 <= 0x3F)
      {
        v14 = *(v5 - 8) + 64;
        type metadata accessor for Published<WorkoutStep?>(319, &lazy cache variable for type metadata for Published<Int?>, &_sSiSgMd, &_sSiSgMR);
        if (v8 <= 0x3F)
        {
          v15 = *(v7 - 8) + 64;
          type metadata accessor for Published<Double>(319, &lazy cache variable for type metadata for Published<Int>);
          if (v10 <= 0x3F)
          {
            v16 = *(v9 - 8) + 64;
            type metadata accessor for Published<WorkoutStep?>(319, &lazy cache variable for type metadata for Published<Double?>, &_sSdSgMd, &_sSdSgMR);
            if (v12 <= 0x3F)
            {
              v17 = *(v11 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for Published<Double>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Published();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata accessor for Published<WorkoutStep?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t _s10Foundation4DateVSgWOcTm_7(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_IntervalsMetricsPublisher(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

WorkoutCore::DataLinkCommand_optional __swiftcall DataLinkCommand.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 9;
  if (rawValue < 9)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DataLinkCommand()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DataLinkCommand()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t DataLinkCommand.description.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x656D75736572;
    v7 = 6581861;
    if (v1 != 2)
    {
      v7 = 0x6D6765536B72616DLL;
    }

    if (*v0)
    {
      v6 = 0x6573756170;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x67654C7478656ELL;
    v3 = 1702131053;
    if (v1 != 7)
    {
      v3 = 0x6574756D6E75;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x6F7272694D646E65;
    if (v1 != 4)
    {
      v4 = 0x65746E497478656ELL;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t DataLinkError.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DataLinkMirroredClientExpectation();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DataLinkError();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of DataLinkError(v1, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMR);
  v11 = (*(*(v10 - 8) + 48))(v9, 5, v10);
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      return 0x736F6C436B6E696CLL;
    }

    else if (v11 == 4)
    {
      return 0xD000000000000015;
    }

    else
    {
      return 0xD000000000000013;
    }
  }

  else if (v11)
  {
    if (v11 == 1)
    {
      return 0xD000000000000016;
    }

    else
    {
      return 0xD000000000000016;
    }
  }

  else
  {
    v13 = *v9;
    outlined init with take of DataLinkMirroredClientExpectation(v9 + *(v10 + 48), v5);
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(75);
    MEMORY[0x20F2E6D80](0xD00000000000002FLL, 0x800000020B468E40);
    v14 = _typeName(_:qualified:)();
    MEMORY[0x20F2E6D80](v14);

    MEMORY[0x20F2E6D80](0xD000000000000016, 0x800000020B468E70);
    v15 = DataLinkMirroredClientExpectation.description.getter();
    MEMORY[0x20F2E6D80](v15);

    MEMORY[0x20F2E6D80](10537, 0xE200000000000000);
    v16 = v17[0];
    outlined destroy of DataLinkMirroredClientExpectation(v5);
    return v16;
  }
}

uint64_t type metadata accessor for DataLinkError()
{
  result = type metadata singleton initialization cache for DataLinkError;
  if (!type metadata singleton initialization cache for DataLinkError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of DataLinkError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataLinkError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of DataLinkMirroredClientExpectation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataLinkMirroredClientExpectation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DataLinkMirroredClientExpectation(uint64_t a1)
{
  v2 = type metadata accessor for DataLinkMirroredClientExpectation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type DataLinkCommand and conformance DataLinkCommand()
{
  result = lazy protocol witness table cache variable for type DataLinkCommand and conformance DataLinkCommand;
  if (!lazy protocol witness table cache variable for type DataLinkCommand and conformance DataLinkCommand)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataLinkCommand and conformance DataLinkCommand);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataLinkCommand(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DataLinkCommand(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata completion function for DataLinkError()
{
  type metadata accessor for (hostMessageType: @thick MirroredHostMessageProtocol.Type, clientExpectation: DataLinkMirroredClientExpectation)();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void type metadata accessor for (hostMessageType: @thick MirroredHostMessageProtocol.Type, clientExpectation: DataLinkMirroredClientExpectation)()
{
  if (!lazy cache variable for type metadata for (hostMessageType: @thick MirroredHostMessageProtocol.Type, clientExpectation: DataLinkMirroredClientExpectation))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXmTMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXmTMR);
    type metadata accessor for DataLinkMirroredClientExpectation();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (hostMessageType: @thick MirroredHostMessageProtocol.Type, clientExpectation: DataLinkMirroredClientExpectation));
    }
  }
}

uint64_t getEnumTagSinglePayload for RaceConstants(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RaceConstants(_WORD *result, int a2, int a3)
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

uint64_t HKWorkout.makeDownhillRuns(healthStore:completion:)(void *a1, uint64_t (*a2)(uint64_t, void))
{
  v3 = v2;
  v6 = [v2 downhillRunEvents];
  if (!v6)
  {
    return a2(0, 0);
  }

  v7 = v6;
  _sSo14HKWorkoutEventCMaTm_0(0, &lazy cache variable for type metadata for HKWorkoutEvent, 0x277CCDC68);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    v9 = __CocoaSet.count.getter();
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_13:

    a2(MEMORY[0x277D84F90], 0);
    goto LABEL_14;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_4:
  v15 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v9 < 0)
  {
    __break(1u);
    return result;
  }

  v11 = 0;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x20F2E7A20](v11, v8);
    }

    else
    {
      v12 = *(v8 + 8 * v11 + 32);
    }

    v13 = v12;
    ++v11;
    specialized static DownhillRun.makeDownhillRun(downhillRunEvent:workout:healthStore:)(v12, v3, a1);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v14 = *(v15 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v9 != v11);

  a2(v15, 0);
LABEL_14:
}

Class @objc HKWorkout.downhillRunEvents.getter(void *a1)
{
  v1 = a1;
  v2 = HKWorkout.downhillRunEvents.getter();

  if (v2)
  {
    _sSo14HKWorkoutEventCMaTm_0(0, &lazy cache variable for type metadata for HKWorkoutEvent, 0x277CCDC68);
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

id HKWorkout.downhillRunEvents.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DateInterval();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 workoutActivityType];
  if (v7 != 67 && v7 != 61)
  {
    return 0;
  }

  v8 = [objc_opt_self() standardUserDefaults];
  v9 = MEMORY[0x20F2E6C00](0xD000000000000010, 0x800000020B468F40);
  v10 = [v8 BOOLForKey_];

  if ((v10 & 1) == 0)
  {
    v14 = [v1 workoutEvents];
    if (v14)
    {
      v15 = v14;
      _sSo14HKWorkoutEventCMaTm_0(0, &lazy cache variable for type metadata for HKWorkoutEvent, 0x277CCDC68);
      v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = MEMORY[0x277D84F90];
      if (v16 >> 62)
      {
        goto LABEL_23;
      }

      for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
      {
        v18 = 0;
        while (1)
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x20F2E7A20](v18, v16);
          }

          else
          {
            if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_22;
            }

            v19 = *(v16 + 8 * v18 + 32);
          }

          v20 = v19;
          v21 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (HKWorkoutEvent.isDownhillRun.getter())
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v22 = *(v24 + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          ++v18;
          if (v21 == i)
          {
            v13 = v24;
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        ;
      }

      v13 = MEMORY[0x277D84F90];
LABEL_25:

      return v13;
    }

    return 0;
  }

  result = [v1 fiui_dateInterval];
  if (result)
  {
    v12 = result;
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = specialized static HKWorkout.fakeDownhillRunEvents(dateInterval:)(v6);
    (*(v3 + 8))(v6, v2);
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t specialized static HKWorkout.fakeDownhillRunEvents(dateInterval:)(uint64_t a1)
{
  v120 = type metadata accessor for DateInterval();
  v125 = *(v120 - 8);
  v2 = *(v125 + 64);
  MEMORY[0x28223BE20](v120);
  v118 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for Date();
  v4 = *(v124 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v124);
  v102 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v123 = &v88 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v88 - v11;
  MEMORY[0x28223BE20](v10);
  v119 = &v88 - v13;
  DateInterval.duration.getter();
  v14 = objc_opt_self();
  v15 = [v14 mileUnit];
  v16 = [v14 hourUnit];
  v17 = [v15 unitDividedByUnit_];
  v103 = v17;

  v18 = objc_opt_self();
  v101 = [v18 quantityWithUnit:v17 doubleValue:11.0];
  v108 = [v18 quantityWithUnit:v17 doubleValue:12.0];
  v107 = [v18 quantityWithUnit:v17 doubleValue:24.0];
  v99 = [v18 quantityWithUnit:v17 doubleValue:29.0];
  v19 = [v14 percentUnit];
  v106 = [v18 quantityWithUnit:v19 doubleValue:15.0];

  v20 = [v14 percentUnit];
  v94 = [v18 quantityWithUnit:v20 doubleValue:35.0];

  v21 = [v14 percentUnit];
  v100 = [v18 quantityWithUnit:v21 doubleValue:45.0];

  v22 = [v14 meterUnit];
  v95 = [v18 quantityWithUnit:v22 doubleValue:472.0];

  v23 = [v14 meterUnit];
  v92 = [v18 quantityWithUnit:v23 doubleValue:491.0];

  v24 = [v14 meterUnit];
  v98 = [v18 quantityWithUnit:v24 doubleValue:421.0];

  v25 = [v14 meterUnit];
  v26 = [v18 quantityWithUnit:v25 doubleValue:5.0];

  v117 = v12;
  v104 = a1;
  DateInterval.start.getter();
  v27 = v119;
  Date.addingTimeInterval(_:)();
  v121 = v4[1];
  v122 = v4 + 1;
  v28 = v124;
  v121(v12, v124);
  v115 = v4[2];
  v116 = v4 + 2;
  v115(v12, v27, v28);
  v29 = v118;
  DateInterval.init(start:duration:)();
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  v114 = xmmword_20B423940;
  *(inited + 16) = xmmword_20B423940;
  v113 = *MEMORY[0x277CCC470];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v31;
  v32 = _sSo14HKWorkoutEventCMaTm_0(0, &lazy cache variable for type metadata for HKQuantity, 0x277CCD7E8);
  *(inited + 72) = v32;
  v33 = v108;
  *(inited + 48) = v108;
  v105 = *MEMORY[0x277CCC4E8];
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v34;
  *(inited + 120) = v32;
  v35 = v107;
  *(inited + 96) = v107;
  v111 = *MEMORY[0x277CCC430];
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v36;
  *(inited + 168) = v32;
  v37 = v106;
  *(inited + 144) = v106;
  v110 = *MEMORY[0x277CCC490];
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v38;
  *(inited + 216) = v32;
  v39 = v95;
  *(inited + 192) = v95;
  v109 = *MEMORY[0x277CCC488];
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v40;
  *(inited + 264) = v32;
  *(inited + 240) = v26;
  v97 = v33;
  v91 = v35;
  v96 = v37;
  v95 = v39;
  v41 = v26;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  isa = DateInterval._bridgeToObjectiveC()().super.isa;
  v43 = Dictionary._bridgeToObjectiveC()().super.isa;

  v107 = objc_opt_self();
  v93 = [v107 workoutEventWithType:7 dateInterval:isa metadata:v43];

  v44 = *(v125 + 8);
  v125 += 8;
  v106 = v44;
  v45 = v120;
  v44(v29, v120);
  v46 = v123;
  DateInterval.start.getter();
  v47 = v117;
  Date.addingTimeInterval(_:)();
  v48 = v124;
  v121(v46, v124);
  v115(v46, v47, v48);
  DateInterval.init(start:duration:)();
  v49 = swift_initStackObject();
  *(v49 + 16) = v114;
  *(v49 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v49 + 72) = v32;
  v50 = v91;
  *(v49 + 40) = v51;
  *(v49 + 48) = v50;
  *(v49 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v49 + 88) = v52;
  *(v49 + 120) = v32;
  v53 = v99;
  *(v49 + 96) = v99;
  *(v49 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v49 + 136) = v54;
  *(v49 + 168) = v32;
  v55 = v94;
  *(v49 + 144) = v94;
  *(v49 + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v49 + 184) = v56;
  *(v49 + 216) = v32;
  v57 = v92;
  *(v49 + 192) = v92;
  *(v49 + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v49 + 232) = v58;
  *(v49 + 264) = v32;
  *(v49 + 240) = v41;
  v89 = v50;
  v90 = v41;
  v99 = v53;
  v94 = v55;
  v92 = v57;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v49);
  swift_setDeallocating();
  swift_arrayDestroy();
  v59 = v118;
  v60 = DateInterval._bridgeToObjectiveC()().super.isa;
  v61 = Dictionary._bridgeToObjectiveC()().super.isa;

  v91 = [v107 workoutEventWithType:7 dateInterval:v60 metadata:v61];

  (v106)(v59, v45);
  v62 = v102;
  DateInterval.start.getter();
  v63 = v123;
  Date.addingTimeInterval(_:)();
  v64 = v124;
  v121(v62, v124);
  v115(v62, v63, v64);
  DateInterval.init(start:duration:)();
  v65 = swift_initStackObject();
  *(v65 + 16) = v114;
  *(v65 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v65 + 72) = v32;
  v66 = v101;
  *(v65 + 40) = v67;
  *(v65 + 48) = v66;
  *(v65 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v65 + 88) = v68;
  *(v65 + 120) = v32;
  v69 = v89;
  *(v65 + 96) = v89;
  *(v65 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v65 + 136) = v70;
  *(v65 + 168) = v32;
  v71 = v100;
  *(v65 + 144) = v100;
  *(v65 + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v65 + 184) = v72;
  *(v65 + 216) = v32;
  v73 = v98;
  *(v65 + 192) = v98;
  *(v65 + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v65 + 232) = v74;
  *(v65 + 264) = v32;
  v75 = v90;
  *(v65 + 240) = v90;
  v76 = v69;
  v77 = v75;
  v116 = v66;
  v78 = v71;
  v79 = v73;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v65);
  swift_setDeallocating();
  swift_arrayDestroy();
  v80 = DateInterval._bridgeToObjectiveC()().super.isa;
  v81 = Dictionary._bridgeToObjectiveC()().super.isa;

  v82 = [v107 workoutEventWithType:7 dateInterval:v80 metadata:v81];

  (v106)(v59, v120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_20B42C8E0;
  v84 = v91;
  *(v83 + 32) = v93;
  *(v83 + 40) = v84;
  *(v83 + 48) = v82;

  v85 = v124;
  v86 = v121;
  v121(v123, v124);
  v86(v117, v85);
  v86(v119, v85);
  return v83;
}

uint64_t _sSo14HKWorkoutEventCMaTm_0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void specialized WorkoutVoiceAnalyticsHandling.send()()
{
  v1 = v0;
  v2 = WorkoutVoiceMomentAnalyticsEvent.buildAnalyticsEvent()();
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.workoutVoice);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    aBlock[0] = v7;
    *v6 = 136315394;
    type metadata accessor for WorkoutVoiceMomentAnalyticsEvent();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A25VoiceMomentAnalyticsEventVmMd, &_s11WorkoutCore0A25VoiceMomentAnalyticsEventVmMR);
    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, aBlock);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    _sSo8NSObjectCMaTm_4(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
    v11 = Dictionary.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, aBlock);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_20AEA4000, v4, v5, "[%s] %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  v14 = [objc_opt_self() sharedConnection];
  if (v14 && (v15 = v14, v16 = [v14 isHealthDataSubmissionAllowed], v15, (v16 & 1) != 0))
  {
    v17 = MEMORY[0x20F2E6C00](*v1, v1[1]);
    v18 = swift_allocObject();
    *(v18 + 16) = v2;
    aBlock[4] = closure #1 in WorkoutVoiceAnalyticsHandling.send()partial apply;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
    aBlock[3] = &block_descriptor_254;
    v19 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v19);
  }

  else
  {
  }
}

{
  v1 = v0;
  v2 = WorkoutVoiceMuteAnalyticsEvent.buildAnalyticsEvent()();
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.workoutVoice);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    aBlock[0] = v7;
    *v6 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A23VoiceMuteAnalyticsEventVmMd, &_s11WorkoutCore0A23VoiceMuteAnalyticsEventVmMR);
    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, aBlock);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    _sSo8NSObjectCMaTm_4(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
    v11 = Dictionary.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, aBlock);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_20AEA4000, v4, v5, "[%s] %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  v14 = [objc_opt_self() sharedConnection];
  if (v14 && (v15 = v14, v16 = [v14 isHealthDataSubmissionAllowed], v15, (v16 & 1) != 0))
  {
    v17 = MEMORY[0x20F2E6C00](*v1, v1[1]);
    v18 = swift_allocObject();
    *(v18 + 16) = v2;
    aBlock[4] = partial apply for closure #1 in WorkoutVoiceAnalyticsHandling.send();
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
    aBlock[3] = &block_descriptor_230;
    v19 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v19);
  }

  else
  {
  }
}

void specialized WorkoutBuddyMomentCoordinating.updateWorkoutContext(identifier:location:startDate:sessionStartDate:endDate:elapsedTime:totalDistanceTraveled:currentPace:avgPace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:splitAverageHeartRate:timeBasedSplitDuration:elapsedTimeInHeartRateZones:averagePower:elevationGain:metadata:samplesByType:activitySummaryRepresentable:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v76 = a8;
  v77 = a7;
  v80 = a3;
  v81 = a4;
  v75 = a2;
  v78 = a1;
  v63 = a21;
  v70 = a20;
  v69 = a19;
  v72 = a17;
  v73 = a18;
  v71 = a16;
  v61 = a15;
  v60 = a14;
  v68 = a13;
  v67 = a12;
  v66 = a11;
  v65 = a10;
  v64 = a9;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence19WorkoutMediaDetailsVSgMd, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v74 = &v58 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence16WeatherConditionVSgMd, &_s19FitnessIntelligence16WeatherConditionVSgMR);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v62 = &v58 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v58 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v37 = &v58 - v36;
  v38 = type metadata accessor for WorkoutState();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v58 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v58 = &v58 - v44;
  v82 = v21;
  v45 = v21 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  v46 = *(v39 + 16);
  v59 = v38;
  v46(v43, v45, v38);
  v47 = type metadata accessor for Date();
  v48 = *(*(v47 - 8) + 48);
  v79 = a5;
  v48(a5, 1, v47);
  v49 = type metadata accessor for WorkoutGoal();
  (*(*(v49 - 8) + 56))(v37, 1, 1, v49);
  outlined init with copy of Measurement<NSUnitDuration>?(a6, v33, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v51 = *(v50 - 8);
  if ((*(v51 + 48))(v33, 1, v50) == 1)
  {
    outlined destroy of Measurement<NSUnitDuration>?(v33, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  }

  else
  {
    Measurement.value.getter();
    (*(v51 + 8))(v33, v50);
  }

  v52 = type metadata accessor for WeatherCondition();
  v53 = v62;
  (*(*(v52 - 8) + 56))(v62, 1, 1, v52);
  v54 = type metadata accessor for WorkoutMediaDetails();
  v55 = v74;
  (*(*(v54 - 8) + 56))(v74, 1, 1, v54);
  v56 = v58;
  WorkoutState.updatedWith(identifier:activityType:status:goal:configuredAlerts:start:sessionStart:end:duration:location:weatherConditions:distance:pace:averagePace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:elapsedTimeInHeartRateZones:averagePower:elevationGain:events:metadata:samplesByType:route:mediaDetails:activitySummaryRepresentable:isMachineWorkout:splitAverageHeartRate:timeBasedSplitDuration:)();
  outlined destroy of Measurement<NSUnitDuration>?(v55, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMd, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v53, &_s19FitnessIntelligence16WeatherConditionVSgMd, &_s19FitnessIntelligence16WeatherConditionVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v37, &_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  v57 = v59;
  (*(v39 + 8))(v43, v59);
  swift_beginAccess();
  (*(v39 + 40))(v45, v56, v57);
  swift_endAccess();
  WorkoutVoiceMomentCoordinator.prewarmFutureContextsIfNeeded()();
}

uint64_t WorkoutBuddyMomentCoordinating.updateWorkoutContext(identifier:location:startDate:sessionStartDate:endDate:elapsedTime:totalDistanceTraveled:currentPace:avgPace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:splitAverageHeartRate:timeBasedSplitDuration:elapsedTimeInHeartRateZones:averagePower:elevationGain:metadata:samplesByType:activitySummaryRepresentable:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v77 = a8;
  v78 = a7;
  v81 = a3;
  v82 = a4;
  v76 = a2;
  v79 = a1;
  v64 = a21;
  v70 = a19;
  v71 = a20;
  v73 = a17;
  v74 = a18;
  v72 = a16;
  v63 = a15;
  v62 = a14;
  v68 = a12;
  v69 = a13;
  v66 = a10;
  v67 = a11;
  v65 = a9;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence19WorkoutMediaDetailsVSgMd, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMR);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v75 = &v58 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence16WeatherConditionVSgMd, &_s19FitnessIntelligence16WeatherConditionVSgMR);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v58 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = &v58 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v40 = &v58 - v39;
  v61 = type metadata accessor for WorkoutState();
  v60 = *(v61 - 8);
  v41 = *(v60 + 64);
  v42 = MEMORY[0x28223BE20](v61);
  v44 = &v58 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v59 = &v58 - v45;
  v46 = *(a23 + 40);
  v83 = a22;
  v84 = v23;
  v46(a22, a23);
  v47 = type metadata accessor for Date();
  v48 = *(*(v47 - 8) + 48);
  v80 = a5;
  v48(a5, 1, v47);
  v49 = type metadata accessor for WorkoutGoal();
  (*(*(v49 - 8) + 56))(v40, 1, 1, v49);
  outlined init with copy of Measurement<NSUnitDuration>?(a6, v36, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v51 = *(v50 - 8);
  if ((*(v51 + 48))(v36, 1, v50) == 1)
  {
    outlined destroy of Measurement<NSUnitDuration>?(v36, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  }

  else
  {
    Measurement.value.getter();
    (*(v51 + 8))(v36, v50);
  }

  v52 = type metadata accessor for WeatherCondition();
  (*(*(v52 - 8) + 56))(v32, 1, 1, v52);
  v53 = type metadata accessor for WorkoutMediaDetails();
  v54 = v75;
  (*(*(v53 - 8) + 56))(v75, 1, 1, v53);
  v55 = v59;
  WorkoutState.updatedWith(identifier:activityType:status:goal:configuredAlerts:start:sessionStart:end:duration:location:weatherConditions:distance:pace:averagePace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:elapsedTimeInHeartRateZones:averagePower:elevationGain:events:metadata:samplesByType:route:mediaDetails:activitySummaryRepresentable:isMachineWorkout:splitAverageHeartRate:timeBasedSplitDuration:)();
  outlined destroy of Measurement<NSUnitDuration>?(v54, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMd, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v32, &_s19FitnessIntelligence16WeatherConditionVSgMd, &_s19FitnessIntelligence16WeatherConditionVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v40, &_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  (*(v60 + 8))(v44, v61);
  v56 = v83;
  (*(a23 + 48))(v55, v83, a23);
  return (*(a23 + 320))(v56, a23);
}

{
  return WorkoutBuddyMomentCoordinating.updateWorkoutContext(identifier:location:startDate:sessionStartDate:endDate:elapsedTime:totalDistanceTraveled:currentPace:avgPace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:splitAverageHeartRate:timeBasedSplitDuration:elapsedTimeInHeartRateZones:averagePower:elevationGain:metadata:samplesByType:activitySummaryRepresentable:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

unint64_t TimeBasedProgressMomentSupportError.description.getter()
{
  if (*v0)
  {
    result = 0xD000000000000029;
  }

  else
  {
    result = 0xD00000000000001BLL;
  }

  *v0;
  return result;
}

Swift::Int TimeBasedProgressMomentSupportError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TimeBasedProgressMomentSupportError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TimeBasedProgressMomentSupportError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimeBasedProgressMomentSupportError()
{
  if (*v0)
  {
    result = 0xD000000000000029;
  }

  else
  {
    result = 0xD00000000000001BLL;
  }

  *v0;
  return result;
}

uint64_t WorkoutBuddyMomentCoordinating.progressWorkoutToInSession()(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = WorkoutBuddyMomentCoordinating.progressWorkoutToInSession();

  return WorkoutBuddyMomentCoordinating.progressWorkoutToInSession()(a1, a2);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = *(*(type metadata accessor for WorkoutVoiceMomentCoordinator.State(0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v8 = type metadata accessor for WorkoutVoiceMoment();
  v3[8] = v8;
  v9 = *(v8 - 8);
  v3[9] = v9;
  v10 = *(v9 + 64) + 15;
  v3[10] = swift_task_alloc();
  v11 = *(a2 + 8);
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[11] = v13;
  v3[12] = v12;

  return MEMORY[0x2822009F8](WorkoutBuddyMomentCoordinating.progressWorkoutToInSession(), v13, v12);
}

uint64_t specialized WorkoutBuddyMomentCoordinating.progressWorkoutToInSession()()
{
  v1[11] = v0;
  v2 = *(*(type metadata accessor for WorkoutVoiceMomentCoordinator.State(0) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v5 = type metadata accessor for WorkoutVoiceMoment();
  v1[15] = v5;
  v6 = *(v5 - 8);
  v1[16] = v6;
  v7 = *(v6 + 64) + 15;
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized WorkoutBuddyMomentCoordinating.progressWorkoutToInSession(), v0, 0);
}

{
  v1 = v0[11];
  v2 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_hasWorkoutTransitionedToInSession;
  swift_beginAccess();
  *(v1 + v2) = 1;
  v3 = v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_introMomentGenerationDuration;
  swift_beginAccess();
  if (*(v3 + 8))
  {
LABEL_4:
    v16 = v0[17];
    v17 = v0[13];
    v18 = v0[14];
    v19 = v0[12];

    v20 = v0[1];

    return v20();
  }

  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[14];
  v7 = v0[11];
  v8 = *v3;
  v9 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_introMoment;
  swift_beginAccess();
  outlined init with copy of Measurement<NSUnitDuration>?(v7 + v9, v6, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v11 = v0[11];
    v10 = v0[12];
    outlined destroy of Measurement<NSUnitDuration>?(v0[14], &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
    (*(*(v12 - 8) + 56))(v10, 4, 6, v12);
    v13 = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator);
    v14 = *(v13 + 24);
    v15 = type metadata accessor for WorkoutVoiceMomentCoordinator(0);
    v14(v10, v15, v13);
    goto LABEL_4;
  }

  (*(v0[16] + 32))(v0[17], v0[14], v0[15]);
  v22 = swift_task_alloc();
  v0[18] = v22;
  *v22 = v0;
  v22[1] = specialized WorkoutBuddyMomentCoordinating.progressWorkoutToInSession();
  v23 = v0[17];
  v24 = v0[13];
  v25 = v0[11];

  return WorkoutVoiceMomentCoordinator.announceMoment(momentGenerationDuration:moment:)(v24, v23, v8);
}

{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v8 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = *(v2 + 88);
    v5 = specialized WorkoutBuddyMomentCoordinating.progressWorkoutToInSession();
  }

  else
  {
    v6 = *(v2 + 88);
    outlined destroy of Measurement<NSUnitDuration>?(*(v2 + 104), &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
    v5 = specialized WorkoutBuddyMomentCoordinating.progressWorkoutToInSession();
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];

  v5 = v0[1];

  return v5();
}

{
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.workoutVoice);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[19];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Could not Infer Intro moment with error: %@", v7, 0xCu);
    outlined destroy of Measurement<NSUnitDuration>?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[20] = v11;
  *v11 = v0;
  v11[1] = specialized WorkoutBuddyMomentCoordinating.progressWorkoutToInSession();
  v12 = v0[11];

  return specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(0);
}

{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x2822009F8](specialized WorkoutBuddyMomentCoordinating.progressWorkoutToInSession(), v2, 0);
}

{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 136);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  v7 = *(v0 + 96);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t WorkoutBuddyMomentCoordinating.progressWorkoutToInSession()()
{
  v1 = v0[3];
  v2 = v0[2];
  (*(v1 + 88))(1, v2, v1);
  v3 = (*(v1 + 104))(v2, v1);
  if (v4)
  {
LABEL_4:
    v15 = v0[10];
    v16 = v0[6];
    v17 = v0[7];
    v18 = v0[5];

    v19 = v0[1];

    return v19();
  }

  v5 = v3;
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[7];
  v9 = v0[4];
  (*(v0[3] + 128))(v0[2]);
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    v11 = v0[4];
    v10 = v0[5];
    v13 = v0[2];
    v12 = v0[3];
    outlined destroy of Measurement<NSUnitDuration>?(v0[7], &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
    (*(*(v14 - 8) + 56))(v10, 4, 6, v14);
    (*(v12 + 24))(v10, v13, v12);
    goto LABEL_4;
  }

  v31 = v0[3];
  (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
  v21 = *(v31 + 240);
  v30 = (v21 + *v21);
  v22 = v21[1];
  v23 = swift_task_alloc();
  v0[13] = v23;
  *v23 = v0;
  v23[1] = WorkoutBuddyMomentCoordinating.progressWorkoutToInSession();
  v24 = v0[10];
  v25 = v0[6];
  v26 = v0[3];
  v27 = v0[4];
  v28 = v0[2];
  v29.n128_u64[0] = v5;

  return v30(v25, v24, v28, v26, v29);
}

{
  v2 = *v1;
  v3 = (*v1)[13];
  v8 = *v1;
  (*v1)[14] = v0;

  if (v0)
  {
    v4 = v2[11];
    v5 = v2[12];
    v6 = WorkoutBuddyMomentCoordinating.progressWorkoutToInSession();
  }

  else
  {
    outlined destroy of Measurement<NSUnitDuration>?(v2[6], &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
    v4 = v2[11];
    v5 = v2[12];
    v6 = WorkoutBuddyMomentCoordinating.progressWorkoutToInSession();
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];

  v5 = v0[1];

  return v5();
}

{
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.workoutVoice);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[14];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Could not Infer Intro moment with error: %@", v7, 0xCu);
    outlined destroy of Measurement<NSUnitDuration>?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v19 = v0[3];

  v11 = *(v19 + 248);
  v18 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = WorkoutBuddyMomentCoordinating.progressWorkoutToInSession();
  v14 = v0[3];
  v15 = v0[4];
  v16 = v0[2];

  return (v18)(0, 2, v16, v14);
}

{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v6 = *v0;

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return MEMORY[0x2822009F8](WorkoutBuddyMomentCoordinating.progressWorkoutToInSession(), v4, v3);
}

{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 80);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 40);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t WorkoutVoiceMomentCoordinator.State.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutVoiceMomentType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of WorkoutVoiceMomentCoordinator.State(v1, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
  v12 = (*(*(v11 - 8) + 48))(v10, 6, v11);
  if (v12 <= 2)
  {
    if (v12)
    {
      if (v12 == 1)
      {
        return 0x696C616974696E69;
      }

      else
      {
        return 0xD000000000000013;
      }
    }

    else
    {
      (*(v3 + 32))(v6, v10, v2);
      v15[0] = 0;
      v15[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(18);
      MEMORY[0x20F2E6D80](0xD000000000000010, 0x800000020B469020);
      _print_unlocked<A, B>(_:_:)();
      v14 = v15[0];
      (*(v3 + 8))(v6, v2);
      return v14;
    }
  }

  else if (v12 > 4)
  {
    if (v12 == 5)
    {
      return 0x69746172656E6567;
    }

    else
    {
      return 1701736292;
    }
  }

  else if (v12 == 3)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000024;
  }
}

uint64_t key path getter for WorkoutVoiceMomentCoordinator.workoutState : WorkoutVoiceMomentCoordinator@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  v5 = type metadata accessor for WorkoutState();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t key path setter for WorkoutVoiceMomentCoordinator.workoutState : WorkoutVoiceMomentCoordinator(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for WorkoutState();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t WorkoutVoiceMomentCoordinator.workoutState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  v4 = type metadata accessor for WorkoutState();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t WorkoutVoiceMomentCoordinator.workoutState.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  v4 = type metadata accessor for WorkoutState();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t key path getter for WorkoutVoiceMomentCoordinator.state : WorkoutVoiceMomentCoordinator(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path setter for WorkoutVoiceMomentCoordinator.state : WorkoutVoiceMomentCoordinator(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  outlined init with copy of WorkoutVoiceMomentCoordinator.State(a1, &v13 - v9);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of WorkoutVoiceMomentCoordinator.State(v10, v8);

  static Published.subscript.setter();
  WorkoutVoiceMomentCoordinator.state.didset();
  return outlined destroy of WorkoutVoiceMomentCoordinator.State(v10, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
}

uint64_t WorkoutVoiceMomentCoordinator.state.didset()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - v7;
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static WOLog.workoutVoice);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v37 = v13;
    *v12 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v14 = WorkoutVoiceMomentCoordinator.State.description.getter();
    v16 = v15;
    outlined destroy of WorkoutVoiceMomentCoordinator.State(v8, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v37);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_20AEA4000, v10, v11, "Updated Moment Coordinator state to %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_19(v13);
    MEMORY[0x20F2E9420](v13, -1, -1);
    MEMORY[0x20F2E9420](v12, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
  v19 = *(*(v18 - 8) + 56);
  v19(v6, 1, 6, v18);
  v20 = specialized static WorkoutVoiceMomentCoordinator.State.== infix(_:_:)(v8, v6);
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v6, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  result = outlined destroy of WorkoutVoiceMomentCoordinator.State(v8, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  if ((v20 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v19(v6, 6, 6, v18);
    v22 = specialized static WorkoutVoiceMomentCoordinator.State.== infix(_:_:)(v8, v6);
    outlined destroy of WorkoutVoiceMomentCoordinator.State(v6, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
    result = outlined destroy of WorkoutVoiceMomentCoordinator.State(v8, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
    if ((v22 & 1) == 0)
    {
      if (*(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_isAnnouncementHandlerSet))
      {
        goto LABEL_19;
      }

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_20AEA4000, v30, v31, "Setting announcement handler for live workouts", v32, 2u);
        MEMORY[0x20F2E9420](v32, -1, -1);
      }

      v33 = v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_delegate;
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
LABEL_19:
        v29 = 1;
        goto LABEL_20;
      }

      v34 = *(v33 + 8);
      ObjectType = swift_getObjectType();
      (*(v34 + 16))(v1, &protocol witness table for WorkoutVoiceMomentCoordinator, ObjectType, v34);
      v29 = 1;
      goto LABEL_18;
    }
  }

  if (*(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_isAnnouncementHandlerSet) == 1)
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_20AEA4000, v23, v24, "Unsetting announcement handler for live voice workouts", v25, 2u);
      MEMORY[0x20F2E9420](v25, -1, -1);
    }

    v26 = v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v27 = *(v26 + 8);
      v28 = swift_getObjectType();
      (*(v27 + 16))(0, 0, v28, v27);
      v29 = 0;
LABEL_18:
      result = swift_unknownObjectRelease();
      goto LABEL_20;
    }
  }

  v29 = 0;
LABEL_20:
  *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_isAnnouncementHandlerSet) = v29;
  return result;
}

uint64_t WorkoutVoiceMomentCoordinator.state.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t WorkoutVoiceMomentCoordinator.state.setter(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of WorkoutVoiceMomentCoordinator.State(a1, v5);

  static Published.subscript.setter();
  WorkoutVoiceMomentCoordinator.state.didset();
  return outlined destroy of WorkoutVoiceMomentCoordinator.State(a1, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
}

void (*WorkoutVoiceMomentCoordinator.state.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for WorkoutVoiceMomentCoordinator.State(0) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    a1[2] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    a1[2] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[3] = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return WorkoutVoiceMomentCoordinator.state.modify;
}

void WorkoutVoiceMomentCoordinator.state.modify(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {
    outlined init with copy of WorkoutVoiceMomentCoordinator.State(a1[3], v2);
    swift_getKeyPath();
    swift_getKeyPath();
    outlined init with copy of WorkoutVoiceMomentCoordinator.State(v2, v4);

    static Published.subscript.setter();
    WorkoutVoiceMomentCoordinator.state.didset();
    outlined destroy of WorkoutVoiceMomentCoordinator.State(v2, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    outlined init with copy of WorkoutVoiceMomentCoordinator.State(v3, v2);

    static Published.subscript.setter();
    WorkoutVoiceMomentCoordinator.state.didset();
  }

  outlined destroy of WorkoutVoiceMomentCoordinator.State(v3, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  free(v3);
  free(v2);

  free(v4);
}

uint64_t key path getter for WorkoutVoiceMomentCoordinator.$state : WorkoutVoiceMomentCoordinator(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C22VoiceMomentCoordinatorC5StateOGMd, &_s7Combine9PublishedVy11WorkoutCore0C22VoiceMomentCoordinatorC5StateOGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for WorkoutVoiceMomentCoordinator.$state : WorkoutVoiceMomentCoordinator(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D22VoiceMomentCoordinatorC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D22VoiceMomentCoordinatorC5StateO_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C22VoiceMomentCoordinatorC5StateOGMd, &_s7Combine9PublishedVy11WorkoutCore0C22VoiceMomentCoordinatorC5StateOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t WorkoutVoiceMomentCoordinator.$state.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C22VoiceMomentCoordinatorC5StateOGMd, &_s7Combine9PublishedVy11WorkoutCore0C22VoiceMomentCoordinatorC5StateOGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t WorkoutVoiceMomentCoordinator.$state.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D22VoiceMomentCoordinatorC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D22VoiceMomentCoordinatorC5StateO_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C22VoiceMomentCoordinatorC5StateOGMd, &_s7Combine9PublishedVy11WorkoutCore0C22VoiceMomentCoordinatorC5StateOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*WorkoutVoiceMomentCoordinator.$state.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D22VoiceMomentCoordinatorC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D22VoiceMomentCoordinatorC5StateO_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator__state;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C22VoiceMomentCoordinatorC5StateOGMd, &_s7Combine9PublishedVy11WorkoutCore0C22VoiceMomentCoordinatorC5StateOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutVoiceMomentCoordinator.$state.modify;
}

void WorkoutVoiceMomentCoordinator.$state.modify(uint64_t a1, char a2)
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

uint64_t WorkoutVoiceMomentCoordinator.introMomentGenerationDuration.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_introMomentGenerationDuration);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t WorkoutVoiceMomentCoordinator.introMomentGenerationDuration.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_introMomentGenerationDuration;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t key path setter for WorkoutVoiceMomentCoordinator.outroInferenceResult : WorkoutVoiceMomentCoordinator(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v19 - v14;
  outlined init with copy of Measurement<NSUnitDuration>?(a1, &v19 - v14, a5, a6);
  v16 = *a2;
  v17 = *a7;
  swift_beginAccess();
  outlined assign with take of WorkoutVoiceMoment?(v15, v16 + v17, a5, a6);
  return swift_endAccess();
}

uint64_t WorkoutVoiceMomentCoordinator.outroInferenceResult.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return outlined init with copy of Measurement<NSUnitDuration>?(v4 + v8, a4, a2, a3);
}

uint64_t WorkoutVoiceMomentCoordinator.introMoment.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_introMoment;
  swift_beginAccess();
  outlined assign with take of WorkoutVoiceMoment?(a1, v1 + v3, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  return swift_endAccess();
}

uint64_t WorkoutVoiceMomentCoordinator.hasWorkoutTransitionedToInSession.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_hasWorkoutTransitionedToInSession;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t WorkoutVoiceMomentCoordinator.hasWorkoutTransitionedToInSession.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_hasWorkoutTransitionedToInSession;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.momentInFlight.didset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR) - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.momentInFlight.didset, a4, 0);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.momentInFlight.didset()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v2 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_displayStateHandler);
  *(v0 + 56) = v3;
  v4 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_momentInFlight;
  swift_beginAccess();
  outlined init with copy of Measurement<NSUnitDuration>?(v2 + v4, v1, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  v5 = type metadata accessor for WorkoutVoiceMoment();
  *(v0 + 72) = (*(*(v5 - 8) + 48))(v1, 1, v5);
  outlined destroy of Measurement<NSUnitDuration>?(v1, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.momentInFlight.didset, v3, 0);
}

{
  *(*(v0 + 56) + 113) = *(v0 + 72) != 1;
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = closure #1 in WorkoutVoiceMomentCoordinator.momentInFlight.didset;
  v2 = *(v0 + 56);

  return WorkoutBuddyDisplayStateHandler.notifyObserversIfNeeded(forceNotifyObservers:)(0);
}

{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.alertAnnouncementInFlight.didset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR) - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.alertAnnouncementInFlight.didset, a4, 0);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.alertAnnouncementInFlight.didset()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v2 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_displayStateHandler);
  *(v0 + 56) = v3;
  v4 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_alertAnnouncementInFlight;
  swift_beginAccess();
  outlined init with copy of Measurement<NSUnitDuration>?(v2 + v4, v1, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR);
  v5 = type metadata accessor for AnnounceUtteranceRequest();
  *(v0 + 72) = (*(*(v5 - 8) + 48))(v1, 1, v5);
  outlined destroy of Measurement<NSUnitDuration>?(v1, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR);

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.alertAnnouncementInFlight.didset, v3, 0);
}

{
  *(*(v0 + 56) + 113) = *(v0 + 72) != 1;
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = closure #1 in WorkoutVoiceMomentCoordinator.alertAnnouncementInFlight.didset;
  v2 = *(v0 + 56);

  return WorkoutBuddyDisplayStateHandler.notifyObserversIfNeeded(forceNotifyObservers:)(0);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for WorkoutVoiceMomentType();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:), 0, 0);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:)()
{
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[7] = __swift_project_value_buffer(v1, static WOLog.workoutVoice);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "Prewarming Intro Moment", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  v8 = v0[2];

  v9 = *(v8 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceSession);
  (*(v6 + 104))(v5, *MEMORY[0x277D0A468], v7);
  v10 = *(MEMORY[0x277D0A348] + 4);
  v15 = (*MEMORY[0x277D0A348] + MEMORY[0x277D0A348]);
  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = closure #1 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:);
  v12 = v0[6];
  v13 = v0[3];

  return v15(v12, v13);
}

{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *v1;
  v6[9] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:), 0, 0);
  }

  else
  {
    v7 = v6[6];

    v8 = v6[1];

    return v8();
  }
}

{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Prewarming Intro Moment failed with error %@", v8, 0xCu);
    outlined destroy of Measurement<NSUnitDuration>?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[6];

  v13 = v0[1];

  return v13();
}

uint64_t closure #2 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](closure #2 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:), 0, 0);
}

uint64_t closure #2 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:)()
{
  v1 = *(v0 + 48);
  v2 = [*(v0 + 40) configuration];
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
  swift_beginAccess();
  v4 = *&v2[v3];

  if (v4 == 10)
  {
    v5 = closure #2 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:);
  }

  else
  {
    v5 = closure #2 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v1, 0);
}

{
  v1 = v0[6];
  v2 = objc_opt_self();
  v0[7] = v2;
  v3 = [v2 standardUserDefaults];
  v4 = MEMORY[0x20F2E6C00](*(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_muteStatusUserDefaultsKey), *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_muteStatusUserDefaultsKey + 8));
  v5 = [v3 BOOLForKey_];

  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = closure #2 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:);
  v7 = v0[6];

  return WorkoutVoiceMomentCoordinator.setWorkoutBuddyMuted(_:)(v5);
}

{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](closure #2 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:), v2, 0);
}

{
  v1 = *(v0 + 48);
  v2 = [*(v0 + 56) standardUserDefaults];
  v3 = MEMORY[0x20F2E6C00](*(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_siriFallbackUserDefaultsKey), *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_siriFallbackUserDefaultsKey + 8));
  v4 = [v2 BOOLForKey_];

  if (v4)
  {
    v5 = swift_task_alloc();
    *(v0 + 72) = v5;
    *v5 = v0;
    v5[1] = closure #2 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:);
    v6 = *(v0 + 48);

    return WorkoutVoiceMomentCoordinator.fallbackToSiriForFutureAnnouncements(shouldRemoveWorkoutBuddyUI:)(0);
  }

  else
  {
    v8 = *(v0 + 8);

    return v8();
  }
}

{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

{
  v1 = *(v0 + 48);
  WorkoutVoiceMomentCoordinator.resetCachedState()();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t WorkoutVoiceMomentCoordinator.deinit()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(0, 0, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v5 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  v6 = type metadata accessor for WorkoutState();
  (*(*(v6 - 8) + 8))(v1 + v5, v6);
  v7 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator__state;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C22VoiceMomentCoordinatorC5StateOGMd, &_s7Combine9PublishedVy11WorkoutCore0C22VoiceMomentCoordinatorC5StateOGMR);
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  outlined destroy of Measurement<NSUnitDuration>?(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_outroInferenceResult, &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_introMoment, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  v9 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_inferenceClient;
  v10 = type metadata accessor for InferenceClient();
  (*(*(v10 - 8) + 8))(v1 + v9, v10);
  v11 = *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_breakthroughMomentChecker);

  v12 = *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_musicMomentHandler);

  sub_20AEDD5E8(v2);
  sub_20AEDD5E8(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_alertDelegate);
  v13 = *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceSession);

  v14 = *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_heartRateDataProvider);
  swift_unknownObjectRelease();
  v15 = *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_supportedMetrics);

  __swift_destroy_boxed_opaque_existential_1Tm_19((v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceAvailabilityProvider));
  v16 = *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_sessionIdentifierKey + 8);

  v17 = *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_muteStatusUserDefaultsKey + 8);

  v18 = *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_siriFallbackUserDefaultsKey + 8);

  outlined destroy of Measurement<NSUnitDuration>?(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_recoveredSessionIdentifier, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v19 = *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_analyticsIdentifier + 8);

  outlined destroy of Measurement<NSUnitDuration>?(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_momentInFlight, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_alertAnnouncementInFlight, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR);

  v20 = *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_headphonesMonitor);

  v21 = *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_displayStateHandler);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t WorkoutVoiceMomentCoordinator.__deallocating_deinit()
{
  WorkoutVoiceMomentCoordinator.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t WorkoutVoiceMomentCoordinator.fallbackToSiriForFutureAnnouncements(shouldRemoveWorkoutBuddyUI:)(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 88) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v2 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.fallbackToSiriForFutureAnnouncements(shouldRemoveWorkoutBuddyUI:), v1, 0);
}

uint64_t WorkoutVoiceMomentCoordinator.fallbackToSiriForFutureAnnouncements(shouldRemoveWorkoutBuddyUI:)()
{
  v1 = *(v0 + 64);
  v2 = v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceAvailabilityProvider;
  swift_beginAccess();
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  (*(v4 + 56))(1, v3, v4);
  swift_endAccess();
  v5 = v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(0, 0, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  v8 = *(v0 + 64);
  v9 = *(v0 + 88);
  v10 = [objc_opt_self() standardUserDefaults];
  v11 = MEMORY[0x20F2E6C00](*(v8 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_siriFallbackUserDefaultsKey), *(v8 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_siriFallbackUserDefaultsKey + 8));
  [v10 setBool:1 forKey:v11];

  v12 = *(v8 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_liveWorkoutConfiguration);
  v13 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureNoLongerAvailable;
  swift_beginAccess();
  *(v12 + v13) = 1;
  if (v9 == 1)
  {
    v14 = *(*(v0 + 64) + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_displayStateHandler);
    *(v0 + 80) = v14;

    return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.fallbackToSiriForFutureAnnouncements(shouldRemoveWorkoutBuddyUI:), v14, 0);
  }

  else
  {
    v15 = *(v0 + 72);

    v16 = *(v0 + 8);

    return v16();
  }
}

{
  v1 = v0[10];
  v2 = *(v1 + 117);
  *(v1 + 117) = 1;
  if ((v2 & 1) == 0)
  {
    v4 = v0[9];
    v3 = v0[10];
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler, type metadata accessor for WorkoutBuddyDisplayStateHandler);
    v7 = swift_allocObject();
    v7[2] = v3;
    v7[3] = v6;
    v7[4] = v3;
    swift_retain_n();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in WorkoutBuddyDisplayStateHandler.isNoLongerAvailableInThisWorkout.didset, v7);
  }

  v8 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t WorkoutVoiceMomentCoordinator.setDelegate(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setDelegate(_:), v2, 0);
}

uint64_t WorkoutVoiceMomentCoordinator.setDelegate(_:)()
{
  v1 = v0[4];
  v2 = v0[2];
  *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_delegate + 8) = v0[3];
  swift_unknownObjectWeakAssign();
  v3 = *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_headphonesMonitor);
  v0[5] = v3;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setDelegate(_:), v3, 0);
}

{
  v1 = *(v0 + 40);
  BluetoothHeadphonesMonitor.setDelegate(_:)(*(v0 + 32), &protocol witness table for WorkoutVoiceMomentCoordinator);

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setDelegate(_:), v1, 0);
}

{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  BluetoothHeadphonesMonitor.beginObserving()();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setDelegate(_:), v1, 0);
}

{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_breakthroughMomentChecker);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setDelegate(_:), v1, 0);
}

{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  *(v1 + 136) = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator);
  swift_unknownObjectWeakAssign();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setDelegate(_:), v2, 0);
}

{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_musicMomentHandler);
  *(v0 + 56) = v1;
  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setDelegate(_:), v1, 0);
}

{
  specialized MusicMomentHandler.setDelegate(_:)(v0[4], v0[7]);
  v1 = v0[1];

  return v1();
}

uint64_t WorkoutVoiceMomentCoordinator.setMetricsPublisher(_:)(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence19WorkoutMediaDetailsVSgMd, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMR) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence16WeatherConditionVSgMd, &_s19FitnessIntelligence16WeatherConditionVSgMR) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = type metadata accessor for WorkoutState();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR) - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v2[35] = swift_task_alloc();
  v18 = type metadata accessor for CacheIndex();
  v2[36] = v18;
  v19 = *(v18 - 8);
  v2[37] = v19;
  v20 = *(v19 + 64) + 15;
  v2[38] = swift_task_alloc();
  v21 = type metadata accessor for HKActivitySummaryRepresentable();
  v2[39] = v21;
  v22 = *(v21 - 8);
  v2[40] = v22;
  v23 = *(v22 + 64) + 15;
  v2[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setMetricsPublisher(_:), v1, 0);
}

uint64_t WorkoutVoiceMomentCoordinator.setMetricsPublisher(_:)()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = *(v2 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_metricsPublisher);
  *(v2 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_metricsPublisher) = v1;
  v4 = v1;

  v5 = *(v2 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_displayStateHandler);
  v0[42] = v5;
  v0[43] = *&v4[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutBuddyStatePublisher];

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setMetricsPublisher(_:), v5, 0);
}

{
  v1 = v0[43];
  *(v0[42] + 128) = &protocol witness table for WorkoutBuddyStatePublisher;
  swift_unknownObjectWeakAssign();
  v2 = swift_task_alloc();
  v0[44] = v2;
  *v2 = v0;
  v2[1] = WorkoutVoiceMomentCoordinator.setMetricsPublisher(_:);
  v3 = v0[42];

  return WorkoutBuddyDisplayStateHandler.notifyObserversIfNeeded(forceNotifyObservers:)(1);
}

{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);
  v3 = *(*v0 + 80);
  v5 = *v0;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setMetricsPublisher(_:), v3, 0);
}

{
  v54 = v0[41];
  v74 = v0[40];
  v1 = v0[38];
  v78 = v0[39];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[35];
  v38 = v0[34];
  v39 = v0[33];
  v41 = v0[32];
  v5 = v0[31];
  v48 = v5;
  v64 = v0[30];
  v85 = v0[29];
  v44 = v0[28];
  v70 = v0[27];
  v46 = v0[26];
  v50 = v0[25];
  v52 = v0[24];
  v56 = v0[23];
  v58 = v0[22];
  v60 = v0[21];
  v62 = v0[20];
  v66 = v0[19];
  v68 = v0[18];
  v80 = v0[15];
  v82 = v0[16];
  v72 = v0[10];
  v6 = *(v0[9] + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_activitySummaryMetricsPublisher);
  v76 = v0[14];
  v84 = v0[13];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = v0[8];
  MEMORY[0x20F2E5840]([v7 _activitySummaryIndex]);
  v8 = v7;
  static HKActivitySummaryRepresentable.from(_:pausedIntervals:rings:moveTotal:moveMinutestotal:exerciseTotal:standTotal:stepsTotal:flightsTotal:distanceTotal:activityMoveMode:isWheelchairUser:)();

  (*(v2 + 8))(v1, v3);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = type metadata accessor for Date();
  v11 = *(*(v10 - 8) + 56);
  v11(v38, 1, 1, v10);
  v11(v39, 1, 1, v10);
  v11(v41, 1, 1, v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v5, 1, 1, v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v42 = *(*(v15 - 8) + 56);
  v42(v44, 1, 1, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
  v17 = *(*(v16 - 8) + 56);
  v17(v46, 1, 1, v16);
  v17(v50, 1, 1, v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  (*(*(v18 - 8) + 56))(v52, 1, 1, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v20 = *(*(v19 - 8) + 56);
  v20(v56, 1, 1, v19);
  v20(v58, 1, 1, v19);
  v20(v60, 1, 1, v19);
  v20(v62, 1, 1, v19);
  v14(v64, 1, 1, v12);
  v21 = v13;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  (*(*(v22 - 8) + 56))(v66, 1, 1, v22);
  v42(v70, 1, 1, v15);
  (*(v74 + 16))(v68, v54, v78);
  (*(v74 + 56))(v68, 0, 1, v78);
  v23 = v72 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  v36 = v23;
  (*(v80 + 16))(v82, v23, v76);
  v24 = type metadata accessor for WorkoutGoal();
  (*(*(v24 - 8) + 56))(v84, 1, 1, v24);
  outlined init with copy of Measurement<NSUnitDuration>?(v48, v85, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  LODWORD(v13) = (*(v13 + 48))(v85, 1, v12);
  v25 = v0[29];
  if (v13 == 1)
  {
    outlined destroy of Measurement<NSUnitDuration>?(v0[29], &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  }

  else
  {
    Measurement.value.getter();
    (*(v21 + 8))(v25, v12);
  }

  v40 = v0[40];
  v43 = v0[39];
  v45 = v0[41];
  v47 = v0[38];
  v83 = v0[35];
  v79 = v0[34];
  v75 = v0[33];
  v71 = v0[32];
  v37 = v0[31];
  v69 = v0[30];
  v49 = v0[29];
  v63 = v0[26];
  v65 = v0[28];
  v51 = v0[24];
  v77 = v0[23];
  v81 = v0[22];
  v26 = v0[20];
  v53 = v0[21];
  v55 = v0[27];
  v57 = v0[19];
  v59 = v0[25];
  v86 = v0[18];
  v61 = v0[17];
  v67 = v0[16];
  v27 = v0[15];
  v34 = v0[14];
  v28 = v0[12];
  v73 = v0[13];
  v29 = v0[11];
  v35 = v0[10];
  v30 = type metadata accessor for WeatherCondition();
  (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
  v31 = type metadata accessor for WorkoutMediaDetails();
  (*(*(v31 - 8) + 56))(v29, 1, 1, v31);
  WorkoutState.updatedWith(identifier:activityType:status:goal:configuredAlerts:start:sessionStart:end:duration:location:weatherConditions:distance:pace:averagePace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:elapsedTimeInHeartRateZones:averagePower:elevationGain:events:metadata:samplesByType:route:mediaDetails:activitySummaryRepresentable:isMachineWorkout:splitAverageHeartRate:timeBasedSplitDuration:)();
  outlined destroy of Measurement<NSUnitDuration>?(v29, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMd, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v28, &_s19FitnessIntelligence16WeatherConditionVSgMd, &_s19FitnessIntelligence16WeatherConditionVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v73, &_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  (*(v27 + 8))(v67, v34);
  swift_beginAccess();
  (*(v27 + 40))(v36, v61, v34);
  swift_endAccess();
  WorkoutVoiceMomentCoordinator.prewarmFutureContextsIfNeeded()();

  outlined destroy of Measurement<NSUnitDuration>?(v86, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v55, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v57, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v69, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v26, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v53, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v81, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v77, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v51, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v59, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v63, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v65, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v37, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v71, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v75, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v79, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v83, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(v40 + 8))(v45, v43);

  v32 = v0[1];

  return v32();
}

Swift::Void __swiftcall WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator);
  v7 = swift_allocObject();
  v7[2] = v0;
  v7[3] = v6;
  v7[4] = v0;
  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady(), v7);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v6 = type metadata accessor for WorkoutState();
  v4[9] = v6;
  v7 = *(v6 - 8);
  v4[10] = v7;
  v8 = *(v7 + 64) + 15;
  v4[11] = swift_task_alloc();
  v9 = *(*(type metadata accessor for WorkoutVoiceMomentCoordinator.State(0) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady(), a4, 0);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady()()
{
  v1 = [*(v0[8] + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_sessionActivity) configuration];
  v2 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
  swift_beginAccess();
  v3 = *&v1[v2];

  if (v3 == 10 && (v4 = v0[14], outlined init with copy of Measurement<NSUnitDuration>?(v0[8] + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_recoveredSessionIdentifier, v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR), v5 = type metadata accessor for UUID(), v6 = (*(*(v5 - 8) + 48))(v4, 1, v5), outlined destroy of Measurement<NSUnitDuration>?(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR), v6 != 1))
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static WOLog.workoutVoice);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_20AEA4000, v24, v25, "Recovered a workout with a transcript, no need to re-generate intro. Skipping", v26, 2u);
      MEMORY[0x20F2E9420](v26, -1, -1);
    }

    v28 = v0[12];
    v27 = v0[13];
    v29 = v0[8];

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
    (*(*(v30 - 8) + 56))(v27, 4, 6, v30);
    swift_getKeyPath();
    swift_getKeyPath();
    outlined init with copy of WorkoutVoiceMomentCoordinator.State(v27, v28);

    static Published.subscript.setter();
    WorkoutVoiceMomentCoordinator.state.didset();
    outlined destroy of WorkoutVoiceMomentCoordinator.State(v27, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
    v32 = v0[13];
    v31 = v0[14];
    v34 = v0[11];
    v33 = v0[12];

    v35 = v0[1];

    return v35();
  }

  else
  {
    v7 = v0[12];
    v8 = v0[13];
    v9 = v0[8];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
    v0[15] = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    v0[16] = v12;
    v0[17] = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v7, 3, 6, v10);
    LOBYTE(v9) = specialized static WorkoutVoiceMomentCoordinator.State.== infix(_:_:)(v8, v7);
    outlined destroy of WorkoutVoiceMomentCoordinator.State(v7, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
    outlined destroy of WorkoutVoiceMomentCoordinator.State(v8, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
    if (v9)
    {
      v14 = v0[10];
      v13 = v0[11];
      v16 = v0[8];
      v15 = v0[9];
      v17 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
      swift_beginAccess();
      (*(v14 + 16))(v13, v16 + v17, v15);
      v18 = swift_task_alloc();
      v0[18] = v18;
      *v18 = v0;
      v18[1] = closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady();
      v19 = v0[11];
      v20 = v0[8];

      return WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:)(v19);
    }

    else
    {
      v22 = *(v0[8] + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_musicMomentHandler);
      v0[19] = v22;

      return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady(), v22, 0);
    }
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 72);
  v6 = *v0;

  (*(v4 + 8))(v3, v5);
  v7 = v1[14];
  v8 = v1[13];
  v9 = v1[12];
  v10 = v1[11];

  v11 = *(v6 + 8);

  return v11();
}

{
  v1 = [*(*(v0 + 152) + 168) response];
  v2 = *(v0 + 64);
  if (v1)
  {

    v3 = closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady();
  }

  else
  {
    v3 = closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady();
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

{
  v1 = *(v0 + 136);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 64);
  (*(v0 + 128))(v2, 2, 6, *(v0 + 120));
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of WorkoutVoiceMomentCoordinator.State(v2, v3);

  static Published.subscript.setter();
  WorkoutVoiceMomentCoordinator.state.didset();
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v2, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);

  v9 = *(v0 + 8);

  return v9();
}

{
  v20 = v0;
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.workoutVoice);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[13];
    v6 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v9 = WorkoutVoiceMomentCoordinator.State.description.getter();
    v11 = v10;
    outlined destroy of WorkoutVoiceMomentCoordinator.State(v5, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_20AEA4000, v3, v4, "Unexpected State %s where we have retrieved media info but are not ready to generate intro", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_19(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v14 = v0[13];
  v13 = v0[14];
  v16 = v0[11];
  v15 = v0[12];

  v17 = v0[1];

  return v17();
}

uint64_t WorkoutVoiceMomentCoordinator.conditionsMetForMomentInference()()
{
  *(v1 + 80) = v0;
  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.conditionsMetForMomentInference(), v0, 0);
}

{
  v1 = v0[10];
  v2 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceAvailabilityProvider;
  swift_beginAccess();
  outlined init with copy of WorkoutBuddyAvailabilityProviding(v1 + v2, (v0 + 2));
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm_2(v0 + 2, v3);
  v5 = *(v4 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = WorkoutVoiceMomentCoordinator.conditionsMetForMomentInference();

  return v9(v3, v4);
}

{
  v1 = v0[10];
  __swift_destroy_boxed_opaque_existential_1Tm_19(v0 + 2);
  v2 = *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_headphonesMonitor);
  v0[13] = v2;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.conditionsMetForMomentInference(), v2, 0);
}

{
  v1 = *(v0 + 80);
  *(v0 + 112) = *(*(v0 + 104) + 112);
  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.conditionsMetForMomentInference(), v1, 0);
}

{
  if (*(v0 + 112))
  {
    v1 = 1;
  }

  else
  {
    v1 = FIShowAudioTranscriptions();
  }

  if (*(v0 + 96) != 1)
  {
    outlined consume of WorkoutVoiceAvailabilityProvider.State(*(v0 + 96));
    v1 = 0;
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t WorkoutVoiceMomentCoordinator.conditionsMetForMomentInference()(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.conditionsMetForMomentInference(), v3, 0);
}

Swift::Bool __swiftcall WorkoutVoiceMomentCoordinator.hasDeliveredIntroMomentAndReadyForMoreMoments()()
{
  v0 = type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
  (*(*(v7 - 8) + 56))(v4, 4, 6, v7);
  v8 = specialized static WorkoutVoiceMomentCoordinator.State.== infix(_:_:)(v6, v4);
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v4, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v6, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  return v8 & 1;
}

uint64_t WorkoutVoiceMomentCoordinator.announceUtterance(_:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = type metadata accessor for AnnounceUtteranceResult();
  v3[22] = v4;
  v5 = *(v4 - 8);
  v3[23] = v5;
  v6 = *(v5 + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v9 = type metadata accessor for AudioSynthesisIntensity();
  v3[29] = v9;
  v10 = *(v9 - 8);
  v3[30] = v10;
  v11 = *(v10 + 64) + 15;
  v3[31] = swift_task_alloc();
  v12 = *(*(type metadata accessor for AudioSynthesisVoiceSelection() - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v13 = *(*(type metadata accessor for AudioSynthesisSettings() - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v14 = type metadata accessor for AnnounceUtteranceRequest();
  v3[34] = v14;
  v15 = *(v14 - 8);
  v3[35] = v15;
  v16 = *(v15 + 64) + 15;
  v3[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.announceUtterance(_:), v2, 0);
}

uint64_t WorkoutVoiceMomentCoordinator.announceUtterance(_:)()
{
  v60 = v0;
  v0[5] = &type metadata for WorkoutFeatures;
  v1 = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
  *(v0 + 16) = 0;
  v0[6] = v1;
  v2 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm_19(v0 + 2);
  if ((v2 & 1) == 0)
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static WOLog.workoutVoice);
    v6 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v6, v14))
    {
      goto LABEL_18;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_20AEA4000, v6, v14, "Announce voice feedback not enabled", v15, 2u);
    v16 = v15;
    goto LABEL_17;
  }

  v3 = v0[21];
  if (*(v3 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_shouldCancelAllPendingAnnouncements))
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v4 = v0[20];
    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static WOLog.workoutVoice);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_18;
    }

    v9 = v0[19];
    v8 = v0[20];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v59 = v11;
    *v10 = 136380675;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v59);
    v12 = "Canceling all pending announcements. Skipping announcement of %{private}s";
    goto LABEL_16;
  }

  v17 = *(v3 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_liveWorkoutConfiguration);
  v18 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyMuted;
  swift_beginAccess();
  if (*(v17 + v18))
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v19 = v0[20];
    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static WOLog.workoutVoice);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_18;
    }

    v22 = v0[19];
    v21 = v0[20];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v59 = v11;
    *v10 = 136380675;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, &v59);
    v12 = "Workout Buddy is Muted. Skipping announcement of %{private}s";
LABEL_16:
    _os_log_impl(&dword_20AEA4000, v6, v7, v12, v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_19(v11);
    MEMORY[0x20F2E9420](v11, -1, -1);
    v16 = v10;
LABEL_17:
    MEMORY[0x20F2E9420](v16, -1, -1);
LABEL_18:

    v23 = v0[36];
    v24 = v0[32];
    v25 = v0[33];
    v26 = v0[31];
    v28 = v0[27];
    v27 = v0[28];
    v30 = v0[25];
    v29 = v0[26];
    v31 = v0[24];

    v32 = v0[1];

    return v32();
  }

  v34 = v0[35];
  v35 = v0[36];
  v36 = v0[33];
  v38 = v0[31];
  v37 = v0[32];
  v40 = v0[29];
  v39 = v0[30];
  v56 = v0[28];
  v57 = v0[34];
  v58 = v0[27];
  v42 = v0[20];
  v41 = v0[21];
  v55 = v0[19];
  v43 = type metadata accessor for AudioSynthesisVoice();
  (*(*(v43 - 8) + 56))(v37, 1, 1, v43);
  (*(v39 + 104))(v38, *MEMORY[0x277D0A4D8], v40);

  AudioSynthesisSettings.init(voiceSelection:intensity:)();
  AnnounceUtteranceRequest.init(utterance:settings:)();
  (*(v34 + 16))(v56, v35, v57);
  v44 = *(v34 + 56);
  v0[37] = v44;
  v0[38] = (v34 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v44(v56, 0, 1, v57);
  v45 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_alertAnnouncementInFlight;
  v0[39] = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_alertAnnouncementInFlight;
  swift_beginAccess();
  outlined assign with copy of AnnounceUtteranceRequest?(v56, v41 + v45, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR);
  swift_endAccess();
  v46 = type metadata accessor for TaskPriority();
  v0[40] = v46;
  v47 = *(v46 - 8);
  v48 = *(v47 + 56);
  v0[41] = v48;
  v0[42] = (v47 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v48(v58, 1, 1, v46);
  v49 = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator);
  v0[43] = v49;
  v50 = swift_allocObject();
  v50[2] = v41;
  v50[3] = v49;
  v50[4] = v41;
  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v58, &async function pointer to partial apply for closure #1 in WorkoutVoiceMomentCoordinator.alertAnnouncementInFlight.didset, v50);

  outlined destroy of Measurement<NSUnitDuration>?(v56, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR);
  WorkoutVoiceMomentCoordinator.setIsIntelligenceAnnouncementHandlerSpeaking(_:)(1);
  v51 = *(MEMORY[0x277D09FC0] + 4);
  v52 = swift_task_alloc();
  v0[44] = v52;
  *v52 = v0;
  v52[1] = WorkoutVoiceMomentCoordinator.announceUtterance(_:);
  v53 = v0[36];
  v54 = v0[26];

  return MEMORY[0x282160A80](v54, v53);
}

{
  v2 = *(*v1 + 352);
  v3 = *v1;
  v3[45] = v0;

  if (v0)
  {
    v4 = v3[21];

    return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.announceUtterance(_:), v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[46] = v5;
    *v5 = v3;
    v5[1] = WorkoutVoiceMomentCoordinator.announceUtterance(_:);
    v6 = v3[21];

    return specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(1);
  }
}

{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.announceUtterance(_:), v2, 0);
}

{
  v55 = v0;
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[20];
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.workoutVoice);
  v7 = *(v4 + 16);
  v7(v1, v2, v3);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[25];
  v11 = v0[26];
  if (v10)
  {
    v13 = v0[23];
    v14 = v0[24];
    v52 = v0[22];
    v15 = v0[19];
    v46 = v0[20];
    v50 = v0[26];
    v16 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v54 = v48;
    *v16 = 136380931;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v46, &v54);
    *(v16 + 12) = 2081;
    v7(v14, v12, v52);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    v20 = *(v13 + 8);
    v20(v12, v52);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v54);

    *(v16 + 14) = v21;
    _os_log_impl(&dword_20AEA4000, v8, v9, "Announce result for utterance: %{private}s; result: %{private}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v48, -1, -1);
    MEMORY[0x20F2E9420](v16, -1, -1);

    v20(v50, v52);
  }

  else
  {
    v22 = v0[22];
    v23 = v0[23];

    v24 = *(v23 + 8);
    v24(v12, v22);
    v24(v11, v22);
  }

  v49 = v0[42];
  v51 = v0[43];
  v25 = v0[40];
  v47 = v0[41];
  v27 = v0[38];
  v26 = v0[39];
  v28 = v0[37];
  v53 = v0[36];
  v29 = v0[34];
  v30 = v0[35];
  v32 = v0[27];
  v31 = v0[28];
  v33 = v0[21];
  WorkoutVoiceMomentCoordinator.setIsIntelligenceAnnouncementHandlerSpeaking(_:)(0);
  v28(v31, 1, 1, v29);
  swift_beginAccess();
  outlined assign with copy of AnnounceUtteranceRequest?(v31, v33 + v26, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR);
  swift_endAccess();
  v47(v32, 1, 1, v25);
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v51;
  v34[4] = v33;
  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v32, &closure #1 in WorkoutVoiceMomentCoordinator.alertAnnouncementInFlight.didsetpartial apply, v34);

  outlined destroy of Measurement<NSUnitDuration>?(v31, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR);
  (*(v30 + 8))(v53, v29);
  v35 = v0[36];
  v36 = v0[32];
  v37 = v0[33];
  v38 = v0[31];
  v40 = v0[27];
  v39 = v0[28];
  v42 = v0[25];
  v41 = v0[26];
  v43 = v0[24];

  v44 = v0[1];

  return v44();
}

{
  v24 = v0[42];
  v25 = v0[43];
  v1 = v0[40];
  v2 = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[37];
  v6 = v0[34];
  v8 = v0[27];
  v7 = v0[28];
  v9 = v0[21];
  WorkoutVoiceMomentCoordinator.setIsIntelligenceAnnouncementHandlerSpeaking(_:)(0);
  v5(v7, 1, 1, v6);
  swift_beginAccess();
  outlined assign with copy of AnnounceUtteranceRequest?(v7, v9 + v3, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR);
  swift_endAccess();
  v2(v8, 1, 1, v1);
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v25;
  v10[4] = v9;
  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &closure #1 in WorkoutVoiceMomentCoordinator.alertAnnouncementInFlight.didsetpartial apply, v10);

  outlined destroy of Measurement<NSUnitDuration>?(v7, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR);
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v11 = v0[45];
  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static WOLog.workoutVoice);
  v13 = v11;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = v0[45];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = v16;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_20AEA4000, v14, v15, "Could not announce utterance with error: %@", v17, 0xCu);
    outlined destroy of Measurement<NSUnitDuration>?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v18, -1, -1);
    MEMORY[0x20F2E9420](v17, -1, -1);
  }

  v21 = swift_task_alloc();
  v0[47] = v21;
  *v21 = v0;
  v21[1] = WorkoutVoiceMomentCoordinator.announceUtterance(_:);
  v22 = v0[21];

  return specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(0);
}

{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.announceUtterance(_:), v2, 0);
}

{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 272);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 288);
  v5 = *(v0 + 256);
  v6 = *(v0 + 264);
  v7 = *(v0 + 248);
  v9 = *(v0 + 216);
  v8 = *(v0 + 224);
  v11 = *(v0 + 200);
  v10 = *(v0 + 208);
  v12 = *(v0 + 192);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:);

  return (specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:))(a1);
}

uint64_t WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 40) = a5;
  *(v5 + 16) = a4;
  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:), a4, 0);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_displayStateHandler);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:), v1, 0);
}

{
  v2 = *(v0 + 24);
  *(v2 + 113) = 0;
  if ((*(v2 + 115) & 1) == 0)
  {
    v3 = *(v0 + 24);
    v4 = *(v3 + 112);
    if (v4 != 2 && (v4 & 1) != 0)
    {
      *(v3 + 114) = *(v0 + 40);
    }
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = closure #1 in WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:);
  v6 = *(v0 + 24);

  return WorkoutBuddyDisplayStateHandler.notifyObserversIfNeeded(forceNotifyObservers:)(0);
}

{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t WorkoutVoiceMomentCoordinator.infer(moment:)(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = type metadata accessor for InferenceResult();
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v6 = *(v5 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v7 = type metadata accessor for WorkoutVoiceMomentType();
  v3[19] = v7;
  v8 = *(v7 - 8);
  v3[20] = v8;
  v9 = *(v8 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v10 = type metadata accessor for WorkoutVoiceMoment();
  v3[23] = v10;
  v11 = *(v10 - 8);
  v3[24] = v11;
  v12 = *(v11 + 64) + 15;
  v3[25] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence28AudioSynthesisVoiceSelectionOSgMd, &_s19FitnessIntelligence28AudioSynthesisVoiceSelectionOSgMR);
  v3[26] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR) - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v17 = *(*(type metadata accessor for WorkoutVoiceMomentCoordinator.State(0) - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.infer(moment:), v2, 0);
}

uint64_t WorkoutVoiceMomentCoordinator.infer(moment:)()
{
  v60 = v0;
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v54 = v0[29];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[12];
  v6 = v0[13];
  WorkoutVoiceMoment.type.getter();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
  (*(*(v8 - 8) + 56))(v1, 0, 6, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of WorkoutVoiceMomentCoordinator.State(v1, v2);

  static Published.subscript.setter();
  WorkoutVoiceMomentCoordinator.state.didset();
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v1, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  v56 = *(v4 + 16);
  v56(v3, v7, v5);
  v9 = 1;
  (*(v4 + 56))(v3, 0, 1, v5);
  v10 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_momentInFlight;
  swift_beginAccess();
  outlined assign with copy of AnnounceUtteranceRequest?(v3, v6 + v10, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  swift_endAccess();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v54, 1, 1, v11);
  v12 = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator);
  v13 = swift_allocObject();
  v13[2] = v6;
  v13[3] = v12;
  v13[4] = v6;
  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v54, &async function pointer to partial apply for closure #1 in WorkoutVoiceMomentCoordinator.momentInFlight.didset, v13);

  outlined destroy of Measurement<NSUnitDuration>?(v3, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  WorkoutVoiceMomentCoordinator.setIsIntelligenceAnnouncementHandlerSpeaking(_:)(1);
  v14 = *(v6 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_liveWorkoutConfiguration);
  v15 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyMuted;
  swift_beginAccess();
  if ((*(v14 + v15) & 1) == 0)
  {
    v16 = v0[28];
    v17 = type metadata accessor for AudioSynthesisVoice();
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
    v9 = 0;
  }

  v18 = v0[28];
  v19 = type metadata accessor for AudioSynthesisVoiceSelection();
  (*(*(v19 - 8) + 56))(v18, v9, 1, v19);
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v20 = v0[27];
  v21 = v0[28];
  v22 = v0[25];
  v23 = v0[23];
  v24 = v0[12];
  v25 = type metadata accessor for Logger();
  v0[33] = __swift_project_value_buffer(v25, static WOLog.workoutVoice);
  v56(v22, v24, v23);
  outlined init with copy of Measurement<NSUnitDuration>?(v21, v20, &_s19FitnessIntelligence28AudioSynthesisVoiceSelectionOSgMd, &_s19FitnessIntelligence28AudioSynthesisVoiceSelectionOSgMR);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v29 = v0[27];
  if (v28)
  {
    v30 = v0[25];
    v31 = v0[24];
    v55 = v0[23];
    v57 = v0[26];
    v32 = v0[22];
    v33 = v0[19];
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v59 = v35;
    *v34 = 136315394;
    WorkoutVoiceMoment.type.getter();
    v36 = String.init<A>(describing:)();
    v38 = v37;
    (*(v31 + 8))(v30, v55);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v59);

    *(v34 + 4) = v39;
    *(v34 + 12) = 2080;
    v40 = Optional.description.getter();
    v42 = v41;
    outlined destroy of Measurement<NSUnitDuration>?(v29, &_s19FitnessIntelligence28AudioSynthesisVoiceSelectionOSgMd, &_s19FitnessIntelligence28AudioSynthesisVoiceSelectionOSgMR);
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v59);

    *(v34 + 14) = v43;
    _os_log_impl(&dword_20AEA4000, v26, v27, "Sending inference+announce request for moment %s with voice selection %s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v35, -1, -1);
    MEMORY[0x20F2E9420](v34, -1, -1);
  }

  else
  {
    v45 = v0[24];
    v44 = v0[25];
    v46 = v0[23];

    outlined destroy of Measurement<NSUnitDuration>?(v29, &_s19FitnessIntelligence28AudioSynthesisVoiceSelectionOSgMd, &_s19FitnessIntelligence28AudioSynthesisVoiceSelectionOSgMR);
    (*(v45 + 8))(v44, v46);
  }

  v47 = *(v0[13] + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceSession);
  v48 = *(MEMORY[0x277D0A368] + 4);
  v58 = (*MEMORY[0x277D0A368] + MEMORY[0x277D0A368]);
  v49 = swift_task_alloc();
  v0[34] = v49;
  *v49 = v0;
  v49[1] = WorkoutVoiceMomentCoordinator.infer(moment:);
  v50 = v0[28];
  v51 = v0[18];
  v52 = v0[12];

  return v58(v51, v52, v50);
}

{
  v2 = *(*v1 + 272);
  v3 = *v1;
  v3[35] = v0;

  if (v0)
  {
    v4 = v3[13];

    return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.infer(moment:), v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[36] = v5;
    *v5 = v3;
    v5[1] = WorkoutVoiceMomentCoordinator.infer(moment:);
    v6 = v3[13];

    return specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(1);
  }
}

{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.infer(moment:), v2, 0);
}

{
  v31 = v0;
  v1 = v0[33];
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[14];
  v5 = *(v0[15] + 16);
  v5(v0[17], v2, v4);
  v5(v3, v2, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[14];
  v12 = v0[15];
  if (v8)
  {
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v13 = 134218243;
    InferenceResult.inferenceDuration.getter();
    v15 = v14;
    v16 = *(v12 + 8);
    v16(v9, v11);
    *(v13 + 4) = v15;
    *(v13 + 12) = 2081;
    v17 = InferenceResult.text.getter();
    v19 = v18;
    v16(v10, v11);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v30);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_20AEA4000, v6, v7, "Moment took %f. Text: %{private}s", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm_19(v29);
    MEMORY[0x20F2E9420](v29, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }

  else
  {

    v21 = *(v12 + 8);
    v21(v10, v11);
    v21(v9, v11);
  }

  v22 = v0[18];
  v23 = InferenceResult.text.getter();
  v25 = v24;
  v0[37] = v24;
  v26 = swift_task_alloc();
  v0[38] = v26;
  *v26 = v0;
  v26[1] = WorkoutVoiceMomentCoordinator.infer(moment:);
  v27 = v0[13];

  return WorkoutVoiceMomentCoordinator.receivedInferenceResponse(_:)(v23, v25);
}

{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 296);
  v3 = *(*v0 + 104);
  v5 = *v0;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.infer(moment:), v3, 0);
}

{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v11 = v0[29];
  v12 = v0[27];
  v13 = v0[25];
  v14 = v0[22];
  v4 = v0[18];
  v15 = v0[21];
  v16 = v0[17];
  v5 = v0[15];
  v17 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[11];
  outlined destroy of Measurement<NSUnitDuration>?(v0[28], &_s19FitnessIntelligence28AudioSynthesisVoiceSelectionOSgMd, &_s19FitnessIntelligence28AudioSynthesisVoiceSelectionOSgMR);
  (*(v5 + 32))(v8, v4, v6);
  $defer #2 () in WorkoutVoiceMomentCoordinator.infer(moment:)(v7);
  $defer #1 () in WorkoutVoiceMomentCoordinator.infer(moment:)(v7);

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[35];
  v2 = v0[33];
  outlined destroy of Measurement<NSUnitDuration>?(v0[28], &_s19FitnessIntelligence28AudioSynthesisVoiceSelectionOSgMd, &_s19FitnessIntelligence28AudioSynthesisVoiceSelectionOSgMR);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[35];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Inference Failed. Error %@", v7, 0xCu);
    outlined destroy of Measurement<NSUnitDuration>?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[39] = v11;
  *v11 = v0;
  v11[1] = WorkoutVoiceMomentCoordinator.infer(moment:);
  v12 = v0[13];

  return specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(0);
}

{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.infer(moment:), v2, 0);
}

{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[12];
  WorkoutVoiceMoment.type.getter();
  (*(v4 + 104))(v2, *MEMORY[0x277D0A468], v3);
  LOBYTE(v5) = static WorkoutVoiceMomentType.== infix(_:_:)();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
    v7 = v0[13] + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceAvailabilityProvider;
    swift_beginAccess();
    v8 = *(v7 + 24);
    v9 = *(v7 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    (*(v9 + 80))(1, v8, v9);
    swift_endAccess();
  }

  v10 = v0[35];
  v12 = v0[31];
  v11 = v0[32];
  v14 = v0[29];
  v13 = v0[30];
  v16 = v0[27];
  v15 = v0[28];
  v17 = v0[25];
  v22 = v0[22];
  v23 = v0[21];
  v24 = v0[18];
  v25 = v0[17];
  v26 = v0[16];
  v18 = v0[13];
  swift_willThrow();
  $defer #2 () in WorkoutVoiceMomentCoordinator.infer(moment:)(v18);
  $defer #1 () in WorkoutVoiceMomentCoordinator.infer(moment:)(v18);

  v19 = v0[1];
  v20 = v0[35];

  return v19();
}

uint64_t $defer #1 () in WorkoutVoiceMomentCoordinator.infer(moment:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
  v18 = *(*(v17 - 8) + 56);
  v18(v14, 6, 6, v17);
  v19 = specialized static WorkoutVoiceMomentCoordinator.State.== infix(_:_:)(v16, v14);
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v14, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v16, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  if ((v19 & 1) == 0)
  {
    v18(v16, 4, 6, v17);
    swift_getKeyPath();
    swift_getKeyPath();
    outlined init with copy of WorkoutVoiceMomentCoordinator.State(v16, v14);

    static Published.subscript.setter();
    WorkoutVoiceMomentCoordinator.state.didset();
    outlined destroy of WorkoutVoiceMomentCoordinator.State(v16, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  }

  v20 = type metadata accessor for WorkoutVoiceMoment();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  v21 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_momentInFlight;
  swift_beginAccess();
  outlined assign with copy of AnnounceUtteranceRequest?(v9, a1 + v21, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  swift_endAccess();
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
  v23 = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator);
  v24 = swift_allocObject();
  v24[2] = a1;
  v24[3] = v23;
  v24[4] = a1;
  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &closure #1 in WorkoutVoiceMomentCoordinator.momentInFlight.didsetpartial apply, v24);

  return outlined destroy of Measurement<NSUnitDuration>?(v9, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
}

uint64_t $defer #2 () in WorkoutVoiceMomentCoordinator.infer(moment:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v2 - 8);
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v34 = *(v5 - 8);
  v35 = v5;
  v6 = *(v34 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v32 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v31 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v31 - v19;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v22 = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator);
  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = v22;
  v23[4] = a1;
  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v20, &async function pointer to partial apply for closure #1 in WorkoutVoiceMomentCoordinator.persistTranscript(), v23);

  _sSo8NSObjectCMaTm_4(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v24 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v25 = v10 + 8;
  v26 = *(v10 + 8);
  v31[1] = v25;
  v26(v14, v9);
  v27 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for closure #1 in $defer #2 () in WorkoutVoiceMomentCoordinator.infer(moment:);
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_278;
  v28 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v37 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v29 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7500](v16, v8, v29, v28);
  _Block_release(v28);

  (*(v36 + 8))(v29, v2);
  (*(v34 + 8))(v8, v35);
  v26(v16, v32);
}

uint64_t WorkoutVoiceMomentCoordinator.receivedInferenceResponse(_:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.receivedInferenceResponse(_:), v2, 0);
}

uint64_t WorkoutVoiceMomentCoordinator.receivedInferenceResponse(_:)()
{
  v1 = v0[7] + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);
    v19 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[9] = v7;
    *v7 = v0;
    v7[1] = WorkoutVoiceMomentCoordinator.receivedInferenceResponse(_:);
    v9 = v0[5];
    v8 = v0[6];

    return v19(v9, v8, ObjectType, v3);
  }

  else
  {
    if (FIShowAudioTranscriptions())
    {
      v11 = *(v0[7] + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_liveWorkoutConfiguration);
      v12 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyMuted;
      swift_beginAccess();
      if ((*(v11 + v12) & 1) == 0)
      {
        v13 = v0[6];
        v14 = v0[7];
        v15 = v0[5];
        objc_allocWithZone(type metadata accessor for TranscriptWorkoutAlert());

        v16 = TranscriptWorkoutAlert.init(title:message:)(0, 0, v15, v13);
        v17 = swift_unknownObjectWeakLoadStrong();
        if (v17)
        {
          [v17 alertSource:v0[7] didTriggerAlert:v16];
          swift_unknownObjectRelease();
        }
      }
    }

    v18 = v0[1];

    return v18();
  }
}

{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v5 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.receivedInferenceResponse(_:), v3, 0);
}

{
  if (FIShowAudioTranscriptions())
  {
    v1 = *(v0[7] + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_liveWorkoutConfiguration);
    v2 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyMuted;
    swift_beginAccess();
    if ((*(v1 + v2) & 1) == 0)
    {
      v3 = v0[6];
      v4 = v0[7];
      v5 = v0[5];
      objc_allocWithZone(type metadata accessor for TranscriptWorkoutAlert());

      v6 = TranscriptWorkoutAlert.init(title:message:)(0, 0, v5, v3);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong alertSource:v0[7] didTriggerAlert:v6];
        swift_unknownObjectRelease();
      }
    }
  }

  v8 = v0[1];

  return v8();
}

uint64_t WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded()()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v19 - v6;
  if ((*(v0 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_hasCheckedForHealthDataAvailability) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_hasCheckedForHealthDataAvailability) = 1;
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static WOLog.workoutVoice);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315138;
      v13 = _typeName(_:qualified:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v20);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_20AEA4000, v9, v10, "[%s]: checking if protected health data is available", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_19(v12);
      MEMORY[0x20F2E9420](v12, -1, -1);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    v17 = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator);
    v18 = swift_allocObject();
    v18[2] = v1;
    v18[3] = v17;
    v18[4] = v1;
    v18[5] = v2;
    swift_retain_n();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded(), v18);
  }

  return result;
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded(), a4, 0);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  v1 = static WorkoutCoreInjector.healthStore;
  v0[2] = v0;
  v0[7] = v0 + 31;
  v0[3] = closure #1 in WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded();
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySb_Sbts5Error_pGMd, &_sSccySb_Sbts5Error_pGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned Bool, @unowned NSError?) -> () with result type (Bool, Bool);
  v0[13] = &block_descriptor_72;
  v0[14] = v2;
  [v1 isProtectedDataAvailableWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 192) = v3;
  v4 = *(v1 + 168);
  if (v3)
  {
    v5 = closure #1 in WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded();
  }

  else
  {
    v5 = closure #1 in WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded();
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v16 = v0;
  if (*(v0 + 248))
  {
    v1 = *(v0 + 184);

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    *(v0 + 200) = __swift_project_value_buffer(v4, static WOLog.workoutVoice);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 176);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315138;
      v10 = _typeName(_:qualified:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v15);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_20AEA4000, v5, v6, "[%s]: protected health data not available; disabling workout voice for current workout and canceling any pending announcements.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_19(v9);
      MEMORY[0x20F2E9420](v9, -1, -1);
      MEMORY[0x20F2E9420](v8, -1, -1);
    }

    *(*(v0 + 168) + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_shouldCancelAllPendingAnnouncements) = 1;
    v13 = swift_task_alloc();
    *(v0 + 208) = v13;
    *v13 = v0;
    v13[1] = closure #1 in WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded();
    v14 = *(v0 + 168);

    return WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny()();
  }
}

{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded(), v2, 0);
}

{
  v42 = v0;
  v1 = [*(v0[21] + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_sessionActivity) configuration];
  v2 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
  swift_beginAccess();
  v3 = *&v1[v2];

  if (v3 == 10 && (v4 = v0[23], outlined init with copy of Measurement<NSUnitDuration>?(v0[21] + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_recoveredSessionIdentifier, v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR), v5 = type metadata accessor for UUID(), v6 = (*(*(v5 - 8) + 48))(v4, 1, v5), outlined destroy of Measurement<NSUnitDuration>?(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR), v6 != 1))
  {
    v30 = v0[25];
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = v0[22];
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v41 = v35;
      *v34 = 136315138;
      v36 = _typeName(_:qualified:)();
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v41);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_20AEA4000, v31, v32, "[%s]: recovered a workout with a transcript, no need to present phone locked alert again. Skipping.", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_19(v35);
      MEMORY[0x20F2E9420](v35, -1, -1);
      MEMORY[0x20F2E9420](v34, -1, -1);
    }

    v28 = swift_task_alloc();
    v0[27] = v28;
    *v28 = v0;
    v29 = closure #1 in WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded();
  }

  else
  {
    v7 = v0[25];
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[22];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v41 = v12;
      *v11 = 136315138;
      v13 = _typeName(_:qualified:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v41);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_20AEA4000, v8, v9, "[%s]: protected health data not available; presenting phone locked alert.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_19(v12);
      MEMORY[0x20F2E9420](v12, -1, -1);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    v16 = v0[21];
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = [objc_opt_self() bundleForClass_];
    v19 = MEMORY[0x20F2E6C00](0xD000000000000028, 0x800000020B469460);
    v20 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v21 = [v18 localizedStringForKey:v19 value:0 table:v20];

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v0[28] = v22;
    v0[29] = v24;
    v25 = v16 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_delegate;

    if (swift_unknownObjectWeakLoadStrong())
    {
      v26 = *(v25 + 8);
      ObjectType = swift_getObjectType();
      (*(v26 + 24))(v22, v24, ObjectType, v26);
      swift_unknownObjectRelease();
    }

    v28 = swift_task_alloc();
    v0[30] = v28;
    *v28 = v0;
    v29 = closure #1 in WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded();
  }

  v28[1] = v29;
  v39 = v0[21];

  return WorkoutVoiceMomentCoordinator.fallbackToSiriForFutureAnnouncements(shouldRemoveWorkoutBuddyUI:)(0);
}

{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v6 = *v0;

  v3 = *(v1 + 184);

  v4 = *(v6 + 8);

  return v4();
}

{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 168);
  v5 = *v0;

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded(), v3, 0);
}

{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[21];
  v4 = objc_allocWithZone(type metadata accessor for TranscriptWorkoutAlert());
  v5 = TranscriptWorkoutAlert.init(title:message:)(0, 0, v1, v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong alertSource:v0[21] didTriggerAlert:v5];
    swift_unknownObjectRelease();
  }

  v7 = v0[23];

  v8 = v0[1];

  return v8();
}

{
  v22 = v0;
  v1 = v0[24];
  swift_willThrow();
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.workoutVoice);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[24];
  if (v7)
  {
    v9 = v0[22];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v10 = 136315394;
    v13 = _typeName(_:qualified:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v21);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = v8;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_20AEA4000, v5, v6, "[%s]: received error checking health data availability: %@", v10, 0x16u);
    outlined destroy of Measurement<NSUnitDuration>?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_19(v12);
    MEMORY[0x20F2E9420](v12, -1, -1);
    MEMORY[0x20F2E9420](v10, -1, -1);
  }

  else
  {
  }

  v18 = v0[23];

  v19 = v0[1];

  return v19();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned Bool, @unowned NSError?) -> () with result type (Bool, Bool)(uint64_t a1, char a2, char a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1Tm_2((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return MEMORY[0x282200958](v7, v8);
  }

  else
  {
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    v11[1] = a3;

    return MEMORY[0x282200950](v7);
  }
}

uint64_t WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for UUID();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = type metadata accessor for WorkoutState();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = type metadata accessor for WorkoutVoiceMomentType();
  v2[13] = v9;
  v10 = *(v9 - 8);
  v2[14] = v10;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v13 = *(*(type metadata accessor for WorkoutVoiceMomentCoordinator.State(0) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:), v1, 0);
}

uint64_t WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:)()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[6];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
  v0[19] = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v0[20] = v6;
  v0[21] = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v1, 3, 6, v4);
  LOBYTE(v3) = specialized static WorkoutVoiceMomentCoordinator.State.== infix(_:_:)(v2, v1);
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v1, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v2, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  if (v3)
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    v0[22] = __swift_project_value_buffer(v7, static WOLog.workoutVoice);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20AEA4000, v8, v9, "Generating Intro Moment", v10, 2u);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }

    v11 = v0[6];

    v12 = *(v11 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_displayStateHandler);
    v0[23] = v12;

    return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:), v12, 0);
  }

  else
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static WOLog.workoutVoice);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20AEA4000, v14, v15, "Coordinator isn't ready to generate intro. Returning", v16, 2u);
      MEMORY[0x20F2E9420](v16, -1, -1);
    }

    v18 = v0[17];
    v17 = v0[18];
    v20 = v0[15];
    v19 = v0[16];
    v21 = v0[12];
    v22 = v0[9];

    v23 = v0[1];

    return v23();
  }
}

{
  *(*(v0 + 184) + 113) = 1;
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:);
  v2 = *(v0 + 184);

  return WorkoutBuddyDisplayStateHandler.notifyObserversIfNeeded(forceNotifyObservers:)(0);
}

{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:), v2, 0);
}

{
  v8 = *(v0 + 40);
  (*(*(v0 + 112) + 104))(*(v0 + 120), *MEMORY[0x277D0A468], *(v0 + 104));
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  v1[1] = vextq_s8(v8, v8, 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 208) = v2;
  *v2 = v0;
  v2[1] = WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);

  return WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:)(v3, v4, v5, &async function pointer to partial apply for closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:), v1);
}

{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  v2[27] = v0;

  v5 = v2[25];
  if (v0)
  {
    v6 = v2[6];
    (*(v2[14] + 8))(v2[15], v2[13]);

    v7 = WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:);
    v8 = v6;
  }

  else
  {
    v10 = v2[15];
    v9 = v2[16];
    v11 = v2[13];
    v12 = v2[14];
    v13 = v2[6];

    (*(v12 + 8))(v10, v11);
    outlined destroy of Measurement<NSUnitDuration>?(v9, &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
    v7 = WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:);
    v8 = v13;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 136);
  v4 = *(v0 + 48);
  (*(v0 + 160))(v2, 4, 6, *(v0 + 152));
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of WorkoutVoiceMomentCoordinator.State(v2, v3);

  static Published.subscript.setter();
  WorkoutVoiceMomentCoordinator.state.didset();
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v2, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = *(v0 + 56);
  v10 = *(v0 + 64);
  v11 = *(v0 + 48);
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  (*(v6 + 16))(v5, v11 + v13, v8);
  WorkoutState.identifier.getter();
  (*(v6 + 8))(v5, v8);
  v14 = UUID.uuidString.getter();
  v16 = v15;
  (*(v10 + 8))(v7, v9);
  v17 = MEMORY[0x20F2E6C00](v14, v16);

  v18 = MEMORY[0x20F2E6C00](*(v11 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_sessionIdentifierKey), *(v11 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_sessionIdentifierKey + 8));
  [v12 setObject:v17 forKey:v18];

  v20 = *(v0 + 136);
  v19 = *(v0 + 144);
  v22 = *(v0 + 120);
  v21 = *(v0 + 128);
  v23 = *(v0 + 96);
  v24 = *(v0 + 72);

  v25 = *(v0 + 8);

  return v25();
}

{
  v1 = v0[27];
  v2 = v0[22];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[27];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Could not Infer Intro moment with error: %@", v7, 0xCu);
    outlined destroy of Measurement<NSUnitDuration>?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[28] = v11;
  *v11 = v0;
  v11[1] = WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:);
  v12 = v0[6];

  return specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(0);
}

{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:), v2, 0);
}

{

  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 48);
  v8 = [objc_opt_self() standardUserDefaults];
  v9 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  (*(v2 + 16))(v1, v7 + v9, v4);
  WorkoutState.identifier.getter();
  (*(v2 + 8))(v1, v4);
  v10 = UUID.uuidString.getter();
  v12 = v11;
  (*(v6 + 8))(v3, v5);
  v13 = MEMORY[0x20F2E6C00](v10, v12);

  v14 = MEMORY[0x20F2E6C00](*(v7 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_sessionIdentifierKey), *(v7 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_sessionIdentifierKey + 8));
  [v8 setObject:v13 forKey:v14];

  v16 = *(v0 + 136);
  v15 = *(v0 + 144);
  v18 = *(v0 + 120);
  v17 = *(v0 + 128);
  v19 = *(v0 + 96);
  v20 = *(v0 + 72);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for WorkoutVoiceMoment();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for WorkoutVoiceMomentType();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:), 0, 0);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:)()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceSession);
  (*(v0[11] + 104))(v0[12], *MEMORY[0x277D0A468], v0[10]);
  v2 = *(MEMORY[0x277D0A340] + 4);
  v8 = (*MEMORY[0x277D0A340] + MEMORY[0x277D0A340]);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:);
  v4 = v0[14];
  v5 = v0[12];
  v6 = v0[4];

  return v8(v4, v5, v6);
}

{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:);
  }

  else
  {
    v6 = closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v49 = v0;
  v1 = v0[13];
  v2 = v0[5];
  v3 = v0[6];
  outlined init with copy of Measurement<NSUnitDuration>?(v0[14], v1, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[13];
  if (v4 == 1)
  {
    outlined destroy of Measurement<NSUnitDuration>?(v0[13], &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static WOLog.workoutVoice);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_20AEA4000, v7, v8, "No Intro Moment", v9, 2u);
      MEMORY[0x20F2E9420](v9, -1, -1);
    }

    v10 = v0[14];

    outlined destroy of Measurement<NSUnitDuration>?(v10, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    v11 = 1;
  }

  else
  {
    v12 = *(v0[6] + 32);
    v12(v0[9], v0[13], v0[5]);
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v13 = v0[8];
    v14 = v0[9];
    v15 = v0[5];
    v16 = v0[6];
    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.workoutVoice);
    v18 = *(v16 + 16);
    v18(v13, v14, v15);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[14];
    v23 = v0[8];
    if (v21)
    {
      v47 = v12;
      v24 = v0[6];
      v25 = v0[7];
      v26 = v0[5];
      v46 = v0[14];
      v27 = swift_slowAlloc();
      v45 = v20;
      v28 = swift_slowAlloc();
      v48 = v28;
      *v27 = 136380675;
      v18(v25, v23, v26);
      v29 = String.init<A>(describing:)();
      v31 = v30;
      v32 = v26;
      v12 = v47;
      (*(v24 + 8))(v23, v32);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v48);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_20AEA4000, v19, v45, "Intro moment: %{private}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_19(v28);
      MEMORY[0x20F2E9420](v28, -1, -1);
      MEMORY[0x20F2E9420](v27, -1, -1);

      v34 = v46;
    }

    else
    {
      v36 = v0[5];
      v35 = v0[6];

      (*(v35 + 8))(v23, v36);
      v34 = v22;
    }

    outlined destroy of Measurement<NSUnitDuration>?(v34, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    v12(v0[2], v0[9], v0[5]);
    v11 = 0;
  }

  v37 = v0[13];
  v38 = v0[14];
  v39 = v0[12];
  v41 = v0[8];
  v40 = v0[9];
  v42 = v0[7];
  (*(v0[6] + 56))(v0[2], v11, 1, v0[5]);

  v43 = v0[1];

  return v43();
}

{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];

  v7 = v0[1];
  v8 = v0[16];

  return v7();
}

uint64_t WorkoutVoiceMomentCoordinator.announceMoment(momentGenerationDuration:moment:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 48) = a3;
  *(v4 + 40) = a1;
  v5 = type metadata accessor for WorkoutVoiceMomentAnalyticsEvent();
  *(v4 + 72) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  v7 = type metadata accessor for WorkoutState();
  *(v4 + 88) = v7;
  v8 = *(v7 - 8);
  *(v4 + 96) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  v10 = type metadata accessor for WorkoutVoiceMomentType();
  *(v4 + 112) = v10;
  v11 = *(v10 - 8);
  *(v4 + 120) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 128) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR) - 8) + 64) + 15;
  *(v4 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.announceMoment(momentGenerationDuration:moment:), v3, 0);
}

uint64_t WorkoutVoiceMomentCoordinator.announceMoment(momentGenerationDuration:moment:)()
{
  *(v0 + 144) = CFAbsoluteTimeGetCurrent();
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = WorkoutVoiceMomentCoordinator.announceMoment(momentGenerationDuration:moment:);
  v2 = *(v0 + 136);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);

  return WorkoutVoiceMomentCoordinator.infer(moment:)(v2, v3);
}

{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = WorkoutVoiceMomentCoordinator.announceMoment(momentGenerationDuration:moment:);
  }

  else
  {
    v6 = WorkoutVoiceMomentCoordinator.announceMoment(momentGenerationDuration:moment:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = *(v0 + 144);
  v2 = *(v0 + 136);
  v3 = *(v0 + 48);
  v4 = *(v0 + 40);
  v5 = type metadata accessor for InferenceResult();
  (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
  outlined init with take of InferenceResult?(v2, v4, &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  *(v0 + 176) = v3 + CFAbsoluteTimeGetCurrent() - v1;
  *(v0 + 168) = 0;
  v6 = *(v0 + 128);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  v9 = *(v0 + 88);
  v10 = *(v0 + 56);
  v11 = *(v0 + 64);
  WorkoutVoiceMoment.type.getter();
  v12 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  v13 = *(v8 + 16);
  v13(v7, v11 + v12, v9);
  if (*(v11 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_isDemoMode) == 1)
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static WOLog.workoutVoice);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v19 = *(v0 + 120);
    v18 = *(v0 + 128);
    v21 = *(v0 + 104);
    v20 = *(v0 + 112);
    v22 = *(v0 + 88);
    v23 = *(v0 + 96);
    if (v17)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_20AEA4000, v15, v16, "skipping analytics for demo mode", v24, 2u);
      MEMORY[0x20F2E9420](v24, -1, -1);
    }

    (*(v23 + 8))(v21, v22);
    (*(v19 + 8))(v18, v20);
    v25 = *(v0 + 128);
    v26 = *(v0 + 136);
    v27 = *(v0 + 104);
    v28 = *(v0 + 80);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    v32 = *(v0 + 120);
    v31 = *(v0 + 128);
    v33 = *(v0 + 104);
    v34 = *(v0 + 112);
    v36 = *(v0 + 80);
    v35 = *(v0 + 88);
    v37 = *(v0 + 64);
    v38 = *(v0 + 72);
    v41 = *(v0 + 40);
    v39 = v37 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_analyticsIdentifier;
    *(v0 + 184) = *(v37 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_analyticsIdentifier);
    *(v0 + 192) = *(v39 + 8);
    v13(v36 + v38[6], v33, v35);
    (*(v32 + 16))(v36 + v38[7], v31, v34);
    outlined init with copy of Measurement<NSUnitDuration>?(v41, v36 + v38[8], &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
    v40 = *(v37 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_headphonesMonitor);
    *(v0 + 200) = v40;

    return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.announceMoment(momentGenerationDuration:moment:), v40, 0);
  }
}

{
  v1 = *(v0 + 200);
  *(v0 + 208) = *(v1 + 112);
  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.announceMoment(momentGenerationDuration:moment:), v1, 0);
}

{
  v1 = *(v0 + 64);
  *(v0 + 209) = *(*(v0 + 200) + 113);
  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.announceMoment(momentGenerationDuration:moment:), v1, 0);
}

{
  v1 = *(v0 + 209);
  v2 = *(v0 + 208);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  v10 = *(v0 + 104);
  v9 = *(v0 + 112);
  v11 = *(v0 + 88);
  v12 = *(v0 + 96);
  v13 = *(v0 + 72);
  v14 = *(v0 + 80);
  v15 = *(v0 + 48);
  v16 = *(v0 + 160) != 0;
  *v14 = 0xD000000000000026;
  v14[1] = 0x800000020B469090;
  v14[2] = v4;
  v14[3] = v3;
  v17 = v14 + v13[9];
  *v17 = v15;
  v17[8] = 0;
  v18 = v14 + v13[10];
  *v18 = v5;
  v18[8] = v16;
  *(v14 + v13[11]) = v2;
  *(v14 + v13[12]) = v1;
  *(v14 + v13[13]) = 2;
  *(v14 + v13[14]) = v6;
  specialized WorkoutVoiceAnalyticsHandling.send()();
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v14, type metadata accessor for WorkoutVoiceMomentAnalyticsEvent);
  (*(v12 + 8))(v10, v11);
  (*(v8 + 8))(v7, v9);
  v20 = *(v0 + 128);
  v19 = *(v0 + 136);
  v21 = *(v0 + 104);
  v22 = *(v0 + 80);

  v23 = *(v0 + 8);

  return v23();
}

{
  v1 = v0[20];
  v2 = v0[5];
  v3 = type metadata accessor for InferenceResult();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = v1;
  v0[21] = v1;
  v0[22] = 0;
  v5 = v0[16];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[11];
  v9 = v0[7];
  v10 = v0[8];
  WorkoutVoiceMoment.type.getter();
  v11 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  v12 = *(v7 + 16);
  v12(v6, v10 + v11, v8);
  if (*(v10 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_isDemoMode) == 1)
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static WOLog.workoutVoice);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    v18 = v0[15];
    v17 = v0[16];
    v20 = v0[13];
    v19 = v0[14];
    v22 = v0[11];
    v21 = v0[12];
    if (v16)
    {
      v41 = v0[16];
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_20AEA4000, v14, v15, "skipping analytics for demo mode", v23, 2u);
      v24 = v23;
      v17 = v41;
      MEMORY[0x20F2E9420](v24, -1, -1);
    }

    (*(v21 + 8))(v20, v22);
    (*(v18 + 8))(v17, v19);
    v26 = v0[16];
    v25 = v0[17];
    v27 = v0[13];
    v28 = v0[10];

    v29 = v0[1];

    return v29();
  }

  else
  {
    v32 = v0[15];
    v31 = v0[16];
    v33 = v0[13];
    v34 = v0[14];
    v36 = v0[10];
    v35 = v0[11];
    v37 = v0[8];
    v38 = v0[9];
    v42 = v0[5];
    v39 = v37 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_analyticsIdentifier;
    v0[23] = *(v37 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_analyticsIdentifier);
    v0[24] = *(v39 + 8);
    v12(v36 + v38[6], v33, v35);
    (*(v32 + 16))(v36 + v38[7], v31, v34);
    outlined init with copy of Measurement<NSUnitDuration>?(v42, v36 + v38[8], &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
    v40 = *(v37 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_headphonesMonitor);
    v0[25] = v40;

    return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.announceMoment(momentGenerationDuration:moment:), v40, 0);
  }
}

void WorkoutVoiceMomentCoordinator.supportsPeriodicProgressMoments()(__int16 *a1@<X8>)
{
  v3 = type metadata accessor for WorkoutState();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_supportedMetrics);
  v9 = *(v8 + 16);
  v10 = (v8 + 32);
  while (v9)
  {
    v11 = *v10++;
    --v9;
    if (v11 == 35)
    {
      v12 = 256;
      goto LABEL_8;
    }
  }

  v13 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v13, v3);
  v14 = WorkoutState.activityType.getter();
  (*(v4 + 8))(v7, v3);
  v15 = [v14 supportsWorkoutVoiceMotivationProgressMoments];

  if (v15)
  {
    lazy protocol witness table accessor for type TimeBasedProgressMomentSupportError and conformance TimeBasedProgressMomentSupportError();
    static Result<>.success.getter();
    return;
  }

  v12 = 257;
LABEL_8:
  *a1 = v12;
}

uint64_t WorkoutVoiceMomentCoordinator.generatePeriodicProgressMomentIfSupported()()
{
  v1[8] = v0;
  v2 = type metadata accessor for WorkoutState();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.generatePeriodicProgressMomentIfSupported(), v0, 0);
}

{
  v32 = v0;
  v1 = *(v0 + 64);
  v2 = *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_supportedMetrics);
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  while (v3)
  {
    v5 = *v4++;
    --v3;
    if (v5 == 35)
    {
      v6 = 0;
LABEL_9:
      if (one-time initialization token for workoutVoice != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static WOLog.workoutVoice);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v31 = v16;
        *v15 = 136315138;
        if (v6)
        {
          v17 = 0xD000000000000029;
        }

        else
        {
          v17 = 0xD00000000000001BLL;
        }

        if (v6)
        {
          v18 = "iceCompanionNotConnectedAlert";
        }

        else
        {
          v18 = "NotSupportProgressMoments";
        }

        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18 | 0x8000000000000000, &v31);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_20AEA4000, v13, v14, "Current Workout does not support time based progress moments with error %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm_19(v16);
        MEMORY[0x20F2E9420](v16, -1, -1);
        MEMORY[0x20F2E9420](v15, -1, -1);
      }

      v20 = *(v0 + 88);

      v21 = *(v0 + 8);

      return v21();
    }
  }

  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = *(v0 + 72);
  v10 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  (*(v8 + 16))(v7, v1 + v10, v9);
  v11 = WorkoutState.activityType.getter();
  (*(v8 + 8))(v7, v9);
  LODWORD(v7) = [v11 supportsWorkoutVoiceMotivationProgressMoments];

  if (!v7)
  {
    v6 = 1;
    goto LABEL_9;
  }

  lazy protocol witness table accessor for type TimeBasedProgressMomentSupportError and conformance TimeBasedProgressMomentSupportError();
  static Result<>.success.getter();
  if (*(v0 + 105) == 1)
  {
    v6 = *(v0 + 104);
    goto LABEL_9;
  }

  v24 = *(v0 + 80);
  v23 = *(v0 + 88);
  v26 = *(v0 + 64);
  v25 = *(v0 + 72);
  v27 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  (*(v24 + 16))(v23, v26 + v27, v25);
  v28 = swift_task_alloc();
  *(v0 + 96) = v28;
  *v28 = v0;
  v28[1] = WorkoutVoiceMomentCoordinator.generatePeriodicProgressMomentIfSupported();
  v29 = *(v0 + 88);
  v30 = *(v0 + 64);

  return WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:)(v29);
}

{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 72);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 88);

  v7 = *(v9 + 8);

  return v7();
}

uint64_t WorkoutVoiceMomentCoordinator.checkForBreakthroughs()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.checkForBreakthroughs(), v0, 0);
}

{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_breakthroughMomentChecker);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = WorkoutVoiceMomentCoordinator.checkForBreakthroughs();

  return BreakthroughMomentChecker.startChecking()();
}

{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t WorkoutVoiceMomentCoordinator.generateOutroMoment()()
{
  v1[16] = v0;
  v2 = type metadata accessor for WorkoutState();
  v1[17] = v2;
  v3 = *(v2 - 8);
  v1[18] = v3;
  v4 = *(v3 + 64) + 15;
  v1[19] = swift_task_alloc();
  v5 = type metadata accessor for WorkoutVoiceMomentType();
  v1[20] = v5;
  v6 = *(v5 - 8);
  v1[21] = v6;
  v7 = *(v6 + 64) + 15;
  v1[22] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR) - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v9 = *(*(type metadata accessor for WorkoutVoiceMomentCoordinator.State(0) - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.generateOutroMoment(), v0, 0);
}

{
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[26] = __swift_project_value_buffer(v1, static WOLog.workoutVoice);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "Generating Outro Moment", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v5 = v0[16];

  v6 = *(v5 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_displayStateHandler);
  v0[27] = v6;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.generateOutroMoment(), v6, 0);
}

{
  *(*(v0 + 216) + 113) = 1;
  v1 = swift_task_alloc();
  *(v0 + 224) = v1;
  *v1 = v0;
  v1[1] = WorkoutVoiceMomentCoordinator.generateOutroMoment();
  v2 = *(v0 + 216);

  return WorkoutBuddyDisplayStateHandler.notifyObserversIfNeeded(forceNotifyObservers:)(1);
}

{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.generateOutroMoment(), v2, 0);
}

{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[20];
  v6 = v0[18];
  v18 = v0[17];
  v19 = v0[19];
  v7 = v0[16];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
  v0[29] = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v0[30] = v10;
  v0[31] = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v10(v1, 5, 6, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of WorkoutVoiceMomentCoordinator.State(v1, v2);

  static Published.subscript.setter();
  WorkoutVoiceMomentCoordinator.state.didset();
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v1, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  (*(v3 + 104))(v4, *MEMORY[0x277D0A470], v5);
  v11 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  (*(v6 + 16))(v19, v7 + v11, v18);

  v12 = swift_task_alloc();
  v0[32] = v12;
  *v12 = v0;
  v12[1] = WorkoutVoiceMomentCoordinator.generateOutroMoment();
  v14 = v0[22];
  v13 = v0[23];
  v15 = v0[19];
  v16 = v0[16];

  return specialized WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:)(v13, v14, v15, v16, v16);
}

{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *(*v1 + 176);
  v5 = *(*v1 + 168);
  v6 = *(*v1 + 160);
  v7 = *(*v1 + 152);
  v8 = *(*v1 + 144);
  v9 = *(*v1 + 136);
  v10 = *v1;
  *(*v1 + 264) = v0;

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  v11 = *(v2 + 128);
  if (v0)
  {
    v12 = WorkoutVoiceMomentCoordinator.generateOutroMoment();
  }

  else
  {
    v12 = WorkoutVoiceMomentCoordinator.generateOutroMoment();
  }

  return MEMORY[0x2822009F8](v12, v11, 0);
}

{
  v1 = v0[23];
  v2 = v0[16];
  v3 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_outroInferenceResult;
  swift_beginAccess();
  outlined assign with take of WorkoutVoiceMoment?(v1, v2 + v3, &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  swift_endAccess();
  v4 = *(v0[16] + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_headphonesMonitor);
  v0[34] = v4;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.generateOutroMoment(), v4, 0);
}

{
  v1 = *(v0 + 272);
  v2 = *(v0 + 128);
  BluetoothHeadphonesMonitor.stopObserving()();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.generateOutroMoment(), v2, 0);
}

{
  v1 = *(v0 + 248);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  v6 = *(v0 + 152);
  v7 = *(v0 + 128);
  (*(v0 + 240))(v3, 6, 6, *(v0 + 232));
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of WorkoutVoiceMomentCoordinator.State(v3, v2);

  static Published.subscript.setter();
  WorkoutVoiceMomentCoordinator.state.didset();
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v3, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  v8 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceAvailabilityProvider;
  swift_beginAccess();
  outlined init with copy of WorkoutBuddyAvailabilityProviding(v7 + v8, v0 + 16);
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1Tm_2((v0 + 16), v9);
  (*(v10 + 96))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1Tm_19((v0 + 16));

  v11 = *(v0 + 8);

  return v11();
}

{
  v1 = v0[33];
  v2 = v0[26];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[33];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Could not Infer Outro moment with error: %@", v7, 0xCu);
    outlined destroy of Measurement<NSUnitDuration>?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[35] = v11;
  *v11 = v0;
  v11[1] = WorkoutVoiceMomentCoordinator.generateOutroMoment();
  v12 = v0[16];

  return specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(0);
}

{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.generateOutroMoment(), v2, 0);
}

{

  v1 = *(*(v0 + 128) + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_headphonesMonitor);
  *(v0 + 272) = v1;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.generateOutroMoment(), v1, 0);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.generateOutroMoment()(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for WorkoutVoiceMoment();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v6 = type metadata accessor for WorkoutState();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v9 = type metadata accessor for WorkoutVoiceMomentType();
  v2[15] = v9;
  v10 = *(v9 - 8);
  v2[16] = v10;
  v11 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.generateOutroMoment(), 0, 0);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.generateOutroMoment()()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[6];
  v0[20] = *(v4 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceSession);
  (*(v2 + 104))(v1, *MEMORY[0x277D0A470], v3);

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.generateOutroMoment(), v4, 0);
}

{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[6];
  v5 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = *(MEMORY[0x277D0A340] + 4);
  v13 = (*MEMORY[0x277D0A340] + MEMORY[0x277D0A340]);
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = closure #1 in WorkoutVoiceMomentCoordinator.generateOutroMoment();
  v8 = v0[19];
  v9 = v0[20];
  v10 = v0[17];
  v11 = v0[14];

  return v13(v8, v10, v11);
}

{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = v2[17];
  v6 = v2[16];
  v7 = v2[15];
  (*(v2[13] + 8))(v2[14], v2[12]);
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v8 = closure #1 in WorkoutVoiceMomentCoordinator.generateOutroMoment();
  }

  else
  {
    v8 = closure #1 in WorkoutVoiceMomentCoordinator.generateOutroMoment();
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

{
  v57 = v0;
  v1 = v0[18];
  v2 = v0[7];
  v3 = v0[8];
  outlined init with copy of Measurement<NSUnitDuration>?(v0[19], v1, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of Measurement<NSUnitDuration>?(v0[18], &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.workoutVoice);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20AEA4000, v5, v6, "No Outro Moment", v7, 2u);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    v8 = v0[19];

    outlined destroy of Measurement<NSUnitDuration>?(v8, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    v9 = 1;
  }

  else
  {
    v10 = v0[22];
    v11 = *(v0[8] + 32);
    v11(v0[11], v0[18], v0[7]);
    static Task<>.checkCancellation()();
    if (v10)
    {
      v12 = v0[19];
      (*(v0[8] + 8))(v0[11], v0[7]);
      outlined destroy of Measurement<NSUnitDuration>?(v12, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
      v14 = v0[18];
      v13 = v0[19];
      v15 = v0[17];
      v16 = v0[14];
      v18 = v0[10];
      v17 = v0[11];
      v19 = v0[9];

      v20 = v0[1];
      goto LABEL_16;
    }

    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v21 = v0[10];
    v22 = v0[11];
    v23 = v0[7];
    v24 = v0[8];
    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static WOLog.workoutVoice);
    v26 = *(v24 + 16);
    v26(v21, v22, v23);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[19];
    v31 = v0[10];
    if (v29)
    {
      v53 = v28;
      v32 = v0[8];
      v33 = v0[9];
      v55 = v11;
      v34 = v0[7];
      v54 = v0[19];
      v35 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v56 = v52;
      *v35 = 136380675;
      v26(v33, v31, v34);
      v36 = String.init<A>(describing:)();
      v38 = v37;
      v39 = v34;
      v11 = v55;
      (*(v32 + 8))(v31, v39);
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v56);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_20AEA4000, v27, v53, "Outro moment: %{private}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_19(v52);
      MEMORY[0x20F2E9420](v52, -1, -1);
      MEMORY[0x20F2E9420](v35, -1, -1);

      v41 = v54;
    }

    else
    {
      v43 = v0[7];
      v42 = v0[8];

      (*(v42 + 8))(v31, v43);
      v41 = v30;
    }

    outlined destroy of Measurement<NSUnitDuration>?(v41, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    v11(v0[5], v0[11], v0[7]);
    v9 = 0;
  }

  v44 = v0[18];
  v45 = v0[19];
  v46 = v0[17];
  v47 = v0[14];
  v49 = v0[10];
  v48 = v0[11];
  v50 = v0[9];
  (*(v0[8] + 56))(v0[5], v9, 1, v0[7]);

  v20 = v0[1];
LABEL_16:

  return v20();
}

{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = v0[14];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for WorkoutVoiceMomentType();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:), v1, 0);
}

uint64_t WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:)()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_heartRateDataProvider);
  if (v1)
  {
    [v1 markAveragingSegment];
  }

  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[8] = __swift_project_value_buffer(v2, static WOLog.workoutVoice);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20AEA4000, v3, v4, "Generating Split Moment", v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  v6 = v0[3];

  v7 = *(v6 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_displayStateHandler);
  v0[9] = v7;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:), v7, 0);
}

{
  *(*(v0 + 72) + 113) = 1;
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:);
  v2 = *(v0 + 72);

  return WorkoutBuddyDisplayStateHandler.notifyObserversIfNeeded(forceNotifyObservers:)(0);
}

{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:), v2, 0);
}

{
  v8 = v0[1];
  (*(v0[2].i64[1] + 104))(v0[3].i64[0], *MEMORY[0x277D0A478], v0[2].i64[0]);
  v1 = swift_task_alloc();
  v0[5].i64[1] = v1;
  v1[1] = vextq_s8(v8, v8, 8uLL);
  v2 = swift_task_alloc();
  v0[6].i64[0] = v2;
  *v2 = v0;
  v2[1] = WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:);
  v4 = v0[3].i64[0];
  v3 = v0[3].i64[1];
  v5 = v0[1].i64[0];
  v6 = v0[1].i64[1];

  return WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:)(v3, v4, v5, &async function pointer to partial apply for closure #1 in WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:), v1);
}

{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  v2[13] = v0;

  v5 = v2[11];
  if (v0)
  {
    v6 = v2[3];
    (*(v2[5] + 8))(v2[6], v2[4]);

    v7 = WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:);
    v8 = v6;
  }

  else
  {
    v10 = v2[6];
    v9 = v2[7];
    v11 = v2[4];
    v12 = v2[5];
    v13 = v2[3];

    (*(v12 + 8))(v10, v11);
    outlined destroy of Measurement<NSUnitDuration>?(v9, &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
    v7 = WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:);
    v8 = v13;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[13];
  v2 = v0[8];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Could not Infer Split moment with error: %@", v7, 0xCu);
    outlined destroy of Measurement<NSUnitDuration>?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:);
  v12 = v0[3];

  return specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(0);
}

{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:), v2, 0);
}

{

  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for WorkoutVoiceMoment();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for WorkoutVoiceMomentType();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:), 0, 0);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:)()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceSession);
  (*(v0[11] + 104))(v0[12], *MEMORY[0x277D0A478], v0[10]);
  v2 = *(MEMORY[0x277D0A340] + 4);
  v8 = (*MEMORY[0x277D0A340] + MEMORY[0x277D0A340]);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = closure #1 in WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:);
  v4 = v0[14];
  v5 = v0[12];
  v6 = v0[4];

  return v8(v4, v5, v6);
}

{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = closure #1 in WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:);
  }

  else
  {
    v6 = closure #1 in WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v49 = v0;
  v1 = v0[13];
  v2 = v0[5];
  v3 = v0[6];
  outlined init with copy of Measurement<NSUnitDuration>?(v0[14], v1, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[13];
  if (v4 == 1)
  {
    outlined destroy of Measurement<NSUnitDuration>?(v0[13], &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static WOLog.workoutVoice);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_20AEA4000, v7, v8, "No split Moment", v9, 2u);
      MEMORY[0x20F2E9420](v9, -1, -1);
    }

    v10 = v0[14];

    outlined destroy of Measurement<NSUnitDuration>?(v10, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    v11 = 1;
  }

  else
  {
    v12 = *(v0[6] + 32);
    v12(v0[9], v0[13], v0[5]);
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v13 = v0[8];
    v14 = v0[9];
    v15 = v0[5];
    v16 = v0[6];
    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.workoutVoice);
    v18 = *(v16 + 16);
    v18(v13, v14, v15);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[14];
    v23 = v0[8];
    if (v21)
    {
      v47 = v12;
      v24 = v0[6];
      v25 = v0[7];
      v26 = v0[5];
      v46 = v0[14];
      v27 = swift_slowAlloc();
      v45 = v20;
      v28 = swift_slowAlloc();
      v48 = v28;
      *v27 = 136380675;
      v18(v25, v23, v26);
      v29 = String.init<A>(describing:)();
      v31 = v30;
      v32 = v26;
      v12 = v47;
      (*(v24 + 8))(v23, v32);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v48);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_20AEA4000, v19, v45, "Split moment: %{private}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_19(v28);
      MEMORY[0x20F2E9420](v28, -1, -1);
      MEMORY[0x20F2E9420](v27, -1, -1);

      v34 = v46;
    }

    else
    {
      v36 = v0[5];
      v35 = v0[6];

      (*(v35 + 8))(v23, v36);
      v34 = v22;
    }

    outlined destroy of Measurement<NSUnitDuration>?(v34, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    v12(v0[2], v0[9], v0[5]);
    v11 = 0;
  }

  v37 = v0[13];
  v38 = v0[14];
  v39 = v0[12];
  v41 = v0[8];
  v40 = v0[9];
  v42 = v0[7];
  (*(v0[6] + 56))(v0[2], v11, 1, v0[5]);

  v43 = v0[1];

  return v43();
}

uint64_t WorkoutVoiceMomentCoordinator.setHeartRateDataProvider(_:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_heartRateDataProvider);
  *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_heartRateDataProvider) = a1;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall WorkoutVoiceMomentCoordinator.prewarmFutureContextsIfNeeded()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27 - v4;
  v6 = type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for WorkoutState();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_didPrefetchOutroContext;
  if ((*(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_didPrefetchOutroContext) & 1) == 0)
  {
    v19 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
    swift_beginAccess();
    (*(v14 + 16))(v17, v1 + v19, v13);
    WorkoutState.duration.getter();
    v21 = v20;
    (*(v14 + 8))(v17, v13);
    if (NLWorkoutAutoDiscardDurationLimit() < v21)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
      (*(*(v22 - 8) + 56))(v10, 4, 6, v22);
      v23 = specialized static WorkoutVoiceMomentCoordinator.State.== infix(_:_:)(v12, v10);
      outlined destroy of WorkoutVoiceMomentCoordinator.State(v10, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
      outlined destroy of WorkoutVoiceMomentCoordinator.State(v12, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
      if (v23)
      {
        *(v1 + v18) = 1;
        v24 = type metadata accessor for TaskPriority();
        (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
        v25 = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator);
        v26 = swift_allocObject();
        v26[2] = v1;
        v26[3] = v25;
        v26[4] = v1;
        swift_retain_n();
        _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in WorkoutVoiceMomentCoordinator.prewarmFutureContextsIfNeeded(), v26);
      }
    }
  }
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.prewarmFutureContextsIfNeeded()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v6 = type metadata accessor for WorkoutState();
  v4[6] = v6;
  v7 = *(v6 - 8);
  v4[7] = v7;
  v8 = *(v7 + 64) + 15;
  v4[8] = swift_task_alloc();
  v9 = type metadata accessor for WorkoutVoiceMomentType();
  v4[9] = v9;
  v10 = *(v9 - 8);
  v4[10] = v10;
  v11 = *(v10 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.prewarmFutureContextsIfNeeded(), a4, 0);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.prewarmFutureContextsIfNeeded()()
{
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static WOLog.workoutVoice);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "Prewarming Outro Moment", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v6 = v0[10];
  v5 = v0[11];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[5];

  v12 = *(v11 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceSession);
  (*(v6 + 104))(v5, *MEMORY[0x277D0A470], v7);
  v13 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  (*(v10 + 16))(v8, v11 + v13, v9);
  v14 = *(MEMORY[0x277D0A348] + 4);
  v19 = (*MEMORY[0x277D0A348] + MEMORY[0x277D0A348]);
  v15 = swift_task_alloc();
  v0[12] = v15;
  *v15 = v0;
  v15[1] = closure #1 in WorkoutVoiceMomentCoordinator.prewarmFutureContextsIfNeeded();
  v16 = v0[11];
  v17 = v0[8];

  return v19(v16, v17);
}

{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v7 = *(*v1 + 64);
  v8 = *(*v1 + 56);
  v9 = *(*v1 + 48);
  v10 = *v1;
  *(*v1 + 104) = v0;

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v11 = v2[5];

    return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.prewarmFutureContextsIfNeeded(), v11, 0);
  }

  else
  {
    v12 = v2[11];
    v13 = v2[8];

    v14 = *(v10 + 8);

    return v14();
  }
}

{
  v1 = v0[11];
  v2 = v0[8];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t WorkoutVoiceMomentCoordinator.updateSplitEvents(_:shouldAnnounceSplit:)(uint64_t a1, char a2)
{
  *(v3 + 336) = a2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v3 + 144) = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR) - 8) + 64) + 15;
  *(v3 + 152) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR) - 8) + 64) + 15;
  *(v3 + 160) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence19WorkoutMediaDetailsVSgMd, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMR) - 8) + 64) + 15;
  *(v3 + 168) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR) - 8) + 64) + 15;
  *(v3 + 176) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR) - 8) + 64) + 15;
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR) - 8) + 64) + 15;
  *(v3 + 216) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR) - 8) + 64) + 15;
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR) - 8) + 64) + 15;
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence16WeatherConditionVSgMd, &_s19FitnessIntelligence16WeatherConditionVSgMR) - 8) + 64) + 15;
  *(v3 + 256) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR) - 8) + 64) + 15;
  *(v3 + 288) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  *(v3 + 296) = swift_task_alloc();
  v17 = type metadata accessor for WorkoutState();
  *(v3 + 304) = v17;
  v18 = *(v17 - 8);
  *(v3 + 312) = v18;
  v19 = *(v18 + 64) + 15;
  *(v3 + 320) = swift_task_alloc();
  *(v3 + 328) = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.updateSplitEvents(_:shouldAnnounceSplit:), v2, 0);
}

uint64_t WorkoutVoiceMomentCoordinator.updateSplitEvents(_:shouldAnnounceSplit:)()
{
  v1 = *(v0 + 320);
  v68 = v1;
  v70 = *(v0 + 328);
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);
  v52 = v3;
  v51 = v2;
  v5 = *(v0 + 288);
  v4 = *(v0 + 296);
  v65 = v5;
  v7 = *(v0 + 272);
  v6 = *(v0 + 280);
  v76 = *(v0 + 256);
  v78 = *(v0 + 264);
  v57 = *(v0 + 240);
  v80 = *(v0 + 232);
  v61 = *(v0 + 224);
  v63 = v6;
  v72 = *(v0 + 208);
  v74 = *(v0 + 248);
  v55 = *(v0 + 200);
  v58 = *(v0 + 192);
  v59 = *(v0 + 216);
  v49 = *(v0 + 184);
  v56 = *(v0 + 176);
  v47 = *(v0 + 168);
  v48 = *(v0 + 160);
  v50 = *(v0 + 152);
  v54 = *(v0 + 336);
  v8 = *(v0 + 136);
  v9 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  v53 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  (*(v3 + 16))(v1, v8 + v9, v2);
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = type metadata accessor for WorkoutGoal();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = type metadata accessor for Date();
  v13 = *(*(v12 - 8) + 56);
  v13(v6, 1, 1, v12);
  v13(v7, 1, 1, v12);
  v13(v78, 1, 1, v12);
  v14 = type metadata accessor for WeatherCondition();
  (*(*(v14 - 8) + 56))(v76, 1, 1, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v16 = *(*(v15 - 8) + 56);
  v16(v74, 1, 1, v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
  v18 = *(*(v17 - 8) + 56);
  v18(v80, 1, 1, v17);
  v18(v61, 1, 1, v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  (*(*(v19 - 8) + 56))(v59, 1, 1, v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v21 = *(*(v20 - 8) + 56);
  v21(v72, 1, 1, v20);
  v21(v55, 1, 1, v20);
  v21(v58, 1, 1, v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  (*(*(v22 - 8) + 56))(v56, 1, 1, v22);
  v16(v57, 1, 1, v15);
  v23 = type metadata accessor for WorkoutMediaDetails();
  (*(*(v23 - 8) + 56))(v47, 1, 1, v23);
  v24 = type metadata accessor for HKActivitySummaryRepresentable();
  (*(*(v24 - 8) + 56))(v48, 1, 1, v24);
  v21(v49, 1, 1, v20);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  (*(*(v25 - 8) + 56))(v50, 1, 1, v25);
  WorkoutState.updatedWith(identifier:activityType:status:goal:configuredAlerts:start:sessionStart:end:duration:location:weatherConditions:distance:pace:averagePace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:elapsedTimeInHeartRateZones:averagePower:elevationGain:events:metadata:samplesByType:route:mediaDetails:activitySummaryRepresentable:isMachineWorkout:splitAverageHeartRate:timeBasedSplitDuration:)();
  outlined destroy of Measurement<NSUnitDuration>?(v50, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v49, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v48, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v47, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMd, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v57, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v56, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v58, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v55, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v72, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v59, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v61, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v80, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v74, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v76, &_s19FitnessIntelligence16WeatherConditionVSgMd, &_s19FitnessIntelligence16WeatherConditionVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v78, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v63, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v65, &_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(v52 + 8))(v68, v51);
  swift_beginAccess();
  (*(v52 + 40))(v8 + v53, v70, v51);
  swift_endAccess();
  v26 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceAvailabilityProvider;
  swift_beginAccess();
  outlined init with copy of WorkoutBuddyAvailabilityProviding(v8 + v26, v0 + 16);
  v27 = *(v0 + 40);
  v28 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1Tm_2((v0 + 16), v27);
  v29 = (*(v28 + 24))(v27, v28);
  __swift_destroy_boxed_opaque_existential_1Tm_19((v0 + 16));
  if (v54 == 1 && (v29 & 1) == 0)
  {
    v30 = *(v0 + 136);
    v31 = *(v0 + 144);
    v32 = type metadata accessor for TaskPriority();
    (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
    v33 = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator);
    v34 = swift_allocObject();
    v34[2] = v30;
    v34[3] = v33;
    v34[4] = v30;
    swift_retain_n();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v31, &async function pointer to partial apply for closure #1 in WorkoutVoiceMomentCoordinator.updateSplitEvents(_:shouldAnnounceSplit:), v34);
  }

  v36 = *(v0 + 320);
  v35 = *(v0 + 328);
  v38 = *(v0 + 288);
  v37 = *(v0 + 296);
  v40 = *(v0 + 272);
  v39 = *(v0 + 280);
  v42 = *(v0 + 256);
  v41 = *(v0 + 264);
  v43 = *(v0 + 240);
  v44 = *(v0 + 248);
  v60 = *(v0 + 232);
  v62 = *(v0 + 224);
  v64 = *(v0 + 216);
  v66 = *(v0 + 208);
  v67 = *(v0 + 200);
  v69 = *(v0 + 192);
  v71 = *(v0 + 184);
  v73 = *(v0 + 176);
  v75 = *(v0 + 168);
  v77 = *(v0 + 160);
  v79 = *(v0 + 152);
  v81 = *(v0 + 144);

  v45 = *(v0 + 8);

  return v45();
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.updateSplitEvents(_:shouldAnnounceSplit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v6 = type metadata accessor for WorkoutState();
  v4[6] = v6;
  v7 = *(v6 - 8);
  v4[7] = v7;
  v8 = *(v7 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.updateSplitEvents(_:shouldAnnounceSplit:), a4, 0);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.updateSplitEvents(_:shouldAnnounceSplit:)()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = closure #1 in WorkoutVoiceMomentCoordinator.updateSplitEvents(_:shouldAnnounceSplit:);
  v7 = v0[8];
  v8 = v0[5];

  return WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:)(v7);
}

{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t WorkoutVoiceMomentCoordinator.updateWorkoutStartDate(date:)(uint64_t a1)
{
  v100 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v108 = &v98 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v107 = &v98 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence19WorkoutMediaDetailsVSgMd, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v118 = &v98 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v105 = &v98 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v106 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v120 = &v98 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v119 = &v98 - v21;
  MEMORY[0x28223BE20](v20);
  v124 = &v98 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v123 = &v98 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v111 = &v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v110 = &v98 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v99 = &v98 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v121 = &v98 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence16WeatherConditionVSgMd, &_s19FitnessIntelligence16WeatherConditionVSgMR);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v122 = &v98 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39 - 8);
  v43 = &v98 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v43;
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v98 - v45;
  MEMORY[0x28223BE20](v44);
  v48 = &v98 - v47;
  v113 = &v98 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v52 = &v98 - v51;
  v114 = &v98 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v56 = &v98 - v55;
  v116 = &v98 - v55;
  v57 = type metadata accessor for WorkoutState();
  v101 = v57;
  v102 = *(v57 - 8);
  v58 = v102;
  v59 = *(v102 + 64);
  v60 = MEMORY[0x28223BE20](v57);
  v62 = &v98 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v62;
  MEMORY[0x28223BE20](v60);
  v117 = &v98 - v63;
  v64 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  v103 = v1;
  v104 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  (*(v58 + 16))(v62, v1 + v64, v57);
  v65 = type metadata accessor for UUID();
  (*(*(v65 - 8) + 56))(v56, 1, 1, v65);
  v66 = type metadata accessor for WorkoutGoal();
  (*(*(v66 - 8) + 56))(v52, 1, 1, v66);
  v67 = type metadata accessor for Date();
  v68 = *(v67 - 8);
  v69 = *(v68 + 56);
  v69(v48, 1, 1, v67);
  v70 = *(v68 + 16);
  v109 = v46;
  v70(v46, v100, v67);
  v69(v46, 0, 1, v67);
  v69(v43, 1, 1, v67);
  v71 = type metadata accessor for WeatherCondition();
  (*(*(v71 - 8) + 56))(v122, 1, 1, v71);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v73 = *(*(v72 - 8) + 56);
  v73(v121, 1, 1, v72);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
  v75 = *(*(v74 - 8) + 56);
  v75(v110, 1, 1, v74);
  v75(v111, 1, 1, v74);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  (*(*(v76 - 8) + 56))(v123, 1, 1, v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v78 = *(*(v77 - 8) + 56);
  v78(v124, 1, 1, v77);
  v78(v119, 1, 1, v77);
  v78(v120, 1, 1, v77);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  v80 = v105;
  (*(*(v79 - 8) + 56))(v105, 1, 1, v79);
  v81 = v99;
  v73(v99, 1, 1, v72);
  v82 = type metadata accessor for WorkoutMediaDetails();
  (*(*(v82 - 8) + 56))(v118, 1, 1, v82);
  v83 = type metadata accessor for HKActivitySummaryRepresentable();
  v84 = v107;
  (*(*(v83 - 8) + 56))(v107, 1, 1, v83);
  v85 = v106;
  v78(v106, 1, 1, v77);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v87 = v108;
  (*(*(v86 - 8) + 56))(v108, 1, 1, v86);
  v88 = v80;
  v89 = v120;
  v90 = v119;
  v91 = v111;
  v92 = v110;
  WorkoutState.updatedWith(identifier:activityType:status:goal:configuredAlerts:start:sessionStart:end:duration:location:weatherConditions:distance:pace:averagePace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:elapsedTimeInHeartRateZones:averagePower:elevationGain:events:metadata:samplesByType:route:mediaDetails:activitySummaryRepresentable:isMachineWorkout:splitAverageHeartRate:timeBasedSplitDuration:)();
  outlined destroy of Measurement<NSUnitDuration>?(v87, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v85, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v84, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v118, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMd, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v81, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v88, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v89, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v90, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v124, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v123, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v91, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v92, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v121, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v122, &_s19FitnessIntelligence16WeatherConditionVSgMd, &_s19FitnessIntelligence16WeatherConditionVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v112, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v109, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v113, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v114, &_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v116, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v93 = v102;
  v94 = v101;
  (*(v102 + 8))(v115, v101);
  v95 = v104;
  v96 = v103;
  swift_beginAccess();
  (*(v93 + 40))(v96 + v95, v117, v94);
  return swift_endAccess();
}

uint64_t WorkoutVoiceMomentCoordinator.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)(char a1, char a2)
{
  *(v3 + 104) = v2;
  *(v3 + 209) = a2;
  *(v3 + 208) = a1;
  v4 = type metadata accessor for UUID();
  *(v3 + 112) = v4;
  v5 = *(v4 - 8);
  *(v3 + 120) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 128) = swift_task_alloc();
  v7 = type metadata accessor for WorkoutState();
  *(v3 + 136) = v7;
  v8 = *(v7 - 8);
  *(v3 + 144) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 152) = swift_task_alloc();
  v10 = *(*(type metadata accessor for WorkoutVoiceMomentCoordinator.State(0) - 8) + 64) + 15;
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.stopActiveTasks(isGeneratingOutro:workoutWasEnded:), v2, 0);
}

uint64_t WorkoutVoiceMomentCoordinator.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)()
{
  v1 = *(v0 + 209);
  if (*(v0 + 208))
  {
    if (*(v0 + 209))
    {
      v2 = *(v0 + 104);
      WorkoutVoiceMomentCoordinator.resetCachedState()();
LABEL_9:
      v24 = *(*(v0 + 104) + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_musicMomentHandler);
      *(v0 + 184) = v24;

      return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.stopActiveTasks(isGeneratingOutro:workoutWasEnded:), v24, 0);
    }

LABEL_8:
    v11 = *(v0 + 144);
    v10 = *(v0 + 152);
    v12 = *(v0 + 128);
    v13 = *(v0 + 136);
    v14 = *(v0 + 112);
    v15 = *(v0 + 120);
    v16 = *(v0 + 104);
    v17 = [objc_opt_self() standardUserDefaults];
    v18 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
    swift_beginAccess();
    (*(v11 + 16))(v10, v16 + v18, v13);
    WorkoutState.identifier.getter();
    (*(v11 + 8))(v10, v13);
    v19 = UUID.uuidString.getter();
    v21 = v20;
    (*(v15 + 8))(v12, v14);
    v22 = MEMORY[0x20F2E6C00](v19, v21);

    v23 = MEMORY[0x20F2E6C00](*(v16 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_sessionIdentifierKey), *(v16 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_sessionIdentifierKey + 8));
    [v17 setObject:v22 forKey:v23];

    goto LABEL_9;
  }

  if (!*(v0 + 209))
  {
    goto LABEL_8;
  }

  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 104);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
  (*(*(v6 - 8) + 56))(v3, 6, 6, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of WorkoutVoiceMomentCoordinator.State(v3, v4);

  static Published.subscript.setter();
  WorkoutVoiceMomentCoordinator.state.didset();
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v3, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  *(v5 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_shouldCancelAllPendingAnnouncements) = 1;
  v7 = swift_task_alloc();
  *(v0 + 176) = v7;
  *v7 = v0;
  v7[1] = WorkoutVoiceMomentCoordinator.stopActiveTasks(isGeneratingOutro:workoutWasEnded:);
  v8 = *(v0 + 104);

  return WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny()();
}

{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.stopActiveTasks(isGeneratingOutro:workoutWasEnded:), v2, 0);
}

{
  v1 = v0[13];
  v2 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceAvailabilityProvider;
  swift_beginAccess();
  outlined init with copy of WorkoutBuddyAvailabilityProviding(v1 + v2, (v0 + 2));
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm_2(v0 + 2, v3);
  (*(v4 + 96))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm_19(v0 + 2);
  v5 = v0[13];
  WorkoutVoiceMomentCoordinator.resetCachedState()();
  v6 = *(v0[13] + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_musicMomentHandler);
  v0[23] = v6;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.stopActiveTasks(isGeneratingOutro:workoutWasEnded:), v6, 0);
}

{
  v1 = *(v0 + 184);
  v2 = *(v0 + 104);
  MusicMomentHandler.stopActiveTasks()();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.stopActiveTasks(isGeneratingOutro:workoutWasEnded:), v2, 0);
}

{
  v1 = *(*(v0 + 104) + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_breakthroughMomentChecker);
  *(v0 + 192) = v1;
  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.stopActiveTasks(isGeneratingOutro:workoutWasEnded:), v1, 0);
}

{
  v1 = *(v0 + 192);
  v2 = *(v0 + 104);
  BreakthroughMomentChecker.stopChecking()();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.stopActiveTasks(isGeneratingOutro:workoutWasEnded:), v2, 0);
}

{
  v1 = *(v0 + 104);
  v2 = *(v0 + 208);
  v3 = *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_heartRateDataProvider);
  *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_heartRateDataProvider) = 0;
  swift_unknownObjectRelease();
  if (v2)
  {
    v5 = *(v0 + 160);
    v4 = *(v0 + 168);
    v6 = *(v0 + 152);
    v7 = *(v0 + 128);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(*(v0 + 104) + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_headphonesMonitor);
    *(v0 + 200) = v10;

    return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.stopActiveTasks(isGeneratingOutro:workoutWasEnded:), v10, 0);
  }
}

{
  v1 = v0[25];
  BluetoothHeadphonesMonitor.stopObserving()();
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  v5 = v0[16];

  v6 = v0[1];

  return v6();
}

Swift::Void __swiftcall WorkoutVoiceMomentCoordinator.setIsIntelligenceAnnouncementHandlerSpeaking(_:)(Swift::Bool a1)
{
  v2 = v1;
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.workoutVoice);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1;
    _os_log_impl(&dword_20AEA4000, v5, v6, "setIsIntelligenceAnnouncementHandlerSpeaking %{BOOL}d", v7, 8u);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  if (a1)
  {
    started = type metadata accessor for VoiceMotivationStartEventAlert();
  }

  else
  {
    started = type metadata accessor for VoiceMotivationEndEventAlert();
  }

  v10 = [objc_allocWithZone(started) init];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong alertSource:v2 didTriggerAlert:v10];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t specialized WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[38] = a4;
  v5[39] = a5;
  v5[36] = a2;
  v5[37] = a3;
  v5[35] = a1;
  v7 = type metadata accessor for WorkoutVoiceMomentAnalyticsEvent();
  v5[40] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[41] = swift_task_alloc();
  v9 = *(*(type metadata accessor for WorkoutVoiceMomentCoordinator.State(0) - 8) + 64) + 15;
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v10 = type metadata accessor for WorkoutVoiceMoment();
  v5[44] = v10;
  v11 = *(v10 - 8);
  v5[45] = v11;
  v12 = *(v11 + 64) + 15;
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR) - 8) + 64) + 15;
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v14 = type metadata accessor for WorkoutVoiceMomentType();
  v5[52] = v14;
  v15 = *(v14 - 8);
  v5[53] = v15;
  v16 = *(v15 + 64) + 15;
  v5[54] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR) - 8) + 64) + 15;
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:), a4, 0);
}

uint64_t specialized WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:)()
{
  *(v0 + 472) = CFAbsoluteTimeGetCurrent();
  v1 = swift_task_alloc();
  *(v0 + 480) = v1;
  *v1 = v0;
  v1[1] = specialized WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:);
  v2 = *(v0 + 456);
  v3 = *(v0 + 312);

  return closure #1 in WorkoutVoiceMomentCoordinator.generateOutroMoment()(v2, v3);
}

{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v4 = *v1;
  *(*v1 + 488) = v0;

  v5 = *(v2 + 304);
  if (v0)
  {
    v6 = specialized WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:);
  }

  else
  {
    v6 = specialized WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v105 = v0;
  v1 = *(v0 + 472);
  v3 = *(v0 + 424);
  v2 = *(v0 + 432);
  v4 = *(v0 + 416);
  v5 = *(v0 + 288);
  outlined init with take of InferenceResult?(*(v0 + 456), *(v0 + 464), &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  v6 = CFAbsoluteTimeGetCurrent() - v1;
  v7 = *MEMORY[0x277D0A468];
  v8 = *(v3 + 104);
  v8(v2, v7, v4);
  LOBYTE(v5) = static WorkoutVoiceMomentType.== infix(_:_:)();
  v101 = *(v3 + 8);
  v101(v2, v4);
  if (v5)
  {
    v9 = *(v0 + 464);
    v10 = *(v0 + 448);
    v11 = *(v0 + 304);
    v12 = v11 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_introMomentGenerationDuration;
    swift_beginAccess();
    *v12 = v6;
    *(v12 + 8) = 0;
    outlined init with copy of Measurement<NSUnitDuration>?(v9, v10, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    v13 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_introMoment;
    swift_beginAccess();
    outlined assign with take of WorkoutVoiceMoment?(v10, v11 + v13, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    swift_endAccess();
  }

  v14 = *(v0 + 440);
  v15 = *(v0 + 352);
  v16 = *(v0 + 360);
  outlined init with copy of Measurement<NSUnitDuration>?(*(v0 + 464), v14, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v17 = *(v0 + 440);
    v18 = *(v0 + 280);
    outlined destroy of Measurement<NSUnitDuration>?(*(v0 + 464), &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    v19 = v17;
LABEL_18:
    outlined destroy of Measurement<NSUnitDuration>?(v19, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    v68 = type metadata accessor for InferenceResult();
    (*(*(v68 - 8) + 56))(v18, 1, 1, v68);
LABEL_19:
    v70 = *(v0 + 456);
    v69 = *(v0 + 464);
    v72 = *(v0 + 440);
    v71 = *(v0 + 448);
    v73 = *(v0 + 432);
    v75 = *(v0 + 400);
    v74 = *(v0 + 408);
    v76 = *(v0 + 384);
    v77 = *(v0 + 392);
    v94 = *(v0 + 376);
    v96 = *(v0 + 368);
    v98 = *(v0 + 344);
    v100 = *(v0 + 336);
    v103 = *(v0 + 328);
    v78 = *(v0 + 312);

    v79 = *(v0 + 8);

    return v79();
  }

  v21 = *(v0 + 336);
  v20 = *(v0 + 344);
  v22 = *(v0 + 304);
  (*(*(v0 + 360) + 32))(*(v0 + 384), *(v0 + 440), *(v0 + 352));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
  (*(*(v23 - 8) + 56))(v21, 6, 6, v23);
  LOBYTE(v22) = specialized static WorkoutVoiceMomentCoordinator.State.== infix(_:_:)(v20, v21);
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v21, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v20, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  v24 = &lazy protocol witness table cache variable for type WorkoutNotification and conformance WorkoutNotification;
  if (v22)
  {
    goto LABEL_8;
  }

  v25 = *(v0 + 304);
  if (*(v25 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_shouldCancelAllPendingAnnouncements) == 1)
  {
    goto LABEL_8;
  }

  v26 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceAvailabilityProvider;
  swift_beginAccess();
  outlined init with copy of WorkoutBuddyAvailabilityProviding(v25 + v26, v0 + 16);
  v27 = *(v0 + 40);
  v28 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1Tm_2((v0 + 16), v27);
  v29 = (*(v28 + 24))(v27, v28);
  __swift_destroy_boxed_opaque_existential_1Tm_19((v0 + 16));
  if (v29)
  {
LABEL_8:
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 376);
    v31 = *(v0 + 384);
    v32 = *(v0 + 352);
    v33 = *(v0 + 360);
    v34 = *(v0 + 304);
    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static WOLog.workoutVoice);
    v36 = *(v33 + 16);

    v36(v30, v31, v32);
    swift_retain_n();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 376);
    if (v39)
    {
      v99 = *(v0 + 360);
      v41 = *(v0 + 344);
      v95 = *(v0 + 368);
      v97 = *(v0 + 352);
      v42 = *(v0 + 304);
      v43 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v104 = v102;
      *v43 = 136315907;
      swift_getKeyPath();
      v93 = v36;
      swift_getKeyPath();
      static Published.subscript.getter();

      v44 = WorkoutVoiceMomentCoordinator.State.description.getter();
      v46 = v45;
      outlined destroy of WorkoutVoiceMomentCoordinator.State(v41, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v104);

      *(v43 + 4) = v47;
      *(v43 + 12) = 1024;
      LODWORD(v44) = *(v42 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_shouldCancelAllPendingAnnouncements);

      *(v43 + 14) = v44;

      *(v43 + 18) = 1024;
      v48 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceAvailabilityProvider;
      swift_beginAccess();
      outlined init with copy of WorkoutBuddyAvailabilityProviding(v42 + v48, v0 + 96);
      v49 = *(v0 + 120);
      v50 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1Tm_2((v0 + 96), v49);
      LOBYTE(v48) = (*(v50 + 24))(v49, v50);
      __swift_destroy_boxed_opaque_existential_1Tm_19((v0 + 96));

      *(v43 + 20) = v48 & 1;

      *(v43 + 24) = 2081;
      v93(v95, v40, v97);
      v51 = String.init<A>(describing:)();
      v53 = v52;
      v54 = *(v99 + 8);
      v54(v40, v97);
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v104);
      v24 = &lazy protocol witness table cache variable for type WorkoutNotification and conformance WorkoutNotification;

      *(v43 + 26) = v55;
      _os_log_impl(&dword_20AEA4000, v37, v38, "State is %s, shouldCancelAllPendingAnnouncements is %{BOOL}d, isWorkoutBuddyNoLongerAvailableInCurrentWorkout %{BOOL}d.  Stopping inference for moment %{private}s", v43, 0x22u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v102, -1, -1);
      MEMORY[0x20F2E9420](v43, -1, -1);
    }

    else
    {
      v56 = *(v0 + 352);
      v57 = *(v0 + 360);
      v58 = *(v0 + 304);

      v54 = *(v57 + 8);
      v54(v40, v56);
    }

    *(v0 + 496) = v54;
    v59 = *(v0 + 304);
    v60 = v24[185];
    swift_beginAccess();
    outlined init with copy of WorkoutBuddyAvailabilityProviding(v59 + v60, v0 + 56);
    v61 = *(v0 + 80);
    v62 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1Tm_2((v0 + 56), v61);
    LOBYTE(v59) = (*(v62 + 24))(v61, v62);
    __swift_destroy_boxed_opaque_existential_1Tm_19((v0 + 56));
    if ((v59 & 1) == 0)
    {
      v66 = *(v0 + 464);
      v18 = *(v0 + 280);
      v67 = *(v0 + 360) + 8;
      (*(v0 + 496))(*(v0 + 384), *(v0 + 352));
      v19 = v66;
      goto LABEL_18;
    }

    v63 = swift_task_alloc();
    *(v0 + 504) = v63;
    *v63 = v0;
    v63[1] = specialized WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:);
    v64 = *(v0 + 304);

    return specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(0);
  }

  else
  {
    v80 = *(v0 + 432);
    v81 = *(v0 + 416);
    v82 = *(v0 + 400);
    v83 = *(v0 + 288);
    v84 = type metadata accessor for InferenceResult();
    (*(*(v84 - 8) + 56))(v82, 1, 1, v84);
    v8(v80, v7, v81);
    lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentType and conformance WorkoutVoiceMomentType, MEMORY[0x277D0A480]);
    v85 = dispatch thunk of static Equatable.== infix(_:_:)();
    v101(v80, v81);
    if (v85)
    {
      v86 = *(v0 + 304);
      v87 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_hasWorkoutTransitionedToInSession;
      swift_beginAccess();
      if ((*(v86 + v87) & 1) == 0)
      {
        v92 = *(v0 + 464);
        (*(*(v0 + 360) + 8))(*(v0 + 384), *(v0 + 352));
        outlined destroy of Measurement<NSUnitDuration>?(v92, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
        outlined init with take of InferenceResult?(*(v0 + 400), *(v0 + 280), &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
        goto LABEL_19;
      }
    }

    v88 = swift_task_alloc();
    *(v0 + 512) = v88;
    *v88 = v0;
    v88[1] = specialized WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:);
    v90 = *(v0 + 384);
    v89 = *(v0 + 392);
    v91 = *(v0 + 304);

    return WorkoutVoiceMomentCoordinator.announceMoment(momentGenerationDuration:moment:)(v89, v90, v6);
  }
}

{
  v1 = v0[61];
  v2 = v0[51];
  v3 = v0[38];
  v4 = type metadata accessor for InferenceResult();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = v1;
  if (*(v3 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_isDemoMode) == 1)
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static WOLog.workoutVoice);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[61];
    if (v9)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_20AEA4000, v7, v8, "skipping analytics for demo mode", v11, 2u);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    v12 = v0[61];
    v13 = v0[39];
    outlined destroy of Measurement<NSUnitDuration>?(v0[51], &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
    swift_willThrow();

    v15 = v0[57];
    v14 = v0[58];
    v17 = v0[55];
    v16 = v0[56];
    v18 = v0[54];
    v20 = v0[50];
    v19 = v0[51];
    v22 = v0[48];
    v21 = v0[49];
    v23 = v0[47];
    v37 = v0[46];
    v38 = v0[43];
    v39 = v0[42];
    v40 = v0[41];
    v41 = v0[61];

    v24 = v0[1];

    return v24();
  }

  else
  {
    v26 = v0[52];
    v27 = v0[53];
    v42 = v0[51];
    v29 = v0[40];
    v28 = v0[41];
    v30 = v0[37];
    v31 = v0[38];
    v32 = v0[36];
    v33 = v31 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_analyticsIdentifier;
    v0[66] = *(v31 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_analyticsIdentifier);
    v0[67] = *(v33 + 8);
    v34 = v29[6];
    v35 = type metadata accessor for WorkoutState();
    (*(*(v35 - 8) + 16))(v28 + v34, v30, v35);
    (*(v27 + 16))(v28 + v29[7], v32, v26);
    outlined init with copy of Measurement<NSUnitDuration>?(v42, v28 + v29[8], &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
    v36 = *(v31 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_headphonesMonitor);
    v0[68] = v36;

    return MEMORY[0x2822009F8](specialized WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:), v36, 0);
  }
}

{
  v1 = *(*v0 + 504);
  v2 = *(*v0 + 304);
  v4 = *v0;

  return MEMORY[0x2822009F8](specialized WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:), v2, 0);
}

{
  v1 = *(v0 + 464);
  v2 = *(v0 + 280);
  v3 = *(v0 + 360) + 8;
  (*(v0 + 496))(*(v0 + 384), *(v0 + 352));
  outlined destroy of Measurement<NSUnitDuration>?(v1, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  v4 = type metadata accessor for InferenceResult();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v6 = *(v0 + 456);
  v5 = *(v0 + 464);
  v8 = *(v0 + 440);
  v7 = *(v0 + 448);
  v9 = *(v0 + 432);
  v11 = *(v0 + 400);
  v10 = *(v0 + 408);
  v12 = *(v0 + 384);
  v13 = *(v0 + 392);
  v17 = *(v0 + 376);
  v18 = *(v0 + 368);
  v19 = *(v0 + 344);
  v20 = *(v0 + 336);
  v21 = *(v0 + 328);
  v14 = *(v0 + 312);

  v15 = *(v0 + 8);

  return v15();
}

{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *v1;
  *(*v1 + 520) = v0;

  v5 = *(v2 + 304);
  if (v0)
  {
    v6 = specialized WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:);
  }

  else
  {
    v6 = specialized WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = v0[58];
  v3 = v0[49];
  v2 = v0[50];
  v4 = v0[48];
  v5 = v0[44];
  v6 = v0[45];
  outlined destroy of Measurement<NSUnitDuration>?(v2, &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  (*(v6 + 8))(v4, v5);
  outlined destroy of Measurement<NSUnitDuration>?(v1, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  outlined init with take of InferenceResult?(v3, v2, &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  outlined init with take of InferenceResult?(v0[50], v0[35], &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  v8 = v0[57];
  v7 = v0[58];
  v10 = v0[55];
  v9 = v0[56];
  v11 = v0[54];
  v13 = v0[50];
  v12 = v0[51];
  v14 = v0[48];
  v15 = v0[49];
  v19 = v0[47];
  v20 = v0[46];
  v21 = v0[43];
  v22 = v0[42];
  v23 = v0[41];
  v16 = v0[39];

  v17 = v0[1];

  return v17();
}

{
  v1 = v0[58];
  v2 = v0[48];
  v3 = v0[44];
  v4 = v0[45];
  v5 = v0[39];
  outlined destroy of Measurement<NSUnitDuration>?(v0[50], &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  (*(v4 + 8))(v2, v3);
  outlined destroy of Measurement<NSUnitDuration>?(v1, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);

  v7 = v0[57];
  v6 = v0[58];
  v9 = v0[55];
  v8 = v0[56];
  v10 = v0[54];
  v12 = v0[50];
  v11 = v0[51];
  v14 = v0[48];
  v13 = v0[49];
  v15 = v0[47];
  v18 = v0[46];
  v19 = v0[43];
  v20 = v0[42];
  v21 = v0[41];
  v22 = v0[65];

  v16 = v0[1];

  return v16();
}

{
  v1 = *(v0 + 544);
  *(v0 + 552) = *(v1 + 112);
  return MEMORY[0x2822009F8](specialized WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:), v1, 0);
}

{
  v1 = *(v0 + 304);
  *(v0 + 553) = *(*(v0 + 544) + 113);
  return MEMORY[0x2822009F8](specialized WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:), v1, 0);
}

{
  v1 = *(v0 + 553);
  v2 = *(v0 + 552);
  v3 = *(v0 + 536);
  v4 = *(v0 + 528);
  v5 = *(v0 + 488);
  v6 = *(v0 + 320);
  v7 = *(v0 + 328);
  *v7 = 0xD000000000000026;
  v7[1] = 0x800000020B469090;
  v7[2] = v4;
  v7[3] = v3;
  v8 = v7 + v6[9];
  *v8 = 0;
  v8[8] = 1;
  v9 = v7 + v6[10];
  *v9 = 0;
  v9[8] = 1;
  *(v7 + v6[11]) = v2;
  *(v7 + v6[12]) = v1;
  *(v7 + v6[13]) = 2;
  *(v7 + v6[14]) = v5;
  specialized WorkoutVoiceAnalyticsHandling.send()();
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v7, type metadata accessor for WorkoutVoiceMomentAnalyticsEvent);
  v10 = *(v0 + 488);
  v11 = *(v0 + 312);
  outlined destroy of Measurement<NSUnitDuration>?(*(v0 + 408), &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  swift_willThrow();

  v13 = *(v0 + 456);
  v12 = *(v0 + 464);
  v15 = *(v0 + 440);
  v14 = *(v0 + 448);
  v16 = *(v0 + 432);
  v18 = *(v0 + 400);
  v17 = *(v0 + 408);
  v20 = *(v0 + 384);
  v19 = *(v0 + 392);
  v21 = *(v0 + 376);
  v24 = *(v0 + 368);
  v25 = *(v0 + 344);
  v26 = *(v0 + 336);
  v27 = *(v0 + 328);
  v28 = *(v0 + 488);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[39] = a5;
  v6[40] = v5;
  v6[37] = a3;
  v6[38] = a4;
  v6[35] = a1;
  v6[36] = a2;
  v7 = type metadata accessor for WorkoutVoiceMomentAnalyticsEvent();
  v6[41] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[42] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR) - 8) + 64) + 15;
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v10 = *(*(type metadata accessor for WorkoutVoiceMomentCoordinator.State(0) - 8) + 64) + 15;
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v11 = type metadata accessor for WorkoutVoiceMoment();
  v6[48] = v11;
  v12 = *(v11 - 8);
  v6[49] = v12;
  v13 = *(v12 + 64) + 15;
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();
  v14 = type metadata accessor for WorkoutVoiceMomentType();
  v6[53] = v14;
  v15 = *(v14 - 8);
  v6[54] = v15;
  v16 = *(v15 + 64) + 15;
  v6[55] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR) - 8) + 64) + 15;
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v6[58] = swift_task_alloc();
  v6[59] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:), v5, 0);
}

uint64_t WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:)()
{
  v1 = *(v0 + 304);
  *(v0 + 480) = CFAbsoluteTimeGetCurrent();
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 488) = v3;
  *v3 = v0;
  v3[1] = WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:);
  v4 = *(v0 + 464);
  v5 = *(v0 + 312);

  return v7(v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v4 = *v1;
  *(*v1 + 496) = v0;

  v5 = *(v2 + 320);
  if (v0)
  {
    v6 = WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:);
  }

  else
  {
    v6 = WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v104 = v0;
  v1 = *(v0 + 480);
  v3 = *(v0 + 432);
  v2 = *(v0 + 440);
  v4 = *(v0 + 424);
  v5 = *(v0 + 288);
  outlined init with take of InferenceResult?(*(v0 + 464), *(v0 + 472), &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  v6 = CFAbsoluteTimeGetCurrent() - v1;
  v7 = *MEMORY[0x277D0A468];
  v8 = *(v3 + 104);
  v8(v2, v7, v4);
  LOBYTE(v5) = static WorkoutVoiceMomentType.== infix(_:_:)();
  v100 = *(v3 + 8);
  v100(v2, v4);
  if (v5)
  {
    v9 = *(v0 + 472);
    v10 = *(v0 + 456);
    v11 = *(v0 + 320);
    v12 = v11 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_introMomentGenerationDuration;
    swift_beginAccess();
    *v12 = v6;
    *(v12 + 8) = 0;
    outlined init with copy of Measurement<NSUnitDuration>?(v9, v10, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    v13 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_introMoment;
    swift_beginAccess();
    outlined assign with take of WorkoutVoiceMoment?(v10, v11 + v13, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    swift_endAccess();
  }

  v14 = *(v0 + 448);
  v15 = *(v0 + 384);
  v16 = *(v0 + 392);
  outlined init with copy of Measurement<NSUnitDuration>?(*(v0 + 472), v14, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v17 = *(v0 + 448);
    v18 = *(v0 + 280);
    outlined destroy of Measurement<NSUnitDuration>?(*(v0 + 472), &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    v19 = v17;
LABEL_18:
    outlined destroy of Measurement<NSUnitDuration>?(v19, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    v68 = type metadata accessor for InferenceResult();
    (*(*(v68 - 8) + 56))(v18, 1, 1, v68);
LABEL_19:
    v70 = *(v0 + 464);
    v69 = *(v0 + 472);
    v72 = *(v0 + 448);
    v71 = *(v0 + 456);
    v73 = *(v0 + 440);
    v75 = *(v0 + 408);
    v74 = *(v0 + 416);
    v76 = *(v0 + 400);
    v78 = *(v0 + 368);
    v77 = *(v0 + 376);
    v95 = *(v0 + 360);
    v97 = *(v0 + 352);
    v99 = *(v0 + 344);
    v102 = *(v0 + 336);

    v79 = *(v0 + 8);

    return v79();
  }

  v21 = *(v0 + 368);
  v20 = *(v0 + 376);
  v22 = *(v0 + 320);
  (*(*(v0 + 392) + 32))(*(v0 + 416), *(v0 + 448), *(v0 + 384));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
  (*(*(v23 - 8) + 56))(v21, 6, 6, v23);
  LOBYTE(v22) = specialized static WorkoutVoiceMomentCoordinator.State.== infix(_:_:)(v20, v21);
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v21, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v20, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  v24 = &lazy protocol witness table cache variable for type WorkoutNotification and conformance WorkoutNotification;
  if (v22)
  {
    goto LABEL_8;
  }

  v25 = *(v0 + 320);
  if (*(v25 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_shouldCancelAllPendingAnnouncements))
  {
    goto LABEL_8;
  }

  v26 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceAvailabilityProvider;
  swift_beginAccess();
  outlined init with copy of WorkoutBuddyAvailabilityProviding(v25 + v26, v0 + 16);
  v27 = *(v0 + 40);
  v28 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1Tm_2((v0 + 16), v27);
  v29 = (*(v28 + 24))(v27, v28);
  __swift_destroy_boxed_opaque_existential_1Tm_19((v0 + 16));
  if (v29)
  {
LABEL_8:
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 408);
    v31 = *(v0 + 416);
    v32 = *(v0 + 384);
    v33 = *(v0 + 392);
    v34 = *(v0 + 320);
    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static WOLog.workoutVoice);
    v36 = *(v33 + 16);

    v36(v30, v31, v32);
    swift_retain_n();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 408);
    if (v39)
    {
      v98 = *(v0 + 392);
      v41 = *(v0 + 376);
      v94 = *(v0 + 400);
      v96 = *(v0 + 384);
      v42 = *(v0 + 320);
      v43 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v103 = v101;
      *v43 = 136315907;
      swift_getKeyPath();
      v93 = v36;
      swift_getKeyPath();
      static Published.subscript.getter();

      v44 = WorkoutVoiceMomentCoordinator.State.description.getter();
      v46 = v45;
      outlined destroy of WorkoutVoiceMomentCoordinator.State(v41, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v103);

      *(v43 + 4) = v47;
      *(v43 + 12) = 1024;
      LODWORD(v44) = *(v42 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_shouldCancelAllPendingAnnouncements);

      *(v43 + 14) = v44;

      *(v43 + 18) = 1024;
      v48 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceAvailabilityProvider;
      swift_beginAccess();
      outlined init with copy of WorkoutBuddyAvailabilityProviding(v42 + v48, v0 + 96);
      v49 = *(v0 + 120);
      v50 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1Tm_2((v0 + 96), v49);
      LOBYTE(v48) = (*(v50 + 24))(v49, v50);
      __swift_destroy_boxed_opaque_existential_1Tm_19((v0 + 96));

      *(v43 + 20) = v48 & 1;

      *(v43 + 24) = 2081;
      v93(v94, v40, v96);
      v51 = String.init<A>(describing:)();
      v53 = v52;
      v54 = *(v98 + 8);
      v54(v40, v96);
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v103);
      v24 = &lazy protocol witness table cache variable for type WorkoutNotification and conformance WorkoutNotification;

      *(v43 + 26) = v55;
      _os_log_impl(&dword_20AEA4000, v37, v38, "State is %s, shouldCancelAllPendingAnnouncements is %{BOOL}d, isWorkoutBuddyNoLongerAvailableInCurrentWorkout %{BOOL}d.  Stopping inference for moment %{private}s", v43, 0x22u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v101, -1, -1);
      MEMORY[0x20F2E9420](v43, -1, -1);
    }

    else
    {
      v56 = *(v0 + 384);
      v57 = *(v0 + 392);
      v58 = *(v0 + 320);

      v54 = *(v57 + 8);
      v54(v40, v56);
    }

    *(v0 + 520) = v54;
    v59 = *(v0 + 320);
    v60 = v24[185];
    swift_beginAccess();
    outlined init with copy of WorkoutBuddyAvailabilityProviding(v59 + v60, v0 + 56);
    v61 = *(v0 + 80);
    v62 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1Tm_2((v0 + 56), v61);
    LOBYTE(v59) = (*(v62 + 24))(v61, v62);
    __swift_destroy_boxed_opaque_existential_1Tm_19((v0 + 56));
    if ((v59 & 1) == 0)
    {
      v66 = *(v0 + 472);
      v18 = *(v0 + 280);
      v67 = *(v0 + 392) + 8;
      (*(v0 + 520))(*(v0 + 416), *(v0 + 384));
      v19 = v66;
      goto LABEL_18;
    }

    v63 = swift_task_alloc();
    *(v0 + 528) = v63;
    *v63 = v0;
    v63[1] = WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:);
    v64 = *(v0 + 320);

    return specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(0);
  }

  else
  {
    v80 = *(v0 + 440);
    v81 = *(v0 + 424);
    v82 = *(v0 + 360);
    v83 = *(v0 + 288);
    v84 = type metadata accessor for InferenceResult();
    (*(*(v84 - 8) + 56))(v82, 1, 1, v84);
    v8(v80, v7, v81);
    lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentType and conformance WorkoutVoiceMomentType, MEMORY[0x277D0A480]);
    v85 = dispatch thunk of static Equatable.== infix(_:_:)();
    v100(v80, v81);
    if (v85)
    {
      v86 = *(v0 + 320);
      v87 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_hasWorkoutTransitionedToInSession;
      swift_beginAccess();
      if (*(v86 + v87) != 1)
      {
        v92 = *(v0 + 472);
        (*(*(v0 + 392) + 8))(*(v0 + 416), *(v0 + 384));
        outlined destroy of Measurement<NSUnitDuration>?(v92, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
        outlined init with take of InferenceResult?(*(v0 + 360), *(v0 + 280), &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
        goto LABEL_19;
      }
    }

    v88 = swift_task_alloc();
    *(v0 + 504) = v88;
    *v88 = v0;
    v88[1] = WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:);
    v89 = *(v0 + 416);
    v90 = *(v0 + 352);
    v91 = *(v0 + 320);

    return WorkoutVoiceMomentCoordinator.announceMoment(momentGenerationDuration:moment:)(v90, v89, v6);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v4 = *v1;
  *(*v1 + 512) = v0;

  v5 = *(v2 + 320);
  if (v0)
  {
    v6 = WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:);
  }

  else
  {
    v6 = WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = v0[59];
  v2 = v0[52];
  v3 = v0[48];
  v4 = v0[49];
  v6 = v0[44];
  v5 = v0[45];
  outlined destroy of Measurement<NSUnitDuration>?(v5, &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  (*(v4 + 8))(v2, v3);
  outlined destroy of Measurement<NSUnitDuration>?(v1, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  outlined init with take of InferenceResult?(v6, v5, &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  outlined init with take of InferenceResult?(v0[45], v0[35], &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  v8 = v0[58];
  v7 = v0[59];
  v10 = v0[56];
  v9 = v0[57];
  v11 = v0[55];
  v13 = v0[51];
  v12 = v0[52];
  v14 = v0[50];
  v16 = v0[46];
  v15 = v0[47];
  v19 = v0[45];
  v20 = v0[44];
  v21 = v0[43];
  v22 = v0[42];

  v17 = v0[1];

  return v17();
}

{
  v1 = *(*v0 + 528);
  v2 = *(*v0 + 320);
  v4 = *v0;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:), v2, 0);
}

{
  v1 = *(v0 + 472);
  v2 = *(v0 + 280);
  v3 = *(v0 + 392) + 8;
  (*(v0 + 520))(*(v0 + 416), *(v0 + 384));
  outlined destroy of Measurement<NSUnitDuration>?(v1, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  v4 = type metadata accessor for InferenceResult();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v6 = *(v0 + 464);
  v5 = *(v0 + 472);
  v8 = *(v0 + 448);
  v7 = *(v0 + 456);
  v9 = *(v0 + 440);
  v11 = *(v0 + 408);
  v10 = *(v0 + 416);
  v12 = *(v0 + 400);
  v14 = *(v0 + 368);
  v13 = *(v0 + 376);
  v17 = *(v0 + 360);
  v18 = *(v0 + 352);
  v19 = *(v0 + 344);
  v20 = *(v0 + 336);

  v15 = *(v0 + 8);

  return v15();
}

{
  v1 = v0[62];
  v2 = v0[43];
  v3 = v0[40];
  v4 = type metadata accessor for InferenceResult();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = v1;
  if (*(v3 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_isDemoMode) == 1)
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static WOLog.workoutVoice);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[62];
    if (v9)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_20AEA4000, v7, v8, "skipping analytics for demo mode", v11, 2u);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    v12 = v0[62];
    outlined destroy of Measurement<NSUnitDuration>?(v0[43], &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
    swift_willThrow();
    v14 = v0[58];
    v13 = v0[59];
    v16 = v0[56];
    v15 = v0[57];
    v17 = v0[55];
    v19 = v0[51];
    v18 = v0[52];
    v20 = v0[50];
    v21 = v0[46];
    v22 = v0[47];
    v36 = v0[45];
    v37 = v0[44];
    v38 = v0[43];
    v39 = v0[42];
    v40 = v0[62];

    v23 = v0[1];

    return v23();
  }

  else
  {
    v25 = v0[53];
    v26 = v0[54];
    v27 = v0[42];
    v41 = v0[43];
    v29 = v0[40];
    v28 = v0[41];
    v31 = v0[36];
    v30 = v0[37];
    v32 = v29 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_analyticsIdentifier;
    v0[67] = *(v29 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_analyticsIdentifier);
    v0[68] = *(v32 + 8);
    v33 = v28[6];
    v34 = type metadata accessor for WorkoutState();
    (*(*(v34 - 8) + 16))(v27 + v33, v30, v34);
    (*(v26 + 16))(v27 + v28[7], v31, v25);
    outlined init with copy of Measurement<NSUnitDuration>?(v41, v27 + v28[8], &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
    v35 = *(v29 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_headphonesMonitor);
    v0[69] = v35;

    return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:), v35, 0);
  }
}

{
  v1 = *(v0 + 552);
  *(v0 + 560) = *(v1 + 112);
  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:), v1, 0);
}

{
  v1 = *(v0 + 320);
  *(v0 + 561) = *(*(v0 + 552) + 113);
  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:), v1, 0);
}

{
  v1 = *(v0 + 561);
  v2 = *(v0 + 560);
  v3 = *(v0 + 544);
  v4 = *(v0 + 536);
  v5 = *(v0 + 496);
  v6 = *(v0 + 328);
  v7 = *(v0 + 336);
  *v7 = 0xD000000000000026;
  v7[1] = 0x800000020B469090;
  v7[2] = v4;
  v7[3] = v3;
  v8 = v7 + v6[9];
  *v8 = 0;
  v8[8] = 1;
  v9 = v7 + v6[10];
  *v9 = 0;
  v9[8] = 1;
  *(v7 + v6[11]) = v2;
  *(v7 + v6[12]) = v1;
  *(v7 + v6[13]) = 2;
  *(v7 + v6[14]) = v5;
  specialized WorkoutVoiceAnalyticsHandling.send()();
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v7, type metadata accessor for WorkoutVoiceMomentAnalyticsEvent);
  v10 = *(v0 + 496);
  outlined destroy of Measurement<NSUnitDuration>?(*(v0 + 344), &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  swift_willThrow();
  v12 = *(v0 + 464);
  v11 = *(v0 + 472);
  v14 = *(v0 + 448);
  v13 = *(v0 + 456);
  v15 = *(v0 + 440);
  v17 = *(v0 + 408);
  v16 = *(v0 + 416);
  v18 = *(v0 + 400);
  v19 = *(v0 + 368);
  v20 = *(v0 + 376);
  v23 = *(v0 + 360);
  v24 = *(v0 + 352);
  v25 = *(v0 + 344);
  v26 = *(v0 + 336);
  v27 = *(v0 + 496);

  v21 = *(v0 + 8);

  return v21();
}

{
  v1 = v0[59];
  v2 = v0[52];
  v3 = v0[48];
  v4 = v0[49];
  outlined destroy of Measurement<NSUnitDuration>?(v0[45], &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  (*(v4 + 8))(v2, v3);
  outlined destroy of Measurement<NSUnitDuration>?(v1, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  v6 = v0[58];
  v5 = v0[59];
  v8 = v0[56];
  v7 = v0[57];
  v9 = v0[55];
  v11 = v0[51];
  v10 = v0[52];
  v12 = v0[50];
  v13 = v0[46];
  v14 = v0[47];
  v17 = v0[45];
  v18 = v0[44];
  v19 = v0[43];
  v20 = v0[42];
  v21 = v0[64];

  v15 = v0[1];

  return v15();
}

void WorkoutVoiceMomentCoordinator.resetCachedState()()
{
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  v3 = MEMORY[0x20F2E6C00](*(v0 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_siriFallbackUserDefaultsKey), *(v0 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_siriFallbackUserDefaultsKey + 8));
  [v2 removeObjectForKey_];

  v4 = [v1 standardUserDefaults];
  v5 = MEMORY[0x20F2E6C00](*(v0 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_muteStatusUserDefaultsKey), *(v0 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_muteStatusUserDefaultsKey + 8));
  [v4 removeObjectForKey_];

  v6 = [v1 standardUserDefaults];
  v7 = MEMORY[0x20F2E6C00](*(v0 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_sessionIdentifierKey), *(v0 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_sessionIdentifierKey + 8));
  [v6 removeObjectForKey_];
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.persistTranscript()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v6 = type metadata accessor for WorkoutVoiceTranscript();
  v4[13] = v6;
  v7 = *(v6 - 8);
  v4[14] = v7;
  v8 = *(v7 + 64) + 15;
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.persistTranscript(), a4, 0);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.persistTranscript()()
{
  *(v0 + 128) = *(*(v0 + 96) + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceSession);
  type metadata accessor for WorkoutVoiceSession();
  lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceSession and conformance WorkoutVoiceSession, MEMORY[0x277D0A370]);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.persistTranscript(), v2, v1);
}

{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[12];
  dispatch thunk of WorkoutVoiceSession.transcript.getter();

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.persistTranscript(), v3, 0);
}

{
  v1 = v0[15];
  v2 = v0[13];
  lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceTranscript and conformance WorkoutVoiceTranscript, MEMORY[0x277D0A498]);
  v3 = SnapshotSerializable.protobufData()();
  v4 = v0[12];
  v5 = v3;
  v7 = v6;
  (*(v0[14] + 8))(v0[15], v0[13]);
  v8 = *(v4 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_sessionActivity);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  *(inited + 32) = 0xD00000000000002BLL;
  *(inited + 72) = MEMORY[0x277CC9318];
  *(inited + 40) = 0x800000020B4687C0;
  *(inited + 48) = v5;
  *(inited + 56) = v7;
  outlined copy of Data._Representation(v5, v7);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of Measurement<NSUnitDuration>?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v8 insertOrUpdateMetadata:isa forceTopLevel:1];

  outlined consume of Data._Representation(v5, v7);
  v11 = v0[15];

  v12 = v0[1];

  return v12();
}

uint64_t WorkoutVoiceMomentCoordinator.cancelAnyPendingAnnouncements()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.cancelAnyPendingAnnouncements(), v0, 0);
}

{
  *(*(v0 + 16) + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_shouldCancelAllPendingAnnouncements) = 1;
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = WorkoutVoiceMomentCoordinator.cancelAnyPendingAnnouncements();
  v2 = *(v0 + 16);

  return WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny()();
}

uint64_t WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny()()
{
  v1[8] = v0;
  v2 = type metadata accessor for AnnounceCancellationResult();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v5 = type metadata accessor for AnnounceCancellationRequest();
  v1[13] = v5;
  v6 = *(v5 - 8);
  v1[14] = v6;
  v7 = *(v6 + 64) + 15;
  v1[15] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR) - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v9 = type metadata accessor for AnnounceUtteranceRequest();
  v1[17] = v9;
  v10 = *(v9 - 8);
  v1[18] = v10;
  v11 = *(v10 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR) - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v13 = type metadata accessor for WorkoutVoiceMoment();
  v1[24] = v13;
  v14 = *(v13 - 8);
  v1[25] = v14;
  v15 = *(v14 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny(), v0, 0);
}

{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[8];
  v5 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_momentInFlight;
  swift_beginAccess();
  outlined init with copy of Measurement<NSUnitDuration>?(v4 + v5, v3, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of Measurement<NSUnitDuration>?(v0[23], &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    v6 = v0[17];
    v7 = v0[18];
    v8 = v0[16];
    v9 = v0[8];
    v10 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_alertAnnouncementInFlight;
    swift_beginAccess();
    outlined init with copy of Measurement<NSUnitDuration>?(v9 + v10, v8, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR);
    if ((*(v7 + 48))(v8, 1, v6) == 1)
    {
      outlined destroy of Measurement<NSUnitDuration>?(v0[16], &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR);
      v12 = v0[28];
      v11 = v0[29];
      v14 = v0[26];
      v13 = v0[27];
      v16 = v0[22];
      v15 = v0[23];
      v18 = v0[20];
      v17 = v0[21];
      v19 = v0[19];
      v20 = v0[16];
      v34 = v0[15];
      v35 = v0[12];
      v36 = v0[11];

      v21 = v0[1];

      return v21();
    }

    else
    {
      v28 = v0[15];
      v29 = v0[8];
      (*(v0[18] + 32))(v0[22], v0[16], v0[17]);
      AnnounceUtteranceRequest.requestIdentifier.getter();
      AnnounceCancellationRequest.init(requestIdentifier:)();
      v30 = *(MEMORY[0x277D09FD0] + 4);
      v31 = swift_task_alloc();
      v0[32] = v31;
      *v31 = v0;
      v31[1] = WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny();
      v32 = v0[15];
      v33 = v0[12];

      return MEMORY[0x282160A90](v33, v32);
    }
  }

  else
  {
    v23 = v0[8];
    (*(v0[25] + 32))(v0[29], v0[23], v0[24]);
    v24 = *(v23 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceSession);
    v25 = *(MEMORY[0x277D0A350] + 4);
    v37 = (*MEMORY[0x277D0A350] + MEMORY[0x277D0A350]);
    v26 = swift_task_alloc();
    v0[30] = v26;
    *v26 = v0;
    v26[1] = WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny();
    v27 = v0[29];

    return v37(v27);
  }
}

{
  v58 = v0;
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static WOLog.workoutVoice);
  v6 = *(v4 + 16);
  v6(v1, v2, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 272);
    v10 = *(v0 + 224);
    v55 = *(v0 + 232);
    v11 = *(v0 + 216);
    v12 = *(v0 + 192);
    v50 = *(v0 + 200);
    v13 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v57 = v51;
    *v13 = 67109379;
    *(v13 + 4) = v9;
    *(v13 + 8) = 2081;
    v14 = v10;
    v15 = v10;
    v16 = v12;
    v6(v11, v14, v12);
    v53 = v12;
    v17 = String.init<A>(describing:)();
    v19 = v18;
    v20 = *(v50 + 8);
    v20(v15, v16);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v57);

    *(v13 + 10) = v21;
    _os_log_impl(&dword_20AEA4000, v7, v8, "Result of canceling announcement: %{BOOL}d, for %{private}s", v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm_19(v51);
    MEMORY[0x20F2E9420](v51, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);

    v20(v55, v53);
  }

  else
  {
    v23 = *(v0 + 224);
    v22 = *(v0 + 232);
    v24 = *(v0 + 192);
    v25 = *(v0 + 200);

    v26 = *(v25 + 8);
    v26(v23, v24);
    v26(v22, v24);
  }

  v27 = *(v0 + 136);
  v28 = *(v0 + 144);
  v29 = *(v0 + 128);
  v30 = *(v0 + 64);
  v31 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_alertAnnouncementInFlight;
  swift_beginAccess();
  outlined init with copy of Measurement<NSUnitDuration>?(v30 + v31, v29, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR);
  if ((*(v28 + 48))(v29, 1, v27) == 1)
  {
    outlined destroy of Measurement<NSUnitDuration>?(*(v0 + 128), &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR);
    v33 = *(v0 + 224);
    v32 = *(v0 + 232);
    v35 = *(v0 + 208);
    v34 = *(v0 + 216);
    v37 = *(v0 + 176);
    v36 = *(v0 + 184);
    v39 = *(v0 + 160);
    v38 = *(v0 + 168);
    v40 = *(v0 + 152);
    v41 = *(v0 + 128);
    v52 = *(v0 + 120);
    v54 = *(v0 + 96);
    v56 = *(v0 + 88);

    v42 = *(v0 + 8);

    return v42();
  }

  else
  {
    v44 = *(v0 + 120);
    v45 = *(v0 + 64);
    (*(*(v0 + 144) + 32))(*(v0 + 176), *(v0 + 128), *(v0 + 136));
    AnnounceUtteranceRequest.requestIdentifier.getter();
    AnnounceCancellationRequest.init(requestIdentifier:)();
    v46 = *(MEMORY[0x277D09FD0] + 4);
    v47 = swift_task_alloc();
    *(v0 + 256) = v47;
    *v47 = v0;
    v47[1] = WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny();
    v48 = *(v0 + 120);
    v49 = *(v0 + 96);

    return MEMORY[0x282160A90](v49, v48);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny();
  }

  else
  {
    v6 = WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny();
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v62 = v0;
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[17];
  v4 = v0[18];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[9];
  v8 = v0[10];
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static WOLog.workoutVoice);
  (*(v8 + 16))(v6, v5, v7);
  v10 = *(v4 + 16);
  v10(v1, v2, v3);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[21];
  v59 = v0[22];
  if (v13)
  {
    v48 = v0[18];
    v46 = v0[20];
    v47 = v0[17];
    v53 = v0[13];
    v56 = v0[15];
    v51 = v0[12];
    v52 = v0[14];
    v50 = v12;
    v16 = v0[10];
    v15 = v0[11];
    v17 = v0[9];
    v18 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v61 = v49;
    *v18 = 67109379;
    v19 = AnnounceCancellationResult.cancellationSuccess.getter() & 1;
    v20 = *(v16 + 8);
    v20(v15, v17);
    *(v18 + 4) = v19;
    *(v18 + 8) = 2081;
    v10(v46, v14, v47);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    v24 = *(v48 + 8);
    v24(v14, v47);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v61);

    *(v18 + 10) = v25;
    _os_log_impl(&dword_20AEA4000, v11, v50, "Result of canceling announcement: %{BOOL}d for %{private}s", v18, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm_19(v49);
    MEMORY[0x20F2E9420](v49, -1, -1);
    MEMORY[0x20F2E9420](v18, -1, -1);

    v20(v51, v17);
    (*(v52 + 8))(v56, v53);
    v24(v59, v47);
  }

  else
  {
    v26 = v0[17];
    v27 = v0[18];
    v28 = v0[14];
    v30 = v0[12];
    v29 = v0[13];
    v54 = v29;
    v57 = v0[15];
    v31 = v0[9];
    v32 = *(v0[10] + 8);
    v32(v0[11], v31);

    v33 = *(v27 + 8);
    v33(v14, v26);
    v32(v30, v31);
    (*(v28 + 8))(v57, v54);
    v33(v59, v26);
  }

  v35 = v0[28];
  v34 = v0[29];
  v37 = v0[26];
  v36 = v0[27];
  v39 = v0[22];
  v38 = v0[23];
  v41 = v0[20];
  v40 = v0[21];
  v42 = v0[19];
  v43 = v0[16];
  v55 = v0[15];
  v58 = v0[12];
  v60 = v0[11];

  v44 = v0[1];

  return v44();
}

{
  v61 = v0;
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v1 = v0[31];
  v2 = v0[29];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.workoutVoice);
  v7 = *(v4 + 16);
  v7(v3, v2, v5);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[31];
  v13 = v0[29];
  if (v11)
  {
    v54 = v0[31];
    v14 = v0[26];
    v15 = v0[27];
    v16 = v0[24];
    v52 = v0[25];
    v58 = v0[29];
    v17 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v60 = v55;
    *v17 = 136380931;
    v7(v15, v14, v16);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    v21 = *(v52 + 8);
    v21(v14, v16);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v60);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2112;
    v23 = v54;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v24;
    *v53 = v24;
    _os_log_impl(&dword_20AEA4000, v9, v10, "Could not cancel announcement for %{private}s, error %@", v17, 0x16u);
    outlined destroy of Measurement<NSUnitDuration>?(v53, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v53, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_19(v55);
    MEMORY[0x20F2E9420](v55, -1, -1);
    MEMORY[0x20F2E9420](v17, -1, -1);

    v21(v58, v16);
  }

  else
  {
    v26 = v0[25];
    v25 = v0[26];
    v27 = v0[24];

    v28 = *(v26 + 8);
    v28(v25, v27);
    v28(v13, v27);
  }

  v29 = v0[17];
  v30 = v0[18];
  v31 = v0[16];
  v32 = v0[8];
  v33 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_alertAnnouncementInFlight;
  swift_beginAccess();
  outlined init with copy of Measurement<NSUnitDuration>?(v32 + v33, v31, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR);
  if ((*(v30 + 48))(v31, 1, v29) == 1)
  {
    outlined destroy of Measurement<NSUnitDuration>?(v0[16], &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR);
    v35 = v0[28];
    v34 = v0[29];
    v37 = v0[26];
    v36 = v0[27];
    v39 = v0[22];
    v38 = v0[23];
    v41 = v0[20];
    v40 = v0[21];
    v42 = v0[19];
    v43 = v0[16];
    v56 = v0[15];
    v57 = v0[12];
    v59 = v0[11];

    v44 = v0[1];

    return v44();
  }

  else
  {
    v46 = v0[15];
    v47 = v0[8];
    (*(v0[18] + 32))(v0[22], v0[16], v0[17]);
    AnnounceUtteranceRequest.requestIdentifier.getter();
    AnnounceCancellationRequest.init(requestIdentifier:)();
    v48 = *(MEMORY[0x277D09FD0] + 4);
    v49 = swift_task_alloc();
    v0[32] = v49;
    *v49 = v0;
    v49[1] = WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny();
    v50 = v0[15];
    v51 = v0[12];

    return MEMORY[0x282160A90](v51, v50);
  }
}

{
  v50 = v0;
  (*(v0[14] + 8))(v0[15], v0[13]);
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v1 = v0[33];
  v2 = v0[22];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.workoutVoice);
  v7 = *(v4 + 16);
  v7(v3, v2, v5);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[33];
  v13 = v0[22];
  if (v11)
  {
    v43 = v0[33];
    v14 = v0[19];
    v15 = v0[20];
    v16 = v0[17];
    v41 = v0[18];
    v47 = v0[22];
    v17 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v49 = v44;
    *v17 = 136380931;
    v7(v15, v14, v16);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    v21 = *(v41 + 8);
    v21(v14, v16);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v49);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2112;
    v23 = v43;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v24;
    *v42 = v24;
    _os_log_impl(&dword_20AEA4000, v9, v10, "Could not cancel announcement for %{private}s, error %@", v17, 0x16u);
    outlined destroy of Measurement<NSUnitDuration>?(v42, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v42, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_19(v44);
    MEMORY[0x20F2E9420](v44, -1, -1);
    MEMORY[0x20F2E9420](v17, -1, -1);

    v21(v47, v16);
  }

  else
  {
    v26 = v0[18];
    v25 = v0[19];
    v27 = v0[17];

    v28 = *(v26 + 8);
    v28(v25, v27);
    v28(v13, v27);
  }

  v30 = v0[28];
  v29 = v0[29];
  v32 = v0[26];
  v31 = v0[27];
  v34 = v0[22];
  v33 = v0[23];
  v36 = v0[20];
  v35 = v0[21];
  v37 = v0[19];
  v38 = v0[16];
  v45 = v0[15];
  v46 = v0[12];
  v48 = v0[11];

  v39 = v0[1];

  return v39();
}

uint64_t WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny()(char a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 240);
  v6 = *v2;
  *(v4 + 272) = a1;
  *(v4 + 248) = v1;

  v7 = *(v3 + 64);
  if (v1)
  {
    v8 = WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny();
  }

  else
  {
    v8 = WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny();
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t WorkoutVoiceMomentCoordinator.setWorkoutBuddyMuted(_:)(char a1)
{
  *(v2 + 128) = v1;
  *(v2 + 160) = a1;
  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setWorkoutBuddyMuted(_:), v1, 0);
}

uint64_t WorkoutVoiceMomentCoordinator.setWorkoutBuddyMuted(_:)()
{
  v1 = *(*(v0 + 128) + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_displayStateHandler);
  *(v0 + 136) = v1;
  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setWorkoutBuddyMuted(_:), v1, 0);
}

{
  v2 = *(v0 + 160);
  *(*(v0 + 136) + 115) = v2;
  if (v2 == 1)
  {
    *(*(v0 + 136) + 114) = 2;
  }

  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  *v3 = v0;
  v3[1] = WorkoutVoiceMomentCoordinator.setWorkoutBuddyMuted(_:);
  v4 = *(v0 + 136);

  return WorkoutBuddyDisplayStateHandler.notifyObserversIfNeeded(forceNotifyObservers:)(0);
}

{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setWorkoutBuddyMuted(_:), v2, 0);
}

{
  if (*(v0 + 160) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 152) = v1;
    *v1 = v0;
    v1[1] = WorkoutVoiceMomentCoordinator.setWorkoutBuddyMuted(_:);
    v2 = *(v0 + 128);

    return WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny()();
  }

  else
  {
    v4 = *(v0 + 128);
    v5 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_liveWorkoutConfiguration;
    v6 = *(v4 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_liveWorkoutConfiguration);
    v7 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyMuted;
    swift_beginAccess();
    *(v6 + v7) = 0;
    v8 = [objc_opt_self() standardUserDefaults];
    v9 = MEMORY[0x20F2E6C00](*(v4 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_muteStatusUserDefaultsKey), *(v4 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_muteStatusUserDefaultsKey + 8));
    [v8 setBool:0 forKey:v9];

    v10 = *(v4 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_metricsPublisher);
    if (v10)
    {
      v11 = *(v0 + 128);
      v12 = *(v0 + 160);
      v13 = *(v10 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_elapsedTimeMetricsPublisher);
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v14 = *(v0 + 120);
      v15 = *(*(v4 + v5) + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
      v16 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
      swift_beginAccess();
      v17 = [*(v15 + v16) workoutActivityType];
      v18 = *(v11 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_analyticsIdentifier);
      v19 = *(v11 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_analyticsIdentifier + 8);
      *(v0 + 16) = 0xD000000000000033;
      *(v0 + 24) = 0x800000020B4690C0;
      *(v0 + 32) = v17;
      *(v0 + 40) = v12;
      *(v0 + 48) = v18;
      *(v0 + 56) = v19;
      *(v0 + 64) = v14;

      specialized WorkoutVoiceAnalyticsHandling.send()();
    }

    v20 = *(v0 + 8);

    return v20();
  }
}

{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setWorkoutBuddyMuted(_:), v2, 0);
}

{
  v1 = *(v0 + 128);
  v2 = *(v0 + 160);
  v3 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_liveWorkoutConfiguration;
  v4 = *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_liveWorkoutConfiguration);
  v5 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyMuted;
  swift_beginAccess();
  *(v4 + v5) = v2;
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = MEMORY[0x20F2E6C00](*(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_muteStatusUserDefaultsKey), *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_muteStatusUserDefaultsKey + 8));
  [v6 setBool:v2 forKey:v7];

  v8 = *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_metricsPublisher);
  if (v8)
  {
    v9 = *(v0 + 128);
    v10 = *(v0 + 160);
    v11 = *(v8 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_elapsedTimeMetricsPublisher);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v12 = *(v0 + 120);
    v13 = *(*(v1 + v3) + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
    v14 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    swift_beginAccess();
    v15 = [*(v13 + v14) workoutActivityType];
    v16 = *(v9 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_analyticsIdentifier);
    v17 = *(v9 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_analyticsIdentifier + 8);
    *(v0 + 16) = 0xD000000000000033;
    *(v0 + 24) = 0x800000020B4690C0;
    *(v0 + 32) = v15;
    *(v0 + 40) = v10;
    *(v0 + 48) = v16;
    *(v0 + 56) = v17;
    *(v0 + 64) = v12;

    specialized WorkoutVoiceAnalyticsHandling.send()();
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t WorkoutVoiceMomentCoordinator.setHeadphonesConnected(_:)(char a1)
{
  *(v2 + 128) = v1;
  *(v2 + 216) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  v4 = type metadata accessor for WorkoutState();
  *(v2 + 144) = v4;
  v5 = *(v4 - 8);
  *(v2 + 152) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setHeadphonesConnected(_:), v1, 0);
}

uint64_t WorkoutVoiceMomentCoordinator.setHeadphonesConnected(_:)()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 216);
  v3 = *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_liveWorkoutConfiguration);
  v4 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyUnavailableDueToHeadphonesOff;
  swift_beginAccess();
  *(v3 + v4) = (v2 & 1) == 0;
  v5 = *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_displayStateHandler);
  *(v0 + 168) = v5;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setHeadphonesConnected(_:), v5, 0);
}

{
  v1 = *(v0 + 216);
  *(*(v0 + 168) + 112) = v1;
  if ((v1 & 1) == 0)
  {
    *(*(v0 + 168) + 114) = 2;
  }

  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = WorkoutVoiceMomentCoordinator.setHeadphonesConnected(_:);
  v3 = *(v0 + 168);

  return WorkoutBuddyDisplayStateHandler.notifyObserversIfNeeded(forceNotifyObservers:)(0);
}

{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setHeadphonesConnected(_:), v2, 0);
}

{
  if (*(v0 + 216) != 1)
  {
    goto LABEL_5;
  }

  v1 = *(v0 + 128);
  v2 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_startedDisconnected;
  *(v0 + 184) = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_startedDisconnected;
  v3 = *(v1 + v2);
  if (v3 == 2)
  {
    goto LABEL_5;
  }

  if ((v3 & 1) == 0)
  {
    goto LABEL_5;
  }

  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 144);
  v7 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  (*(v5 + 16))(v4, v1 + v7, v6);
  WorkoutState.duration.getter();
  v9 = v8;
  (*(v5 + 8))(v4, v6);
  if (v9 <= 45.0)
  {
    v14 = *(v0 + 128);
    v15 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceAvailabilityProvider;
    swift_beginAccess();
    outlined init with copy of WorkoutBuddyAvailabilityProviding(v14 + v15, v0 + 16);
    v16 = *(v0 + 40);
    v17 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1Tm_2((v0 + 16), v16);
    v18 = *(v17 + 8);
    v21 = (v18 + *v18);
    v19 = v18[1];
    v20 = swift_task_alloc();
    *(v0 + 192) = v20;
    *v20 = v0;
    v20[1] = WorkoutVoiceMomentCoordinator.setHeadphonesConnected(_:);

    return v21(v16, v17);
  }

  else
  {
LABEL_5:
    v10 = *(v0 + 160);
    v11 = *(v0 + 136);

    v12 = *(v0 + 8);

    return v12();
  }
}

{
  v1 = v0[16];
  __swift_destroy_boxed_opaque_existential_1Tm_19(v0 + 2);
  v2 = *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_headphonesMonitor);
  v0[26] = v2;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setHeadphonesConnected(_:), v2, 0);
}

{
  v1 = *(v0 + 128);
  *(v0 + 217) = *(*(v0 + 208) + 112);
  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setHeadphonesConnected(_:), v1, 0);
}

{
  v1 = *(v0 + 200);
  if (*(v0 + 217))
  {
    if (v1 != 1)
    {
      goto LABEL_8;
    }

LABEL_6:
    v3 = *(v0 + 128);
    v4 = *(v0 + 136);
    *(v3 + *(v0 + 184)) = 0;
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator);
    v7 = swift_allocObject();
    v7[2] = v3;
    v7[3] = v6;
    v7[4] = v3;
    swift_retain_n();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady()partial apply, v7);

    goto LABEL_9;
  }

  v2 = FIShowAudioTranscriptions();
  if (v1 == 1)
  {
    if (!v2)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v1 = *(v0 + 200);
LABEL_8:
  outlined consume of WorkoutVoiceAvailabilityProvider.State(v1);
LABEL_9:
  v8 = *(v0 + 160);
  v9 = *(v0 + 136);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t WorkoutVoiceMomentCoordinator.setHeadphonesConnected(_:)(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 200) = a1;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setHeadphonesConnected(_:), v3, 0);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance WorkoutVoiceMomentCoordinator@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WorkoutVoiceMomentCoordinator(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.state.getter in conformance WorkoutVoiceMomentCoordinator()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.state.setter in conformance WorkoutVoiceMomentCoordinator(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of WorkoutVoiceMomentCoordinator.State(a1, v5);

  static Published.subscript.setter();
  WorkoutVoiceMomentCoordinator.state.didset();
  return outlined destroy of WorkoutVoiceMomentCoordinator.State(a1, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
}

void (*protocol witness for WorkoutBuddyMomentCoordinating.state.modify in conformance WorkoutVoiceMomentCoordinator(void *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = WorkoutVoiceMomentCoordinator.state.modify(v2);
  return protocol witness for WorkoutBuddyMomentCoordinating.state.modify in conformance WorkoutVoiceMomentCoordinator;
}

void protocol witness for WorkoutBuddyMomentCoordinating.state.modify in conformance WorkoutVoiceMomentCoordinator(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.workoutState.getter in conformance WorkoutVoiceMomentCoordinator@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  v4 = type metadata accessor for WorkoutState();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.workoutState.setter in conformance WorkoutVoiceMomentCoordinator(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  v4 = type metadata accessor for WorkoutState();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.hasWorkoutTransitionedToInSession.getter in conformance WorkoutVoiceMomentCoordinator()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_hasWorkoutTransitionedToInSession;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.hasWorkoutTransitionedToInSession.setter in conformance WorkoutVoiceMomentCoordinator(char a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_hasWorkoutTransitionedToInSession;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.introMomentGenerationDuration.getter in conformance WorkoutVoiceMomentCoordinator()
{
  v1 = (v0 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_introMomentGenerationDuration);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.introMomentGenerationDuration.setter in conformance WorkoutVoiceMomentCoordinator(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_introMomentGenerationDuration;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.outroInferenceResult.getter in conformance WorkoutVoiceMomentCoordinator@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return outlined init with copy of Measurement<NSUnitDuration>?(v4 + v8, a4, a2, a3);
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.introMoment.setter in conformance WorkoutVoiceMomentCoordinator(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_introMoment;
  swift_beginAccess();
  outlined assign with take of WorkoutVoiceMoment?(a1, v1 + v3, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  return swift_endAccess();
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.setDelegate(_:) in conformance WorkoutVoiceMomentCoordinator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for WorkoutBuddyMomentCoordinating.setDelegate(_:) in conformance WorkoutVoiceMomentCoordinator;

  return WorkoutVoiceMomentCoordinator.setDelegate(_:)(a1, a2);
}