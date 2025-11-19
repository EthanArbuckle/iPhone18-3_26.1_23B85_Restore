uint64_t getEnumTagSinglePayload for TargetZone.PrimaryType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TargetZone.PrimaryType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TargetZone.TargetZoneHolder(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && a1[24])
  {
    return (*a1 + 249);
  }

  v3 = *a1;
  v4 = v3 >= 8;
  v5 = v3 - 8;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TargetZone.TargetZoneHolder(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 7;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TargetZone.TargetZoneHolder.CodingKeys and conformance TargetZone.TargetZoneHolder.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder.CodingKeys and conformance TargetZone.TargetZoneHolder.CodingKeys;
  if (!lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder.CodingKeys and conformance TargetZone.TargetZoneHolder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder.CodingKeys and conformance TargetZone.TargetZoneHolder.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder.CodingKeys and conformance TargetZone.TargetZoneHolder.CodingKeys;
  if (!lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder.CodingKeys and conformance TargetZone.TargetZoneHolder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder.CodingKeys and conformance TargetZone.TargetZoneHolder.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder.CodingKeys and conformance TargetZone.TargetZoneHolder.CodingKeys;
  if (!lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder.CodingKeys and conformance TargetZone.TargetZoneHolder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder.CodingKeys and conformance TargetZone.TargetZoneHolder.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder.CodingKeys and conformance TargetZone.TargetZoneHolder.CodingKeys;
  if (!lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder.CodingKeys and conformance TargetZone.TargetZoneHolder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder.CodingKeys and conformance TargetZone.TargetZoneHolder.CodingKeys);
  }

  return result;
}

uint64_t specialized TargetZone.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for JSONDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = JSONDecoder.init()();
  lazy protocol witness table accessor for type TargetZone.TargetZoneHolder and conformance TargetZone.TargetZoneHolder();
  v9 = v8;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v2)
  {

    outlined consume of Data._Representation(a1, a2);
  }

  else
  {
    type metadata accessor for TargetZone();
    v9 = swift_allocObject();
    *(v9 + 16) = v13;
    *(v9 + 24) = v14;
    *(v9 + 32) = v15;
    if (v13 > 6u)
    {

      outlined consume of Data._Representation(a1, a2);

      v11 = 0;
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      outlined consume of Data._Representation(a1, a2);

      v11 = 0;
      if ((v10 & 1) == 0)
      {
        v11 = v14 > 0.0 || v15 > 0.0;
      }
    }

    *(v9 + 40) = v11;
  }

  return v9;
}

uint64_t getEnumTagSinglePayload for TargetZone.TargetZoneHolder.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TargetZone.TargetZoneHolder.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized TargetZone.TargetZoneHolder.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7235949 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7889261 && a2 == 0xE300000000000000)
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

uint64_t WorkoutConfiguration.serializedCompositionData.getter()
{
  v2 = type metadata accessor for WorkoutPlan.SerializationFormat();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WorkoutPlan();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  WorkoutConfiguration.workoutPlanRepresentation()(v11);
  if (!v1)
  {
    (*(v3 + 104))(v6, *MEMORY[0x277CE3FA0], v2);
    v0 = WorkoutPlan.dataRepresentation(as:)();
    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v7);
  }

  return v0;
}

void WorkoutConfiguration.workoutPlanRepresentation()(uint64_t a1@<X8>)
{
  v73 = a1;
  v71 = type metadata accessor for UUID();
  v70 = *(v71 - 8);
  v2 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v72 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v69 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v68 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v67 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v76 = &v62 - v13;
  v65 = type metadata accessor for SwimBikeRunWorkout();
  v64 = *(v65 - 8);
  v14 = *(v64 + 64);
  MEMORY[0x28223BE20](v65);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PacerWorkout();
  v75 = *(v17 - 8);
  v18 = *(v75 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for CustomWorkout();
  v74 = *(v21 - 8);
  v22 = *(v74 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SingleGoalWorkout();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for WorkoutPlan.Workout();
  v78 = *(v80 - 8);
  v30 = *(v78 + 64);
  v31 = MEMORY[0x28223BE20](v80);
  v66 = &v62 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v77 = &v62 - v33;
  type metadata accessor for GoalWorkoutConfiguration();
  v82 = v1;
  if (swift_dynamicCastClass())
  {
    v34 = v82;
    v35 = v79;
    GoalWorkoutConfiguration.workoutKitRepresentation.getter(v29);

    if (v35)
    {
      return;
    }

    v36 = v77;
    (*(v26 + 32))(v77, v29, v25);
    v37 = MEMORY[0x277CE3F88];
    v38 = v76;
    goto LABEL_13;
  }

  v40 = v74;
  v39 = v75;
  v63 = v17;
  v41 = v16;
  v42 = v79;
  type metadata accessor for IntervalWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    v43 = v82;
    IntervalWorkoutConfiguration.workoutKitRepresentation.getter(v24);

    if (v42)
    {
      return;
    }

    v36 = v77;
    (*(v40 + 32))(v77, v24, v21);
    v37 = MEMORY[0x277CE3F98];
    v38 = v76;
    goto LABEL_13;
  }

  type metadata accessor for PacerWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    v44 = v82;
    PacerWorkoutConfiguration.workoutKitRepresentation.getter(v20);

    if (v42)
    {
      return;
    }

    v36 = v77;
    (*(v39 + 32))(v77, v20, v63);
    v37 = MEMORY[0x277CE3F90];
    v38 = v76;
    goto LABEL_13;
  }

  type metadata accessor for MultiSportWorkoutConfiguration();
  v45 = swift_dynamicCastClass();
  v38 = v76;
  if (!v45)
  {
    v60 = type metadata accessor for ImportError();
    _s10WorkoutKit11ImportErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type ImportError and conformance ImportError, MEMORY[0x277CE4010]);
    swift_allocError();
    (*(*(v60 - 8) + 104))(v61, *MEMORY[0x277CE4000], v60);
    swift_willThrow();
    return;
  }

  v46 = v82;
  v47 = v41;
  MultiSportWorkoutConfiguration.workoutKitRepresentation.getter();

  if (!v42)
  {
    v36 = v77;
    (*(v64 + 32))(v77, v47, v65);
    v37 = MEMORY[0x277CE3F80];
LABEL_13:
    (*(v78 + 104))(v36, *v37, v80);
    v48 = type metadata accessor for WorkoutKitFeatures();
    v81[3] = v48;
    v81[4] = _s10WorkoutKit11ImportErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type WorkoutKitFeatures and conformance WorkoutKitFeatures, MEMORY[0x277CE3FD8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v81);
    (*(*(v48 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CE3FB0], v48);
    LOBYTE(v48) = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1(v81);
    v79 = 0;
    if (v48)
    {
      v50 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
      v51 = v82;
      swift_beginAccess();
      _s10Foundation4UUIDVSgWOcTm_2(v51 + v50, v38, &_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
    }

    else
    {
      v52 = type metadata accessor for WorkoutPlan.Route();
      (*(*(v52 - 8) + 56))(v38, 1, 1, v52);
    }

    v53 = OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID;
    v54 = v82;
    swift_beginAccess();
    v55 = v68;
    _s10Foundation4UUIDVSgWOcTm_2(&v54[v53], v68, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v56 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
    swift_beginAccess();
    v57 = *&v54[v56];
    v58 = v78;
    (*(v78 + 16))(v66, v36, v80);
    v59 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    (*(v70 + 16))(v72, &v54[v59], v71);
    _s10Foundation4UUIDVSgWOcTm_2(v38, v67, &_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
    _s10Foundation4UUIDVSgWOcTm_2(v55, v69, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

    WorkoutPlan.init(_:id:route:referenceUUID:alternativeUUIDs:)();
    _s10Foundation4UUIDVSgWOhTm_6(v55, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    _s10Foundation4UUIDVSgWOhTm_6(v38, &_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
    (*(v58 + 8))(v77, v80);
  }
}

uint64_t WorkoutConfiguration.exportToFile()@<X0>(char *a1@<X8>)
{
  v62 = a1;
  v69[3] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for WorkoutPlan.SerializationFormat();
  v57 = *(v1 - 8);
  v58 = v1;
  v2 = *(v57 + 64);
  MEMORY[0x28223BE20](v1);
  v54 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for WorkoutPlan();
  v55 = *(v4 - 8);
  v56 = v4;
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v4);
  v61 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v53 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v53 - v16;
  v18 = objc_opt_self();
  v19 = [v18 defaultManager];
  v20 = [v19 URLsForDirectory:9 inDomains:1];

  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v21 + 16))
  {
    (*(v8 + 16))(v15, v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

    (*(v8 + 32))(v17, v15, v7);
    v22 = [v18 defaultManager];
    v23 = URL.path.getter();
    v24 = MEMORY[0x20F2E6C00](v23);

    v25 = [v22 fileExistsAtPath_];

    if ((v25 & 1) == 0)
    {
      v26 = [v18 defaultManager];
      URL._bridgeToObjectiveC()(v27);
      v29 = v28;
      v69[0] = 0;
      v30 = [v26 createDirectoryAtURL:v28 withIntermediateDirectories:1 attributes:0 error:v69];

      if (!v30)
      {
        v48 = v69[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        result = (*(v8 + 8))(v17, v7);
        goto LABEL_10;
      }

      v31 = v69[0];
    }

    v32 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    v33 = v59;
    swift_beginAccess();
    v34 = [*(v33 + v32) localizedName];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v67 = v35;
    v68 = v37;
    v65 = 32;
    v66 = 0xE100000000000000;
    v63 = 0;
    v64 = 0xE000000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    URL.appendingPathComponent(_:)();

    v38 = v62;
    URL.appendingPathExtension(_:)();
    v39 = *(v8 + 8);
    v39(v12, v7);
    v40 = v60;
    v41 = v61;
    WorkoutConfiguration.workoutPlanRepresentation()(v61);
    if (v40)
    {
      v39(v38, v7);
      result = (v39)(v17, v7);
    }

    else
    {
      v42 = v41;
      v43 = v57;
      v44 = v54;
      (*(v57 + 104))(v54, *MEMORY[0x277CE3FA0], v58);
      v59 = WorkoutPlan.dataRepresentation(as:)();
      v60 = v45;
      (*(v43 + 8))(v44, v58);
      (*(v55 + 8))(v42, v56);
      v50 = v59;
      v49 = v60;
      Data.write(to:options:)();
      v39(v17, v7);
      result = outlined consume of Data._Representation(v50, v49);
    }
  }

  else
  {

    v46 = type metadata accessor for ExportError();
    _s10WorkoutKit11ImportErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type ExportError and conformance ExportError, MEMORY[0x277CE3FF0]);
    swift_allocError();
    (*(*(v46 - 8) + 104))(v47, *MEMORY[0x277CE3FE8], v46);
    result = swift_willThrow();
  }

LABEL_10:
  v51 = *MEMORY[0x277D85DE8];
  return result;
}

char *WorkoutPlan.workoutCoreRepresentation(occurrence:validator:)(void *a1, uint64_t a2)
{
  v110 = a1;
  v113 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v102 = &v94 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v100 = &v94 - v7;
  v8 = type metadata accessor for SwimBikeRunWorkout();
  v98 = *(v8 - 8);
  v99 = v8;
  v9 = *(v98 + 64);
  MEMORY[0x28223BE20](v8);
  v97 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for PacerWorkout();
  v104 = *(v101 - 8);
  v11 = *(v104 + 64);
  MEMORY[0x28223BE20](v101);
  v103 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CustomWorkout();
  v106 = *(v13 - 8);
  v107 = v13;
  v14 = *(v106 + 64);
  MEMORY[0x28223BE20](v13);
  v105 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v108 = v16;
  v109 = v17;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v95 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v96 = &v94 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v94 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v94 - v26;
  v28 = type metadata accessor for SingleGoalWorkout();
  v112 = *(v28 - 8);
  v29 = *(v112 + 64);
  MEMORY[0x28223BE20](v28);
  v115 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for WorkoutPlan.Workout();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v94 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = &v94 - v37;
  WorkoutPlan.workout.getter();
  v39 = (*(v32 + 88))(v38, v31);
  if (v39 == *MEMORY[0x277CE3F88])
  {
    (*(v32 + 96))(v38, v31);
    (*(v112 + 32))(v115, v38, v28);
    WorkoutPlan.workout.getter();
    v40 = WorkoutPlan.Workout.activity.getter();
    v41 = *(v32 + 8);
    v41(v36, v31);
    v42 = v113;
    if (((*(*v113 + 312))(v40) & 1) == 0)
    {
      v54 = type metadata accessor for CompositionValidationError();
      _s10WorkoutKit11ImportErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type CompositionValidationError and conformance CompositionValidationError, MEMORY[0x277CE4128]);
      v113 = swift_allocError();
      v55 = v41;
      v57 = v56;
      WorkoutPlan.workout.getter();
      v58 = WorkoutPlan.Workout.activity.getter();
      v55(v36, v31);
      *v57 = v58;
      (*(*(v54 - 8) + 104))(v57, *MEMORY[0x277CE4118], v54);
      swift_willThrow();
      (*(v112 + 8))(v115, v28);
      return v36;
    }

    v43 = v112;
    WorkoutPlan.id.getter();
    v44 = v111;
    v45 = specialized static GoalWorkoutConfiguration.workoutCoreRepresentation(_:id:occurrence:validator:)(v115, v27, v110, v42);
    if (v44)
    {
      (*(v109 + 8))(v27, v108);
      (*(v43 + 8))(v115, v28);
      return v36;
    }

    v36 = v45;
    (*(v109 + 8))(v27, v108);
    (*(v43 + 8))(v115, v28);
  }

  else
  {
    v46 = v31;
    v47 = v113;
    if (v39 == *MEMORY[0x277CE3F98])
    {
      v48 = v46;
      (*(v32 + 96))(v38, v46);
      (*(v106 + 32))(v105, v38, v107);
      WorkoutPlan.workout.getter();
      v49 = WorkoutPlan.Workout.activity.getter();
      v50 = *(v32 + 8);
      v50(v36, v48);
      if (((*(*v47 + 312))(v49) & 1) == 0)
      {
        v67 = type metadata accessor for CompositionValidationError();
        _s10WorkoutKit11ImportErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type CompositionValidationError and conformance CompositionValidationError, MEMORY[0x277CE4128]);
        swift_allocError();
        v69 = v68;
        WorkoutPlan.workout.getter();
        v70 = WorkoutPlan.Workout.activity.getter();
        v50(v36, v48);
        *v69 = v70;
        (*(*(v67 - 8) + 104))(v69, *MEMORY[0x277CE4118], v67);
        swift_willThrow();
        (*(v106 + 8))(v105, v107);
        return v36;
      }

      WorkoutPlan.id.getter();
      v51 = v105;
      v52 = v111;
      v53 = specialized static IntervalWorkoutConfiguration.workoutCoreRepresentation(_:id:occurrence:validator:)(v105, v25, v110, v47);
      if (v52)
      {
        (*(v109 + 8))(v25, v108);
        (*(v106 + 8))(v51, v107);
        return v36;
      }

      v36 = v53;
      (*(v109 + 8))(v25, v108);
      (*(v106 + 8))(v51, v107);
    }

    else
    {
      v59 = v46;
      if (v39 == *MEMORY[0x277CE3F90])
      {
        (*(v32 + 96))(v38, v46);
        v60 = v101;
        (*(v104 + 32))(v103, v38, v101);
        WorkoutPlan.workout.getter();
        v61 = WorkoutPlan.Workout.activity.getter();
        v62 = *(v32 + 8);
        v62(v36, v59);
        if (((*(*v47 + 312))(v61) & 1) == 0)
        {
          v78 = type metadata accessor for CompositionValidationError();
          _s10WorkoutKit11ImportErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type CompositionValidationError and conformance CompositionValidationError, MEMORY[0x277CE4128]);
          v113 = swift_allocError();
          v80 = v79;
          WorkoutPlan.workout.getter();
          v81 = WorkoutPlan.Workout.activity.getter();
          v62(v36, v59);
          *v80 = v81;
          (*(*(v78 - 8) + 104))(v80, *MEMORY[0x277CE4118], v78);
          swift_willThrow();
          (*(v104 + 8))(v103, v60);
          return v36;
        }

        v63 = v96;
        WorkoutPlan.id.getter();
        v64 = v103;
        v65 = v111;
        v66 = specialized static PacerWorkoutConfiguration.workoutCoreRepresentation(_:id:occurrence:validator:)(v103, v63, v110, v47);
        if (v65)
        {
          (*(v109 + 8))(v63, v108);
          (*(v104 + 8))(v64, v60);
          return v36;
        }

        v36 = v66;
        (*(v109 + 8))(v63, v108);
        (*(v104 + 8))(v64, v60);
      }

      else
      {
        if (v39 != *MEMORY[0x277CE3F80])
        {
          v82 = type metadata accessor for CompositionValidationError();
          _s10WorkoutKit11ImportErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type CompositionValidationError and conformance CompositionValidationError, MEMORY[0x277CE4128]);
          swift_allocError();
          (*(*(v82 - 8) + 104))(v83, *MEMORY[0x277CE4120], v82);
          swift_willThrow();
          (*(v32 + 8))(v38, v59);
          return v36;
        }

        (*(v32 + 96))(v38, v46);
        v71 = v98;
        v72 = v97;
        v73 = v38;
        v74 = v99;
        (*(v98 + 32))(v97, v73, v99);
        v75 = v95;
        WorkoutPlan.id.getter();
        v76 = v111;
        v77 = specialized static MultiSportWorkoutConfiguration.workoutCoreRepresentation(_:id:occurrence:)(v72, v75, v110);
        if (v76)
        {
          (*(v109 + 8))(v75, v108);
          (*(v71 + 8))(v72, v74);
          return v36;
        }

        v36 = v77;
        (*(v109 + 8))(v75, v108);
        (*(v71 + 8))(v72, v74);
      }
    }
  }

  v84 = type metadata accessor for WorkoutKitFeatures();
  v114[3] = v84;
  v114[4] = _s10WorkoutKit11ImportErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type WorkoutKitFeatures and conformance WorkoutKitFeatures, MEMORY[0x277CE3FD8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v114);
  (*(*(v84 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CE3FB0], v84);
  LOBYTE(v84) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v114);
  if (v84)
  {
    v86 = v100;
    WorkoutPlan.route.getter();
    v87 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
    swift_beginAccess();
    outlined assign with take of UUID?(v86, &v36[v87], &_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
    swift_endAccess();
  }

  v88 = v102;
  WorkoutPlan.originalPlanReferenceUUID.getter();
  v89 = OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID;
  swift_beginAccess();
  outlined assign with take of UUID?(v88, &v36[v89], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  swift_endAccess();
  v90 = WorkoutPlan.alternativeUUIDs.getter();
  v91 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  swift_beginAccess();
  v92 = *&v36[v91];
  *&v36[v91] = v90;

  return v36;
}

uint64_t static WorkoutConfiguration.transferRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for UTType();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(v7 + 56))(v4, 1, 1);
  UTType.init(exportedAs:conformingTo:)();
  *(swift_allocObject() + 16) = v0;
  type metadata accessor for WorkoutConfiguration();
  _s10WorkoutKit11ImportErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, type metadata accessor for WorkoutConfiguration);
  return FileRepresentation.init(contentType:shouldAttemptToOpenInPlace:exporting:importing:)();
}

uint64_t closure #1 in static WorkoutConfiguration.transferRepresentation.getter(uint64_t a1, uint64_t *a2)
{
  v2[2] = a1;
  v4 = type metadata accessor for URL();
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *a2;
  v2[6] = v7;
  v2[7] = v8;

  return MEMORY[0x2822009F8](closure #1 in static WorkoutConfiguration.transferRepresentation.getter, 0, 0);
}

uint64_t closure #1 in static WorkoutConfiguration.transferRepresentation.getter()
{
  v1 = *(v0 + 56);
  WorkoutConfiguration.exportToFile()(*(v0 + 48));
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  (*(v4 + 16))(*(v0 + 40), v2, v3);
  SentTransferredFile.init(_:allowAccessingOriginalFile:)();
  (*(v4 + 8))(v2, v3);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t closure #2 in static WorkoutConfiguration.transferRepresentation.getter(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in static WorkoutConfiguration.transferRepresentation.getter, 0, 0);
}

uint64_t closure #2 in static WorkoutConfiguration.transferRepresentation.getter()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  MEMORY[0x20F2E55E0]();
  v5 = URL.dataRepresentation.getter();
  v7 = v6;
  (*(v2 + 8))(v1, v4);
  v8 = specialized Occurrence.__allocating_init(count:)(0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = specialized static WorkoutConfiguration.importFromData(_:with:validator:)(v5, v7, v8, static WorkoutConfigurationValidator.shared);

  outlined consume of Data._Representation(v5, v7);
  v10 = *(v0 + 48);
  **(v0 + 16) = v9;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t protocol witness for static Transferable.transferRepresentation.getter in conformance WorkoutConfiguration()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for UTType();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(v7 + 56))(v4, 1, 1);
  UTType.init(exportedAs:conformingTo:)();
  *(swift_allocObject() + 16) = v0;
  type metadata accessor for WorkoutConfiguration();
  return FileRepresentation.init(contentType:shouldAttemptToOpenInPlace:exporting:importing:)();
}

NSObject *specialized static WorkoutConfiguration.importFromData(_:with:validator:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v9 = type metadata accessor for WorkoutPlan();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined copy of Data._Representation(a1, a2);
  WorkoutPlan.init(from:)();
  if (v4)
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static WOLog.core);
    v15 = v4;
    v22 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v4;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_20AEA4000, v22, v16, "[Serialization] failed to deserialize due to %@", v17, 0xCu);
      _s10Foundation4UUIDVSgWOhTm_6(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v18, -1, -1);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v22 = WorkoutPlan.workoutCoreRepresentation(occurrence:validator:)(a3, a4);
    (*(v10 + 8))(v13, v9);
    v23 = OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf;
    swift_beginAccess();
    *(&v22->isa + v23) = 1;
  }

  return v22;
}

uint64_t _s10Foundation4UUIDVSgWOcTm_2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t partial apply for closure #2 in static WorkoutConfiguration.transferRepresentation.getter(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #2 in static WorkoutConfiguration.transferRepresentation.getter;

  return closure #2 in static WorkoutConfiguration.transferRepresentation.getter(a1, a2);
}

uint64_t _s10WorkoutKit11ImportErrorOACs0D0AAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type FileRepresentation<WorkoutConfiguration> and conformance FileRepresentation<A>()
{
  result = lazy protocol witness table cache variable for type FileRepresentation<WorkoutConfiguration> and conformance FileRepresentation<A>;
  if (!lazy protocol witness table cache variable for type FileRepresentation<WorkoutConfiguration> and conformance FileRepresentation<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s16CoreTransferable18FileRepresentationVy07WorkoutA00E13ConfigurationCGMd, &_s16CoreTransferable18FileRepresentationVy07WorkoutA00E13ConfigurationCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileRepresentation<WorkoutConfiguration> and conformance FileRepresentation<A>);
  }

  return result;
}

uint64_t closure #2 in static WorkoutConfiguration.transferRepresentation.getterpartial apply(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = closure #2 in static WorkoutConfiguration.transferRepresentation.getterpartial apply;

  return closure #2 in static WorkoutConfiguration.transferRepresentation.getter(a1, a2);
}

uint64_t closure #2 in static WorkoutConfiguration.transferRepresentation.getterpartial apply()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _s10Foundation4UUIDVSgWOhTm_6(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t static FunctionalThresholdPower.emptyFTP()()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  static Date.now.getter();
  (*(v1 + 16))(v5, v7, v0);
  v8 = type metadata accessor for FunctionalThresholdPower();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 1;
  v12 = *(v1 + 32);
  v12(v11 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate, v5, v0);
  v12(v11 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate, v7, v0);
  return v11;
}

uint64_t FunctionalThresholdPower.__allocating_init(value:source:creationDate:)(char *a1, char *a2, double a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  (*(v7 + 16))(v10, a2, v6);
  v12 = type metadata accessor for FunctionalThresholdPower();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = v11;
  v16 = *(v7 + 32);
  v16(v15 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate, v10, v6);
  v16(v15 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate, a2, v6);
  return v15;
}

uint64_t FunctionalThresholdPower.__allocating_init(value:source:creationDate:fetchDate:)(char *a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  v12 = *a1;
  *(v11 + 16) = a4;
  *(v11 + 24) = v12;
  v13 = OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate;
  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 32);
  v15(v11 + v13, a2, v14);
  v15(v11 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate, a3, v14);
  return v11;
}

uint64_t type metadata accessor for FunctionalThresholdPower()
{
  result = type metadata singleton initialization cache for FunctionalThresholdPower;
  if (!type metadata singleton initialization cache for FunctionalThresholdPower)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FunctionalThresholdPowerSource.description.getter()
{
  if (*v0)
  {
    return 0x726568746FLL;
  }

  else
  {
    return 0x656C707061;
  }
}

WorkoutCore::FunctionalThresholdPowerSource_optional __swiftcall FunctionalThresholdPowerSource.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of FunctionalThresholdPowerSource.init(rawValue:), v3);

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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance FunctionalThresholdPowerSource(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x726568746FLL;
  }

  else
  {
    v2 = 0x656C707061;
  }

  if (*a2)
  {
    v3 = 0x726568746FLL;
  }

  else
  {
    v3 = 0x656C707061;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FunctionalThresholdPowerSource()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FunctionalThresholdPowerSource()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FunctionalThresholdPowerSource()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance FunctionalThresholdPowerSource@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of FunctionalThresholdPowerSource.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance FunctionalThresholdPowerSource(uint64_t *a1@<X8>)
{
  v2 = 0x656C707061;
  if (*v1)
  {
    v2 = 0x726568746FLL;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FunctionalThresholdPowerSource()
{
  if (*v0)
  {
    return 0x726568746FLL;
  }

  else
  {
    return 0x656C707061;
  }
}

uint64_t FunctionalThresholdPower.creationDate.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t FunctionalThresholdPower.init(value:source:creationDate:fetchDate:)(char *a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = *a1;
  *(v4 + 16) = a4;
  *(v4 + 24) = v7;
  v8 = OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate;
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 32);
  v10(v4 + v8, a2, v9);
  v10(v4 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate, a3, v9);
  return v4;
}

id FunctionalThresholdPower.quantity.getter()
{
  v1 = [objc_opt_self() wattUnit];
  v2 = [objc_opt_self() quantityWithUnit:v1 doubleValue:*(v0 + 16)];

  return v2;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FunctionalThresholdPower.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FunctionalThresholdPower.CodingKeys()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FunctionalThresholdPower.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance FunctionalThresholdPower.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized FunctionalThresholdPower.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance FunctionalThresholdPower.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x65756C6176;
  v4 = 0xEC00000065746144;
  v5 = 0x6E6F697461657263;
  if (*v1 != 2)
  {
    v5 = 0x7461446863746566;
    v4 = 0xE900000000000065;
  }

  if (*v1)
  {
    v3 = 0x656372756F73;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance FunctionalThresholdPower.CodingKeys()
{
  v1 = 0x65756C6176;
  v2 = 0x6E6F697461657263;
  if (*v0 != 2)
  {
    v2 = 0x7461446863746566;
  }

  if (*v0)
  {
    v1 = 0x656372756F73;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance FunctionalThresholdPower.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized FunctionalThresholdPower.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FunctionalThresholdPower.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FunctionalThresholdPower.CodingKeys and conformance FunctionalThresholdPower.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FunctionalThresholdPower.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FunctionalThresholdPower.CodingKeys and conformance FunctionalThresholdPower.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FunctionalThresholdPower.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  FunctionalThresholdPower.init(from:)(a1);
  return v5;
}

_BYTE *FunctionalThresholdPower.init(from:)(uint64_t *a1)
{
  v3 = type metadata accessor for Date();
  v32 = *(v3 - 8);
  v4 = *(v32 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v29 - v8;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore24FunctionalThresholdPowerC10CodingKeys33_77C86E9BE0DCEB479DE08DF792395C7ELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore24FunctionalThresholdPowerC10CodingKeys33_77C86E9BE0DCEB479DE08DF792395C7ELLOGMR);
  v10 = *(v33 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v33);
  v13 = v29 - v12;
  v14 = a1[3];
  v15 = a1[4];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type FunctionalThresholdPower.CodingKeys and conformance FunctionalThresholdPower.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    v16 = v34;
    type metadata accessor for FunctionalThresholdPower();
    v21 = *(*v16 + 48);
    v22 = *(*v16 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v30 = v7;
    v31 = v9;
    v17 = v10;
    v41 = 0;
    v18 = v33;
    KeyedDecodingContainer.decode(_:forKey:)();
    v16 = v34;
    *(v34 + 16) = v19;
    v39 = 1;
    lazy protocol witness table accessor for type FunctionalThresholdPowerSource and conformance FunctionalThresholdPowerSource();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v16[24] = v40;
    v38 = 2;
    v20 = _s10Foundation4DateVACSeAAWlTm_2(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v29[0] = v20;
    v24 = v31;
    v25 = v32;
    v26 = OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate;
    v31 = *(v32 + 32);
    v29[1] = v32 + 32;
    v31(&v16[OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate], v24, v3);
    v37 = 3;
    if (KeyedDecodingContainer.contains(_:)())
    {
      v36 = 3;
      v27 = v30;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v17 + 8))(v13, v18);
      v28 = v27;
    }

    else
    {
      (*(v17 + 8))(v13, v18);
      v28 = v30;
      (*(v25 + 16))(v30, &v16[v26], v3);
    }

    v31(&v16[OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate], v28, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  return v16;
}

uint64_t FunctionalThresholdPower.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore24FunctionalThresholdPowerC10CodingKeys33_77C86E9BE0DCEB479DE08DF792395C7ELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore24FunctionalThresholdPowerC10CodingKeys33_77C86E9BE0DCEB479DE08DF792395C7ELLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FunctionalThresholdPower.CodingKeys and conformance FunctionalThresholdPower.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 16);
  v13[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13[14] = *(v3 + 24);
    v13[13] = 1;
    lazy protocol witness table accessor for type FunctionalThresholdPowerSource and conformance FunctionalThresholdPowerSource();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13[12] = 2;
    type metadata accessor for Date();
    _s10Foundation4DateVACSeAAWlTm_2(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13[11] = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t FunctionalThresholdPower.hash(into:)()
{
  v1 = *(v0 + 16);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x20F2E8020](*&v1);
  *(v0 + 24);
  String.hash(into:)();
}

uint64_t FunctionalThresholdPower.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate;
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate, v2);
  return v0;
}

uint64_t FunctionalThresholdPower.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate;
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Int FunctionalThresholdPower.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 16);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x20F2E8020](*&v1);
  *(v0 + 24);
  String.hash(into:)();

  return Hasher._finalize()();
}

_BYTE *protocol witness for Decodable.init(from:) in conformance FunctionalThresholdPower@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for FunctionalThresholdPower();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = FunctionalThresholdPower.init(from:)(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FunctionalThresholdPower()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x20F2E8020](*&v2);
  *(v1 + 24);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t FunctionalThresholdPower.description.getter()
{
  _StringGuts.grow(_:)(41);
  MEMORY[0x20F2E6D80](0x203A65756C617628, 0xE800000000000000);
  v1 = *(v0 + 16);
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0x656372756F73202CLL, 0xEA0000000000203ALL);
  if (*(v0 + 24))
  {
    v2 = 0x726568746FLL;
  }

  else
  {
    v2 = 0x656C707061;
  }

  MEMORY[0x20F2E6D80](v2, 0xE500000000000000);

  MEMORY[0x20F2E6D80](0xD000000000000010, 0x800000020B456020);
  if (one-time initialization token for logDateFormatter != -1)
  {
    swift_once();
  }

  v3 = static WOLog.logDateFormatter;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v5 = [v3 stringFromDate_];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  MEMORY[0x20F2E6D80](v6, v8);

  MEMORY[0x20F2E6D80](41, 0xE100000000000000);
  return 0;
}

uint64_t specialized static FunctionalThresholdPower.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16))
  {
    if (*(a1 + 24))
    {
      v2 = 0x726568746FLL;
    }

    else
    {
      v2 = 0x656C707061;
    }

    if (*(a2 + 24))
    {
      v3 = 0x726568746FLL;
    }

    else
    {
      v3 = 0x656C707061;
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
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

unint64_t lazy protocol witness table accessor for type FunctionalThresholdPower.CodingKeys and conformance FunctionalThresholdPower.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FunctionalThresholdPower.CodingKeys and conformance FunctionalThresholdPower.CodingKeys;
  if (!lazy protocol witness table cache variable for type FunctionalThresholdPower.CodingKeys and conformance FunctionalThresholdPower.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionalThresholdPower.CodingKeys and conformance FunctionalThresholdPower.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FunctionalThresholdPower.CodingKeys and conformance FunctionalThresholdPower.CodingKeys;
  if (!lazy protocol witness table cache variable for type FunctionalThresholdPower.CodingKeys and conformance FunctionalThresholdPower.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionalThresholdPower.CodingKeys and conformance FunctionalThresholdPower.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FunctionalThresholdPower.CodingKeys and conformance FunctionalThresholdPower.CodingKeys;
  if (!lazy protocol witness table cache variable for type FunctionalThresholdPower.CodingKeys and conformance FunctionalThresholdPower.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionalThresholdPower.CodingKeys and conformance FunctionalThresholdPower.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FunctionalThresholdPower.CodingKeys and conformance FunctionalThresholdPower.CodingKeys;
  if (!lazy protocol witness table cache variable for type FunctionalThresholdPower.CodingKeys and conformance FunctionalThresholdPower.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionalThresholdPower.CodingKeys and conformance FunctionalThresholdPower.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FunctionalThresholdPowerSource and conformance FunctionalThresholdPowerSource()
{
  result = lazy protocol witness table cache variable for type FunctionalThresholdPowerSource and conformance FunctionalThresholdPowerSource;
  if (!lazy protocol witness table cache variable for type FunctionalThresholdPowerSource and conformance FunctionalThresholdPowerSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionalThresholdPowerSource and conformance FunctionalThresholdPowerSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FunctionalThresholdPowerSource and conformance FunctionalThresholdPowerSource;
  if (!lazy protocol witness table cache variable for type FunctionalThresholdPowerSource and conformance FunctionalThresholdPowerSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionalThresholdPowerSource and conformance FunctionalThresholdPowerSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FunctionalThresholdPowerSource and conformance FunctionalThresholdPowerSource;
  if (!lazy protocol witness table cache variable for type FunctionalThresholdPowerSource and conformance FunctionalThresholdPowerSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionalThresholdPowerSource and conformance FunctionalThresholdPowerSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FunctionalThresholdPowerSource and conformance FunctionalThresholdPowerSource;
  if (!lazy protocol witness table cache variable for type FunctionalThresholdPowerSource and conformance FunctionalThresholdPowerSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionalThresholdPowerSource and conformance FunctionalThresholdPowerSource);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FunctionalThresholdPowerSource(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FunctionalThresholdPowerSource(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata completion function for FunctionalThresholdPower()
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

uint64_t getEnumTagSinglePayload for FunctionalThresholdPower.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FunctionalThresholdPower.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t specialized FunctionalThresholdPower.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of FunctionalThresholdPower.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t _HKWorkoutGoalType.analyticsKey.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x796772656E65;
      }

      return 0x6E776F6E6B6E75;
    }

    return 1701669236;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x65636E6174736964;
      }

      return 0x6E776F6E6B6E75;
    }

    return 1852141679;
  }
}

uint64_t _HKWorkoutGoalType.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x796772656E45;
      }

      return 0x6E776F6E6B6E55;
    }

    return 1701669204;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x65636E6174736944;
      }

      return 0x6E776F6E6B6E55;
    }

    return 1852141647;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _HKWorkoutGoalType()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0x796772656E45;
      }

      return 0x6E776F6E6B6E55;
    }

    return 1701669204;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0x65636E6174736944;
      }

      return 0x6E776F6E6B6E55;
    }

    return 1852141647;
  }
}

id static NLWorkoutFactory.make(configuration:healthStore:formattingManager:locationProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(NLWorkout);

  return [v8 initWithWorkoutConfiguration:a1 healthStore:a2 formattingManager:a3 locationProvider:a4];
}

id static NLWorkoutFactory.make(configuration:healthStore:formattingManager:session:locationProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_allocWithZone(NLWorkout);

  return [v10 initWithWorkoutConfiguration:a1 healthStore:a2 formattingManager:a3 session:a4 locationProvider:a5];
}

uint64_t closure #1 in NLWorkoutRecoveryController.recoverFromCrashIfNeeded()(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  type metadata accessor for MainActor();

  v11 = a1;
  v12 = a2;
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = a3;
  v14[5] = a1;
  v14[6] = a2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in closure #1 in NLWorkoutRecoveryController.recoverFromCrashIfNeeded(), v14);
}

uint64_t closure #1 in closure #1 in NLWorkoutRecoveryController.recoverFromCrashIfNeeded()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  type metadata accessor for MainActor();
  v6[9] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in NLWorkoutRecoveryController.recoverFromCrashIfNeeded(), v8, v7);
}

uint64_t closure #1 in closure #1 in NLWorkoutRecoveryController.recoverFromCrashIfNeeded()()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    NLWorkoutRecoveryController.handleCrashRecovery(session:error:)(*(v0 + 56), *(v0 + 64));
  }

  **(v0 + 40) = Strong == 0;
  v4 = *(v0 + 8);

  return v4();
}

void NLWorkoutRecoveryController.handleCrashRecovery(session:error:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v54 - v8;
  if (a2)
  {
    if (one-time initialization token for recovery != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static WOLog.recovery);
    v11 = a2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v54[1] = a2;
      *&v55[0] = v15;
      *v14 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
      v16 = Optional.description.getter();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v55);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_20AEA4000, v12, v13, "Attempted crash recovery failed. error=%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x20F2E9420](v15, -1, -1);
      MEMORY[0x20F2E9420](v14, -1, -1);
    }

    [v3 setAppInWorkoutSession_];
    return;
  }

  if (a1)
  {
    v19 = a1;
    v20 = [v19 associatedWorkoutBuilder];
    v21 = [v20 startDate];

    if (!v21)
    {
      v39 = type metadata accessor for Date();
      (*(*(v39 - 8) + 56))(v9, 1, 1, v39);
      _s10Foundation4DateVSgWOhTm_14(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if (one-time initialization token for recovery != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static WOLog.recovery);
      v19 = v19;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 138412290;
        *(v43 + 4) = v19;
        *v44 = a1;
        v45 = v19;
        _os_log_impl(&dword_20AEA4000, v41, v42, "Attempted crash recovery failed. start date nil for session=%@", v43, 0xCu);
        _s10Foundation4DateVSgWOhTm_14(v44, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x20F2E9420](v44, -1, -1);
        MEMORY[0x20F2E9420](v43, -1, -1);
      }

      goto LABEL_28;
    }

    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = type metadata accessor for Date();
    (*(*(v22 - 8) + 56))(v9, 0, 1, v22);
    _s10Foundation4DateVSgWOhTm_14(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v23 = [v19 associatedWorkoutBuilder];
    v24 = [v23 metadata];

    v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = static HealthDataConstants.workoutSessionIdentifierProperty.getter();
    if (*(v25 + 16))
    {
      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v27);
      v30 = v29;

      if (v30)
      {
        outlined init with copy of Any(*(v25 + 56) + 32 * v28, v55);

        _s10Foundation4DateVSgWOhTm_14(v55, &_sypSgMd, &_sypSgMR);
        if (one-time initialization token for recovery != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        __swift_project_value_buffer(v31, static WOLog.recovery);
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_20AEA4000, v32, v33, "Fitness+ workouts do not support crash recovery. Ending workout.", v34, 2u);
          MEMORY[0x20F2E9420](v34, -1, -1);
        }

        [v19 end];
LABEL_28:
        [v3 setAppInWorkoutSession_];

        return;
      }
    }

    else
    {
    }

    memset(v55, 0, sizeof(v55));
    _s10Foundation4DateVSgWOhTm_14(v55, &_sypSgMd, &_sypSgMR);
    if (one-time initialization token for recovery != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static WOLog.recovery);
    v47 = v19;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138412290;
      *(v50 + 4) = v47;
      *v51 = a1;
      v52 = v47;
      _os_log_impl(&dword_20AEA4000, v48, v49, "Recover workout session with workout controller. session=%@", v50, 0xCu);
      _s10Foundation4DateVSgWOhTm_14(v51, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v51, -1, -1);
      MEMORY[0x20F2E9420](v50, -1, -1);
    }

    v53 = [v3 workoutController];
    [v53 recoverWorkoutWithWorkoutSession_];
  }

  else
  {
    if (one-time initialization token for recovery != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static WOLog.recovery);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_20AEA4000, v36, v37, "Attempted crash recovery failed. session nil", v38, 2u);
      MEMORY[0x20F2E9420](v38, -1, -1);
    }

    [v3 setAppInWorkoutSession_];
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKWorkoutSession?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t partial apply for closure #1 in closure #1 in NLWorkoutRecoveryController.recoverFromCrashIfNeeded()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in closure #1 in NLWorkoutRecoveryController.recoverFromCrashIfNeeded();

  return closure #1 in closure #1 in NLWorkoutRecoveryController.recoverFromCrashIfNeeded()(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #1 in NLWorkoutRecoveryController.recoverFromCrashIfNeeded()()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _s10Foundation4DateVSgWOhTm_14(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id static FIUIWorkoutActivityType.makeSeymourGuidedActivityType(mediaType:)(unsigned __int8 a1)
{
  if (a1 - 2 < 2)
  {
    return 0;
  }

  if (a1)
  {
    v2 = 52;
  }

  else
  {
    v2 = 37;
  }

  v3 = MEMORY[0x20F2E5300]();
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  *(inited + 32) = static HealthDataConstants.mediaTypeProperty.getter();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v7;
  *(inited + 48) = v3;
  *(inited + 56) = v5;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, Any)(inited + 32);
  v8 = objc_allocWithZone(MEMORY[0x277D0A810]);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = [v8 initWithActivityTypeIdentifier:v2 isIndoor:0 metadata:isa];

  return v10;
}

id static HeartRateConfiguration.maximumHeartRate(forAge:)(double a1)
{
  v1 = 0.0;
  if (a1 > 0.0)
  {
    v1 = a1;
  }

  v2 = v1 * -0.7 + 208.0;
  if (a1 <= 110.0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 131.0;
  }

  v4 = [objc_opt_self() _countPerMinuteUnit];
  v5 = [objc_opt_self() quantityWithUnit:v4 doubleValue:v3];

  return v5;
}

id specialized static HeartRateConfiguration.ageBasedMaximumHeartRate()()
{
  v20[1] = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  v5 = static HeartRateConfiguration.healthStore;
  static Date.now.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v4, v0);
  v20[0] = 0;
  v7 = [v5 ageWithCurrentDate:isa error:v20];

  if (v7)
  {
    v8 = v20[0];
    [v7 doubleValue];
    v10 = 0.0;
    if (v9 > 0.0)
    {
      v10 = v9;
    }

    v11 = v10 * -0.7 + 208.0;
    if (v9 <= 110.0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 131.0;
    }

    v13 = [objc_opt_self() _countPerMinuteUnit];
    v14 = [objc_opt_self() quantityWithUnit:v13 doubleValue:v12];
  }

  else
  {
    v15 = v20[0];
    v16 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v14 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t WorkoutStep.displayString.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v5)
  {
    goto LABEL_6;
  }

  result = v4;
  v2 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v2 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {

LABEL_6:
    swift_beginAccess();
    v3 = *(v0 + 16);
    return StepType.displayString.getter();
  }

  return result;
}

WorkoutCore::MetricPlatterType_optional __swiftcall MetricPlatterType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MetricPlatterType.init(rawValue:), v3);

  v7 = 16;
  if (v5 < 0x10)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MetricPlatterType(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = MetricPlatterType.bridgedValue.getter();
  v4 = v3;
  if (v2 == MetricPlatterType.bridgedValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MetricPlatterType()
{
  v1 = *v0;
  v2 = Hasher.init(_seed:)();
  MetricPlatterType.bridgedValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MetricPlatterType(uint64_t a1)
{
  v3 = *v1;
  MetricPlatterType.bridgedValue.getter(a1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MetricPlatterType()
{
  v1 = *v0;
  v2 = Hasher.init(_seed:)();
  MetricPlatterType.bridgedValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MetricPlatterType@<X0>(uint64_t *a1@<X8>)
{
  result = MetricPlatterType.bridgedValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MetricPlatterType.rawValue.getter()
{
  result = 0x647261646E617473;
  switch(*v0)
  {
    case 2:
      result = 0x6C61767265746E69;
      break;
    case 3:
      result = 0x6C61767265746E69;
      break;
    case 4:
      result = 0x7265636170;
      break;
    case 5:
      result = 1701011826;
      break;
    case 6:
      result = 0x746E656D676573;
      break;
    case 7:
      result = 0x7974697669746361;
      break;
    case 8:
      result = 0x6F65646976;
      break;
    case 9:
      result = 0x74696C7073;
      break;
    case 0xA:
      result = 0x7461527472616568;
      break;
    case 0xB:
      result = 0x6F707369746C756DLL;
      break;
    case 0xC:
      result = 0x7265776F70;
      break;
    case 0xD:
      result = 0x6E6F5A7265776F70;
      break;
    case 0xE:
      result = 0x6F69746176656C65;
      break;
    case 0xF:
      result = 0x656D6F6465657073;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [MetricPlatterType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [MetricPlatterType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [MetricPlatterType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore17MetricPlatterTypeOGMd, &_sSay11WorkoutCore17MetricPlatterTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [MetricPlatterType] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricPlatterType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MetricPlatterType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t FIUIWorkoutActivityType.splitsPlatterIncludeByDefault.getter()
{
  v1 = [v0 effectiveTypeIdentifier];
  if ((v1 - 13) > 0x3A || ((1 << (v1 - 13)) & 0x400800001400001) == 0)
  {
    return 0;
  }

  else
  {
    return [v0 isIndoor] ^ 1;
  }
}

id FIUIWorkoutActivityType.powerPlatterIncludeByDefault.getter()
{
  if ([v0 effectiveTypeIdentifier] == 13)
  {
    return [objc_opt_self() hasHadPairedCyclingPowerSensors];
  }

  else
  {
    return 0;
  }
}

uint64_t FIUIWorkoutActivityType.elevationPlatterIncludeByDefault.getter()
{
  v1 = [v0 effectiveTypeIdentifier];
  v2 = v1 - 13;
  if ((v1 - 13) > 0x3A)
  {
    return 0;
  }

  if (((1 << v2) & 0x400000001000001) != 0)
  {
    return [v0 isIndoor] ^ 1;
  }

  return ((1 << v2) & 0x800000000800) != 0;
}

uint64_t Apple_Workout_Core_CLLocation.init()@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for Apple_Workout_Core_CLLocation();
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  v3 = a1 + *(v2 + 40);
  return UnknownStorage.init()();
}

uint64_t type metadata accessor for Apple_Workout_Core_CLLocation()
{
  result = type metadata singleton initialization cache for Apple_Workout_Core_CLLocation;
  if (!type metadata singleton initialization cache for Apple_Workout_Core_CLLocation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_CLLocation.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_CLLocation() + 40);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_CLLocation.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_CLLocation() + 40);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static Apple_Workout_Core_CLLocation._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_CLLocation._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Workout_Core_CLLocation.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4 || result == 5 || result == 6)
        {
LABEL_11:
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        }
      }

      else if (result == 1 || result == 2 || result == 3)
      {
        goto LABEL_11;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_CLLocation.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v1))
  {
    if (!v0[1] || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v1))
    {
      if (!v0[2] || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v1))
      {
        if (!v0[3] || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v1))
        {
          if (!v0[4] || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v1))
          {
            if (!v0[5] || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v1))
            {
              v3 = v0 + *(type metadata accessor for Apple_Workout_Core_CLLocation() + 40);
              return UnknownStorage.traverse<A>(visitor:)();
            }
          }
        }
      }
    }
  }

  return result;
}

Swift::Int Apple_Workout_Core_CLLocation.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Workout_Core_CLLocation();
  lazy protocol witness table accessor for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation(&lazy protocol witness table cache variable for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation, type metadata accessor for Apple_Workout_Core_CLLocation);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_CLLocation@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  v2 = a2 + *(a1 + 40);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_CLLocation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_CLLocation(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_CLLocation(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_CLLocation;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_CLLocation(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation(&lazy protocol witness table cache variable for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation, type metadata accessor for Apple_Workout_Core_CLLocation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_CLLocation@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_CLLocation._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_CLLocation(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation(&lazy protocol witness table cache variable for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation, type metadata accessor for Apple_Workout_Core_CLLocation);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_CLLocation()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_CLLocation()
{
  lazy protocol witness table accessor for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation(&lazy protocol witness table cache variable for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation, type metadata accessor for Apple_Workout_Core_CLLocation);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_CLLocation()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_CLLocation.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4] || a1[5] != a2[5])
  {
    return 0;
  }

  v2 = *(type metadata accessor for Apple_Workout_Core_CLLocation() + 40);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t type metadata completion function for Apple_Workout_Core_CLLocation()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t key path getter for MockWorkoutDeviceProvider.devices : MockWorkoutDeviceProvider@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for MockWorkoutDeviceProvider.devices : MockWorkoutDeviceProvider(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t MockWorkoutDeviceProvider.devices.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t MockWorkoutDeviceProvider.devices.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*MockWorkoutDeviceProvider.devices.modify(uint64_t *a1))(void *a1)
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
  return MockWorkoutDeviceProvider.devices.modify;
}

void MockWorkoutDeviceProvider.devices.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path getter for MockWorkoutDeviceProvider.$devices : MockWorkoutDeviceProvider(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for MockWorkoutDeviceProvider.$devices : MockWorkoutDeviceProvider(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MockWorkoutDeviceProvider.$devices.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t MockWorkoutDeviceProvider.$devices.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*MockWorkoutDeviceProvider.$devices.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25MockWorkoutDeviceProvider__devices;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MockWorkoutDeviceProvider.$devices.modify;
}

void MockWorkoutDeviceProvider.$devices.modify(uint64_t a1, char a2)
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

uint64_t MockWorkoutDeviceProvider.__allocating_init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - v4;
  v6 = *(v0 + 48);
  v7 = *(v0 + 52);
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtC11WorkoutCore25MockWorkoutDeviceProvider__devices;
  v11[1] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A6DeviceVGMd, &_sSay11WorkoutCore0A6DeviceVGMR);
  Published.init(initialValue:)();
  (*(v2 + 32))(v8 + v9, v5, v1);
  MockWorkoutDeviceProvider.fetchDevices()();
  return v8;
}

uint64_t MockWorkoutDeviceProvider.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v8 - v4;
  v6 = OBJC_IVAR____TtC11WorkoutCore25MockWorkoutDeviceProvider__devices;
  v8[1] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A6DeviceVGMd, &_sSay11WorkoutCore0A6DeviceVGMR);
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v6, v5, v1);
  MockWorkoutDeviceProvider.fetchDevices()();
  return v0;
}

Swift::Void __swiftcall MockWorkoutDeviceProvider.fetchDevices()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v1 - 8);
  v2 = *(v22 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v20 = *(v5 - 8);
  v21 = v5;
  v6 = *(v20 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - v15;
  type metadata accessor for OS_dispatch_queue();
  v17 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v19 = *(v10 + 8);
  v19(v14, v9);
  aBlock[4] = partial apply for closure #1 in MockWorkoutDeviceProvider.fetchDevices();
  v24 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_87;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_11(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7500](v16, v8, v4, v18);
  _Block_release(v18);

  (*(v22 + 8))(v4, v1);
  (*(v20 + 8))(v8, v21);
  v19(v16, v9);
}

uint64_t closure #1 in MockWorkoutDeviceProvider.fetchDevices()(uint64_t a1)
{
  v18[0] = a1;
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore0D6DeviceVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore0D6DeviceVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20B423A20;
  UUID.init()();
  v7 = UUID.uuidString.getter();
  v9 = v8;
  v10 = *(v2 + 8);
  v10(v5, v1);
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 48) = 0xD000000000000014;
  *(v6 + 56) = 0x800000020B46D650;
  *(v6 + 64) = 0;
  *(v6 + 65) = *v20;
  *(v6 + 68) = *&v20[3];
  *(v6 + 72) = 0xD000000000000015;
  *(v6 + 80) = 0x800000020B45C750;
  *(v6 + 88) = 0;
  *(v6 + 89) = *v19;
  *(v6 + 92) = *&v19[3];
  *(v6 + 96) = xmmword_20B44DA20;
  UUID.init()();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  v10(v5, v1);
  *(v6 + 112) = v11;
  *(v6 + 120) = v13;
  *(v6 + 128) = 0xD000000000000013;
  *(v6 + 136) = 0x800000020B46D670;
  *(v6 + 144) = 1;
  *(v6 + 145) = *v22;
  *(v6 + 148) = *&v22[3];
  *(v6 + 152) = 0x7073646F70726961;
  *(v6 + 160) = 0xEA00000000006F72;
  *(v6 + 169) = *v21;
  *(v6 + 172) = *&v21[3];
  *(v6 + 168) = 0;
  *(v6 + 176) = xmmword_20B44DA30;
  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  v10(v5, v1);
  *(v6 + 192) = v14;
  *(v6 + 200) = v16;
  *(v6 + 208) = 0xD000000000000012;
  *(v6 + 216) = 0x800000020B46D690;
  *(v6 + 224) = 2;
  *(v6 + 225) = *v24;
  *(v6 + 228) = *&v24[3];
  *(v6 + 232) = 0x69662E7472616568;
  *(v6 + 240) = 0xEA00000000006C6CLL;
  *(v6 + 248) = 0;
  *(v6 + 249) = *v23;
  *(v6 + 252) = *&v23[3];
  *(v6 + 256) = 0xD000000000000010;
  *(v6 + 264) = 0x800000020B45A560;
  swift_getKeyPath();
  swift_getKeyPath();
  v18[1] = v6;

  return static Published.subscript.setter();
}

uint64_t MockWorkoutDeviceProvider.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore25MockWorkoutDeviceProvider__devices;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MockWorkoutDeviceProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore25MockWorkoutDeviceProvider__devices;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for WorkoutDevicesProviding.devices.getter in conformance MockWorkoutDeviceProvider()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t instantiation function for generic protocol witness table for MockWorkoutDeviceProvider(uint64_t a1)
{
  result = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_11(&lazy protocol witness table cache variable for type MockWorkoutDeviceProvider and conformance MockWorkoutDeviceProvider, type metadata accessor for MockWorkoutDeviceProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for MockWorkoutDeviceProvider()
{
  result = type metadata singleton initialization cache for MockWorkoutDeviceProvider;
  if (!type metadata singleton initialization cache for MockWorkoutDeviceProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance MockWorkoutDeviceProvider@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MockWorkoutDeviceProvider();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void type metadata completion function for MockWorkoutDeviceProvider()
{
  type metadata accessor for Published<[WorkoutDevice]>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

double static WorkoutChartProperties.elevation(unit:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() meterUnit];
  v5 = [objc_opt_self() quantityWithUnit:v4 doubleValue:10.0];

  [v5 doubleValueForUnit_];
  v7 = v6;

  *a2 = 48;
  result = 1800.0;
  *(a2 + 8) = xmmword_20B440800;
  *(a2 + 24) = 4;
  *(a2 + 32) = 1;
  *(a2 + 80) = 1;
  *(a2 + 40) = 0x4014000000000000;
  *(a2 + 48) = 0x6F69746176656C45;
  *(a2 + 56) = 0xE90000000000006ELL;
  *(a2 + 64) = 1;
  *(a2 + 72) = v7;
  return result;
}

double static WorkoutChartProperties.power(unit:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() wattUnit];
  v5 = [objc_opt_self() quantityWithUnit:v4 doubleValue:100.0];

  [v5 doubleValueForUnit_];
  v7 = v6;

  *a2 = 48;
  result = 1800.0;
  *(a2 + 8) = xmmword_20B440800;
  *(a2 + 24) = 4;
  *(a2 + 32) = 0;
  *(a2 + 80) = 1;
  *(a2 + 40) = 0x4028000000000000;
  *(a2 + 48) = 0x7265776F50;
  *(a2 + 56) = 0xE500000000000000;
  *(a2 + 64) = 0;
  *(a2 + 72) = v7;
  return result;
}

Swift::Int WorkoutChartProperties.ChartType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutChartProperties.ChartType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutChartProperties.ChartType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t WorkoutChartProperties.valuesName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

unint64_t lazy protocol witness table accessor for type WorkoutChartProperties.ChartType and conformance WorkoutChartProperties.ChartType()
{
  result = lazy protocol witness table cache variable for type WorkoutChartProperties.ChartType and conformance WorkoutChartProperties.ChartType;
  if (!lazy protocol witness table cache variable for type WorkoutChartProperties.ChartType and conformance WorkoutChartProperties.ChartType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutChartProperties.ChartType and conformance WorkoutChartProperties.ChartType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutChartProperties(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutChartProperties(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutChartProperties.ChartType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutChartProperties.ChartType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t MultisportMetricsPublisher.currentActivityStart.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  _s10Foundation4DateVSgWOcTm_10(a1, v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  static Published.subscript.setter();
  return _s10Foundation4DateVSgWOhTm_15(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t MultisportMetricsPublisher.multisportTransitionState.setter(char *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t MultisportMetricsPublisher.currentMultisportActivity.setter()
{
  return MultisportMetricsPublisher.currentMultisportActivity.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t MultisportMetricsPublisher.multisportRemainingLegCount.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t MultisportMetricsPublisher.multisportLastEffectiveTransitionDate.setter(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v3 + 16))(v6, a1, v2);

  static Published.subscript.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t MultisportMetricsPublisher.lastMultisportLegTime.setter()
{
  return MultisportMetricsPublisher.lastMultisportLegTime.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t MultisportMetricsPublisher.currentActivityStart.getter()
{
  return MultisportMetricsPublisher.currentActivityStart.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t (*MultisportMetricsPublisher.currentActivityStart.modify(uint64_t *a1))()
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
  return MultisportMetricsPublisher.currentActivityStart.modify;
}

uint64_t key path setter for MultisportMetricsPublisher.$currentActivityStart : MultisportMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MultisportMetricsPublisher.$currentActivityStart.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MultisportMetricsPublisher.$currentActivityStart.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__currentActivityStart;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MultisportMetricsPublisher.$currentActivityStart.modify;
}

uint64_t MultisportMetricsPublisher.currentMultisportActivity.getter()
{
  return MultisportMetricsPublisher.currentMultisportActivity.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t (*MultisportMetricsPublisher.currentMultisportActivity.modify(uint64_t *a1))()
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
  return MultisportMetricsPublisher.currentMultisportActivity.modify;
}

uint64_t key path setter for MultisportMetricsPublisher.$currentMultisportActivity : MultisportMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMd, &_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MultisportMetricsPublisher.$currentMultisportActivity.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMd, &_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MultisportMetricsPublisher.$currentMultisportActivity.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMd, &_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__currentMultisportActivity;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MultisportMetricsPublisher.$currentMultisportActivity.modify;
}

double MultisportMetricsPublisher.lastMultisportLegTime.getter()
{
  return MultisportMetricsPublisher.lastMultisportLegTime.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t (*MultisportMetricsPublisher.lastMultisportLegTime.modify(uint64_t *a1))()
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
  return MultisportMetricsPublisher.lastMultisportLegTime.modify;
}

uint64_t key path setter for MultisportMetricsPublisher.$lastMultisportLegTime : MultisportMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MultisportMetricsPublisher.$lastMultisportLegTime.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MultisportMetricsPublisher.$lastMultisportLegTime.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__lastMultisportLegTime;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MultisportMetricsPublisher.$lastMultisportLegTime.modify;
}

uint64_t (*MultisportMetricsPublisher.lastMultisportLegDistance.modify(uint64_t *a1))()
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
  return MultisportMetricsPublisher.lastMultisportLegDistance.modify;
}

uint64_t key path setter for MultisportMetricsPublisher.$lastMultisportLegDistance : MultisportMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MultisportMetricsPublisher.$lastMultisportLegDistance.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MultisportMetricsPublisher.$lastMultisportLegDistance.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__lastMultisportLegDistance;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MultisportMetricsPublisher.$lastMultisportLegDistance.modify;
}

uint64_t (*MultisportMetricsPublisher.lastMultisportLegAveragePace.modify(uint64_t *a1))()
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
  return MultisportMetricsPublisher.lastMultisportLegAveragePace.modify;
}

uint64_t key path setter for MultisportMetricsPublisher.$lastMultisportLegAveragePace : MultisportMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MultisportMetricsPublisher.$lastMultisportLegAveragePace.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MultisportMetricsPublisher.$lastMultisportLegAveragePace.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__lastMultisportLegAveragePace;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MultisportMetricsPublisher.$lastMultisportLegAveragePace.modify;
}

uint64_t MultisportMetricsPublisher.multisportTransitionState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t (*MultisportMetricsPublisher.multisportTransitionState.modify(uint64_t *a1))()
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
  return MultisportMetricsPublisher.multisportTransitionState.modify;
}

uint64_t key path setter for MultisportMetricsPublisher.$multisportTransitionState : MultisportMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore25MultisportTransitionStateO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore25MultisportTransitionStateO_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore25MultisportTransitionStateOGMd, &_s7Combine9PublishedVy11WorkoutCore25MultisportTransitionStateOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MultisportMetricsPublisher.$multisportTransitionState.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore25MultisportTransitionStateO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore25MultisportTransitionStateO_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore25MultisportTransitionStateOGMd, &_s7Combine9PublishedVy11WorkoutCore25MultisportTransitionStateOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MultisportMetricsPublisher.$multisportTransitionState.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore25MultisportTransitionStateO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore25MultisportTransitionStateO_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__multisportTransitionState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore25MultisportTransitionStateOGMd, &_s7Combine9PublishedVy11WorkoutCore25MultisportTransitionStateOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MultisportMetricsPublisher.$multisportTransitionState.modify;
}

uint64_t MultisportMetricsPublisher.multisportRemainingLegCount.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t (*MultisportMetricsPublisher.multisportRemainingLegCount.modify(uint64_t *a1))()
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
  return MultisportMetricsPublisher.multisportRemainingLegCount.modify;
}

uint64_t key path setter for MultisportMetricsPublisher.$multisportRemainingLegCount : MultisportMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MultisportMetricsPublisher.$multisportRemainingLegCount.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MultisportMetricsPublisher.$multisportRemainingLegCount.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__multisportRemainingLegCount;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MultisportMetricsPublisher.$multisportRemainingLegCount.modify;
}

uint64_t key path getter for MultisportMetricsPublisher.multisportLastEffectiveTransitionDate : MultisportMetricsPublisher(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path setter for MultisportMetricsPublisher.multisportLastEffectiveTransitionDate : MultisportMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v12(v9, v11, v4);

  static Published.subscript.setter();
  return (*(v5 + 8))(v11, v4);
}

uint64_t (*MultisportMetricsPublisher.multisportLastEffectiveTransitionDate.modify(uint64_t *a1))()
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
  return MultisportMetricsPublisher.multisportLastEffectiveTransitionDate.modify;
}

uint64_t key path setter for MultisportMetricsPublisher.$multisportLastEffectiveTransitionDate : MultisportMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateV_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateV_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVGMd, &_s7Combine9PublishedVy10Foundation4DateVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MultisportMetricsPublisher.$multisportLastEffectiveTransitionDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateV_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateV_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVGMd, &_s7Combine9PublishedVy10Foundation4DateVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MultisportMetricsPublisher.$multisportLastEffectiveTransitionDate.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateV_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateV_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__multisportLastEffectiveTransitionDate;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVGMd, &_s7Combine9PublishedVy10Foundation4DateVGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MultisportMetricsPublisher.$multisportLastEffectiveTransitionDate.modify;
}

uint64_t (*MultisportMetricsPublisher.nextMultisportActivity.modify(uint64_t *a1))()
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
  return MultisportMetricsPublisher.nextMultisportActivity.modify;
}

void MultisportMetricsPublisher.currentActivityStart.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t MultisportMetricsPublisher.$currentActivityStart.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for MultisportMetricsPublisher.$currentActivityStart : MultisportMetricsPublisher(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for MultisportMetricsPublisher.$nextMultisportActivity : MultisportMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMd, &_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MultisportMetricsPublisher.$nextMultisportActivity.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMd, &_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MultisportMetricsPublisher.$nextMultisportActivity.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMd, &_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__nextMultisportActivity;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MultisportMetricsPublisher.$nextMultisportActivity.modify;
}

void MultisportMetricsPublisher.$currentActivityStart.modify(uint64_t a1, char a2)
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

uint64_t MultisportMetricsPublisher.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  MultisportMetricsPublisher.init()();
  return v3;
}

uint64_t MultisportMetricsPublisher.init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVGMd, &_s7Combine9PublishedVy10Foundation4DateVGMR);
  v69 = *(v0 - 8);
  v70 = v0;
  v1 = *(v69 + 64);
  MEMORY[0x28223BE20](v0);
  v68 = &v54 - v2;
  v3 = type metadata accessor for Date();
  v71 = *(v3 - 8);
  v72 = v3;
  v4 = *(v71 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v67 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v66 = &v54 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = *(v64 + 64);
  MEMORY[0x28223BE20](v8);
  v63 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore25MultisportTransitionStateOGMd, &_s7Combine9PublishedVy11WorkoutCore25MultisportTransitionStateOGMR);
  v61 = *(v11 - 8);
  v62 = v11;
  v12 = *(v61 + 64);
  MEMORY[0x28223BE20](v11);
  v59 = &v54 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v57 = *(v14 - 8);
  v58 = v14;
  v15 = *(v57 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v54 - v16;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMR);
  v73 = *(v55 - 8);
  v18 = *(v73 + 64);
  MEMORY[0x28223BE20](v55);
  v54 = &v54 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v54 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v54 - v30;
  v32 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__currentActivityStart;
  (*(v71 + 56))(&v54 - v30, 1, 1, v72);
  _s10Foundation4DateVSgWOcTm_10(v31, v29, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  Published.init(initialValue:)();
  _s10Foundation4DateVSgWOhTm_15(v31, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v33 = v60;
  (*(v21 + 32))(v60 + v32, v24, v20);
  v34 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__currentMultisportActivity;
  v74 = 0;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23FIUIWorkoutActivityTypeCSgMd, &_sSo23FIUIWorkoutActivityTypeCSgMR);
  v35 = v54;
  Published.init(initialValue:)();
  v36 = *(v73 + 32);
  v73 += 32;
  v37 = v55;
  v36(v33 + v34, v35, v55);
  v38 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__lastMultisportLegTime;
  v74 = 0;
  Published.init(initialValue:)();
  v39 = v58;
  v40 = *(v57 + 32);
  v40(v33 + v38, v17, v58);
  v41 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__lastMultisportLegDistance;
  v74 = 0;
  Published.init(initialValue:)();
  v40(v33 + v41, v17, v39);
  v42 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__lastMultisportLegAveragePace;
  v74 = 0;
  Published.init(initialValue:)();
  v40(v33 + v42, v17, v39);
  v43 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__multisportTransitionState;
  LOBYTE(v74) = 0;
  v44 = v59;
  Published.init(initialValue:)();
  (*(v61 + 32))(v33 + v43, v44, v62);
  v45 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__multisportRemainingLegCount;
  v74 = 0;
  v46 = v63;
  Published.init(initialValue:)();
  (*(v64 + 32))(v33 + v45, v46, v65);
  v47 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__multisportLastEffectiveTransitionDate;
  v48 = v66;
  Date.init()();
  v50 = v71;
  v49 = v72;
  (*(v71 + 16))(v67, v48, v72);
  v51 = v68;
  Published.init(initialValue:)();
  (*(v50 + 8))(v48, v49);
  (*(v69 + 32))(v33 + v47, v51, v70);
  v52 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__nextMultisportActivity;
  v74 = 0;
  Published.init(initialValue:)();
  v36(v33 + v52, v35, v37);
  return v33;
}

uint64_t MultisportMetricsPublisher.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__currentActivityStart;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__currentMultisportActivity;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMR);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v6 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__lastMultisportLegTime;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v6, v7);
  v8(v0 + OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__lastMultisportLegDistance, v7);
  v8(v0 + OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__lastMultisportLegAveragePace, v7);
  v9 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__multisportTransitionState;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore25MultisportTransitionStateOGMd, &_s7Combine9PublishedVy11WorkoutCore25MultisportTransitionStateOGMR);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__multisportRemainingLegCount;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__multisportLastEffectiveTransitionDate;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVGMd, &_s7Combine9PublishedVy10Foundation4DateVGMR);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v5(v0 + OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__nextMultisportActivity, v4);
  return v0;
}

uint64_t MultisportMetricsPublisher.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__currentActivityStart;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__currentMultisportActivity;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMR);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v6 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__lastMultisportLegTime;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v6, v7);
  v8(v0 + OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__lastMultisportLegDistance, v7);
  v8(v0 + OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__lastMultisportLegAveragePace, v7);
  v9 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__multisportTransitionState;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore25MultisportTransitionStateOGMd, &_s7Combine9PublishedVy11WorkoutCore25MultisportTransitionStateOGMR);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__multisportRemainingLegCount;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__multisportLastEffectiveTransitionDate;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVGMd, &_s7Combine9PublishedVy10Foundation4DateVGMR);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v5(v0 + OBJC_IVAR____TtC11WorkoutCore26MultisportMetricsPublisher__nextMultisportActivity, v4);
  v15 = *(*v0 + 48);
  v16 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance MultisportMetricsPublisher@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t MultisportMetricsPublisher.wireData()()
{
  v0 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MultisportMetricsPublisher.protobuf.getter(v3);
  lazy protocol witness table accessor for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher();
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_MultiSportMetricsPublisher(v3, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
  return v4;
}

uint64_t MultisportMetricsPublisher.protobuf.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v110 = &v104 - v4;
  v109 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v108 = *(v109 - 8);
  v5 = *(v108 + 64);
  v6 = MEMORY[0x28223BE20](v109);
  v106 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v107 = &v104 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v104 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v105 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v104 - v18;
  UnknownStorage.init()();
  v20 = *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v20) = static Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.defaultInstance;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    _s10Foundation4DateVSgWOhTm_15(v12, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    Date.timeIntervalSinceReferenceDate.getter();
    v22 = v21;
    v23 = *(a1 + v20);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      (*(v14 + 8))(v19, v13);
      v24 = *(a1 + v20);
    }

    else
    {
      v25 = *(a1 + v20);
      v26 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();

      v24 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v29);
      (*(v14 + 8))(v19, v13);

      *(a1 + v20) = v24;
    }

    swift_beginAccess();
    *(v24 + 16) = v22;
    *(v24 + 24) = 0;
  }

  v30 = v107;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v31 = v115;
  if (v115)
  {
    FIUIWorkoutActivityType.protobuf.getter(v30);
    v32 = *(a1 + v20);
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v33 = *(a1 + v20);
    }

    else
    {
      v34 = *(a1 + v20);
      v35 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
      v36 = *(v35 + 48);
      v37 = *(v35 + 52);
      swift_allocObject();

      v33 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v38);

      *(a1 + v20) = v33;
    }

    v39 = v30;
    v40 = v110;
    outlined init with take of Apple_Workout_Core_Activity(v39, v110);
    (*(v108 + 56))(v40, 0, 1, v109);
    v41 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__currentActivity;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_Activity?(v40, v33 + v41);
    swift_endAccess();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v42 = v115;
  v43 = *(a1 + v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *(a1 + v20);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v46 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    v45 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v45);
    *(a1 + v20) = v45;
  }

  v49 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegTime;
  swift_beginAccess();
  *(v45 + v49) = v42;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v50 = v114;
  v51 = *(a1 + v20);
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *(a1 + v20);
  if ((v52 & 1) == 0)
  {
    v54 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    v55 = *(v54 + 48);
    v56 = *(v54 + 52);
    swift_allocObject();
    v53 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v53);
    *(a1 + v20) = v53;
  }

  v57 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegDistance;
  swift_beginAccess();
  *(v53 + v57) = v50;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v58 = v113;
  v59 = *(a1 + v20);
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *(a1 + v20);
  if ((v60 & 1) == 0)
  {
    v62 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    v63 = *(v62 + 48);
    v64 = *(v62 + 52);
    swift_allocObject();
    v61 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v61);
    *(a1 + v20) = v61;
  }

  v65 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegAveragePace;
  swift_beginAccess();
  *(v61 + v65) = v58;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v66 = v112;
  v67 = *(a1 + v20);
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *(a1 + v20);
  if ((v68 & 1) == 0)
  {
    v70 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    v71 = *(v70 + 48);
    v72 = *(v70 + 52);
    swift_allocObject();
    v69 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v69);
    *(a1 + v20) = v69;
  }

  v73 = v69 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__transitionState;
  swift_beginAccess();
  *v73 = v66;
  *(v73 + 8) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v75 = v112;
  if (v112 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v112 > 0x7FFFFFFF)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v76 = *(a1 + v20);
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *(a1 + v20);
  if ((v77 & 1) == 0)
  {
    v79 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    v80 = *(v79 + 48);
    v81 = *(v79 + 52);
    swift_allocObject();
    v78 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v78);
    *(a1 + v20) = v78;
  }

  v82 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__remainingLegCount;
  swift_beginAccess();
  *(v78 + v82) = v75;
  swift_getKeyPath();
  swift_getKeyPath();
  v83 = v105;
  static Published.subscript.getter();

  Date.timeIntervalSinceReferenceDate.getter();
  v85 = v84;
  (*(v14 + 8))(v83, v13);
  v86 = *(a1 + v20);
  v87 = swift_isUniquelyReferenced_nonNull_native();
  v88 = *(a1 + v20);
  if ((v87 & 1) == 0)
  {
    v89 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
    v90 = *(v89 + 48);
    v91 = *(v89 + 52);
    swift_allocObject();
    v88 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v88);
    *(a1 + v20) = v88;
  }

  v92 = v106;
  v93 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastEffectiveTransitionDateSinceReference;
  swift_beginAccess();
  *(v88 + v93) = v85;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v94 = v111;
  if (v111)
  {
    FIUIWorkoutActivityType.protobuf.getter(v92);
    v95 = *(a1 + v20);
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v96 = *(a1 + v20);
    }

    else
    {
      v97 = *(a1 + v20);
      v98 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
      v99 = *(v98 + 48);
      v100 = *(v98 + 52);
      swift_allocObject();

      v96 = Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.init(copying:)(v101);

      *(a1 + v20) = v96;
    }

    v102 = v110;
    outlined init with take of Apple_Workout_Core_Activity(v92, v110);
    (*(v108 + 56))(v102, 0, 1, v109);
    v103 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__nextMultisportActivity;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_Activity?(v102, v96 + v103);
    return swift_endAccess();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher)
  {
    type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher);
  }

  return result;
}

uint64_t Apple_Workout_Core_MultiSportMetricsPublisher.decodeInto(publisher:)()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v73 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v74 = &v67 - v7;
  v8 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v77 = *(v8 - 8);
  v9 = *(v77 + 8);
  v10 = MEMORY[0x28223BE20](v8);
  v70 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v68 = &v67 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v69 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v72 = &v67 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v67 = &v67 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v67 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v67 - v28;
  v30 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20));
  swift_beginAccess();
  if (*(v30 + 24))
  {
    v31 = 1;
  }

  else
  {
    v32 = *(v30 + 16);
    Date.init(timeIntervalSinceReferenceDate:)();
    v31 = 0;
  }

  v75 = v3;
  v33 = *(v3 + 56);
  v76 = v2;
  v33(v29, v31, 1, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  _s10Foundation4DateVSgWOcTm_10(v29, v27, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  static Published.subscript.setter();
  _s10Foundation4DateVSgWOhTm_15(v29, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v34 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__currentActivity;
  swift_beginAccess();
  _s10Foundation4DateVSgWOcTm_10(v30 + v34, v22, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v35 = *(v77 + 6);
  v36 = v35(v22, 1, v8);
  _s10Foundation4DateVSgWOhTm_15(v22, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v77 = v35;
  v71 = v8;
  if (v36 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v85 = 0;

    static Published.subscript.setter();
    v37 = v76;
  }

  else
  {
    v38 = v67;
    _s10Foundation4DateVSgWOcTm_10(v30 + v34, v67, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    if (v35(v38, 1, v8) == 1)
    {
      v39 = v68;
      *(v68 + 8) = 0;
      *v39 = 0;
      v39[2] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v40 = v39 + *(v8 + 36);
      UnknownStorage.init()();
      v41 = v35(v38, 1, v8);
      v37 = v76;
      if (v41 != 1)
      {
        _s10Foundation4DateVSgWOhTm_15(v38, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
      }
    }

    else
    {
      v39 = v68;
      outlined init with take of Apple_Workout_Core_Activity(v38, v68);
      v37 = v76;
    }

    v42 = Apple_Workout_Core_Activity.decoded.getter();
    outlined destroy of Apple_Workout_Core_MultiSportMetricsPublisher(v39, type metadata accessor for Apple_Workout_Core_Activity);
    swift_getKeyPath();
    swift_getKeyPath();
    v85 = v42;

    static Published.subscript.setter();
  }

  v43 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegTime;
  swift_beginAccess();
  v44 = *(v30 + v43);
  swift_getKeyPath();
  swift_getKeyPath();
  v84 = v44;

  static Published.subscript.setter();
  v45 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegDistance;
  swift_beginAccess();
  v46 = *(v30 + v45);
  swift_getKeyPath();
  swift_getKeyPath();
  v83 = v46;

  static Published.subscript.setter();
  v47 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegAveragePace;
  swift_beginAccess();
  v48 = *(v30 + v47);
  swift_getKeyPath();
  swift_getKeyPath();
  v82 = v48;

  static Published.subscript.setter();
  v49 = v30 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__transitionState;
  swift_beginAccess();
  v50 = *(v49 + 8);
  v80[3] = *v49;
  v81 = v50;
  Apple_Workout_Core_MultisportTransitionState.decoded.getter(v80);
  v51 = v80[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v79 = v51;

  static Published.subscript.setter();
  v52 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__remainingLegCount;
  swift_beginAccess();
  v53 = *(v30 + v52);
  swift_getKeyPath();
  swift_getKeyPath();
  v80[0] = v53;

  static Published.subscript.setter();
  v54 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastEffectiveTransitionDateSinceReference;
  swift_beginAccess();
  v55 = *(v30 + v54);
  v56 = v74;
  Date.init(timeIntervalSinceReferenceDate:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v57 = v75;
  (*(v75 + 16))(v73, v56, v37);

  static Published.subscript.setter();
  (*(v57 + 8))(v56, v37);
  v58 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__nextMultisportActivity;
  swift_beginAccess();
  v59 = v72;
  _s10Foundation4DateVSgWOcTm_10(v30 + v58, v72, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v60 = v71;
  v61 = v77;
  LODWORD(v57) = v77(v59, 1, v71);
  _s10Foundation4DateVSgWOhTm_15(v59, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  if (v57 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v78 = 0;
  }

  else
  {
    v62 = v69;
    _s10Foundation4DateVSgWOcTm_10(v30 + v58, v69, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    if (v61(v62, 1, v60) == 1)
    {
      v63 = v70;
      *(v70 + 8) = 0;
      *v63 = 0;
      v63[2] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v64 = v63 + *(v60 + 36);
      UnknownStorage.init()();
      if (v61(v62, 1, v60) != 1)
      {
        _s10Foundation4DateVSgWOhTm_15(v62, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
      }
    }

    else
    {
      v63 = v70;
      outlined init with take of Apple_Workout_Core_Activity(v62, v70);
    }

    v65 = Apple_Workout_Core_Activity.decoded.getter();
    outlined destroy of Apple_Workout_Core_MultiSportMetricsPublisher(v63, type metadata accessor for Apple_Workout_Core_Activity);
    swift_getKeyPath();
    swift_getKeyPath();
    v78 = v65;
  }

  return static Published.subscript.setter();
}

uint64_t MultisportMetricsPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized static MultisportMetricsPublisher.decodeProto(serializedData:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

uint64_t protocol witness for ProDatable.wireData() in conformance MultisportMetricsPublisher()
{
  v1 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  MultisportMetricsPublisher.protobuf.getter(v4);
  lazy protocol witness table accessor for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher();
  v6 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_MultiSportMetricsPublisher(v4, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
  return v6;
}

uint64_t protocol witness for static ProDatable.decodeProto(serializedData:) in conformance MultisportMetricsPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized static MultisportMetricsPublisher.decodeProto(serializedData:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t protocol witness for ProDatable.init(serializedData:) in conformance MultisportMetricsPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = specialized static MultisportMetricsPublisher.decodeProto(serializedData:)(a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t specialized static MultisportMetricsPublisher.decodeProto(serializedData:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for BinaryDecodingOptions();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MultisportMetricsPublisher();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  MultisportMetricsPublisher.init()();
  v18 = a1;
  v19 = a2;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher();
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v2)
  {
  }

  else
  {
    Apple_Workout_Core_MultiSportMetricsPublisher.decodeInto(publisher:)();
    outlined destroy of Apple_Workout_Core_MultiSportMetricsPublisher(v10, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
  }

  return v14;
}

uint64_t type metadata accessor for MultisportMetricsPublisher()
{
  result = type metadata singleton initialization cache for MultisportMetricsPublisher;
  if (!type metadata singleton initialization cache for MultisportMetricsPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MultisportMetricsPublisher()
{
  _s7Combine9PublishedVy10Foundation4DateVSgGMaTm_0(319, &lazy cache variable for type metadata for Published<Date?>, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v1 <= 0x3F)
  {
    v13 = *(v0 - 8) + 64;
    _s7Combine9PublishedVy10Foundation4DateVSgGMaTm_0(319, &lazy cache variable for type metadata for Published<FIUIWorkoutActivityType?>, &_sSo23FIUIWorkoutActivityTypeCSgMd, &_sSo23FIUIWorkoutActivityTypeCSgMR);
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8) + 64;
      _s7Combine9PublishedVySdGMaTm_0(319, &lazy cache variable for type metadata for Published<Double>);
      if (v6 <= 0x3F)
      {
        v14 = *(v5 - 8) + 64;
        _s7Combine9PublishedVySdGMaTm_0(319, &lazy cache variable for type metadata for Published<MultisportTransitionState>);
        if (v8 <= 0x3F)
        {
          v15 = *(v7 - 8) + 64;
          _s7Combine9PublishedVySdGMaTm_0(319, &lazy cache variable for type metadata for Published<Int>);
          if (v10 <= 0x3F)
          {
            v16 = *(v9 - 8) + 64;
            type metadata accessor for Published<Date>();
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

void _s7Combine9PublishedVy10Foundation4DateVSgGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
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

void _s7Combine9PublishedVySdGMaTm_0(uint64_t a1, unint64_t *a2)
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

uint64_t _s10Foundation4DateVSgWOcTm_10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10Foundation4DateVSgWOhTm_15(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of Apple_Workout_Core_MultiSportMetricsPublisher(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = dispatch thunk of Collection.count.getter();
  if (!v26)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v48 = v26;
  v52 = ContiguousArray.init()();
  v39 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v48);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = dispatch thunk of Collection.subscript.read();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t WeakCollection.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WeakCollection.WeakObject();
  result = Array.init()();
  *a1 = result;
  return result;
}

uint64_t WeakCollection.WeakObject.description.getter()
{
  v1 = *v0;
  swift_unknownObjectWeakLoadStrong();
  v2 = *(v1 + 80);
  type metadata accessor for Optional();
  swift_getWitnessTable();
  v3 = specialized String.init<A>(describing:)();
  v5 = v4;
  swift_unknownObjectRelease();
  MEMORY[0x20F2E6D80](v3, v5);

  MEMORY[0x20F2E6D80](62, 0xE100000000000000);
  return 0x203A646C65483CLL;
}

uint64_t WeakCollection.WeakObject.__deallocating_deinit()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t WeakCollection.wrappedValue.getter(uint64_t a1)
{
  v5 = *v1;
  v4 = *(a1 + 16);
  type metadata accessor for WeakCollection.WeakObject();
  type metadata accessor for Array();

  swift_getWitnessTable();
  v2 = Sequence.compactMap<A>(_:)();

  return v2;
}

uint64_t key path setter for WeakCollection.wrappedValue : <A>WeakCollection<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = *a1;
  v6 = type metadata accessor for WeakCollection();

  return WeakCollection.wrappedValue.setter(v7, v6);
}

uint64_t WeakCollection.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v11[5] = a1;
  v11[2] = *(a2 + 16);
  v4 = type metadata accessor for Array();
  v5 = type metadata accessor for WeakCollection.WeakObject();
  WitnessTable = swift_getWitnessTable();
  v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in WeakCollection.wrappedValue.setter, v11, v4, v5, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);

  v9 = *v3;

  *v3 = v8;
  return result;
}

uint64_t partial apply for closure #1 in WeakCollection.wrappedValue.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t partial apply for closure #1 in WeakCollection.wrappedValue.setter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  type metadata accessor for WeakCollection.WeakObject();
  result = specialized WeakCollection.WeakObject.__allocating_init(_:)();
  *a2 = result;
  return result;
}

uint64_t (*WeakCollection.wrappedValue.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[1] = a2;
  a1[2] = v2;
  v4 = *v2;
  *a1 = WeakCollection.wrappedValue.getter(a2);
  return WeakCollection.wrappedValue.modify;
}

uint64_t WeakCollection.wrappedValue.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if ((a2 & 1) == 0)
  {
    return WeakCollection.wrappedValue.setter(*a1, v2);
  }

  v5 = *a1;

  WeakCollection.wrappedValue.setter(v6, v2);
}

uint64_t type metadata instantiation function for WeakCollection()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for WeakCollection(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for WeakCollection(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized WeakCollection.WeakObject.__allocating_init(_:)()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  return v0;
}

Swift::Int RaceError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RaceError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RaceError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for RaceError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RaceError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t closure #2 in closure #1 in MultiModalityWidgetDataProvider.saveModalities(modalities:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11WorkoutCore31MultiModalityWidgetDataProvider_savedModalities);
  *(a1 + OBJC_IVAR____TtC11WorkoutCore31MultiModalityWidgetDataProvider_savedModalities) = a2;

  type metadata accessor for WidgetCenter();
  static WidgetCenter.shared.getter();
  dispatch thunk of WidgetCenter.reloadTimelines(ofKind:)();
}

id MultiModalityWidgetDataProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiModalityWidgetDataProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for ActivityPickerListStoreError(uint64_t a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ActivityPickerListStoreError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

uint64_t getEnumTag for ActivityPickerListStoreError(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for ActivityPickerListStoreError(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

id LocationRequestManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t LocationRequestManager.requestLocationAuthorization(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v2[OBJC_IVAR___NLLocationRequestManager_queue];
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = partial apply for closure #1 in LocationRequestManager.requestLocationAuthorization(completion:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_6_9;
  v15 = _Block_copy(aBlock);
  v16 = v2;

  static DispatchQoS.unspecified.getter();
  v20 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_7(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_6(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v19);
}

void closure #1 in LocationRequestManager.requestLocationAuthorization(completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + OBJC_IVAR___NLLocationRequestManager_locationManager);
  if (v16)
  {
    v41 = v16;
    v17 = [v41 _authorizationStatus];
    if (v17)
    {
      v18 = v17;
      v39 = v12;
      if (one-time initialization token for location != -1)
      {
        swift_once();
      }

      v40 = v7;
      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static WOLog.location);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 67109120;
        *(v22 + 4) = v18;
        _os_log_impl(&dword_20AEA4000, v20, v21, "[LocationRequestManager] Known authorization status %d, not requesting authorization", v22, 8u);
        MEMORY[0x20F2E9420](v22, -1, -1);
      }

      type metadata accessor for OS_dispatch_queue();
      v23 = static OS_dispatch_queue.main.getter();
      v24 = swift_allocObject();
      *(v24 + 16) = a2;
      *(v24 + 24) = a3;
      *(v24 + 32) = v18;
      aBlock[4] = partial apply for closure #1 in closure #1 in LocationRequestManager.requestLocationAuthorization(completion:);
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_29_1;
      v25 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_7(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_6(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x20F2E7580](0, v15, v10, v25);

      _Block_release(v25);
      (*(v40 + 8))(v10, v6);
      (*(v39 + 8))(v15, v11);
    }

    else
    {
      if (one-time initialization token for location != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static WOLog.location);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_20AEA4000, v27, v28, "[LocationRequestManager] Requesting location authorization", v29, 2u);
        MEMORY[0x20F2E9420](v29, -1, -1);
      }

      v30 = swift_allocObject();
      *(v30 + 16) = a2;
      *(v30 + 24) = a3;
      v31 = OBJC_IVAR___NLLocationRequestManager_authorizationCompletionBlocks;
      swift_beginAccess();
      v32 = *(a1 + v31);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + v31) = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32[2] + 1, 1, v32);
        *(a1 + v31) = v32;
      }

      v35 = v32[2];
      v34 = v32[3];
      if (v35 >= v34 >> 1)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v32);
      }

      v32[2] = v35 + 1;
      v36 = &v32[2 * v35];
      v36[4] = partial apply for thunk for @escaping @callee_guaranteed (@unowned CLAuthorizationStatus) -> ();
      v36[5] = v30;
      *(a1 + v31) = v32;
      swift_endAccess();
      v37 = v41;
      [v41 requestWhenInUseAuthorization];
    }
  }
}

uint64_t closure #1 in LocationRequestManager.locationManagerDidChangeAuthorization(_:)(uint64_t result, int a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = (result + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = a2;

      v6(&v7);

      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return result;
}

id LocationRequestManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationRequestManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned CLAuthorizationStatus) -> ()(unsigned int *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t Zone.init(displaySpan:configuration:)(uint64_t result, uint64_t a2, double a3, double a4)
{
  v5 = floor(a3);
  v6 = floor(a4);
  if (v5 > v6)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v5;
    *(v4 + 24) = v6;
    *(v4 + 32) = result;
    *(v4 + 40) = a2;
    return v4;
  }

  return result;
}

uint64_t Zone.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore4ZoneC10CodingKeys33_C328D858C6B7F9502CA3C3B0A832B375LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore4ZoneC10CodingKeys33_C328D858C6B7F9502CA3C3B0A832B375LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Zone.CodingKeys and conformance Zone.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for Zone();
    swift_deallocPartialClassInstance();
    goto LABEL_5;
  }

  LOBYTE(v17) = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  LOBYTE(v17) = 4;
  result = KeyedDecodingContainer.decode(_:forKey:)();
  if (v11 <= v13)
  {
    *(v1 + 16) = v11;
    *(v1 + 24) = v13;
    LOBYTE(v17) = 1;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v17) = 2;
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v8, v4);
    *(v1 + 32) = v14;
    *(v1 + 40) = v15;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1Tm_22(a1);
    return v1;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type Zone.CodingKeys and conformance Zone.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Zone.CodingKeys and conformance Zone.CodingKeys;
  if (!lazy protocol witness table cache variable for type Zone.CodingKeys and conformance Zone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Zone.CodingKeys and conformance Zone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Zone.CodingKeys and conformance Zone.CodingKeys;
  if (!lazy protocol witness table cache variable for type Zone.CodingKeys and conformance Zone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Zone.CodingKeys and conformance Zone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Zone.CodingKeys and conformance Zone.CodingKeys;
  if (!lazy protocol witness table cache variable for type Zone.CodingKeys and conformance Zone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Zone.CodingKeys and conformance Zone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Zone.CodingKeys and conformance Zone.CodingKeys;
  if (!lazy protocol witness table cache variable for type Zone.CodingKeys and conformance Zone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Zone.CodingKeys and conformance Zone.CodingKeys);
  }

  return result;
}

uint64_t Zone.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore4ZoneC10CodingKeys33_C328D858C6B7F9502CA3C3B0A832B375LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore4ZoneC10CodingKeys33_C328D858C6B7F9502CA3C3B0A832B375LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Zone.CodingKeys and conformance Zone.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[3];
  v16 = v3[2];
  v17 = v11;
  v15[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySdGMd, &_sSnySdGMR);
  _sSnySdGSnyxGSesSeRzrlWlTm_0(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v16) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v16) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = v3[4];
    LOBYTE(v16) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = v3[5];
    LOBYTE(v16) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t _sSnySdGSnyxGSesSeRzrlWlTm_0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySdGMd, &_sSnySdGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void Zone.logicalSpan.getter()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v2 = 0.0;
  }

  v3 = *(v0 + 40);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  if (v1 == v5)
  {
    v6 = INFINITY;
  }

  else
  {
    v6 = *(v0 + 24);
  }

  if (v2 > v6)
  {
    goto LABEL_11;
  }
}

uint64_t Zone.displayLowerBound.getter()
{
  if (*(v0 + 32))
  {
    return floor(*(v0 + 16));
  }

  else
  {
    return 0;
  }
}

uint64_t Zone.displayUpperBound.getter()
{
  v1 = *(v0 + 32);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else if (v3 == *(v0 + 40))
  {
    *&result = 0.0;
  }

  else
  {
    *&result = floor(*(v0 + 24)) + -1.0;
  }

  return result;
}

double Zone.displayMiddle.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) - v1;
  v3 = v2 * 0.5;
  v4 = v2 <= 0.0;
  v5 = 0.0;
  if (!v4)
  {
    v5 = v3;
  }

  return v1 + v5;
}

uint64_t Zone.isEqual(to:)(uint64_t a1)
{
  outlined init with copy of Any(a1, v6);
  type metadata accessor for Zone();
  result = swift_dynamicCast();
  if (result)
  {
    if (*(v1 + 16) == *(v5 + 16) && *(v1 + 24) == *(v5 + 24) && *(v1 + 32) == *(v5 + 32))
    {
      v3 = *(v1 + 40);
      v4 = *(v5 + 40);

      return v3 == v4;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t ZoneViewType.description.getter()
{
  if (*v0)
  {
    result = 0x6E6F5A7265776F70;
  }

  else
  {
    result = 0x7461527472616568;
  }

  *v0;
  return result;
}

WorkoutCore::ZoneViewType_optional __swiftcall ZoneViewType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ZoneViewType.init(rawValue:), v3);

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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ZoneViewType(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6E6F5A7265776F70;
  }

  else
  {
    v4 = 0x7461527472616568;
  }

  if (v3)
  {
    v5 = 0xED0000656E6F5A65;
  }

  else
  {
    v5 = 0xE900000000000065;
  }

  if (*a2)
  {
    v6 = 0x6E6F5A7265776F70;
  }

  else
  {
    v6 = 0x7461527472616568;
  }

  if (*a2)
  {
    v7 = 0xE900000000000065;
  }

  else
  {
    v7 = 0xED0000656E6F5A65;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ZoneViewType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ZoneViewType()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ZoneViewType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ZoneViewType@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ZoneViewType.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance ZoneViewType(uint64_t *a1@<X8>)
{
  v2 = 0x7461527472616568;
  if (*v1)
  {
    v2 = 0x6E6F5A7265776F70;
  }

  v3 = 0xED0000656E6F5A65;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ZoneViewType()
{
  if (*v0)
  {
    result = 0x6E6F5A7265776F70;
  }

  else
  {
    result = 0x7461527472616568;
  }

  *v0;
  return result;
}

double Zone.displaySpan.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t Zone.configuration.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Zone.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Zone.CodingKeys()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Zone.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Zone.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Zone.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Zone.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB000000006E6170;
  v4 = 0x5379616C70736964;
  v5 = 0x800000020B455020;
  v6 = 0x800000020B455040;
  if (v2 != 3)
  {
    v6 = 0x800000020B455060;
  }

  if (v2 == 2)
  {
    v7 = 0xD000000000000012;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x800000020B455000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance Zone.CodingKeys()
{
  v1 = 0x5379616C70736964;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance Zone.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized Zone.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Zone.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Zone.CodingKeys and conformance Zone.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Zone.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Zone.CodingKeys and conformance Zone.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Zone.__allocating_init(displaySpan:configuration:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  result = swift_allocObject();
  v9 = floor(a3);
  v10 = floor(a4);
  if (v9 > v10)
  {
    __break(1u);
  }

  else
  {
    *(result + 16) = v9;
    *(result + 24) = v10;
    *(result + 32) = a1;
    *(result + 40) = a2;
  }

  return result;
}

uint64_t Zone.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  Zone.init(from:)(a1);
  return v2;
}

double protocol witness for ZoneProtocol.displaySpan.getter in conformance Zone()
{
  result = *(*v0 + 16);
  v2 = *(*v0 + 24);
  return result;
}

uint64_t protocol witness for ZoneProtocol.configuration.getter in conformance Zone()
{
  result = *(*v0 + 32);
  v2 = *(*v0 + 40);
  return result;
}

uint64_t protocol witness for ZoneProtocol.displayLowerBound.getter in conformance Zone()
{
  if (*(*v0 + 32))
  {
    return floor(*(*v0 + 16));
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for ZoneProtocol.displayUpperBound.getter in conformance Zone()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else if (v4 == *(v1 + 40))
  {
    *&result = 0.0;
  }

  else
  {
    *&result = floor(*(v1 + 24)) + -1.0;
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance Zone@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 136))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t Zone.hash(into:)()
{
  specialized Range<>.hash(into:)(*(v0 + 16), *(v0 + 24));
  MEMORY[0x20F2E7FF0](*(v0 + 32));
  return MEMORY[0x20F2E7FF0](*(v0 + 40));
}

uint64_t static Zone.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v6[3] = type metadata accessor for Zone();
  v6[0] = a2;
  v4 = *(*a1 + 152);

  LOBYTE(a2) = v4(v6);
  __swift_destroy_boxed_opaque_existential_1Tm_22(v6);
  return a2 & 1;
}

Swift::Int Zone.hashValue.getter()
{
  Hasher.init(_seed:)();
  specialized Range<>.hash(into:)(*(v0 + 16), *(v0 + 24));
  MEMORY[0x20F2E7FF0](*(v0 + 32));
  MEMORY[0x20F2E7FF0](*(v0 + 40));
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Zone(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v6[3] = type metadata accessor for Zone();
  v6[0] = v3;
  v4 = *(*v2 + 152);

  LOBYTE(v3) = v4(v6);
  __swift_destroy_boxed_opaque_existential_1Tm_22(v6);
  return v3 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Zone()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Range<>.hash(into:)(*(v1 + 16), *(v1 + 24));
  MEMORY[0x20F2E7FF0](*(v1 + 32));
  MEMORY[0x20F2E7FF0](*(v1 + 40));
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Zone()
{
  v1 = *v0;
  specialized Range<>.hash(into:)(*(*v0 + 16), *(*v0 + 24));
  MEMORY[0x20F2E7FF0](*(v1 + 32));
  return MEMORY[0x20F2E7FF0](*(v1 + 40));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Zone()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  specialized Range<>.hash(into:)(*(*v0 + 16), *(*v0 + 24));
  MEMORY[0x20F2E7FF0](*(v1 + 32));
  MEMORY[0x20F2E7FF0](*(v1 + 40));
  return Hasher._finalize()();
}

uint64_t Zone.description.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(27);
  v2 = _typeName(_:qualified:)();

  MEMORY[0x20F2E6D80](0x79616C7073696420, 0xEE00203A6E617053);
  v8 = v0[3];
  v9 = v0[2];
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x20F2E6D80](3943982, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x20F2E6D80](0, 0xE000000000000000);

  MEMORY[0x20F2E6D80](10272, 0xE200000000000000);
  v6 = v0[4];
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v3);

  MEMORY[0x20F2E6D80](8236, 0xE200000000000000);
  v7 = v0[5];
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v4);

  MEMORY[0x20F2E6D80](41, 0xE100000000000000);
  return v2;
}

unint64_t lazy protocol witness table accessor for type ZoneViewType and conformance ZoneViewType()
{
  result = lazy protocol witness table cache variable for type ZoneViewType and conformance ZoneViewType;
  if (!lazy protocol witness table cache variable for type ZoneViewType and conformance ZoneViewType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ZoneViewType and conformance ZoneViewType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Zone and conformance Zone()
{
  result = lazy protocol witness table cache variable for type Zone and conformance Zone;
  if (!lazy protocol witness table cache variable for type Zone and conformance Zone)
  {
    type metadata accessor for Zone();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Zone and conformance Zone);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ZoneViewType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ZoneViewType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Zone.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Zone.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t specialized Zone.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Zone.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t WOTargetZoneType.zoneType.getter@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 8)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a2 = 0x605040302010007uLL >> (8 * result);
  }

  return result;
}

uint64_t ActivitySummaryMetricsPublisher.activitySummary.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t ActivitySummaryMetricsPublisher.isWheelchairUser.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t ActivitySummaryMetricsPublisher.activitySummary.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t ActivitySummaryMetricsPublisher.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  closure #1 in variable initialization expression of ActivitySummaryMetricsPublisher._activitySummary();
  type metadata accessor for HKActivitySummary();
  Published.init(initialValue:)();
  Published.init(initialValue:)();
  return v3;
}

uint64_t ActivitySummaryMetricsPublisher.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17HKActivitySummaryCGMd, &_s7Combine9PublishedVySo17HKActivitySummaryCGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14[-v9];
  v11 = OBJC_IVAR____TtC11WorkoutCore31ActivitySummaryMetricsPublisher__activitySummary;
  v15 = closure #1 in variable initialization expression of ActivitySummaryMetricsPublisher._activitySummary();
  type metadata accessor for HKActivitySummary();
  Published.init(initialValue:)();
  (*(v7 + 32))(v0 + v11, v10, v6);
  v12 = OBJC_IVAR____TtC11WorkoutCore31ActivitySummaryMetricsPublisher__isWheelchairUser;
  v14[7] = 0;
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v12, v5, v1);
  return v0;
}

uint64_t (*ActivitySummaryMetricsPublisher.activitySummary.modify(uint64_t *a1))()
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
  return ActivitySummaryMetricsPublisher.activitySummary.modify;
}

id closure #1 in variable initialization expression of ActivitySummaryMetricsPublisher._activitySummary()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCCFB0]) init];
  v1 = objc_opt_self();
  v2 = [v1 minuteUnit];
  v3 = objc_opt_self();
  v4 = [v3 quantityWithUnit:v2 doubleValue:2.22044605e-16];

  [v0 setExerciseTimeGoal_];
  v5 = [v1 countUnit];
  v6 = [v3 quantityWithUnit:v5 doubleValue:2.22044605e-16];

  [v0 setStandHoursGoal_];
  return v0;
}

uint64_t key path setter for ActivitySummaryMetricsPublisher.$activitySummary : ActivitySummaryMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17HKActivitySummaryC_GMd, &_s7Combine9PublishedV9PublisherVySo17HKActivitySummaryC_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17HKActivitySummaryCGMd, &_s7Combine9PublishedVySo17HKActivitySummaryCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t ActivitySummaryMetricsPublisher.$activitySummary.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17HKActivitySummaryC_GMd, &_s7Combine9PublishedV9PublisherVySo17HKActivitySummaryC_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17HKActivitySummaryCGMd, &_s7Combine9PublishedVySo17HKActivitySummaryCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ActivitySummaryMetricsPublisher.$activitySummary.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17HKActivitySummaryC_GMd, &_s7Combine9PublishedV9PublisherVySo17HKActivitySummaryC_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore31ActivitySummaryMetricsPublisher__activitySummary;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17HKActivitySummaryCGMd, &_s7Combine9PublishedVySo17HKActivitySummaryCGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return ActivitySummaryMetricsPublisher.$activitySummary.modify;
}

uint64_t ActivitySummaryMetricsPublisher.isWheelchairUser.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

unint64_t type metadata accessor for HKActivitySummary()
{
  result = lazy cache variable for type metadata for HKActivitySummary;
  if (!lazy cache variable for type metadata for HKActivitySummary)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for HKActivitySummary);
  }

  return result;
}

uint64_t (*ActivitySummaryMetricsPublisher.isWheelchairUser.modify(uint64_t *a1))()
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
  return ActivitySummaryMetricsPublisher.isWheelchairUser.modify;
}

void ActivitySummaryMetricsPublisher.activitySummary.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t ActivitySummaryMetricsPublisher.$activitySummary.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for ActivitySummaryMetricsPublisher.$activitySummary : ActivitySummaryMetricsPublisher(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for ActivitySummaryMetricsPublisher.$isWheelchairUser : ActivitySummaryMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t ActivitySummaryMetricsPublisher.$isWheelchairUser.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ActivitySummaryMetricsPublisher.$isWheelchairUser.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore31ActivitySummaryMetricsPublisher__isWheelchairUser;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return ActivitySummaryMetricsPublisher.$isWheelchairUser.modify;
}

void ActivitySummaryMetricsPublisher.$activitySummary.modify(uint64_t a1, char a2)
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

uint64_t ActivitySummaryMetricsPublisher.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore31ActivitySummaryMetricsPublisher__activitySummary;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17HKActivitySummaryCGMd, &_s7Combine9PublishedVySo17HKActivitySummaryCGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore31ActivitySummaryMetricsPublisher__isWheelchairUser;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t ActivitySummaryMetricsPublisher.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore31ActivitySummaryMetricsPublisher__activitySummary;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17HKActivitySummaryCGMd, &_s7Combine9PublishedVySo17HKActivitySummaryCGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore31ActivitySummaryMetricsPublisher__isWheelchairUser;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance ActivitySummaryMetricsPublisher@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t ActivitySummaryMetricsPublisher.protobuf.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *a1 = 0;
  v7 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  v8 = &a1[*(v7 + 20)];
  UnknownStorage.init()();
  v9 = *(v7 + 24);
  v10 = *(v3 + 56);
  v10(&a1[v9], 1, 1, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = v14;
  HKActivitySummary.protobuf.getter(v6);

  _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgWOhTm_0(&a1[v9], &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v6, &a1[v9], type metadata accessor for Apple_Workout_Core_HKActivitySummary);
  v10(&a1[v9], 0, 1, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v13[7];
  return result;
}

id HKActivitySummary.protobuf.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v186 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v194 = *(v7 - 8);
  v8 = *(v194 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v186 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v189 = (&v186 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v191 = (&v186 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v187 = &v186 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v190 = (&v186 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = (&v186 - v21);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = (&v186 - v24);
  MEMORY[0x28223BE20](v23);
  v27 = (&v186 - v26);
  UnknownStorage.init()();
  v28 = *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v28) = static Apple_Workout_Core_HKActivitySummary._StorageClass.defaultInstance;

  v195 = v1;
  v29 = [v1 activityMoveMode] == 2;
  v30 = *(a1 + v28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *(a1 + v28);
  v192 = v7;
  v188 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v33 = type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    v32 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v32);
    *(a1 + v28) = v32;
  }

  swift_beginAccess();
  *(v32 + 16) = v29;
  *(v32 + 24) = 1;
  v36 = [v195 activeEnergyBurned];
  v37 = v27 + *(v192 + 24);
  UnknownStorage.init()();
  v38 = [v36 _unit];
  [v36 doubleValueForUnit_];
  v40 = v39;

  *v27 = v40;
  v41 = [v36 _unit];
  v42 = [v41 unitString];

  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;

  v27[1] = v43;
  v27[2] = v45;
  v46 = *(a1 + v28);
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *(a1 + v28);
  if ((v47 & 1) == 0)
  {
    v49 = type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    swift_allocObject();
    v48 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v48);
    *(a1 + v28) = v48;
  }

  _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v27, v6, type metadata accessor for Apple_Workout_Core_HKQuantity);
  v52 = v192;
  v53 = v194 + 56;
  v193 = *(v194 + 56);
  v193(v6, 0, 1, v192);
  v54 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurned;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_HKQuantity?(v6, v48 + v54);
  swift_endAccess();
  v55 = [v195 appleMoveTime];
  v56 = v25 + *(v52 + 24);
  UnknownStorage.init()();
  v57 = [v55 _unit];
  [v55 doubleValueForUnit_];
  v59 = v58;

  *v25 = v59;
  v60 = [v55 _unit];
  v61 = [v60 unitString];

  v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v63;

  v25[1] = v62;
  v25[2] = v64;
  v65 = *(a1 + v28);
  v66 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *(a1 + v28);
  if ((v66 & 1) == 0)
  {
    v68 = type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
    v69 = *(v68 + 48);
    v70 = *(v68 + 52);
    swift_allocObject();
    v67 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v67);
    *(a1 + v28) = v67;
  }

  _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v25, v6, type metadata accessor for Apple_Workout_Core_HKQuantity);
  v71 = v192;
  v193(v6, 0, 1, v192);
  v72 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTime;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_HKQuantity?(v6, v67 + v72);
  swift_endAccess();
  v73 = [v195 appleExerciseTime];
  v74 = v22 + *(v71 + 24);
  UnknownStorage.init()();
  v75 = [v73 _unit];
  [v73 doubleValueForUnit_];
  v77 = v76;

  *v22 = v77;
  v78 = [v73 _unit];
  v79 = [v78 unitString];

  v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v82 = v81;

  v22[1] = v80;
  v22[2] = v82;
  v83 = *(a1 + v28);
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *(a1 + v28);
  if ((v84 & 1) == 0)
  {
    v86 = type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
    v87 = *(v86 + 48);
    v88 = *(v86 + 52);
    swift_allocObject();
    v85 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v85);
    *(a1 + v28) = v85;
  }

  v89 = v187;
  _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v22, v6, type metadata accessor for Apple_Workout_Core_HKQuantity);
  v194 = v53;
  v193(v6, 0, 1, v71);
  v90 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleExerciseTime;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_HKQuantity?(v6, v85 + v90);
  swift_endAccess();
  v91 = [v195 appleStandHours];
  v92 = v190;
  v93 = v190 + *(v71 + 24);
  UnknownStorage.init()();
  v94 = [v91 _unit];
  [v91 doubleValueForUnit_];
  v96 = v95;

  *v92 = v96;
  v97 = [v91 _unit];
  v98 = [v97 unitString];

  v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v101 = v100;

  v92[1] = v99;
  v92[2] = v101;
  v102 = *(a1 + v28);
  v103 = swift_isUniquelyReferenced_nonNull_native();
  v104 = *(a1 + v28);
  if ((v103 & 1) == 0)
  {
    v105 = type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
    v106 = *(v105 + 48);
    v107 = *(v105 + 52);
    swift_allocObject();
    v104 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v104);
    *(a1 + v28) = v104;
  }

  _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v190, v6, type metadata accessor for Apple_Workout_Core_HKQuantity);
  v108 = v193;
  v193(v6, 0, 1, v71);
  v109 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleStandHours;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_HKQuantity?(v6, v104 + v109);
  swift_endAccess();
  v110 = [v195 activeEnergyBurnedGoal];
  v111 = v89 + *(v71 + 24);
  UnknownStorage.init()();
  v112 = [v110 _unit];
  [v110 doubleValueForUnit_];
  v114 = v113;

  *v89 = v114;
  v115 = [v110 _unit];
  v116 = [v115 unitString];

  v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v119 = v118;

  v89[1] = v117;
  v89[2] = v119;
  v120 = *(a1 + v28);
  v121 = swift_isUniquelyReferenced_nonNull_native();
  v122 = *(a1 + v28);
  if ((v121 & 1) == 0)
  {
    v123 = type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
    v124 = *(v123 + 48);
    v125 = *(v123 + 52);
    swift_allocObject();
    v122 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v122);
    *(a1 + v28) = v122;
  }

  _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v89, v6, type metadata accessor for Apple_Workout_Core_HKQuantity);
  v108(v6, 0, 1, v71);
  v126 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurnedGoal;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_HKQuantity?(v6, v122 + v126);
  swift_endAccess();
  v127 = [v195 appleMoveTimeGoal];
  v128 = v191;
  v129 = v191 + *(v71 + 24);
  UnknownStorage.init()();
  v130 = [v127 _unit];
  [v127 doubleValueForUnit_];
  v132 = v131;

  *v128 = v132;
  v133 = [v127 _unit];
  v134 = [v133 unitString];

  v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v137 = v136;

  v128[1] = v135;
  v128[2] = v137;
  v138 = *(a1 + v28);
  v139 = swift_isUniquelyReferenced_nonNull_native();
  v140 = *(a1 + v28);
  if ((v139 & 1) == 0)
  {
    v141 = type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
    v142 = *(v141 + 48);
    v143 = *(v141 + 52);
    swift_allocObject();
    v140 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v140);
    *(a1 + v28) = v140;
  }

  v144 = v188;
  _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v191, v6, type metadata accessor for Apple_Workout_Core_HKQuantity);
  v108(v6, 0, 1, v71);
  v145 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTimeGoal;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_HKQuantity?(v6, v140 + v145);
  swift_endAccess();
  v146 = v195;
  v147 = [v195 exerciseTimeGoal];
  if (v147)
  {
    v148 = v147;
    v149 = v189;
    v150 = v189 + *(v71 + 24);
    UnknownStorage.init()();
    v151 = [v148 _unit];
    [v148 doubleValueForUnit_];
    v153 = v152;

    *v149 = v153;
    v154 = [v148 _unit];
    v155 = [v154 unitString];

    v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v158 = v157;

    v149[1] = v156;
    v149[2] = v158;
    v159 = *(a1 + v28);
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v160 = *(a1 + v28);
    }

    else
    {
      v161 = *(a1 + v28);
      v162 = type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
      v163 = *(v162 + 48);
      v164 = *(v162 + 52);
      swift_allocObject();

      v160 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v165);

      *(a1 + v28) = v160;
    }

    v108 = v193;
    _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v189, v6, type metadata accessor for Apple_Workout_Core_HKQuantity);
    v108(v6, 0, 1, v71);
    v166 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__exerciseTimeGoal;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_HKQuantity?(v6, v160 + v166);
    swift_endAccess();
    v146 = v195;
  }

  result = [v146 standHoursGoal];
  if (result)
  {
    v168 = result;
    v169 = v144 + *(v71 + 24);
    UnknownStorage.init()();
    v170 = [v168 _unit];
    [v168 doubleValueForUnit_];
    v172 = v171;

    *v144 = v172;
    v173 = [v168 _unit];
    v174 = [v173 unitString];

    v175 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v177 = v176;

    v144[1] = v175;
    v144[2] = v177;
    v178 = *(a1 + v28);
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v179 = *(a1 + v28);
    }

    else
    {
      v180 = *(a1 + v28);
      v181 = type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
      v182 = *(v181 + 48);
      v183 = *(v181 + 52);
      swift_allocObject();

      v179 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v184);

      *(a1 + v28) = v179;
    }

    _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v144, v6, type metadata accessor for Apple_Workout_Core_HKQuantity);
    v108(v6, 0, 1, v71);
    v185 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__standHoursGoal;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_HKQuantity?(v6, v179 + v185);
    return swift_endAccess();
  }

  return result;
}

uint64_t ActivitySummaryMetricsPublisher.wireData()()
{
  v0 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  v16 = v0;
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v9 = 0;
  v10 = &v9[*(v7 + 20)];
  UnknownStorage.init()();
  v11 = *(v5 + 24);
  v12 = *(v1 + 56);
  v12(&v9[v11], 1, 1, v0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13 = v18;
  HKActivitySummary.protobuf.getter(v4);

  _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgWOhTm_0(&v9[v11], &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v4, &v9[v11], type metadata accessor for Apple_Workout_Core_HKActivitySummary);
  v12(&v9[v11], 0, 1, v16);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *v9 = v17;
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher();
  v14 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher(v9, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
  return v14;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher)
  {
    type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher);
  }

  return result;
}

uint64_t Apple_Workout_Core_ActivitySummaryMetricsPublisher.decodeInto(publisher:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18[-v4];
  v6 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  outlined init with copy of Apple_Workout_Core_HKQuantity?(&v1[*(v11 + 24)], v5, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  v12 = *(v7 + 48);
  if (v12(v5, 1, v6) == 1)
  {
    UnknownStorage.init()();
    v13 = *(v6 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *&v10[v13] = static Apple_Workout_Core_HKActivitySummary._StorageClass.defaultInstance;
    v14 = v12(v5, 1, v6);

    if (v14 != 1)
    {
      _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgWOhTm_0(v5, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
    }
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v5, v10, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
  }

  v15 = Apple_Workout_Core_HKActivitySummary.decoded.getter();
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher(v10, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
  swift_getKeyPath();
  swift_getKeyPath();
  v19 = v15;

  static Published.subscript.setter();
  v16 = *v1;
  swift_getKeyPath();
  swift_getKeyPath();
  v18[7] = v16;

  return static Published.subscript.setter();
}

uint64_t ActivitySummaryMetricsPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized static ActivitySummaryMetricsPublisher.decodeProto(serializedData:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

uint64_t protocol witness for static ProDatable.decodeProto(serializedData:) in conformance ActivitySummaryMetricsPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized static ActivitySummaryMetricsPublisher.decodeProto(serializedData:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t protocol witness for ProDatable.init(serializedData:) in conformance ActivitySummaryMetricsPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = specialized static ActivitySummaryMetricsPublisher.decodeProto(serializedData:)(a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

id Apple_Workout_Core_HKActivitySummary.decoded.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v123 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v132 = &v119 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v121 = &v119 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v131 = &v119 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v130 = &v119 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v128 = &v119 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v126 = &v119 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v124 = &v119 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v119 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v119 - v22;
  v24 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v122 = (&v119 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x28223BE20](v27);
  v120 = (&v119 - v30);
  v31 = MEMORY[0x28223BE20](v29);
  v129 = &v119 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v127 = (&v119 - v34);
  v35 = MEMORY[0x28223BE20](v33);
  v125 = (&v119 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v119 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v119 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = (&v119 - v43);
  v45 = [objc_allocWithZone(MEMORY[0x277CCCFB0]) init];
  v46 = *(v0 + *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20));
  swift_beginAccess();
  v47 = *(v46 + 24);
  v137 = *(v46 + 16);
  v138 = v47;
  v48 = Apple_Workout_Core_ActivityMoveMode.decoded.getter();
  v133 = v45;
  [v45 setActivityMoveMode_];
  v49 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurned;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v46 + v49, v23, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v50 = *(v25 + 48);
  v51 = v50(v23, 1, v24);
  v135 = v50;
  if (v51 == 1)
  {
    *v44 = 0.0;
    v44[1] = 0.0;
    v44[2] = -2.68156159e154;
    v52 = v44 + *(v24 + 24);
    UnknownStorage.init()();
    if (v50(v23, 1, v24) != 1)
    {
      _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgWOhTm_0(v23, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    }
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v23, v44, type metadata accessor for Apple_Workout_Core_HKQuantity);
  }

  v53 = MEMORY[0x20F2E6C00](*(v44 + 1), *(v44 + 2));
  v134 = objc_opt_self();
  v54 = [v134 unitFromString_];

  v55 = *v44;
  v136 = objc_opt_self();
  v56 = [v136 quantityWithUnit:v54 doubleValue:v55];

  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher(v44, type metadata accessor for Apple_Workout_Core_HKQuantity);
  v57 = v133;
  [v133 setActiveEnergyBurned_];

  v58 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTime;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v46 + v58, v21, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v59 = v135;
  if (v135(v21, 1, v24) == 1)
  {
    *v42 = 0;
    *(v42 + 1) = 0;
    *(v42 + 2) = 0xE000000000000000;
    v60 = &v42[*(v24 + 24)];
    UnknownStorage.init()();
    if (v59(v21, 1, v24) != 1)
    {
      _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgWOhTm_0(v21, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    }
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v21, v42, type metadata accessor for Apple_Workout_Core_HKQuantity);
  }

  v61 = MEMORY[0x20F2E6C00](*(v42 + 1), *(v42 + 2));
  v62 = v134;
  v63 = [v134 unitFromString_];

  v64 = [v136 quantityWithUnit:v63 doubleValue:*v42];
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher(v42, type metadata accessor for Apple_Workout_Core_HKQuantity);
  [v57 setAppleMoveTime_];

  v65 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleExerciseTime;
  swift_beginAccess();
  v66 = v46 + v65;
  v67 = v124;
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v66, v124, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v68 = v135;
  if (v135(v67, 1, v24) == 1)
  {
    *v39 = 0;
    *(v39 + 1) = 0;
    *(v39 + 2) = 0xE000000000000000;
    v69 = &v39[*(v24 + 24)];
    UnknownStorage.init()();
    if (v68(v67, 1, v24) != 1)
    {
      _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgWOhTm_0(v67, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    }
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v67, v39, type metadata accessor for Apple_Workout_Core_HKQuantity);
  }

  v70 = MEMORY[0x20F2E6C00](*(v39 + 1), *(v39 + 2));
  v71 = [v62 unitFromString_];

  v72 = [v136 quantityWithUnit:v71 doubleValue:*v39];
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher(v39, type metadata accessor for Apple_Workout_Core_HKQuantity);
  [v57 setAppleExerciseTime_];

  v73 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleStandHours;
  swift_beginAccess();
  v74 = v46 + v73;
  v75 = v126;
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v74, v126, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  if (v68(v75, 1, v24) == 1)
  {
    v76 = v125;
    *v125 = 0.0;
    v76[1] = 0.0;
    v76[2] = -2.68156159e154;
    v77 = v76 + *(v24 + 24);
    UnknownStorage.init()();
    v78 = v68(v75, 1, v24);
    v79 = v129;
    if (v78 != 1)
    {
      _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgWOhTm_0(v75, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    }
  }

  else
  {
    v76 = v125;
    _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v75, v125, type metadata accessor for Apple_Workout_Core_HKQuantity);
    v79 = v129;
  }

  v80 = MEMORY[0x20F2E6C00](*(v76 + 1), *(v76 + 2));
  v81 = [v62 unitFromString_];

  v82 = [v136 quantityWithUnit:v81 doubleValue:*v76];
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher(v76, type metadata accessor for Apple_Workout_Core_HKQuantity);
  [v57 setAppleStandHours_];

  v83 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurnedGoal;
  swift_beginAccess();
  v84 = v46 + v83;
  v85 = v128;
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v84, v128, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  if (v68(v85, 1, v24) == 1)
  {
    v86 = v127;
    *v127 = 0.0;
    v86[1] = 0.0;
    v86[2] = -2.68156159e154;
    v87 = v86 + *(v24 + 24);
    UnknownStorage.init()();
    if (v68(v85, 1, v24) != 1)
    {
      _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgWOhTm_0(v85, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    }
  }

  else
  {
    v86 = v127;
    _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v85, v127, type metadata accessor for Apple_Workout_Core_HKQuantity);
  }

  v88 = MEMORY[0x20F2E6C00](*(v86 + 1), *(v86 + 2));
  v89 = [v62 unitFromString_];

  v90 = [v136 quantityWithUnit:v89 doubleValue:*v86];
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher(v86, type metadata accessor for Apple_Workout_Core_HKQuantity);
  [v57 setActiveEnergyBurnedGoal_];

  v91 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTimeGoal;
  swift_beginAccess();
  v92 = v46 + v91;
  v93 = v130;
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v92, v130, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  if (v68(v93, 1, v24) == 1)
  {
    *v79 = 0;
    *(v79 + 8) = 0;
    *(v79 + 16) = 0xE000000000000000;
    v94 = v79 + *(v24 + 24);
    UnknownStorage.init()();
    if (v68(v93, 1, v24) != 1)
    {
      _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgWOhTm_0(v93, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    }
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v93, v79, type metadata accessor for Apple_Workout_Core_HKQuantity);
  }

  v95 = MEMORY[0x20F2E6C00](*(v79 + 8), *(v79 + 16));
  v96 = [v62 unitFromString_];

  v97 = [v136 quantityWithUnit:v96 doubleValue:*v79];
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher(v79, type metadata accessor for Apple_Workout_Core_HKQuantity);
  [v57 setAppleMoveTimeGoal_];

  v98 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__exerciseTimeGoal;
  swift_beginAccess();
  v99 = v131;
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v46 + v98, v131, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v100 = v68(v99, 1, v24);
  _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgWOhTm_0(v99, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  if (v100 == 1)
  {
    [v57 setExerciseTimeGoal_];
  }

  else
  {
    v101 = v121;
    outlined init with copy of Apple_Workout_Core_HKQuantity?(v46 + v98, v121, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    if (v68(v101, 1, v24) == 1)
    {
      v102 = v120;
      *v120 = 0.0;
      v102[1] = 0.0;
      v102[2] = -2.68156159e154;
      v103 = v102 + *(v24 + 24);
      UnknownStorage.init()();
      v104 = &selRef_localizedPaceStringWithDistance_overDuration_paceFormat_unitStyle_decimalTrimmingMode_distanceType_;
      if (v68(v101, 1, v24) != 1)
      {
        _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgWOhTm_0(v101, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
      }
    }

    else
    {
      v102 = v120;
      _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v101, v120, type metadata accessor for Apple_Workout_Core_HKQuantity);
      v104 = &selRef_localizedPaceStringWithDistance_overDuration_paceFormat_unitStyle_decimalTrimmingMode_distanceType_;
    }

    v105 = MEMORY[0x20F2E6C00](*(v102 + 1), *(v102 + 2));
    v106 = [v134 v104[480]];

    v107 = [v136 quantityWithUnit:v106 doubleValue:*v102];
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher(v102, type metadata accessor for Apple_Workout_Core_HKQuantity);
    [v57 setExerciseTimeGoal_];
  }

  v108 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__standHoursGoal;
  swift_beginAccess();
  v109 = v132;
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v46 + v108, v132, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v110 = v68(v109, 1, v24);
  _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgWOhTm_0(v109, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  if (v110 == 1)
  {
    [v57 setStandHoursGoal_];
  }

  else
  {
    v111 = v123;
    outlined init with copy of Apple_Workout_Core_HKQuantity?(v46 + v108, v123, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    if (v68(v111, 1, v24) == 1)
    {
      v112 = v122;
      *v122 = 0.0;
      v112[1] = 0.0;
      v112[2] = -2.68156159e154;
      v113 = v112 + *(v24 + 24);
      UnknownStorage.init()();
      v114 = &selRef_localizedPaceStringWithDistance_overDuration_paceFormat_unitStyle_decimalTrimmingMode_distanceType_;
      if (v68(v111, 1, v24) != 1)
      {
        _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgWOhTm_0(v111, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
      }
    }

    else
    {
      v112 = v122;
      _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(v111, v122, type metadata accessor for Apple_Workout_Core_HKQuantity);
      v114 = &selRef_localizedPaceStringWithDistance_overDuration_paceFormat_unitStyle_decimalTrimmingMode_distanceType_;
    }

    v115 = MEMORY[0x20F2E6C00](*(v112 + 1), *(v112 + 2));
    v116 = [v134 v114[480]];

    v117 = [v136 quantityWithUnit:v116 doubleValue:*v112];
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher(v112, type metadata accessor for Apple_Workout_Core_HKQuantity);
    [v57 setStandHoursGoal_];
  }

  return v57;
}

uint64_t Apple_Workout_Core_ActivityMoveMode.decoded.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v1)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.core);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = v1;
      MEMORY[0x20F2E9420](v6, -1, -1);
    }

    return 1;
  }
}

uint64_t specialized static ActivitySummaryMetricsPublisher.decodeProto(serializedData:)(uint64_t a1, unint64_t a2)
{
  v27 = a1;
  v28 = a2;
  v2 = type metadata accessor for BinaryDecodingOptions();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v26 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  v5 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17HKActivitySummaryCGMd, &_s7Combine9PublishedVySo17HKActivitySummaryCGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  v18 = type metadata accessor for ActivitySummaryMetricsPublisher();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  v22 = OBJC_IVAR____TtC11WorkoutCore31ActivitySummaryMetricsPublisher__activitySummary;
  *&v30 = closure #1 in variable initialization expression of ActivitySummaryMetricsPublisher._activitySummary();
  type metadata accessor for HKActivitySummary();
  Published.init(initialValue:)();
  (*(v14 + 32))(v21 + v22, v17, v13);
  v23 = OBJC_IVAR____TtC11WorkoutCore31ActivitySummaryMetricsPublisher__isWheelchairUser;
  LOBYTE(v30) = 0;
  Published.init(initialValue:)();
  (*(v9 + 32))(v21 + v23, v12, v8);
  v33 = v27;
  v34 = v28;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  outlined copy of Data._Representation(v27, v28);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher();
  v24 = v35;
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v24)
  {
  }

  else
  {
    Apple_Workout_Core_ActivitySummaryMetricsPublisher.decodeInto(publisher:)();
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher(v7, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
  }

  return v21;
}

uint64_t type metadata accessor for ActivitySummaryMetricsPublisher()
{
  result = type metadata singleton initialization cache for ActivitySummaryMetricsPublisher;
  if (!type metadata singleton initialization cache for ActivitySummaryMetricsPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ActivitySummaryMetricsPublisher()
{
  type metadata accessor for Published<HKActivitySummary>();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for Published<Bool>();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<HKActivitySummary>()
{
  if (!lazy cache variable for type metadata for Published<HKActivitySummary>)
  {
    type metadata accessor for HKActivitySummary();
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<HKActivitySummary>);
    }
  }
}

uint64_t _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_Core_HKQuantity?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void LiveWorkoutConfiguration.saveWorkoutConfigurationMetadata(to:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  if (WorkoutConfiguration.metadata()())
  {
    oslog = Dictionary._bridgeToObjectiveC()().super.isa;

    [a1 insertOrUpdateMetadata:oslog forceTopLevel:1];
  }

  else
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.app);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9 = v7;
      *v6 = 136315138;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x800000020B46DAB0, &v9);
      _os_log_impl(&dword_20AEA4000, oslog, v5, "WorkoutConfiguration has no metadata to save during %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x20F2E9420](v7, -1, -1);
      MEMORY[0x20F2E9420](v6, -1, -1);
    }
  }
}

WorkoutCore::HeartRateCurrentValueType_optional __swiftcall HeartRateCurrentValueType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t lazy protocol witness table accessor for type HeartRateCurrentValueType and conformance HeartRateCurrentValueType()
{
  result = lazy protocol witness table cache variable for type HeartRateCurrentValueType and conformance HeartRateCurrentValueType;
  if (!lazy protocol witness table cache variable for type HeartRateCurrentValueType and conformance HeartRateCurrentValueType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateCurrentValueType and conformance HeartRateCurrentValueType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeartRateCurrentValueType and conformance HeartRateCurrentValueType;
  if (!lazy protocol witness table cache variable for type HeartRateCurrentValueType and conformance HeartRateCurrentValueType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateCurrentValueType and conformance HeartRateCurrentValueType);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HeartRateCurrentValueType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HeartRateCurrentValueType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance HeartRateCurrentValueType@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for HeartRateCurrentValueType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HeartRateCurrentValueType(uint64_t result, unsigned int a2, unsigned int a3)
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