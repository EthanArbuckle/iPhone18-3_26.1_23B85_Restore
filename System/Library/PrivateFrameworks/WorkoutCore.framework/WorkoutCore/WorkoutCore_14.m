id WorkoutNotification.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutNotification();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *protocol witness for Decodable.init(from:) in conformance WorkoutNotification@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for WorkoutNotification());
  result = WorkoutNotification.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t WorkoutNotification.protobuf.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v62);
  v55 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
  v59 = *(v60 - 8);
  v11 = *(v59 + 64);
  MEMORY[0x28223BE20](v60);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x277D84F90];
  v14 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  v15 = a1 + *(v14 + 28);
  UnknownStorage.init()();
  v16 = a1 + *(v14 + 32);
  *v16 = 0;
  v54 = v16;
  *(v16 + 8) = 1;
  v17 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_notificationType;
  swift_beginAccess();
  *a1 = qword_20B42E9A0[*(v1 + v17)];
  *(a1 + 8) = 1;
  v18 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_units;
  result = swift_beginAccess();
  v20 = *(v1 + v18);
  if (v20 >> 62)
  {
    if (v20 < 0)
    {
      v47 = *(v1 + v18);
    }

    v48 = *(v1 + v18);
    result = __CocoaSet.count.getter();
    v20 = v48;
    v21 = result;
    if (!result)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
LABEL_23:
      v42 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_displayDuration;
      swift_beginAccess();
      *(a1 + 24) = *(v1 + v42);
      v43 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_createdAt;
      swift_beginAccess();
      (*(v4 + 16))(v7, v1 + v43, v3);
      Date.timeIntervalSinceReferenceDate.getter();
      v45 = v44;
      result = (*(v4 + 8))(v7, v3);
      v46 = v54;
      *v54 = v45;
      *(v46 + 8) = 0;
      return result;
    }
  }

  if (v21 >= 1)
  {
    v49 = a1;
    v50 = v7;
    v51 = v1;
    v52 = v4;
    v53 = v3;
    v56 = v20 & 0xC000000000000001;
    v61 = (v8 + 56);
    v22 = v20;

    v23 = v22;
    v24 = 0;
    v25 = MEMORY[0x277D84F90];
    v58 = v22;
    v57 = v21;
    do
    {
      if (v56)
      {
        v26 = MEMORY[0x20F2E7A20](v24, v23);
      }

      else
      {
        v26 = *(v23 + 8 * v24 + 32);
      }

      *v13 = 0;
      v13[8] = 1;
      v27 = v60;
      v28 = &v13[*(v60 + 20)];
      UnknownStorage.init()();
      v29 = &v13[v27[6]];
      *v29 = 0;
      *(v29 + 1) = 0;
      v30 = &v13[v27[7]];
      *v30 = 0;
      v30[8] = 1;
      v31 = v27[8];
      v32 = *v61;
      (*v61)(&v13[v31], 1, 1, v62);
      v33 = &v13[v27[9]];
      *v33 = 0;
      *(v33 + 1) = 0;
      swift_beginAccess();
      *v13 = qword_20B42E9E0[*(v26 + 16)];
      v13[8] = 1;
      swift_beginAccess();
      v34 = *(v26 + 32);
      if (v34)
      {
        *v29 = *(v26 + 24);
        *(v29 + 1) = v34;
      }

      swift_beginAccess();
      if ((*(v26 + 48) & 1) == 0)
      {
        *v30 = *(v26 + 40);
        v30[8] = 0;
      }

      swift_beginAccess();
      v35 = *(v26 + 64);
      if (v35)
      {
        *v33 = *(v26 + 56);
        *(v33 + 1) = v35;
      }

      swift_beginAccess();
      v36 = *(v26 + 72);

      if (v36)
      {
        v37 = v36;

        v38 = v55;
        FIUIWorkoutActivityType.protobuf.getter(v55);

        outlined destroy of Any?(&v13[v31], &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
        outlined init with take of Apple_Workout_Core_WorkoutNotificationUnit(v38, &v13[v31], type metadata accessor for Apple_Workout_Core_Activity);
        v32(&v13[v31], 0, 1, v62);
      }

      else
      {
      }

      v39 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25[2] + 1, 1, v25);
      }

      v41 = v25[2];
      v40 = v25[3];
      if (v41 >= v40 >> 1)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v40 > 1, v41 + 1, 1, v25);
      }

      ++v24;

      v25[2] = v41 + 1;
      outlined init with take of Apple_Workout_Core_WorkoutNotificationUnit(v13, v25 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v41, type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit);
      v23 = v58;
    }

    while (v39 != v24);

    a1 = v49;
    *(v49 + 16) = v25;
    v3 = v53;
    v4 = v52;
    v1 = v51;
    v7 = v50;
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

_BYTE *Apple_Workout_Core_WorkoutNotification.decoded.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v28 = *(v2 - 8);
  v29 = v2;
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(type metadata accessor for WorkoutNotification()) init];
  v12 = *(v0 + 8);
  v31 = *v0;
  v32 = v12;
  Apple_Workout_Core_NotificationType.decoded.getter(v30);
  v13 = v30[0];
  v14 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_notificationType;
  swift_beginAccess();
  v11[v14] = v13;
  v15 = v1[2];
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_units;
    v18 = v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v19 = *(v7 + 72);
    do
    {
      outlined init with copy of Apple_Workout_Core_WorkoutNotificationUnit(v18, v10);
      Apple_Workout_Core_WorkoutNotificationUnit.decoded.getter();
      outlined destroy of Apple_Workout_Core_WorkoutNotificationUnit(v10);
      v20 = swift_beginAccess();
      MEMORY[0x20F2E6F30](v20);
      if (*((*&v11[v17] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v11[v17] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v27 = *((*&v11[v17] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v18 += v19;
      --v16;
    }

    while (v16);
  }

  v21 = v1[3];
  v22 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_displayDuration;
  swift_beginAccess();
  *&v11[v22] = v21;
  v23 = (v1 + *(type metadata accessor for Apple_Workout_Core_WorkoutNotification(0) + 32));
  if ((v23[1] & 1) == 0)
  {
    v24 = *v23;
    Date.init(timeIntervalSinceReferenceDate:)();
    v25 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_createdAt;
    swift_beginAccess();
    (*(v28 + 40))(&v11[v25], v5, v29);
    swift_endAccess();
  }

  return v11;
}

void Apple_Workout_Core_NotificationType.decoded.getter(_BYTE *a1@<X8>)
{
  if (*(v1 + 8))
  {
    *a1 = 0x607050403020100uLL >> (8 * *v1);
  }

  else
  {
    _StringGuts.grow(_:)(33);

    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x20F2E6D80](v2);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t type metadata accessor for WorkoutNotification()
{
  result = type metadata singleton initialization cache for WorkoutNotification;
  if (!type metadata singleton initialization cache for WorkoutNotification)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized static WorkoutNotification.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_notificationType;
  swift_beginAccess();
  v5 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_notificationType;
  v6 = *(a1 + v4);
  swift_beginAccess();
  if ((specialized == infix<A>(_:_:)(v6, *(a2 + v5)) & 1) != 0 && (v7 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_displayDuration, swift_beginAccess(), v8 = *(a1 + v7), v9 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_displayDuration, swift_beginAccess(), v8 == *(a2 + v9)))
  {
    v10 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_units;
    swift_beginAccess();
    v11 = *(a1 + v10);
    v12 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_units;
    swift_beginAccess();
    v13 = *(a2 + v12);

    v14 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore0B16NotificationUnitC_Tt1g5(v11, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

unint64_t lazy protocol witness table accessor for type WorkoutNotification.CodingKeys and conformance WorkoutNotification.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkoutNotification.CodingKeys and conformance WorkoutNotification.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutNotification.CodingKeys and conformance WorkoutNotification.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotification.CodingKeys and conformance WorkoutNotification.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutNotification.CodingKeys and conformance WorkoutNotification.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutNotification.CodingKeys and conformance WorkoutNotification.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotification.CodingKeys and conformance WorkoutNotification.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutNotification.CodingKeys and conformance WorkoutNotification.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutNotification.CodingKeys and conformance WorkoutNotification.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotification.CodingKeys and conformance WorkoutNotification.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutNotification.CodingKeys and conformance WorkoutNotification.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutNotification.CodingKeys and conformance WorkoutNotification.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotification.CodingKeys and conformance WorkoutNotification.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [WorkoutNotificationUnit] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A16NotificationUnitCGMd, &_sSay11WorkoutCore0A16NotificationUnitCGMR);
    lazy protocol witness table accessor for type Date and conformance Date(a2, type metadata accessor for WorkoutNotificationUnit);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
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

unint64_t lazy protocol witness table accessor for type WorkoutNotification.NotificationType and conformance WorkoutNotification.NotificationType()
{
  result = lazy protocol witness table cache variable for type WorkoutNotification.NotificationType and conformance WorkoutNotification.NotificationType;
  if (!lazy protocol witness table cache variable for type WorkoutNotification.NotificationType and conformance WorkoutNotification.NotificationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotification.NotificationType and conformance WorkoutNotification.NotificationType);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t type metadata completion function for WorkoutNotification()
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

uint64_t getEnumTagSinglePayload for WorkoutNotification.NotificationType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutNotification.NotificationType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for WorkoutNotification.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutNotification.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t specialized WorkoutNotification.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WorkoutNotification.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined init with take of Apple_Workout_Core_WorkoutNotificationUnit(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_Core_WorkoutNotificationUnit(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_WorkoutNotificationUnit(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t one-time initialization function for changeNotification()
{
  result = MEMORY[0x20F2E6C00](0xD000000000000018, 0x800000020B459270);
  static TargetZoneStorage.changeNotification = result;
  return result;
}

id static TargetZoneStorage.changeNotification.getter()
{
  if (one-time initialization token for changeNotification != -1)
  {
    swift_once();
  }

  v1 = static TargetZoneStorage.changeNotification;

  return v1;
}

uint64_t static TargetZoneStorage.paceTargetZone(for:)(void *a1)
{
  v1 = specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(0xD00000000000001DLL, 0x800000020B454520, a1);
  if (!v1 || (result = specialized TargetZone.__allocating_init(dict:)(v1)) == 0)
  {
    type metadata accessor for TargetZone();
    result = swift_allocObject();
    *(result + 16) = 1;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
  }

  return result;
}

uint64_t static TargetZoneStorage.cadenceTargetZone(for:)(void *a1)
{
  v1 = specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(0xD000000000000020, 0x800000020B454540, a1);
  if (!v1 || (result = specialized TargetZone.__allocating_init(dict:)(v1)) == 0)
  {
    type metadata accessor for TargetZone();
    result = swift_allocObject();
    *(result + 16) = 4;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
  }

  return result;
}

uint64_t static TargetZoneStorage.powerTargetZone(for:)(void *a1)
{
  v1 = specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(0xD00000000000001ELL, 0x800000020B454570, a1);
  if (!v1 || (result = specialized TargetZone.__allocating_init(dict:)(v1)) == 0)
  {
    type metadata accessor for TargetZone();
    result = swift_allocObject();
    *(result + 16) = 6;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
  }

  return result;
}

uint64_t static TargetZone.defaultTargetZone(typeKey:)(_BYTE *a1)
{
  v1 = 0x60401u >> (8 * *a1);
  type metadata accessor for TargetZone();
  result = swift_allocObject();
  *(result + 16) = v1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

unint64_t TargetZone.ZoneTypeKey.rawValue.getter()
{
  v1 = 0xD000000000000020;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000001DLL;
  }

  *v0;
  return result;
}

uint64_t static TargetZoneStorage.alertEnablementDictionary(for:zoneKey:)(unint64_t a1, _BYTE *a2)
{
  v2 = "PaceTargetZonesByActivityType";
  v3 = 0xD000000000000020;
  if (*a2 != 1)
  {
    v3 = 0xD00000000000001ELL;
    v2 = "esByActivityType";
  }

  if (*a2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xD00000000000001DLL;
  }

  if (*a2)
  {
    v5 = v2;
  }

  else
  {
    v5 = "r";
  }

  if (one-time initialization token for userDefaults != -1)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v6 = static TargetZoneStorage.userDefaults;
    v7 = MEMORY[0x20F2E6C00](v4, v5 | 0x8000000000000000);

    v4 = [v6 dictionaryForKey_];

    v5 = a1 >> 62;
    if (v4)
    {
      v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v8);

      if (v9)
      {
        break;
      }
    }

    v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    if (v5)
    {
      v43 = __CocoaSet.count.getter();
      if (!v43)
      {
        return v12;
      }
    }

    else
    {
      v43 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v43)
      {
        return v12;
      }
    }

    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x20F2E7A20](i, a1);
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_60;
        }

        v45 = *(a1 + 8 * i + 32);
      }

      v46 = v45;
      v5 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v47 = [v45 uniqueIdentifier];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v12;
      v4 = v12;
      v52 = specialized __RawDictionaryStorage.find<A>(_:)(v48, v50);
      v54 = v12[2];
      v55 = (v53 & 1) == 0;
      v35 = __OFADD__(v54, v55);
      v56 = v54 + v55;
      if (v35)
      {
        goto LABEL_61;
      }

      v57 = v53;
      if (v12[3] < v56)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v56, isUniquelyReferenced_nonNull_native);
        v4 = v68;
        v52 = specialized __RawDictionaryStorage.find<A>(_:)(v48, v50);
        if ((v57 & 1) != (v58 & 1))
        {
LABEL_74:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

LABEL_53:
        if (v57)
        {
          goto LABEL_42;
        }

        goto LABEL_54;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_53;
      }

      v4 = &v68;
      v62 = v52;
      specialized _NativeDictionary.copy()();
      v52 = v62;
      if (v57)
      {
LABEL_42:
        v4 = v52;

        v12 = v68;
        *(v68[7] + v4) = 0;

        goto LABEL_43;
      }

LABEL_54:
      v12 = v68;
      v68[(v52 >> 6) + 8] |= 1 << v52;
      v59 = (v12[6] + 16 * v52);
      *v59 = v48;
      v59[1] = v50;
      *(v12[7] + v52) = 0;

      v60 = v12[2];
      v35 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v35)
      {
        goto LABEL_64;
      }

      v12[2] = v61;
LABEL_43:
      if (v5 == v43)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    swift_once();
  }

  if (v5)
  {
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    v10 = __CocoaSet.count.getter();
    if (v10)
    {
      goto LABEL_14;
    }

LABEL_69:
    v12 = MEMORY[0x277D84F98];
    goto LABEL_70;
  }

  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_69;
  }

LABEL_14:
  v11 = 0;
  v12 = MEMORY[0x277D84F98];
  while (2)
  {
    v13 = v11;
    while (2)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x20F2E7A20](v13, a1);
      }

      else
      {
        if (v13 >= *(v5 + 16))
        {
          goto LABEL_63;
        }

        v14 = *(a1 + 8 * v13 + 32);
      }

      v15 = v14;
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_62;
      }

      v16 = [v14 uniqueIdentifier];
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      if (!*(v9 + 16))
      {

        goto LABEL_17;
      }

      v4 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v18);
      v20 = v19;

      if ((v20 & 1) == 0 || (v21 = *(*(v9 + 56) + 8 * v4), v22 = , (v23 = specialized TargetZone.__allocating_init(dict:)(v22)) == 0))
      {
LABEL_17:

        ++v13;
        if (v11 == v10)
        {
          goto LABEL_70;
        }

        continue;
      }

      break;
    }

    v64 = v5;
    v24 = v23;
    v25 = [v15 uniqueIdentifier];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    swift_beginAccess();
    v29 = *(v24 + 40);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v67 = v12;
    v65 = v26;
    v4 = v12;
    v31 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v28);
    v33 = v12[2];
    v34 = (v32 & 1) == 0;
    v35 = __OFADD__(v33, v34);
    v36 = v33 + v34;
    if (v35)
    {
      __break(1u);
      goto LABEL_73;
    }

    v37 = v32;
    if (v12[3] < v36)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, v30);
      v4 = v67;
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v65, v28);
      if ((v37 & 1) != (v38 & 1))
      {
        goto LABEL_74;
      }

LABEL_32:
      if (v37)
      {
        goto LABEL_33;
      }

LABEL_35:
      v12 = v67;
      v67[(v31 >> 6) + 8] |= 1 << v31;
      v40 = (v12[6] + 16 * v31);
      *v40 = v65;
      v40[1] = v28;
      *(v12[7] + v31) = v29;

      v41 = v12[2];
      v35 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (!v35)
      {
        v12[2] = v42;
        goto LABEL_37;
      }

LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    if (v30)
    {
      goto LABEL_32;
    }

    v4 = &v67;
    v39 = v31;
    specialized _NativeDictionary.copy()();
    v31 = v39;
    if ((v37 & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_33:
    v4 = v31;

    v12 = v67;
    *(v67[7] + v4) = v29;

LABEL_37:
    v5 = v64;
    if (v11 != v10)
    {
      continue;
    }

    break;
  }

LABEL_70:

  return v12;
}

uint64_t static TargetZoneStorage.heartRateAlertEnablementDictionary(for:)(unint64_t a1)
{
  swift_beginAccess();
  v3 = static HeartRateTargetZone.heartRateTargetZonesByActivityTypeKey;
  v2 = off_27C728570;
  v4 = one-time initialization token for userDefaults;

  if (v4 != -1)
  {
    goto LABEL_71;
  }

  while (1)
  {
    v5 = static TargetZoneStorage.userDefaults;
    v6 = MEMORY[0x20F2E6C00](v3, v2);

    v2 = [v5 dictionaryForKey_];

    v73 = a1;
    v7 = a1 >> 62;
    if (v2)
    {
      v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v8);

      if (v9)
      {
        break;
      }
    }

    if (one-time initialization token for defaultZone != -1)
    {
      swift_once();
    }

    if (*(static HeartRateTargetZone.defaultZone + OBJC_IVAR___WOCoreHeartRateTargetZone_type) && *(static HeartRateTargetZone.defaultZone + OBJC_IVAR___WOCoreHeartRateTargetZone_type) != 1)
    {

      v2 = 0;
    }

    else
    {
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v2 = v42 ^ 1u;
    }

    v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    if (v7)
    {
      v64 = __CocoaSet.count.getter();
      v43 = a1;
      v44 = v64;
      if (!v64)
      {
        return v3;
      }
    }

    else
    {
      v43 = a1;
      v44 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v44)
      {
        return v3;
      }
    }

    a1 = 0;
    v70 = v43 & 0xFFFFFFFFFFFFFF8;
    v72 = v43 & 0xC000000000000001;
    v68 = v2 & 1;
    while (1)
    {
      if (v72)
      {
        v45 = MEMORY[0x20F2E7A20](a1);
      }

      else
      {
        if (a1 >= *(v70 + 16))
        {
          goto LABEL_66;
        }

        v45 = *(v43 + 8 * a1 + 32);
      }

      v46 = v45;
      v47 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      v48 = [v45 uniqueIdentifier];
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75[0] = v3;
      v2 = v3;
      v53 = specialized __RawDictionaryStorage.find<A>(_:)(v49, v51);
      v55 = v3[2];
      v56 = (v54 & 1) == 0;
      v40 = __OFADD__(v55, v56);
      v57 = v55 + v56;
      if (v40)
      {
        goto LABEL_67;
      }

      v58 = v54;
      if (v3[3] < v57)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v57, isUniquelyReferenced_nonNull_native);
        v2 = v75[0];
        v53 = specialized __RawDictionaryStorage.find<A>(_:)(v49, v51);
        if ((v58 & 1) != (v59 & 1))
        {
LABEL_80:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

LABEL_59:
        if (v58)
        {
          goto LABEL_48;
        }

        goto LABEL_60;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_59;
      }

      v2 = v75;
      v63 = v53;
      specialized _NativeDictionary.copy()();
      v53 = v63;
      if (v58)
      {
LABEL_48:
        v2 = v53;

        v3 = v75[0];
        *(*(v75[0] + 56) + v2) = v68;

        goto LABEL_49;
      }

LABEL_60:
      v3 = v75[0];
      *(v75[0] + 8 * (v53 >> 6) + 64) |= 1 << v53;
      v60 = (v3[6] + 16 * v53);
      *v60 = v49;
      v60[1] = v51;
      *(v3[7] + v53) = v68;

      v61 = v3[2];
      v40 = __OFADD__(v61, 1);
      v62 = v61 + 1;
      if (v40)
      {
        goto LABEL_70;
      }

      v3[2] = v62;
LABEL_49:
      ++a1;
      v43 = v73;
      if (v47 == v44)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    swift_once();
  }

  if (v7)
  {
    v10 = a1;
    v71 = a1 & 0xFFFFFFFFFFFFFF8;
    a1 = __CocoaSet.count.getter();
    if (a1)
    {
      goto LABEL_6;
    }

LABEL_75:
    v3 = MEMORY[0x277D84F98];
    goto LABEL_76;
  }

  v10 = a1;
  v71 = a1 & 0xFFFFFFFFFFFFFF8;
  a1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!a1)
  {
    goto LABEL_75;
  }

LABEL_6:
  v11 = 0;
  v69 = v10 & 0xC000000000000001;
  v3 = MEMORY[0x277D84F98];
  while (2)
  {
    v12 = v11;
    while (2)
    {
      if (v69)
      {
        v13 = MEMORY[0x20F2E7A20](v12, v10);
      }

      else
      {
        if (v12 >= *(v71 + 16))
        {
          goto LABEL_69;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_68;
      }

      v15 = [v13 uniqueIdentifier];
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      if (!*(v9 + 16))
      {
        goto LABEL_8;
      }

      v2 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v17);
      v19 = v18;

      if ((v19 & 1) == 0 || (v2 = *(*(v9 + 56) + 8 * v2), !*(v2 + 16)))
      {
LABEL_9:

        ++v12;
        if (v11 == a1)
        {
          goto LABEL_76;
        }

        continue;
      }

      break;
    }

    v20 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000);
    if ((v21 & 1) == 0)
    {
LABEL_8:

      goto LABEL_9;
    }

    outlined init with copy of Any(*(v2 + 56) + 32 * v20, v75);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_9;
    }

    v2 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of static TargetZoneStorage.heartRateAlertEnablementDictionary(for:), v74);

    if (v2 >= 3)
    {
      goto LABEL_9;
    }

    v22 = [v14 uniqueIdentifier];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    if (v2 > 1u)
    {

      v66 = 0;
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v66 = v26 ^ 1;
    }

    v27 = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v3;
    v67 = v23;
    v28 = v23;
    v29 = v25;
    v2 = v3;
    v31 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v25);
    v32 = v3[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      __break(1u);
      goto LABEL_79;
    }

    v35 = v30;
    if (v3[3] >= v34)
    {
      if (v27)
      {
        if ((v30 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v2 = v75;
        specialized _NativeDictionary.copy()();
        if ((v35 & 1) == 0)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, v27);
      v2 = v75[0];
      v36 = specialized __RawDictionaryStorage.find<A>(_:)(v67, v29);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_80;
      }

      v31 = v36;
      if ((v35 & 1) == 0)
      {
LABEL_35:
        v3 = v75[0];
        *(v75[0] + 8 * (v31 >> 6) + 64) |= 1 << v31;
        v38 = (v3[6] + 16 * v31);
        *v38 = v67;
        v38[1] = v29;
        *(v3[7] + v31) = v66 & 1;

        v39 = v3[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (!v40)
        {
          v3[2] = v41;
          goto LABEL_37;
        }

LABEL_79:
        __break(1u);
        goto LABEL_80;
      }
    }

    v3 = v75[0];
    *(*(v75[0] + 56) + v31) = v66 & 1;

LABEL_37:
    v10 = v73;
    if (v11 != a1)
    {
      continue;
    }

    break;
  }

LABEL_76:

  return v3;
}

unint64_t static HeartRateTargetZone.zoneType(for:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  if (*(result + 16) && (v3 = result, result = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000), (v4 & 1) != 0) && (outlined init with copy of Any(*(v3 + 56) + 32 * result, v8), result = swift_dynamicCast(), (result & 1) != 0))
  {
    v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HeartRateZoneType.init(rawValue:), v7);

    v6 = 3;
    if (v5 < 3)
    {
      v6 = v5;
    }
  }

  else
  {
    v6 = 3;
  }

  *a2 = v6;
  return result;
}

uint64_t static TargetZoneStorage.powerZonesAlertEnablementDictionary(for:)(unint64_t a1)
{
  swift_beginAccess();
  v3 = static PowerZonesAlertTargetZone.powerZonesAlertTargetZonesByActivityTypeKey;
  v2 = off_27C728588;
  v4 = one-time initialization token for userDefaults;

  if (v4 != -1)
  {
    goto LABEL_63;
  }

  while (1)
  {
    v5 = static TargetZoneStorage.userDefaults;
    v6 = MEMORY[0x20F2E6C00](v3, v2);

    v2 = [v5 dictionaryForKey_];

    v7 = a1 >> 62;
    v75 = a1;
    if (v2)
    {
      v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v8);

      if (v9)
      {
        break;
      }
    }

    if (one-time initialization token for defaultZone != -1)
    {
      swift_once();
    }

    v39 = static PowerZonesAlertTargetZone.defaultZone + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
    swift_beginAccess();
    v40 = *v39;
    v41 = *(v39 + 8);
    v42 = *(v39 + 16);
    v43 = v42 >> 6;
    v74 = 1;
    if (v42 >> 6 > 1)
    {
      v74 = v43 == 2;
    }

    else if (v43)
    {
      v44 = *v39;
      v45 = v41;
      v46 = v42;
      outlined copy of PowerZonesAlertZoneType(v40, v41, v42);
      LOBYTE(v42) = v46;
      v41 = v45;
      v40 = v44;
      v74 = 1;
    }

    outlined consume of PowerZonesAlertZoneType(v40, v41, v42);
    outlined consume of PowerZonesAlertZoneType(0, 0, 192);
    v2 = MEMORY[0x277D84F90];
    v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(MEMORY[0x277D84F90]);

    if (v7)
    {
      v47 = __CocoaSet.count.getter();
      if (!v47)
      {
        return v3;
      }
    }

    else
    {
      v47 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v47)
      {
        return v3;
      }
    }

    v48 = 0;
    v70 = a1 & 0xFFFFFFFFFFFFFF8;
    v72 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v72)
      {
        v49 = MEMORY[0x20F2E7A20](v48, a1);
      }

      else
      {
        if (v48 >= *(v70 + 16))
        {
          goto LABEL_58;
        }

        v49 = *(a1 + 8 * v48 + 32);
      }

      a1 = v49;
      v50 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      v51 = [v49 uniqueIdentifier];
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = v3;
      v2 = v3;
      v56 = specialized __RawDictionaryStorage.find<A>(_:)(v52, v54);
      v58 = v3[2];
      v59 = (v57 & 1) == 0;
      v30 = __OFADD__(v58, v59);
      v60 = v58 + v59;
      if (v30)
      {
        goto LABEL_59;
      }

      v61 = v57;
      if (v3[3] < v60)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v60, isUniquelyReferenced_nonNull_native);
        v2 = v76;
        v56 = specialized __RawDictionaryStorage.find<A>(_:)(v52, v54);
        if ((v61 & 1) != (v62 & 1))
        {
LABEL_72:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

LABEL_51:
        if (v61)
        {
          goto LABEL_40;
        }

        goto LABEL_52;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_51;
      }

      v2 = &v76;
      v66 = v56;
      specialized _NativeDictionary.copy()();
      v56 = v66;
      if (v61)
      {
LABEL_40:
        v2 = v56;

        v3 = v76;
        *(v76[7] + v2) = v74;

        goto LABEL_41;
      }

LABEL_52:
      v3 = v76;
      v76[(v56 >> 6) + 8] |= 1 << v56;
      v63 = (v3[6] + 16 * v56);
      *v63 = v52;
      v63[1] = v54;
      *(v3[7] + v56) = v74;

      v64 = v3[2];
      v30 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v30)
      {
        goto LABEL_62;
      }

      v3[2] = v65;
LABEL_41:
      ++v48;
      a1 = v75;
      if (v50 == v47)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    swift_once();
  }

  if (v7)
  {
    v73 = a1 & 0xFFFFFFFFFFFFFF8;
    v10 = __CocoaSet.count.getter();
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_67:
    v3 = MEMORY[0x277D84F98];
    goto LABEL_68;
  }

  v73 = a1 & 0xFFFFFFFFFFFFFF8;
  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_67;
  }

LABEL_6:
  v11 = 0;
  v12 = a1 & 0xC000000000000001;
  v3 = MEMORY[0x277D84F98];
  while (2)
  {
    v13 = v11;
    while (2)
    {
      if (v12)
      {
        v14 = MEMORY[0x20F2E7A20](v13, a1);
      }

      else
      {
        if (v13 >= *(v73 + 16))
        {
          goto LABEL_61;
        }

        v14 = *(a1 + 8 * v13 + 32);
      }

      a1 = v14;
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_60;
      }

      v15 = [v14 uniqueIdentifier];
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      if (!*(v9 + 16))
      {

        goto LABEL_9;
      }

      v2 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v17);
      v19 = v18;

      if ((v19 & 1) == 0 || (v2 = *(*(v9 + 56) + 8 * v2), v20 = , v21 = specialized static PowerZonesAlertTargetZone.alertIsEnabled(from:)(v20), , v21 == 2))
      {
LABEL_9:

        ++v13;
        a1 = v75;
        if (v11 == v10)
        {
          goto LABEL_68;
        }

        continue;
      }

      break;
    }

    v22 = [a1 uniqueIdentifier];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v68 = swift_isUniquelyReferenced_nonNull_native();
    v77 = v3;
    v69 = v23;
    v71 = v25;
    v2 = v3;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v25);
    v28 = v3[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      __break(1u);
      goto LABEL_71;
    }

    v32 = v27;
    if (v3[3] >= v31)
    {
      if ((v68 & 1) == 0)
      {
        v2 = &v77;
        v38 = v26;
        specialized _NativeDictionary.copy()();
        v26 = v38;
      }

      v33 = v71;
      if (v32)
      {
        goto LABEL_23;
      }

LABEL_27:
      v3 = v77;
      v77[(v26 >> 6) + 8] |= 1 << v26;
      v35 = (v3[6] + 16 * v26);
      *v35 = v69;
      v35[1] = v33;
      *(v3[7] + v26) = v21 & 1;

      v36 = v3[2];
      v30 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (!v30)
      {
        v3[2] = v37;
        goto LABEL_29;
      }

LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v31, v68);
    v2 = v77;
    v33 = v71;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v69, v71);
    if ((v32 & 1) != (v34 & 1))
    {
      goto LABEL_72;
    }

    if ((v32 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_23:
    v2 = v26;

    v3 = v77;
    *(v77[7] + v2) = v21 & 1;

LABEL_29:
    a1 = v75;
    if (v11 != v10)
    {
      continue;
    }

    break;
  }

LABEL_68:

  return v3;
}

id static HeartRateTargetZone.defaultHeartRateTargetZone()(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

void static TargetZoneStorage.heartRateTargetZone(activityType:)(void *a1)
{
  swift_beginAccess();
  v3 = static HeartRateTargetZone.heartRateTargetZonesByActivityTypeKey;
  v2 = off_27C728570;

  v4 = specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(v3, v2, a1);

  if (!v4 || (specialized HeartRateTargetZone.__allocating_init(dict:)(v4), !v5))
  {
    if (one-time initialization token for defaultZone != -1)
    {
      swift_once();
    }

    v6 = static HeartRateTargetZone.defaultZone;

    v7 = v6;
  }
}

id static TargetZoneStorage.powerZonesAlertTargetZone(activityType:)(void *a1)
{
  swift_beginAccess();
  v3 = static PowerZonesAlertTargetZone.powerZonesAlertTargetZonesByActivityTypeKey;
  v2 = off_27C728588;

  v4 = specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(v3, v2, a1);

  if (!v4 || (type metadata accessor for PowerZonesAlertTargetZone(), (result = PowerZonesAlertTargetZone.__allocating_init(dict:)(v4)) == 0))
  {
    if (one-time initialization token for defaultZone != -1)
    {
      swift_once();
    }

    v6 = static PowerZonesAlertTargetZone.defaultZone;

    return v6;
  }

  return result;
}

id PowerZonesAlertTargetZone.__allocating_init(dict:)(unint64_t a1)
{
  static PowerZonesAlertTargetZone.fromDictionary(_:)(a1, &v20);
  v1 = v22;
  if (v22 < 0xF8u)
  {
    v12 = v20;
    v11 = v21;

    v20 = v12;
    v21 = v11;
    v22 = v1;
    v13 = objc_allocWithZone(type metadata accessor for PowerZonesAlertTargetZone());
    return PowerZonesAlertTargetZone.init(type:)(&v20);
  }

  else
  {
    if (one-time initialization token for alerts != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static WOLog.alerts);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v20 = v6;
      *v5 = 136315138;
      v7 = Dictionary.description.getter();
      v9 = v8;

      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v20);

      *(v5 + 4) = v10;
      _os_log_impl(&dword_20AEA4000, v3, v4, "Not able to generate PowerZonesAlertZoneType from dictionary: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x20F2E9420](v6, -1, -1);
      MEMORY[0x20F2E9420](v5, -1, -1);
    }

    else
    {
    }

    v15 = type metadata accessor for PowerZonesAlertTargetZone();
    v16 = objc_allocWithZone(v15);
    v17 = &v16[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_defaultZonesDidLoad];
    *v17 = 0;
    *(v17 + 1) = 0;
    v18 = &v16[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type];
    *v18 = 0;
    *(v18 + 1) = 0;
    v18[16] = -64;
    v19.receiver = v16;
    v19.super_class = v15;
    return objc_msgSendSuper2(&v19, sel_init);
  }
}

BOOL static TargetZoneStorage.save(_:for:useLegacyUniqueIdentifier:)(void *a1, id a2, char a3)
{
  if (a3)
  {
    v5 = [a2 workoutActivityType];
    v6 = [v5 legacyUniqueIdentifier];
  }

  else
  {
    v6 = [a2 uniqueIdentifier];
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (one-time initialization token for alerts != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static WOLog.alerts);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v44[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, v44);
    _os_log_impl(&dword_20AEA4000, v11, v12, "Saving alerts for %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x20F2E9420](v14, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }

  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = (*(v16 + 8))(v15, v16);
  v19 = v18;
  if (v18)
  {
    v20 = v17;
    v42 = a2;
    if (one-time initialization token for userDefaults != -1)
    {
      swift_once();
    }

    v21 = static TargetZoneStorage.userDefaults;
    v22 = MEMORY[0x20F2E6C00](v20, v19);
    v23 = [v21 dictionaryForKey_];

    if (v23)
    {
      v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v24 = MEMORY[0x277D84F98];
    }

    v28 = a1[3];
    v29 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v28);
    v30 = (*(v29 + 16))(v28, v29);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    v44[0] = v30;
    outlined init with take of Any(v44, v43);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v43, v7, v9, isUniquelyReferenced_nonNull_native);

    v32 = static TargetZoneStorage.userDefaults;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v34 = MEMORY[0x20F2E6C00](v20, v19);
    [v32 setObject:isa forKey:v34];

    v35 = static TargetZoneStorage.userDefaults;
    v36 = objc_opt_self();
    v37 = v35;
    v38 = [v36 standardUserDefaults];
    type metadata accessor for NSUserDefaults(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
    LOBYTE(v34) = static NSObject.== infix(_:_:)();

    if (v34)
    {
      v39 = MEMORY[0x20F2E6C00](v20, v19);

      [v36 fu:v39 backupStandardUserDefaultsKey:?];
    }

    else
    {
    }

    v40 = [objc_opt_self() defaultCenter];
    if (one-time initialization token for changeNotification != -1)
    {
      swift_once();
    }

    [v40 postNotificationName:static TargetZoneStorage.changeNotification object:{v42, v42, v24}];
  }

  else
  {

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_20AEA4000, v25, v26, "No zone type key, skipping save.", v27, 2u);
      MEMORY[0x20F2E9420](v27, -1, -1);
    }
  }

  return v19 != 0;
}

unint64_t specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSDySSypGGMd, &_ss18_DictionaryStorageCySSSDySSypGGMR);
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
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v5)) | (v14 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        outlined init with copy of Any(*(a1 + 56) + 32 * v15, v28);
        *&v27 = v17;
        *(&v27 + 1) = v18;
        v25[2] = v27;
        v26[0] = v28[0];
        v26[1] = v28[1];
        v19 = v27;
        outlined init with take of Any(v26, v25);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = v2[7];
          v13 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v24;

          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          *(v2[7] + 8 * result) = v24;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_24;
          }

          v2[2] = v23;
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v8;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t static TargetZoneStorage.restoreFrom(_:activityType:)(uint64_t a1, id a2)
{
  v3 = [a2 workoutActivityType];
  v4 = [v3 uniqueIdentifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (*(a1 + 16))
  {
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7);
    if (v9)
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v8, v20);
      outlined init with copy of Any(v20, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      if (swift_dynamicCast())
      {

        v10 = specialized TargetZone.__allocating_init(dict:)(v18);

        __swift_destroy_boxed_opaque_existential_0(v20);
        return v10;
      }

      __swift_destroy_boxed_opaque_existential_0(v20);
    }
  }

  if (one-time initialization token for alerts != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static WOLog.alerts);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20[0] = v16;
    *v15 = 136315138;
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, v20);

    *(v15 + 4) = v17;
    _os_log_impl(&dword_20AEA4000, v13, v14, "restoreFrom returning nil for %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x20F2E9420](v16, -1, -1);
    MEMORY[0x20F2E9420](v15, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t TargetZone.ZoneTypeKey.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TargetZone.ZoneTypeKey.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TargetZone.ZoneTypeKey(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "PaceTargetZonesByActivityType";
  v4 = 0xD000000000000020;
  if (v2 == 1)
  {
    v5 = 0xD000000000000020;
  }

  else
  {
    v5 = 0xD00000000000001ELL;
  }

  if (v2 == 1)
  {
    v6 = "PaceTargetZonesByActivityType";
  }

  else
  {
    v6 = "esByActivityType";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD00000000000001DLL;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "r";
  }

  if (*a2 != 1)
  {
    v4 = 0xD00000000000001ELL;
    v3 = "esByActivityType";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD00000000000001DLL;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "r";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TargetZone.ZoneTypeKey()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TargetZone.ZoneTypeKey()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TargetZone.ZoneTypeKey()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TargetZone.ZoneTypeKey(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001DLL;
  v3 = "PaceTargetZonesByActivityType";
  v4 = 0xD000000000000020;
  if (*v1 != 1)
  {
    v4 = 0xD00000000000001ELL;
    v3 = "esByActivityType";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "r";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

Swift::String_optional __swiftcall TargetZone.zoneKey()()
{
  v1 = *(v0 + 16);
  if (v1 > 4)
  {
    if (v1 - 5 >= 2)
    {
      v2 = 0;
      v4 = 0;
    }

    else
    {
      v2 = 0xD00000000000001ELL;
      v4 = 0x800000020B454570;
    }
  }

  else
  {
    if (v1 >= 3)
    {
      v2 = 0xD000000000000020;
    }

    else
    {
      v2 = 0xD00000000000001DLL;
    }

    if (v1 >= 3)
    {
      v3 = "PaceTargetZonesByActivityType";
    }

    else
    {
      v3 = "r";
    }

    v4 = (v3 | 0x8000000000000000);
  }

  result.value._object = v4;
  result.value._countAndFlagsBits = v2;
  return result;
}

uint64_t TargetZone.dict()()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2 <= 3)
  {
    if (*(v0 + 16) > 1u)
    {
      if (v2 == 2)
      {
        v4 = 0xD000000000000012;
        v3 = 0x800000020B454490;
      }

      else
      {
        v3 = 0x800000020B4544B0;
        v4 = 0xD000000000000015;
      }

      goto LABEL_16;
    }

    v3 = 0xEC00000065636170;
    if (!v2)
    {
      v4 = 0x5F676E696C6C6F72;
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (*(v0 + 16) > 5u)
  {
    if (v2 == 6)
    {
      v3 = 0xED00007265776F70;
      goto LABEL_12;
    }

    v3 = 0xE400000000000000;
    v4 = 1701736302;
  }

  else
  {
    if (v2 == 4)
    {
      v3 = 0xEF65636E65646163;
LABEL_12:
      v4 = 0x5F65676172657661;
      goto LABEL_16;
    }

    v3 = 0x800000020B4544E0;
    v4 = 0xD000000000000013;
  }

LABEL_16:
  swift_beginAccess();
  v5 = *(v1 + 40) == 0;
  if (*(v1 + 40))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  v7 = MEMORY[0x277D837D0];
  v20 = MEMORY[0x277D837D0];
  if (v5)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  *&v19 = v4;
  *(&v19 + 1) = v3;
  outlined init with take of Any(&v19, v18);
  v9 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  swift_beginAccess();
  v11 = *(v1 + 24);
  v12 = MEMORY[0x277D839F8];
  v20 = MEMORY[0x277D839F8];
  *&v19 = v11;
  outlined init with take of Any(&v19, v18);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0x6D756D696E696DLL, 0xE700000000000000, v13);
  swift_beginAccess();
  v14 = *(v1 + 32);
  v20 = v12;
  *&v19 = v14;
  outlined init with take of Any(&v19, v18);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0x6D756D6978616DLL, 0xE700000000000000, v15);
  v20 = v7;
  *&v19 = v6;
  *(&v19 + 1) = v8;
  outlined init with take of Any(&v19, v18);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0x64656C62616E65, 0xE700000000000000, v16);
  return v9;
}

unint64_t protocol witness for TargetZoneStorable.zoneKey() in conformance TargetZone()
{
  v1 = *(*v0 + 16);
  if (v1 > 4)
  {
    if (v1 - 5 >= 2)
    {
      return 0;
    }

    else
    {
      return 0xD00000000000001ELL;
    }
  }

  else if (v1 >= 3)
  {
    return 0xD000000000000020;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

Swift::String_optional __swiftcall HeartRateTargetZone.zoneKey()()
{
  v0 = HeartRateTargetZone.zoneKey()(&static HeartRateTargetZone.heartRateTargetZonesByActivityTypeKey, &off_27C728570);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t HeartRateTargetZone.dict()()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR___WOCoreHeartRateTargetZone_type))
  {
    if (*(v0 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) == 1)
    {
      v2 = 0xE600000000000000;
      v3 = 0x6D6F74737563;
    }

    else
    {
      v2 = 0xE300000000000000;
      v3 = 6710895;
    }
  }

  else
  {
    v2 = 0xE900000000000063;
    v3 = 0x6974616D6F747561;
  }

  v20 = MEMORY[0x277D837D0];
  *&v19 = v3;
  *(&v19 + 1) = v2;
  outlined init with take of Any(&v19, v18);
  v4 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v21 = v4;
  v6 = (v1 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange);
  swift_beginAccess();
  v7 = MEMORY[0x277D839F8];
  if (v6[2])
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x756F427265776F6CLL, 0xEA0000000000646ELL, &v19);
    _sypSgWOhTm_0(&v19, &_sypSgMd, &_sypSgMR);
    if ((v6[2] & 1) == 0)
    {
LABEL_8:
      v8 = v6[1];
      v20 = v7;
      *&v19 = v8;
      outlined init with take of Any(&v19, v18);
      v9 = v21;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0x756F427265707075, 0xEA0000000000646ELL, v10);
      v21 = v9;
      goto LABEL_11;
    }
  }

  else
  {
    v11 = *v6;
    v20 = MEMORY[0x277D839F8];
    *&v19 = v11;
    outlined init with take of Any(&v19, v18);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0x756F427265776F6CLL, 0xEA0000000000646ELL, v12);
    v21 = v4;
    if ((v6[2] & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  specialized Dictionary._Variant.removeValue(forKey:)(0x756F427265707075, 0xEA0000000000646ELL, &v19);
  _sypSgWOhTm_0(&v19, &_sypSgMd, &_sypSgMR);
LABEL_11:
  v13 = (v1 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZoneIndex);
  swift_beginAccess();
  if (v13[1])
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000010, 0x800000020B454030, &v19);
    _sypSgWOhTm_0(&v19, &_sypSgMd, &_sypSgMR);
    return v21;
  }

  else
  {
    v15 = *v13;
    v20 = MEMORY[0x277D83B88];
    *&v19 = v15;
    outlined init with take of Any(&v19, v18);
    v16 = v21;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0xD000000000000010, 0x800000020B454030, v17);
    return v16;
  }
}

uint64_t one-time initialization function for defaultZone()
{
  v2 = 2;
  v0 = objc_allocWithZone(type metadata accessor for HeartRateTargetZone());
  result = HeartRateTargetZone.init(type:customRange:defaultZoneIndex:defaultZones:)(&v2, 0, 0, 1, 0, 1, 0);
  static HeartRateTargetZone.defaultZone = result;
  return result;
}

uint64_t static HeartRateTargetZone.heartRateTargetZonesByActivityTypeKey.getter(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = *a1;
  v5 = *a2;

  return v4;
}

uint64_t static HeartRateTargetZone.heartRateTargetZonesByActivityTypeKey.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  v8 = *a4;
  *a3 = a1;
  *a4 = a2;
}

Swift::String_optional __swiftcall PowerZonesAlertTargetZone.zoneKey()()
{
  v0 = HeartRateTargetZone.zoneKey()(&static PowerZonesAlertTargetZone.powerZonesAlertTargetZonesByActivityTypeKey, &off_27C728588);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t HeartRateTargetZone.zoneKey()(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = *a1;
  v5 = *a2;

  return v4;
}

unint64_t PowerZonesAlertTargetZone.dict()()
{
  v1 = (v0 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = v4 >> 6;
  if (v4 >> 6 <= 1)
  {
    if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20B4282E0;
      *(inited + 32) = 1701869940;
      v18 = MEMORY[0x277D837D0];
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = 0x6974616D6F747561;
      *(inited + 56) = 0xE900000000000063;
      *(inited + 72) = v18;
      *(inited + 80) = 0xD000000000000010;
      *(inited + 120) = MEMORY[0x277D83B88];
      *(inited + 88) = 0x800000020B454030;
      *(inited + 96) = v2;
      v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
LABEL_41:
      swift_arrayDestroy();
      return v19;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    v6 = swift_initStackObject();
    v7 = v6;
    *(v6 + 16) = xmmword_20B423A20;
    *(v6 + 32) = 1701869940;
    v8 = MEMORY[0x277D837D0];
    v9 = 0xE400000000000000;
    *(v6 + 40) = 0xE400000000000000;
    *(v6 + 48) = 0x746567726174;
    *(v6 + 56) = 0xE600000000000000;
    *(v6 + 72) = v8;
    *(v6 + 80) = 1701080941;
    *(v6 + 88) = 0xE400000000000000;
    if (v3 > 3u)
    {
      if (v3 > 5u)
      {
        if (v3 == 6)
        {
          v10 = 0x5F65676172657661;
          v9 = 0xED00007265776F70;
        }

        else
        {
          v10 = 1701736302;
        }
      }

      else if (v3 == 4)
      {
        v10 = 0x5F65676172657661;
        v9 = 0xEF65636E65646163;
      }

      else
      {
        v9 = 0x800000020B4544E0;
        v10 = 0xD000000000000013;
      }
    }

    else if (v3 > 1u)
    {
      if (v3 == 2)
      {
        v10 = 0xD000000000000012;
        v9 = 0x800000020B454490;
      }

      else
      {
        v9 = 0x800000020B4544B0;
        v10 = 0xD000000000000015;
      }
    }

    else
    {
      if (v3)
      {
        v10 = 0x5F65676172657661;
      }

      else
      {
        v10 = 0x5F676E696C6C6F72;
      }

      v9 = 0xEC00000065636170;
    }

    *(v6 + 96) = v10;
    *(v6 + 104) = v9;
    *(v6 + 120) = v8;
    *(v6 + 128) = 0x65756C6176;
    *(v6 + 168) = MEMORY[0x277D839F8];
    *(v6 + 136) = 0xE500000000000000;
    *(v6 + 144) = v2;
LABEL_40:
    v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v7);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
    goto LABEL_41;
  }

  if (v5 == 2)
  {
    v11 = v4 & 0x3F;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    v7 = swift_initStackObject();
    *(v7 + 16) = xmmword_20B423A20;
    *(v7 + 32) = 1701869940;
    v12 = 0xE400000000000000;
    v13 = MEMORY[0x277D837D0];
    *(v7 + 40) = 0xE400000000000000;
    *(v7 + 48) = 0x6D6F74737563;
    *(v7 + 56) = 0xE600000000000000;
    *(v7 + 72) = v13;
    *(v7 + 80) = 0x65676E6172;
    *(v7 + 88) = 0xE500000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_20B4282E0;
    *(v14 + 32) = v2;
    *(v14 + 40) = v3;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
    *(v7 + 96) = v14;
    *(v7 + 120) = v15;
    *(v7 + 128) = 1701080941;
    *(v7 + 136) = 0xE400000000000000;
    if (v11 > 3)
    {
      if (v11 > 5)
      {
        if (v11 == 6)
        {
          v16 = 0x5F65676172657661;
          v12 = 0xED00007265776F70;
        }

        else
        {
          v16 = 1701736302;
        }
      }

      else if (v11 == 4)
      {
        v16 = 0x5F65676172657661;
        v12 = 0xEF65636E65646163;
      }

      else
      {
        v12 = 0x800000020B4544E0;
        v16 = 0xD000000000000013;
      }
    }

    else if (v11 > 1)
    {
      if (v11 == 2)
      {
        v16 = 0xD000000000000012;
        v12 = 0x800000020B454490;
      }

      else
      {
        v12 = 0x800000020B4544B0;
        v16 = 0xD000000000000015;
      }
    }

    else
    {
      if (v11)
      {
        v16 = 0x5F65676172657661;
      }

      else
      {
        v16 = 0x5F676E696C6C6F72;
      }

      v12 = 0xEC00000065636170;
    }

    *(v7 + 168) = v13;
    *(v7 + 144) = v16;
    *(v7 + 152) = v12;
    goto LABEL_40;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_20B423A90;
  *(v20 + 32) = 1701869940;
  v21 = v20 + 32;
  *(v20 + 72) = MEMORY[0x277D837D0];
  *(v20 + 40) = 0xE400000000000000;
  *(v20 + 48) = 6710895;
  *(v20 + 56) = 0xE300000000000000;
  v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v20);
  swift_setDeallocating();
  _sypSgWOhTm_0(v21, &_sSS_yptMd, &_sSS_yptMR);
  return v19;
}

unint64_t static PowerZonesAlertTargetZone.fromDictionary(_:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!*(result + 16))
  {
    goto LABEL_56;
  }

  v3 = result;
  result = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000);
  if ((v4 & 1) == 0)
  {
    goto LABEL_56;
  }

  outlined init with copy of Any(*(v3 + 56) + 32 * result, v19);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_56;
  }

  if (v17 == 0x746567726174 && v18 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    if (*(v3 + 16))
    {
      result = specialized __RawDictionaryStorage.find<A>(_:)(0x65756C6176, 0xE500000000000000);
      if (v5)
      {
        outlined init with copy of Any(*(v3 + 56) + 32 * result, v19);
        result = swift_dynamicCast();
        if (result)
        {
          if (*(v3 + 16))
          {
            result = specialized __RawDictionaryStorage.find<A>(_:)(1701080941, 0xE400000000000000);
            if (v6)
            {
              outlined init with copy of Any(*(v3 + 56) + 32 * result, v19);
              result = swift_dynamicCast();
              if (result)
              {
                if (v17 == 0xD000000000000013 && 0x800000020B4544E0 == v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  *a2 = v17;
                  v7 = 5;
LABEL_17:
                  *(a2 + 8) = v7;
                  *(a2 + 16) = 0;
                  return result;
                }

                if (v17 == 0x5F65676172657661 && v18 == 0xED00007265776F70)
                {

LABEL_50:
                  *a2 = v17;
                  v7 = 6;
                  goto LABEL_17;
                }

                v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v15)
                {
                  goto LABEL_50;
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_56;
  }

  if ((v17 != 0x6974616D6F747561 || v18 != 0xE900000000000063) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v17 == 0x6D6F74737563 && v18 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      if (!*(v3 + 16))
      {
        goto LABEL_56;
      }

      result = specialized __RawDictionaryStorage.find<A>(_:)(0x65676E6172, 0xE500000000000000);
      if ((v10 & 1) == 0)
      {
        goto LABEL_56;
      }

      outlined init with copy of Any(*(v3 + 56) + 32 * result, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {
        goto LABEL_56;
      }

      if (v17[2] == 2)
      {
        v12 = v17[4];
        v11 = v17[5];

        if (!*(v3 + 16))
        {
          goto LABEL_39;
        }

        result = specialized __RawDictionaryStorage.find<A>(_:)(1701080941, 0xE400000000000000);
        if ((v13 & 1) == 0)
        {
          goto LABEL_39;
        }

        outlined init with copy of Any(*(v3 + 56) + 32 * result, v19);
        result = swift_dynamicCast();
        if ((result & 1) == 0)
        {
          goto LABEL_39;
        }

        if (v17 == 0xD000000000000013 && 0x800000020B4544E0 == v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

LABEL_39:
          *a2 = v12;
          *(a2 + 8) = v11;
          v9 = -123;
          goto LABEL_57;
        }

        if (v17 == 0x5F65676172657661 && v18 == 0xED00007265776F70)
        {

LABEL_55:
          *a2 = v12;
          *(a2 + 8) = v11;
          v9 = -122;
          goto LABEL_57;
        }

        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v16)
        {
          goto LABEL_55;
        }
      }

      else
      {
      }

LABEL_56:
      *a2 = 0;
      *(a2 + 8) = 0;
      v9 = -8;
      goto LABEL_57;
    }

    if (v17 == 6710895 && v18 == 0xE300000000000000)
    {
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    *a2 = 0;
    *(a2 + 8) = 0;
    v9 = -64;
    goto LABEL_57;
  }

  if (!*(v3 + 16))
  {
    goto LABEL_56;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x800000020B454030);
  if ((v8 & 1) == 0)
  {
    goto LABEL_56;
  }

  outlined init with copy of Any(*(v3 + 56) + 32 * result, v19);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_56;
  }

  *a2 = v17;
  *(a2 + 8) = 0;
  v9 = 64;
LABEL_57:
  *(a2 + 16) = v9;
  return result;
}

id one-time initialization function for defaultZone()
{
  v0 = type metadata accessor for PowerZonesAlertTargetZone();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_defaultZonesDidLoad];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v1[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = -64;
  v5.receiver = v1;
  v5.super_class = v0;
  result = objc_msgSendSuper2(&v5, sel_init);
  static PowerZonesAlertTargetZone.defaultZone = result;
  return result;
}

uint64_t protocol witness for TargetZoneStorable.zoneKey() in conformance HeartRateTargetZone(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  swift_beginAccess();
  v6 = *a3;
  v7 = *a4;

  return v6;
}

uint64_t specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  v6 = static TargetZoneStorage.userDefaults;
  v7 = MEMORY[0x20F2E6C00](a1, a2);
  v8 = [v6 dictionaryForKey_];

  if (v8)
  {
    v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v9);

    if (v10)
    {
      v11 = [a3 uniqueIdentifier];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      if (*(v10 + 16))
      {
        v15 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v14);
        v17 = v16;

        if (v17)
        {
          v18 = *(*(v10 + 56) + 8 * v15);

          return v18;
        }
      }

      else
      {
      }
    }
  }

  return 0;
}

uint64_t specialized TargetZone.__allocating_init(dict:)(uint64_t a1)
{
  if (!*(a1 + 16) || (v2 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000), (v3 & 1) == 0) || (outlined init with copy of Any(*(a1 + 56) + 32 * v2, v24), (swift_dynamicCast() & 1) == 0) || (TargetZone.ZoneType.init(rawValue:)(v23), v4 = v24[0], v24[0] == 8))
  {

    return 0;
  }

  if (*(a1 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(0x6D756D696E696DLL, 0xE700000000000000), (v7 & 1) != 0) && (outlined init with copy of Any(*(a1 + 56) + 32 * v6, v24), type metadata accessor for NSUserDefaults(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0), (swift_dynamicCast() & 1) != 0))
  {
    [v23._countAndFlagsBits doubleValue];
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  if (*(a1 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(0x6D756D6978616DLL, 0xE700000000000000), (v11 & 1) != 0) && (outlined init with copy of Any(*(a1 + 56) + 32 * v10, v24), type metadata accessor for NSUserDefaults(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0), (swift_dynamicCast() & 1) != 0))
  {
    [v23._countAndFlagsBits doubleValue];
    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  if (*(a1 + 16) && (v14 = specialized __RawDictionaryStorage.find<A>(_:)(0x64656C62616E65, 0xE700000000000000), (v15 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v14, v24);

    if (swift_dynamicCast())
    {
      if (v23 == __PAIR128__(0xE400000000000000, 1702195828))
      {

LABEL_36:
        if (v9 == 0.0 && v9 != v13)
        {
          v9 = v13;
        }

        v16 = 1;
        if (v13 != 0.0)
        {
          goto LABEL_28;
        }

        goto LABEL_26;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
  }

  v16 = 0;
  if (v9 == 0.0 && v9 != v13)
  {
    v9 = v13;
  }

  if (v13 != 0.0)
  {
    goto LABEL_28;
  }

LABEL_26:
  if (v9 != v13)
  {
    v13 = v9;
  }

LABEL_28:
  type metadata accessor for TargetZone();
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = v9;
  *(v17 + 32) = v13;
  v18 = v17;
  if (v4 > 6)
  {

    v20 = 0;
    v21 = v18;
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v20 = 0;
    v21 = v18;
    if ((v19 & 1) == 0)
    {
      v20 = v9 > 0.0 || v13 > 0.0;
    }
  }

  *(v21 + 40) = v20;
  swift_beginAccess();
  result = v18;
  *(v21 + 40) = v16;
  return result;
}

double specialized static TargetZoneStorage.defaultZones(activityType:)(void *a1)
{
  if (one-time initialization token for alerts != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.alerts);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136315138;
    v8 = [v3 localizedName];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v24);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Loading alerts for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  v13 = specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(0xD00000000000001DLL, 0x800000020B454520, v3);
  if (v13 && (v14 = specialized TargetZone.__allocating_init(dict:)(v13)) != 0)
  {
    v15 = v14;
  }

  else
  {
    type metadata accessor for TargetZone();
    v15 = swift_allocObject();
    *(v15 + 16) = 1;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0;
    *(v15 + 40) = 0;
  }

  v16 = specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(0xD000000000000020, 0x800000020B454540, v3);
  if (v16 && (v17 = specialized TargetZone.__allocating_init(dict:)(v16)) != 0)
  {
    v18 = v17;
  }

  else
  {
    type metadata accessor for TargetZone();
    v18 = swift_allocObject();
    *(v18 + 16) = 4;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    *(v18 + 40) = 0;
  }

  v19 = specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(0xD00000000000001ELL, 0x800000020B454570, v3);
  if (v19 && (v20 = specialized TargetZone.__allocating_init(dict:)(v19)) != 0)
  {
    v21 = v20;
  }

  else
  {
    type metadata accessor for TargetZone();
    v21 = swift_allocObject();
    *(v21 + 16) = 6;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    *(v21 + 40) = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v22 = swift_allocObject();
  *&result = 3;
  *(v22 + 16) = xmmword_20B42C8E0;
  *(v22 + 32) = v15;
  *(v22 + 40) = v18;
  *(v22 + 48) = v21;
  return result;
}

uint64_t specialized static PowerZonesAlertTargetZone.alertIsEnabled(from:)(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 2;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000);
  if ((v3 & 1) == 0)
  {
    return 2;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v2, v8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 2;
  }

  if (v6 == 0x746567726174 && v7 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v6 == 0x6974616D6F747561 && v7 == 0xE900000000000063 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v6 == 0x6D6F74737563 && v7 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (v6 == 6710895 && v7 == 0xE300000000000000)
  {

    return 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }
}

void specialized HeartRateTargetZone.__allocating_init(dict:)(uint64_t a1)
{
  if (!*(a1 + 16) || (v2 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000), (v3 & 1) == 0) || (outlined init with copy of Any(*(a1 + 56) + 32 * v2, v24), (swift_dynamicCast() & 1) == 0) || (v4 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HeartRateZoneType.init(rawValue:), v23), , v4 >= 3))
  {

    return;
  }

  if (*(a1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(0x756F427265776F6CLL, 0xEA0000000000646ELL), (v6 & 1) != 0) && (outlined init with copy of Any(*(a1 + 56) + 32 * v5, v24), type metadata accessor for NSUserDefaults(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0), (swift_dynamicCast() & 1) != 0))
  {
    [v23._countAndFlagsBits doubleValue];
    v8 = v7;

    v9 = 0;
    v10 = v8;
  }

  else
  {
    v10 = 0.0;
    v9 = 1;
  }

  if (*(a1 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(0x756F427265707075, 0xEA0000000000646ELL), (v12 & 1) != 0) && (outlined init with copy of Any(*(a1 + 56) + 32 * v11, v24), type metadata accessor for NSUserDefaults(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0), (swift_dynamicCast() & 1) != 0))
  {
    [v23._countAndFlagsBits doubleValue];
    v14 = v13;

    v15 = 0;
    v16 = v14;
  }

  else
  {
    v16 = 0.0;
    v15 = 1;
  }

  if (*(a1 + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x800000020B454030), (v18 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v17, v24);

    type metadata accessor for NSUserDefaults(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v19 = [v23._countAndFlagsBits integerValue];

      v20 = 0;
      goto LABEL_22;
    }
  }

  else
  {
  }

  v19 = 0;
  v20 = 1;
LABEL_22:
  v21 = v9 | v15;
  if (v21)
  {
    v10 = 0.0;
    v16 = 0.0;
LABEL_25:
    v24[0] = v4;
    v22 = objc_allocWithZone(type metadata accessor for HeartRateTargetZone());
    HeartRateTargetZone.init(type:customRange:defaultZoneIndex:defaultZones:)(v24, *&v10, *&v16, v21, v19, v20, 0);
    return;
  }

  if (v10 <= v16)
  {
    goto LABEL_25;
  }

  __break(1u);
}

unint64_t lazy protocol witness table accessor for type TargetZone.ZoneTypeKey and conformance TargetZone.ZoneTypeKey()
{
  result = lazy protocol witness table cache variable for type TargetZone.ZoneTypeKey and conformance TargetZone.ZoneTypeKey;
  if (!lazy protocol witness table cache variable for type TargetZone.ZoneTypeKey and conformance TargetZone.ZoneTypeKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetZone.ZoneTypeKey and conformance TargetZone.ZoneTypeKey);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TargetZoneStorage(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TargetZoneStorage(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for TargetZone.ZoneTypeKey(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TargetZone.ZoneTypeKey(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for NSUserDefaults(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t protocol witness for CodingKey.stringValue.getter in conformance RacePosition.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6E4F746559746F6ELL;
  v3 = 0x6574656C706D6F63;
  v4 = 0x6E776F6E6B6E75;
  if (v1 != 4)
  {
    v4 = 0x64657269707865;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6574756F526E6FLL;
  if (v1 != 1)
  {
    v5 = 0x6574756F5266666FLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RacePosition.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized RacePosition.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RacePosition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePosition.CodingKeys and conformance RacePosition.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RacePosition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePosition.CodingKeys and conformance RacePosition.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RacePosition.CompletedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePosition.CompletedCodingKeys and conformance RacePosition.CompletedCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RacePosition.CompletedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePosition.CompletedCodingKeys and conformance RacePosition.CompletedCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RacePosition.ExpiredCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePosition.ExpiredCodingKeys and conformance RacePosition.ExpiredCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RacePosition.ExpiredCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePosition.ExpiredCodingKeys and conformance RacePosition.ExpiredCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RacePosition.NotYetOnRouteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePosition.NotYetOnRouteCodingKeys and conformance RacePosition.NotYetOnRouteCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RacePosition.NotYetOnRouteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePosition.NotYetOnRouteCodingKeys and conformance RacePosition.NotYetOnRouteCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RacePosition.OffRouteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePosition.OffRouteCodingKeys and conformance RacePosition.OffRouteCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RacePosition.OffRouteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePosition.OffRouteCodingKeys and conformance RacePosition.OffRouteCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RacePosition.OnRouteCodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RacePosition.OnRouteCodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance RacePosition.OnRouteCodingKeys()
{
  if (*v0)
  {
    result = 0x65636E6174736964;
  }

  else
  {
    result = 0x61656841656D6974;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RacePosition.OnRouteCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x61656841656D6974 && a2 == 0xE900000000000064;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65636E6174736964 && a2 == 0xED00006461656841)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RacePosition.OnRouteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePosition.OnRouteCodingKeys and conformance RacePosition.OnRouteCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RacePosition.OnRouteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePosition.OnRouteCodingKeys and conformance RacePosition.OnRouteCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RacePosition.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePosition.UnknownCodingKeys and conformance RacePosition.UnknownCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RacePosition.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePosition.UnknownCodingKeys and conformance RacePosition.UnknownCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RacePosition.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore12RacePositionO17ExpiredCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore12RacePositionO17ExpiredCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v53 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore12RacePositionO17UnknownCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore12RacePositionO17UnknownCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v51 = *(v6 - 8);
  v52 = v6;
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v6);
  v50 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore12RacePositionO19CompletedCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore12RacePositionO19CompletedCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v48 = *(v9 - 8);
  v49 = v9;
  v10 = *(v48 + 64);
  MEMORY[0x28223BE20](v9);
  v47 = &v41 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore12RacePositionO18OffRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore12RacePositionO18OffRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v45 = *(v12 - 8);
  v46 = v12;
  v13 = *(v45 + 64);
  MEMORY[0x28223BE20](v12);
  v44 = &v41 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore12RacePositionO17OnRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore12RacePositionO17OnRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v57 = *(v15 - 8);
  v58 = v15;
  v16 = *(v57 + 64);
  MEMORY[0x28223BE20](v15);
  v56 = &v41 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore12RacePositionO23NotYetOnRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore12RacePositionO23NotYetOnRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v42 = *(v18 - 8);
  v43 = v18;
  v19 = *(v42 + 64);
  MEMORY[0x28223BE20](v18);
  v41 = &v41 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore12RacePositionO10CodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore12RacePositionO10CodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v41 - v24;
  v26 = *v1;
  v27 = *(v1 + 8);
  v28 = *(v1 + 12);
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RacePosition.CodingKeys and conformance RacePosition.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v28 == 1)
  {
    v30 = v21;
    v31 = (v22 + 8);
    if (v26 <= 1)
    {
      if (v26 | v27)
      {
        v64 = 2;
        lazy protocol witness table accessor for type RacePosition.OffRouteCodingKeys and conformance RacePosition.OffRouteCodingKeys();
        v32 = v44;
        v33 = v30;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v35 = v45;
        v34 = v46;
      }

      else
      {
        v60 = 0;
        lazy protocol witness table accessor for type RacePosition.NotYetOnRouteCodingKeys and conformance RacePosition.NotYetOnRouteCodingKeys();
        v32 = v41;
        v33 = v30;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v35 = v42;
        v34 = v43;
      }
    }

    else if (v26 ^ 2 | v27)
    {
      if (v26 ^ 3 | v27)
      {
        v67 = 5;
        lazy protocol witness table accessor for type RacePosition.ExpiredCodingKeys and conformance RacePosition.ExpiredCodingKeys();
        v32 = v53;
        v33 = v30;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v35 = v54;
        v34 = v55;
      }

      else
      {
        v66 = 4;
        lazy protocol witness table accessor for type RacePosition.UnknownCodingKeys and conformance RacePosition.UnknownCodingKeys();
        v32 = v50;
        v33 = v30;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v35 = v51;
        v34 = v52;
      }
    }

    else
    {
      v65 = 3;
      lazy protocol witness table accessor for type RacePosition.CompletedCodingKeys and conformance RacePosition.CompletedCodingKeys();
      v32 = v47;
      v33 = v30;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v35 = v48;
      v34 = v49;
    }

    (*(v35 + 8))(v32, v34);
    return (*v31)(v25, v33);
  }

  else
  {
    v55 = v27;
    v36 = v22;
    v63 = 1;
    lazy protocol witness table accessor for type RacePosition.OnRouteCodingKeys and conformance RacePosition.OnRouteCodingKeys();
    v37 = v56;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v62 = 0;
    v39 = v58;
    v38 = v59;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (!v38)
    {
      v61 = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
    }

    (*(v57 + 8))(v37, v39);
    return (*(v36 + 8))(v25, v21);
  }
}

uint64_t RacePosition.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore12RacePositionO17ExpiredCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore12RacePositionO17ExpiredCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v69 = *(v71 - 8);
  v3 = *(v69 + 64);
  MEMORY[0x28223BE20](v71);
  v75 = &v58 - v4;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore12RacePositionO17UnknownCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore12RacePositionO17UnknownCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v68 = *(v70 - 8);
  v5 = *(v68 + 64);
  MEMORY[0x28223BE20](v70);
  v72 = &v58 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore12RacePositionO19CompletedCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore12RacePositionO19CompletedCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v67 = *(v64 - 8);
  v7 = *(v67 + 64);
  MEMORY[0x28223BE20](v64);
  v74 = &v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore12RacePositionO18OffRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore12RacePositionO18OffRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v10 = *(v9 - 8);
  v62 = v9;
  v63 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v73 = &v58 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore12RacePositionO17OnRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore12RacePositionO17OnRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v65 = *(v13 - 8);
  v66 = v13;
  v14 = *(v65 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v58 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore12RacePositionO23NotYetOnRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore12RacePositionO23NotYetOnRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v61 = *(v17 - 8);
  v18 = *(v61 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v58 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore12RacePositionO10CodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore12RacePositionO10CodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v58 - v24;
  v27 = a1[3];
  v26 = a1[4];
  v78 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  lazy protocol witness table accessor for type RacePosition.CodingKeys and conformance RacePosition.CodingKeys();
  v28 = v77;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v28)
  {
    v58 = v17;
    v29 = v73;
    v59 = v16;
    v30 = v74;
    v31 = v75;
    v60 = v22;
    v32 = v76;
    v77 = v25;
    v33 = KeyedDecodingContainer.allKeys.getter();
    if (*(v33 + 16) == 1)
    {
      v34 = *(v33 + 32);
      if (v34 != 6)
      {
        if (*(v33 + 32) > 2u)
        {
          if (v34 == 3)
          {
            v84 = 3;
            lazy protocol witness table accessor for type RacePosition.CompletedCodingKeys and conformance RacePosition.CompletedCodingKeys();
            v49 = v77;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            v50 = v60;
            (*(v67 + 8))(v30, v64);
            (*(v50 + 8))(v49, v21);
            swift_unknownObjectRelease();
            v57 = 1;
            v56 = 0;
            v47 = 2;
          }

          else
          {
            v44 = v60;
            v45 = v77;
            if (v34 == 4)
            {
              v85 = 4;
              lazy protocol witness table accessor for type RacePosition.UnknownCodingKeys and conformance RacePosition.UnknownCodingKeys();
              v46 = v72;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v68 + 8))(v46, v70);
              (*(v44 + 8))(v45, v21);
              swift_unknownObjectRelease();
              v57 = 1;
              v56 = 0;
              v47 = 3;
            }

            else
            {
              v86 = 5;
              lazy protocol witness table accessor for type RacePosition.ExpiredCodingKeys and conformance RacePosition.ExpiredCodingKeys();
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v69 + 8))(v31, v71);
              (*(v44 + 8))(v45, v21);
              swift_unknownObjectRelease();
              v57 = 1;
              v56 = 0;
              v47 = 4;
            }
          }
        }

        else
        {
          if (!*(v33 + 32))
          {
            v79 = 0;
            lazy protocol witness table accessor for type RacePosition.NotYetOnRouteCodingKeys and conformance RacePosition.NotYetOnRouteCodingKeys();
            v48 = v77;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            (*(v61 + 8))(v20, v58);
            (*(v60 + 8))(v48, v21);
            swift_unknownObjectRelease();
            v57 = 1;
            v56 = 0;
            v54 = 0;
            goto LABEL_18;
          }

          if (v34 == 1)
          {
            v82 = 1;
            lazy protocol witness table accessor for type RacePosition.OnRouteCodingKeys and conformance RacePosition.OnRouteCodingKeys();
            v35 = v59;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            v36 = v60;
            v81 = 0;
            v37 = v66;
            KeyedDecodingContainer.decode(_:forKey:)();
            v54 = v53;
            v80 = 1;
            KeyedDecodingContainer.decode(_:forKey:)();
            v56 = v55;
            (*(v65 + 8))(v35, v37);
            (*(v36 + 8))(v77, v21);
            swift_unknownObjectRelease();
            v57 = 0;
LABEL_18:
            *v32 = v54;
            *(v32 + 8) = v56;
            *(v32 + 12) = v57;
            return __swift_destroy_boxed_opaque_existential_1(v78);
          }

          v83 = 2;
          lazy protocol witness table accessor for type RacePosition.OffRouteCodingKeys and conformance RacePosition.OffRouteCodingKeys();
          v51 = v77;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v52 = v60;
          (*(v63 + 8))(v29, v62);
          (*(v52 + 8))(v51, v21);
          swift_unknownObjectRelease();
          v57 = 1;
          v56 = 0;
          v47 = 1;
        }

        v54 = v47;
        goto LABEL_18;
      }
    }

    v38 = type metadata accessor for DecodingError();
    swift_allocError();
    v40 = v39;
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v40 = &type metadata for RacePosition;
    v42 = v77;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
    swift_willThrow();
    (*(v60 + 8))(v42, v21);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v78);
}

uint64_t specialized Collection<>.popFirst()()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void RacePosition.racePositionState.getter(char *a1@<X8>)
{
  if (*v1 >= 0.0)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*(v1 + 12) == 1)
  {
    v2 = 0x605040300uLL >> (8 * *v1);
  }

  *a1 = v2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance RacePositionState.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6E4F746559746F6ELL;
  v3 = 0x6E776F6E6B6E75;
  if (v1 != 5)
  {
    v3 = 0x64657269707865;
  }

  v4 = 0x6574756F5266666FLL;
  if (v1 != 3)
  {
    v4 = 0x6574656C706D6F63;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x416574756F526E6FLL;
  if (v1 != 1)
  {
    v5 = 0x426574756F526E6FLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RacePositionState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized RacePositionState.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RacePositionState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePositionState.CodingKeys and conformance RacePositionState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RacePositionState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePositionState.CodingKeys and conformance RacePositionState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RacePositionState.CompletedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePositionState.CompletedCodingKeys and conformance RacePositionState.CompletedCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RacePositionState.CompletedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePositionState.CompletedCodingKeys and conformance RacePositionState.CompletedCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RacePositionState.ExpiredCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePositionState.ExpiredCodingKeys and conformance RacePositionState.ExpiredCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RacePositionState.ExpiredCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePositionState.ExpiredCodingKeys and conformance RacePositionState.ExpiredCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RacePositionState.NotYetOnRouteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePositionState.NotYetOnRouteCodingKeys and conformance RacePositionState.NotYetOnRouteCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RacePositionState.NotYetOnRouteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePositionState.NotYetOnRouteCodingKeys and conformance RacePositionState.NotYetOnRouteCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RacePositionState.OffRouteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePositionState.OffRouteCodingKeys and conformance RacePositionState.OffRouteCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RacePositionState.OffRouteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePositionState.OffRouteCodingKeys and conformance RacePositionState.OffRouteCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RacePositionState.OnRouteAheadCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePositionState.OnRouteAheadCodingKeys and conformance RacePositionState.OnRouteAheadCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RacePositionState.OnRouteAheadCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePositionState.OnRouteAheadCodingKeys and conformance RacePositionState.OnRouteAheadCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RacePositionState.OnRouteBehindCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePositionState.OnRouteBehindCodingKeys and conformance RacePositionState.OnRouteBehindCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RacePositionState.OnRouteBehindCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePositionState.OnRouteBehindCodingKeys and conformance RacePositionState.OnRouteBehindCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RacePositionState.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePositionState.UnknownCodingKeys and conformance RacePositionState.UnknownCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RacePositionState.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RacePositionState.UnknownCodingKeys and conformance RacePositionState.UnknownCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RacePositionState.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore17RacePositionStateO17ExpiredCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore17RacePositionStateO17ExpiredCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  MEMORY[0x28223BE20](v4);
  v58 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore17RacePositionStateO17UnknownCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore17RacePositionStateO17UnknownCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  MEMORY[0x28223BE20](v7);
  v55 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore17RacePositionStateO19CompletedCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore17RacePositionStateO19CompletedCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = *(v53 + 64);
  MEMORY[0x28223BE20](v10);
  v52 = &v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore17RacePositionStateO18OffRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore17RacePositionStateO18OffRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v50 = *(v13 - 8);
  v51 = v13;
  v14 = *(v50 + 64);
  MEMORY[0x28223BE20](v13);
  v49 = &v47 - v15;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore17RacePositionStateO23OnRouteBehindCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore17RacePositionStateO23OnRouteBehindCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v64 = *(v48 - 8);
  v16 = *(v64 + 64);
  MEMORY[0x28223BE20](v48);
  v63 = &v47 - v17;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore17RacePositionStateO22OnRouteAheadCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore17RacePositionStateO22OnRouteAheadCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v62 = *(v47 - 8);
  v18 = *(v62 + 64);
  MEMORY[0x28223BE20](v47);
  v20 = &v47 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore17RacePositionStateO23NotYetOnRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore17RacePositionStateO23NotYetOnRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v61 = *(v21 - 8);
  v22 = *(v61 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v47 - v23;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore17RacePositionStateO10CodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore17RacePositionStateO10CodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v25 = *(v66 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v66);
  v28 = &v47 - v27;
  v29 = *v2;
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RacePositionState.CodingKeys and conformance RacePositionState.CodingKeys();
  v65 = v28;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v31 = (v25 + 8);
  if (v29 <= 2)
  {
    v37 = v61;
    v38 = v62;
    v39 = v63;
    v40 = v64;
    if (v29)
    {
      if (v29 == 1)
      {
        v68 = 1;
        lazy protocol witness table accessor for type RacePositionState.OnRouteAheadCodingKeys and conformance RacePositionState.OnRouteAheadCodingKeys();
        v42 = v65;
        v41 = v66;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v38 + 8))(v20, v47);
      }

      else
      {
        v69 = 2;
        lazy protocol witness table accessor for type RacePositionState.OnRouteBehindCodingKeys and conformance RacePositionState.OnRouteBehindCodingKeys();
        v46 = v39;
        v42 = v65;
        v41 = v66;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v40 + 8))(v46, v48);
      }

      return (*v31)(v42, v41);
    }

    else
    {
      v67 = 0;
      lazy protocol witness table accessor for type RacePositionState.NotYetOnRouteCodingKeys and conformance RacePositionState.NotYetOnRouteCodingKeys();
      v43 = v65;
      v44 = v66;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v37 + 8))(v24, v21);
      return (*v31)(v43, v44);
    }
  }

  else
  {
    if (v29 > 4)
    {
      if (v29 == 5)
      {
        v72 = 5;
        lazy protocol witness table accessor for type RacePositionState.UnknownCodingKeys and conformance RacePositionState.UnknownCodingKeys();
        v32 = v55;
        v33 = v65;
        v34 = v66;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v36 = v56;
        v35 = v57;
      }

      else
      {
        v73 = 6;
        lazy protocol witness table accessor for type RacePositionState.ExpiredCodingKeys and conformance RacePositionState.ExpiredCodingKeys();
        v32 = v58;
        v33 = v65;
        v34 = v66;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v36 = v59;
        v35 = v60;
      }
    }

    else if (v29 == 3)
    {
      v70 = 3;
      lazy protocol witness table accessor for type RacePositionState.OffRouteCodingKeys and conformance RacePositionState.OffRouteCodingKeys();
      v32 = v49;
      v33 = v65;
      v34 = v66;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v36 = v50;
      v35 = v51;
    }

    else
    {
      v71 = 4;
      lazy protocol witness table accessor for type RacePositionState.CompletedCodingKeys and conformance RacePositionState.CompletedCodingKeys();
      v32 = v52;
      v33 = v65;
      v34 = v66;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v36 = v53;
      v35 = v54;
    }

    (*(v36 + 8))(v32, v35);
    return (*v31)(v33, v34);
  }
}

Swift::Int RacePositionState.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t RacePositionState.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v79 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore17RacePositionStateO17ExpiredCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore17RacePositionStateO17ExpiredCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v74 = *(v3 - 8);
  v75 = v3;
  v4 = *(v74 + 64);
  MEMORY[0x28223BE20](v3);
  v78 = &v59[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore17RacePositionStateO17UnknownCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore17RacePositionStateO17UnknownCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v72 = *(v6 - 8);
  v73 = v6;
  v7 = *(v72 + 64);
  MEMORY[0x28223BE20](v6);
  v81 = &v59[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore17RacePositionStateO19CompletedCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore17RacePositionStateO19CompletedCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v10 = *(v9 - 8);
  v70 = v9;
  v71 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v77 = &v59[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore17RacePositionStateO18OffRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore17RacePositionStateO18OffRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v14 = *(v13 - 8);
  v68 = v13;
  v69 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v76 = &v59[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore17RacePositionStateO23OnRouteBehindCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore17RacePositionStateO23OnRouteBehindCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v66 = *(v17 - 8);
  v67 = v17;
  v18 = *(v66 + 64);
  MEMORY[0x28223BE20](v17);
  v80 = &v59[-v19];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore17RacePositionStateO22OnRouteAheadCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore17RacePositionStateO22OnRouteAheadCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v64 = *(v20 - 8);
  v65 = v20;
  v21 = *(v64 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v59[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore17RacePositionStateO23NotYetOnRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore17RacePositionStateO23NotYetOnRouteCodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v63 = *(v24 - 8);
  v25 = *(v63 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v59[-v26];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore17RacePositionStateO10CodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore17RacePositionStateO10CodingKeys33_361213C45314AC70BA6774AEB37124DELLOGMR);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v59[-v31];
  v33 = a1[3];
  v34 = a1[4];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  lazy protocol witness table accessor for type RacePositionState.CodingKeys and conformance RacePositionState.CodingKeys();
  v35 = v83;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v35)
  {
    v61 = v24;
    v36 = v80;
    v37 = v81;
    v62 = v29;
    v83 = v28;
    v38 = KeyedDecodingContainer.allKeys.getter();
    if (*(v38 + 16) == 1)
    {
      v39 = *(v38 + 32);
      if (v39 != 7)
      {
        v60 = *(v38 + 32);
        if (v39 > 2)
        {
          if (v39 > 4)
          {
            v40 = v39 == 5;
            v41 = v79;
            v51 = v83;
            if (v40)
            {
              v89 = 5;
              lazy protocol witness table accessor for type RacePositionState.UnknownCodingKeys and conformance RacePositionState.UnknownCodingKeys();
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              v56 = v62;
              (*(v72 + 8))(v37, v73);
            }

            else
            {
              v90 = 6;
              lazy protocol witness table accessor for type RacePositionState.ExpiredCodingKeys and conformance RacePositionState.ExpiredCodingKeys();
              v55 = v78;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              v56 = v62;
              (*(v74 + 8))(v55, v75);
            }

            (*(v56 + 8))(v32, v51);
          }

          else
          {
            v40 = v39 == 3;
            v41 = v79;
            v42 = v83;
            if (v40)
            {
              v87 = 3;
              lazy protocol witness table accessor for type RacePositionState.OffRouteCodingKeys and conformance RacePositionState.OffRouteCodingKeys();
              v43 = v76;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              v54 = v62;
              (*(v69 + 8))(v43, v68);
            }

            else
            {
              v88 = 4;
              lazy protocol witness table accessor for type RacePositionState.CompletedCodingKeys and conformance RacePositionState.CompletedCodingKeys();
              v53 = v77;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              v54 = v62;
              (*(v71 + 8))(v53, v70);
            }

            (*(v54 + 8))(v32, v42);
          }

          swift_unknownObjectRelease();
          v57 = v82;
          goto LABEL_25;
        }

        if (v39)
        {
          if (v39 == 1)
          {
            v85 = 1;
            lazy protocol witness table accessor for type RacePositionState.OnRouteAheadCodingKeys and conformance RacePositionState.OnRouteAheadCodingKeys();
            v49 = v32;
            v50 = v83;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            (*(v64 + 8))(v23, v65);
            (*(v62 + 8))(v49, v50);
LABEL_21:
            swift_unknownObjectRelease();
            v57 = v82;
            v41 = v79;
LABEL_25:
            *v41 = v60;
            return __swift_destroy_boxed_opaque_existential_1(v57);
          }

          v86 = 2;
          lazy protocol witness table accessor for type RacePositionState.OnRouteBehindCodingKeys and conformance RacePositionState.OnRouteBehindCodingKeys();
          v52 = v83;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v66 + 8))(v36, v67);
        }

        else
        {
          v84 = 0;
          lazy protocol witness table accessor for type RacePositionState.NotYetOnRouteCodingKeys and conformance RacePositionState.NotYetOnRouteCodingKeys();
          v52 = v83;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v63 + 8))(v27, v61);
        }

        (*(v62 + 8))(v32, v52);
        goto LABEL_21;
      }
    }

    v44 = type metadata accessor for DecodingError();
    swift_allocError();
    v46 = v45;
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v46 = &type metadata for RacePositionState;
    v48 = v83;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D84160], v44);
    swift_willThrow();
    (*(v62 + 8))(v32, v48);
    swift_unknownObjectRelease();
  }

  v57 = v82;
  return __swift_destroy_boxed_opaque_existential_1(v57);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RacePosition.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RacePosition.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

BOOL specialized static RacePosition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 12) == 1)
  {
    if (*&v2 <= 1uLL)
    {
      if (*&v2 | LODWORD(v3))
      {
        if (*(a2 + 12) && !(*&v4 ^ 1 | v5))
        {
          return 1;
        }
      }

      else if (*(a2 + 12) && !(*&v4 | v5))
      {
        return 1;
      }
    }

    else if (*&v2 ^ 2 | LODWORD(v3))
    {
      if (*&v2 ^ 3 | LODWORD(v3))
      {
        if (*(a2 + 12) && *&v4 > 3uLL)
        {
          return 1;
        }
      }

      else if (*(a2 + 12) && !(*&v4 ^ 3 | v5))
      {
        return 1;
      }
    }

    else if (*(a2 + 12) && !(*&v4 ^ 2 | v5))
    {
      return 1;
    }
  }

  else if ((*(a2 + 12) & 1) == 0)
  {
    v7 = *a1;
    v8 = *a2;
    if (v2 == v4)
    {
      v9 = *(a1 + 8);
      return v3 == *&v5;
    }
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type RacePosition.CodingKeys and conformance RacePosition.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RacePosition.CodingKeys and conformance RacePosition.CodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.CodingKeys and conformance RacePosition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.CodingKeys and conformance RacePosition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePosition.CodingKeys and conformance RacePosition.CodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.CodingKeys and conformance RacePosition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.CodingKeys and conformance RacePosition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePosition.CodingKeys and conformance RacePosition.CodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.CodingKeys and conformance RacePosition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.CodingKeys and conformance RacePosition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePosition.CodingKeys and conformance RacePosition.CodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.CodingKeys and conformance RacePosition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.CodingKeys and conformance RacePosition.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RacePosition.ExpiredCodingKeys and conformance RacePosition.ExpiredCodingKeys()
{
  result = lazy protocol witness table cache variable for type RacePosition.ExpiredCodingKeys and conformance RacePosition.ExpiredCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.ExpiredCodingKeys and conformance RacePosition.ExpiredCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.ExpiredCodingKeys and conformance RacePosition.ExpiredCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePosition.ExpiredCodingKeys and conformance RacePosition.ExpiredCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.ExpiredCodingKeys and conformance RacePosition.ExpiredCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.ExpiredCodingKeys and conformance RacePosition.ExpiredCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePosition.ExpiredCodingKeys and conformance RacePosition.ExpiredCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.ExpiredCodingKeys and conformance RacePosition.ExpiredCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.ExpiredCodingKeys and conformance RacePosition.ExpiredCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RacePosition.UnknownCodingKeys and conformance RacePosition.UnknownCodingKeys()
{
  result = lazy protocol witness table cache variable for type RacePosition.UnknownCodingKeys and conformance RacePosition.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.UnknownCodingKeys and conformance RacePosition.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.UnknownCodingKeys and conformance RacePosition.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePosition.UnknownCodingKeys and conformance RacePosition.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.UnknownCodingKeys and conformance RacePosition.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.UnknownCodingKeys and conformance RacePosition.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePosition.UnknownCodingKeys and conformance RacePosition.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.UnknownCodingKeys and conformance RacePosition.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.UnknownCodingKeys and conformance RacePosition.UnknownCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RacePosition.CompletedCodingKeys and conformance RacePosition.CompletedCodingKeys()
{
  result = lazy protocol witness table cache variable for type RacePosition.CompletedCodingKeys and conformance RacePosition.CompletedCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.CompletedCodingKeys and conformance RacePosition.CompletedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.CompletedCodingKeys and conformance RacePosition.CompletedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePosition.CompletedCodingKeys and conformance RacePosition.CompletedCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.CompletedCodingKeys and conformance RacePosition.CompletedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.CompletedCodingKeys and conformance RacePosition.CompletedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePosition.CompletedCodingKeys and conformance RacePosition.CompletedCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.CompletedCodingKeys and conformance RacePosition.CompletedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.CompletedCodingKeys and conformance RacePosition.CompletedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RacePosition.OffRouteCodingKeys and conformance RacePosition.OffRouteCodingKeys()
{
  result = lazy protocol witness table cache variable for type RacePosition.OffRouteCodingKeys and conformance RacePosition.OffRouteCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.OffRouteCodingKeys and conformance RacePosition.OffRouteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.OffRouteCodingKeys and conformance RacePosition.OffRouteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePosition.OffRouteCodingKeys and conformance RacePosition.OffRouteCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.OffRouteCodingKeys and conformance RacePosition.OffRouteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.OffRouteCodingKeys and conformance RacePosition.OffRouteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePosition.OffRouteCodingKeys and conformance RacePosition.OffRouteCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.OffRouteCodingKeys and conformance RacePosition.OffRouteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.OffRouteCodingKeys and conformance RacePosition.OffRouteCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RacePosition.OnRouteCodingKeys and conformance RacePosition.OnRouteCodingKeys()
{
  result = lazy protocol witness table cache variable for type RacePosition.OnRouteCodingKeys and conformance RacePosition.OnRouteCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.OnRouteCodingKeys and conformance RacePosition.OnRouteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.OnRouteCodingKeys and conformance RacePosition.OnRouteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePosition.OnRouteCodingKeys and conformance RacePosition.OnRouteCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.OnRouteCodingKeys and conformance RacePosition.OnRouteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.OnRouteCodingKeys and conformance RacePosition.OnRouteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePosition.OnRouteCodingKeys and conformance RacePosition.OnRouteCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.OnRouteCodingKeys and conformance RacePosition.OnRouteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.OnRouteCodingKeys and conformance RacePosition.OnRouteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePosition.OnRouteCodingKeys and conformance RacePosition.OnRouteCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.OnRouteCodingKeys and conformance RacePosition.OnRouteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.OnRouteCodingKeys and conformance RacePosition.OnRouteCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RacePosition.NotYetOnRouteCodingKeys and conformance RacePosition.NotYetOnRouteCodingKeys()
{
  result = lazy protocol witness table cache variable for type RacePosition.NotYetOnRouteCodingKeys and conformance RacePosition.NotYetOnRouteCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.NotYetOnRouteCodingKeys and conformance RacePosition.NotYetOnRouteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.NotYetOnRouteCodingKeys and conformance RacePosition.NotYetOnRouteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePosition.NotYetOnRouteCodingKeys and conformance RacePosition.NotYetOnRouteCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.NotYetOnRouteCodingKeys and conformance RacePosition.NotYetOnRouteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.NotYetOnRouteCodingKeys and conformance RacePosition.NotYetOnRouteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePosition.NotYetOnRouteCodingKeys and conformance RacePosition.NotYetOnRouteCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePosition.NotYetOnRouteCodingKeys and conformance RacePosition.NotYetOnRouteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePosition.NotYetOnRouteCodingKeys and conformance RacePosition.NotYetOnRouteCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RacePositionState.CodingKeys and conformance RacePositionState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RacePositionState.CodingKeys and conformance RacePositionState.CodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.CodingKeys and conformance RacePositionState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.CodingKeys and conformance RacePositionState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePositionState.CodingKeys and conformance RacePositionState.CodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.CodingKeys and conformance RacePositionState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.CodingKeys and conformance RacePositionState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePositionState.CodingKeys and conformance RacePositionState.CodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.CodingKeys and conformance RacePositionState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.CodingKeys and conformance RacePositionState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePositionState.CodingKeys and conformance RacePositionState.CodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.CodingKeys and conformance RacePositionState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.CodingKeys and conformance RacePositionState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RacePositionState.ExpiredCodingKeys and conformance RacePositionState.ExpiredCodingKeys()
{
  result = lazy protocol witness table cache variable for type RacePositionState.ExpiredCodingKeys and conformance RacePositionState.ExpiredCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.ExpiredCodingKeys and conformance RacePositionState.ExpiredCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.ExpiredCodingKeys and conformance RacePositionState.ExpiredCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePositionState.ExpiredCodingKeys and conformance RacePositionState.ExpiredCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.ExpiredCodingKeys and conformance RacePositionState.ExpiredCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.ExpiredCodingKeys and conformance RacePositionState.ExpiredCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePositionState.ExpiredCodingKeys and conformance RacePositionState.ExpiredCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.ExpiredCodingKeys and conformance RacePositionState.ExpiredCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.ExpiredCodingKeys and conformance RacePositionState.ExpiredCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RacePositionState.UnknownCodingKeys and conformance RacePositionState.UnknownCodingKeys()
{
  result = lazy protocol witness table cache variable for type RacePositionState.UnknownCodingKeys and conformance RacePositionState.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.UnknownCodingKeys and conformance RacePositionState.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.UnknownCodingKeys and conformance RacePositionState.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePositionState.UnknownCodingKeys and conformance RacePositionState.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.UnknownCodingKeys and conformance RacePositionState.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.UnknownCodingKeys and conformance RacePositionState.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePositionState.UnknownCodingKeys and conformance RacePositionState.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.UnknownCodingKeys and conformance RacePositionState.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.UnknownCodingKeys and conformance RacePositionState.UnknownCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RacePositionState.CompletedCodingKeys and conformance RacePositionState.CompletedCodingKeys()
{
  result = lazy protocol witness table cache variable for type RacePositionState.CompletedCodingKeys and conformance RacePositionState.CompletedCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.CompletedCodingKeys and conformance RacePositionState.CompletedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.CompletedCodingKeys and conformance RacePositionState.CompletedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePositionState.CompletedCodingKeys and conformance RacePositionState.CompletedCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.CompletedCodingKeys and conformance RacePositionState.CompletedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.CompletedCodingKeys and conformance RacePositionState.CompletedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePositionState.CompletedCodingKeys and conformance RacePositionState.CompletedCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.CompletedCodingKeys and conformance RacePositionState.CompletedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.CompletedCodingKeys and conformance RacePositionState.CompletedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RacePositionState.OffRouteCodingKeys and conformance RacePositionState.OffRouteCodingKeys()
{
  result = lazy protocol witness table cache variable for type RacePositionState.OffRouteCodingKeys and conformance RacePositionState.OffRouteCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.OffRouteCodingKeys and conformance RacePositionState.OffRouteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.OffRouteCodingKeys and conformance RacePositionState.OffRouteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePositionState.OffRouteCodingKeys and conformance RacePositionState.OffRouteCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.OffRouteCodingKeys and conformance RacePositionState.OffRouteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.OffRouteCodingKeys and conformance RacePositionState.OffRouteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePositionState.OffRouteCodingKeys and conformance RacePositionState.OffRouteCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.OffRouteCodingKeys and conformance RacePositionState.OffRouteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.OffRouteCodingKeys and conformance RacePositionState.OffRouteCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RacePositionState.OnRouteBehindCodingKeys and conformance RacePositionState.OnRouteBehindCodingKeys()
{
  result = lazy protocol witness table cache variable for type RacePositionState.OnRouteBehindCodingKeys and conformance RacePositionState.OnRouteBehindCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.OnRouteBehindCodingKeys and conformance RacePositionState.OnRouteBehindCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.OnRouteBehindCodingKeys and conformance RacePositionState.OnRouteBehindCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePositionState.OnRouteBehindCodingKeys and conformance RacePositionState.OnRouteBehindCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.OnRouteBehindCodingKeys and conformance RacePositionState.OnRouteBehindCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.OnRouteBehindCodingKeys and conformance RacePositionState.OnRouteBehindCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePositionState.OnRouteBehindCodingKeys and conformance RacePositionState.OnRouteBehindCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.OnRouteBehindCodingKeys and conformance RacePositionState.OnRouteBehindCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.OnRouteBehindCodingKeys and conformance RacePositionState.OnRouteBehindCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RacePositionState.OnRouteAheadCodingKeys and conformance RacePositionState.OnRouteAheadCodingKeys()
{
  result = lazy protocol witness table cache variable for type RacePositionState.OnRouteAheadCodingKeys and conformance RacePositionState.OnRouteAheadCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.OnRouteAheadCodingKeys and conformance RacePositionState.OnRouteAheadCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.OnRouteAheadCodingKeys and conformance RacePositionState.OnRouteAheadCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePositionState.OnRouteAheadCodingKeys and conformance RacePositionState.OnRouteAheadCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.OnRouteAheadCodingKeys and conformance RacePositionState.OnRouteAheadCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.OnRouteAheadCodingKeys and conformance RacePositionState.OnRouteAheadCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePositionState.OnRouteAheadCodingKeys and conformance RacePositionState.OnRouteAheadCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.OnRouteAheadCodingKeys and conformance RacePositionState.OnRouteAheadCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.OnRouteAheadCodingKeys and conformance RacePositionState.OnRouteAheadCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RacePositionState.NotYetOnRouteCodingKeys and conformance RacePositionState.NotYetOnRouteCodingKeys()
{
  result = lazy protocol witness table cache variable for type RacePositionState.NotYetOnRouteCodingKeys and conformance RacePositionState.NotYetOnRouteCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.NotYetOnRouteCodingKeys and conformance RacePositionState.NotYetOnRouteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.NotYetOnRouteCodingKeys and conformance RacePositionState.NotYetOnRouteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePositionState.NotYetOnRouteCodingKeys and conformance RacePositionState.NotYetOnRouteCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.NotYetOnRouteCodingKeys and conformance RacePositionState.NotYetOnRouteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.NotYetOnRouteCodingKeys and conformance RacePositionState.NotYetOnRouteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RacePositionState.NotYetOnRouteCodingKeys and conformance RacePositionState.NotYetOnRouteCodingKeys;
  if (!lazy protocol witness table cache variable for type RacePositionState.NotYetOnRouteCodingKeys and conformance RacePositionState.NotYetOnRouteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState.NotYetOnRouteCodingKeys and conformance RacePositionState.NotYetOnRouteCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RacePositionState and conformance RacePositionState()
{
  result = lazy protocol witness table cache variable for type RacePositionState and conformance RacePositionState;
  if (!lazy protocol witness table cache variable for type RacePositionState and conformance RacePositionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RacePositionState and conformance RacePositionState);
  }

  return result;
}

void *__swift_memcpy13_8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RacePosition(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 13))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RacePosition(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 5) = 0;
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

  *(result + 13) = v3;
  return result;
}

uint64_t getEnumTag for RacePosition(uint64_t a1)
{
  if (*(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for RacePosition(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 12) = 1;
  }

  else
  {
    *(result + 12) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RacePositionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RacePositionState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RacePosition.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RacePosition.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RacePosition.OnRouteCodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RacePosition.OnRouteCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized RacePosition.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E4F746559746F6ELL && a2 == 0xED00006574756F52;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574756F526E6FLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574756F5266666FLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64657269707865 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t specialized RacePositionState.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E4F746559746F6ELL && a2 == 0xED00006574756F52;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x416574756F526E6FLL && a2 == 0xEC00000064616568 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x426574756F526E6FLL && a2 == 0xED0000646E696865 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574756F5266666FLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x64657269707865 && a2 == 0xE700000000000000)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

double GhostPacerAccumulator.secondsAheadOfPacer.getter()
{
  v1 = OBJC_IVAR___NLGhostPacerAccumulator_secondsAheadOfPacer;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GhostPacerAccumulator.secondsAheadOfPacer.setter(double a1)
{
  v3 = OBJC_IVAR___NLGhostPacerAccumulator_secondsAheadOfPacer;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double GhostPacerAccumulator.requiredPaceInMetersPerSecond.getter()
{
  v1 = OBJC_IVAR___NLGhostPacerAccumulator_requiredPaceInMetersPerSecond;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GhostPacerAccumulator.requiredPaceInMetersPerSecond.setter(double a1)
{
  v3 = OBJC_IVAR___NLGhostPacerAccumulator_requiredPaceInMetersPerSecond;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double GhostPacerAccumulator.accumulatedDistance.getter()
{
  v1 = OBJC_IVAR___NLGhostPacerAccumulator_accumulatedDistance;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GhostPacerAccumulator.accumulatedDistance.setter(double a1)
{
  v3 = OBJC_IVAR___NLGhostPacerAccumulator_accumulatedDistance;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double GhostPacerAccumulator.accumulatedDistanceDuration.getter()
{
  v1 = OBJC_IVAR___NLGhostPacerAccumulator_accumulatedDistanceDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GhostPacerAccumulator.accumulatedDistanceDuration.setter(double a1)
{
  v3 = OBJC_IVAR___NLGhostPacerAccumulator_accumulatedDistanceDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double GhostPacerAccumulator.lastElapsedTime.getter()
{
  v1 = OBJC_IVAR___NLGhostPacerAccumulator_lastElapsedTime;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GhostPacerAccumulator.lastElapsedTime.setter(double a1)
{
  v3 = OBJC_IVAR___NLGhostPacerAccumulator_lastElapsedTime;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id GhostPacerAccumulator.__allocating_init(activityType:goalDistance:goalFinishTime:)(void *a1, double a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = specialized GhostPacerAccumulator.init(activityType:goalDistance:goalFinishTime:)(a1, a2, a3);

  return v8;
}

id GhostPacerAccumulator.init(activityType:goalDistance:goalFinishTime:)(void *a1, double a2, double a3)
{
  v4 = specialized GhostPacerAccumulator.init(activityType:goalDistance:goalFinishTime:)(a1, a2, a3);

  return v4;
}

Swift::Void __swiftcall GhostPacerAccumulator.updatePacer(statistics:duration:)(HKStatistics statistics, Swift::Double duration)
{
  [*(v2 + OBJC_IVAR___NLGhostPacerAccumulator_activityType) effectiveTypeIdentifier];
  v5 = _HKWorkoutDistanceTypeForActivityType();
  if (v5)
  {
    v6 = v2;
    v16 = v5;
    type metadata accessor for NSObject();
    v7 = [(objc_class *)statistics.super.isa quantityType];
    v8 = static NSObject.== infix(_:_:)();

    if ((v8 & 1) != 0 && (v9 = [(objc_class *)statistics.super.isa sumQuantity]) != 0)
    {
      v10 = v9;
      v11 = [objc_opt_self() meterUnit];
      [v10 doubleValueForUnit_];
      v13 = v12;

      v14 = OBJC_IVAR___NLGhostPacerAccumulator_accumulatedDistance;
      swift_beginAccess();
      if (*(v6 + v14) < v13)
      {
        *(v6 + v14) = v13;
        v15 = OBJC_IVAR___NLGhostPacerAccumulator_accumulatedDistanceDuration;
        swift_beginAccess();
        *(v6 + v15) = duration;
        GhostPacerAccumulator.updateValuesWithTime(_:)(duration);
      }
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall GhostPacerAccumulator.updateWithElapsedTime(_:)(Swift::Double a1)
{
  v3 = OBJC_IVAR___NLGhostPacerAccumulator_lastElapsedTime;
  swift_beginAccess();
  if (*(v1 + v3) < a1)
  {
    *(v1 + v3) = a1;
    v4 = OBJC_IVAR___NLGhostPacerAccumulator_accumulatedDistanceDuration;
    swift_beginAccess();
    if (a1 - *(v1 + v4) >= 10.0)
    {
      GhostPacerAccumulator.updateValuesWithTime(_:)(a1);
    }
  }
}

Swift::Void __swiftcall GhostPacerAccumulator.updateValuesWithTime(_:)(Swift::Double a1)
{
  v3 = OBJC_IVAR___NLGhostPacerAccumulator_accumulatedDistance;
  v4 = swift_beginAccess();
  v5 = *&v1[v3];
  v6 = *&v1[OBJC_IVAR___NLGhostPacerAccumulator_goalDistance];
  if (v5 <= v6)
  {
    if (v6 <= 0.0)
    {
      v9 = OBJC_IVAR___NLGhostPacerAccumulator_secondsAheadOfPacer;
      v4 = swift_beginAccess();
      *&v1[v9] = 0;
    }

    else
    {
      v7 = v5 / v6 * *&v1[OBJC_IVAR___NLGhostPacerAccumulator_goalFinishTime] - a1;
      v8 = OBJC_IVAR___NLGhostPacerAccumulator_secondsAheadOfPacer;
      v4 = swift_beginAccess();
      *&v1[v8] = v7;
    }
  }

  v10 = *&v1[OBJC_IVAR___NLGhostPacerAccumulator_goalFinishTime];
  if (v5 >= v6 || v10 <= a1)
  {
    v12 = OBJC_IVAR___NLGhostPacerAccumulator_requiredPaceInMetersPerSecond;
    swift_beginAccess();
    *&v1[v12] = 0xC3E0000000000000;
  }

  else
  {
    v13 = MEMORY[0x20F2E8430](v4, v6 - v5, v10 - a1);
    v14 = OBJC_IVAR___NLGhostPacerAccumulator_requiredPaceInMetersPerSecond;
    swift_beginAccess();
    *&v1[v14] = v13;
  }

  v15 = [v1 updateHandler];
  if (v15)
  {
    v16 = v15;
    (*(v15 + 2))();
    _Block_release(v16);
  }
}

id GhostPacerAccumulator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GhostPacerAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GhostPacerAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized GhostPacerAccumulator.init(activityType:goalDistance:goalFinishTime:)(void *a1, double a2, double a3)
{
  *&v3[OBJC_IVAR___NLGhostPacerAccumulator_accumulatedDistance] = 0;
  *&v3[OBJC_IVAR___NLGhostPacerAccumulator_accumulatedDistanceDuration] = 0;
  *&v3[OBJC_IVAR___NLGhostPacerAccumulator_lastElapsedTime] = 0;
  *&v3[OBJC_IVAR___NLGhostPacerAccumulator_kForceCalculationTimeout] = 0x4024000000000000;
  *&v3[OBJC_IVAR___NLGhostPacerAccumulator_kMetricInvalidValue] = 0xC3E0000000000000;
  *&v3[OBJC_IVAR___NLGhostPacerAccumulator_activityType] = a1;
  *&v3[OBJC_IVAR___NLGhostPacerAccumulator_goalDistance] = a2;
  *&v3[OBJC_IVAR___NLGhostPacerAccumulator_goalFinishTime] = a3;
  *&v3[OBJC_IVAR___NLGhostPacerAccumulator_secondsAheadOfPacer] = 0;
  *&v3[OBJC_IVAR___NLGhostPacerAccumulator_requiredPaceInMetersPerSecond] = MEMORY[0x20F2E8430](a1, a2, a3);
  v5.receiver = v3;
  v5.super_class = type metadata accessor for GhostPacerAccumulator();
  return objc_msgSendSuper2(&v5, sel_init);
}

double keypath_getTm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t FunctionalThresholdPowerStore.__allocating_init(with:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void FunctionalThresholdPowerStore.fetchMostRecentAppleFTP(completion:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.core);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20AEA4000, v5, v6, "[CyclingPowerZones] Fetching most recent Apple FTP", v7, 2u);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v8 = [objc_opt_self() _predicateForObjectsFromAppleWatches];
  v9 = [objc_allocWithZone(MEMORY[0x277CCAC98]) initWithKey:*MEMORY[0x277CCCD50] ascending:0];
  v10 = [objc_allocWithZone(MEMORY[0x277CCAC98]) initWithKey:*MEMORY[0x277CCDF38] ascending:0];
  type metadata accessor for HKSampleType(0, &lazy cache variable for type metadata for HKSampleType, 0x277CCD8D8);
  v11 = [swift_getObjCClassFromMetadata() quantityTypeForIdentifier_];
  if (v11)
  {
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_20B42FA20;
    *(v13 + 32) = v9;
    *(v13 + 40) = v10;
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = a2;
    v15 = objc_allocWithZone(MEMORY[0x277CCD8D0]);
    type metadata accessor for HKSampleType(0, &lazy cache variable for type metadata for NSSortDescriptor, 0x277CCAC98);
    v16 = v12;
    v17 = v8;
    v18 = v9;
    v19 = v10;

    isa = Array._bridgeToObjectiveC()().super.isa;

    aBlock[4] = partial apply for closure #1 in FunctionalThresholdPowerStore.fetchMostRecentAppleFTP(completion:);
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKSampleQuery, @guaranteed [HKSample]?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_13;
    v21 = _Block_copy(aBlock);
    v22 = v15;
    v23 = v17;
    v24 = [v22 initWithSampleType:v16 predicate:v17 limit:1 sortDescriptors:isa resultsHandler:v21];

    _Block_release(v21);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = [objc_opt_self() currentThread];
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&dword_20AEA4000, v25, v26, "[CyclingPowerZones] Fetching most recent Apple FTP, executing healthStore query, thread: %@", v27, 0xCu);
      outlined destroy of NSObject?(v28);
      MEMORY[0x20F2E9420](v28, -1, -1);
      MEMORY[0x20F2E9420](v27, -1, -1);
    }

    [*(v30 + 16) executeQuery_];
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

unint64_t closure #1 in FunctionalThresholdPowerStore.fetchMostRecentAppleFTP(completion:)(uint64_t a1, unint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v61 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = &v59 - v12;
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static WOLog.core);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v59 = v8;
    v17 = a4;
    v18 = v16;
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    v20 = [objc_opt_self() currentThread];
    *(v18 + 4) = v20;
    *v19 = v20;
    _os_log_impl(&dword_20AEA4000, v14, v15, "[CyclingPowerZones] Fetching most recent Apple FTP, executed healthStore query, thread: %@", v18, 0xCu);
    outlined destroy of NSObject?(v19);
    MEMORY[0x20F2E9420](v19, -1, -1);
    v21 = v18;
    a4 = v17;
    v8 = v59;
    MEMORY[0x20F2E9420](v21, -1, -1);
  }

  if (a3)
  {
    v22 = a3;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = a3;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_20AEA4000, v23, v24, "[CyclingPowerZones] Cannot fetch most recent Apple FTP quantity sample, error: %@", v25, 0xCu);
      outlined destroy of NSObject?(v26);
      MEMORY[0x20F2E9420](v26, -1, -1);
      MEMORY[0x20F2E9420](v25, -1, -1);
    }

    return a4(0);
  }

  if (!a2)
  {
    goto LABEL_22;
  }

  if (!(a2 >> 62))
  {
    v29 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_12;
    }

LABEL_22:
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_20AEA4000, v56, v57, "[CyclingPowerZones] Most recent Apple FTP quantity sample is not available", v58, 2u);
      MEMORY[0x20F2E9420](v58, -1, -1);
    }

    return a4(0);
  }

  v29 = __CocoaSet.count.getter();
  if (!v29)
  {
    goto LABEL_22;
  }

LABEL_12:
  v30 = __OFSUB__(v29, 1);
  result = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) == 0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v32 = *(a2 + 8 * result + 32);
      goto LABEL_17;
    }

    __break(1u);
    return result;
  }

  v32 = MEMORY[0x20F2E7A20](result, a2);
LABEL_17:
  v33 = v32;
  objc_opt_self();
  v34 = swift_dynamicCastObjCClass();
  if (!v34)
  {

    goto LABEL_22;
  }

  v35 = v34;
  v36 = [v34 quantity];
  [v36 _value];
  v38 = v37;

  v39 = [v35 endDate];
  v40 = v60;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v41 = v61;
  static Date.now.getter();
  v42 = type metadata accessor for FunctionalThresholdPower();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  v45 = swift_allocObject();
  *(v45 + 16) = v38;
  *(v45 + 24) = 0;
  v46 = *(v8 + 32);
  v46(v45 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate, v40, v7);
  v46(v45 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate, v41, v7);

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v62 = v50;
    *v49 = 136315138;

    v51 = FunctionalThresholdPower.description.getter();
    v53 = v52;

    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v62);

    *(v49 + 4) = v54;
    _os_log_impl(&dword_20AEA4000, v47, v48, "[CyclingPowerZones] Fetched most recent Apple FTP: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x20F2E9420](v50, -1, -1);
    MEMORY[0x20F2E9420](v49, -1, -1);
  }

  a4(v55);
}

uint64_t FunctionalThresholdPowerStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKSampleQuery, @guaranteed [HKSample]?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    type metadata accessor for HKSampleType(0, &lazy cache variable for type metadata for HKSample, 0x277CCD8A8);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

uint64_t type metadata accessor for HKSampleType(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC11WorkoutCore16CyclingPowerZoneC_SayAFGTt0g5(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore16CyclingPowerZoneC_Tt1g5(v3, 0);
  specialized Array._copyContents(initializing:)(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t static CyclingPowerZonesConfigurationEditor.changeFunctionalThresholdPower(to:using:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  v12 = *(a1 + 16);
  if (v12 < 20.0)
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static WOLog.core);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134218240;
      *(v16 + 4) = v12;
      *(v16 + 12) = 2048;
      *(v16 + 14) = 0x4034000000000000;
      _os_log_impl(&dword_20AEA4000, v14, v15, "[CyclingPowerZones] auto correct input FTP value %f to min %f", v16, 0x16u);
      MEMORY[0x20F2E9420](v16, -1, -1);
    }

    v17 = *(a1 + 24);
    v18 = v5[2];
    v18(v11, a1 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate, v4);
    v18(v9, v11, v4);
    v19 = type metadata accessor for FunctionalThresholdPower();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    v22 = swift_allocObject();
    v23 = v22;
    v24 = 0x4034000000000000;
LABEL_13:
    *(v22 + 16) = v24;
    *(v22 + 24) = v17;
    v33 = v5[4];
    v33(v22 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate, v9, v4);
    v33(v23 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate, v11, v4);
    v34 = specialized static CyclingPowerZonesConfigurationEditor.changeFunctionalThresholdPowerInternal(to:using:)(v23, a2);

    return v34;
  }

  if (v12 > 1000.0)
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static WOLog.core);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134218240;
      *(v28 + 4) = v12;
      *(v28 + 12) = 2048;
      *(v28 + 14) = 0x408F400000000000;
      _os_log_impl(&dword_20AEA4000, v26, v27, "[CyclingPowerZones] auto correct input FTP value %f to max %f", v28, 0x16u);
      MEMORY[0x20F2E9420](v28, -1, -1);
    }

    v17 = *(a1 + 24);
    v29 = v5[2];
    v29(v11, a1 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate, v4);
    v29(v9, v11, v4);
    v30 = type metadata accessor for FunctionalThresholdPower();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    v22 = swift_allocObject();
    v23 = v22;
    v24 = 0x408F400000000000;
    goto LABEL_13;
  }

  return specialized static CyclingPowerZonesConfigurationEditor.changeFunctionalThresholdPowerInternal(to:using:)(a1, a2);
}

uint64_t static CyclingPowerZonesConfigurationEditor.changeConfigurationType(to:using:)(unsigned __int8 *a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);

  static Date.now.getter();
  v14 = type metadata accessor for CyclingPowerZonesConfiguration();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  *(v17 + 16) = v9;
  *(v17 + 24) = v10;
  *(v17 + 32) = v11;
  *(v17 + 40) = v12;
  *(v17 + 48) = v13;
  (*(v5 + 32))(v17 + OBJC_IVAR____TtC11WorkoutCore30CyclingPowerZonesConfiguration_creationDate, v8, v4);
  if (*(v17 + 16))
  {
    LOBYTE(v25) = *(a2 + 40);
    v18 = specialized static CyclingPowerZonesConfigurationEditor.recalculateManualZonesOrProvideDefault(for:using:)(&v25, v17);
    v25 = 0;
    v26 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    v25 = 0xD00000000000001CLL;
    v26 = 0x800000020B459580;
    if (v9)
    {
      v19 = 0x6C61756E616DLL;
    }

    else
    {
      v19 = 0x6974616D6F747561;
    }

    if (v9)
    {
      v20 = 0xE600000000000000;
    }

    else
    {
      v20 = 0xE900000000000063;
    }

    MEMORY[0x20F2E6D80](v19, v20);

    MEMORY[0x20F2E6D80](41, 0xE100000000000000);
    v21 = specialized static CyclingPowerZonesConfigurationEditor.targetWithLog(_:target:source:)(v25, v26, v18);
  }

  else
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    v25 = 0xD00000000000001CLL;
    v26 = 0x800000020B459580;
    if (v9)
    {
      v22 = 0x6C61756E616DLL;
    }

    else
    {
      v22 = 0x6974616D6F747561;
    }

    if (v9)
    {
      v23 = 0xE600000000000000;
    }

    else
    {
      v23 = 0xE900000000000063;
    }

    MEMORY[0x20F2E6D80](v22, v23);

    MEMORY[0x20F2E6D80](41, 0xE100000000000000);
    v21 = specialized static CyclingPowerZonesConfigurationEditor.targetWithLog(_:target:source:)(v25, v26, v17);
  }

  return v21;
}

uint64_t static CyclingPowerZonesConfigurationEditor.changeZonesSize(to:using:)(_BYTE *a1, uint64_t a2)
{
  v3 = *a1;
  if (*(a2 + 16))
  {
    LOBYTE(v9) = *a1;
    v4 = specialized static CyclingPowerZonesConfigurationEditor.recalculateManualZonesOrProvideDefault(for:using:)(&v9, a2);
    v9 = 0;
    v10 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v9 = 0xD000000000000014;
    v10 = 0x800000020B4595A0;
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x20F2E6D80](v5);

    MEMORY[0x20F2E6D80](41, 0xE100000000000000);
    v6 = specialized static CyclingPowerZonesConfigurationEditor.targetWithLog(_:target:source:)(v9, v10, v4);
  }

  else
  {
    _StringGuts.grow(_:)(23);

    v9 = 0xD000000000000014;
    v10 = 0x800000020B4595A0;
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x20F2E6D80](v7);

    MEMORY[0x20F2E6D80](41, 0xE100000000000000);
    v6 = specialized static CyclingPowerZonesConfigurationEditor.targetWithLog(_:target:source:)(0xD000000000000014, 0x800000020B4595A0, a2);
  }

  return v6;
}

uint64_t static CyclingPowerZonesConfigurationEditor.resetManualZones(using:)(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  if (v8 <= 0.0)
  {
  }

  else
  {
    v9 = *(a1 + 48);
    if ((*(a1 + 16) & 1) == 0)
    {
      v8 = *(*(a1 + 24) + 16);
    }

    v23 = *(a1 + 40);
    v10 = CyclingPowerZonesSize.automaticZonePercentages()();

    v11 = specialized static CyclingPowerZonesConfigurationEditor.calculateZones(for:with:)(v10, v8);

    v12 = *(a1 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v9;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v12, isUniquelyReferenced_nonNull_native);
    v14 = v22;
    LOBYTE(v12) = *(a1 + 16);
    v15 = *(a1 + 24);
    v16 = *(a1 + 40);

    static Date.now.getter();
    v17 = type metadata accessor for CyclingPowerZonesConfiguration();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    v20 = swift_allocObject();
    *(v20 + 16) = v12;
    *(v20 + 24) = v15;
    *(v20 + 32) = v7;
    *(v20 + 40) = v16;
    *(v20 + 48) = v14;
    (*(v3 + 32))(v20 + OBJC_IVAR____TtC11WorkoutCore30CyclingPowerZonesConfiguration_creationDate, v6, v2);
    a1 = specialized static CyclingPowerZonesConfigurationEditor.targetWithLog(_:target:source:)(0xD000000000000010, 0x800000020B4595C0, v20);
  }

  return a1;
}

BOOL static CyclingPowerZonesConfigurationEditor.isManualZonesEqualToAutomatic(using:)(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v2 & 1) == 0)
    {
      return 1;
    }
  }

  v3 = *(*(a1 + 32) + 16);
  v28 = *(a1 + 40);
  v4 = CyclingPowerZonesSize.automaticZonePercentages()();
  v5 = specialized static CyclingPowerZonesConfigurationEditor.calculateZones(for:with:)(v4, v3);

  v6 = CyclingPowerZonesConfiguration.manualZones.getter();
  if (v5 >> 62)
  {
    goto LABEL_37;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!(v6 >> 62))
  {
    goto LABEL_6;
  }

LABEL_38:
  v8 = __CocoaSet.count.getter();
LABEL_7:

  if (v7 == v8)
  {
    v6 = CyclingPowerZonesConfiguration.manualZones.getter();
    v9 = v6;
    v25 = v7;
    v27 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v6 >> 62)
    {
      v6 = __CocoaSet.count.getter();
      v10 = v6;
    }

    else
    {
      v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = 0;
    v12 = 0;
    v13 = v5 & 0xC000000000000001;
    v14 = v5 & 0xFFFFFFFFFFFFFF8;
    v26 = v5;
    v15 = v5 + 32;
    while (1)
    {
      if (v10 == v11)
      {

        return v12 == v25;
      }

      if ((v9 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x20F2E7A20](v11, v9);
        v5 = v6;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v11 >= *(v27 + 16))
        {
          goto LABEL_33;
        }

        v5 = *(v9 + 8 * v11 + 32);

        if (__OFADD__(v11, 1))
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          v24 = v6;
          v7 = __CocoaSet.count.getter();
          v6 = v24;
          if (v24 >> 62)
          {
            goto LABEL_38;
          }

LABEL_6:
          v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_7;
        }
      }

      v6 = *(v5 + 32);
      if (v13)
      {
        v16 = MEMORY[0x20F2E7A20](v6, v26);
      }

      else
      {
        if ((v6 & 0x8000000000000000) != 0)
        {
          goto LABEL_34;
        }

        if (v6 >= *(v14 + 16))
        {
          goto LABEL_36;
        }

        v16 = *(v15 + 8 * v6);
      }

      v17 = *(v5 + 16);
      v18 = *(v5 + 24);

      v19 = *(v16 + 16);
      v20 = *(v16 + 24);

      v21 = v18 == v20 && v17 == v19;
      ++v11;
      v22 = __OFADD__(v12, v21);
      v12 += v21;
      if (v22)
      {
        goto LABEL_35;
      }
    }
  }

  return 0;
}

uint64_t static CyclingPowerZonesConfigurationEditor.createAutomaticConfiguration(for:size:)(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v13 = *(a1 + 16);
  v30 = *a2;
  v12 = v30;
  v14 = CyclingPowerZonesSize.automaticZonePercentages()();
  v15 = specialized static CyclingPowerZonesConfigurationEditor.calculateZones(for:with:)(v14, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore21CyclingPowerZonesSizeO_SayAC0fG4ZoneCGtGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore21CyclingPowerZonesSizeO_SayAC0fG4ZoneCGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  *(inited + 32) = v12;
  v17 = inited + 32;
  *(inited + 40) = v15;
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore21CyclingPowerZonesSizeO_SayAC0eF4ZoneCGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CyclingPowerZonesSize, [CyclingPowerZone])(v17);
  static Date.now.getter();
  (*(v5 + 16))(v9, v11, v4);
  v19 = type metadata accessor for FunctionalThresholdPower();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 1;
  v23 = *(v5 + 32);
  v23(v22 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate, v9, v4);
  v23(v22 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate, v11, v4);
  static Date.now.getter();
  v24 = type metadata accessor for CyclingPowerZonesConfiguration();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = a1;
  *(v27 + 32) = v22;
  *(v27 + 40) = v12;
  *(v27 + 48) = v18;
  v23(v27 + OBJC_IVAR____TtC11WorkoutCore30CyclingPowerZonesConfiguration_creationDate, v11, v4);

  return v27;
}

uint64_t specialized static CyclingPowerZonesConfigurationEditor.emptyZones(size:)(unsigned __int8 *a1)
{
  v6 = MEMORY[0x277D84F90];
  v1 = *a1 + 5;
  type metadata accessor for CyclingPowerZone();
  v2 = 0;
  do
  {
    v3 = swift_allocObject();
    v3[2] = 0;
    v3[3] = 0;
    v3[6] = 0;
    v3[7] = 0;
    v3[4] = v2;
    v3[5] = v1;
    MEMORY[0x20F2E6F30]();
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v4 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v2;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v1 != v2);
  return v6;
}

uint64_t specialized static CyclingPowerZonesConfigurationEditor.calculateZones(for:with:)(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  if (a2 <= 0.0)
  {
    v34 = byte_2822410D0;
    if (byte_2822410D0 + 5 != v2)
    {
      v34 = byte_2822410D1;
      if (byte_2822410D1 + 5 != v2)
      {
        v34 = byte_2822410D2;
        if (byte_2822410D2 + 5 != v2)
        {
          v34 = byte_2822410D3;
          if (byte_2822410D3 + 5 != v2)
          {
            v34 = 1;
          }
        }
      }
    }

    v41 = v34;
    return specialized static CyclingPowerZonesConfigurationEditor.emptyZones(size:)(&v41);
  }

  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v5 = 0;
  v40 = MEMORY[0x277D84F90];
  v6 = v2 - 1;
  v7 = (a1 + 32 + 16 * (v2 - 1));
  v35 = vdupq_lane_s64(*&a2, 0);
  v39 = a2;
  while (v5)
  {
    if (v6 == v5)
    {
      v8 = v7[1];
      v9 = round(*v7 * a2);
      v10 = round(v8 * a2);
      v11 = v8 < INFINITY;
      v12 = v8 <= INFINITY;
      v13 = 1000.0;
      if (v11)
      {
        v13 = v10;
      }

      if (v12)
      {
        v14 = v13;
      }

      else
      {
        v14 = v10;
      }

      if (v9 > v14)
      {
        goto LABEL_44;
      }

      v15 = v9 / a2;
      v16 = v14 / a2;
      if (v9 / a2 > v14 / a2)
      {
        goto LABEL_44;
      }

      type metadata accessor for CyclingPowerZone();
      result = swift_allocObject();
      *(result + 48) = v15;
      *(result + 56) = v16;
      v17 = floor(v14);
      if (v9 > v17)
      {
        goto LABEL_45;
      }

      v18 = result;
      *(result + 16) = v9;
      *(result + 24) = v17;
      *(result + 32) = v6;
LABEL_24:
      *(v18 + 40) = v2;
      goto LABEL_30;
    }

    v28 = vrndaq_f64(vmulq_n_f64(*(a1 + 32 + 16 * v5), a2));
    v29 = v28.f64[1];
    v30 = vdivq_f64(v28, v35);
    v31 = v30.f64[1];
    if (v28.f64[0] > v28.f64[1] || v30.f64[0] > v30.f64[1])
    {
      goto LABEL_43;
    }

    v36 = v30.f64[0];
    v37 = v28.f64[0];
    type metadata accessor for CyclingPowerZone();
    v33 = swift_allocObject();
    v33[6] = v36;
    v33[7] = v31;
    v33[2] = v37;
    v33[3] = v29;
    *(v33 + 4) = v5;
    *(v33 + 5) = v2;
LABEL_30:
    MEMORY[0x20F2E6F30]();
    if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v38 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    ++v5;
    a2 = v39;
    if (v2 == v5)
    {
      return v40;
    }
  }

  v19 = *(a1 + 40);
  v20 = round(*(a1 + 32) * a2);
  v21 = round(v19 * a2);
  v11 = v19 < INFINITY;
  v22 = v19 <= INFINITY;
  v23 = 1000.0;
  if (v11)
  {
    v23 = v21;
  }

  if (v22)
  {
    v24 = v23;
  }

  else
  {
    v24 = v21;
  }

  if (v20 <= v24)
  {
    v25 = v20 / a2;
    v26 = v24 / a2;
    if (v20 / a2 <= v24 / a2)
    {
      type metadata accessor for CyclingPowerZone();
      result = swift_allocObject();
      *(result + 48) = v25;
      *(result + 56) = v26;
      v27 = floor(v24);
      if (v20 > v27)
      {
        goto LABEL_42;
      }

      v18 = result;
      *(result + 16) = v20;
      *(result + 24) = v27;
      *(result + 32) = 0;
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

BOOL specialized static CyclingPowerZonesConfigurationEditor.hasAllEmptyZones(_:)(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_20:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = 0;
  while (v4 != v5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x20F2E7A20](v5, a1);
      if (__OFADD__(v5, 1))
      {
LABEL_13:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v5 >= *(v2 + 16))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v7 = *(a1 + 8 * v5 + 32);

      if (__OFADD__(v5, 1))
      {
        goto LABEL_13;
      }
    }

    v9 = *(v8 + 16);
    v10 = *(v8 + 24);

    v11 = v9 == v10;
    ++v5;
    v12 = __OFADD__(v6, v11);
    v6 += v11;
    if (v12)
    {
      goto LABEL_19;
    }
  }

  if (v3)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *(v2 + 16);
  }

  return v6 == v13;
}

uint64_t specialized static CyclingPowerZonesConfigurationEditor.createAutomaticEmptyConfiguration()()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  static Date.now.getter();
  v8 = v1[2];
  v8(v5, v7, v0);
  v9 = type metadata accessor for FunctionalThresholdPower();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 1;
  v13 = v1[4];
  v13(v12 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate, v5, v0);
  v13(v12 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate, v7, v0);
  static Date.now.getter();
  v8(v5, v7, v0);
  v14 = *(v9 + 48);
  v15 = *(v9 + 52);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 1;
  v13(v16 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate, v5, v0);
  v13(v16 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate, v7, v0);
  static Date.now.getter();
  v17 = type metadata accessor for CyclingPowerZonesConfiguration();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = v12;
  *(v20 + 32) = v16;
  *(v20 + 40) = 1;
  *(v20 + 48) = MEMORY[0x277D84F98];
  v13(v20 + OBJC_IVAR____TtC11WorkoutCore30CyclingPowerZonesConfiguration_creationDate, v7, v0);
  return v20;
}

unint64_t specialized static CyclingPowerZonesConfigurationEditor.adjustedZones(for:zones:newZone:)(unint64_t a1, uint64_t *a2, double a3)
{
  v4 = a2;
  v5 = a1;
  v73 = *a2;
  v7 = a2[4];
  if (a1 >> 62)
  {
    goto LABEL_119;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v10)
  {

    if (v7 >= i)
    {
      return v5;
    }

    v5 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC11WorkoutCore16CyclingPowerZoneC_SayAFGTt0g5(v5);

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    }

    if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_129;
    }

    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20);
    *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v4;

    if (!v7)
    {
      break;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v4 = v7;
      while (1)
      {
        v11 = v7 < v4;
        if (v7 < v4)
        {
          break;
        }

        v12 = v4 - 1;
        if ((v5 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x20F2E7A20](v4 - 1, v5);
          v10 = MEMORY[0x20F2E7A20](v4, v5);
          v16 = v10;
        }

        else
        {
          v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v11 = v12 < v13;
          if (v12 >= v13)
          {
            goto LABEL_58;
          }

          v11 = v4 < v13;
          if (v4 >= v13)
          {
            goto LABEL_60;
          }

          v14 = v5 + 8 * v4;
          v15 = *(v14 + 24);
          v16 = *(v14 + 32);
        }

        v17 = *(v16 + 16);
        if (*(v15 + 16) > v17 + -2.0)
        {
          v18 = v17 + -2.0;
        }

        else
        {
          v18 = *(v15 + 16);
        }

        v11 = v18 < v17;
        if (v18 > v17)
        {
          goto LABEL_59;
        }

        v19 = 0.0;
        v20 = 0.0;
        if (a3 > 0.0)
        {
          v19 = v18 / a3;
          v20 = v17 / a3;
          if (v18 / a3 > v17 / a3)
          {
            goto LABEL_97;
          }
        }

        if (v5 >> 62)
        {
          v3 = __CocoaSet.count.getter();
        }

        else
        {
          v3 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v10 = swift_allocObject();
        *(v10 + 48) = v19;
        *(v10 + 56) = v20;
        v21 = floor(v18);
        v22 = floor(v17);
        v11 = v21 < v22;
        if (v21 > v22)
        {
          goto LABEL_61;
        }

        v23 = v10;
        *(v10 + 16) = v21;
        *(v10 + 24) = v22;
        *(v10 + 32) = v12;
        *(v10 + 40) = v3;
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v5 >> 62 || !isUniquelyReferenced_nonNull_bridgeObject)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
        }

        v25 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v11 = v12 < v25;
        if (v12 >= v25)
        {
          goto LABEL_62;
        }

        v26 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x18);
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x18) = v23;

        --v4;
        if (!v12)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v27 = v7;
    while (1)
    {
      if (v7 < v27)
      {
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        v59 = v7 + 5;
        v3 = 1 - v10;
        while (1)
        {
          v7 = v59 - 4;
          v60 = v59 - 5;
          if (__OFSUB__(v59 - 4, 1))
          {
            goto LABEL_130;
          }

          v61 = v5 & 0xFFFFFFFFFFFFFF8;
          v62 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v60 >= v62)
          {
            goto LABEL_131;
          }

          if (v7 >= v62)
          {
            goto LABEL_132;
          }

          v4 = *(v5 + 8 * v59);
          v63 = *(*(v5 + 8 * v60 + 32) + 24);
          if (v63 + 2.0 > *(v4 + 24))
          {
            v64 = v63 + 2.0;
          }

          else
          {
            v64 = *(v4 + 24);
          }

          if (v63 > v64)
          {
            goto LABEL_133;
          }

          v65 = 0.0;
          v66 = 0.0;
          if (a3 > 0.0)
          {
            v65 = v63 / a3;
            v66 = v64 / a3;
            if (v63 / a3 > v64 / a3)
            {
              goto LABEL_137;
            }
          }

          if (v5 >> 62)
          {
            v62 = __CocoaSet.count.getter();
          }

          v67 = swift_allocObject();
          *(v67 + 48) = v65;
          *(v67 + 56) = v66;
          v68 = floor(v63);
          v69 = floor(v64);
          if (v68 > v69)
          {
            goto LABEL_134;
          }

          v70 = v67;
          *(v67 + 16) = v68;
          *(v67 + 24) = v69;
          *(v67 + 32) = v7;
          *(v67 + 40) = v62;

          v71 = swift_isUniquelyReferenced_nonNull_bridgeObject();
          if (v5 >> 62 || !v71)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);

            v61 = v5 & 0xFFFFFFFFFFFFFF8;
          }

          else
          {
          }

          if (v7 >= *(v61 + 16))
          {
            goto LABEL_135;
          }

          v72 = *(v61 + 8 * v59);
          *(v61 + 8 * v59) = v70;

          ++v59;
          if (v3 + v59 == 5)
          {
            return v5;
          }
        }
      }

      v3 = v5 & 0xFFFFFFFFFFFFFF8;
      v28 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27 - 1 >= v28)
      {
        goto LABEL_92;
      }

      if (v27 >= v28)
      {
        goto LABEL_93;
      }

      v29 = v5 + 8 * v27;
      v4 = *(v29 + 24);
      v30 = *(*(v29 + 32) + 16);
      if (*(v4 + 16) > v30 + -2.0)
      {
        v31 = v30 + -2.0;
      }

      else
      {
        v31 = *(v4 + 16);
      }

      if (v31 > v30)
      {
        goto LABEL_94;
      }

      v32 = 0.0;
      v33 = 0.0;
      if (a3 > 0.0)
      {
        v32 = v31 / a3;
        v33 = v30 / a3;
        if (v31 / a3 > v30 / a3)
        {
          break;
        }
      }

      if (v5 >> 62)
      {
        v28 = __CocoaSet.count.getter();
      }

      v10 = swift_allocObject();
      *(v10 + 48) = v32;
      *(v10 + 56) = v33;
      v34 = floor(v31);
      v35 = floor(v30);
      if (v34 > v35)
      {
        goto LABEL_95;
      }

      v36 = v10;
      *(v10 + 16) = v34;
      *(v10 + 24) = v35;
      v37 = v27 - 1;
      *(v10 + 32) = v27 - 1;
      *(v10 + 40) = v28;

      v38 = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (v5 >> 62 || !v38)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);

        v3 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
      }

      if (v37 >= *(v3 + 16))
      {
        goto LABEL_96;
      }

      v39 = v3 + 8 * v27;
      v40 = *(v39 + 24);
      *(v39 + 24) = v36;

      --v27;
      if (!v37)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_119:
    v10 = __CocoaSet.count.getter();
    if (v10 < 0)
    {
      __break(1u);
      goto LABEL_121;
    }

LABEL_141:
    ;
  }

LABEL_53:
  v3 = v7 + 1;
  if (v5 >> 62)
  {
    goto LABEL_138;
  }

  v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10 < v3)
  {
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  while (1)
  {
    v11 = v3 < v10;
    if (v3 == v10)
    {
      return v5;
    }

LABEL_63:
    if (!v11)
    {
      goto LABEL_140;
    }

    if ((v5 & 0xC000000000000001) == 0)
    {
      goto LABEL_98;
    }

    v7 += 5;
    v42 = 1 - v10;
    while (1)
    {
      v4 = v7 - 4;
      v43 = v7 - 5;
      if (__OFSUB__(v7 - 4, 1))
      {
        break;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x20F2E7A20](v43, v5);
        v46 = MEMORY[0x20F2E7A20](v7 - 4, v5);
      }

      else
      {
        if ((v43 & 0x8000000000000000) != 0)
        {
          goto LABEL_122;
        }

        v44 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v43 >= v44)
        {
          goto LABEL_123;
        }

        if (v4 >= v44)
        {
          goto LABEL_125;
        }

        v45 = *(v5 + 8 * v43 + 32);
        v46 = *(v5 + 8 * v7);
      }

      v47 = *(v45 + 24);
      if (v47 + 2.0 > *(v46 + 24))
      {
        v48 = v47 + 2.0;
      }

      else
      {
        v48 = *(v46 + 24);
      }

      if (v47 > v48)
      {
        goto LABEL_124;
      }

      v49 = 0.0;
      v50 = 0.0;
      if (a3 > 0.0)
      {
        v49 = v47 / a3;
        v50 = v48 / a3;
        if (v47 / a3 > v48 / a3)
        {
          goto LABEL_136;
        }
      }

      if (v5 >> 62)
      {
        v51 = __CocoaSet.count.getter();
      }

      else
      {
        v51 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v52 = swift_allocObject();
      *(v52 + 48) = v49;
      *(v52 + 56) = v50;
      v53 = floor(v47);
      v54 = floor(v48);
      if (v53 > v54)
      {
        goto LABEL_126;
      }

      v55 = v52;
      *(v52 + 16) = v53;
      *(v52 + 24) = v54;
      *(v52 + 32) = v4;
      *(v52 + 40) = v51;
      v56 = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (v5 >> 62 || !v56)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
      }

      if (v3 < 0)
      {
        goto LABEL_127;
      }

      v57 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v4 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_128;
      }

      v58 = *(v57 + 8 * v7);
      *(v57 + 8 * v7) = v55;

      ++v7;
      if (v42 + v7 == 5)
      {
        return v5;
      }
    }

LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    v10 = __CocoaSet.count.getter();
    if (v10 < v3)
    {
      goto LABEL_139;
    }
  }
}

uint64_t specialized static CyclingPowerZonesConfigurationEditor.targetWithLog(_:target:source:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.core);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315650;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v18);
    *(v9 + 12) = 2080;
    v11 = CyclingPowerZonesConfiguration.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v18);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2080;
    v14 = CyclingPowerZonesConfiguration.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v18);

    *(v9 + 24) = v16;
    _os_log_impl(&dword_20AEA4000, v7, v8, "[CyclingPowerZones] %s, target: %s, source: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  return a3;
}

uint64_t specialized static CyclingPowerZonesConfigurationEditor.changeLowerBound(to:zoneIndex:using:)(unint64_t a1, uint64_t *a2, double a3)
{
  v8 = a2;
  v11 = *a2;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 < 0.0 || a3 > 10000.0)
  {
    goto LABEL_12;
  }

  v48 = v15;
  v19 = CyclingPowerZonesConfiguration.manualZones.getter();
  if (v19 >> 62)
  {
    v20 = __CocoaSet.count.getter();

    if ((v20 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_37;
    }
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v20 <= a1)
  {
LABEL_12:

    return v8;
  }

  v21 = CyclingPowerZonesConfiguration.manualZones.getter();
  if (!(v21 >> 62))
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);

    goto LABEL_10;
  }

LABEL_37:
  v22 = __CocoaSet.count.getter();

  if (v22 < 0)
  {
    __break(1u);
LABEL_39:
    v3 = MEMORY[0x20F2E7A20](a1, v22);
    goto LABEL_17;
  }

LABEL_10:
  if (v22 && !a1)
  {
    goto LABEL_12;
  }

  v24 = CyclingPowerZonesConfiguration.manualZones.getter();
  v22 = v24;
  if ((v24 & 0xC000000000000001) != 0)
  {
    goto LABEL_39;
  }

  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    v28 = __CocoaSet.count.getter();
    goto LABEL_31;
  }

  v3 = *(v24 + 8 * a1 + 32);

LABEL_17:

  if (a1 + a1 > a3)
  {
    v4 = a1 + a1;
  }

  else
  {
    v4 = a3;
  }

  if (v4 + 2.0 > *(v3 + 24))
  {
    v5 = v4 + 2.0;
  }

  else
  {
    v5 = *(v3 + 24);
  }

  if (v4 > v5)
  {
    __break(1u);
    goto LABEL_41;
  }

  if (*(v8 + 16) == 1)
  {
    v25 = *(v8 + 32);
  }

  else
  {
    v25 = *(v8 + 24);
  }

  v26 = *(v25 + 16);
  v6 = 0.0;
  v7 = 0.0;
  if (v26 > 0.0)
  {
    v6 = v4 / v26;
    v7 = v5 / v26;
    if (v4 / v26 > v5 / v26)
    {
      goto LABEL_44;
    }
  }

  v27 = CyclingPowerZonesConfiguration.manualZones.getter();
  if (v27 >> 62)
  {
    goto LABEL_42;
  }

  v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_31:
  v47[1] = v3;

  type metadata accessor for CyclingPowerZone();
  result = swift_allocObject();
  *(result + 48) = v6;
  *(result + 56) = v7;
  v29 = floor(v4);
  v30 = floor(v5);
  if (v29 <= v30)
  {
    *(result + 16) = v29;
    *(result + 24) = v30;
    *(result + 32) = a1;
    *(result + 40) = v28;
    v31 = 24;
    if (*(v8 + 16))
    {
      v31 = 32;
    }

    v32 = *(*(v8 + v31) + 16);
    v33 = result;
    v47[0] = result;
    v34 = CyclingPowerZonesConfiguration.manualZones.getter();
    v35 = specialized static CyclingPowerZonesConfigurationEditor.adjustedZones(for:zones:newZone:)(v34, v33, v32);

    v36 = *(v8 + 48);
    v37 = *(v8 + 40);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v36;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v37, isUniquelyReferenced_nonNull_native);
    v39 = v50;
    v40 = *(v8 + 16);
    v41 = *(v8 + 24);
    v42 = *(v8 + 32);

    static Date.now.getter();
    v43 = *(v11 + 48);
    v44 = *(v11 + 52);
    v45 = swift_allocObject();
    *(v45 + 16) = v40;
    *(v45 + 24) = v41;
    *(v45 + 32) = v42;
    *(v45 + 40) = v37;
    *(v45 + 48) = v39;
    (*(v13 + 32))(v45 + OBJC_IVAR____TtC11WorkoutCore30CyclingPowerZonesConfiguration_creationDate, v17, v48);
    v50 = 0;
    v51 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);
    MEMORY[0x20F2E6D80](0xD000000000000015, 0x800000020B459700);
    Double.write<A>(to:)();
    MEMORY[0x20F2E6D80](0x6E49656E6F7A202CLL, 0xEC0000003A786564);
    v49 = a1;
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x20F2E6D80](v46);

    MEMORY[0x20F2E6D80](41, 0xE100000000000000);
    v8 = specialized static CyclingPowerZonesConfigurationEditor.targetWithLog(_:target:source:)(v50, v51, v45);

    return v8;
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t specialized static CyclingPowerZonesConfigurationEditor.changeUpperBound(to:zoneIndex:using:)(unint64_t a1, uint64_t *a2, double a3)
{
  v8 = a2;
  v11 = *a2;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 < 0.0 || a3 > 10000.0)
  {
    goto LABEL_12;
  }

  v51 = v15;
  v19 = CyclingPowerZonesConfiguration.manualZones.getter();
  if (v19 >> 62)
  {
    v20 = __CocoaSet.count.getter();

    if ((v20 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_43;
    }
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v20 <= a1)
  {
LABEL_12:

    return v8;
  }

  v21 = CyclingPowerZonesConfiguration.manualZones.getter();
  if (!(v21 >> 62))
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);

    goto LABEL_10;
  }

LABEL_43:
  v22 = __CocoaSet.count.getter();

  if (v22 < 0)
  {
    __break(1u);
LABEL_45:
    v3 = MEMORY[0x20F2E7A20](a1, v22);
    goto LABEL_17;
  }

LABEL_10:
  if (v22 && v22 - 1 == a1)
  {
    goto LABEL_12;
  }

  v24 = CyclingPowerZonesConfiguration.manualZones.getter();
  v22 = v24;
  if ((v24 & 0xC000000000000001) != 0)
  {
    goto LABEL_45;
  }

  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    v31 = __CocoaSet.count.getter();
    goto LABEL_37;
  }

  v3 = *(v24 + 8 * a1 + 32);

LABEL_17:

  v25 = (a1 + 1) + (a1 + 1);
  v26 = 10000.0 - (a1 + a1);
  v27 = v25 > a3 || v26 < a3;
  v4 = a3;
  if (v27)
  {
    v4 = (a1 + 1) + (a1 + 1);
    if (v25 <= a3)
    {
      if (v26 >= a3)
      {
        v4 = a3;
      }

      else
      {
        v4 = 10000.0 - (a1 + a1);
      }
    }
  }

  if (*(v3 + 16) > v4 + -2.0)
  {
    v5 = v4 + -2.0;
  }

  else
  {
    v5 = *(v3 + 16);
  }

  if (v5 > v4)
  {
    __break(1u);
    goto LABEL_47;
  }

  if (*(v8 + 16) == 1)
  {
    v28 = *(v8 + 32);
  }

  else
  {
    v28 = *(v8 + 24);
  }

  v29 = *(v28 + 16);
  v6 = 0.0;
  v7 = 0.0;
  if (v29 > 0.0)
  {
    v6 = v5 / v29;
    v7 = v4 / v29;
    if (v5 / v29 > v4 / v29)
    {
      goto LABEL_50;
    }
  }

  v30 = CyclingPowerZonesConfiguration.manualZones.getter();
  if (v30 >> 62)
  {
    goto LABEL_48;
  }

  v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_37:
  v50[1] = v3;

  type metadata accessor for CyclingPowerZone();
  result = swift_allocObject();
  *(result + 48) = v6;
  *(result + 56) = v7;
  v32 = floor(v5);
  v33 = floor(v4);
  if (v32 <= v33)
  {
    *(result + 16) = v32;
    *(result + 24) = v33;
    *(result + 32) = a1;
    *(result + 40) = v31;
    v34 = 24;
    if (*(v8 + 16))
    {
      v34 = 32;
    }

    v35 = *(*(v8 + v34) + 16);
    v36 = result;
    v50[0] = result;
    v37 = CyclingPowerZonesConfiguration.manualZones.getter();
    v38 = specialized static CyclingPowerZonesConfigurationEditor.adjustedZones(for:zones:newZone:)(v37, v36, v35);

    v39 = *(v8 + 48);
    v40 = *(v8 + 40);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v39;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v38, v40, isUniquelyReferenced_nonNull_native);
    v42 = v53;
    v43 = *(v8 + 16);
    v44 = *(v8 + 24);
    v45 = *(v8 + 32);

    static Date.now.getter();
    v46 = *(v11 + 48);
    v47 = *(v11 + 52);
    v48 = swift_allocObject();
    *(v48 + 16) = v43;
    *(v48 + 24) = v44;
    *(v48 + 32) = v45;
    *(v48 + 40) = v40;
    *(v48 + 48) = v42;
    (*(v13 + 32))(v48 + OBJC_IVAR____TtC11WorkoutCore30CyclingPowerZonesConfiguration_creationDate, v17, v51);
    v53 = 0;
    v54 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);
    MEMORY[0x20F2E6D80](0xD000000000000015, 0x800000020B4596E0);
    Double.write<A>(to:)();
    MEMORY[0x20F2E6D80](0x6E49656E6F7A202CLL, 0xEC0000003A786564);
    v52 = a1;
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x20F2E6D80](v49);

    MEMORY[0x20F2E6D80](41, 0xE100000000000000);
    v8 = specialized static CyclingPowerZonesConfigurationEditor.targetWithLog(_:target:source:)(v53, v54, v48);

    return v8;
  }

  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t specialized static CyclingPowerZonesConfigurationEditor.changeAutomaticFTP(to:using:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  v11 = a2[4];
  v12 = *(a2 + 40);
  v13 = a2[6];

  static Date.now.getter();
  v14 = *(v4 + 48);
  v15 = *(v4 + 52);
  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  *(v16 + 24) = a1;
  *(v16 + 32) = v11;
  *(v16 + 40) = v12;
  *(v16 + 48) = v13;
  (*(v6 + 32))(v16 + OBJC_IVAR____TtC11WorkoutCore30CyclingPowerZonesConfiguration_creationDate, v9, v5);
  v20 = 0;
  v21 = 0xE000000000000000;

  _StringGuts.grow(_:)(26);

  v20 = 0xD000000000000017;
  v21 = 0x800000020B4596C0;
  v17 = FunctionalThresholdPower.description.getter();
  MEMORY[0x20F2E6D80](v17);

  MEMORY[0x20F2E6D80](41, 0xE100000000000000);
  v18 = specialized static CyclingPowerZonesConfigurationEditor.targetWithLog(_:target:source:)(v20, v21, v16);

  return v18;
}

uint64_t specialized static CyclingPowerZonesConfigurationEditor.recalculateManualZonesOrProvideDefault(for:using:)(unsigned __int8 *a1, unint64_t *a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(v2 + 48);
  if (!*(v11 + 16) || (v12 = *(v2 + 48), v13 = specialized __RawDictionaryStorage.find<A>(_:)(*a1), (v14 & 1) == 0))
  {
    v25 = 24;
    if (*(v2 + 16))
    {
      v25 = 32;
    }

    v26 = *(*(v2 + v25) + 16);
    LOBYTE(v81) = v10;
    v27 = CyclingPowerZonesSize.automaticZonePercentages()();

    v28 = specialized static CyclingPowerZonesConfigurationEditor.calculateZones(for:with:)(v27, v26);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, v10, isUniquelyReferenced_nonNull_native);
    v30 = v81;
    v31 = v10;
    v32 = *(v2 + 16);
    v33 = *(v2 + 24);
    v34 = *(v2 + 32);

    static Date.now.getter();
    v35 = *(v4 + 48);
    v36 = *(v4 + 52);
    v4 = swift_allocObject();
    *(v4 + 16) = v32;
    *(v4 + 24) = v33;
    *(v4 + 32) = v34;
    *(v4 + 40) = v31;
    *(v4 + 48) = v30;
    (*(v6 + 32))(v4 + OBJC_IVAR____TtC11WorkoutCore30CyclingPowerZonesConfiguration_creationDate, v9, v5);
    return v4;
  }

  v80 = v11;
  v15 = *(v11 + 56);
  v16 = *(v15 + 8 * v13);
  v17 = v16 >> 62;
  if (v16 >> 62)
  {
    goto LABEL_85;
  }

  v18 = *(v15 + 8 * v13);
  swift_bridgeObjectRetain_n();
  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  type metadata accessor for Zone();
  v19 = v16;
LABEL_5:
  v20 = specialized static CyclingPowerZonesConfigurationEditor.hasAllEmptyZones(_:)(v19);

  if (v20)
  {
    v21 = v80;

    v22 = 24;
    if (*(v2 + 16))
    {
      v22 = 32;
    }

    v23 = *(*(v2 + v22) + 16);
    LOBYTE(v81) = v10;
    v24 = CyclingPowerZonesSize.automaticZonePercentages()();
    v16 = specialized static CyclingPowerZonesConfigurationEditor.calculateZones(for:with:)(v24, v23);

    goto LABEL_28;
  }

  v79 = v9;
  if (v17)
  {
    v9 = __CocoaSet.count.getter();
    if (v9)
    {
LABEL_14:
      v75 = v10;
      v76 = v4;
      v77 = v6;
      v78 = v5;
      v81 = MEMORY[0x277D84F90];

      result = specialized ContiguousArray.reserveCapacity(_:)();
      if ((v9 & 0x8000000000000000) == 0)
      {
        v6 = 0;
        v4 = v16 & 0xC000000000000001;
        if (*(v2 + 16))
        {
          v38 = 32;
        }

        else
        {
          v38 = 24;
        }

        while (1)
        {
          if (v4)
          {
            v39 = MEMORY[0x20F2E7A20](v6, v16);
          }

          else
          {
            v39 = *(v16 + 8 * v6 + 32);
          }

          v40 = *(*(v2 + v38) + 16);
          v41 = *(v39 + 48);
          v42 = *(v39 + 56);
          v43 = 0.0;
          v44 = 0.0;
          if (v40 > 0.0)
          {
            v43 = v40 * v41;
            v44 = v40 * v42;
            if (v40 * v41 > v40 * v42)
            {
              break;
            }
          }

          v17 = *(v39 + 32);
          v5 = *(v39 + 40);
          type metadata accessor for CyclingPowerZone();
          v19 = swift_allocObject();
          *(v19 + 48) = v41;
          *(v19 + 56) = v42;

          v45 = floor(v43);
          v46 = floor(v44);
          if (v45 > v46)
          {
            __break(1u);
            break;
          }

          ++v6;
          *(v19 + 16) = v45;
          *(v19 + 24) = v46;
          *(v19 + 32) = v17;
          *(v19 + 40) = v5;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v17 = *(v81 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          if (v9 == v6)
          {

            v21 = v80;
            v16 = v81;
            v6 = v77;
            v5 = v78;
            v9 = v79;
            v4 = v76;
            v10 = v75;
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_38:
        v55 = *(MEMORY[0x20F2E7A20](v19, v16) + 24);
        swift_unknownObjectRelease();
        if (v55 < v41)
        {
LABEL_79:

          v72 = specialized static CyclingPowerZonesConfigurationEditor.changeUpperBound(to:zoneIndex:using:)(v19, v4, 2.0);
LABEL_80:
          v73 = v72;

          return v73;
        }

        while (v17 != ++v19)
        {
LABEL_40:
          v56 = *(v4 + 48);
          if (*(v56 + 16) && (v57 = specialized __RawDictionaryStorage.find<A>(_:)(*(v4 + 40)), (v58 & 1) != 0))
          {
            v59 = *(*(v56 + 56) + 8 * v57);
          }

          else
          {
            if (*(v4 + 16))
            {
              v60 = v6;
            }

            else
            {
              v60 = v9;
            }

            v61 = *(*(v4 + v60) + 16);
            LOBYTE(v81) = *(v4 + 40);
            v62 = CyclingPowerZonesSize.automaticZonePercentages()();
            v59 = specialized static CyclingPowerZonesConfigurationEditor.calculateZones(for:with:)(v62, v61);
          }

          if (v59 >> 62)
          {
            v10 = __CocoaSet.count.getter();

            if (v10 < 0)
            {
              __break(1u);
LABEL_82:
              __break(1u);
LABEL_83:
              __break(1u);
LABEL_84:
              __break(1u);
LABEL_85:
              type metadata accessor for Zone();

              v19 = _bridgeCocoaArray<A>(_:)();
              goto LABEL_5;
            }
          }

          else
          {
            v10 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v19 || !v10)
          {
            if (v2)
            {
              v71 = *(MEMORY[0x20F2E7A20](v19, v16) + 16);
              swift_unknownObjectRelease();
              if (v71 < v41)
              {
                goto LABEL_76;
              }
            }

            else
            {
              if (v19 >= *(v5 + 16))
              {
                goto LABEL_83;
              }

              if (*(*(v16 + 8 * v19 + 32) + 16) < v41)
              {
LABEL_76:

                v72 = specialized static CyclingPowerZonesConfigurationEditor.changeLowerBound(to:zoneIndex:using:)(v19, v4, 2.0);
                goto LABEL_80;
              }
            }
          }

          v63 = *(v4 + 48);
          if (*(v63 + 16) && (v64 = specialized __RawDictionaryStorage.find<A>(_:)(*(v4 + 40)), (v65 & 1) != 0))
          {
            v66 = *(*(v63 + 56) + 8 * v64);
          }

          else
          {
            if (*(v4 + 16))
            {
              v67 = v6;
            }

            else
            {
              v67 = v9;
            }

            v68 = *(*(v4 + v67) + 16);
            LOBYTE(v81) = *(v4 + 40);
            v69 = CyclingPowerZonesSize.automaticZonePercentages()();
            v66 = specialized static CyclingPowerZonesConfigurationEditor.calculateZones(for:with:)(v69, v68);
          }

          if (v66 >> 62)
          {
            v10 = __CocoaSet.count.getter();

            if (v10 < 0)
            {
              goto LABEL_82;
            }
          }

          else
          {
            v10 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v10)
          {
            v70 = v19 == v10 - 1;
          }

          else
          {
            v70 = 0;
          }

          if (!v70)
          {
            if (v2)
            {
              goto LABEL_38;
            }

            if (v19 >= *(v5 + 16))
            {
              goto LABEL_84;
            }

            if (*(*(v16 + 8 * v19 + 32) + 24) < v41)
            {
              goto LABEL_79;
            }
          }
        }

        goto LABEL_77;
      }

      goto LABEL_88;
    }
  }

  else
  {
    v9 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_14;
    }
  }

  v21 = v80;

  v16 = MEMORY[0x277D84F90];
  v9 = v79;
LABEL_28:

  v47 = swift_isUniquelyReferenced_nonNull_native();
  v81 = v21;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, v10, v47);
  v48 = v81;
  v49 = *(v2 + 16);
  v50 = *(v2 + 24);
  v51 = *(v2 + 32);

  static Date.now.getter();
  v52 = *(v4 + 48);
  v53 = *(v4 + 52);
  v4 = swift_allocObject();
  *(v4 + 16) = v49;
  *(v4 + 24) = v50;
  *(v4 + 32) = v51;
  *(v4 + 40) = v10;
  *(v4 + 48) = v48;
  (*(v6 + 32))(v4 + OBJC_IVAR____TtC11WorkoutCore30CyclingPowerZonesConfiguration_creationDate, v9, v5);
  if (*(v4 + 16) == 1)
  {
    if (*(v51 + 16) <= 0.0)
    {
      goto LABEL_77;
    }
  }

  else if (*(v50 + 16) <= 0.0)
  {
LABEL_77:

    return v4;
  }

  v54 = CyclingPowerZonesConfiguration.manualZones.getter();
  if (!(v54 >> 62))
  {
    v17 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);

    goto LABEL_34;
  }

  v17 = __CocoaSet.count.getter();

  if ((v17 & 0x8000000000000000) == 0)
  {
LABEL_34:
    if (v17)
    {
      v19 = 0;
      v2 = v16 & 0xC000000000000001;
      v5 = v16 & 0xFFFFFFFFFFFFFF8;
      v9 = 24;
      v41 = 2.0;
      v6 = 32;
      goto LABEL_40;
    }

    goto LABEL_77;
  }

  __break(1u);
LABEL_88:
  __break(1u);
  return result;
}

uint64_t specialized static CyclingPowerZonesConfigurationEditor.changeFunctionalThresholdPowerInternal(to:using:)(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10 < 20.0 || v10 > 1000.0)
  {
    v34 = 0;
    v35 = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    MEMORY[0x20F2E6D80](0xD00000000000002ALL, 0x800000020B459620);
    v12 = FunctionalThresholdPower.description.getter();
    MEMORY[0x20F2E6D80](v12);

    MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B459650);
    Double.write<A>(to:)();
    MEMORY[0x20F2E6D80](0xD000000000000011, 0x800000020B459670);
    v32 = 0x408F400000000000;
    v33 = 0x4034000000000000;
    v30 = 0;
    v31 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F2E6D80](3943982, 0xE300000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F2E6D80](v30, v31);

    v13 = specialized static CyclingPowerZonesConfigurationEditor.targetWithLog(_:target:source:)(v34, v35, a2);

LABEL_10:

    return v13;
  }

  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  if ((*(a2 + 16) & 1) == 0)
  {
    v24 = *(a2 + 32);

    static Date.now.getter();
    v25 = *(v4 + 48);
    v26 = *(v4 + 52);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = a1;
    *(v27 + 32) = v24;
    *(v27 + 40) = v14;
    *(v27 + 48) = v15;
    (*(v6 + 32))(v27 + OBJC_IVAR____TtC11WorkoutCore30CyclingPowerZonesConfiguration_creationDate, v9, v5);
    v34 = 0;
    v35 = 0xE000000000000000;

    _StringGuts.grow(_:)(38);

    v34 = 0xD000000000000023;
    v35 = 0x800000020B459690;
    v28 = FunctionalThresholdPower.description.getter();
    MEMORY[0x20F2E6D80](v28);

    MEMORY[0x20F2E6D80](41, 0xE100000000000000);
    v13 = specialized static CyclingPowerZonesConfigurationEditor.targetWithLog(_:target:source:)(v34, v35, v27);

    goto LABEL_10;
  }

  v16 = *(a2 + 24);

  static Date.now.getter();
  v17 = *(v4 + 48);
  v18 = *(v4 + 52);
  v19 = swift_allocObject();
  *(v19 + 16) = 1;
  *(v19 + 24) = v16;
  *(v19 + 32) = a1;
  *(v19 + 40) = v14;
  *(v19 + 48) = v15;
  (*(v6 + 32))(v19 + OBJC_IVAR____TtC11WorkoutCore30CyclingPowerZonesConfiguration_creationDate, v9, v5);
  LOBYTE(v34) = *(a2 + 40);

  v20 = specialized static CyclingPowerZonesConfigurationEditor.recalculateManualZonesOrProvideDefault(for:using:)(&v34, v19);
  v34 = 0;
  v35 = 0xE000000000000000;
  _StringGuts.grow(_:)(38);

  v34 = 0xD000000000000023;
  v35 = 0x800000020B459690;
  v21 = FunctionalThresholdPower.description.getter();
  MEMORY[0x20F2E6D80](v21);

  MEMORY[0x20F2E6D80](41, 0xE100000000000000);
  v13 = specialized static CyclingPowerZonesConfigurationEditor.targetWithLog(_:target:source:)(v34, v35, v20);

  swift_setDeallocating();
  (*(v6 + 8))(v19 + OBJC_IVAR____TtC11WorkoutCore30CyclingPowerZonesConfiguration_creationDate, v5);
  v22 = *(*v19 + 48);
  v23 = *(*v19 + 52);
  swift_deallocClassInstance();
  return v13;
}

uint64_t getEnumTagSinglePayload for CyclingPowerZonesConstants(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CyclingPowerZonesConstants(_WORD *result, int a2, int a3)
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

uint64_t static PropertyListFactory.make<A>(for:)()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for PropertyListEncoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v4 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v6 = v5;

  if (!v0)
  {
    v8 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v14[0] = 0;
    v10 = [v8 propertyListWithData:isa options:0 format:0 error:v14];

    v11 = v14[0];
    if (v10)
    {
      _bridgeAnyObjectToAny(_:)();
      outlined consume of Data._Representation(v4, v6);
      result = swift_unknownObjectRelease();
    }

    else
    {
      v12 = v11;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      result = outlined consume of Data._Representation(v4, v6);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}