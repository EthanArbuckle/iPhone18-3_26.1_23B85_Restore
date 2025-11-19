_BYTE *destructiveInjectEnumTag for MirroredStartError(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MirroredStart.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MirroredStart.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized MirroredStart.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F537472617473 && a2 == 0xEB00000000656372)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double one-time initialization function for zoomScaleMaxDistanceBetweenRunners()
{
  v0 = objc_opt_self();
  v1 = [v0 mileUnit];
  v2 = [objc_opt_self() quantityWithUnit:v1 doubleValue:1.0];

  v3 = [v0 meterUnit];
  [v2 doubleValueForUnit_];
  v5 = v4;

  result = v5 * 0.25;
  *&static RaceElevationChartLayout.zoomScaleMaxDistanceBetweenRunners = v5 * 0.25;
  return result;
}

double one-time initialization function for zoomScaleMinSideOffset()
{
  v0 = objc_opt_self();
  v1 = [v0 mileUnit];
  v2 = [objc_opt_self() quantityWithUnit:v1 doubleValue:1.0];

  v3 = [v0 meterUnit];
  [v2 doubleValueForUnit_];
  v5 = v4;

  result = v5 * 0.0625;
  *&static RaceElevationChartLayout.zoomScaleMinSideOffset = v5 * 0.0625;
  return result;
}

double one-time initialization function for zoomedDomain()
{
  v0 = objc_opt_self();
  v1 = [v0 mileUnit];
  v2 = [objc_opt_self() quantityWithUnit:v1 doubleValue:1.0];

  v3 = [v0 meterUnit];
  [v2 doubleValueForUnit_];
  v5 = v4;

  result = v5 * 3.0 * 0.125;
  *&static RaceElevationChartLayout.zoomedDomain = result;
  return result;
}

double static RaceElevationChartLayout.zoomScaleMaxDistanceBetweenRunners.getter(void *a1, uint64_t a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t getEnumTagSinglePayload for RaceElevationChartLayout(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RaceElevationChartLayout(_WORD *result, int a2, int a3)
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

uint64_t one-time initialization function for defaultWorkoutConfiguration()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v34 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  if (one-time initialization token for outdoorCycle != -1)
  {
    swift_once();
  }

  v11 = static FIUIWorkoutActivityType.outdoorCycle;
  v12 = objc_allocWithZone(MEMORY[0x277D0A838]);
  v38 = v11;
  v13 = [v12 initWithGoalTypeIdentifier:0 value:0];
  UUID.init()();
  v37 = specialized Occurrence.__allocating_init(count:)(0);
  v14 = v10;
  v39 = v10;
  v15 = *(v1 + 16);
  v15(v8, v14, v0);
  v16 = objc_allocWithZone(type metadata accessor for GoalWorkoutConfiguration());
  v36 = v8;
  v17 = v16;
  swift_beginAccess();
  v41 = v13;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  v18 = v13;
  v35 = v18;
  Published.init(initialValue:)();

  swift_endAccess();
  v15(v5, v8, v0);
  *&v17[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v19 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  v20 = type metadata accessor for Date();
  v21 = *(*(v20 - 8) + 56);
  v22 = v5;
  v21(&v17[v19], 1, 1, v20);
  v21(&v17[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v20);
  v23 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v24 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v24 - 8) + 56))(&v17[v23], 1, 1, v24);
  (*(v1 + 56))(&v17[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v0);
  v25 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v17[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v15(&v17[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v22, v0);
  v27 = v37;
  v26 = v38;
  *&v17[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v38;
  v17[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v17[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v27;
  swift_beginAccess();
  *&v17[v25] = 0;
  v17[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v28 = type metadata accessor for WorkoutConfiguration();
  v40.receiver = v17;
  v40.super_class = v28;
  v29 = v26;
  v30 = v27;
  v31 = objc_msgSendSuper2(&v40, sel_init);

  v32 = *(v1 + 8);
  v32(v22, v0);
  v32(v36, v0);
  result = (v32)(v39, v0);
  static MirroredHostStartConfiguration.defaultWorkoutConfiguration = v31;
  return result;
}

id static MirroredHostStartConfiguration.defaultWorkoutConfiguration.getter()
{
  if (one-time initialization token for defaultWorkoutConfiguration != -1)
  {
    swift_once();
  }

  v1 = static MirroredHostStartConfiguration.defaultWorkoutConfiguration;

  return v1;
}

_BYTE *MirroredHostStartConfiguration.init(startSource:usePrecisionStart:workoutConfiguration:protocolVersion:)@<X0>(_BYTE *result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 1) = a2;
  *(a4 + 8) = a3;
  return result;
}

uint64_t MirroredHostStartConfiguration.init(protobuf:)@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v67 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v66 = &v64 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v64 = &v64 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v64 - v11;
  v13 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v65 = (&v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v64 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v64 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v64 - v24;
  v26 = *(a1 + 8);
  v70 = *a1;
  v71 = v26;
  MirroredHostStartSource.init(protobuf:)(&v70, &v72);
  v73 = v72;
  v72 = *(a1 + 9);
  v27 = *(a1 + 24);
  v70 = *(a1 + 16);
  v71 = v27;
  MirroredHostProtocolVersion.init(protobuf:)(&v70);
  v28 = *(type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0) + 32);
  v29 = a1;
  outlined init with copy of Apple_Workout_Core_MirroredBlob?(a1 + v28, v12);
  v30 = *(v14 + 48);
  if (v30(v12, 1, v13) == 1)
  {
    *v25 = 0;
    v25[8] = 1;
    *(v25 + 1) = xmmword_20B42FB30;
    v31 = &v25[*(v13 + 24)];
    UnknownStorage.init()();
    if (v30(v12, 1, v13) != 1)
    {
      outlined destroy of Apple_Workout_Core_MirroredBlob?(v12, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_MirroredBlob(v12, v25);
  }

  v32 = *v25;
  v33 = v25[8];
  outlined destroy of Apple_Workout_Core_MirroredBlob(v25, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  v70 = v32;
  v71 = v33;
  MirroredBlobContentType.init(protobuf:)(&v70, &v69);
  if (v69 > 1u)
  {
    if (v69 == 2)
    {
      v36 = type metadata accessor for JSONDecoder();
      v37 = *(v36 + 48);
      v38 = *(v36 + 52);
      swift_allocObject();
      JSONDecoder.init()();
      v39 = v29 + v28;
      v40 = v66;
      outlined init with copy of Apple_Workout_Core_MirroredBlob?(v39, v66);
      if (v30(v40, 1, v13) == 1)
      {
        *v20 = 0;
        v20[8] = 1;
        *(v20 + 1) = xmmword_20B42FB30;
        v41 = &v20[*(v13 + 24)];
        UnknownStorage.init()();
        if (v30(v40, 1, v13) != 1)
        {
          outlined destroy of Apple_Workout_Core_MirroredBlob?(v40, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
        }
      }

      else
      {
        outlined init with take of Apple_Workout_Core_MirroredBlob(v40, v20);
      }

      type metadata accessor for RaceWorkoutConfiguration();
      v59 = *(v20 + 2);
      v60 = *(v20 + 3);
      outlined copy of Data._Representation(v59, v60);
      outlined destroy of Apple_Workout_Core_MirroredBlob(v20, type metadata accessor for Apple_Workout_Core_MirroredBlob);
      lazy protocol witness table accessor for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type RaceWorkoutConfiguration and conformance WorkoutConfiguration, type metadata accessor for RaceWorkoutConfiguration);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    }

    else
    {
      v49 = type metadata accessor for JSONDecoder();
      v50 = *(v49 + 48);
      v51 = *(v49 + 52);
      swift_allocObject();
      JSONDecoder.init()();
      v52 = v29 + v28;
      v53 = v67;
      outlined init with copy of Apple_Workout_Core_MirroredBlob?(v52, v67);
      if (v30(v53, 1, v13) == 1)
      {
        v54 = v65;
        *v65 = 0;
        *(v54 + 8) = 1;
        *(v54 + 1) = xmmword_20B42FB30;
        v55 = v54 + *(v13 + 24);
        UnknownStorage.init()();
        if (v30(v53, 1, v13) != 1)
        {
          outlined destroy of Apple_Workout_Core_MirroredBlob?(v53, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
        }
      }

      else
      {
        v54 = v65;
        outlined init with take of Apple_Workout_Core_MirroredBlob(v53, v65);
      }

      type metadata accessor for IntervalWorkoutConfiguration();
      v59 = v54[2];
      v60 = v54[3];
      outlined copy of Data._Representation(v59, v60);
      outlined destroy of Apple_Workout_Core_MirroredBlob(v54, type metadata accessor for Apple_Workout_Core_MirroredBlob);
      lazy protocol witness table accessor for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration, type metadata accessor for IntervalWorkoutConfiguration);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    }

    outlined destroy of Apple_Workout_Core_MirroredBlob(v29, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
    outlined consume of Data._Representation(v59, v60);

    v43 = v70;
  }

  else if (v69)
  {
    if (one-time initialization token for defaultWorkoutConfiguration != -1)
    {
      swift_once();
    }

    v42 = one-time initialization token for dataLink;
    v43 = static MirroredHostStartConfiguration.defaultWorkoutConfiguration;
    if (v42 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static WOLog.dataLink);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      *(v47 + 4) = v43;
      *v48 = v43;
      v43 = v43;
      _os_log_impl(&dword_20AEA4000, v45, v46, "[mirrored] cannot deserialize WorkoutConfiguration from nskeyedarchiver (not supported), assigned default: %@", v47, 0xCu);
      outlined destroy of Apple_Workout_Core_MirroredBlob?(v48, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v48, -1, -1);
      MEMORY[0x20F2E9420](v47, -1, -1);
    }

    result = outlined destroy of Apple_Workout_Core_MirroredBlob(v29, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
  }

  else
  {
    v34 = v64;
    outlined init with copy of Apple_Workout_Core_MirroredBlob?(v29 + v28, v64);
    if (v30(v34, 1, v13) == 1)
    {
      *v23 = 0;
      v23[8] = 1;
      *(v23 + 1) = xmmword_20B42FB30;
      v35 = &v23[*(v13 + 24)];
      UnknownStorage.init()();
      if (v30(v34, 1, v13) != 1)
      {
        outlined destroy of Apple_Workout_Core_MirroredBlob?(v34, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
      }
    }

    else
    {
      outlined init with take of Apple_Workout_Core_MirroredBlob(v34, v23);
    }

    v56 = *(v23 + 2);
    v57 = *(v23 + 3);
    outlined copy of Data._Representation(v56, v57);
    outlined destroy of Apple_Workout_Core_MirroredBlob(v23, type metadata accessor for Apple_Workout_Core_MirroredBlob);
    v58 = specialized Occurrence.__allocating_init(count:)(0);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v43 = specialized static WorkoutConfiguration.importFromData(_:with:validator:)(v56, v57, v58, static WorkoutConfigurationValidator.shared);
    outlined destroy of Apple_Workout_Core_MirroredBlob(v29, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);

    result = outlined consume of Data._Representation(v56, v57);
  }

  v62 = v72;
  v63 = v68;
  *v68 = v73;
  v63[1] = v62;
  *(v63 + 1) = v43;
  return result;
}

uint64_t outlined init with copy of Apple_Workout_Core_MirroredBlob?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MirroredHostStartConfiguration.protobuf.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0);
  lazy protocol witness table accessor for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostStartConfiguration and conformance Apple_Workout_Core_MirroredHostStartConfiguration, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
  return static Message.with(_:)();
}

void closure #1 in MirroredHostStartConfiguration.protobuf.getter(uint64_t a1, __int16 a2, void *a3)
{
  v6 = type metadata accessor for WorkoutPlan.SerializationFormat();
  v72 = *(v6 - 8);
  v7 = *(v72 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WorkoutPlan();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v70 = *(v15 - 8);
  v71 = v15;
  v16 = *(v70 + 64);
  MEMORY[0x28223BE20](v15);
  v68 = a1;
  v69 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = a2 & 1;
  *(a1 + 8) = 1;
  *(a1 + 9) = HIBYTE(a2) & 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  type metadata accessor for RaceWorkoutConfiguration();
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = v18;
    v20 = type metadata accessor for JSONEncoder();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v23 = a3;
    JSONEncoder.init()();
    v74 = v19;
    lazy protocol witness table accessor for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type RaceWorkoutConfiguration and conformance WorkoutConfiguration, type metadata accessor for RaceWorkoutConfiguration);
    v24 = v73;
    v25 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v26 = v24;
    if (!v24)
    {
      v27 = MEMORY[0x28223BE20](v25);
      *(&v66 - 32) = 2;
      *(&v66 - 3) = v27;
      *(&v66 - 2) = v28;
      v29 = v27;
      v30 = v28;
      lazy protocol witness table accessor for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlob and conformance Apple_Workout_Core_MirroredBlob, type metadata accessor for Apple_Workout_Core_MirroredBlob);
LABEL_16:
      v53 = v69;
      v54 = v71;
      static Message.with(_:)();

      outlined consume of Data._Representation(v29, v30);
      v55 = *(type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0) + 32);
      v56 = v68;
      outlined destroy of Apple_Workout_Core_MirroredBlob?(v68 + v55, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
      outlined init with take of Apple_Workout_Core_MirroredBlob(v53, v56 + v55);
      (*(v70 + 56))(v56 + v55, 0, 1, v54);
      return;
    }
  }

  else
  {
    v66 = v11;
    v67 = v10;
    v31 = v72;
    type metadata accessor for IntervalWorkoutConfiguration();
    v32 = swift_dynamicCastClass();
    if (!v32)
    {
      v49 = v73;
      WorkoutConfiguration.workoutPlanRepresentation()(v14);
      v26 = v49;
      if (!v49)
      {
        (*(v31 + 104))(v9, *MEMORY[0x277CE3FA0], v6);
        v50 = WorkoutPlan.dataRepresentation(as:)();
        v57 = *(v31 + 8);
        v58 = v50;
        v60 = v59;
        v57(v9, v6);
        v61 = (*(v66 + 8))(v14, v67);
        MEMORY[0x28223BE20](v61);
        *(&v66 - 32) = 0;
        *(&v66 - 3) = v58;
        *(&v66 - 2) = v60;
        lazy protocol witness table accessor for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlob and conformance Apple_Workout_Core_MirroredBlob, type metadata accessor for Apple_Workout_Core_MirroredBlob);
        v62 = v69;
        v63 = v71;
        static Message.with(_:)();
        outlined consume of Data._Representation(v58, v60);
        v64 = *(type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0) + 32);
        v65 = v68;
        outlined destroy of Apple_Workout_Core_MirroredBlob?(v68 + v64, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
        outlined init with take of Apple_Workout_Core_MirroredBlob(v62, v65 + v64);
        (*(v70 + 56))(v65 + v64, 0, 1, v63);
        return;
      }

      goto LABEL_7;
    }

    v33 = v32;
    v34 = type metadata accessor for JSONEncoder();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    v23 = a3;
    JSONEncoder.init()();
    v74 = v33;
    lazy protocol witness table accessor for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration, type metadata accessor for IntervalWorkoutConfiguration);
    v37 = v73;
    v38 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v26 = v37;
    if (!v37)
    {
      v51 = MEMORY[0x28223BE20](v38);
      *(&v66 - 32) = 3;
      *(&v66 - 3) = v51;
      *(&v66 - 2) = v52;
      v29 = v51;
      v30 = v52;
      lazy protocol witness table accessor for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlob and conformance Apple_Workout_Core_MirroredBlob, type metadata accessor for Apple_Workout_Core_MirroredBlob);
      goto LABEL_16;
    }
  }

LABEL_7:
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  __swift_project_value_buffer(v39, static WOLog.dataLink);
  v40 = a3;
  v41 = v26;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = 138412546;
    *(v44 + 4) = v40;
    *v45 = v40;
    *(v44 + 12) = 2112;
    v46 = v40;
    v47 = v26;
    v48 = _swift_stdlib_bridgeErrorToNSError();
    *(v44 + 14) = v48;
    v45[1] = v48;
    _os_log_impl(&dword_20AEA4000, v42, v43, "[mirrored] cannot serialize WorkoutConfiguration (%@ to protobuf with error: %@", v44, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v45, -1, -1);
    MEMORY[0x20F2E9420](v44, -1, -1);
  }

  else
  {
  }
}

uint64_t MirroredHostStartConfiguration.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  _StringGuts.grow(_:)(85);
  MEMORY[0x20F2E6D80](0x756F537472617473, 0xED0000203A656372);
  if (v1)
  {
    v4 = 0x6465726F7272696DLL;
  }

  else
  {
    v4 = 0x6944705564616568;
  }

  if (v1)
  {
    v5 = 0xED00007472617453;
  }

  else
  {
    v5 = 0xED000079616C7073;
  }

  MEMORY[0x20F2E6D80](v4, v5);

  MEMORY[0x20F2E6D80](0xD000000000000015, 0x800000020B45A220);
  if (v2)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x20F2E6D80](v6, v7);

  MEMORY[0x20F2E6D80](0xD000000000000018, 0x800000020B45A240);
  v8 = WorkoutConfiguration.logString.getter();
  MEMORY[0x20F2E6D80](v8);

  MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45A260);
  MEMORY[0x20F2E6D80](0x6C41696C6970616ELL, 0xED000064656E6769);
  return 0;
}

uint64_t protocol witness for MirroredMessageProtocol.protobuf.getter in conformance MirroredHostStartConfiguration()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0);
  lazy protocol witness table accessor for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostStartConfiguration and conformance Apple_Workout_Core_MirroredHostStartConfiguration, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
  return static Message.with(_:)();
}

uint64_t MirroredHostStartConfiguration.hash(into:)()
{
  v1 = v0[1];
  v2 = *(v0 + 1);
  MEMORY[0x20F2E7FF0](*v0);
  Hasher._combine(_:)(v1);
  NSObject.hash(into:)();
  return MEMORY[0x20F2E7FF0](0);
}

Swift::Int MirroredHostStartConfiguration.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  Hasher._combine(_:)(v2);
  NSObject.hash(into:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredHostStartConfiguration()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  Hasher._combine(_:)(v2);
  NSObject.hash(into:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MirroredHostStartConfiguration()
{
  v1 = v0[1];
  v2 = *(v0 + 1);
  MEMORY[0x20F2E7FF0](*v0);
  Hasher._combine(_:)(v1);
  NSObject.hash(into:)();
  return MEMORY[0x20F2E7FF0](0);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredHostStartConfiguration()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  Hasher._combine(_:)(v2);
  NSObject.hash(into:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

uint64_t outlined destroy of Apple_Workout_Core_MirroredBlob(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of Apple_Workout_Core_MirroredBlob?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_Core_MirroredBlob(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized static MirroredHostStartConfiguration.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || ((a1[1] ^ a2[1]) & 1) != 0)
  {
    return 0;
  }

  v2 = *(a2 + 1);
  v3 = *(a1 + 1);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  return static NSObject.== infix(_:_:)() & 1;
}

unint64_t instantiation function for generic protocol witness table for MirroredHostStartConfiguration(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MirroredHostStartConfiguration and conformance MirroredHostStartConfiguration();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MirroredHostStartConfiguration and conformance MirroredHostStartConfiguration()
{
  result = lazy protocol witness table cache variable for type MirroredHostStartConfiguration and conformance MirroredHostStartConfiguration;
  if (!lazy protocol witness table cache variable for type MirroredHostStartConfiguration and conformance MirroredHostStartConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostStartConfiguration and conformance MirroredHostStartConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredHostStartConfiguration and conformance MirroredHostStartConfiguration;
  if (!lazy protocol witness table cache variable for type MirroredHostStartConfiguration and conformance MirroredHostStartConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostStartConfiguration and conformance MirroredHostStartConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredHostStartConfiguration and conformance MirroredHostStartConfiguration;
  if (!lazy protocol witness table cache variable for type MirroredHostStartConfiguration and conformance MirroredHostStartConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostStartConfiguration and conformance MirroredHostStartConfiguration);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MirroredHostStartConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MirroredHostStartConfiguration(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t type metadata accessor for NSObject(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t lazy protocol witness table accessor for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t closure #1 in MirroredBlob.protobuf.getterpartial apply(uint64_t a1)
{
  return partial apply for closure #1 in MirroredBlob.protobuf.getter(a1);
}

{
  return partial apply for closure #1 in MirroredBlob.protobuf.getter(a1);
}

{
  return _s11WorkoutCore12MirroredBlobV8protobufAA06Apple_a1_b1_cD0VvgyAFzXEfU_TA_1(a1);
}

uint64_t static HeartRateConfiguration.defaultManualZones()()
{
  v0 = [objc_opt_self() _countPerMinuteUnit];
  v1 = [objc_opt_self() quantityWithUnit:v0 doubleValue:178.6];

  if (one-time initialization token for defaultRestingHeartRate != -1)
  {
    swift_once();
  }

  v2 = specialized static HeartRateConfiguration.automaticZones(maximumHeartRate:restingHeartRate:)(v1, static HeartRateConfiguration.defaultRestingHeartRate);

  return v2;
}

void static HeartRateConfiguration.manualZones(completion:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for valueStore != -1)
  {
    swift_once();
  }

  v5 = static HeartRateConfiguration.valueStore;
  v6 = qword_27C75FF10;
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v2;
  v7[5] = v2;
  v8 = v5;
  v9 = v6;

  v10 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B458A70);
  v12[4] = partial apply for closure #1 in static HeartRateConfiguration.manualZones(completion:);
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ();
  v12[3] = &block_descriptor_6_2;
  v11 = _Block_copy(v12);

  [v8 dataForKey:v10 completion:v11];
  _Block_release(v11);
}

uint64_t closure #1 in static HeartRateConfiguration.manualZones(completion:)(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v10 = type metadata accessor for JSONDecoder();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = JSONDecoder.init()();
  p_cb = &OBJC_PROTOCOL___WOLowPowerModeProviderSessionDelegate.cb;
  if (!a3)
  {
    goto LABEL_6;
  }

  v15 = a3;
  if (one-time initialization token for zones != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static WOLog.zones);
    v17 = a3;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v57 = v13;
      v20 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v60 = v55;
      *v20 = 136315394;
      v21 = _typeName(_:qualified:)();
      v23 = a2;
      v24 = a5;
      v25 = a4;
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v60);
      p_cb = (&OBJC_PROTOCOL___WOLowPowerModeProviderSessionDelegate + 64);

      *(v20 + 4) = v26;
      a4 = v25;
      a5 = v24;
      a2 = v23;
      *(v20 + 12) = 2112;
      v27 = a3;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v28;
      *v54 = v28;
      _os_log_impl(&dword_20AEA4000, v18, v19, "%s Failed to retrieve manual zones from key-value store with error:: %@", v20, 0x16u);
      outlined destroy of NSObject?(v54);
      MEMORY[0x20F2E9420](v54, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x20F2E9420](v55, -1, -1);
      v29 = v20;
      v13 = v57;
      MEMORY[0x20F2E9420](v29, -1, -1);
    }

    else
    {
    }

LABEL_6:
    if (a2 >> 60 == 15)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
    outlined copy of Data._Representation(a1, a2);
    lazy protocol witness table accessor for type [Double] and conformance <A> [A](&lazy protocol witness table cache variable for type [Double] and conformance <A> [A]);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v30 = p_cb;
    v31 = v60;
    p_cb = *(v60 + 16);
    if (!p_cb)
    {
      v33 = a1;
      goto LABEL_11;
    }

    v58 = a1;
    v32 = *(v60 + 32);
    a1 = p_cb - 1;
    if (v32 == *(v60 + 32 + 8 * (p_cb - 1)))
    {
      v33 = v58;
LABEL_11:
      outlined consume of Data?(v33, a2);

      p_cb = v30;
      break;
    }

    v46 = MEMORY[0x277D84F90];
    v60 = MEMORY[0x277D84F90];
    if (p_cb == 1)
    {
LABEL_30:

      a4(v46);
      outlined consume of Data?(v58, a2);
    }

    v56 = a2;
    a2 = v13;
    v59 = a4;
    a4 = type metadata accessor for HeartRateZone();
    v13 = (v31 + 40);
    v47 = 0x7FFFFFFFFFFFFFFFLL;
    a3 = 1;
    while (v47)
    {
      v48 = *v13;
      v49 = swift_allocObject();
      v50 = floor(v32);
      v51 = floor(v48);
      if (v32 > v48 || v50 > v51)
      {
        goto LABEL_32;
      }

      *(v49 + 16) = v50;
      *(v49 + 24) = v51;
      *(v49 + 32) = a3 - 1;
      *(v49 + 40) = a1;
      MEMORY[0x20F2E6F30]();
      if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v53 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++a3;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      --v47;
      ++v13;
      v32 = v48;
      if (a3 == p_cb)
      {
        v46 = v60;
        a4 = v59;
        a2 = v56;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

  if (*(p_cb + 406) != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static WOLog.zones);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v60 = v38;
    *v37 = 136315138;
    v39 = _typeName(_:qualified:)();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v60);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_20AEA4000, v35, v36, "%s using default manual zones", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x20F2E9420](v38, -1, -1);
    MEMORY[0x20F2E9420](v37, -1, -1);
  }

  v42 = [objc_opt_self() _countPerMinuteUnit];
  v43 = [objc_opt_self() quantityWithUnit:v42 doubleValue:178.6];

  if (one-time initialization token for defaultRestingHeartRate != -1)
  {
    swift_once();
  }

  v44 = specialized static HeartRateConfiguration.automaticZones(maximumHeartRate:restingHeartRate:)(v43, static HeartRateConfiguration.defaultRestingHeartRate);

  a4(v44);
}

void static HeartRateConfiguration.setConfigured(zones:)(unint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    if (one-time initialization token for valueStore == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    v4 = __CocoaSet.count.getter();
    if (v4)
    {
LABEL_4:
      if (v4 < 1)
      {
        __break(1u);
      }

      else
      {
        v44 = v4 - 1;
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = 0;
          v1 = MEMORY[0x277D84F90];
          do
          {
            v6 = *(MEMORY[0x20F2E7A20](v5, a1) + 16);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
            }

            v8 = *(v1 + 2);
            v7 = *(v1 + 3);
            v9 = v8 + 1;
            if (v8 >= v7 >> 1)
            {
              v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v1);
            }

            ++v5;
            swift_unknownObjectRelease();
            *(v1 + 2) = v9;
            *&v1[8 * v8 + 32] = v6;
          }

          while (v4 != v5);
        }

        else
        {
          v19 = a1 + 32;
          v1 = MEMORY[0x277D84F90];
          v20 = v4;
          do
          {
            v21 = *(*v19 + 16);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
            }

            v23 = *(v1 + 2);
            v22 = *(v1 + 3);
            v9 = v23 + 1;
            if (v23 >= v22 >> 1)
            {
              v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v1);
            }

            *(v1 + 2) = v9;
            *&v1[8 * v23 + 32] = v21;
            v19 += 8;
            --v20;
          }

          while (v20);
        }

        if ((a1 & 0xC000000000000001) == 0)
        {
          if (v4 <= *(v3 + 16))
          {
            v24 = *(a1 + 8 * v44 + 32);

LABEL_26:
            v25 = *(v24 + 24);
            v26 = *(v1 + 3);
            if (v9 >= v26 >> 1)
            {
              v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v9 + 1, 1, v1);
            }

            *(v1 + 2) = v9 + 1;
            *&v1[8 * v9 + 32] = v25;
            goto LABEL_31;
          }

          __break(1u);
LABEL_43:
          swift_once();
LABEL_14:
          v11 = static HeartRateConfiguration.valueStore;
          v10 = qword_27C75FF10;
          v12 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B458A70);
          aBlock = 0;
          v13 = [v11 setData:0 forKey:v12 error:&aBlock];

          v14 = aBlock;
          if (v13)
          {
            v49 = closure #1 in FastSyncHKKeyValueDomain.forceSync();
            v50 = 0;
            aBlock = MEMORY[0x277D85DD0];
            v46 = 1107296256;
            v47 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
            v48 = &block_descriptor_18;
            v15 = _Block_copy(&aBlock);
            v16 = v14;
            [v10 forceNanoSyncWithOptions:0 completion:v15];
            _Block_release(v15);
          }

          else
          {
            v17 = aBlock;
            v18 = _convertNSErrorToError(_:)();

            swift_willThrow();
          }

          goto LABEL_39;
        }
      }

      v24 = MEMORY[0x20F2E7A20](v44, a1);
      v9 = *(v1 + 2);
      goto LABEL_26;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }
  }

  v1 = MEMORY[0x277D84F90];
LABEL_31:
  v27 = type metadata accessor for JSONEncoder();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  aBlock = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
  lazy protocol witness table accessor for type [Double] and conformance <A> [A](&lazy protocol witness table cache variable for type [Double] and conformance <A> [A]);
  v30 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v32 = v31;

  if (one-time initialization token for valueStore != -1)
  {
    swift_once();
  }

  v34 = static HeartRateConfiguration.valueStore;
  v33 = qword_27C75FF10;
  if (v32 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v36 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B458A70);
  aBlock = 0;
  v37 = [v34 setData:isa forKey:v36 error:&aBlock];

  v38 = aBlock;
  if (v37)
  {
    v49 = closure #1 in FastSyncHKKeyValueDomain.forceSync();
    v50 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v46 = 1107296256;
    v47 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v48 = &block_descriptor_3_2;
    v39 = _Block_copy(&aBlock);
    v40 = v38;
    [v33 forceNanoSyncWithOptions:0 completion:v39];

    outlined consume of Data?(v30, v32);
    _Block_release(v39);
  }

  else
  {
    v41 = aBlock;
    v42 = _convertNSErrorToError(_:)();

    swift_willThrow();

    outlined consume of Data?(v30, v32);
  }

LABEL_39:
  v43 = *MEMORY[0x277D85DE8];
}

uint64_t specialized static HeartRateConfiguration.automaticZones(maximumHeartRate:restingHeartRate:)(void *a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = [v4 _countPerMinuteUnit];
  [a1 doubleValueForUnit_];
  v7 = v6;

  v8 = [v4 _countPerMinuteUnit];
  [a2 doubleValueForUnit_];
  v10 = v9;

  if (v7 + -50.0 < v10)
  {
    v10 = v7 + -50.0;
  }

  v11 = v7 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_20B425990;
  v13 = v10 + v11 * 0.6;
  type metadata accessor for HeartRateZone();
  result = swift_allocObject();
  if (v13 >= 0.0)
  {
    v15 = floor(v13);
    if (v15 >= 0.0)
    {
      *(result + 16) = 0;
      *(result + 24) = v15;
      *(result + 32) = xmmword_20B4322F0;
      *(v12 + 32) = result;
      v16 = 2;
      while (1)
      {
        v17 = v10 + v11 * ((v16 - 1) * 0.1 + 0.5);
        v18 = v10 + v11 * (v16 * 0.1 + 0.5);
        result = swift_allocObject();
        v19 = floor(v17);
        v20 = floor(v18);
        if (v17 > v18 || v19 > v20)
        {
          break;
        }

        *(result + 16) = v19;
        *(result + 24) = v20;
        *(result + 32) = v16 - 1;
        *(result + 40) = 5;
        MEMORY[0x20F2E6F30]();
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v22 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        if (++v16 == 6)
        {
          return v12;
        }
      }

      __break(1u);
    }
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in static HeartRateConfiguration.manualZones(completion:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  return closure #1 in static HeartRateConfiguration.manualZones(completion:)(a1, a2, a3, *(v3 + 16), *(v3 + 24));
}

uint64_t lazy protocol witness table accessor for type [Double] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySdGMd, &_sSaySdGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PacerWorkoutConfiguration.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6C616F47656D6974;
  }

  else
  {
    v4 = 0x65636E6174736964;
  }

  if (v3)
  {
    v5 = 0xEC0000006C616F47;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x6C616F47656D6974;
  }

  else
  {
    v6 = 0x65636E6174736964;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xEC0000006C616F47;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PacerWorkoutConfiguration.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PacerWorkoutConfiguration.CodingKeys()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PacerWorkoutConfiguration.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PacerWorkoutConfiguration.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PacerWorkoutConfiguration.CodingKeys.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance PacerWorkoutConfiguration.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0x65636E6174736964;
  if (*v1)
  {
    v2 = 0x6C616F47656D6974;
  }

  v3 = 0xEC0000006C616F47;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PacerWorkoutConfiguration.CodingKeys()
{
  if (*v0)
  {
    result = 0x6C616F47656D6974;
  }

  else
  {
    result = 0x65636E6174736964;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PacerWorkoutConfiguration.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PacerWorkoutConfiguration.CodingKeys.init(rawValue:), v3);

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PacerWorkoutConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PacerWorkoutConfiguration.CodingKeys and conformance PacerWorkoutConfiguration.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PacerWorkoutConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PacerWorkoutConfiguration.CodingKeys and conformance PacerWorkoutConfiguration.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PacerWorkoutConfiguration.distanceGoal.getter()
{
  return PacerWorkoutConfiguration.distanceGoal.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for PacerWorkoutConfiguration.distanceGoal : PacerWorkoutConfiguration@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  return key path getter for PacerWorkoutConfiguration.distanceGoal : PacerWorkoutConfiguration(a1, a2);
}

{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for PacerWorkoutConfiguration.distanceGoal : PacerWorkoutConfiguration(void **a1, void **a2)
{
  return key path setter for PacerWorkoutConfiguration.distanceGoal : PacerWorkoutConfiguration(a1, a2);
}

{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return static Published.subscript.setter();
}

uint64_t PacerWorkoutConfiguration.distanceGoal.setter()
{
  return PacerWorkoutConfiguration.distanceGoal.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*PacerWorkoutConfiguration.distanceGoal.modify(uint64_t *a1))()
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
  return PacerWorkoutConfiguration.distanceGoal.modify;
}

uint64_t (*PacerWorkoutConfiguration.$distanceGoal.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25PacerWorkoutConfiguration__distanceGoal;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return PacerWorkoutConfiguration.$distanceGoal.modify;
}

uint64_t (*PacerWorkoutConfiguration.timeGoal.modify(uint64_t *a1))()
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
  return PacerWorkoutConfiguration.timeGoal.modify;
}

void PacerWorkoutConfiguration.distanceGoal.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t PacerWorkoutConfiguration.$distanceGoal.getter(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for PacerWorkoutConfiguration.$distanceGoal : PacerWorkoutConfiguration(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a1;
  v5 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for PacerWorkoutConfiguration.$distanceGoal : PacerWorkoutConfiguration(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo21NLSessionActivityGoalC_GMd, &_s7Combine9PublishedV9PublisherVySo21NLSessionActivityGoalC_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v9 + 8))(v15, v8);
}

uint64_t PacerWorkoutConfiguration.$distanceGoal.setter(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo21NLSessionActivityGoalC_GMd, &_s7Combine9PublishedV9PublisherVySo21NLSessionActivityGoalC_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(&v10 - v7, a1, v4);
  v8 = *a2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(a1, v4);
}

uint64_t (*PacerWorkoutConfiguration.$timeGoal.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25PacerWorkoutConfiguration__timeGoal;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return PacerWorkoutConfiguration.$timeGoal.modify;
}

void PacerWorkoutConfiguration.$distanceGoal.modify(uint64_t a1, char a2)
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

Swift::Int PacerWorkoutConfiguration.hash.getter()
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

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  NSObject.hash(into:)();

  return Hasher.finalize()();
}

id PacerWorkoutConfiguration.__allocating_init(_:distanceGoal:timeGoal:uuid:paceAlertEnabled:occurrence:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v38 = a6;
  v39 = a4;
  v37 = a1;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  v33 = *(v12 + 16);
  v35 = &v32 - v17;
  v33(&v32 - v17, a4, v11);
  v19 = objc_allocWithZone(v7);
  swift_beginAccess();
  v41 = a2;
  _sSo21NLSessionActivityGoalCMaTm_0(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  v36 = a2;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v41 = a3;
  v34 = a3;
  Published.init(initialValue:)();
  swift_endAccess();
  v20 = v18;
  v21 = v33;
  v33(v16, v20, v11);
  *&v19[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v22 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  v23 = type metadata accessor for Date();
  v24 = *(*(v23 - 8) + 56);
  v24(&v19[v22], 1, 1, v23);
  v24(&v19[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v23);
  v25 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v26 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v26 - 8) + 56))(&v19[v25], 1, 1, v26);
  (*(v12 + 56))(&v19[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v11);
  v27 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v19[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v21(&v19[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v16, v11);
  *&v19[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v37;
  v19[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 3;
  *&v19[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v38;
  swift_beginAccess();
  *&v19[v27] = 0;
  v19[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v28 = type metadata accessor for WorkoutConfiguration();
  v40.receiver = v19;
  v40.super_class = v28;
  v29 = objc_msgSendSuper2(&v40, sel_init);

  v30 = *(v12 + 8);
  v30(v39, v11);
  v30(v16, v11);
  v30(v35, v11);
  return v29;
}

uint64_t PacerWorkoutConfiguration.encode(to:)(void *a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore05PacerD13ConfigurationC10CodingKeys33_D937294A2CBE536646CC811BEACA4640LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore05PacerD13ConfigurationC10CodingKeys33_D937294A2CBE536646CC811BEACA4640LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v34 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PacerWorkoutConfiguration.CodingKeys and conformance PacerWorkoutConfiguration.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = objc_opt_self();
  swift_getKeyPath();
  swift_getKeyPath();
  v40 = v1;
  static Published.subscript.getter();

  v10 = v43;
  v43 = 0;
  v11 = [v9 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v43];

  v12 = v43;
  if (v11)
  {
    v39 = v4;
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v43 = v13;
    v44 = v15;
    v42 = 0;
    v16 = lazy protocol witness table accessor for type Data and conformance Data();
    v17 = v41;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v17)
    {
      (*(v39 + 8))(v7, v3);
      v18 = v13;
      v19 = v15;
    }

    else
    {
      v36 = v16;
      v37 = v3;
      v38 = v13;
      v41 = v15;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v23 = v43;
      v43 = 0;
      v24 = [v9 archivedDataWithRootObject:v23 requiringSecureCoding:1 error:&v43];

      v25 = v43;
      if (!v24)
      {
        v33 = v25;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        outlined consume of Data._Representation(v38, v41);
        result = (*(v39 + 8))(v7, v37);
        goto LABEL_6;
      }

      v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v43 = v26;
      v44 = v28;
      v35 = v28;
      v42 = 1;
      v29 = v37;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v30 = v41;
      v31 = v38;
      v32 = v39;
      WorkoutConfiguration.encode(to:)(a1);
      (*(v32 + 8))(v7, v29);
      outlined consume of Data._Representation(v26, v35);
      v18 = v31;
      v19 = v30;
    }

    result = outlined consume of Data._Representation(v18, v19);
  }

  else
  {
    v21 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = (*(v4 + 8))(v7, v3);
  }

LABEL_6:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

char *PacerWorkoutConfiguration.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore05PacerD13ConfigurationC10CodingKeys33_D937294A2CBE536646CC811BEACA4640LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore05PacerD13ConfigurationC10CodingKeys33_D937294A2CBE536646CC811BEACA4640LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PacerWorkoutConfiguration.CodingKeys and conformance PacerWorkoutConfiguration.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    goto LABEL_3;
  }

  LOBYTE(v43) = 0;
  v11 = lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v38 = v11;
  v39 = v6;
  v12 = v41;
  v13 = v42;
  v14 = _sSo21NLSessionActivityGoalCMaTm_0(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
  v15 = _sSo21NLSessionActivityGoalCMaTm_0(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  v16 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  v34 = v14;
  v35 = v15;
  v36 = v13;
  v37 = v12;
  if (!v16)
  {
    lazy protocol witness table accessor for type NLSessionActivityGoalError and conformance NLSessionActivityGoalError();
    swift_allocError();
    *v23 = 0xD000000000000027;
    v23[1] = 0x800000020B45A280;
    swift_willThrow();
    outlined consume of Data._Representation(v37, v36);
    (*(v39 + 8))(v9, v5);
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1(a1);
    goto LABEL_4;
  }

  v20 = v16;
  swift_beginAccess();
  v43 = v20;
  v21 = v20;
  Published.init(initialValue:)();
  swift_endAccess();
  LOBYTE(v43) = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = v39;
  v38 = v21;
  v24 = v42;
  v33 = v41;
  v25 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  v26 = v36;
  v34 = v24;
  if (v25)
  {
    v29 = v25;
    swift_beginAccess();
    v43 = v29;
    v30 = v29;
    Published.init(initialValue:)();
    swift_endAccess();
    _ss7Decoder_pWOcTm_0(a1, &v41);
    v3 = WorkoutConfiguration.init(from:)(&v41);
    (*(v22 + 8))(v9, v5);
    outlined consume of Data._Representation(v37, v36);

    outlined consume of Data._Representation(v33, v34);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v3;
  }

  lazy protocol witness table accessor for type NLSessionActivityGoalError and conformance NLSessionActivityGoalError();
  swift_allocError();
  *v31 = 0xD000000000000023;
  v31[1] = 0x800000020B45A2B0;
  swift_willThrow();
  outlined consume of Data._Representation(v37, v26);
  outlined consume of Data._Representation(v33, v34);

  (*(v22 + 8))(v9, v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v27 = OBJC_IVAR____TtC11WorkoutCore25PacerWorkoutConfiguration__distanceGoal;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  (*(*(v28 - 8) + 8))(&v3[v27], v28);
LABEL_4:
  v17 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
  v18 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t PacerWorkoutConfiguration.isEquivalent(to:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  _ss7Decoder_pWOcTm_0(a1, &v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10Equivalent_pMd, &_s11WorkoutCore10Equivalent_pMR);
  if (!swift_dynamicCast())
  {
    goto LABEL_6;
  }

  _sSo21NLSessionActivityGoalCMaTm_0(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = v13;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v13;
  v6 = static NSObject.== infix(_:_:)();

  if ((v6 & 1) == 0)
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = v13;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = v13;
  v9 = static NSObject.== infix(_:_:)();

  if ((v9 & 1) == 0)
  {
LABEL_5:

LABEL_6:
    v10 = 0;
    return v10 & 1;
  }

  v10 = specialized WorkoutConfiguration.isEquivalent(to:)(v12, v2);

  return v10 & 1;
}

uint64_t PacerWorkoutConfiguration.__ivar_destroyer()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore25PacerWorkoutConfiguration__distanceGoal;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  v5 = *(*(v2 - 8) + 8);
  (v5)((v2 - 8), v0 + v1, v2);
  v3 = v0 + OBJC_IVAR____TtC11WorkoutCore25PacerWorkoutConfiguration__timeGoal;

  return v5(v3, v2);
}

id PacerWorkoutConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static PacerWorkoutConfiguration.canonical()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:37 isIndoor:0];
  v1 = specialized static PacerWorkoutConfiguration.canonical(activityType:)(v0);

  return v1;
}

id static PacerWorkoutConfiguration.canonicalCycling()(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v47 = &v38 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  v46 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:a1 isIndoor:0];
  v11 = objc_opt_self();
  v12 = [v11 mileUnit];
  v13 = objc_opt_self();
  v14 = [v13 quantityWithUnit:v12 doubleValue:5.0];

  v15 = [v11 meterUnit];
  [v14 doubleValueForUnit_];
  v17 = v16;

  v18 = [v11 meterUnit];
  v19 = [v13 quantityWithUnit:v18 doubleValue:v17];
  v44 = v19;

  v20 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v19];
  v21 = [v11 minuteUnit];
  v22 = [v13 quantityWithUnit:v21 doubleValue:15.0];
  v41 = v22;

  v23 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v22];
  v42 = v10;
  UUID.init()();
  v40 = specialized Occurrence.__allocating_init(count:)(0);
  v24 = *(v3 + 16);
  v25 = v47;
  v24(v47, v10, v2);
  v26 = objc_allocWithZone(v43);
  swift_beginAccess();
  v49 = v20;
  _sSo21NLSessionActivityGoalCMaTm_0(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  v43 = v20;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v49 = v23;
  v39 = v23;
  Published.init(initialValue:)();
  swift_endAccess();
  v27 = v45;
  v24(v45, v25, v2);
  *&v26[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v28 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  v29 = type metadata accessor for Date();
  v30 = *(*(v29 - 8) + 56);
  v30(&v26[v28], 1, 1, v29);
  v30(&v26[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v29);
  v31 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v32 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v32 - 8) + 56))(&v26[v31], 1, 1, v32);
  (*(v3 + 56))(&v26[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v2);
  v33 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v26[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v24(&v26[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v27, v2);
  *&v26[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v46;
  v26[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 3;
  *&v26[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v40;
  swift_beginAccess();
  *&v26[v33] = 0;
  v26[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v34 = type metadata accessor for WorkoutConfiguration();
  v48.receiver = v26;
  v48.super_class = v34;
  v35 = objc_msgSendSuper2(&v48, sel_init);

  v36 = *(v3 + 8);
  v36(v27, v2);
  v36(v47, v2);
  v36(v42, v2);
  return v35;
}

void protocol witness for static Canonical.canonical() in conformance PacerWorkoutConfiguration(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:37 isIndoor:0];
  v3 = specialized static PacerWorkoutConfiguration.canonical(activityType:)(v2);

  *a1 = v3;
}

id PacerWorkoutConfiguration.copyWith(activityType:distanceGoal:timeGoal:uuid:occurrence:)(void *a1, void *a2, void *a3, id a4, void *a5)
{
  v6 = v5;
  v52 = a5;
  v50 = a4;
  ObjectType = swift_getObjectType();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v49 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v54 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v55 = &v49 - v19;
  if (a1)
  {
    v53 = a1;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_6:
    swift_getKeyPath();
    swift_getKeyPath();
    v25 = a1;
    static Published.subscript.getter();

    v21 = v58;
    if (a3)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v24 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v53 = *(v6 + v24);
  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_3:
  v20 = a1;
  v21 = a2;
  if (a3)
  {
LABEL_4:
    v22 = a2;
    v23 = a3;
    goto LABEL_8;
  }

LABEL_7:
  swift_getKeyPath();
  swift_getKeyPath();
  v26 = a2;
  static Published.subscript.getter();

  v23 = v58;
LABEL_8:
  outlined init with copy of UUID?(v50, v13);
  v27 = *(v15 + 48);
  if (v27(v13, 1, v14) == 1)
  {
    v28 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    (*(v15 + 16))(v55, v6 + v28, v14);
    v29 = v27(v13, 1, v14);
    v30 = a3;
    if (v29 != 1)
    {
      outlined destroy of UUID?(v13);
    }
  }

  else
  {
    (*(v15 + 32))(v55, v13, v14);
    v31 = a3;
  }

  v32 = v52;
  if (v52)
  {
    v50 = v52;
  }

  else
  {
    v33 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    swift_beginAccess();
    v50 = *(v6 + v33);
  }

  v34 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  swift_beginAccess();
  v49 = *(v6 + v34);
  v35 = objc_allocWithZone(ObjectType);
  swift_beginAccess();
  v57 = v21;
  _sSo21NLSessionActivityGoalCMaTm_0(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  v36 = v32;

  v52 = v21;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v57 = v23;
  ObjectType = v23;
  Published.init(initialValue:)();
  swift_endAccess();
  v37 = *(v15 + 16);
  v38 = v54;
  v37(v54, v55, v14);
  *&v35[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v39 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  v40 = type metadata accessor for Date();
  v41 = *(*(v40 - 8) + 56);
  v41(&v35[v39], 1, 1, v40);
  v41(&v35[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v40);
  v42 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v43 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v43 - 8) + 56))(&v35[v42], 1, 1, v43);
  (*(v15 + 56))(&v35[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v14);
  v44 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v35[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v37(&v35[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v38, v14);
  *&v35[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v53;
  v35[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 3;
  *&v35[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v50;
  swift_beginAccess();
  *&v35[v44] = v49;
  v35[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v45 = type metadata accessor for WorkoutConfiguration();
  v56.receiver = v35;
  v56.super_class = v45;
  v46 = objc_msgSendSuper2(&v56, sel_init);

  v47 = *(v15 + 8);
  v47(v38, v14);
  v47(v55, v14);
  return v46;
}

uint64_t specialized static PacerWorkoutConfiguration.displayName.getter()
{
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = MEMORY[0x20F2E6C00](0xD00000000000001BLL, 0x800000020B45A330);
  v3 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

unint64_t lazy protocol witness table accessor for type PacerWorkoutConfiguration.CodingKeys and conformance PacerWorkoutConfiguration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PacerWorkoutConfiguration.CodingKeys and conformance PacerWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type PacerWorkoutConfiguration.CodingKeys and conformance PacerWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerWorkoutConfiguration.CodingKeys and conformance PacerWorkoutConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PacerWorkoutConfiguration.CodingKeys and conformance PacerWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type PacerWorkoutConfiguration.CodingKeys and conformance PacerWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerWorkoutConfiguration.CodingKeys and conformance PacerWorkoutConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PacerWorkoutConfiguration.CodingKeys and conformance PacerWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type PacerWorkoutConfiguration.CodingKeys and conformance PacerWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerWorkoutConfiguration.CodingKeys and conformance PacerWorkoutConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PacerWorkoutConfiguration.CodingKeys and conformance PacerWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type PacerWorkoutConfiguration.CodingKeys and conformance PacerWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerWorkoutConfiguration.CodingKeys and conformance PacerWorkoutConfiguration.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NLSessionActivityGoalError and conformance NLSessionActivityGoalError()
{
  result = lazy protocol witness table cache variable for type NLSessionActivityGoalError and conformance NLSessionActivityGoalError;
  if (!lazy protocol witness table cache variable for type NLSessionActivityGoalError and conformance NLSessionActivityGoalError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NLSessionActivityGoalError and conformance NLSessionActivityGoalError);
  }

  return result;
}

uint64_t _ss7Decoder_pWOcTm_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t _sSo21NLSessionActivityGoalCMaTm_0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

id specialized static PacerWorkoutConfiguration.canonical(activityType:)(void *a1)
{
  v49 = a1;
  v1 = type metadata accessor for UUID();
  v40 = *(v1 - 8);
  v2 = v40;
  v3 = *(v40 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v48 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v44 = &v40 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - v8;
  v10 = objc_opt_self();
  v11 = [v10 mileUnit];
  v12 = objc_opt_self();
  v13 = [v12 quantityWithUnit:v11 doubleValue:2.0];

  v14 = [v10 meterUnit];
  [v13 doubleValueForUnit_];
  v16 = v15;

  v17 = [v10 meterUnit];
  v18 = [v12 quantityWithUnit:v17 doubleValue:v16];
  v47 = v18;

  v19 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v18];
  v20 = [v10 minuteUnit];
  v21 = [v12 quantityWithUnit:v20 doubleValue:17.0];
  v45 = v21;

  v22 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v21];
  v46 = v9;
  UUID.init()();
  v43 = specialized Occurrence.__allocating_init(count:)(0);
  v23 = *(v2 + 16);
  v24 = v44;
  v23(v44, v9, v1);
  v25 = objc_allocWithZone(type metadata accessor for PacerWorkoutConfiguration());
  swift_beginAccess();
  v51 = v19;
  _sSo21NLSessionActivityGoalCMaTm_0(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  v42 = v19;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v51 = v22;
  v41 = v22;
  Published.init(initialValue:)();
  swift_endAccess();
  v26 = v48;
  v23(v48, v24, v1);
  *&v25[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v27 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  v28 = type metadata accessor for Date();
  v29 = *(*(v28 - 8) + 56);
  v29(&v25[v27], 1, 1, v28);
  v29(&v25[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v28);
  v30 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v31 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v31 - 8) + 56))(&v25[v30], 1, 1, v31);
  v32 = v40;
  (*(v40 + 56))(&v25[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v1);
  v33 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v25[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v23(&v25[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v26, v1);
  v34 = v49;
  *&v25[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v49;
  v25[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 3;
  *&v25[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v43;
  swift_beginAccess();
  *&v25[v33] = 0;
  v25[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v35 = type metadata accessor for WorkoutConfiguration();
  v50.receiver = v25;
  v50.super_class = v35;
  v36 = v34;
  v37 = objc_msgSendSuper2(&v50, sel_init);

  v38 = *(v32 + 8);
  v38(v26, v1);
  v38(v24, v1);
  v38(v46, v1);
  return v37;
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for PacerWorkoutConfiguration()
{
  result = type metadata singleton initialization cache for PacerWorkoutConfiguration;
  if (!type metadata singleton initialization cache for PacerWorkoutConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for PacerWorkoutConfiguration()
{
  type metadata accessor for Published<NLSessionActivityGoal>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<NLSessionActivityGoal>()
{
  if (!lazy cache variable for type metadata for Published<NLSessionActivityGoal>)
  {
    _sSo21NLSessionActivityGoalCMaTm_0(255, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<NLSessionActivityGoal>);
    }
  }
}

uint64_t getEnumTagSinglePayload for PacerWorkoutConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PacerWorkoutConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t WorkoutStep.goal.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

{
  return MEMORY[0x282136920]();
}

uint64_t WorkoutStep.displayName.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

{
  return MEMORY[0x282136910]();
}

uint64_t WorkoutStep.activeTargetZone.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
LABEL_18:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x20F2E7A20](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_18;
        }

        v5 = *(v2 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_13;
        }
      }

      swift_beginAccess();
      if (*(v5 + 40))
      {

        return v5;
      }

      ++v4;
    }

    while (v6 != v3);
  }

  return 0;
}

id WorkoutStep.activeHeartRateTargetZone.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
LABEL_29:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x20F2E7A20](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_29;
        }

        v5 = *(v2 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_13;
        }
      }

      swift_beginAccess();
      v7 = *(v5 + 40);

      if (v7 == 1)
      {
        goto LABEL_25;
      }

      ++v4;
    }

    while (v6 != v3);
  }

  v8 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
  swift_beginAccess();
  v9 = *(v0 + v8);
  if (v9)
  {
    v10 = *(v0 + v8);
  }

  else
  {
    if (one-time initialization token for defaultZone != -1)
    {
      swift_once();
    }

    v10 = static HeartRateTargetZone.defaultZone;
  }

  if (*(v10 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) && *(v10 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) != 1)
  {
    v13 = v9;

LABEL_25:

    return 0;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v12 = v9;

  if (v11)
  {

    return 0;
  }

  return v10;
}

char *WorkoutStep.activePowerZonesAlertTargetZone.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_55;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v3)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x20F2E7A20](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          v3 = __CocoaSet.count.getter();
          goto LABEL_3;
        }

        v5 = *(v2 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_13;
        }
      }

      swift_beginAccess();
      v7 = *(v5 + 40);

      if (v7 == 1)
      {

        return 0;
      }

      ++v4;
    }

    while (v6 != v3);
  }

  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v30 = *(v0 + v1);
    }

    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8)
  {
    v9 = 0;
    v1 = v2 & 0xC000000000000001;
    do
    {
      if (v1)
      {
        v10 = MEMORY[0x20F2E7A20](v9, v2);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v9 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        v10 = *(v2 + 8 * v9 + 32);

        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      swift_beginAccess();
      v12 = *(v10 + 40);

      if (v12 == 1)
      {
        goto LABEL_39;
      }

      ++v9;
    }

    while (v11 != v8);
  }

  v13 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
  swift_beginAccess();
  v14 = *(v0 + v13);
  if (v14)
  {
    v15 = *(v0 + v13);
  }

  else
  {
    if (one-time initialization token for defaultZone != -1)
    {
      swift_once();
    }

    v15 = static HeartRateTargetZone.defaultZone;
  }

  if (*(v15 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) && *(v15 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) != 1)
  {
    v18 = v14;

LABEL_39:
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v17 = v14;

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v19 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone;
  swift_beginAccess();
  v20 = *(v0 + v19);
  if (v20)
  {
    v21 = *(v0 + v19);
  }

  else
  {
    if (one-time initialization token for defaultZone != -1)
    {
      swift_once();
    }

    v21 = static PowerZonesAlertTargetZone.defaultZone;
  }

  v22 = &v21[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type];
  swift_beginAccess();
  v23 = *v22;
  v24 = *(v22 + 1);
  v25 = v22[16];
  v26 = v25 >> 6;
  if (v25 >> 6 > 1)
  {
    if (v26 != 2)
    {
      v28 = v20;
      outlined consume of PowerZonesAlertZoneType(v23, v24, v25);
      outlined consume of PowerZonesAlertZoneType(0, 0, 192);

      return 0;
    }
  }

  else if (v26)
  {
    outlined copy of PowerZonesAlertZoneType(v23, v24, v25);
  }

  v27 = v20;
  outlined consume of PowerZonesAlertZoneType(v23, v24, v25);
  outlined consume of PowerZonesAlertZoneType(0, 0, 192);
  outlined consume of PowerZonesAlertZoneType(v23, v24, v25);
  return v21;
}

uint64_t WorkoutStep.__allocating_init(_:goal:activityType:uuid:displayName:)(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v34 = a5;
  v35 = a6;
  v32 = a3;
  v33 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  v20 = *(v7 + 48);
  v21 = *(v7 + 52);
  v22 = swift_allocObject();
  LOBYTE(a1) = *a1;
  v23 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v37 = 0;
  v38 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  Published.init(initialValue:)();
  (*(v16 + 32))(v22 + v23, v19, v15);
  *(v22 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
  *(v22 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
  v24 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(v37) = 0;
  Published.init(initialValue:)();
  (*(v11 + 32))(v22 + v24, v14, v10);
  *(v22 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
  *(v22 + 16) = a1;
  swift_beginAccess();
  v36 = a2;
  _sSo21NLSessionActivityGoalCMaTm_1(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  v25 = a2;
  Published.init(initialValue:)();
  swift_endAccess();
  *(v22 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v32;
  v26 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid;
  v27 = type metadata accessor for UUID();
  v28 = *(v27 - 8);
  v29 = v22 + v26;
  v30 = v33;
  (*(v28 + 16))(v29, v33, v27);
  swift_getKeyPath();
  swift_getKeyPath();
  v37 = v34;
  v38 = v35;

  static Published.subscript.setter();

  (*(v28 + 8))(v30, v27);
  return v22;
}

uint64_t WorkoutStep.targetZones.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  swift_getKeyPath();
  swift_getKeyPath();
  v5 = static Published.subscript.modify();
  *v6 = !*v6;
  v5(v8, 0);
}

uint64_t WorkoutStep.heartRateTargetZone.setter(void *a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  v6 = a1;

  swift_getKeyPath();
  swift_getKeyPath();
  v7 = static Published.subscript.modify();
  *v8 = !*v8;
  v7(v10, 0);
}

uint64_t static WorkoutStep.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return specialized WorkoutStep.isEquivalent(to:)(a2, a1);
}

id WorkoutStep.heartRateTargetZoneWithDefault.getter(uint64_t *a1, void *a2, id *a3)
{
  v6 = *a1;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (v7)
  {
    v8 = *(v3 + v6);
  }

  else
  {
    if (*a2 != -1)
    {
      swift_once();
    }

    v8 = *a3;
    v7 = 0;
  }

  v9 = v7;
  return v8;
}

uint64_t WorkoutStep.displayName.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*WorkoutStep.targetZones.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  return WorkoutStep.targetZones.modify;
}

WorkoutCore::StepType_optional __swiftcall StepType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance StepType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance StepType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t StepType.description.getter()
{
  v1 = 1802661751;
  v2 = 0x70556D726177;
  if (*v0 != 2)
  {
    v2 = 0x6E776F446C6F6F63;
  }

  if (*v0)
  {
    v1 = 1953719666;
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StepType()
{
  v1 = 1802661751;
  v2 = 0x70556D726177;
  if (*v0 != 2)
  {
    v2 = 0x6E776F446C6F6F63;
  }

  if (*v0)
  {
    v1 = 1953719666;
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

uint64_t WorkoutStep.isEquivalent(to:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return specialized WorkoutStep.isEquivalent(to:)(v4, v1, v2, v3);
}

uint64_t WorkoutStep.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 1684632949;
    v7 = 0xD000000000000018;
    if (a1 != 7)
    {
      v7 = 0xD00000000000001ELL;
    }

    if (a1 != 6)
    {
      v6 = v7;
    }

    if (a1 <= 8u)
    {
      return v6;
    }

    else
    {
      return 0x6F5A746567726174;
    }
  }

  else
  {
    v1 = 0x6570795470657473;
    v2 = 0x7669746341736168;
    v3 = 0x7974697669746361;
    if (a1 != 4)
    {
      v3 = 0x6F5A746567726174;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x4E79616C70736964;
    if (a1 != 1)
    {
      v4 = 1818324839;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance WorkoutStep.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = WorkoutStep.CodingKeys.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == WorkoutStep.CodingKeys.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutStep.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  WorkoutStep.CodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WorkoutStep.CodingKeys()
{
  WorkoutStep.CodingKeys.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutStep.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  WorkoutStep.CodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance WorkoutStep.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized WorkoutStep.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WorkoutStep.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = WorkoutStep.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkoutStep.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized WorkoutStep.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkoutStep.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkoutStep.CodingKeys and conformance WorkoutStep.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkoutStep.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkoutStep.CodingKeys and conformance WorkoutStep.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutStep.stepType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t WorkoutStep.stepType.setter(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

double key path getter for WorkoutStep.displayName : WorkoutStep@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t key path setter for WorkoutStep.displayName : WorkoutStep(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*WorkoutStep.displayName.modify(uint64_t *a1))()
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
  return WorkoutStep.displayName.modify;
}

uint64_t key path setter for WorkoutStep.$displayName : WorkoutStep(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd, &_s7Combine9PublishedV9PublisherVySSSg_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t WorkoutStep.$displayName.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd, &_s7Combine9PublishedV9PublisherVySSSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutStep.$displayName.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd, &_s7Combine9PublishedV9PublisherVySSSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStep.$displayName.modify;
}

uint64_t key path getter for WorkoutStep.goal : WorkoutStep@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for WorkoutStep.goal : WorkoutStep(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v2;
  return static Published.subscript.setter();
}

uint64_t WorkoutStep.goal.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*WorkoutStep.goal.modify(uint64_t *a1))()
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
  return WorkoutStep.goal.modify;
}

uint64_t key path setter for WorkoutStep.$goal : WorkoutStep(uint64_t a1, uint64_t *a2)
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

uint64_t WorkoutStep.$goal.setter(uint64_t a1)
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

uint64_t (*WorkoutStep.$goal.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__goal;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStep.$goal.modify;
}

uint64_t WorkoutStep.targetZones.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t key path setter for WorkoutStep.targetZones : WorkoutStep(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;

  swift_getKeyPath();
  swift_getKeyPath();
  v6 = static Published.subscript.modify();
  *v7 = !*v7;
  v6(v9, 0);
}

uint64_t (*WorkoutStep.forcePublisherUpdate.modify(uint64_t *a1))()
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
  return WorkoutStep.forcePublisherUpdate.modify;
}

void WorkoutStep.displayName.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

id WorkoutStep.activityType.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void WorkoutStep.activityType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *WorkoutStep.heartRateTargetZone.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t (*WorkoutStep.heartRateTargetZone.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  return WorkoutStep.heartRateTargetZone.modify;
}

uint64_t WorkoutStep.forcePublisherUpdate.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for WorkoutStep.forcePublisherUpdate : WorkoutStep@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for WorkoutStep.forcePublisherUpdate : WorkoutStep(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t WorkoutStep.forcePublisherUpdate.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t WorkoutStep.$displayName.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for WorkoutStep.$displayName : WorkoutStep(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for WorkoutStep.$forcePublisherUpdate : WorkoutStep(uint64_t a1, uint64_t *a2)
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

uint64_t WorkoutStep.$forcePublisherUpdate.setter(uint64_t a1)
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

uint64_t (*WorkoutStep.$forcePublisherUpdate.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStep.$forcePublisherUpdate.modify;
}

void WorkoutStep.$displayName.modify(uint64_t a1, char a2)
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

void *WorkoutStep.powerZonesAlertTargetZone.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t key path setter for WorkoutStep.heartRateTargetZone : WorkoutStep(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;

  swift_getKeyPath();
  swift_getKeyPath();
  v10 = static Published.subscript.modify();
  *v11 = !*v11;
  v10(v13, 0);
}

uint64_t (*WorkoutStep.powerZonesAlertTargetZone.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  return WorkoutStep.powerZonesAlertTargetZone.modify;
}

void WorkoutStep.targetZones.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[4];
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = static Published.subscript.modify();
    *v6 = !*v6;
    v5(v3, 0);
  }

  free(v3);
}

uint64_t WorkoutStep.hash(into:)(uint64_t a1)
{
  WorkoutStep.equivalentHash(into:)(a1);
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  return dispatch thunk of Hashable.hash(into:)();
}

void WorkoutStep.equivalentHash(into:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  MEMORY[0x20F2E7FF0](*(v1 + 16));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  NSObject.hash(into:)();

  v4 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v5 = *(v2 + v4);

  specialized Array<A>.hash(into:)(a1, v5);

  v6 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
  swift_beginAccess();
  v7 = *(v2 + v6);
  NSObject.hash(into:)();

  v8 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
  swift_beginAccess();
  v9 = *(v2 + v8);
  if (v9)
  {
    Hasher._combine(_:)(1u);
    v10 = v9;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v11 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone;
  swift_beginAccess();
  v12 = *(v2 + v11);
  if (v12)
  {
    Hasher._combine(_:)(1u);
    v13 = v12;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v14)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

uint64_t WorkoutStep.init(_:goal:activityType:uuid:displayName:)(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v28 = a3;
  v29 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  LOBYTE(a1) = *a1;
  v19 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v33 = 0;
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  Published.init(initialValue:)();
  (*(v15 + 32))(v6 + v19, v18, v14);
  *(v6 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
  *(v6 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
  v20 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(v33) = 0;
  Published.init(initialValue:)();
  (*(v10 + 32))(v6 + v20, v13, v9);
  *(v6 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
  *(v6 + 16) = a1;
  swift_beginAccess();
  v32 = a2;
  _sSo21NLSessionActivityGoalCMaTm_1(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  v21 = a2;
  Published.init(initialValue:)();
  swift_endAccess();
  *(v6 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v28;
  v22 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid;
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  v25 = v6 + v22;
  v26 = v29;
  (*(v24 + 16))(v25, v29, v23);
  swift_getKeyPath();
  swift_getKeyPath();
  v33 = v30;
  v34 = v31;

  static Published.subscript.setter();

  (*(v24 + 8))(v26, v23);
  return v6;
}

uint64_t WorkoutStep.encode(to:)(void *a1)
{
  v3 = v1;
  v77[6] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore0D4StepC10CodingKeys33_6737BB91B09B042F2A7EB5B5DBE3F4DFLLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore0D4StepC10CodingKeys33_6737BB91B09B042F2A7EB5B5DBE3F4DFLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v56 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WorkoutStep.CodingKeys and conformance WorkoutStep.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_beginAccess();
  LOBYTE(v77[0]) = *(v3 + 16);
  LOBYTE(v76[0]) = 0;
  lazy protocol witness table accessor for type StepType and conformance StepType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v77[0]) = 6;
    type metadata accessor for UUID();
    _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    LOBYTE(v76[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    lazy protocol witness table accessor for type String? and conformance <A> A?();
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v13 = objc_opt_self();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v14 = v77[0];
    v77[0] = 0;
    v15 = [v13 archivedDataWithRootObject:v14 requiringSecureCoding:1 error:v77];

    v16 = v77[0];
    if (v15)
    {
      v67 = v13;
      v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v77[0] = v17;
      v77[1] = v19;
      LOBYTE(v76[0]) = 2;
      lazy protocol witness table accessor for type Data and conformance Data();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v68 = v19;
      v66 = v17;
      LOBYTE(v77[0]) = 3;
      KeyedEncodingContainer.encode(_:forKey:)();
      v21 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
      swift_beginAccess();
      v22 = *(v3 + v21);
      v76[0] = 0;
      v23 = [v67 archivedDataWithRootObject:v22 requiringSecureCoding:1 error:v76];
      v24 = v76[0];
      v25 = v68;
      if (v23)
      {
        v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        v57 = v26;
        v76[0] = v26;
        v76[1] = v28;
        v75 = 4;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v30 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
        swift_beginAccess();
        v31 = *(v3 + v30);
        v32 = v66;
        v33 = v68;
        if (v31 >> 62)
        {
          v34 = __CocoaSet.count.getter();
        }

        else
        {
          v34 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v62 = v28;
        if (v34)
        {
          v61 = v31 & 0xC000000000000001;
          v60 = v31 & 0xFFFFFFFFFFFFFF8;
          v67 = MEMORY[0x277D84F90];
          v58 = v34;
          v35 = 0;
          v59 = v31;
          do
          {
            if (v61)
            {
              v36 = MEMORY[0x20F2E7A20](v35, v31);
            }

            else
            {
              if (v35 >= *(v60 + 16))
              {
                goto LABEL_28;
              }

              v36 = *(v31 + 8 * v35 + 32);
            }

            v65 = v35;
            v64 = v35 + 1;
            if (__OFADD__(v35, 1))
            {
              __break(1u);
LABEL_28:
              __break(1u);
            }

            v37 = *(v36 + 16);
            swift_beginAccess();
            v38 = *(v36 + 24);
            swift_beginAccess();
            v39 = *(v36 + 32);
            v40 = type metadata accessor for JSONEncoder();
            v41 = *(v40 + 48);
            v42 = *(v40 + 52);
            swift_allocObject();
            JSONEncoder.init()();
            LOBYTE(v72) = v37;
            v73 = v38;
            v74 = v39;
            lazy protocol witness table accessor for type TargetZone.TargetZoneHolder and conformance TargetZone.TargetZoneHolder();
            v43 = dispatch thunk of JSONEncoder.encode<A>(_:)();
            v45 = v44;
            v63 = v43;

            v46 = v67;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v46 + 2) + 1, 1, v46);
            }

            v47 = v46;
            v48 = *(v46 + 2);
            v67 = v47;
            v49 = *(v47 + 3);
            if (v48 >= v49 >> 1)
            {
              v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v48 + 1, 1, v67);
            }

            v50 = v67;
            *(v67 + 2) = v48 + 1;
            v51 = &v50[16 * v48];
            *(v51 + 4) = v63;
            *(v51 + 5) = v45;
            v35 = v65 + 1;
            v33 = v68;
            v32 = v66;
            v31 = v59;
          }

          while (v64 != v58);
        }

        else
        {
          v67 = MEMORY[0x277D84F90];
        }

        v72 = v67;
        LOBYTE(v71) = 5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
        lazy protocol witness table accessor for type [Data] and conformance <A> [A](&lazy protocol witness table cache variable for type [Data] and conformance <A> [A], lazy protocol witness table accessor for type Data and conformance Data);
        KeyedEncodingContainer.encode<A>(_:forKey:)();

        v52 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
        swift_beginAccess();
        v71 = *(v3 + v52);
        LOBYTE(v70) = 7;
        v53 = v71;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore19HeartRateTargetZoneCSgMd, &_s11WorkoutCore19HeartRateTargetZoneCSgMR);
        lazy protocol witness table accessor for type HeartRateTargetZone? and conformance <A> A?();
        KeyedEncodingContainer.encode<A>(_:forKey:)();

        v54 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone;
        swift_beginAccess();
        v70 = *(v3 + v54);
        v69 = 8;
        v55 = v70;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore25PowerZonesAlertTargetZoneCSgMd, &_s11WorkoutCore25PowerZonesAlertTargetZoneCSgMR);
        lazy protocol witness table accessor for type PowerZonesAlertTargetZone? and conformance <A> A?();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        outlined consume of Data._Representation(v57, v62);
        outlined consume of Data._Representation(v32, v33);
      }

      else
      {
        v29 = v24;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        outlined consume of Data._Representation(v66, v25);
      }
    }

    else
    {
      v20 = v16;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  result = (*(v6 + 8))(v9, v5);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WorkoutStep.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  WorkoutStep.init(from:)(a1);
  return v5;
}

_BYTE *WorkoutStep.init(from:)(uint64_t *a1)
{
  v2 = v1;
  v92 = *v1;
  v4 = type metadata accessor for UUID();
  v88 = *(v4 - 8);
  v89 = v4;
  v5 = *(v88 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v85 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v83 = &v80 - v8;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore0D4StepC10CodingKeys33_6737BB91B09B042F2A7EB5B5DBE3F4DFLLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore0D4StepC10CodingKeys33_6737BB91B09B042F2A7EB5B5DBE3F4DFLLOGMR);
  v87 = *(v86 - 8);
  v9 = *(v87 + 64);
  MEMORY[0x28223BE20](v86);
  v97 = &v80 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v80 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v80 - v19;
  v21 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v103 = 0;
  v104 = 0;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  Published.init(initialValue:)();
  v96 = v17;
  v22 = *(v17 + 32);
  v98 = v21;
  v99 = v16;
  v23 = &v2[v21];
  v24 = v2;
  v22(v23, v20, v16);
  v93 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  *&v2[OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones] = MEMORY[0x277D84F90];
  v25 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
  *&v24[OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone] = 0;
  v26 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(v103) = 0;
  Published.init(initialValue:)();
  v90 = v12;
  v91 = v11;
  (*(v12 + 32))(&v24[v26], v15, v11);
  v27 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone;
  *&v24[OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone] = 0;
  v28 = a1[3];
  v29 = a1[4];
  v95 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  lazy protocol witness table accessor for type WorkoutStep.CodingKeys and conformance WorkoutStep.CodingKeys();
  v30 = v94;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v30)
  {
    v31 = 0;
    v32 = 0;
    v33 = v99;
    v34 = v96;
  }

  else
  {
    v35 = v85;
    LOBYTE(v101) = 0;
    lazy protocol witness table accessor for type StepType and conformance StepType();
    v36 = v86;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v82 = v25;
    v24[16] = v103;
    LOBYTE(v103) = 1;
    v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v38 = v96;
    v45 = v37;
    v81 = v27;
    v94 = v24;
    v46 = v98;
    v48 = v47;
    swift_beginAccess();
    (*(v38 + 8))(&v94[v46], v99);
    v101 = v45;
    v102 = v48;
    v24 = v94;
    Published.init(initialValue:)();
    swift_endAccess();
    LOBYTE(v103) = 6;
    v49 = KeyedDecodingContainer.contains(_:)();
    if (v49)
    {
      LOBYTE(v103) = 6;
      _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v35 = v83;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
    }

    else
    {
      UUID.init()();
    }

    (*(v88 + 32))(&v24[OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid], v35, v89);
    LOBYTE(v101) = 2;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v50 = v103;
    v51 = v104;
    _sSo21NLSessionActivityGoalCMaTm_1(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
    _sSo21NLSessionActivityGoalCMaTm_1(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
    v52 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    v84 = v50;
    v85 = v51;
    if (v52)
    {
      v53 = v52;
      swift_beginAccess();
      v101 = v53;
      v54 = v53;
      Published.init(initialValue:)();
      swift_endAccess();
      LOBYTE(v103) = 3;
      v55 = KeyedDecodingContainer.decode(_:forKey:)();
      v57 = v99;
      v34 = v96;
      if ((v55 & 1) == 0)
      {
        lazy protocol witness table accessor for type WorkoutStepError and conformance WorkoutStepError();
        swift_allocError();
        *v58 = 0xD000000000000031;
        v58[1] = 0x800000020B45A370;
        swift_willThrow();
        outlined consume of Data._Representation(v84, v85);

        (*(v87 + 8))(v97, v36);
        v31 = 1;
        v32 = 1;
        v33 = v57;
        goto LABEL_4;
      }

      LOBYTE(v101) = 4;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v59 = v103;
      v60 = v104;
      _sSo21NLSessionActivityGoalCMaTm_1(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
      v83 = v59;
      v61 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      v62 = v83;
      v80 = v60;
      v63 = v54;
      v64 = v36;
      if (v61)
      {
        *&v24[OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType] = v61;
        LOBYTE(v103) = 9;
        v65 = v61;
        if (KeyedDecodingContainer.contains(_:)())
        {
          v66 = specialized WorkoutStep.decodeTargetZonesVersion1(values:)(v97);
        }

        else
        {
          v66 = specialized WorkoutStep.decodeTargetZonesVersion2(values:)();
        }

        v68 = v66;
        v70 = v93;
        v69 = v94;
        swift_beginAccess();
        v71 = *&v69[v70];
        *&v69[v70] = v68;

        type metadata accessor for HeartRateTargetZone();
        LOBYTE(v101) = 7;
        _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type HeartRateTargetZone and conformance HeartRateTargetZone, type metadata accessor for HeartRateTargetZone);
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v72 = v100;
        v73 = v94;
        v74 = v82;
        swift_beginAccess();
        v75 = *&v73[v74];
        *&v73[v74] = v72;

        LOBYTE(v100) = 8;
        if (KeyedDecodingContainer.contains(_:)())
        {
          type metadata accessor for PowerZonesAlertTargetZone();
          LOBYTE(v100) = 8;
          _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type PowerZonesAlertTargetZone and conformance PowerZonesAlertTargetZone, type metadata accessor for PowerZonesAlertTargetZone);
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          (*(v87 + 8))(v97, v64);

          outlined consume of Data._Representation(v84, v85);
          outlined consume of Data._Representation(v62, v80);

          v76 = v105;
          v77 = v94;
          v78 = v81;
          swift_beginAccess();
          v79 = *&v77[v78];
          *&v77[v78] = v76;
        }

        else
        {
          (*(v87 + 8))(v97, v64);

          outlined consume of Data._Representation(v84, v85);
          outlined consume of Data._Representation(v62, v80);
        }

        __swift_destroy_boxed_opaque_existential_1(v95);
        return v94;
      }

      lazy protocol witness table accessor for type WorkoutStepError and conformance WorkoutStepError();
      swift_allocError();
      *v67 = 0xD00000000000001ELL;
      v67[1] = 0x800000020B45A3B0;
      swift_willThrow();
      outlined consume of Data._Representation(v84, v85);
      outlined consume of Data._Representation(v62, v80);

      (*(v87 + 8))(v97, v36);
      v31 = 1;
    }

    else
    {
      lazy protocol witness table accessor for type WorkoutStepError and conformance WorkoutStepError();
      swift_allocError();
      *v56 = 0xD00000000000001ELL;
      v56[1] = 0x800000020B45A350;
      swift_willThrow();
      outlined consume of Data._Representation(v84, v85);
      (*(v87 + 8))(v97, v36);
      v31 = 0;
    }

    v32 = 1;
    v33 = v99;
    v34 = v96;
  }

LABEL_4:
  (*(v34 + 8))(&v24[v98], v33);
  if (v31)
  {
    v39 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__goal;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
    (*(*(v40 - 8) + 8))(&v24[v39], v40);
  }

  v41 = *&v24[v93];

  if (v32)
  {
    (*(v88 + 8))(&v24[OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid], v89);
  }

  (*(v90 + 8))(&v24[OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate], v91);
  v42 = *(*v24 + 48);
  v43 = *(*v24 + 52);
  swift_deallocPartialClassInstance();
  __swift_destroy_boxed_opaque_existential_1(v95);
  return v24;
}

uint64_t WorkoutStep.hasActiveTargetZone.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_46;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v3)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x20F2E7A20](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          v3 = __CocoaSet.count.getter();
          goto LABEL_3;
        }

        v5 = *(v2 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_13;
        }
      }

      swift_beginAccess();
      v7 = *(v5 + 40);

      if (v7 == 1)
      {

        return 1;
      }

      ++v4;
    }

    while (v6 != v3);
  }

  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v20 = *(v0 + v1);
    }

    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8)
  {
    v9 = 0;
    v1 = v2 & 0xC000000000000001;
    do
    {
      if (v1)
      {
        v10 = MEMORY[0x20F2E7A20](v9, v2);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v9 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v10 = *(v2 + 8 * v9 + 32);

        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      swift_beginAccess();
      v12 = *(v10 + 40);

      if (v12 == 1)
      {
        goto LABEL_40;
      }

      ++v9;
    }

    while (v11 != v8);
  }

  v13 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
  swift_beginAccess();
  v14 = *(v0 + v13);
  if (v14)
  {
    v15 = *(v0 + v13);
  }

  else
  {
    if (one-time initialization token for defaultZone != -1)
    {
      swift_once();
    }

    v15 = static HeartRateTargetZone.defaultZone;
  }

  if (!*(v15 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) || *(v15 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) == 1)
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v17 = v14;

    if ((v16 & 1) == 0)
    {
      return 1;
    }

    result = WorkoutStep.activePowerZonesAlertTargetZone.getter();
    if (!result)
    {
      return result;
    }

LABEL_41:

    return 1;
  }

  v19 = v14;

LABEL_40:

  result = WorkoutStep.activePowerZonesAlertTargetZone.getter();
  if (result)
  {
    goto LABEL_41;
  }

  return result;
}

uint64_t WorkoutStep.activeTargetZoneLabel(formattingManager:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5 >> 62)
  {
    goto LABEL_48;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v6)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x20F2E7A20](v7, v5);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          v6 = __CocoaSet.count.getter();
          goto LABEL_3;
        }

        v8 = *(v5 + 8 * v7 + 32);

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_13;
        }
      }

      swift_beginAccess();
      if (*(v8 + 40))
      {

        v46 = 0x3030202010101uLL >> (8 * *(v8 + 16));
        v18 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
        swift_beginAccess();
        v19 = *(v2 + v18);
        v20 = TargetZone.PrimaryType.displayString(activityType:)(v19);
        v22 = v21;

        v23 = *(v2 + v18);
        v24 = TargetZone.displayString(formattingManager:activityType:)(a1, v23);
        v26 = v25;

        type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v28 = [objc_opt_self() bundleForClass_];
        v29 = MEMORY[0x20F2E6C00](0xD000000000000027, 0x800000020B45A3D0);
        v30 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
        v31 = [v28 localizedStringForKey:v29 value:0 table:v30];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_20B4282E0;
        v33 = MEMORY[0x277D837D0];
        *(v32 + 56) = MEMORY[0x277D837D0];
        v34 = lazy protocol witness table accessor for type String and conformance String();
        *(v32 + 32) = v20;
        *(v32 + 40) = v22;
        *(v32 + 96) = v33;
        *(v32 + 104) = v34;
        *(v32 + 64) = v34;
        *(v32 + 72) = v24;
        *(v32 + 80) = v26;
        v35 = static String.localizedStringWithFormat(_:_:)();

        return v35;
      }

      ++v7;
    }

    while (v9 != v6);
  }

  v5 = *(v2 + v4);
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v45 = *(v2 + v4);
    }

    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10)
  {
    v11 = 0;
    v4 = v5 & 0xC000000000000001;
    do
    {
      if (v4)
      {
        v12 = MEMORY[0x20F2E7A20](v11, v5);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v11 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v12 = *(v5 + 8 * v11 + 32);

        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      swift_beginAccess();
      v14 = *(v12 + 40);

      if (v14 == 1)
      {
        goto LABEL_40;
      }

      ++v11;
    }

    while (v13 != v10);
  }

  v15 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
  swift_beginAccess();
  v16 = *(v2 + v15);
  if (v16)
  {
    v17 = *(v2 + v15);
  }

  else
  {
    if (one-time initialization token for defaultZone != -1)
    {
      swift_once();
    }

    v17 = static HeartRateTargetZone.defaultZone;
  }

  if (v17[OBJC_IVAR___WOCoreHeartRateTargetZone_type] && v17[OBJC_IVAR___WOCoreHeartRateTargetZone_type] != 1)
  {
    v41 = v16;

LABEL_40:
  }

  else
  {
    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v37 = v16;

    if ((v36 & 1) == 0)
    {
      v38 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
      swift_beginAccess();
      v39 = *(v2 + v38);
      v40 = specialized HeartRateTargetZone.displayString(formattingManager:activityType:)(a1);
      goto LABEL_43;
    }
  }

  v42 = WorkoutStep.activePowerZonesAlertTargetZone.getter();
  if (!v42)
  {
    return 0;
  }

  v17 = v42;
  v43 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
  swift_beginAccess();
  v39 = *(v2 + v43);
  v40 = PowerZonesAlertTargetZone.displayString(formattingManager:activityType:)(a1, v39);
LABEL_43:
  v35 = v40;

  return v35;
}

uint64_t WorkoutStep.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__goal;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones);

  v6 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  v8 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  return v0;
}

uint64_t WorkoutStep.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__goal;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones);

  v6 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  v8 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  v10 = *(*v0 + 48);
  v11 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Int WorkoutStep.hashValue.getter()
{
  Hasher.init(_seed:)();
  WorkoutStep.equivalentHash(into:)(v1);
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

_BYTE *protocol witness for Decodable.init(from:) in conformance WorkoutStep@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = WorkoutStep.init(from:)(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutStep()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  WorkoutStep.equivalentHash(into:)(v3);
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WorkoutStep(uint64_t a1)
{
  v2 = *v1;
  WorkoutStep.equivalentHash(into:)(a1);
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutStep()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  WorkoutStep.equivalentHash(into:)(v3);
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Equivalent.isEquivalent(to:) in conformance WorkoutStep(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);

  return specialized WorkoutStep.isEquivalent(to:)(v5, v2, v3, v4);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance WorkoutStep@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance WorkoutStep(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return specialized WorkoutStep.isEquivalent(to:)(v3, v2);
}

uint64_t WorkoutStep.description.getter()
{
  v1 = v0;
  swift_beginAccess();
  v2 = 1802661751;
  v3 = 0xE600000000000000;
  v4 = 0x70556D726177;
  if (*(v0 + 16) != 2)
  {
    v4 = 0x6E776F446C6F6F63;
    v3 = 0xE800000000000000;
  }

  if (*(v0 + 16))
  {
    v2 = 1953719666;
  }

  if (*(v0 + 16) <= 1u)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*(v0 + 16) <= 1u)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x20F2E6D80](v5, v6);

  MEMORY[0x20F2E6D80](8236, 0xE200000000000000);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = [0x3D65707974 description];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  MEMORY[0x20F2E6D80](v8, v10);

  v11 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v12 = *(v0 + v11);
  if (v12 >> 62)
  {
    goto LABEL_58;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:

  if (v13)
  {
    v14 = 0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x20F2E7A20](v14, v12);
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_23:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          v13 = __CocoaSet.count.getter();
          goto LABEL_13;
        }

        v15 = *(v12 + 8 * v14 + 32);

        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_23;
        }
      }

      swift_beginAccess();
      if (*(v15 + 40))
      {

        v25 = TargetZone.description.getter();
        MEMORY[0x20F2E6D80](v25);

        MEMORY[0x20F2E6D80](0x3D7472656C61202CLL, 0xE800000000000000);

        goto LABEL_54;
      }

      ++v14;
    }

    while (v16 != v13);
  }

  v12 = *(v1 + v11);
  if (v12 >> 62)
  {
    if (v12 < 0)
    {
      v37 = *(v1 + v11);
    }

    v17 = __CocoaSet.count.getter();
  }

  else
  {
    v17 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v17)
  {
    v18 = 0;
    v11 = v12 & 0xC000000000000001;
    do
    {
      if (v11)
      {
        v19 = MEMORY[0x20F2E7A20](v18, v12);
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v18 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }

        v19 = *(v12 + 8 * v18 + 32);

        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
LABEL_36:
          __break(1u);
          break;
        }
      }

      swift_beginAccess();
      v21 = *(v19 + 40);

      if (v21 == 1)
      {
        goto LABEL_50;
      }

      ++v18;
    }

    while (v20 != v17);
  }

  v22 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
  swift_beginAccess();
  v23 = *(v1 + v22);
  if (v23)
  {
    v24 = *(v1 + v22);
  }

  else
  {
    if (one-time initialization token for defaultZone != -1)
    {
      swift_once();
    }

    v24 = static HeartRateTargetZone.defaultZone;
  }

  if (v24[OBJC_IVAR___WOCoreHeartRateTargetZone_type] && v24[OBJC_IVAR___WOCoreHeartRateTargetZone_type] != 1)
  {
    v29 = v23;

LABEL_50:
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v27 = v23;

    if ((v26 & 1) == 0)
    {
      v28 = [v24 description];
      goto LABEL_53;
    }
  }

  v30 = WorkoutStep.activePowerZonesAlertTargetZone.getter();
  if (!v30)
  {
    goto LABEL_55;
  }

  v24 = v30;
  v28 = [v30 description];
LABEL_53:
  v31 = v28;
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  MEMORY[0x20F2E6D80](v32, v34);

  MEMORY[0x20F2E6D80](0x3D7472656C61202CLL, 0xE800000000000000);

LABEL_54:

LABEL_55:
  v35 = UUID.uuidString.getter();
  MEMORY[0x20F2E6D80](v35);

  MEMORY[0x20F2E6D80](0x3D64697575202CLL, 0xE700000000000000);

  return 0x3D65707974;
}

uint64_t WorkoutStep.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t protocol witness for Identifiable.id.getter in conformance WorkoutStep@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t static WorkoutStep.canonical()()
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v25 = *(v27 - 8);
  v1 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  v3 = &v22 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v26 = type metadata accessor for UUID();
  v9 = *(v26 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v26);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:37 isIndoor:0];
  _sSo21NLSessionActivityGoalCMaTm_1(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  v13 = static NLSessionActivityGoal.canonical()();
  UUID.init()();
  v24 = v0;
  v14 = *(v0 + 48);
  v15 = *(v0 + 52);
  v16 = swift_allocObject();
  v17 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v29 = 0;
  v30 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  Published.init(initialValue:)();
  (*(v5 + 32))(v16 + v17, v8, v4);
  *(v16 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
  *(v16 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
  v18 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(v29) = 0;
  Published.init(initialValue:)();
  (*(v25 + 32))(v16 + v18, v3, v27);
  *(v16 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
  *(v16 + 16) = 0;
  swift_beginAccess();
  v28 = v13;
  v19 = v13;
  Published.init(initialValue:)();
  swift_endAccess();
  *(v16 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v23;
  v20 = v26;
  (*(v9 + 16))(v16 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid, v12, v26);
  swift_getKeyPath();
  swift_getKeyPath();
  v29 = 0;
  v30 = 0;

  static Published.subscript.setter();

  (*(v9 + 8))(v12, v20);
  return swift_dynamicCastClassUnconditional();
}

uint64_t protocol witness for static Canonical.canonical() in conformance WorkoutStep@<X0>(uint64_t *a1@<X8>)
{
  result = static WorkoutStep.canonical()();
  *a1 = result;
  return result;
}

uint64_t specialized WorkoutStep.isEquivalent(to:)(uint64_t a1, uint64_t a2)
{
  v37[3] = *a2;
  v37[4] = &protocol witness table for WorkoutStep;
  v37[0] = a1;
  outlined init with copy of Equivalent(v37, v36);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10Equivalent_pMd, &_s11WorkoutCore10Equivalent_pMR);
  if (!swift_dynamicCast())
  {
    goto LABEL_19;
  }

  swift_beginAccess();
  v3 = *(v35 + 16);
  swift_beginAccess();
  if (v3 != *(a2 + 16))
  {
    goto LABEL_18;
  }

  _sSo21NLSessionActivityGoalCMaTm_1(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = static NSObject.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    goto LABEL_18;
  }

  v5 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v6 = *(v35 + v5);
  v7 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v8 = *(a2 + v7);

  v9 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore10TargetZoneC_Tt1g5(v6, v8);

  if ((v9 & 1) == 0)
  {
    goto LABEL_18;
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
  swift_beginAccess();
  v11 = *(v35 + v10);
  v12 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
  swift_beginAccess();
  v13 = *(a2 + v12);
  v14 = v11;
  v15 = v13;
  v16 = static NSObject.== infix(_:_:)();

  if ((v16 & 1) == 0)
  {
    goto LABEL_18;
  }

  v17 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
  swift_beginAccess();
  v18 = *(v35 + v17);
  v19 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
  swift_beginAccess();
  v20 = *(a2 + v19);
  if (v18)
  {
    if (!v20)
    {
      goto LABEL_18;
    }

    type metadata accessor for HeartRateTargetZone();
    v21 = v20;
    v22 = v18;
    v23 = static NSObject.== infix(_:_:)();

    if ((v23 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v20)
  {
    goto LABEL_18;
  }

  v24 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone;
  swift_beginAccess();
  v25 = *(v35 + v24);
  v26 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone;
  swift_beginAccess();
  v27 = *(a2 + v26);
  if (v25)
  {
    if (v27)
    {
      type metadata accessor for PowerZonesAlertTargetZone();
      v28 = v27;
      v29 = v25;
      v30 = static NSObject.== infix(_:_:)();

      if (v30)
      {
        goto LABEL_14;
      }
    }

LABEL_18:

LABEL_19:
    v31 = 0;
    goto LABEL_20;
  }

  if (v27)
  {
    goto LABEL_18;
  }

LABEL_14:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v33)
  {
  }

  v31 = 1;
LABEL_20:
  __swift_destroy_boxed_opaque_existential_1(v37);
  return v31 & 1;
}

uint64_t specialized WorkoutStep.isEquivalent(to:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v43[3] = a3;
  v43[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  outlined init with copy of Equivalent(v43, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10Equivalent_pMd, &_s11WorkoutCore10Equivalent_pMR);
  if (!swift_dynamicCast())
  {
    goto LABEL_19;
  }

  swift_beginAccess();
  v9 = *(v41 + 16);
  swift_beginAccess();
  if (v9 != *(a2 + 16))
  {
    goto LABEL_18;
  }

  _sSo21NLSessionActivityGoalCMaTm_1(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = static NSObject.== infix(_:_:)();

  if ((v10 & 1) == 0)
  {
    goto LABEL_18;
  }

  v11 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v12 = *(v41 + v11);
  v13 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v14 = *(a2 + v13);

  v15 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore10TargetZoneC_Tt1g5(v12, v14);

  if ((v15 & 1) == 0)
  {
    goto LABEL_18;
  }

  v16 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
  swift_beginAccess();
  v17 = *(v41 + v16);
  v18 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
  swift_beginAccess();
  v19 = *(a2 + v18);
  v20 = v17;
  v21 = v19;
  v22 = static NSObject.== infix(_:_:)();

  if ((v22 & 1) == 0)
  {
    goto LABEL_18;
  }

  v23 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
  swift_beginAccess();
  v24 = *(v41 + v23);
  v25 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
  swift_beginAccess();
  v26 = *(a2 + v25);
  if (v24)
  {
    if (!v26)
    {
      goto LABEL_18;
    }

    type metadata accessor for HeartRateTargetZone();
    v27 = v26;
    v28 = v24;
    v29 = static NSObject.== infix(_:_:)();

    if ((v29 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v26)
  {
    goto LABEL_18;
  }

  v30 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone;
  swift_beginAccess();
  v31 = *(v41 + v30);
  v32 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone;
  swift_beginAccess();
  v33 = *(a2 + v32);
  if (v31)
  {
    if (v33)
    {
      type metadata accessor for PowerZonesAlertTargetZone();
      v34 = v33;
      v35 = v31;
      v36 = static NSObject.== infix(_:_:)();

      if (v36)
      {
        goto LABEL_14;
      }
    }

LABEL_18:

LABEL_19:
    v37 = 0;
    goto LABEL_20;
  }

  if (v33)
  {
    goto LABEL_18;
  }

LABEL_14:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v39)
  {
  }

  v37 = 1;
LABEL_20:
  __swift_destroy_boxed_opaque_existential_1(v43);
  return v37 & 1;
}

unint64_t lazy protocol witness table accessor for type WorkoutStep.CodingKeys and conformance WorkoutStep.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkoutStep.CodingKeys and conformance WorkoutStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutStep.CodingKeys and conformance WorkoutStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutStep.CodingKeys and conformance WorkoutStep.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutStep.CodingKeys and conformance WorkoutStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutStep.CodingKeys and conformance WorkoutStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutStep.CodingKeys and conformance WorkoutStep.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutStep.CodingKeys and conformance WorkoutStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutStep.CodingKeys and conformance WorkoutStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutStep.CodingKeys and conformance WorkoutStep.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutStep.CodingKeys and conformance WorkoutStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutStep.CodingKeys and conformance WorkoutStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutStep.CodingKeys and conformance WorkoutStep.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StepType and conformance StepType()
{
  result = lazy protocol witness table cache variable for type StepType and conformance StepType;
  if (!lazy protocol witness table cache variable for type StepType and conformance StepType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StepType and conformance StepType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StepType and conformance StepType;
  if (!lazy protocol witness table cache variable for type StepType and conformance StepType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StepType and conformance StepType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StepType and conformance StepType;
  if (!lazy protocol witness table cache variable for type StepType and conformance StepType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StepType and conformance StepType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StepType and conformance StepType;
  if (!lazy protocol witness table cache variable for type StepType and conformance StepType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StepType and conformance StepType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type String? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type String? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TargetZone.TargetZoneHolder and conformance TargetZone.TargetZoneHolder()
{
  result = lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder and conformance TargetZone.TargetZoneHolder;
  if (!lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder and conformance TargetZone.TargetZoneHolder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder and conformance TargetZone.TargetZoneHolder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder and conformance TargetZone.TargetZoneHolder;
  if (!lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder and conformance TargetZone.TargetZoneHolder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder and conformance TargetZone.TargetZoneHolder);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HeartRateTargetZone? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type HeartRateTargetZone? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type HeartRateTargetZone? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11WorkoutCore19HeartRateTargetZoneCSgMd, &_s11WorkoutCore19HeartRateTargetZoneCSgMR);
    _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type HeartRateTargetZone and conformance HeartRateTargetZone, type metadata accessor for HeartRateTargetZone);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateTargetZone? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PowerZonesAlertTargetZone? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type PowerZonesAlertTargetZone? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertTargetZone? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11WorkoutCore25PowerZonesAlertTargetZoneCSgMd, &_s11WorkoutCore25PowerZonesAlertTargetZoneCSgMR);
    _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type PowerZonesAlertTargetZone and conformance PowerZonesAlertTargetZone, type metadata accessor for PowerZonesAlertTargetZone);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertTargetZone? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutStepError and conformance WorkoutStepError()
{
  result = lazy protocol witness table cache variable for type WorkoutStepError and conformance WorkoutStepError;
  if (!lazy protocol witness table cache variable for type WorkoutStepError and conformance WorkoutStepError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutStepError and conformance WorkoutStepError);
  }

  return result;
}

unint64_t specialized WorkoutStep.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WorkoutStep.CodingKeys.init(rawValue:), v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized WorkoutStep.decodeTargetZonesVersion1(values:)(uint64_t a1)
{
  v18 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore10TargetZoneC0D4TypeOGMd, &_sSay11WorkoutCore10TargetZoneC0D4TypeOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore0D4StepC10CodingKeys33_6737BB91B09B042F2A7EB5B5DBE3F4DFLLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore0D4StepC10CodingKeys33_6737BB91B09B042F2A7EB5B5DBE3F4DFLLOGMR);
  lazy protocol witness table accessor for type [TargetZone.ZoneType] and conformance <A> [A]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
    lazy protocol witness table accessor for type [Double] and conformance <A> [A]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v4 = *(v17 + 16);
    if (v4)
    {
      v5 = (v17 + 32);
      v6 = (v17 + 32);
      v7 = (v17 + 32);
      type metadata accessor for TargetZone();
      do
      {
        v9 = *v5++;
        v8 = v9;
        v10 = *v6;
        v11 = *v7;
        v12 = swift_allocObject();
        *(v12 + 16) = v9;
        *(v12 + 24) = v10;
        *(v12 + 32) = v11;
        if (v9 > 3 && v8 > 6)
        {

          v14 = 0;
        }

        else
        {
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v14 = v11 > 0.0;
          if (v10 > 0.0)
          {
            v14 = 1;
          }

          if (v13)
          {
            v14 = 0;
          }
        }

        *(v12 + 40) = v14;

        MEMORY[0x20F2E6F30](v15);
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v16 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        ++v7;
        ++v6;
        --v4;
      }

      while (v4);
      a1 = v18;
    }

    else
    {
      a1 = MEMORY[0x277D84F90];
    }
  }

  return a1;
}

uint64_t specialized WorkoutStep.decodeTargetZonesVersion2(values:)()
{
  v20 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore0D4StepC10CodingKeys33_6737BB91B09B042F2A7EB5B5DBE3F4DFLLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore0D4StepC10CodingKeys33_6737BB91B09B042F2A7EB5B5DBE3F4DFLLOGMR);
  lazy protocol witness table accessor for type [Data] and conformance <A> [A](&lazy protocol witness table cache variable for type [Data] and conformance <A> [A], lazy protocol witness table accessor for type Data and conformance Data);
  result = KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (v0)
  {
    return v1;
  }

  v3 = v17;
  v16 = *(v17 + 16);
  if (!v16)
  {
    v1 = MEMORY[0x277D84F90];
LABEL_16:

    return v1;
  }

  v4 = 0;
  v5 = (v17 + 40);
  while (v4 < *(v3 + 16))
  {
    v6 = *(v5 - 1);
    v7 = *v5;
    v8 = type metadata accessor for JSONDecoder();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    outlined copy of Data._Representation(v6, v7);
    outlined copy of Data._Representation(v6, v7);
    JSONDecoder.init()();
    lazy protocol witness table accessor for type TargetZone.TargetZoneHolder and conformance TargetZone.TargetZoneHolder();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    type metadata accessor for TargetZone();
    v11 = swift_allocObject();
    *(v11 + 16) = v17;
    *(v11 + 24) = v18;
    *(v11 + 32) = v19;
    if (v17 > 6u)
    {

      outlined consume of Data._Representation(v6, v7);

      v13 = 0;
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      outlined consume of Data._Representation(v6, v7);

      v13 = 0;
      if ((v12 & 1) == 0)
      {
        v13 = v18 > 0.0 || v19 > 0.0;
      }
    }

    *(v11 + 40) = v13;

    MEMORY[0x20F2E6F30](v14);
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v15 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v4;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    outlined consume of Data._Representation(v6, v7);

    v1 = v20;
    v5 += 2;
    v3 = v17;
    if (v16 == v4)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type [StepType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [StepType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [StepType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore8StepTypeOGMd, &_sSay11WorkoutCore8StepTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [StepType] and conformance [A]);
  }

  return result;
}

uint64_t type metadata accessor for WorkoutStep()
{
  result = type metadata singleton initialization cache for WorkoutStep;
  if (!type metadata singleton initialization cache for WorkoutStep)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

{
  return MEMORY[0x282136938]();
}

id keypath_get_21Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t getEnumTagSinglePayload for StepType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StepType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for WorkoutStepError(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutStepError(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void type metadata completion function for WorkoutStep()
{
  type metadata accessor for Published<String?>();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    type metadata accessor for Published<NLSessionActivityGoal>();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = type metadata accessor for UUID();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        type metadata accessor for Published<Bool>();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void type metadata accessor for Published<String?>()
{
  if (!lazy cache variable for type metadata for Published<String?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<String?>);
    }
  }
}

uint64_t getEnumTagSinglePayload for WorkoutStep.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutStep.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [TargetZone.ZoneType] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [TargetZone.ZoneType] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [TargetZone.ZoneType] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore10TargetZoneC0D4TypeOGMd, &_sSay11WorkoutCore10TargetZoneC0D4TypeOGMR);
    lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [TargetZone.ZoneType] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType()
{
  result = lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType;
  if (!lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType;
  if (!lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType;
  if (!lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType;
  if (!lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Double] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [Double] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [Double] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySdGMd, &_sSaySdGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Double] and conformance <A> [A]);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Data] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSo21NLSessionActivityGoalCMaTm_1(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t WorkoutDeviceType.productModel.getter()
{
  if (*v0 == 2)
  {
    return 0xD000000000000010;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t one-time initialization function for sharedInstance()
{
  type metadata accessor for MediaSuggestionsModel();
  swift_allocObject();
  result = MediaSuggestionsModel.().init()();
  static MediaSuggestionsModel.sharedInstance = result;
  return result;
}

{
  v0 = type metadata accessor for MusicLibraryPlaylistsModel();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  Published.init(initialValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A15MediaSuggestionVGMd, &_sSay11WorkoutCore0A15MediaSuggestionVGMR);
  result = Published.init(initialValue:)();
  *(v3 + OBJC_IVAR____TtC11WorkoutCore26MusicLibraryPlaylistsModel_loadCallCount) = 0;
  static MusicLibraryPlaylistsModel.sharedInstance = v3;
  return result;
}

uint64_t static MediaSuggestionsModel.sharedInstance.getter()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }
}

uint64_t one-time initialization function for mediaSuggestionAllowedClasses()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20B432BD0;
  *(v0 + 32) = _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for NSArray, 0x277CBEA60);
  *(v0 + 40) = _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
  *(v0 + 48) = _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  *(v0 + 56) = _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  *(v0 + 64) = _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for NSDate, 0x277CBEAA8);
  *(v0 + 72) = _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for NSURL, 0x277CBEBC0);
  *(v0 + 80) = _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for NSData, 0x277CBEA90);
  *(v0 + 88) = _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for NSUUID, 0x277CCAD78);
  *(v0 + 96) = type metadata accessor for MSSuggestion();
  *(v0 + 104) = type metadata accessor for MSUnifiedMediaIntent();
  *(v0 + 112) = type metadata accessor for MSIntentWrapper();
  *(v0 + 120) = type metadata accessor for MSPlayMediaAppIntent();
  *(v0 + 128) = _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for INPlayMediaIntent, 0x277CD3EC0);
  *(v0 + 136) = _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for INMediaItem, 0x277CD3DB8);
  *(v0 + 144) = _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for INImage, 0x277CD3D10);
  *(v0 + 152) = _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for INFile, 0x277CD3C08);
  *(v0 + 160) = _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for LNAction, 0x277D23720);
  *(v0 + 168) = _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for LNEntity, 0x277D237F0);
  *(v0 + 176) = _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for LNProperty, 0x277D238D8);
  result = _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for LNValue, 0x277D23958);
  *(v0 + 184) = result;
  static MediaSuggestionsModel.mediaSuggestionAllowedClasses = v0;
  return result;
}

uint64_t MediaSuggestionsModel.().init()()
{
  v1 = v0;
  v2 = type metadata accessor for MediaSuggesterService();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 16) = MediaSuggesterService.init()();
  *(v0 + 24) = 4;

  MediaSuggesterService.hello()();

  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static WOLog.mediaPlayback);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20AEA4000, v6, v7, "MediaSuggesterService hello() completed", v8, 2u);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  return v1;
}

uint64_t MediaSuggestionsModel.suggestions(for:filteredBundleID:maximumSuggestions:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 96) = a5;
  *(v6 + 104) = v5;
  *(v6 + 80) = a3;
  *(v6 + 88) = a4;
  *(v6 + 248) = a2;
  *(v6 + 72) = a1;
  v7 = type metadata accessor for UUID();
  *(v6 + 112) = v7;
  v8 = *(v7 - 8);
  *(v6 + 120) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 128) = swift_task_alloc();
  v10 = type metadata accessor for Date();
  *(v6 + 136) = v10;
  v11 = *(v10 - 8);
  *(v6 + 144) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](MediaSuggestionsModel.suggestions(for:filteredBundleID:maximumSuggestions:), 0, 0);
}

void MediaSuggestionsModel.suggestions(for:filteredBundleID:maximumSuggestions:)()
{
  v76 = v0;
  v1 = *(v0 + 160);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 112);
  Date.init()();
  UUID.init()();
  UUID.uuidString.getter();
  (*(v3 + 8))(v2, v4);
  v5 = specialized Collection.prefix(_:)(8);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v73 = v5;
  *(v0 + 168) = v5;
  *(v0 + 176) = v7;
  *(v0 + 184) = v9;
  *(v0 + 192) = v11;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 88);
  v13 = type metadata accessor for Logger();
  *(v0 + 200) = __swift_project_value_buffer(v13, static WOLog.mediaPlayback);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  v71 = v9;
  v72 = v11;
  v70 = v7;
  if (os_log_type_enabled(v14, v15))
  {
    v67 = *(v0 + 88);
    v68 = *(v0 + 96);
    v65 = *(v0 + 248);
    v66 = *(v0 + 80);
    v64 = *(v0 + 72);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v74 = v17;
    *v16 = 136315906;

    v18 = MEMORY[0x20F2E6D00](v5, v7, v9, v11);
    v20 = v19;

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v74);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2048;
    v22 = v64;
    if (v65)
    {
      v22 = 0;
    }

    *(v16 + 14) = v22;
    *(v16 + 22) = 2080;
    if (v67)
    {
      v23 = v66;
    }

    else
    {
      v23 = 7104878;
    }

    if (v67)
    {
      v24 = v12;
    }

    else
    {
      v24 = 0xE300000000000000;
    }

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v74);

    *(v16 + 24) = v25;
    *(v16 + 32) = 2048;
    *(v16 + 34) = v68;
    _os_log_impl(&dword_20AEA4000, v14, v15, "[%s] MediaSuggestions request started - workoutType: %lu, filteredBundleID: %s, maxSuggestions: %ld", v16, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v17, -1, -1);
    MEMORY[0x20F2E9420](v16, -1, -1);
  }

  v26 = MEMORY[0x20F2E6C00](0xD000000000000011, 0x800000020B45A580);
  CanShowSiriSuggestions = SGAppCanShowSiriSuggestions(v26);

  if (CanShowSiriSuggestions)
  {
    if (*(v0 + 248))
    {
      v28 = 84;
    }

    else
    {
      v28 = HKWorkoutActivityType.underlyingActivityType()(*(v0 + 72));
    }

    v37 = *(v0 + 96);
    if (v37 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v37 <= 0x7FFFFFFF)
    {
      v38 = *(v0 + 88);
      v39 = MEMORY[0x20F2E6C00](0xD000000000000011, 0x800000020B45A580);
      type metadata accessor for MSSuggestion();
      v40.super.isa = Array._bridgeToObjectiveC()().super.isa;
      v69 = v38;
      if (v38)
      {
        v41 = *(v0 + 80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_20B423A90;
        *(v42 + 32) = v41;
        *(v42 + 40) = v12;
      }

      v43 = v72;
      v44 = *(v0 + 96);
      v45 = objc_opt_self();

      isa = Array._bridgeToObjectiveC()().super.isa;

      v47 = [v45 workoutSuggesterOptionsWithMaxSuggestions:v44 bundleId:v39 workoutType:v28 seedSuggestions:v40.super.isa allowedBundleIdentifiers:isa];
      *(v0 + 208) = v47;

      if ([objc_opt_self() isRunningInStoreDemoMode] & 1) != 0 || (specialized MediaSuggestionsModel.shouldSaveMediaSuggestionsToFile()())
      {
        v48 = v71;
        if (v69)
        {
          *(v0 + 16) = *(v0 + 80);
          *(v0 + 24) = v12;
          *(v0 + 32) = 46;
          *(v0 + 40) = 0xE100000000000000;
          *(v0 + 48) = 95;
          *(v0 + 56) = 0xE100000000000000;
          lazy protocol witness table accessor for type String and conformance String();
          v49 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v51 = v50;
        }

        else
        {
          v57 = *(v0 + 96);
          v74 = 0;
          v75 = 0xE000000000000000;
          _StringGuts.grow(_:)(20);

          v74 = 0xD000000000000012;
          v75 = 0x800000020B45A5A0;
          *(v0 + 64) = v57;
          v43 = v72;
          v58 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x20F2E6D80](v58);

          v49 = v74;
          v51 = v75;
        }
      }

      else
      {
        v49 = 0;
        v51 = 0;
        v48 = v71;
      }

      *(v0 + 216) = v51;
      v59 = MEMORY[0x20F2E6D00](v73, v70, v48, v43);
      v61 = v60;
      *(v0 + 224) = v60;
      v62 = swift_task_alloc();
      *(v0 + 232) = v62;
      *v62 = v0;
      v62[1] = MediaSuggestionsModel.suggestions(for:filteredBundleID:maximumSuggestions:);
      v63 = *(v0 + 104);

      MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:)(v47, v49, v51, v59, v61);
      return;
    }

    __break(1u);
    return;
  }

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v74 = v32;
    *v31 = 136315138;
    v33 = MEMORY[0x20F2E6D00](v73, v70, v71, v11);
    v35 = v34;

    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v74);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_20AEA4000, v29, v30, "[%s] Suggestions > Show in App toggle is disabled", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x20F2E9420](v32, -1, -1);
    MEMORY[0x20F2E9420](v31, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 144) + 8))(*(v0 + 160), *(v0 + 136));
  v53 = *(v0 + 152);
  v52 = *(v0 + 160);
  v54 = *(v0 + 128);

  v55 = *(v0 + 8);
  v56 = MEMORY[0x277D84F90];

  v55(v56);
}

uint64_t MediaSuggestionsModel.suggestions(for:filteredBundleID:maximumSuggestions:)(uint64_t a1)
{
  v2 = *(*v1 + 232);
  v3 = *(*v1 + 224);
  v4 = *(*v1 + 216);
  v6 = *v1;
  *(*v1 + 240) = a1;

  return MEMORY[0x2822009F8](MediaSuggestionsModel.suggestions(for:filteredBundleID:maximumSuggestions:), 0, 0);
}

uint64_t MediaSuggestionsModel.suggestions(for:filteredBundleID:maximumSuggestions:)()
{
  v47 = v0;
  v1 = v0[30];
  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[17];
  v7 = v0[18];
  Date.init()();
  Date.timeIntervalSince(_:)();
  v9 = v8;
  v10 = *(v7 + 8);
  v10(v5, v6);
  swift_bridgeObjectRetain_n();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[30];
  v15 = v0[26];
  v16 = v0[24];
  if (v13)
  {
    v45 = v10;
    v17 = v0[22];
    v18 = v0[23];
    v19 = v0[21];
    v43 = v0[17];
    v44 = v0[20];
    v42 = v0[26];
    v20 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v46 = v41;
    *v20 = 136315650;
    v21 = MEMORY[0x20F2E6D00](v19, v17, v18, v16);
    v23 = v22;

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v46);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v25 = swift_allocObject();
    v26 = MEMORY[0x277D839F8];
    *(v25 + 16) = xmmword_20B423A90;
    v27 = MEMORY[0x277D83A80];
    *(v25 + 56) = v26;
    *(v25 + 64) = v27;
    *(v25 + 32) = v9;
    v28 = String.init(format:_:)();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v46);

    *(v20 + 14) = v30;
    *(v20 + 22) = 2048;
    v31 = *(v14 + 16);

    *(v20 + 24) = v31;

    _os_log_impl(&dword_20AEA4000, v11, v12, "[%s] MediaSuggestions request completed - duration: %ss, returned %ld suggestions", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v41, -1, -1);
    MEMORY[0x20F2E9420](v20, -1, -1);

    v45(v44, v43);
  }

  else
  {
    v32 = v0[20];
    v33 = v0[17];
    v34 = v0[30];
    swift_bridgeObjectRelease_n();

    v10(v32, v33);
  }

  v35 = v0[30];
  v37 = v0[19];
  v36 = v0[20];
  v38 = v0[16];

  v39 = v0[1];

  return v39(v35);
}

uint64_t HKWorkoutActivityType.underlyingActivityType()(uint64_t a1)
{
  v1 = a1 - 1;
  result = 1;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 2;
      break;
    case 2:
      result = 3;
      break;
    case 3:
      result = 4;
      break;
    case 4:
      result = 5;
      break;
    case 5:
      result = 6;
      break;
    case 6:
      result = 7;
      break;
    case 7:
      result = 8;
      break;
    case 8:
      result = 9;
      break;
    case 9:
      result = 10;
      break;
    case 10:
      result = 11;
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
      result = 15;
      break;
    case 15:
      result = 16;
      break;
    case 16:
      result = 17;
      break;
    case 17:
      result = 18;
      break;
    case 18:
      result = 19;
      break;
    case 19:
      result = 20;
      break;
    case 20:
      result = 21;
      break;
    case 21:
      result = 22;
      break;
    case 22:
      result = 23;
      break;
    case 23:
      result = 24;
      break;
    case 24:
      result = 25;
      break;
    case 25:
      result = 26;
      break;
    case 26:
      result = 27;
      break;
    case 27:
      result = 28;
      break;
    case 28:
      result = 29;
      break;
    case 29:
      result = 30;
      break;
    case 30:
      result = 31;
      break;
    case 31:
      result = 32;
      break;
    case 32:
      result = 33;
      break;
    case 33:
      result = 34;
      break;
    case 34:
      result = 35;
      break;
    case 35:
      result = 36;
      break;
    case 36:
      result = 37;
      break;
    case 37:
      result = 38;
      break;
    case 38:
      result = 39;
      break;
    case 39:
      result = 40;
      break;
    case 40:
      result = 41;
      break;
    case 41:
      result = 42;
      break;
    case 42:
      result = 43;
      break;
    case 43:
      result = 44;
      break;
    case 44:
      result = 45;
      break;
    case 45:
      result = 46;
      break;
    case 46:
      result = 47;
      break;
    case 47:
      result = 48;
      break;
    case 48:
      result = 49;
      break;
    case 49:
      result = 50;
      break;
    case 50:
      result = 51;
      break;
    case 51:
      result = 52;
      break;
    case 52:
      result = 53;
      break;
    case 53:
      result = 54;
      break;
    case 54:
      result = 55;
      break;
    case 55:
      result = 56;
      break;
    case 56:
      result = 57;
      break;
    case 57:
      result = 58;
      break;
    case 58:
      result = 59;
      break;
    case 59:
      result = 60;
      break;
    case 60:
      result = 61;
      break;
    case 61:
      result = 62;
      break;
    case 62:
      result = 63;
      break;
    case 63:
      result = 64;
      break;
    case 64:
      result = 65;
      break;
    case 65:
      result = 66;
      break;
    case 66:
      result = 67;
      break;
    case 67:
      result = 68;
      break;
    case 68:
      result = 69;
      break;
    case 69:
      result = 70;
      break;
    case 70:
      result = 71;
      break;
    case 71:
      result = 72;
      break;
    case 72:
      result = 73;
      break;
    case 73:
      result = 74;
      break;
    case 74:
      result = 75;
      break;
    case 75:
      result = 76;
      break;
    case 76:
      result = 77;
      break;
    case 77:
      result = 78;
      break;
    case 78:
      result = 79;
      break;
    case 79:
      result = 80;
      break;
    case 81:
      result = 81;
      break;
    case 82:
      result = 82;
      break;
    case 83:
      result = 83;
      break;
    default:
      result = 84;
      break;
  }

  return result;
}

uint64_t MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v6[9] = v8;
  v9 = *(v8 - 8);
  v6[10] = v9;
  v10 = *(v9 + 64) + 15;
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:), 0, 0);
}

uint64_t MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:)()
{
  v45 = v0;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = type metadata accessor for Logger();
  *(v0 + 104) = __swift_project_value_buffer(v3, static WOLog.mediaPlayback);
  v4 = v2;

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = *(v0 + 16);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v44 = v11;
    *v10 = 136315650;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v44);
    *(v10 + 12) = 2080;
    *(v0 + 216) = [v9 workoutType];
    type metadata accessor for MSWorkoutActivityType(0);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v44);

    *(v10 + 14) = v14;
    *(v10 + 22) = 2080;
    v15 = [v9 allowedBundleIdentifiers];
    v16 = MEMORY[0x277D837D0];
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = MEMORY[0x20F2E6F70](v17, v16);
    v20 = v19;

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v44);

    *(v10 + 24) = v21;
    _os_log_impl(&dword_20AEA4000, v5, v6, "[%s] Starting MediaSuggester request for workout type %s, bundleID(s): %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v11, -1, -1);
    MEMORY[0x20F2E9420](v10, -1, -1);
  }

  v22 = *(v0 + 96);
  v23 = [objc_opt_self() isRunningInStoreDemoMode];
  Date.init()();
  if (v23)
  {
    v24 = *(v0 + 32);
    if (v24)
    {
      v25 = swift_task_alloc();
      *(v0 + 112) = v25;
      *v25 = v0;
      v25[1] = MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:);
      v26 = *(v0 + 56);
      v27 = *(v0 + 24);

      return MediaSuggestionsModel.loadDemoSuggestions(cacheKey:)(v27, v24);
    }

    v33 = *(v0 + 104);
    v34 = *(v0 + 48);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v38 = *(v0 + 40);
      v37 = *(v0 + 48);
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v44 = v40;
      *v39 = 136315138;
      *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v37, &v44);
      _os_log_impl(&dword_20AEA4000, v35, v36, "[%s] [DemoMode] No cached suggestions found, using live data", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x20F2E9420](v40, -1, -1);
      MEMORY[0x20F2E9420](v39, -1, -1);
    }

    v41 = *(*(v0 + 56) + 16);
    v42 = *(MEMORY[0x277D214F8] + 4);
    v31 = swift_task_alloc();
    *(v0 + 128) = v31;
    *v31 = v0;
    v32 = MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:);
  }

  else
  {
    v29 = *(*(v0 + 56) + 16);
    v30 = *(MEMORY[0x277D214F8] + 4);
    v31 = swift_task_alloc();
    *(v0 + 152) = v31;
    *v31 = v0;
    v32 = MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:);
  }

  v31[1] = v32;
  v43 = *(v0 + 16);

  return MEMORY[0x28217DF00](v43);
}

{
  v51 = v0;
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[6];
  if (v1)
  {

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[15];
      v8 = v0[5];
      v7 = v0[6];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v50 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v50);
      *(v9 + 12) = 2048;
      if (v6 >> 62)
      {
        v0[15];
        v11 = __CocoaSet.count.getter();
      }

      else
      {
        v11 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v9 + 14) = v11;

      _os_log_impl(&dword_20AEA4000, v4, v5, "[%s] [DemoMode] Loaded %ld cached suggestions", v9, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x20F2E9420](v10, -1, -1);
      MEMORY[0x20F2E9420](v9, -1, -1);
    }

    else
    {
    }

    v0[22] = v1;
    v22 = v0[12];
    v23 = v0[13];
    v25 = v0[10];
    v24 = v0[11];
    v26 = v0[9];
    v27 = v0[6];
    Date.init()();
    Date.timeIntervalSince(_:)();
    v29 = v28;
    v30 = *(v25 + 8);
    v0[23] = v30;
    v0[24] = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30(v24, v26);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v34 = v0[5];
      v33 = v0[6];
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v50 = v36;
      *v35 = 136315650;
      *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v33, &v50);
      *(v35 + 12) = 2048;
      if (v1 >> 62)
      {
        v37 = __CocoaSet.count.getter();
      }

      else
      {
        v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v35 + 14) = v37;

      *(v35 + 22) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v38 = swift_allocObject();
      v39 = MEMORY[0x277D839F8];
      *(v38 + 16) = xmmword_20B423A90;
      v40 = MEMORY[0x277D83A80];
      *(v38 + 56) = v39;
      *(v38 + 64) = v40;
      *(v38 + 32) = v29;
      v41 = String.init(format:_:)();
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v50);

      *(v35 + 24) = v43;
      _os_log_impl(&dword_20AEA4000, v31, v32, "[%s] MediaSuggester service returned %ld raw suggestions in %ss", v35, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v36, -1, -1);
      MEMORY[0x20F2E9420](v35, -1, -1);
    }

    else
    {
    }

    v44 = swift_task_alloc();
    v0[25] = v44;
    *v44 = v0;
    v44[1] = MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:);
    v45 = v0[6];
    v46 = v0[7];
    v47 = v0[5];
    v48 = v0[2];

    return MediaSuggestionsModel.update(_:with:requestId:)(v1, v48, v47, v45);
  }

  else
  {

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v15 = v0[5];
      v14 = v0[6];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v50 = v17;
      *v16 = 136315138;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v50);
      _os_log_impl(&dword_20AEA4000, v12, v13, "[%s] [DemoMode] No cached suggestions found, using live data", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x20F2E9420](v17, -1, -1);
      MEMORY[0x20F2E9420](v16, -1, -1);
    }

    v18 = *(v0[7] + 16);
    v19 = *(MEMORY[0x277D214F8] + 4);
    v20 = swift_task_alloc();
    v0[16] = v20;
    *v20 = v0;
    v20[1] = MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:);
    v21 = v0[2];

    return MEMORY[0x28217DF00](v21);
  }
}

{
  v31 = v0;
  v1 = v0[18];
  v0[22] = v1;
  v2 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  v7 = v0[6];
  Date.init()();
  Date.timeIntervalSince(_:)();
  v9 = v8;
  v10 = *(v5 + 8);
  v0[23] = v10;
  v0[24] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v4, v6);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v14 = v0[5];
    v13 = v0[6];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30 = v16;
    *v15 = 136315650;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v30);
    *(v15 + 12) = 2048;
    if (v1 >> 62)
    {
      v17 = __CocoaSet.count.getter();
    }

    else
    {
      v17 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v15 + 14) = v17;

    *(v15 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D839F8];
    *(v18 + 16) = xmmword_20B423A90;
    v20 = MEMORY[0x277D83A80];
    *(v18 + 56) = v19;
    *(v18 + 64) = v20;
    *(v18 + 32) = v9;
    v21 = String.init(format:_:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v30);

    *(v15 + 24) = v23;
    _os_log_impl(&dword_20AEA4000, v11, v12, "[%s] MediaSuggester service returned %ld raw suggestions in %ss", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v16, -1, -1);
    MEMORY[0x20F2E9420](v15, -1, -1);
  }

  else
  {
  }

  v24 = swift_task_alloc();
  v0[25] = v24;
  *v24 = v0;
  v24[1] = MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:);
  v25 = v0[6];
  v26 = v0[7];
  v27 = v0[5];
  v28 = v0[2];

  return MediaSuggestionsModel.update(_:with:requestId:)(v1, v28, v27, v25);
}

{
  v39 = v0;
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[20];
    v4 = v0[7];
    v3 = v0[8];
    v5 = v0[3];
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v7;
    v8[5] = v5;
    v8[6] = v1;
    v8[7] = v2;

    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:), v8);

    _sSo8NSObjectCSgWOhTm_2(v3, &_sScPSgMd, &_sScPSgMR);
  }

  v9 = v0[20];
  v0[22] = v9;
  v10 = v0[12];
  v11 = v0[13];
  v13 = v0[10];
  v12 = v0[11];
  v14 = v0[9];
  v15 = v0[6];
  Date.init()();
  Date.timeIntervalSince(_:)();
  v17 = v16;
  v18 = *(v13 + 8);
  v0[23] = v18;
  v0[24] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v12, v14);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v22 = v0[5];
    v21 = v0[6];
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v38 = v24;
    *v23 = 136315650;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, &v38);
    *(v23 + 12) = 2048;
    if (v9 >> 62)
    {
      v25 = __CocoaSet.count.getter();
    }

    else
    {
      v25 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v23 + 14) = v25;

    *(v23 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v26 = swift_allocObject();
    v27 = MEMORY[0x277D839F8];
    *(v26 + 16) = xmmword_20B423A90;
    v28 = MEMORY[0x277D83A80];
    *(v26 + 56) = v27;
    *(v26 + 64) = v28;
    *(v26 + 32) = v17;
    v29 = String.init(format:_:)();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v38);

    *(v23 + 24) = v31;
    _os_log_impl(&dword_20AEA4000, v19, v20, "[%s] MediaSuggester service returned %ld raw suggestions in %ss", v23, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v24, -1, -1);
    MEMORY[0x20F2E9420](v23, -1, -1);
  }

  else
  {
  }

  v32 = swift_task_alloc();
  v0[25] = v32;
  *v32 = v0;
  v32[1] = MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:);
  v33 = v0[6];
  v34 = v0[7];
  v35 = v0[5];
  v36 = v0[2];

  return MediaSuggestionsModel.update(_:with:requestId:)(v9, v36, v35, v33);
}

{
  v1 = *(v0 + 192);
  (*(v0 + 184))(*(v0 + 96), *(v0 + 72));
  v2 = *(v0 + 208);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 64);

  v6 = *(v0 + 8);

  return v6(v2);
}

{
  v17 = v0;
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[6];
  (*(v0[10] + 8))(v0[12], v0[9]);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v16);
    _os_log_impl(&dword_20AEA4000, v4, v5, "[%s] MediaSuggester error: \\(error)", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  v11 = v0[11];
  v10 = v0[12];
  v12 = v0[8];

  v13 = v0[1];
  v14 = MEMORY[0x277D84F90];

  return v13(v14);
}

{
  v17 = v0;
  v1 = v0[21];
  v2 = v0[13];
  v3 = v0[6];
  (*(v0[10] + 8))(v0[12], v0[9]);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v16);
    _os_log_impl(&dword_20AEA4000, v4, v5, "[%s] MediaSuggester error: \\(error)", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  v11 = v0[11];
  v10 = v0[12];
  v12 = v0[8];

  v13 = v0[1];
  v14 = MEMORY[0x277D84F90];

  return v13(v14);
}

uint64_t MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:)(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:), 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:);
  }

  else
  {
    *(v4 + 144) = a1;
    v7 = MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v7 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v5 = MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:);
  }

  else
  {
    v5 = MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 208) = a1;

  return MEMORY[0x2822009F8](MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:), 0, 0);
}

uint64_t closure #1 in MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v7[9] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v7[10] = v9;
  v10 = *(v9 - 8);
  v7[11] = v10;
  v11 = *(v10 + 64) + 15;
  v7[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:), 0, 0);
}

uint64_t closure #1 in MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:)()
{
  v1 = v0[5];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = v0[10];
    v3 = v0[11];
    v4 = v0[9];
    MediaSuggestionsModel.demoCacheFileURL(cacheKey:)(v0[6], v0[7], v4);
    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      v5 = v0[9];

      _sSo8NSObjectCSgWOhTm_2(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    else
    {
      v7 = v0[11];
      v6 = v0[12];
      v8 = v0[10];
      v9 = v0[8];
      (*(v7 + 32))(v6, v0[9], v8);
      specialized MediaSuggestionsModel.saveMSSuggestions(_:to:)(v9, v6);

      (*(v7 + 8))(v6, v8);
    }
  }

  v10 = v0[12];
  v11 = v0[9];

  v12 = v0[1];

  return v12();
}

uint64_t MediaSuggestionsModel.update(_:with:requestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[41] = a4;
  v5[42] = v4;
  v5[39] = a2;
  v5[40] = a3;
  v5[38] = a1;
  return MEMORY[0x2822009F8](MediaSuggestionsModel.update(_:with:requestId:), 0, 0);
}

uint64_t MediaSuggestionsModel.update(_:with:requestId:)()
{
  v138 = v0;
  v1 = v0[38];
  v137 = MEMORY[0x277D84F90];
  v133 = v1 >> 62;
  if (v1 >> 62)
  {
    goto LABEL_58;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v134 = v1;
    v3 = MEMORY[0x277D84F90];
    if (i)
    {
      v4 = 0;
      v5 = v1 & 0xC000000000000001;
      v6 = v1 & 0xFFFFFFFFFFFFFF8;
      p_class_meths = &v0[38]->class_meths;
      v0 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
      while (1)
      {
        if (v5)
        {
          v8 = MEMORY[0x20F2E7A20](v4, *(v136 + 304));
        }

        else
        {
          if (v4 >= *(v6 + 16))
          {
            goto LABEL_55;
          }

          v8 = *(p_class_meths + 8 * v4);
        }

        v9 = v8;
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v11 = [v8 identifier];
        if (v11 && (v11, (v12 = [v9 title]) != 0))
        {

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v13 = *(v137 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v1 = &v137;
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v4;
        if (v10 == i)
        {
          v0 = v136;
          v3 = v137;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

LABEL_16:
    v0[43] = v3;
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v14 = v0[41];
    v16 = v0[38];
    v15 = v0[39];
    v17 = type metadata accessor for Logger();
    v0[44] = __swift_project_value_buffer(v17, static WOLog.mediaPlayback);
    swift_bridgeObjectRetain_n();

    v18 = v15;
    v1 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    v135 = v3;
    if (os_log_type_enabled(v1, v19))
    {
      v21 = v0[40];
      v20 = v0[41];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v137 = v23;
      *v22 = 136315906;
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, &v137);
      *(v22 + 12) = 2048;
      v24 = v134;
      if (v135 < 0 || (v135 & 0x4000000000000000) != 0)
      {
        v25 = __CocoaSet.count.getter();
      }

      else
      {
        v25 = *(v135 + 16);
      }

      v0 = v136;
      v26 = *(v136 + 312);
      *(v22 + 14) = v25;

      *(v22 + 22) = 2080;
      v27 = [v26 allowedBundleIdentifiers];
      v28 = MEMORY[0x277D837D0];
      v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v30 = MEMORY[0x20F2E6F70](v29, v28);
      v32 = v31;

      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v137);

      *(v22 + 24) = v33;
      *(v22 + 32) = 2048;
      if (v133)
      {
        v36 = *(v136 + 304);
        if (v134 < 0)
        {
          v37 = *(v136 + 304);
        }

        v34 = __CocoaSet.count.getter();
      }

      else
      {
        v34 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v38 = *(v136 + 304);

      *(v22 + 34) = v34;

      _os_log_impl(&dword_20AEA4000, v1, v19, "[%s] User has %ld suggestions for bundleID(s): %s (filtered from %ld raw suggestions)", v22, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v23, -1, -1);
      MEMORY[0x20F2E9420](v22, -1, -1);

      v3 = v135;
    }

    else
    {
      v35 = v0[38];
      swift_bridgeObjectRelease_n();

      v24 = v134;
    }

    v137 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v19 = 0;
    v39 = v24 & 0xC000000000000001;
    v40 = v24 & 0xFFFFFFFFFFFFFF8;
    v41 = &v0[38]->class_meths;
    v0 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
    while (1)
    {
      if (v39)
      {
        v43 = MEMORY[0x20F2E7A20](v19, *(v136 + 304));
      }

      else
      {
        if (v19 >= *(v40 + 16))
        {
          goto LABEL_57;
        }

        v43 = *(v41 + 8 * v19);
      }

      v44 = v43;
      v24 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v45 = [v43 identifier];
      if (v45 && (v45, (v46 = [v44 title]) != 0))
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v42 = *(v137 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = &v137;
        specialized ContiguousArray._endMutation()();
      }

      ++v19;
      if (v24 == i)
      {
        v0 = v136;
        v47 = v137;
        v3 = v135;
        goto LABEL_43;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    ;
  }

  v47 = MEMORY[0x277D84F90];
LABEL_43:
  v48 = v47 < 0 || (v47 & 0x4000000000000000) != 0;
  if (v48)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_48;
    }

    goto LABEL_60;
  }

  if (!*(v47 + 16))
  {
LABEL_60:

    goto LABEL_61;
  }

LABEL_48:
  v49 = v0[41];

  v50 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v50, v19))
  {
    v52 = v0[40];
    v51 = v0[41];
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v137 = v54;
    *v53 = 136315394;
    *(v53 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v51, &v137);
    *(v53 + 12) = 2048;
    if (v48)
    {
      v55 = __CocoaSet.count.getter();
    }

    else
    {
      v55 = *(v47 + 16);
    }

    *(v53 + 14) = v55;

    _os_log_impl(&dword_20AEA4000, v50, v19, "[%s] Filtered out %ld suggestions with missing identifier/title", v53, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x20F2E9420](v54, -1, -1);
    MEMORY[0x20F2E9420](v53, -1, -1);

    v3 = v135;
    v0 = v136;
  }

  else
  {
  }

LABEL_61:
  v56 = [(__objc2_prot *)v0[39] allowedBundleIdentifiers];
  v57 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v58 = *(v57 + 16) == 0;

  v59 = v3 < 0 || (v3 & 0x4000000000000000) != 0;
  v60 = 2 * v58;
  if (v59)
  {
    if (__CocoaSet.count.getter() >= v60)
    {
      v61 = __CocoaSet.count.getter();
      goto LABEL_73;
    }

LABEL_66:
    v62 = v0[41];
    v63 = v0[39];

    v64 = v63;
    v58 = Logger.logObject.getter();
    LOBYTE(v24) = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v58, v24))
    {
      v66 = v0[40];
      v65 = v0[41];
      v67 = v0[39];
      v47 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v137 = v19;
      *v47 = 136315906;
      *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v65, &v137);
      *(v47 + 12) = 2080;
      v68 = [(__objc2_prot *)v67 allowedBundleIdentifiers];
      v69 = MEMORY[0x277D837D0];
      v70 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v71 = MEMORY[0x20F2E6F70](v70, v69);
      v73 = v72;

      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, &v137);

      *(v47 + 14) = v74;
      *(v47 + 22) = 2048;
      *(v47 + 24) = v60;
      *(v47 + 32) = 2048;
      if (v59)
      {
        goto LABEL_116;
      }

      v75 = *(v135 + 16);
LABEL_69:

      *(v47 + 34) = v75;

      _os_log_impl(&dword_20AEA4000, v58, v24, "[%s] User doesn't have enough suggestions for bundleID(s): %s, minimumRequiredResults: %ld, actual: %ld", v47, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v19, -1, -1);
      MEMORY[0x20F2E9420](v47, -1, -1);

      v0 = v136;
      goto LABEL_82;
    }

LABEL_81:

LABEL_82:
    v92 = v0[1];
    v93 = MEMORY[0x277D84F90];

    return (v92)(v93);
  }

  v61 = *(v3 + 16);
  if (v61 < v60)
  {
    goto LABEL_66;
  }

LABEL_73:
  v0[45] = v61;
  if (!v61)
  {
    v84 = v0[43];
    v85 = v0[44];
    v86 = v0[41];

    v58 = Logger.logObject.getter();
    v87 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v58, v87))
    {
      v89 = v0[40];
      v88 = v0[41];
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v137 = v91;
      *v90 = 136315650;
      *(v90 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v88, &v137);
      *(v90 + 12) = 2048;
      *(v90 + 14) = 0;
      *(v90 + 22) = 2048;
      *(v90 + 24) = 0;
      _os_log_impl(&dword_20AEA4000, v58, v87, "[%s] Artwork loading completed - success: %ld, failures: %ld", v90, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v91);
      MEMORY[0x20F2E9420](v91, -1, -1);
      MEMORY[0x20F2E9420](v90, -1, -1);
    }

    goto LABEL_81;
  }

  *(v0 + 47) = 0u;
  *(v0 + 49) = 0u;
  v0[46] = MEMORY[0x277D84F90];
  v76 = v0[43];
  if ((v76 & 0xC000000000000001) == 0)
  {
    if (*(v76 + 16))
    {
      v77 = *(v76 + 32);
      goto LABEL_77;
    }

    __break(1u);
LABEL_116:
    v75 = __CocoaSet.count.getter();
    goto LABEL_69;
  }

  v77 = MEMORY[0x20F2E7A20](0);
LABEL_77:
  v78 = v77;
  v0[51] = v77;
  v0[52] = 1;
  v79 = [(__objc2_prot *)v77 identifier];
  if (v79)
  {
    v80 = v79;
    v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v82;
  }

  else
  {
    v81 = 0;
    v83 = 0xE000000000000000;
  }

  v0[53] = v81;
  v0[54] = v83;
  v95 = [(__objc2_meth_list *)v78 bundleID];
  v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v98 = v97;

  v0[55] = v96;
  v0[56] = v98;
  v99 = [(__objc2_meth_list *)v78 title];
  if (v99)
  {
    v100 = v99;
    v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v102;
  }

  else
  {
    v101 = 0;
    v103 = 0xE000000000000000;
  }

  v0[57] = v101;
  v0[58] = v103;
  v104 = [(__objc2_meth_list *)v78 artist];
  if (v104)
  {
    v105 = v104;
    v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v108 = v107;
  }

  else
  {
    v106 = 0;
    v108 = 0;
  }

  v109 = v0[42];
  v110 = v0[43];
  v111 = v0[39];
  v112 = swift_allocObject();
  v0[59] = v112;
  v112->prots = v109;
  v112->inst_meths = v78;
  v112->class_meths = v110;
  v112->opt_inst_meths = v111;
  if (v108)
  {
    if (v96 == 0xD000000000000012 && 0x800000020B45A5C0 == v98)
    {
      v113 = v78;

      v114 = v111;
      v115 = v113;

      goto LABEL_107;
    }

    v125 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v126 = v78;

    v127 = v111;
    v128 = v126;

    if (v125)
    {
LABEL_107:

      goto LABEL_108;
    }
  }

  else if (v96 == 0x6C7070612E6D6F63 && v98 == 0xEF636973754D2E65 || (v116 = _stringCompareWithSmolCheck(_:_:expecting:)(), v117 = v0[42], v118 = v0[43], v111 = v0[39], (v116 & 1) != 0))
  {
    v119 = v78;

    v120 = v111;
    v121 = v119;

    if ([(__objc2_meth_list *)v121 suggestionSource]!= 1)
    {
      goto LABEL_108;
    }

    v122 = [(__objc2_meth_list *)v121 editorialTags];
    v123 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v124 = *(v123 + 16);

    if (v124)
    {
      v106 = 0x754D20656C707041;
    }

    else
    {
      v106 = 0;
    }

    if (v124)
    {
      v108 = 0xEB00000000636973;
    }

    else
    {
      v108 = 0;
    }
  }

  else
  {
    v130 = v78;

    v131 = v111;
    v132 = v130;

LABEL_108:
    v106 = 0;
    v108 = 0;
  }

  v0[60] = v106;
  v0[61] = v108;
  v129 = swift_task_alloc();
  v0[62] = v129;
  v129->isa = v0;
  v129->name = MediaSuggestionsModel.update(_:with:requestId:);

  return MSSuggestion.unifiedArtworkImage()();
}

uint64_t MediaSuggestionsModel.update(_:with:requestId:)(uint64_t a1)
{
  v2 = *(*v1 + 496);
  v4 = *v1;
  *(*v1 + 504) = a1;

  return MEMORY[0x2822009F8](MediaSuggestionsModel.update(_:with:requestId:), 0, 0);
}

void MediaSuggestionsModel.update(_:with:requestId:)()
{
  v98 = v0;
  v1 = *(v0 + 504);
  if (v1)
  {
    v2 = *(v0 + 376);
    v3 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_51:
      v42 = MEMORY[0x20F2E7A20](v3);
      goto LABEL_19;
    }

    v4 = *(v0 + 400);
    v5 = *(v0 + 384);
    v6 = v2 + 1;
  }

  else
  {
    v7 = *(v0 + 384);
    v4 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
LABEL_54:
      __break(1u);
      return;
    }

    v3 = *(v0 + 392);
    v6 = *(v0 + 376);
    v5 = v7 + 1;
  }

  v9 = *(v0 + 464);
  v8 = *(v0 + 472);
  v10 = *(v0 + 456);
  v11 = *(v0 + 440);
  v12 = *(v0 + 432);
  v13 = *(v0 + 408);
  v14 = *(v0 + 368);
  *(v0 + 16) = *(v0 + 424);
  *(v0 + 24) = v12;
  *(v0 + 32) = v1;
  *(v0 + 40) = v11;
  *(v0 + 56) = v10;
  *(v0 + 64) = v9;
  *(v0 + 72) = *(v0 + 480);
  *(v0 + 88) = v13;
  *(v0 + 96) = partial apply for closure #3 in MediaSuggestionsModel.update(_:with:requestId:);
  *(v0 + 104) = v8;
  outlined init with copy of WorkoutMediaSuggestion(v0 + 16, v0 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v0 + 368);
  v89 = v3;
  v90 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
  }

  v18 = *(v16 + 2);
  v17 = *(v16 + 3);
  v87 = v6;
  v88 = v5;
  v19 = v18 + 1;
  if (v18 >= v17 >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v16);
  }

  v20 = *(v0 + 504);
  v96 = *(v0 + 472);
  v22 = *(v0 + 448);
  v21 = *(v0 + 456);
  v23 = *(v0 + 440);
  v24 = *(v0 + 408);
  v94 = *(v0 + 464);
  v95 = *(v0 + 416);
  v93 = *(v0 + 360);
  v25 = &v16[96 * v18];
  v91 = *(v0 + 480);
  v92 = *(v0 + 424);
  v26 = v16;

  *(v26 + 2) = v19;
  v27 = *(v0 + 32);
  *(v25 + 2) = *(v0 + 16);
  *(v25 + 3) = v27;
  v28 = *(v0 + 48);
  v29 = *(v0 + 64);
  v30 = *(v0 + 96);
  *(v25 + 6) = *(v0 + 80);
  *(v25 + 7) = v30;
  *(v25 + 4) = v28;
  *(v25 + 5) = v29;
  *(v0 + 208) = v92;
  *(v0 + 224) = v20;
  *(v0 + 232) = v23;
  *(v0 + 240) = v22;
  *(v0 + 248) = v21;
  *(v0 + 256) = v94;
  *(v0 + 264) = v91;
  *(v0 + 280) = v24;
  *(v0 + 288) = partial apply for closure #3 in MediaSuggestionsModel.update(_:with:requestId:);
  *(v0 + 296) = v96;
  outlined destroy of WorkoutMediaSuggestion(v0 + 208);
  if (v95 == v93)
  {
    v31 = *(v0 + 344);
    v32 = *(v0 + 352);
    v33 = *(v0 + 328);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v37 = *(v0 + 320);
      v36 = *(v0 + 328);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v97 = v39;
      *v38 = 136315650;
      *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v36, &v97);
      *(v38 + 12) = 2048;
      *(v38 + 14) = v89;
      *(v38 + 22) = 2048;
      *(v38 + 24) = v90;
      _os_log_impl(&dword_20AEA4000, v34, v35, "[%s] Artwork loading completed - success: %ld, failures: %ld", v38, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x20F2E9420](v39, -1, -1);
      MEMORY[0x20F2E9420](v38, -1, -1);
    }

    v40 = *(v0 + 8);

    v40(v26);
    return;
  }

  v3 = *(v0 + 416);
  *(v0 + 392) = v89;
  *(v0 + 400) = v90;
  *(v0 + 376) = v87;
  *(v0 + 384) = v88;
  *(v0 + 368) = v26;
  v41 = *(v0 + 344);
  if ((v41 & 0xC000000000000001) != 0)
  {
    goto LABEL_51;
  }

  if (v3 >= *(v41 + 16))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v42 = *(v41 + 8 * v3 + 32);
LABEL_19:
  v43 = v42;
  *(v0 + 408) = v42;
  *(v0 + 416) = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
    goto LABEL_53;
  }

  v44 = [v42 identifier];
  if (v44)
  {
    v45 = v44;
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;
  }

  else
  {
    v46 = 0;
    v48 = 0xE000000000000000;
  }

  *(v0 + 424) = v46;
  *(v0 + 432) = v48;
  v49 = [v43 bundleID];
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  *(v0 + 440) = v50;
  *(v0 + 448) = v52;
  v53 = [v43 title];
  if (v53)
  {
    v54 = v53;
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;
  }

  else
  {
    v55 = 0;
    v57 = 0xE000000000000000;
  }

  *(v0 + 456) = v55;
  *(v0 + 464) = v57;
  v58 = [v43 artist];
  if (v58)
  {
    v59 = v58;
    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;
  }

  else
  {
    v60 = 0;
    v62 = 0;
  }

  v63 = *(v0 + 336);
  v64 = *(v0 + 344);
  v65 = *(v0 + 312);
  v66 = swift_allocObject();
  *(v0 + 472) = v66;
  v66[2] = v63;
  v66[3] = v43;
  v66[4] = v64;
  v66[5] = v65;
  if (!v62)
  {
    if (v50 == 0x6C7070612E6D6F63 && v52 == 0xEF636973754D2E65 || (v70 = _stringCompareWithSmolCheck(_:_:expecting:)(), v71 = *(v0 + 336), v72 = *(v0 + 344), v65 = *(v0 + 312), (v70 & 1) != 0))
    {
      v73 = v43;

      v74 = v65;
      v75 = v73;

      if ([v75 suggestionSource] == 1)
      {
        v76 = [v75 editorialTags];
        v77 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v78 = *(v77 + 16);

        if (v78)
        {
          v60 = 0x754D20656C707041;
        }

        else
        {
          v60 = 0;
        }

        if (v78)
        {
          v62 = 0xEB00000000636973;
        }

        else
        {
          v62 = 0;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v84 = v43;

      v85 = v65;
      v86 = v84;
    }

    goto LABEL_45;
  }

  if (v50 == 0xD000000000000012 && 0x800000020B45A5C0 == v52)
  {
    v67 = v43;

    v68 = v65;
    v69 = v67;

LABEL_44:

LABEL_45:
    v60 = 0;
    v62 = 0;
    goto LABEL_46;
  }

  v79 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v80 = v43;

  v81 = v65;
  v82 = v80;

  if (v79)
  {
    goto LABEL_44;
  }

LABEL_46:
  *(v0 + 480) = v60;
  *(v0 + 488) = v62;
  v83 = swift_task_alloc();
  *(v0 + 496) = v83;
  *v83 = v0;
  v83[1] = MediaSuggestionsModel.update(_:with:requestId:);

  MSSuggestion.unifiedArtworkImage()();
}

void WorkoutMediaSuggestion.init(id:artwork:bundleID:title:detail:msSuggestion:sendFeedback:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, unint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v20 = a12;
  v19 = a13;
  v21 = a10;
  if (a10)
  {
    if (a4 == 0xD000000000000012 && 0x800000020B45A5C0 == a5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

LABEL_15:
      v29 = 0;
      v21 = 0;
      goto LABEL_16;
    }

    v29 = a8;
  }

  else
  {
    if ((a4 != 0x6C7070612E6D6F63 || a5 != 0xEF636973754D2E65) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_15;
    }

    v22 = a11;
    if ([v22 suggestionSource] != 1)
    {

      goto LABEL_15;
    }

    v23 = a6;
    v24 = a7;
    v25 = [v22 editorialTags];

    v26 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = *(v26 + 16);

    v28 = v27 == 0;
    a7 = v24;
    a6 = v23;
    v19 = a13;
    v20 = a12;
    v29 = 0x754D20656C707041;
    if (v28)
    {
      v29 = 0;
      v21 = 0;
    }

    else
    {
      v21 = 0xEB00000000636973;
    }
  }

LABEL_16:
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = v29;
  a9[8] = v21;
  a9[9] = a11;
  a9[10] = v20;
  a9[11] = v19;
}

uint64_t MediaSuggestionsModel.availablebundleIDsForMediaSuggestions()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](MediaSuggestionsModel.availablebundleIDsForMediaSuggestions(), 0, 0);
}

{
  v1 = *(*(v0 + 16) + 16);
  v2 = *(MEMORY[0x277D214F0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = MediaSuggestionsModel.availablebundleIDsForMediaSuggestions();

  return MEMORY[0x28217DEF8]();
}

{
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static WOLog.mediaPlayback);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "No bundleIDs available for media suggestions", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v5 = *(v0 + 32);

  v6 = *(v0 + 8);
  v7 = MEMORY[0x277D84F90];

  return v6(v7);
}

uint64_t MediaSuggestionsModel.availablebundleIDsForMediaSuggestions()(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v5 = *v2;
  *(v5 + 32) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](MediaSuggestionsModel.availablebundleIDsForMediaSuggestions(), 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t MediaSuggestionsModel.loadDemoSuggestions(cacheKey:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v7 = *(v6 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](MediaSuggestionsModel.loadDemoSuggestions(cacheKey:), 0, 0);
}

uint64_t MediaSuggestionsModel.loadDemoSuggestions(cacheKey:)()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  MediaSuggestionsModel.demoCacheFileURL(cacheKey:)(v0[3], v0[4], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    _sSo8NSObjectCSgWOhTm_2(v0[7], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v4 = v0[10];
    v5 = v0[7];

    v6 = v0[1];

    return v6(0);
  }

  else
  {
    v8 = v0[10];
    v9 = v0[6];
    (*(v0[9] + 32))(v8, v0[7], v0[8]);
    v10 = swift_task_alloc();
    v0[11] = v10;
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
    v11 = *(MEMORY[0x277D859E0] + 4);
    v12 = swift_task_alloc();
    v0[12] = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12MSSuggestionCGSgMd, &_sSaySo12MSSuggestionCGSgMR);
    *v12 = v0;
    v12[1] = MediaSuggestionsModel.loadDemoSuggestions(cacheKey:);

    return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000018, 0x800000020B45A690, partial apply for closure #1 in MediaSuggestionsModel.loadMSSuggestions(from:), v10, v13);
  }
}

{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x2822009F8](MediaSuggestionsModel.loadDemoSuggestions(cacheKey:), 0, 0);
}

{
  v1 = v0[2];
  (*(v0[9] + 8))(v0[10], v0[8]);
  v2 = v0[10];
  v3 = v0[7];

  v4 = v0[1];

  return v4(v1);
}

uint64_t MediaSuggestionsModel.demoCacheFileURL(cacheKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a1;
  v59 = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for URL();
  v56 = *(v5 - 8);
  v6 = *(v56 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v51 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v51 - v13;
  v15 = objc_opt_self();
  v16 = [v15 defaultManager];
  v17 = [v16 URLsForDirectory:9 inDomains:1];

  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v18 + 16))
  {
    v53 = a2;
    v54 = a3;
    v19 = *(v56 + 16);
    v19(v14, v18 + ((*(v56 + 80) + 32) & ~*(v56 + 80)), v5);

    URL.appendingPathComponent(_:)();
    v20 = [v15 defaultManager];
    URL._bridgeToObjectiveC()(v21);
    v23 = v22;
    v57 = 0;
    v24 = [v20 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:&v57];

    if (v24)
    {
      v25 = v57;
    }

    else
    {
      v33 = v57;
      v34 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (one-time initialization token for mediaPlayback != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static WOLog.mediaPlayback);
      v19(v9, v12, v5);
      v36 = v34;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v57 = v52;
        *v39 = 136315394;
        v40 = URL.path.getter();
        v42 = v41;
        (*(v56 + 8))(v9, v5);
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v57);

        *(v39 + 4) = v43;
        *(v39 + 12) = 2112;
        v44 = v34;
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 14) = v45;
        v46 = v51;
        *v51 = v45;
        _os_log_impl(&dword_20AEA4000, v37, v38, "[DemoMode] Failed to create cache directory at %s: %@", v39, 0x16u);
        _sSo8NSObjectCSgWOhTm_2(v46, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x20F2E9420](v46, -1, -1);
        v47 = v52;
        __swift_destroy_boxed_opaque_existential_0(v52);
        MEMORY[0x20F2E9420](v47, -1, -1);
        MEMORY[0x20F2E9420](v39, -1, -1);
      }

      else
      {

        (*(v56 + 8))(v9, v5);
      }
    }

    v48 = v54;
    v57 = 0;
    v58 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    v57 = 0xD000000000000017;
    v58 = 0x800000020B45A670;
    MEMORY[0x20F2E6D80](v55, v53);
    MEMORY[0x20F2E6D80](0x7473696C702ELL, 0xE600000000000000);
    URL.appendingPathComponent(_:)();

    v49 = *(v56 + 8);
    v49(v12, v5);
    v49(v14, v5);
    result = (*(v56 + 56))(v48, 0, 1, v5);
    v50 = *MEMORY[0x277D85DE8];
  }

  else
  {

    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static WOLog.mediaPlayback);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_20AEA4000, v27, v28, "[DemoMode] Documents directory unavailable - caching disabled", v29, 2u);
      MEMORY[0x20F2E9420](v29, -1, -1);
    }

    v30 = *(v56 + 56);
    v31 = *MEMORY[0x277D85DE8];

    return v30(a3, 1, 1, v5);
  }

  return result;
}