uint64_t closure #1 in closure #1 in closure #2 in WorkoutConfigurationOccurrenceStore.deduplicate(_:)(int a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v46 = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static WOLog.app);
  v15 = a3;
  v16 = a2;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v43 = v18;
    v44 = a5;
    v45 = a4;
    v19 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v49 = v42;
    *v19 = 136316162;
    v20 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
    swift_beginAccess();
    v50 = *&v15[v20];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4UUIDVGSgMd, &_sSay10Foundation4UUIDVGSgMR);
    v21 = Optional.description.getter();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v49);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v24 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    (*(v10 + 16))(v13, &v15[v24], v9);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v10 + 8))(v13, v9);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v49);

    *(v19 + 14) = v28;
    *(v19 + 22) = 1024;
    *(v19 + 24) = v46 & 1;
    *(v19 + 28) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v29 = MEMORY[0x20F2E7F50](v47, v48);
      a2 = v30;
    }

    else
    {
      v29 = 0;
    }

    v31 = v43;
    v50 = v29;
    v51 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v32 = Optional.description.getter();
    v34 = v33;

    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v49);

    *(v19 + 30) = v35;
    *(v19 + 38) = 2080;
    v36 = WorkoutConfiguration.logString.getter();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v49);

    *(v19 + 40) = v38;
    _os_log_impl(&dword_20AEA4000, v17, v31, "[deduplicate] Save alternativeUUIDs %s to workout_configuration: %s, success: %{BOOL}d, error: %s, %s", v19, 0x30u);
    v39 = v42;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v39, -1, -1);
    MEMORY[0x20F2E9420](v19, -1, -1);

    a5 = v44;
  }

  else
  {
  }

  v40 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  (*(v10 + 16))(v13, a5 + v40, v9);
  WorkoutConfigurationOccurrenceStore.removeOccurrence(uuid:)(v13);
  return (*(v10 + 8))(v13, v9);
}

void closure #3 in static WorkoutConfigurationOccurrenceStore.sortedWorkoutConfigurations(_:filterType:activityType:currentLocation:)(void **a1, uint64_t a2, uint64_t a3)
{
  v74 = a3;
  v67 = type metadata accessor for UUID();
  v66 = *(v67 - 8);
  v4 = *(v66 + 64);
  MEMORY[0x28223BE20](v67);
  v65 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v69 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v68 = &v63 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v63 - v13;
  v15 = *a1;
  v16 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
  swift_beginAccess();
  v17 = *&v15[v16];
  v18 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
  swift_beginAccess();
  v63 = *(v17 + v18);
  v19 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_creationDate;
  swift_beginAccess();
  v20 = v7[2];
  v20(v14, v17 + v19, v6);
  v64 = specialized static WorkoutConfigurationOccurrenceStore.daysAgo(from:now:)(v14, v74);
  v21 = v7[1];
  v71 = v7 + 1;
  v70 = v21;
  v21(v14, v6);
  v22 = v69;
  v73 = v16;
  v72 = v15;
  v23 = *&v15[v16];
  v24 = v20;
  v25 = v68;
  v26 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
  swift_beginAccess();
  v24(v25, v23 + v26, v6);
  v27 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
  swift_beginAccess();
  v24(v22, v23 + v27, v6);
  Date.timeIntervalSinceReferenceDate.getter();
  v29 = v28;
  Date.timeIntervalSinceReferenceDate.getter();
  if (v30 <= v29)
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v33 = v32;
    Date.timeIntervalSinceReferenceDate.getter();
    v35 = v34;
    v31 = v70;
    v70(v22, v6);
    v31(v25, v6);
    if (v33 - v35 >= 86400.0)
    {
      v36 = 0;
    }

    else
    {
      v36 = 1000000;
    }

    LODWORD(v69) = v36;
  }

  else
  {
    v31 = v70;
    v70(v22, v6);
    v31(v25, v6);
    LODWORD(v69) = 0;
  }

  v37 = v72;
  v38 = v72;
  Date.timeIntervalSinceReferenceDate.getter();
  v40 = v39;
  v41 = *&v37[v73];
  v42 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
  swift_beginAccess();
  v24(v14, v41 + v42, v6);
  Date.timeIntervalSinceReferenceDate.getter();
  v44 = v43;

  v31(v14, v6);
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  __swift_project_value_buffer(v45, static WOLog.app);
  v46 = v38;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v47, v48))
  {
    LODWORD(v74) = v63 & ~(v63 >> 31);
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v78 = v50;
    *v49 = 136315650;
    v51 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    v52 = v66;
    v53 = &v46[v51];
    v54 = v65;
    v55 = v67;
    (*(v66 + 16))(v65, v53, v67);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = v57;
    (*(v52 + 8))(v54, v55);
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v78);

    *(v49 + 4) = v59;
    *(v49 + 12) = 2080;
    v75 = v74;
    v76 = v64;
    v77 = v69;
    v60 = WorkoutConfigurationWeight.description.getter();
    v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, &v78);

    *(v49 + 14) = v62;
    *(v49 + 22) = 2048;
    *(v49 + 24) = v40 - v44;
    _os_log_impl(&dword_20AEA4000, v47, v48, "sorted workout_configuration %s (weight: %s, secondsAgo: %f)", v49, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v50, -1, -1);
    MEMORY[0x20F2E9420](v49, -1, -1);
  }
}

void closure #2 in static WorkoutConfigurationOccurrenceStore.sortedNearbyRaceConfigurations(_:filterType:currentLocation:)(void **a1@<X0>, int a2@<W1>, void *a3@<X2>, void *a4@<X8>)
{
  v126 = a4;
  LODWORD(v5) = a2;
  v125 = type metadata accessor for UUID();
  v7 = *(v125 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v125);
  v124 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = __swift_project_value_buffer(v11, static WOLog.race);
  v13 = v10;
  v123 = v12;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v128[0] = v121;
    *v16 = 136315394;
    v127 = v5;
    v120 = v14;
    v17 = WorkoutConfigurationFilterType.displayName.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v128);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    v20 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    v21 = *(v7 + 16);
    v22 = &v13[v20];
    v23 = v124;
    LODWORD(v122) = v5;
    v5 = v7;
    v24 = v125;
    v21(v124, v22, v125);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v25 = a3;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v29 = *(v5 + 8);
    v30 = v24;
    v7 = v5;
    LOBYTE(v5) = v122;
    v29(v23, v30);
    v31 = v26;
    a3 = v25;
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v28, v128);

    *(v16 + 14) = v32;
    v14 = v120;
    _os_log_impl(&dword_20AEA4000, v120, v15, "Race: filter (%s) candidate race workout_configuration: %s", v16, 0x16u);
    v33 = v121;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v33, -1, -1);
    MEMORY[0x20F2E9420](v16, -1, -1);
  }

  type metadata accessor for RaceWorkoutConfiguration();
  v34 = swift_dynamicCastClass();
  if (!v34)
  {
    v64 = v13;
    v46 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v46, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v129 = v67;
      *v66 = 136315394;
      LOBYTE(v128[0]) = v5;
      v68 = WorkoutConfigurationFilterType.displayName.getter();
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, &v129);

      *(v66 + 4) = v70;
      *(v66 + 12) = 2080;
      v71 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
      swift_beginAccess();
      v72 = *(v7 + 16);
      v73 = &v64[v71];
      v74 = v124;
      v75 = v7;
      v76 = v125;
      v72(v124, v73, v125);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v77 = dispatch thunk of CustomStringConvertible.description.getter();
      v79 = v78;
      (*(v75 + 8))(v74, v76);
      v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v79, &v129);

      *(v66 + 14) = v80;
      _os_log_impl(&dword_20AEA4000, v46, v65, "Race: filter (%s) race workout_configuration: %s is not RaceWorkoutConfiguration, skip...", v66, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v67, -1, -1);
      MEMORY[0x20F2E9420](v66, -1, -1);
    }

    goto LABEL_15;
  }

  v35 = v34;
  v36 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude;
  v37 = *(v34 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude);
  v38 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude;
  v39 = *(v34 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude);
  v40 = v13;
  v130.latitude = v37;
  v130.longitude = v39;
  if (!CLLocationCoordinate2DIsValid(v130) || (v41 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*&v35[v36] longitude:*&v35[v38]]) == 0)
  {
    v46 = v40;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v129 = v123;
      *v49 = 136315394;
      LOBYTE(v128[0]) = v5;
      v50 = WorkoutConfigurationFilterType.displayName.getter();
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v129);

      *(v49 + 4) = v52;
      *(v49 + 12) = 2080;
      v53 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
      swift_beginAccess();
      v54 = *(v7 + 16);
      v55 = v46 + v53;
      v56 = v124;
      v57 = v7;
      v58 = v125;
      v54(v124, v55, v125);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      (*(v57 + 8))(v56, v58);
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, &v129);

      *(v49 + 14) = v62;
      _os_log_impl(&dword_20AEA4000, v47, v48, "Race: filter (%s) race workout_configuration %s lastWorkoutStartingPoint is nil, skip...", v49, 0x16u);
      v63 = v123;
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v63, -1, -1);
      MEMORY[0x20F2E9420](v49, -1, -1);
    }

LABEL_15:
    v45 = 0;
    goto LABEL_16;
  }

  v42 = v41;
  [v41 distanceFromLocation_];
  v44 = v43;
  if (v43 <= 1000.0)
  {
    v81 = v40;
    v45 = v35;
  }

  else
  {
    v45 = 0;
  }

  v82 = v45;
  v83 = v40;
  v122 = v82;
  v84 = a3;
  v85 = v42;
  v118 = v42;
  v86 = v85;
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.default.getter();
  v121 = v86;

  v120 = v84;
  v123 = v83;

  v119 = v88;
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v116 = v87;
    v90 = v5;
    v91 = v89;
    v115 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v129 = v117;
    *v91 = 136316674;
    LOBYTE(v128[0]) = v90;
    v92 = WorkoutConfigurationFilterType.displayName.getter();
    v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v93, &v129);
    v95 = v122;
    v96 = v94;

    *(v91 + 4) = v96;
    *(v91 + 12) = 2080;
    v97 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    v98 = &v35[v97];
    v99 = v124;
    v100 = v125;
    (*(v7 + 16))(v124, v98, v125);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v101 = dispatch thunk of CustomStringConvertible.description.getter();
    v102 = v121;
    v103 = v101;
    v105 = v104;
    (*(v7 + 8))(v99, v100);
    v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v105, &v129);

    *(v91 + 14) = v106;
    *(v91 + 22) = 1024;

    *(v91 + 24) = v45 != 0;
    *(v91 + 28) = 2112;
    v107 = v120;
    *(v91 + 30) = v120;
    *(v91 + 38) = 2112;
    *(v91 + 40) = v102;
    v108 = v115;
    v109 = v118;
    *v115 = v107;
    v108[1] = v109;
    *(v91 + 48) = 2048;
    *(v91 + 50) = v44;
    *(v91 + 58) = 2048;
    *(v91 + 60) = 0x408F400000000000;
    v110 = v107;
    v111 = v102;
    v112 = v116;
    _os_log_impl(&dword_20AEA4000, v116, v119, "Race: filter (%s) race workout_configuration %s nearby: %{BOOL}d (currentLocation: %@, lastWorkoutStartingPoint: %@, distance: %f, max distance: %f meters)", v91, 0x44u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v108, -1, -1);
    v113 = v117;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v113, -1, -1);
    MEMORY[0x20F2E9420](v91, -1, -1);
  }

  else
  {

    v114 = v122;
  }

LABEL_16:
  *v126 = v45;
}

void closure #1 in static WorkoutConfigurationOccurrenceStore.sortedRaceConfigurations(_:filterType:)(void **a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  type metadata accessor for RaceWorkoutConfiguration();
  v13 = swift_dynamicCastClass();
  v14 = one-time initialization token for race;
  if (v13)
  {
    v15 = v13;
    v53 = v8;
    v55 = a3;
    v16 = v12;
    if (v14 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.race);
    v18 = v16;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v54 = v3;
      v22 = v21;
      v52 = swift_slowAlloc();
      v57 = v52;
      *v22 = 136315394;
      v56 = a2;
      v23 = WorkoutConfigurationFilterType.displayName.getter();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v57);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      v26 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
      swift_beginAccess();
      v27 = v53;
      (*(v53 + 16))(v11, v15 + v26, v7);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v27 + 8))(v11, v7);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v57);

      *(v22 + 14) = v31;
      _os_log_impl(&dword_20AEA4000, v19, v20, "Race: filter (%s) race workout_configuration %s", v22, 0x16u);
      v32 = v52;
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v32, -1, -1);
      MEMORY[0x20F2E9420](v22, -1, -1);
    }

    a3 = v55;
  }

  else
  {
    v54 = v3;
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static WOLog.race);
    v34 = v12;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      LODWORD(v53) = v36;
      v38 = v8;
      v39 = v37;
      v40 = swift_slowAlloc();
      v55 = a3;
      v41 = v40;
      v57 = v40;
      *v39 = 136315394;
      v56 = a2;
      v42 = WorkoutConfigurationFilterType.displayName.getter();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v57);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2080;
      v45 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
      swift_beginAccess();
      (*(v38 + 16))(v11, &v34[v45], v7);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      (*(v38 + 8))(v11, v7);
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v57);

      *(v39 + 14) = v49;
      _os_log_impl(&dword_20AEA4000, v35, v53, "Race: filter (%s) race workout_configuration: %s is not RaceWorkoutConfiguration, skip...", v39, 0x16u);
      swift_arrayDestroy();
      v50 = v41;
      a3 = v55;
      MEMORY[0x20F2E9420](v50, -1, -1);
      MEMORY[0x20F2E9420](v39, -1, -1);
    }

    v15 = 0;
  }

  *a3 = v15;
}

void closure #4 in static WorkoutConfigurationOccurrenceStore.sortedNearbyRaceConfigurations(_:filterType:currentLocation:)(void **a1, char a2, const char *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static WOLog.race);
  v13 = v11;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v49 = v15;
    v50 = v14;
    v51 = a3;
    v16 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v53 = v48;
    *v16 = 136316418;
    v52 = a2;
    v17 = WorkoutConfigurationFilterType.displayName.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v53);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    v20 = &v13[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle];
    swift_beginAccess();
    v22 = *v20;
    v21 = v20[1];

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, &v53);

    *(v16 + 14) = v23;
    *(v16 + 22) = 2080;
    v24 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    v46 = *(v7 + 16);
    v46(v10, &v13[v24], v6);
    v45[1] = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v7;
    v28 = v27;
    v45[0] = *(v26 + 8);
    (v45[0])(v10, v6);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v28, &v53);

    *(v16 + 24) = v29;
    *(v16 + 32) = 2080;
    v30 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID;
    swift_beginAccess();
    v46(v10, &v13[v30], v6);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    (v45[0])(v10, v6);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v53);

    *(v16 + 34) = v34;
    *(v16 + 42) = 2112;
    v35 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude;
    v54.latitude = *&v13[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude];
    v36 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude;
    v54.longitude = *&v13[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude];
    if (CLLocationCoordinate2DIsValid(v54))
    {
      v37 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*&v13[v35] longitude:*&v13[v36]];
      v38 = v37;
    }

    else
    {
      v37 = 0;
      v38 = 0;
    }

    v39 = v51;
    v40 = v49;
    *(v16 + 44) = v37;
    v41 = v47;
    *v47 = v38;
    *(v16 + 52) = 2048;
    v42 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
    swift_beginAccess();
    *(v16 + 54) = *&v13[v42];
    v43 = v50;
    _os_log_impl(&dword_20AEA4000, v50, v40, v39, v16, 0x3Eu);
    _sSo8NSObjectCSgWOhTm_3(v41, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v41, -1, -1);
    v44 = v48;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v44, -1, -1);
    MEMORY[0x20F2E9420](v16, -1, -1);
  }

  else
  {
  }
}

uint64_t WorkoutConfigurationOccurrenceStore.topSuggested(limit:)(unint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v62 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Date.init()();
  v9 = *(v1 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_activityMoveModeBlock);
  v10 = *(v1 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_activityMoveModeBlock + 8);
  v11 = v9(v8);
  v12 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurations;
  v58 = v4;
  v57 = v5;
  v61 = a1;
  if (v11 == 2)
  {
    swift_beginAccess();
    v13 = *(v2 + v12);

    v15 = specialized _NativeDictionary.filter(_:)(v14);
  }

  else
  {
    swift_beginAccess();
    v15 = *(v2 + v12);
  }

  v16 = specialized _NativeDictionary.filter(_:)(v15);
  v59 = 0;

  v17 = 0;
  v65 = MEMORY[0x277D84F90];
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v20 = ~(-1 << v18);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & *(v16 + 64);
  v22 = (v18 + 63) >> 6;
  while (v21)
  {
LABEL_14:
    v24 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v25 = *(*(v16 + 56) + ((v17 << 9) | (8 * v24)));
    v26 = lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType();
    v27 = v25;
    v63[0] = MEMORY[0x20F2E7290](5, &type metadata for ConfigurationType, v26);
    specialized Set._Variant.insert(_:)(&v64, 0);
    specialized Set._Variant.insert(_:)(&v64, 1);
    specialized Set._Variant.insert(_:)(&v64, 2);
    specialized Set._Variant.insert(_:)(&v64, 3);
    specialized Set._Variant.insert(_:)(&v64, 4);
    v28 = v63[0];
    v15 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
    swift_beginAccess();
    if (!*(v28 + 16))
    {
      goto LABEL_8;
    }

    v29 = v27[v15];
    v30 = *(v28 + 40);
    Hasher.init(_seed:)();
    v15 = v63;
    MEMORY[0x20F2E7FF0](v29 + 1);
    v31 = Hasher._finalize()();
    v32 = -1 << *(v28 + 32);
    v33 = v31 & ~v32;
    if ((*(v28 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
    {
      v34 = ~v32;
      while (*(*(v28 + 48) + v33) != v29)
      {
        v33 = (v33 + 1) & v34;
        if (((*(v28 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v15 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
      swift_beginAccess();
      if (*&v27[v15])
      {
      }

      else
      {
        v15 = &v65;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v35 = *(v65 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }
    }

    else
    {
LABEL_8:
    }
  }

  while (1)
  {
    v23 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_56;
    }

    if (v23 >= v22)
    {
      break;
    }

    v21 = *(v16 + 64 + 8 * v23);
    ++v17;
    if (v21)
    {
      v17 = v23;
      goto LABEL_14;
    }
  }

  v17 = &v57;
  MEMORY[0x28223BE20](v36);
  v37 = ObjectType;
  *(&v57 - 2) = v62;
  *(&v57 - 1) = v37;

  v63[0] = specialized Array._copyToContiguousArray()(v38);
  v15 = v63;
  v39 = v59;
  specialized MutableCollection<>.sort(by:)(partial apply for closure #2 in WorkoutConfigurationOccurrenceStore.topSuggested(limit:), (&v57 - 4));
  if (v39)
  {
    goto LABEL_71;
  }

  v19 = v61;
  if ((v61 & 0x8000000000000000) != 0)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v15 = v63[0];
  LODWORD(v17) = v63[0] < 0 || (v63[0] & 0x4000000000000000) != 0;
  if ((v17 & 1) == 0)
  {
    v40 = *(v63[0] + 16);
    if (v40 >= v61)
    {
      v41 = v61;
    }

    else
    {
      v41 = *(v63[0] + 16);
    }

    if (v61)
    {
      v42 = v41;
    }

    else
    {
      v42 = 0;
    }

    if (v40 >= v42)
    {
      goto LABEL_36;
    }

LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

LABEL_57:
  v39 = __CocoaSet.count.getter();
  if ((__CocoaSet.count.getter() & 0x8000000000000000) == 0)
  {
    if (v39 >= v19)
    {
      v56 = v19;
    }

    else
    {
      v56 = v39;
    }

    if (v39 < 0)
    {
      v56 = v19;
    }

    if (v19)
    {
      v42 = v56;
    }

    else
    {
      v42 = 0;
    }

    if (__CocoaSet.count.getter() < v42)
    {
      goto LABEL_67;
    }

LABEL_36:
    if ((v15 & 0xC000000000000001) != 0 && v42)
    {
      type metadata accessor for WorkoutConfiguration();

      v43 = 0;
      do
      {
        v44 = v43 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v43);
        v43 = v44;
      }

      while (v42 != v44);
    }

    else
    {
    }

    if (v17)
    {
      v45 = _CocoaArrayWrapper.subscript.getter();
      v22 = v46;
      v39 = v47;
      v42 = v48;

      v15 = v45;
      if (v42)
      {
LABEL_47:
        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v53 = swift_dynamicCastClass();
        if (!v53)
        {
          swift_unknownObjectRelease();
          v53 = MEMORY[0x277D84F90];
        }

        v54 = *(v53 + 16);

        if (__OFSUB__(v42 >> 1, v39))
        {
          goto LABEL_68;
        }

        if (v54 == (v42 >> 1) - v39)
        {
          v50 = swift_dynamicCastClass();
          swift_unknownObjectRelease_n();
          v51 = v58;
          v52 = v57;
          if (!v50)
          {
            v50 = MEMORY[0x277D84F90];
LABEL_53:
            swift_unknownObjectRelease();
          }

          (*(v52 + 8))(v62, v51);
          return v50;
        }

LABEL_69:
        swift_unknownObjectRelease_n();
      }
    }

    else
    {
      v39 = 0;
      v22 = v15 + 32;
      v42 = (2 * v42) | 1;
      if (v42)
      {
        goto LABEL_47;
      }
    }

    specialized _copyCollectionToContiguousArray<A>(_:)(v15, v22, v39, v42, type metadata accessor for WorkoutConfiguration);
    v50 = v49;
    v51 = v58;
    v52 = v57;
    goto LABEL_53;
  }

  __break(1u);
LABEL_71:

  __break(1u);
  return result;
}

char *WorkoutConfigurationOccurrenceStore.topSuggestedOpenGoal(for:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for Date();
  v53 = *(v2 - 8);
  v3 = *(v53 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
  v55 = v5;
  Date.init()();
  v52 = a1;
  v6 = WorkoutConfigurationOccurrenceStore.configurations(for:)(a1);
  v7 = v6;
  v58[0] = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v51 = v2;
    v2 = 0;
    v9 = v7 & 0xC000000000000001;
    v56 = v7 & 0xC000000000000001;
    while (1)
    {
      if (v9)
      {
        v10 = MEMORY[0x20F2E7A20](v2, v7);
      }

      else
      {
        if (v2 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v10 = *(v7 + 8 * v2 + 32);
      }

      v11 = v10;
      v12 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v13 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
      swift_beginAccess();
      if (*(v11 + v13) || (type metadata accessor for GoalWorkoutConfiguration(), !swift_dynamicCastClass()))
      {
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v14 = v11;
        static Published.subscript.getter();

        v15 = v59;
        v16 = [v59 isEqual_];

        if (v16)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v17 = *(v58[0] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        v9 = v56;
      }

      ++v2;
      if (v12 == i)
      {
        v2 = v51;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  MEMORY[0x28223BE20](v18);
  v19 = ObjectType;
  *(&v50 - 2) = v55;
  *(&v50 - 1) = v19;

  v58[0] = specialized Array._copyToContiguousArray()(v20);
  specialized MutableCollection<>.sort(by:)(partial apply for closure #2 in WorkoutConfigurationOccurrenceStore.topSuggestedOpenGoal(for:), (&v50 - 4));

  v21 = v58[0];
  if (v58[0] < 0 || (v58[0] & 0x4000000000000000) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_24;
    }
  }

  else if (*(v58[0] + 16))
  {
LABEL_24:
    if ((v21 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x20F2E7A20](0, v21);
      goto LABEL_27;
    }

    if (*(v21 + 16))
    {
      v22 = *(v21 + 32);
LABEL_27:
      v23 = v22;

      v24 = specialized static WorkoutConfiguration.copy(of:with:preservingExternalProvider:)(v23, v52, 1);
      if (one-time initialization token for app != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static WOLog.app);
      v26 = v24;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = v2;
        v32 = swift_slowAlloc();
        v59 = v32;
        *v29 = 138412546;
        v33 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
        swift_beginAccess();
        v34 = *&v26[v33];
        *(v29 + 4) = v34;
        *v30 = v34;
        *(v29 + 12) = 2080;
        v35 = v34;
        v36 = WorkoutConfiguration.logDisplayName.getter();
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v59);

        *(v29 + 14) = v38;
        _os_log_impl(&dword_20AEA4000, v27, v28, "[topSuggestedOpenGoal] occurrence (%@) found for workout_configuration: %s", v29, 0x16u);
        _sSo8NSObjectCSgWOhTm_3(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x20F2E9420](v30, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm_6(v32);
        v39 = v32;
        v2 = v31;
        MEMORY[0x20F2E9420](v39, -1, -1);
        MEMORY[0x20F2E9420](v29, -1, -1);
      }

      goto LABEL_37;
    }

    __break(1u);
    goto LABEL_40;
  }

  v40 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
  v21 = specialized static WorkoutConfiguration.make(activityType:goal:)(v52, v40);

  if (one-time initialization token for app != -1)
  {
LABEL_40:
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  __swift_project_value_buffer(v41, static WOLog.app);
  v26 = v21;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v58[0] = v45;
    *v44 = 136315138;
    v46 = WorkoutConfiguration.logDisplayName.getter();
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v58);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_20AEA4000, v42, v43, "[topSuggestedOpenGoal] workout_configuration not found, created transient: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_6(v45);
    MEMORY[0x20F2E9420](v45, -1, -1);
    MEMORY[0x20F2E9420](v44, -1, -1);
  }

LABEL_37:
  (*(v53 + 8))(v55, v2);
  return v26;
}

uint64_t WorkoutConfigurationOccurrenceStore.numberOfCompletedActivities(for:)(void *a1)
{
  v1 = WorkoutConfigurationOccurrenceStore.configurations(for:)(a1);
  v2 = v1;
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_17:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = 0;
  while (v4 != v5)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x20F2E7A20](v5, v2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_15;
      }

      v7 = *(v2 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v9 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    swift_beginAccess();
    v10 = *&v8[v9];

    v11 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
    swift_beginAccess();
    v12 = *&v10[v11];

    ++v5;
    v13 = __OFADD__(v6, v12);
    v6 += v12;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  return v6;
}

uint64_t WorkoutConfigurationOccurrenceStore.addOccurrence(for:modificationDate:)(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  (*(v5 + 16))(v8, &a1[v9], v4);
  v10 = specialized WorkoutConfiguration.sanitized()();
  v11 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurations;
  swift_beginAccess();
  v12 = v10;
  v13 = *(v2 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v2 + v11);
  *(v2 + v11) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, v8, isUniquelyReferenced_nonNull_native);
  (*(v5 + 8))(v8, v4);
  *(v2 + v11) = v30;
  swift_endAccess();
  WorkoutConfigurationOccurrenceStore.configurations.didset();
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static WOLog.app);
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v30 = v21;
    *v19 = 138412546;
    v22 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    swift_beginAccess();
    v23 = *&v16[v22];
    *(v19 + 4) = v23;
    *v20 = v23;
    *(v19 + 12) = 2080;
    v24 = v23;
    v25 = WorkoutConfiguration.logDisplayName.getter();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v30);

    *(v19 + 14) = v27;
    _os_log_impl(&dword_20AEA4000, v17, v18, "Added new occurrence (%@) for workout_configuration (%s)", v19, 0x16u);
    _sSo8NSObjectCSgWOhTm_3(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v20, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_6(v21);
    MEMORY[0x20F2E9420](v21, -1, -1);
    MEMORY[0x20F2E9420](v19, -1, -1);
  }

  return WorkoutConfigurationOccurrenceStore.postUpdateNotification(for:)(v16);
}

void WorkoutConfigurationOccurrenceStore.updateExistingOccurrence(for:postUpdate:)(char *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  (*(v7 + 16))(v10, &a1[v11], v6);
  v12 = specialized WorkoutConfiguration.sanitized()();
  v13 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurations;
  swift_beginAccess();
  v14 = v12;
  v15 = *(v3 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v3 + v13);
  *(v3 + v13) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v10, isUniquelyReferenced_nonNull_native);
  (*(v7 + 8))(v10, v6);
  *(v3 + v13) = v31;
  swift_endAccess();
  WorkoutConfigurationOccurrenceStore.configurations.didset();
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static WOLog.app);
  v18 = a1;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v31 = v23;
    *v21 = 138412546;
    v24 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    swift_beginAccess();
    v25 = *&v18[v24];
    *(v21 + 4) = v25;
    *v22 = v25;
    *(v21 + 12) = 2080;
    v26 = v25;
    v27 = WorkoutConfiguration.logDisplayName.getter();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v31);

    *(v21 + 14) = v29;
    _os_log_impl(&dword_20AEA4000, v19, v20, "Updated existing occurrence (%@) for workout_configuration (%s)", v21, 0x16u);
    _sSo8NSObjectCSgWOhTm_3(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_6(v23);
    MEMORY[0x20F2E9420](v23, -1, -1);
    MEMORY[0x20F2E9420](v21, -1, -1);
  }

  if (a2)
  {
    WorkoutConfigurationOccurrenceStore.postUpdateNotification(for:)(v18);
  }
}

void WorkoutConfigurationOccurrenceStore.saveOccurrence(for:modificationDate:postUpdate:)(char *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v46 = a3;
  v7 = type metadata accessor for UUID();
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = *(v44 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
  swift_beginAccess();
  v43 = v16;
  v17 = *&a1[v16];
  (*(v12 + 16))(v15, a2, v11);
  v18 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
  swift_beginAccess();
  v19 = *(v12 + 40);
  v20 = v17;
  v21 = &v17[v18];
  v22 = a1;
  v19(v21, v15, v11);
  swift_endAccess();

  v23 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  v25 = v44;
  v24 = v45;
  (*(v44 + 16))(v10, &a1[v23], v45);
  v26 = specialized WorkoutConfiguration.sanitized()();
  v27 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurations;
  swift_beginAccess();
  v28 = v26;
  v29 = *(v4 + v27);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = *(v4 + v27);
  *(v4 + v27) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, v10, isUniquelyReferenced_nonNull_native);
  (*(v25 + 8))(v10, v24);
  *(v4 + v27) = v47;
  swift_endAccess();
  WorkoutConfigurationOccurrenceStore.configurations.didset();
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static WOLog.app);
  v32 = a1;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v48 = v37;
    *v35 = 138412546;
    v38 = *&v22[v43];
    *(v35 + 4) = v38;
    *v36 = v38;
    *(v35 + 12) = 2080;
    v39 = v38;
    v40 = WorkoutConfiguration.logDisplayName.getter();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v48);

    *(v35 + 14) = v42;
    _os_log_impl(&dword_20AEA4000, v33, v34, "Saved occurrence (%@) for workout_configuration (%s)", v35, 0x16u);
    _sSo8NSObjectCSgWOhTm_3(v36, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v36, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_6(v37);
    MEMORY[0x20F2E9420](v37, -1, -1);
    MEMORY[0x20F2E9420](v35, -1, -1);
  }

  if (v46)
  {
    WorkoutConfigurationOccurrenceStore.postUpdateNotification(for:)(v32);
  }
}

void WorkoutConfigurationOccurrenceStore.registerOccurrence(for:completionDate:)(char *a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12[-v6];
  v8 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  v9 = *&a1[v8];
  if (v9)
  {

    WorkoutConfigurationOccurrenceStore.managedConfigurationsStore.getter();
    WorkoutManagedConfigurationsStore.updateManagedOccurrence(externalProvider:managedConfiguration:completionDate:)(v9, a1, a2);
  }

  else
  {
    v10 = OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID;
    swift_beginAccess();
    _s10Foundation4UUIDVSgWOcTm_0(&a1[v10], v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v11 = type metadata accessor for UUID();
    LODWORD(v10) = (*(*(v11 - 8) + 48))(v7, 1, v11);
    _sSo8NSObjectCSgWOhTm_3(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v10 == 1)
    {
      WorkoutConfigurationOccurrenceStore._registerUserOccurrence(configuration:completionDate:)(a1, a2);
    }
  }
}

void WorkoutConfigurationOccurrenceStore._registerUserOccurrence(configuration:completionDate:)(char *a1, char *a2)
{
  v112 = a2;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v104 = &v104 - v5;
  v111 = type metadata accessor for Date();
  v110 = *(v111 - 8);
  v6 = *(v110 + 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 1);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v116 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v104 - v13;
  v15 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  v16 = v9[2];
  v120 = a1;
  v115 = v15;
  v16(v14, &a1[v15], v8);
  v17 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurations;
  swift_beginAccess();
  v121 = v2;
  v18 = *&v2[v17];
  if (*(v18 + 16))
  {

    v19 = specialized __RawDictionaryStorage.find<A>(_:)(v14);
    if (v20)
    {
      v21 = v8;
      v22 = v9[1];
      v23 = *(*(v18 + 56) + 8 * v19);
      v114 = v22;
      v22(v14, v21);
      v8 = v21;

      v24 = 0;
      goto LABEL_6;
    }
  }

  v114 = v9[1];
  v114(v14, v8);
  v24 = 1;
LABEL_6:
  v117 = v16;
  v118 = v9 + 2;
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v107 = type metadata accessor for Logger();
  v25 = __swift_project_value_buffer(v107, static WOLog.app);
  v26 = v120;
  v108 = v25;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  v29 = os_log_type_enabled(v27, v28);
  v119 = v9;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v125 = v31;
    *v30 = 136315394;
    if (v24)
    {
      v32 = 7824750;
    }

    else
    {
      v32 = 0;
    }

    if (v24)
    {
      v33 = 0xE300000000000000;
    }

    else
    {
      v33 = 0xE000000000000000;
    }

    v34 = v8;
    v35 = v24;
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v125);

    *(v30 + 4) = v36;
    *(v30 + 12) = 2080;
    v37 = WorkoutConfiguration.logDisplayName.getter();
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v125);

    *(v30 + 14) = v39;
    v24 = v35;
    v8 = v34;
    _os_log_impl(&dword_20AEA4000, v27, v28, "Register %s occurrence for workout_configuration (%s)", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v31, -1, -1);
    MEMORY[0x20F2E9420](v30, -1, -1);
  }

  v40 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
  swift_beginAccess();
  v41 = *&v40[v26];
  v113 = v24;
  v106 = v40;
  if (v24)
  {
    v42 = 1;
  }

  else
  {
    v43 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
    swift_beginAccess();
    v44 = *&v41[v43];
    v42 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
LABEL_34:
      swift_once();
      goto LABEL_26;
    }
  }

  v45 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
  swift_beginAccess();
  *&v41[v45] = v42;
  v46 = v110;
  v47 = v109;
  v48 = v111;
  (*(v110 + 2))(v109, v112, v111);
  v49 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
  swift_beginAccess();
  v50 = *(v46 + 5);
  v51 = v41;
  v50(&v41[v49], v47, v48);
  swift_endAccess();

  v52 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v53 = *&v26[v52];
  v54 = specialized static WorkoutConfiguration.copy(of:with:preservingExternalProvider:)(v26, v53, 1);

  v55 = specialized WorkoutConfiguration.sanitized()();
  v56 = v116;
  v117(v116, &v120[v115], v8);
  v57 = v121;
  swift_beginAccess();
  v58 = v55;
  v59 = *&v57[v17];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v122 = *&v57[v17];
  *&v57[v17] = 0x8000000000000000;
  v112 = v58;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v58, v56, isUniquelyReferenced_nonNull_native);
  v111 = v8;
  v114(v56, v8);
  *&v57[v17] = v122;
  swift_endAccess();
  WorkoutConfigurationOccurrenceStore.configurations.didset();
  v40 = v26;
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v124 = v65;
    *v63 = 138412546;
    v66 = *&v106[v26];
    *(v63 + 4) = v66;
    *v64 = v66;
    *(v63 + 12) = 2080;
    v67 = v66;
    v68 = WorkoutConfiguration.logDisplayName.getter();
    v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, &v124);

    *(v63 + 14) = v70;
    _os_log_impl(&dword_20AEA4000, v61, v62, "Incremented occurrence (%@) for workout_configuration (%s)", v63, 0x16u);
    _sSo8NSObjectCSgWOhTm_3(v64, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v64, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_6(v65);
    MEMORY[0x20F2E9420](v65, -1, -1);
    MEMORY[0x20F2E9420](v63, -1, -1);
  }

  WorkoutConfigurationOccurrenceStore.postUpdateNotification(for:)(v40);
  v71 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  v72 = v113;
  if (v40[v71] != 2)
  {
    v90 = *&v121[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient + 24];
    v91 = *&v121[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient + 32];
    __swift_project_boxed_opaque_existential_1(&v121[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient], v90);
    v92 = swift_allocObject();
    *(v92 + 16) = v72;
    *(v92 + 24) = v40;
    v93 = *(v91 + 64);
    v94 = v40;
    v95 = v112;
    v93(v112, partial apply for closure #1 in WorkoutConfigurationOccurrenceStore._registerUserOccurrence(configuration:completionDate:), v92, v90, v91);

    return;
  }

  type metadata accessor for RaceWorkoutConfiguration();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v73 = v40;
  }

  if (one-time initialization token for race != -1)
  {
    goto LABEL_34;
  }

LABEL_26:
  __swift_project_value_buffer(v107, static WOLog.race);
  v74 = v8;
  v75 = v40;
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v76, v77))
  {
    v110 = v75;
    v113 = v77;
    v121 = v74;
    v78 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v123 = v109;
    *v78 = 136315650;
    v79 = v116;
    v80 = v111;
    v81 = v117;
    v117(v116, &v120[v115], v111);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v82 = dispatch thunk of CustomStringConvertible.description.getter();
    v84 = v83;
    v114(v79, v80);
    v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v84, &v123);

    *(v78 + 4) = v85;
    *(v78 + 12) = 2080;
    if (v8)
    {
      v86 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID;
      v87 = v121;
      swift_beginAccess();
      v88 = v104;
      v81(v104, &v87[v86], v80);
      v89 = 0;
    }

    else
    {
      v89 = 1;
      v88 = v104;
      v87 = v121;
    }

    (v119[7])(v88, v89, 1, v80);
    v96 = Optional.description.getter();
    v98 = v97;
    _sSo8NSObjectCSgWOhTm_3(v88, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v98, &v123);

    *(v78 + 14) = v99;
    *(v78 + 22) = 2080;
    v100 = WorkoutConfiguration.logDisplayName.getter();
    v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v101, &v123);

    *(v78 + 24) = v102;
    _os_log_impl(&dword_20AEA4000, v76, v113, "Race: not saving transient race workout_configuration %s created from race route clusterUUID %s (%s)", v78, 0x20u);
    v103 = v109;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v103, -1, -1);
    MEMORY[0x20F2E9420](v78, -1, -1);
  }

  else
  {
  }
}

void closure #1 in WorkoutConfigurationOccurrenceStore._registerUserOccurrence(configuration:completionDate:)(int a1, void *a2, char a3, void *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static WOLog.app);
  v14 = a4;
  v15 = a2;
  v39 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v39, v16))
  {
    v17 = swift_slowAlloc();
    HIDWORD(v38) = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v42 = v19;
    *v18 = 136316162;
    if (a3)
    {
      v20 = 7824750;
    }

    else
    {
      v20 = 0;
    }

    if (a3)
    {
      v21 = 0xE300000000000000;
    }

    else
    {
      v21 = 0xE000000000000000;
    }

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v42);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v23 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    (*(v9 + 16))(v12, &v14[v23], v8);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v9 + 8))(v12, v8);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v42);

    *(v18 + 14) = v27;
    *(v18 + 22) = 1024;
    *(v18 + 24) = BYTE4(v38) & 1;
    *(v18 + 28) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v28 = Error.localizedDescription.getter();
      a2 = v29;
    }

    else
    {
      v28 = 0;
    }

    v40 = v28;
    v41 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v31 = Optional.description.getter();
    v33 = v32;

    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v42);

    *(v18 + 30) = v34;
    *(v18 + 38) = 2080;
    v35 = WorkoutConfiguration.logDisplayName.getter();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v42);

    *(v18 + 40) = v37;
    _os_log_impl(&dword_20AEA4000, v39, v16, "Saved %s occurrence for sanitized copy workout_configuration: %s, success: %{BOOL}d, error: %s (%s)", v18, 0x30u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v19, -1, -1);
    MEMORY[0x20F2E9420](v18, -1, -1);
  }

  else
  {
    v30 = v39;
  }
}

void WorkoutConfigurationOccurrenceStore.removeOccurrence(uuid:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v7 = specialized Dictionary.removeValue(forKey:)(a1, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
  swift_endAccess();
  WorkoutConfigurationOccurrenceStore.configurations.didset();
  if (v7)
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static WOLog.app);
    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30 = v14;
      *v12 = 138412546;
      v15 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
      swift_beginAccess();
      v16 = *&v9[v15];
      *(v12 + 4) = v16;
      *v13 = v16;
      *(v12 + 12) = 2080;
      v17 = v16;
      v18 = WorkoutConfiguration.logDisplayName.getter();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v30);

      *(v12 + 14) = v20;
      _os_log_impl(&dword_20AEA4000, v10, v11, "Removed occurrence (%@) for workout_configuration (%s)", v12, 0x16u);
      _sSo8NSObjectCSgWOhTm_3(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm_6(v14);
      MEMORY[0x20F2E9420](v14, -1, -1);
      MEMORY[0x20F2E9420](v12, -1, -1);
    }

    WorkoutConfigurationOccurrenceStore.postUpdateNotification(for:)(v9);
  }

  else
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static WOLog.app);
    (*(v3 + 16))(v6, a1, v2);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136315138;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v3 + 8))(v6, v2);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v31);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_20AEA4000, v22, v23, "Remove occurrence by %s for workout_configuration not found", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_6(v25);
      MEMORY[0x20F2E9420](v25, -1, -1);
      MEMORY[0x20F2E9420](v24, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }
  }
}

uint64_t WorkoutConfigurationOccurrenceStore.displayOccurrence(for:)(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v58 = *(v3 - 8);
  v4 = v58[8];
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v57 = &v53 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v53 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v53 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  (*(v16 + 16))(v19, a1 + v20, v15);
  v21 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurations;
  swift_beginAccess();
  v22 = *(v1 + v21);
  if (!*(v22 + 16))
  {
    goto LABEL_6;
  }

  v23 = specialized __RawDictionaryStorage.find<A>(_:)(v19);
  if ((v24 & 1) == 0)
  {

LABEL_6:
    (*(v16 + 8))(v19, v15);
    return 0;
  }

  v25 = *(v16 + 8);
  v26 = *(*(v22 + 56) + 8 * v23);
  v56 = v7;
  v27 = v26;
  v25(v19, v15);

  Date.init()();
  v28 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
  swift_beginAccess();
  v29 = *(v27 + v28);
  v30 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
  swift_beginAccess();
  v54 = *(v29 + v30) & ~(*(v29 + v30) >> 31);
  v31 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_creationDate;
  swift_beginAccess();
  v32 = v58;
  v33 = v58[2];
  v33(v12, v29 + v31, v3);
  v55 = specialized static WorkoutConfigurationOccurrenceStore.daysAgo(from:now:)(v12, v14);
  v34 = v32[1];
  v34(v12, v3);
  v58 = v27;
  v35 = *(v27 + v28);
  v36 = v56;
  v37 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
  swift_beginAccess();
  v38 = v57;
  v33(v57, v35 + v37, v3);
  v39 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
  swift_beginAccess();
  v33(v36, v35 + v39, v3);
  Date.timeIntervalSinceReferenceDate.getter();
  v41 = v40;
  Date.timeIntervalSinceReferenceDate.getter();
  if (v42 <= v41)
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v46 = v45;
    Date.timeIntervalSinceReferenceDate.getter();
    v48 = v47;
    v34(v36, v3);
    v34(v38, v3);
    v34(v14, v3);
    v43 = v46 - v48 >= 86400.0;
  }

  else
  {
    v34(v36, v3);
    v34(v38, v3);
    v34(v14, v3);
    v43 = 1;
  }

  v59 = v54;
  v60 = dispatch thunk of CustomStringConvertible.description.getter();
  v61 = v49;
  MEMORY[0x20F2E6D80](47, 0xE100000000000000);
  v59 = v55;
  v50 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v50);

  MEMORY[0x20F2E6D80](100, 0xE100000000000000);
  if (v43)
  {
    v51 = 0;
  }

  else
  {
    v51 = 4927787;
  }

  if (v43)
  {
    v52 = 0xE000000000000000;
  }

  else
  {
    v52 = 0xE300000000000000;
  }

  MEMORY[0x20F2E6D80](v51, v52);

  return v60;
}

uint64_t WorkoutConfigurationOccurrenceStore.postUpdateNotification(for:)(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = a1;
  v14 = objc_opt_self();
  v15 = a1;
  v16 = v1;
  if ([v14 isMainThread])
  {
    closure #1 in WorkoutConfigurationOccurrenceStore.postUpdateNotification(for:)(v16, v15);
  }

  else
  {
    _sSo17OS_dispatch_queueCMaTm_11(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v22 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = partial apply for closure #1 in WorkoutConfigurationOccurrenceStore.postUpdateNotification(for:);
    *(v18 + 24) = v13;
    aBlock[4] = closure #1 in static DispatchUtilities.ensureMainQueueOrAsync(block:)partial apply;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_69_0;
    v19 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v20 = v22;
    MEMORY[0x20F2E7580](0, v12, v7, v19);
    _Block_release(v19);

    (*(v4 + 8))(v7, v3);
    return (*(v9 + 8))(v12, v8);
  }
}

void closure #1 in WorkoutConfigurationOccurrenceStore.postUpdateNotification(for:)(void *a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = static Published.subscript.modify();
  if (__OFADD__(*v5, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v5;
    v4(v28, 0);

    if (one-time initialization token for app == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.app);
  v7 = a1;
  v8 = a2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28[0] = v12;
    *v11 = 134218242;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *(v11 + 4) = v27;

    *(v11 + 12) = 2080;
    v13 = WorkoutConfiguration.logDisplayName.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v28);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_20AEA4000, v9, v10, "[ConfigurationStore] modificationCountPublished: %ld, post data updated notification for workout_configuration: %s", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm_6(v12);
    MEMORY[0x20F2E9420](v12, -1, -1);
    MEMORY[0x20F2E9420](v11, -1, -1);
  }

  else
  {
  }

  v16 = [objc_opt_self() defaultCenter];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B4282E0;
  v28[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28[1] = v18;
  v19 = @"NLSmartGoalStoreDidUpdateOccurrenceData";
  AnyHashable.init<A>(_:)();
  v20 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v21 = *&v8[v20];
  *(inited + 96) = _sSo17OS_dispatch_queueCMaTm_11(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
  *(inited + 72) = v21;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  AnyHashable.init<A>(_:)();
  v23 = type metadata accessor for UUID();
  *(inited + 168) = v23;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((inited + 144));
  v25 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  (*(*(v23 - 8) + 16))(boxed_opaque_existential_0Tm, &v8[v25], v23);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v16 postNotificationName:v19 object:0 userInfo:isa];
}

id WorkoutConfigurationOccurrenceStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance WorkoutConfigurationOccurrenceStore@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WorkoutConfigurationOccurrenceStore();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for WorkoutConfigurationCacheProtocol.modificationCountPublisher.getter in conformance WorkoutConfigurationOccurrenceStore()
{
  v1 = *v0;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t protocol witness for WorkoutConfigurationCacheProtocol.deletedConfiguration(for:) in conformance WorkoutConfigurationOccurrenceStore(uint64_t a1)
{
  v3 = (*v1 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = (*(v5 + 48))(a1, v4, v5);

  return v6;
}

char *closure #1 in static WorkoutConfiguration.copy(of:with:preservingExternalProvider:)(void *a1, void *a2)
{
  v260 = a2;
  v3 = type metadata accessor for Date();
  v258 = *(v3 - 1);
  v259 = v3;
  v4 = *(v258 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v256 = v228 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v257 = v228 - v7;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v261 = v8;
  v262 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v248 = v228 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v249 = v228 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v252 = v228 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v253 = v228 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v255 = v228 - v20;
  MEMORY[0x28223BE20](v19);
  v254 = v228 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v246 = v228 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v244 = v228 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v250 = v228 - v29;
  MEMORY[0x28223BE20](v28);
  v251 = v228 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v242 = v228 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v243 = (v228 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v247 = v228 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v245 = v228 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v43 = v228 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v46 = v228 - v45;
  v47 = MEMORY[0x28223BE20](v44);
  v49 = v228 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v52 = v228 - v51;
  v53 = MEMORY[0x28223BE20](v50);
  v55 = v228 - v54;
  v56 = MEMORY[0x28223BE20](v53);
  v58 = v228 - v57;
  MEMORY[0x28223BE20](v56);
  v60 = v228 - v59;
  type metadata accessor for GoalWorkoutConfiguration();
  v61 = a1;
  if (swift_dynamicCastClass())
  {
    (*(v262 + 56))(v60, 1, 1, v261);
    v62 = a1;
    v63 = GoalWorkoutConfiguration.copyWith(activityType:goal:uuid:occurrence:)(v260, 0, v60, 0);
LABEL_5:
    v64 = v63;

    v65 = v60;
LABEL_6:
    _sSo8NSObjectCSgWOhTm_3(v65, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    return v64;
  }

  v236 = v46;
  v237 = v43;
  v239 = v49;
  v240 = v52;
  v238 = v58;
  v241 = v55;
  type metadata accessor for IntervalWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    (*(v262 + 56))(v60, 1, 1, v261);
    v62 = a1;
    v63 = IntervalWorkoutConfiguration.copyWith(activityType:intervalWorkout:uuid:occurrence:)(v260, 0, v60, 0);
    goto LABEL_5;
  }

  v67 = type metadata accessor for RaceWorkoutConfiguration();
  v68 = swift_dynamicCastClass();
  v69 = v262;
  if (v68)
  {
    v70 = v68;
    v231 = v67;
    v71 = v262 + 56;
    v72 = *(v262 + 56);
    v73 = v238;
    v74 = v261;
    v72(v238, 1, 1, v261);
    v72(v241, 1, 1, v74);
    v75 = v259;
    v76 = v258 + 56;
    v77 = *(v258 + 56);
    v77(v251, 1, 1, v259);
    v72(v240, 1, 1, v74);
    v232 = v77;
    v233 = v76;
    v77(v250, 1, 1, v75);
    v242 = v71;
    v234 = v72;
    v72(v239, 1, 1, v74);
    v78 = (v70 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle);
    swift_beginAccess();
    v79 = v78[1];
    v230 = *v78;
    v80 = v73;
    v81 = v262;
    v82 = v236;
    _s10Foundation4UUIDVSgWOcTm_0(v80, v236, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v83 = v81 + 48;
    v84 = *(v81 + 48);
    v85 = v84(v82, 1, v74);
    v229 = v79;
    if (v85 == 1)
    {
      v86 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID;
      swift_beginAccess();
      (*(v81 + 16))(v254, v70 + v86, v74);
      LODWORD(v86) = v84(v82, 1, v74);
      v87 = v61;

      v88 = v237;
      if (v86 != 1)
      {
        _sSo8NSObjectCSgWOhTm_3(v82, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }
    }

    else
    {
      (*(v81 + 32))(v254, v82, v74);
      v103 = v61;

      v88 = v237;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    LODWORD(v237) = v266;
    _s10Foundation4UUIDVSgWOcTm_0(v241, v88, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v104 = v84(v88, 1, v74);
    v105 = v74;
    v243 = v84;
    v228[1] = v83;
    if (v104 == 1)
    {
      v106 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID;
      swift_beginAccess();
      (*(v262 + 16))(v255, v70 + v106, v74);
      v107 = v84(v88, 1, v74);
      v108 = v251;
      if (v107 != 1)
      {
        _sSo8NSObjectCSgWOhTm_3(v88, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }
    }

    else
    {
      (*(v262 + 32))(v255, v88, v74);
      v108 = v251;
    }

    v109 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance;
    swift_beginAccess();
    v110 = *(v70 + v109);
    v111 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration;
    swift_beginAccess();
    v112 = *(v70 + v111);
    v113 = v244;
    _s10Foundation4UUIDVSgWOcTm_0(v108, v244, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v114 = v258;
    v115 = v259;
    v116 = *(v258 + 48);
    v117 = v116(v113, 1, v259);
    v235 = v61;
    if (v117 == 1)
    {
      v118 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDate;
      swift_beginAccess();
      (*(v114 + 16))(v257, v70 + v118, v115);
      if (v116(v113, 1, v115) != 1)
      {
        _sSo8NSObjectCSgWOhTm_3(v113, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    else
    {
      (*(v114 + 32))(&OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDate, v257, v113, v115);
    }

    v119 = v245;
    _s10Foundation4UUIDVSgWOcTm_0(v240, v245, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v120 = v243;
    v121 = v243(v119, 1, v105);
    v122 = v253;
    if (v121 == 1)
    {
      v123 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID;
      swift_beginAccess();
      (*(v262 + 16))(v122, v70 + v123, v105);
      v124 = v120(v119, 1, v105);
      v125 = v246;
      if (v124 != 1)
      {
        _sSo8NSObjectCSgWOhTm_3(v119, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }
    }

    else
    {
      (*(v262 + 32))(v253, v119, v105);
      v125 = v246;
    }

    v126 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance;
    swift_beginAccess();
    v127 = *(v70 + v126);
    v128 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration;
    swift_beginAccess();
    v129 = *(v70 + v128);
    _s10Foundation4UUIDVSgWOcTm_0(v250, v125, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v130 = v259;
    if (v116(v125, 1, v259) == 1)
    {
      v131 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDate;
      swift_beginAccess();
      (*(v258 + 16))(v256, v70 + v131, v130);
      v132 = v116(v125, 1, v130);
      v133 = v262;
      if (v132 != 1)
      {
        _sSo8NSObjectCSgWOhTm_3(v125, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    else
    {
      (*(v258 + 32))(v256, v125, v130);
      v133 = v262;
    }

    v134 = (v70 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData);
    swift_beginAccess();
    v135 = *v134;
    v136 = v134[1];
    v137 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterSize;
    swift_beginAccess();
    v245 = *(v70 + v137);
    v246 = v136;
    v138 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude;
    v139 = *(v70 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude);
    v140 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude;
    v141 = *(v70 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude);
    v248 = v135;
    outlined copy of Data._Representation(v135, v136);
    v271.latitude = v139;
    v271.longitude = v141;
    v142 = CLLocationCoordinate2DIsValid(v271);
    v143 = 0;
    v144 = v254;
    if (v142)
    {
      v143 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*(v70 + v138) longitude:*(v70 + v140)];
    }

    v145 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
    swift_beginAccess();
    v146 = *(v70 + v145);
    v147 = v247;
    _s10Foundation4UUIDVSgWOcTm_0(v239, v247, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v148 = v261;
    v149 = v243;
    if (v243(v147, 1, v261) == 1)
    {
      v150 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
      swift_beginAccess();
      (*(v133 + 16))(v252, v70 + v150, v148);
      if (v149(v147, 1, v148) != 1)
      {
        _sSo8NSObjectCSgWOhTm_3(v147, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }
    }

    else
    {
      (*(v133 + 32))(v252, v147, v148);
    }

    v151 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    swift_beginAccess();
    v152 = *(v70 + v151);
    v153 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
    swift_beginAccess();
    v154 = *(v70 + v153);
    v155 = objc_allocWithZone(v231);
    v156 = &v155[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle];
    v157 = v229;
    *v156 = v230;
    v156[1] = v157;
    v158 = *(v133 + 16);
    v158(&v155[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID], v144, v148);
    swift_beginAccess();
    v264 = v237;
    v247 = v154;

    v244 = v152;
    Published.init(initialValue:)();
    swift_endAccess();
    v158(&v155[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID], v255, v148);
    *&v155[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance] = v110;
    *&v155[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration] = v112;
    v159 = *(v258 + 16);
    v160 = v259;
    v159(&v155[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDate], v257, v259);
    v158(&v155[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID], v253, v148);
    *&v155[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance] = v127;
    *&v155[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration] = v129;
    v159(&v155[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDate], v256, v160);
    v161 = &v155[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData];
    v162 = v248;
    v163 = v245;
    v164 = v246;
    *v161 = v248;
    v161[1] = v164;
    *&v155[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterSize] = v163;
    if (v143)
    {
      outlined copy of Data._Representation(v162, v164);
      v143 = v143;
      [v143 coordinate];
      *&v155[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude] = v165;
      [v143 coordinate];
      v167 = v166;

      *&v155[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude] = v167;
    }

    else
    {
      *&v155[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude] = 0x412E848000000000;
      *&v155[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude] = 0x412E848000000000;
      outlined copy of Data._Representation(v162, v164);
    }

    v168 = v249;
    v169 = v252;
    *&v155[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue] = v146;
    v170 = v261;
    v158(v168, v169, v261);
    *&v155[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
    v171 = v259;
    v172 = v232;
    v232(&v155[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v259);
    v172(&v155[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v171);
    v173 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
    v174 = type metadata accessor for WorkoutPlan.Route();
    (*(*(v174 - 8) + 56))(&v155[v173], 1, 1, v174);
    v234(&v155[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v170);
    v175 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
    *&v155[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
    v158(&v155[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v168, v170);
    v176 = v260;
    *&v155[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v260;
    v155[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 2;
    v177 = v244;
    *&v155[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v244;
    swift_beginAccess();
    *&v155[v175] = v247;
    v155[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
    v178 = type metadata accessor for WorkoutConfiguration();
    v263.receiver = v155;
    v263.super_class = v178;
    v179 = v177;
    v180 = v176;
    v64 = objc_msgSendSuper2(&v263, sel_init);

    outlined consume of Data._Representation(v248, v246);
    v181 = *(v262 + 8);
    v181(v168, v170);
    v181(v252, v170);
    v182 = *(v258 + 8);
    v182(v256, v171);
    v181(v253, v170);
    v182(v257, v171);
    v181(v255, v170);
    v181(v254, v170);
    _sSo8NSObjectCSgWOhTm_3(v239, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    _sSo8NSObjectCSgWOhTm_3(v250, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    _sSo8NSObjectCSgWOhTm_3(v240, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    _sSo8NSObjectCSgWOhTm_3(v251, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    _sSo8NSObjectCSgWOhTm_3(v241, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v65 = v238;
    goto LABEL_6;
  }

  v89 = type metadata accessor for PacerWorkoutConfiguration();
  v90 = swift_dynamicCastClass();
  v91 = v61;
  if (v90)
  {
    v92 = v90;
    v93 = v243;
    v94 = v261;
    v255 = *(v69 + 56);
    v256 = (v69 + 56);
    (v255)(v243, 1, 1, v261);
    swift_getKeyPath();
    swift_getKeyPath();
    v95 = v91;
    v96 = v93;
    v257 = v95;
    static Published.subscript.getter();

    v254 = v269;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v97 = v269;
    v98 = v96;
    v99 = v242;
    _s10Foundation4UUIDVSgWOcTm_0(v98, v242, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v100 = v69;
    v101 = *(v69 + 48);
    if (v101(v99, 1, v94) == 1)
    {
      v102 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
      swift_beginAccess();
      (*(v100 + 16))(v248, v92 + v102, v94);
      if (v101(v99, 1, v94) != 1)
      {
        _sSo8NSObjectCSgWOhTm_3(v99, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }
    }

    else
    {
      (*(v100 + 32))(v248, v99, v94);
    }

    v210 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    swift_beginAccess();
    v211 = *(v92 + v210);
    v212 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
    swift_beginAccess();
    v252 = *(v92 + v212);
    v213 = objc_allocWithZone(v89);
    swift_beginAccess();
    v214 = v254;
    v265 = v254;
    _sSo17OS_dispatch_queueCMaTm_11(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
    v251 = v211;

    v254 = v214;
    Published.init(initialValue:)();
    swift_endAccess();
    swift_beginAccess();
    v265 = v97;
    v253 = v97;
    Published.init(initialValue:)();
    swift_endAccess();
    v215 = *(v100 + 16);
    v216 = v249;
    v215(v249, v248, v94);
    *&v213[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
    v217 = v259;
    v218 = *(v258 + 56);
    v218(&v213[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v259);
    v218(&v213[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v217);
    v219 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
    v220 = type metadata accessor for WorkoutPlan.Route();
    (*(*(v220 - 8) + 56))(&v213[v219], 1, 1, v220);
    (v255)(&v213[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v94);
    v221 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
    *&v213[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
    v215(&v213[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v216, v94);
    v222 = v260;
    *&v213[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v260;
    v213[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 3;
    v223 = v251;
    *&v213[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v251;
    swift_beginAccess();
    *&v213[v221] = v252;
    v213[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
    v224 = type metadata accessor for WorkoutConfiguration();
    v267.receiver = v213;
    v267.super_class = v224;
    v225 = v222;
    v226 = v223;
    v64 = objc_msgSendSuper2(&v267, sel_init);

    v227 = *(v100 + 8);
    v227(v216, v94);
    v227(v248, v94);
    v65 = v243;
    goto LABEL_6;
  }

  type metadata accessor for MultiSportWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v183 = type metadata accessor for Logger();
    __swift_project_value_buffer(v183, static WOLog.app);
    v184 = Logger.logObject.getter();
    v185 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v184, v185))
    {
      v186 = swift_slowAlloc();
      v187 = swift_slowAlloc();
      v269 = v187;
      *v186 = 136315138;
      *(v186 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x800000020B45D2D0, &v269);
      _os_log_impl(&dword_20AEA4000, v184, v185, "[ConfigurationStore] %s doesn't support workout_configuration copy with activityType", v186, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_6(v187);
      MEMORY[0x20F2E9420](v187, -1, -1);
      MEMORY[0x20F2E9420](v186, -1, -1);
    }
  }

  v188 = v260;
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v189 = type metadata accessor for Logger();
  __swift_project_value_buffer(v189, static WOLog.app);
  v259 = v61;
  v190 = v188;
  v191 = Logger.logObject.getter();
  v192 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v191, v192))
  {
    v193 = swift_slowAlloc();
    v194 = swift_slowAlloc();
    v260 = swift_slowAlloc();
    v268[0] = v260;
    *v193 = 136315650;
    v195 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    v196 = &v259[v195];
    v197 = v249;
    v198 = v261;
    (*(v69 + 16))(v249, v196, v261);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v199 = dispatch thunk of CustomStringConvertible.description.getter();
    v200 = v69;
    v202 = v201;
    (*(v200 + 8))(v197, v198);
    v203 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v199, v202, v268);

    *(v193 + 4) = v203;
    *(v193 + 12) = 2112;
    *(v193 + 14) = v190;
    *v194 = v190;
    *(v193 + 22) = 2080;
    v204 = v190;
    v205 = WorkoutConfiguration.logDisplayName.getter();
    v207 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v205, v206, v268);

    *(v193 + 24) = v207;
    _os_log_impl(&dword_20AEA4000, v191, v192, "[ConfigurationStore] didn't copy workout_configuration %s with activityType: %@ (%s)", v193, 0x20u);
    _sSo8NSObjectCSgWOhTm_3(v194, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v194, -1, -1);
    v208 = v260;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v208, -1, -1);
    MEMORY[0x20F2E9420](v193, -1, -1);
  }

  v209 = v259;

  return v209;
}

Swift::Void __swiftcall WorkoutConfigurationOccurrenceStore.unlockedSinceBoot(_:)(Swift::Bool a1)
{
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.app);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_20AEA4000, v3, v4, "[ConfigurationStore] received unlockedSinceBoot: %{BOOL}d", v5, 8u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  if (a1)
  {

    WorkoutConfigurationOccurrenceStore.loadIfNeededInBackground(enteringForeground:)(0);
  }

  else
  {
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20AEA4000, oslog, v6, "[ConfigurationStore] device is locked since boot, no need to try to load workout_configurations", v7, 2u);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }
  }
}

Swift::Bool __swiftcall WorkoutConfigurationOccurrenceStore.canLoadConfigurations()()
{
  v1 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_syncComplete;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    v2 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_unlockedSinceBootMonitor;
    swift_beginAccess();
    outlined init with copy of UnlockedSinceBootMonitorProtocol(v0 + v2, v7);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v5 = (*(v4 + 32))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1Tm_6(v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t protocol witness for SystemConfigurationSyncStateHandler.canLoadConfigurations() in conformance WorkoutConfigurationOccurrenceStore()
{
  v1 = *v0;
  v2 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_syncComplete;
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    v3 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_unlockedSinceBootMonitor;
    swift_beginAccess();
    outlined init with copy of UnlockedSinceBootMonitorProtocol(v1 + v3, v8);
    v4 = v9;
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v6 = (*(v5 + 32))(v4, v5);
    __swift_destroy_boxed_opaque_existential_1Tm_6(v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t key path getter for WorkoutConfigurationOccurrenceStore.modificationCountPublished : WorkoutConfigurationOccurrenceStore@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for WorkoutConfigurationOccurrenceStore.modificationCountPublished : WorkoutConfigurationOccurrenceStore(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

size_t _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4DateV_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DateVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DateVGMR);
  v4 = *(type metadata accessor for Date() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size_4(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore10TargetZoneC0K4TypeO_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore10TargetZoneC0G4TypeOGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore10TargetZoneC0G4TypeOGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_4(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, &lazy cache variable for type metadata for CLLocation, 0x277CE41F8);
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
      v7 = *(type metadata accessor for UUID() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size_4(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(type metadata accessor for UUID() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, type metadata accessor for WorkoutConfiguration);
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore11MetricValueVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore11MetricValueVGMR);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size_4(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 72);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, &lazy cache variable for type metadata for CLRoutePoint, 0x277CBFC78);
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        a5(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size_4(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v7)
  {
    if (v7 < 1)
    {
      if (v6 != a3)
      {
LABEL_7:
        _sSo17OS_dispatch_queueCMaTm_11(0, a5, a6);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size_4(v11);
      v13 = v12 - 32;
      if (v12 < 32)
      {
        v13 = v12 - 25;
      }

      v11[2] = v7;
      v11[3] = (2 * (v13 >> 3)) | 1;
      if (v6 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, char **a3, uint64_t a4)
{
  v118 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_125:
    v4 = *v118;
    if (*v118)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_158;
      }

      goto LABEL_127;
    }

    goto LABEL_163;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6;
    v9 = v6 + 1;
    if (v6 + 1 < v5)
    {
      v127 = v7;
      v10 = *&(*a3)[8 * v9];
      v4 = (8 * v6);
      v11 = &(*a3)[8 * v6];
      v13 = *v11;
      v12 = (v11 + 16);
      v14 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
      swift_beginAccess();
      v15 = *(v10 + v14);
      v16 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
      result = swift_beginAccess();
      v17 = *(v13 + v16);
      v18 = v8 + 2;
      while (v5 != v18)
      {
        v20 = *(v12 - 1);
        v19 = *v12;
        v21 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
        swift_beginAccess();
        v22 = *(v19 + v21);
        v23 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
        result = swift_beginAccess();
        ++v18;
        ++v12;
        if (v17 < v15 == *(v20 + v23) >= v22)
        {
          v5 = v18 - 1;
          break;
        }
      }

      v7 = v127;
      if (v17 < v15)
      {
        if (v5 < v8)
        {
          goto LABEL_154;
        }

        if (v8 < v5)
        {
          v24 = 8 * v5 - 8;
          v25 = v5;
          v26 = v8;
          do
          {
            if (v26 != --v25)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_160;
              }

              v28 = *&v4[v27];
              *&v4[v27] = *&v27[v24];
              *&v27[v24] = v28;
            }

            ++v26;
            v24 -= 8;
            v4 += 8;
          }

          while (v26 < v25);
        }
      }

      v9 = v5;
    }

    v29 = a3[1];
    if (v9 < v29)
    {
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_153;
      }

      if (v9 - v8 < a4)
      {
        v30 = (v8 + a4);
        if (__OFADD__(v8, a4))
        {
          goto LABEL_155;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v8)
        {
          goto LABEL_156;
        }

        if (v9 != v30)
        {
          v128 = v7;
          v130 = v8;
          v4 = *a3;
          v31 = &(*a3)[8 * v9 - 8];
          v7 = (v8 - v9);
          v132 = v30;
          do
          {
            v121 = v9;
            v32 = *&v4[8 * v9];
            v33 = v7;
            v34 = v31;
            do
            {
              v35 = *v34;
              v36 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
              swift_beginAccess();
              v37 = *(v32 + v36);
              v38 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
              swift_beginAccess();
              if (*(v35 + v38) >= v37)
              {
                break;
              }

              if (!v4)
              {
                goto LABEL_157;
              }

              v39 = *v34;
              v32 = v34[1];
              *v34 = v32;
              v34[1] = v39;
              --v34;
            }

            while (!__CFADD__(v33++, 1));
            v9 = v121 + 1;
            v31 += 8;
            --v7;
          }

          while (v121 + 1 != v132);
          v9 = v132;
          v7 = v128;
          v8 = v130;
        }
      }
    }

    if (v9 < v8)
    {
      goto LABEL_150;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v122 = v9;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v42 = *(v7 + 2);
    v41 = *(v7 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v43;
    v44 = &v7[16 * v42];
    *(v44 + 4) = v8;
    *(v44 + 5) = v9;
    v45 = *v118;
    if (!*v118)
    {
LABEL_161:
      __break(1u);
      goto LABEL_162;
    }

    if (v42)
    {
      break;
    }

LABEL_3:
    v5 = a3[1];
    v6 = v122;
    if (v122 >= v5)
    {
      goto LABEL_125;
    }
  }

  while (1)
  {
    v46 = v43 - 1;
    if (v43 >= 4)
    {
      v51 = &v7[16 * v43 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_139;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_140;
      }

      v58 = &v7[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_142;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_145;
      }

      if (v62 >= v54)
      {
        v80 = &v7[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_149;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

    if (v43 == 3)
    {
      v47 = *(v7 + 4);
      v48 = *(v7 + 5);
      v57 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      v50 = v57;
LABEL_55:
      if (v50)
      {
        goto LABEL_141;
      }

      v63 = &v7[16 * v43];
      v65 = *v63;
      v64 = *(v63 + 1);
      v66 = __OFSUB__(v64, v65);
      v67 = v64 - v65;
      v68 = v66;
      if (v66)
      {
        goto LABEL_144;
      }

      v69 = &v7[16 * v46 + 32];
      v71 = *v69;
      v70 = *(v69 + 1);
      v57 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v57)
      {
        goto LABEL_147;
      }

      if (__OFADD__(v67, v72))
      {
        goto LABEL_148;
      }

      if (v67 + v72 >= v49)
      {
        if (v49 < v72)
        {
          v46 = v43 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_69;
    }

    v73 = &v7[16 * v43];
    v75 = *v73;
    v74 = *(v73 + 1);
    v57 = __OFSUB__(v74, v75);
    v67 = v74 - v75;
    v68 = v57;
LABEL_69:
    if (v68)
    {
      goto LABEL_143;
    }

    v76 = &v7[16 * v46];
    v78 = *(v76 + 4);
    v77 = *(v76 + 5);
    v57 = __OFSUB__(v77, v78);
    v79 = v77 - v78;
    if (v57)
    {
      goto LABEL_146;
    }

    if (v79 < v67)
    {
      goto LABEL_3;
    }

LABEL_76:
    if (v46 - 1 >= v43)
    {
      break;
    }

    v84 = *a3;
    if (!*a3)
    {
      __break(1u);
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    v129 = v7;
    v131 = v46;
    v124 = v46 - 1;
    v85 = *&v7[16 * v46 + 16];
    v86 = *&v7[16 * v46 + 32];
    v125 = *&v7[16 * v46 + 40];
    v126 = v85;
    v87 = 8 * v85;
    v88 = &v84[8 * v85];
    v89 = 8 * v86;
    v90 = &v84[8 * v86];
    v91 = &v84[8 * v125];
    v92 = 8 * v86 - 8 * v85;
    v93 = 8 * v125 - 8 * v86;
    if (v92 >= v93)
    {
      if (v90 != v45 || v91 <= v45)
      {
        memmove(v45, &v84[8 * v86], 8 * v125 - 8 * v86);
      }

      v133 = &v45[v93];
      v4 = v131;
      if (v93 < 1 || v89 <= v87)
      {
        v7 = v45;
        v110 = v90;
      }

      else
      {
        v120 = v88;
        do
        {
          v101 = v90 - 8;
          v91 -= 8;
          v102 = v133;
          while (1)
          {
            v103 = v91 + 8;
            v104 = *(v102 - 1);
            v102 -= 8;
            v105 = v101;
            v106 = *v101;
            v107 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
            swift_beginAccess();
            v108 = *(v104 + v107);
            v109 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
            swift_beginAccess();
            if (*(v106 + v109) < v108)
            {
              break;
            }

            if (v103 != v133)
            {
              *v91 = *v102;
            }

            v91 -= 8;
            v133 = v102;
            v101 = v105;
            if (v102 <= v45)
            {
              v133 = v102;
              v7 = v45;
              v110 = v90;
              goto LABEL_114;
            }
          }

          v110 = v105;
          if (v103 != v90)
          {
            *v91 = *v105;
          }

          v4 = v131;
          v7 = v45;
          if (v133 <= v45)
          {
            break;
          }

          v90 = v105;
        }

        while (v120 < v105);
      }
    }

    else
    {
      if (v88 != v45 || v90 <= v45)
      {
        memmove(v45, &v84[8 * v85], 8 * v86 - 8 * v85);
      }

      v133 = &v45[v92];
      if (v92 >= 1 && 8 * v125 > v89)
      {
        v7 = v45;
        while (1)
        {
          v94 = *v90;
          v95 = *v7;
          v96 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
          swift_beginAccess();
          v97 = *(v94 + v96);
          v98 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
          swift_beginAccess();
          if (*(v95 + v98) >= v97)
          {
            break;
          }

          v99 = v90;
          v100 = v88 == v90;
          v90 += 8;
          if (!v100)
          {
            goto LABEL_90;
          }

LABEL_91:
          v88 += 8;
          if (v7 >= v133 || v90 >= v91)
          {
            goto LABEL_111;
          }
        }

        v99 = v7;
        v100 = v88 == v7;
        v7 += 8;
        if (v100)
        {
          goto LABEL_91;
        }

LABEL_90:
        *v88 = *v99;
        goto LABEL_91;
      }

      v7 = v45;
LABEL_111:
      v110 = v88;
LABEL_114:
      v4 = v131;
    }

    if (v110 != v7 || v110 >= &v7[(v133 - v7 + (v133 - v7 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v110, v7, 8 * ((v133 - v7) / 8));
    }

    if (v125 < v126)
    {
      goto LABEL_137;
    }

    v111 = v129;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v111 = specialized _ArrayBuffer._consumeAndCreateNew()(v129);
    }

    if (v4 > *(v111 + 2))
    {
      goto LABEL_138;
    }

    v112 = &v111[16 * v124];
    *(v112 + 4) = v126;
    *(v112 + 5) = v125;
    result = specialized Array.remove(at:)(v4);
    v7 = v111;
    v43 = *(v111 + 2);
    if (v43 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
  v7 = result;
LABEL_127:
  v113 = *(v7 + 2);
  if (v113 < 2)
  {
  }

  while (*a3)
  {
    v114 = *&v7[16 * v113];
    v115 = *&v7[16 * v113 + 24];
    specialized _merge<A>(low:mid:high:buffer:by:)(&(*a3)[8 * v114], &(*a3)[8 * *&v7[16 * v113 + 16]], &(*a3)[8 * v115], v4);
    if (v119)
    {
    }

    if (v115 < v114)
    {
      goto LABEL_151;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    }

    if (v113 - 2 >= *(v7 + 2))
    {
      goto LABEL_152;
    }

    v116 = &v7[16 * v113];
    *v116 = v114;
    *(v116 + 1) = v115;
    result = specialized Array.remove(at:)(v113 - 1);
    v113 = *(v7 + 2);
    if (v113 <= 1)
    {
    }
  }

LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(void **a1, void **a2, void **a3, void **a4)
{
  v66 = type metadata accessor for Date();
  v8 = *(v66 - 8);
  v9 = *(v8 + 64);
  v10 = (MEMORY[0x28223BE20])();
  v68 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v67 = &v60 - v12;
  v13 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 3;
  if (v14 >= v15 >> 3)
  {
    v69 = a1;
    if (a4 != a2 || &a2[v16] <= a4)
    {
      memmove(a4, a2, 8 * v16);
    }

    v72 = &a4[v16];
    if (a3 - a2 < 8)
    {
      v37 = a2;
    }

    else
    {
      v37 = a2;
      if (a2 > v69)
      {
        v63 = (v8 + 16);
        v62 = (v8 + 8);
        v71 = a4;
        do
        {
          v61 = v37;
          v38 = v37 - 1;
          v39 = a3 - 1;
          v40 = v72;
          v64 = v37 - 1;
          while (1)
          {
            v70 = v39;
            v65 = v39 + 1;
            v41 = *--v40;
            v42 = *v38;
            v43 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
            swift_beginAccess();
            v44 = *&v41[v43];
            v45 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
            swift_beginAccess();
            v46 = *v63;
            v47 = v66;
            v48 = v67;
            (*v63)(v67, v44 + v45, v66);
            v49 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
            swift_beginAccess();
            v50 = *&v42[v49];
            v51 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
            swift_beginAccess();
            v52 = v50 + v51;
            v53 = v68;
            v46(v68, v52, v47);
            v54 = v41;
            v55 = v42;
            LOBYTE(v51) = static Date.< infix(_:_:)();
            v56 = *v62;
            (*v62)(v53, v47);
            v56(v48, v47);

            if (v51)
            {
              break;
            }

            v57 = v70;
            if (v65 != v72)
            {
              *v70 = *v40;
            }

            v39 = v57 - 1;
            v72 = v40;
            v38 = v64;
            if (v40 <= v71)
            {
              v72 = v40;
              a4 = v71;
              v37 = v61;
              goto LABEL_38;
            }
          }

          v58 = v64;
          a3 = v70;
          if (v65 != v61)
          {
            *v70 = *v64;
          }

          a4 = v71;
          if (v72 <= v71)
          {
            break;
          }

          v37 = v58;
        }

        while (v58 > v69);
        v37 = v58;
      }
    }
  }

  else
  {
    v17 = a2;
    if (a4 != a1 || &a1[v14] <= a4)
    {
      memmove(a4, a1, 8 * v14);
    }

    v72 = &a4[v14];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v64 = (v8 + 8);
      v65 = (v8 + 16);
      v70 = a3;
      while (1)
      {
        v71 = a4;
        v69 = a1;
        v18 = *v17;
        v19 = *a4;
        v20 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
        swift_beginAccess();
        v21 = *&v18[v20];
        v22 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
        swift_beginAccess();
        v23 = v66;
        v24 = *v65;
        v25 = v67;
        (*v65)(v67, v21 + v22, v66);
        v26 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
        swift_beginAccess();
        v27 = *&v19[v26];
        v28 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
        swift_beginAccess();
        v29 = v27 + v28;
        v30 = v68;
        v24(v68, v29, v23);
        v31 = v18;
        v32 = v19;
        LOBYTE(v18) = static Date.< infix(_:_:)();
        v33 = *v64;
        (*v64)(v30, v23);
        v33(v25, v23);

        if ((v18 & 1) == 0)
        {
          break;
        }

        v34 = v17;
        v35 = v69;
        v36 = v69 == v17++;
        a4 = v71;
        if (!v36)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v35 + 1;
        if (a4 >= v72 || v17 >= v70)
        {
          goto LABEL_20;
        }
      }

      v34 = v71;
      a4 = v71 + 1;
      v35 = v69;
      if (v69 == v71)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v35 = *v34;
      goto LABEL_18;
    }

LABEL_20:
    v37 = a1;
  }

LABEL_38:
  if (v37 != a4 || v37 >= (a4 + ((v72 - a4 + (v72 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v37, a4, 8 * (v72 - a4));
  }

  return 1;
}

{
  v56 = type metadata accessor for Date();
  v8 = *(v56 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v56);
  v58 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v57 = &v50 - v12;
  v13 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 3;
  if (v14 >= v15 >> 3)
  {
    if (a4 != a2 || &a2[v16] <= a4)
    {
      memmove(a4, a2, 8 * v16);
    }

    v61 = &a4[v16];
    if (a3 - a2 < 8 || a2 <= a1)
    {
      v32 = a2;
    }

    else
    {
      v51 = (v8 + 8);
      v52 = (v8 + 16);
      v60 = a4;
      v55 = a1;
      do
      {
        v50 = a2;
        v33 = a2 - 1;
        v34 = a3 - 1;
        v35 = v61;
        v53 = a2 - 1;
        while (1)
        {
          v59 = v34;
          v54 = v34 + 1;
          v36 = *--v35;
          v37 = *v33;
          v38 = OBJC_IVAR___WOWorkoutChartDataElement_date;
          swift_beginAccess();
          v39 = *v52;
          v40 = v56;
          v41 = v57;
          (*v52)(v57, &v36[v38], v56);
          v42 = OBJC_IVAR___WOWorkoutChartDataElement_date;
          swift_beginAccess();
          v43 = v58;
          v39(v58, &v37[v42], v40);
          v44 = v36;
          v45 = v37;
          LOBYTE(v42) = static Date.< infix(_:_:)();
          v46 = *v51;
          (*v51)(v43, v40);
          v46(v41, v40);

          if (v42)
          {
            break;
          }

          v47 = v59;
          if (v54 != v61)
          {
            *v59 = *v35;
          }

          v34 = v47 - 1;
          v61 = v35;
          v33 = v53;
          if (v35 <= v60)
          {
            v61 = v35;
            a4 = v60;
            v32 = v50;
            goto LABEL_39;
          }
        }

        v48 = v55;
        a3 = v59;
        v32 = v53;
        if (v54 != v50)
        {
          *v59 = *v53;
        }

        a4 = v60;
        if (v61 <= v60)
        {
          break;
        }

        a2 = v32;
      }

      while (v32 > v48);
    }
  }

  else
  {
    if (a4 != a1 || &a1[v14] <= a4)
    {
      memmove(a4, a1, 8 * v14);
    }

    v61 = &a4[v14];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = (v8 + 8);
      v54 = (v8 + 16);
      v17 = a2;
      v59 = a3;
      while (1)
      {
        v60 = a4;
        v55 = a1;
        v18 = *v17;
        v19 = *a4;
        v20 = OBJC_IVAR___WOWorkoutChartDataElement_date;
        swift_beginAccess();
        v21 = *v54;
        v22 = v56;
        v23 = v57;
        (*v54)(v57, &v18[v20], v56);
        v24 = OBJC_IVAR___WOWorkoutChartDataElement_date;
        swift_beginAccess();
        v25 = v58;
        v21(v58, &v19[v24], v22);
        v26 = v18;
        v27 = v19;
        LOBYTE(v19) = static Date.< infix(_:_:)();
        v28 = *v53;
        (*v53)(v25, v22);
        v28(v23, v22);

        if ((v19 & 1) == 0)
        {
          break;
        }

        v29 = v17;
        v30 = v55;
        v31 = v55 == v17++;
        a4 = v60;
        if (!v31)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v30 + 1;
        if (a4 >= v61 || v17 >= v59)
        {
          goto LABEL_20;
        }
      }

      v29 = v60;
      a4 = v60 + 1;
      v30 = v55;
      if (v55 == v60)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v30 = *v29;
      goto LABEL_18;
    }

LABEL_20:
    v32 = a1;
  }

LABEL_39:
  if (v32 != a4 || v32 >= (a4 + ((v61 - a4 + (v61 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v32, a4, 8 * (v61 - a4));
  }

  return 1;
}

uint64_t specialized _NativeDictionary.filter(_:)(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = specialized closure #1 in _NativeDictionary.filter(_:)(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDV11WorkoutCore0K13ConfigurationCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab28VKXEfU_10Foundation4UUIDV_11k8Core0J13M4CTG5ANxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjMIsgnndzo_Tf1nc_n04_s11kw3A28m85OccurrenceStoreC25configurationsForMoveMode33_41A6A55DBE5760293367A7810ABE1D8CLLSDy10U40UUIDVAA0aC0CGvgSbAH3key_AJ5valuet_tXEfU_Tf1nnc_n(v9, v4, v2);
  result = MEMORY[0x20F2E9420](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v2 = v1;
  v62 = *MEMORY[0x277D85DE8];
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMd, &_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMR);
  v4 = *(*(v59 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v59);
  v58 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v57 = &v45 - v7;
  v56 = type metadata accessor for UUID();
  v8 = *(v56 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v56);
  v55 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v11) = *(a1 + 32);
  v46 = ((1 << v11) + 63) >> 6;
  if ((v11 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v47 = v2;
    v45 = &v45;
    MEMORY[0x28223BE20](v10);
    v48 = &v45 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v48, v12);
    v49 = 0;
    v13 = 0;
    v60 = a1;
    v15 = *(a1 + 64);
    a1 += 64;
    v14 = v15;
    v16 = 1 << *(a1 - 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v14;
    v2 = (v16 + 63) >> 6;
    v51 = v8 + 1;
    v52 = v8 + 2;
    v53 = a1;
    v54 = v8;
    while (v18)
    {
      v19 = __clz(__rbit64(v18));
      v61 = (v18 - 1) & v18;
LABEL_12:
      v22 = v19 | (v13 << 6);
      v23 = v60;
      v24 = v8[2];
      v25 = v55;
      v26 = v56;
      v24(v55, v60[6] + v8[9] * v22, v56);
      v27 = v23[7];
      v50 = v22;
      v28 = *(v27 + 8 * v22);
      v29 = v57;
      v24(v57, v25, v26);
      v30 = v59;
      *&v29[*(v59 + 48)] = v28;
      v31 = v29;
      v32 = v58;
      outlined init with take of (key: UUID, value: WorkoutConfiguration)(v31, v58);
      v33 = *(v32 + *(v30 + 48));
      v34 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
      swift_beginAccess();
      LODWORD(v30) = v33[v34];
      v35 = v28;
      v8 = v54;
      v36 = v35;

      v37 = v8[1];
      v37(v32, v26);

      v37(v25, v26);
      a1 = v53;
      v18 = v61;
      if (v30 != 2)
      {
        *&v48[(v50 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v50;
        if (__OFADD__(v49++, 1))
        {
          __break(1u);
LABEL_16:
          result = specialized _NativeDictionary.extractDictionary(using:count:)(v48, v46, v49, v60);
          goto LABEL_17;
        }
      }
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v2)
      {
        goto LABEL_16;
      }

      v21 = *(a1 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v61 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v41 = swift_slowAlloc();
  v42 = v2;
  _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDV11WorkoutCore0K13ConfigurationCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab28VKXEfU_10Foundation4UUIDV_11k8Core0J13M4CTG5ANxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjMIsgnndzo_Tf1nc_n04_s11kw3A28m98OccurrenceStoreC38configurationsForMoveModeExcludingRace33_41A6A55DBE5760293367A7810ABE1D8CLLSDy10U40UUIDVAA0aC0CGvgSbAH3key_AJ5valuet_tXEfU_Tf1nnc_n(v41, v46, a1);
  v44 = v43;
  result = MEMORY[0x20F2E9420](v41, -1, -1);
  v47 = v42;
  if (!v42)
  {
    result = v44;
  }

LABEL_17:
  v40 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v2 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = specialized closure #1 in _NativeDictionary.filter(_:)(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDVSiG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_aB31VKXEfU_10Foundation4UUIDV_SiTG5AKxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAJSiIsgnndzo_Tf1nc_n0109_s11WorkoutCore0A23ConfigurationDataSourceC4load33_A3D2BA4D279946755716B40EF86B87CELLyyFySaySo9HKWorkoutCG_s5v14_pSgtcfU1_Sb10R27UUIDV3key_Si5valuet_tXEfU0_Tf1nnc_n(v9, v4, v2);
  result = MEMORY[0x20F2E9420](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v45 = a1;
  v4 = &_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMR;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMd, &_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMR);
  v5 = *(*(v55 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v55);
  v54 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(*(v10 - 8) + 64);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v56 = a3;
  v17 = *(a3 + 64);
  v46 = 0;
  v47 = a3 + 64;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v52 = v21;
  v53 = v13;
  v50 = (v13 + 8);
  v51 = v13 + 16;
  v49 = v9;
  while (v20)
  {
    v22 = __clz(__rbit64(v20));
    v58 = (v20 - 1) & v20;
LABEL_11:
    v25 = v22 | (v16 << 6);
    v26 = v56;
    v27 = *(v53 + 16);
    v27(v15, v56[6] + *(v53 + 72) * v25, v10);
    v28 = v26[7];
    v48 = v25;
    v29 = *(v28 + 8 * v25);
    v27(v9, v15, v10);
    v31 = v54;
    v30 = v55;
    *&v9[*(v55 + 48)] = v29;
    v32 = v10;
    _s10Foundation4UUIDVSgWOcTm_0(v9, v31, &_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMd, v4);
    v33 = *(v30 + 48);
    v34 = v4;
    v35 = *(v31 + v33);
    type metadata accessor for GoalWorkoutConfiguration();
    if (swift_dynamicCastClass())
    {
      v36 = *v50;
      v57 = v29;
      v36(v31, v10);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v37 = v59;
      v38 = [v59 goalTypeIdentifier];

      v39 = v49;
      v4 = &_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMR;
      _sSo8NSObjectCSgWOhTm_3(v49, &_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMd, &_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMR);

      result = (v36)(v15, v10);
      v9 = v39;
      v21 = v52;
      v20 = v58;
      if (v38 != 3)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v40 = v29;

      v41 = v49;
      _sSo8NSObjectCSgWOhTm_3(v49, &_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMd, v34);
      v42 = *v50;
      (*v50)(v31, v32);

      result = (v42)(v15, v32);
      v4 = v34;
      v9 = v41;
      v10 = v32;
      v21 = v52;
      v20 = v58;
LABEL_15:
      *(v45 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      if (__OFADD__(v46++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v45, v44, v46, v56);
      }
    }
  }

  v23 = v16;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= v21)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v45, v44, v46, v56);
    }

    v24 = *(v47 + 8 * v16);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v58 = (v24 - 1) & v24;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDV11WorkoutCore0K13ConfigurationCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab28VKXEfU_10Foundation4UUIDV_11k8Core0J13M4CTG5ANxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjMIsgnndzo_Tf1nc_n04_s11kw3A28m82OccurrenceStoreC14configurations3forSayAA0aC0CGSo23FIUIWorkoutActivityTypeC_tFSb10U26UUIDV3key_AG5valuet_tXEfU_So23FIUIWorkoutActivityTypeCTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    v9 = specialized closure #1 in _NativeDictionary.filter(_:)(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDV11WorkoutCore0K13ConfigurationCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab28VKXEfU_10Foundation4UUIDV_11k8Core0J13M4CTG5ANxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjMIsgnndzo_Tf1nc_n04_s11kw3A28m85OccurrenceStoreC25configurationsForMoveMode33_41A6A55DBE5760293367A7810ABE1D8CLLSDy10U40UUIDVAA0aC0CGvgSbAH3key_AJ5valuet_tXEfU_Tf1nnc_n(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3);

    return v6;
  }

  return result;
}

void _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDV11WorkoutCore0K13ConfigurationCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab28VKXEfU_10Foundation4UUIDV_11k8Core0J13M4CTG5ANxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjMIsgnndzo_Tf1nc_n04_s11kw3A28m98OccurrenceStoreC38configurationsForMoveModeExcludingRace33_41A6A55DBE5760293367A7810ABE1D8CLLSDy10U40UUIDVAA0aC0CGvgSbAH3key_AJ5valuet_tXEfU_Tf1nnc_n(void *a1, uint64_t a2, void *a3)
{
  v51 = a3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMd, &_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMR);
  v5 = *(*(v49 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v49);
  v48 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v47 = &v37 - v8;
  v46 = type metadata accessor for UUID();
  v50 = *(v46 - 8);
  v9 = v50[8];
  MEMORY[0x28223BE20](v46);
  v45 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v39 = a1;
    v40 = 0;
    v38 = a2;
    v11 = 0;
    v12 = v51 + 8;
    v13 = 1 << *(v51 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & v51[8];
    v16 = (v13 + 63) >> 6;
    v42 = v50 + 1;
    v43 = v50 + 2;
    v44 = v51 + 8;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v53 = (v15 - 1) & v15;
LABEL_14:
      v20 = v17 | (v11 << 6);
      v22 = v50;
      v21 = v51;
      v23 = v50[2];
      v24 = v45;
      v25 = v46;
      v23(v45, v51[6] + v50[9] * v20, v46);
      v26 = v21[7];
      v41 = v20;
      v27 = *(v26 + 8 * v20);
      v28 = v47;
      v23(v47, v24, v25);
      v29 = v49;
      *&v28[*(v49 + 48)] = v27;
      v30 = v28;
      v31 = v48;
      outlined init with take of (key: UUID, value: WorkoutConfiguration)(v30, v48);
      v32 = *(v31 + *(v29 + 48));
      v33 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
      swift_beginAccess();
      v52 = v32[v33];
      v34 = v27;

      v35 = v22[1];
      v35(v31, v25);

      v35(v24, v25);
      v12 = v44;
      v15 = v53;
      if (v52 != 2)
      {
        *(v39 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
        if (__OFADD__(v40++, 1))
        {
          __break(1u);
LABEL_18:
          specialized _NativeDictionary.extractDictionary(using:count:)(v39, v38, v40, v51);

          return;
        }
      }
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        goto LABEL_18;
      }

      v19 = v12[v11];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v53 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = type metadata accessor for Date();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 64;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v10 = v20 & *(v4 + 64);
    v22 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v15 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = __CocoaDictionary.makeIterator()();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v22 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v15 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v23 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!__CocoaDictionary.Iterator.next()())
      {
        goto LABEL_31;
      }

      swift_unknownObjectRelease();
      type metadata accessor for WorkoutAlertZone();
      swift_dynamicCast();
      result = v24;
      v15 = v11;
      if (!v24)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v14 = v11;
    if (!v10)
    {
      break;
    }

    v15 = v11;
LABEL_13:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    result = *(*(v4 + 56) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v23;
    if (v13 == v23)
    {
LABEL_31:
      v15 = v11;
      goto LABEL_32;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v15);
    ++v14;
    if (v10)
    {
      v11 = v15;
      goto LABEL_13;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v21 = v11 + 1;
  }

  else
  {
    v21 = v12;
  }

  v15 = v21 - 1;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v22;
  v7[3] = v15;
  v7[4] = v10;
  return a3;
}

char *specialized WorkoutConfigurationOccurrenceStore.init(queryClient:unlockedSinceBootMonitor:backgroundAssertionManager:applicationSignificantTimeChangeNotificationName:activityMoveModeBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v47[3] = a8;
  v47[4] = a11;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v47);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_0Tm, a1, a8);
  v46[3] = a10;
  v46[4] = a13;
  v20 = __swift_allocate_boxed_opaque_existential_0Tm(v46);
  (*(*(a10 - 8) + 32))(v20, a2, a10);
  v45[3] = a9;
  v45[4] = a12;
  v21 = __swift_allocate_boxed_opaque_existential_0Tm(v45);
  (*(*(a9 - 8) + 32))(v21, a3, a9);
  a7[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_loaded] = 0;
  a7[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurationsDeduplicated] = 0;
  *&a7[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore____lazy_storage___managedConfigurationsStore] = 0;
  *&a7[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_loadDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  a7[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_syncComplete] = 1;
  *&a7[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_syncWorkoutEntityNotifyToken] = -1;
  outlined init with copy of UnlockedSinceBootMonitorProtocol(v47, &a7[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient]);
  v22 = MEMORY[0x277D84F90];
  *&a7[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurations] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_11WorkoutCore0E13ConfigurationCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&a7[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_alternativeConfigurations] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_11WorkoutCore0E13ConfigurationCTt0g5Tf4g_n(v22);
  swift_beginAccess();
  v44 = 0;
  Published.init(initialValue:)();
  swift_endAccess();
  v23 = &a7[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_activityMoveModeBlock];
  *v23 = a5;
  v23[1] = a6;
  outlined init with copy of UnlockedSinceBootMonitorProtocol(v46, &a7[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_unlockedSinceBootMonitor]);
  outlined init with copy of UnlockedSinceBootMonitorProtocol(v45, &a7[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_backgroundAssertionManager]);
  *&a7[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_applicationSignificantTimeChangeNotificationName] = a4;
  v43.receiver = a7;
  v43.super_class = type metadata accessor for WorkoutConfigurationOccurrenceStore();

  v24 = a4;
  v25 = objc_msgSendSuper2(&v43, sel_init);
  v26 = v25 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_unlockedSinceBootMonitor;
  swift_beginAccess();
  v27 = *(v26 + 24);
  v28 = *(v26 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  v29 = *(v28 + 16);
  v30 = v25;
  v29(v25, &protocol witness table for WorkoutConfigurationOccurrenceStore, v27, v28);
  swift_endAccess();
  v31 = NSNotificationNameForSyncedPersistenceType();
  v32 = [v31 UTF8String];
  _sSo17OS_dispatch_queueCMaTm_11(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v33 = static OS_dispatch_queue.main.getter();
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = swift_allocObject();
  *(v35 + 16) = v31;
  *(v35 + 24) = v34;
  aBlock[4] = closure #1 in WorkoutConfigurationOccurrenceStore.init(queryClient:unlockedSinceBootMonitor:backgroundAssertionManager:applicationSignificantTimeChangeNotificationName:activityMoveModeBlock:)partial apply;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
  aBlock[3] = &block_descriptor_142;
  v36 = _Block_copy(aBlock);
  v37 = v31;

  v38 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_syncWorkoutEntityNotifyToken;
  swift_beginAccess();
  notify_register_dispatch(v32, &v30[v38], v33, v36);
  swift_endAccess();
  _Block_release(v36);

  __swift_destroy_boxed_opaque_existential_1Tm_6(v45);
  __swift_destroy_boxed_opaque_existential_1Tm_6(v46);
  __swift_destroy_boxed_opaque_existential_1Tm_6(v47);

  return v30;
}

uint64_t specialized static WorkoutConfigurationOccurrenceStore.load(with:unlockedSinceBootMonitor:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  static Date.timeIntervalSinceReferenceDate.getter();
  v9 = v8;
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D84F90];
  *(v10 + 16) = MEMORY[0x277D84F90];
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  v16 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  outlined init with copy of UnlockedSinceBootMonitorProtocol(a2, v20);
  v17 = swift_allocObject();
  v17[2] = v14;
  v17[3] = v13;
  v17[4] = v10;
  v17[5] = v9;
  v17[6] = v12;
  outlined init with take of UnlockedSinceBootMonitorProtocol(v20, (v17 + 7));
  v17[12] = a3;
  v17[13] = a4;
  v18 = *(v15 + 16);

  v18(partial apply for closure #1 in static WorkoutConfigurationOccurrenceStore.load(with:unlockedSinceBootMonitor:completion:), v17, v16, v15);
}

uint64_t specialized static WorkoutConfigurationOccurrenceStore.sortedRaceConfigurations(_:filterType:)(unint64_t a1, char *a2)
{
  v3 = *a2;
  v30 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x20F2E7A20](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v29 = v6;
      closure #1 in static WorkoutConfigurationOccurrenceStore.sortedRaceConfigurations(_:filterType:)(&v29, v3, &v28);

      if (v28)
      {
        MEMORY[0x20F2E6F30]();
        if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v27 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  v30 = specialized Array._copyToContiguousArray()(v9);
  specialized MutableCollection<>.sort(by:)(&v30);

  v10 = v30;
  if (one-time initialization token for race != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static WOLog.race);
    swift_retain_n();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v30 = v15;
      *v14 = 136315394;
      LOBYTE(v29) = v3;
      v16 = WorkoutConfigurationFilterType.displayName.getter();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v30);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2048;
      v19 = v10 & 0x4000000000000000;
      if (v10 < 0 || v19)
      {
        v20 = __CocoaSet.count.getter();
      }

      else
      {
        v20 = *(v10 + 16);
      }

      *(v14 + 14) = v20;

      _os_log_impl(&dword_20AEA4000, v12, v13, "Race: filter (%s) found %ld race workout_configurations", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm_6(v15);
      MEMORY[0x20F2E9420](v15, -1, -1);
      MEMORY[0x20F2E9420](v14, -1, -1);
    }

    else
    {

      v19 = v10 & 0x4000000000000000;
    }

    if (v10 < 0 || v19)
    {
      break;
    }

    v21 = *(v10 + 16);
    if (!v21)
    {
      return v10;
    }

LABEL_27:
    for (j = 0; ; ++j)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x20F2E7A20](j, v10);
      }

      else
      {
        if (j >= *(v10 + 16))
        {
          goto LABEL_36;
        }

        v23 = *(v10 + 8 * j + 32);
      }

      v24 = v23;
      v25 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v30 = v23;
      closure #4 in static WorkoutConfigurationOccurrenceStore.sortedNearbyRaceConfigurations(_:filterType:currentLocation:)(&v30, v3, "Race: filter (%s) found race workout_configuration (%s): %s, clusterUUID: %s, lastWorkoutStartingPoint: %@, relevanceValue: %f");

      if (v25 == v21)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }

  v21 = __CocoaSet.count.getter();
  if (v21)
  {
    goto LABEL_27;
  }

  return v10;
}

char *specialized static WorkoutConfiguration.copy(of:with:preservingExternalProvider:)(void *a1, void *a2, int a3)
{
  v55 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v50 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v54 = &v50 - v11;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static WOLog.app);
  v18 = a1;
  v19 = a2;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v53 = v8;
    v23 = v22;
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v56[0] = v52;
    *v23 = 136315650;
    v24 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    (*(v13 + 16))(v16, &v18[v24], v12);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v13 + 8))(v16, v12);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v56);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2112;
    *(v23 + 14) = v19;
    v29 = v51;
    *v51 = v19;
    *(v23 + 22) = 2080;
    v30 = v19;
    v31 = WorkoutConfiguration.logDisplayName.getter();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v56);

    *(v23 + 24) = v33;
    _os_log_impl(&dword_20AEA4000, v20, v21, "[ConfigurationStore] copy workout_configuration %s with activityType: %@ (%s)", v23, 0x20u);
    _sSo8NSObjectCSgWOhTm_3(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v29, -1, -1);
    v34 = v52;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v34, -1, -1);
    v35 = v23;
    v8 = v53;
    MEMORY[0x20F2E9420](v35, -1, -1);
  }

  v36 = closure #1 in static WorkoutConfiguration.copy(of:with:preservingExternalProvider:)(v18, v19);
  v37 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  swift_beginAccess();
  v38 = &v18[v37];
  v39 = v54;
  _s10Foundation4UUIDVSgWOcTm_0(v38, v54, &_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
  v40 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  swift_beginAccess();
  outlined assign with take of WorkoutPlan.Route?(v39, &v36[v40], &_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
  swift_endAccess();
  if (v55)
  {
    v41 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
    swift_beginAccess();
    v42 = *&v18[v41];
    v43 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
    swift_beginAccess();
    v44 = *&v36[v43];
    *&v36[v43] = v42;

    v45 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
    swift_beginAccess();
    _s10Foundation4UUIDVSgWOcTm_0(&v18[v45], v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v46 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
    swift_beginAccess();
    outlined assign with take of WorkoutPlan.Route?(v8, &v36[v46], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    swift_endAccess();
    v47 = OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate;
    swift_beginAccess();
    _s10Foundation4UUIDVSgWOcTm_0(&v18[v47], v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v48 = OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate;
    swift_beginAccess();
    outlined assign with take of WorkoutPlan.Route?(v8, &v36[v48], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    swift_endAccess();
  }

  return v36;
}

char *specialized WorkoutConfigurationOccurrenceStore.__allocating_init(queryClient:unlockedSinceBootMonitor:backgroundAssertionManager:applicationSignificantTimeChangeNotificationName:activityMoveModeBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12)
{
  v36 = a5;
  v37 = a6;
  v35 = a4;
  v32 = a2;
  v33 = a3;
  v30 = a1;
  v34 = a11;
  v13 = *(a9 - 8);
  v14 = *(v13 + 64);
  v31 = a12;
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a10 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v20);
  v27 = &v30 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = objc_allocWithZone(type metadata accessor for WorkoutConfigurationOccurrenceStore());
  (*(v24 + 16))(v27, v30, a8);
  (*(v18 + 16))(v22, v32, a10);
  (*(v13 + 16))(v17, v33, a9);
  return specialized WorkoutConfigurationOccurrenceStore.init(queryClient:unlockedSinceBootMonitor:backgroundAssertionManager:applicationSignificantTimeChangeNotificationName:activityMoveModeBlock:)(v27, v22, v17, v35, v36, v37, v28, a8, a9, a10, v34, *(&v34 + 1), v31);
}

uint64_t partial apply for closure #1 in WorkoutConfigurationOccurrenceStore.loadIfNeededInBackground(enteringForeground:)(char a1, unint64_t a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 25) & ~*(v5 + 80));

  return closure #1 in WorkoutConfigurationOccurrenceStore.loadIfNeededInBackground(enteringForeground:)(a1, a2, v6, v7, v8);
}

void *specialized WorkoutConfigurationOccurrenceStore.defaultConfiguration(with:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v39 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v46 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  v16 = [objc_opt_self() defaultActivityTypesWithIsWheelchairUser:0 isSwimmingSupported:1 activityMoveMode:1];
  _sSo17OS_dispatch_queueCMaTm_11(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v48 = a1;
  v18 = specialized Sequence.first(where:)(partial apply for closure #1 in WorkoutConfigurationOccurrenceStore.defaultConfiguration(with:), v47, v17);

  if (v18)
  {
    v43 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
    v45 = v18;
    v19 = [v18 openGoalUUID];
    if (v19)
    {
      v20 = v19;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = *(v7 + 32);
      v21(v5, v13, v6);
      v22 = v13;
      v42 = *(v7 + 56);
      v42(v5, 0, 1, v6);
      v21(v15, v5, v6);
      v23 = v15;
    }

    else
    {
      v22 = v13;
      v24 = *(v7 + 56);
      v24(v5, 1, 1, v6);
      v23 = v15;
      UUID.init()();
      v25 = (*(v7 + 48))(v5, 1, v6);
      v42 = v24;
      if (v25 != 1)
      {
        _sSo8NSObjectCSgWOhTm_3(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }
    }

    v40 = v22;
    v44 = v23;
    v41 = specialized Occurrence.__allocating_init(count:)(0);
    v26 = *(v7 + 16);
    v26(v22, v23, v6);
    v27 = objc_allocWithZone(type metadata accessor for GoalWorkoutConfiguration());
    swift_beginAccess();
    v28 = v43;
    v50 = v43;
    _sSo17OS_dispatch_queueCMaTm_11(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
    v43 = v28;
    Published.init(initialValue:)();
    swift_endAccess();
    v26(v46, v22, v6);
    *&v27[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
    v29 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
    v30 = type metadata accessor for Date();
    v31 = *(*(v30 - 8) + 56);
    v31(&v27[v29], 1, 1, v30);
    v31(&v27[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v30);
    v32 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
    v33 = type metadata accessor for WorkoutPlan.Route();
    (*(*(v33 - 8) + 56))(&v27[v32], 1, 1, v33);
    v42(&v27[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v6);
    v34 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
    *&v27[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
    v35 = v46;
    v26(&v27[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v46, v6);
    *&v27[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v45;
    v27[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
    *&v27[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v41;
    swift_beginAccess();
    *&v27[v34] = 0;
    v27[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
    v36 = type metadata accessor for WorkoutConfiguration();
    v49.receiver = v27;
    v49.super_class = v36;
    v18 = objc_msgSendSuper2(&v49, sel_init);

    v37 = *(v7 + 8);
    v37(v35, v6);
    v37(v40, v6);
    v37(v44, v6);
  }

  return v18;
}

uint64_t specialized static WorkoutConfigurationOccurrenceStore.daysAgo(from:now:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  Date.timeIntervalSinceReferenceDate.getter();
  v13 = v12;
  Date.timeIntervalSinceReferenceDate.getter();
  v15 = v13 - v14;
  if (COERCE__INT64(fabs(v13 - v14)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v15 <= -2147483650.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v15 >= 2147483650.0)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    swift_once();
LABEL_8:
    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.app);
    v18 = v5[2];
    v18(v11, a1, v4);
    v18(v9, a2, v4);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134218496;
      Date.timeIntervalSinceReferenceDate.getter();
      v23 = v22;
      v24 = v5[1];
      v24(v11, v4);
      *(v21 + 4) = v23;
      *(v21 + 12) = 2048;
      Date.timeIntervalSinceReferenceDate.getter();
      v26 = v25;
      v24(v9, v4);
      *(v21 + 14) = v26;
      *(v21 + 22) = 2048;
      *(v21 + 24) = v15;
      _os_log_impl(&dword_20AEA4000, v19, v20, "workout_configuration daysAgo from date %f is later than now %f, timeInterval: %f", v21, 0x20u);
      MEMORY[0x20F2E9420](v21, -1, -1);
    }

    else
    {

      v27 = v5[1];
      v27(v9, v4);
      v27(v11, v4);
    }

    return 1;
  }

  if (v15 >= 1)
  {
    return v15 / 0x15180u + 1;
  }

  if (v15 < 0.0)
  {
    if (one-time initialization token for app == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  return 1;
}

uint64_t dispatch thunk of WorkoutConfigurationOccurrenceStore.configurations(for:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x280))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x290))();
}

BOOL specialized static WorkoutConfigurationOccurrenceStore.compareConfigurations(lhs:rhs:now:addWeightForNew:)(char *a1, char *a2, uint64_t a3, int a4)
{
  LODWORD(v93) = a4;
  v94 = a2;
  v95 = a3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v84 = &v82[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v8);
  v85 = &v82[-v11];
  v12 = MEMORY[0x28223BE20](v10);
  v87 = &v82[-v13];
  v14 = MEMORY[0x28223BE20](v12);
  v88 = &v82[-v15];
  MEMORY[0x28223BE20](v14);
  v17 = &v82[-v16];
  v18 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
  swift_beginAccess();
  v92 = a1;
  v90 = v18;
  v19 = *&a1[v18];
  v20 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
  swift_beginAccess();
  v21 = *(v19 + v20);
  v22 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_creationDate;
  swift_beginAccess();
  v24 = v6 + 2;
  v23 = v6[2];
  v23(v17, v19 + v22, v5);
  LODWORD(v89) = specialized static WorkoutConfigurationOccurrenceStore.daysAgo(from:now:)(v17, v95);
  v27 = v6[1];
  v26 = v6 + 1;
  v25 = v27;
  v27(v17, v5);
  v28 = 0.0;
  v29 = 0.0;
  v91 = v23;
  if (v93)
  {
    v83 = v21;
    v30 = *&v92[v90];
    v31 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
    swift_beginAccess();
    v23(v88, v30 + v31, v5);
    v32 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
    swift_beginAccess();
    v33 = v30 + v32;
    v34 = v87;
    v86 = v24;
    v23(v87, v33, v5);
    Date.timeIntervalSinceReferenceDate.getter();
    v36 = v35;
    Date.timeIntervalSinceReferenceDate.getter();
    if (v37 <= v36)
    {
      Date.timeIntervalSinceReferenceDate.getter();
      v39 = v38;
      Date.timeIntervalSinceReferenceDate.getter();
      v41 = v40;
      v25(v34, v5);
      v25(v88, v5);
      if (v39 - v41 >= 86400.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = 1000000.0;
      }
    }

    else
    {
      v25(v34, v5);
      v25(v88, v5);
    }

    v23 = v91;
    v21 = v83;
  }

  LODWORD(v88) = v21 & ~(v21 >> 31);
  v42 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
  v43 = v94;
  swift_beginAccess();
  v44 = *&v43[v42];
  v45 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
  swift_beginAccess();
  LODWORD(v87) = *(v44 + v45) & ~(*(v44 + v45) >> 31);
  v46 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_creationDate;
  swift_beginAccess();
  v23(v17, v44 + v46, v5);
  v47 = specialized static WorkoutConfigurationOccurrenceStore.daysAgo(from:now:)(v17, v95);
  v25(v17, v5);
  v86 = v42;
  if (v93)
  {
    LODWORD(v93) = v47;
    v48 = *&v94[v42];
    v49 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
    swift_beginAccess();
    v50 = v85;
    v23(v85, v48 + v49, v5);
    v51 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
    swift_beginAccess();
    v52 = v48 + v51;
    v53 = v50;
    v54 = v84;
    v23(v84, v52, v5);
    Date.timeIntervalSinceReferenceDate.getter();
    v56 = v55;
    Date.timeIntervalSinceReferenceDate.getter();
    if (v57 <= v56)
    {
      Date.timeIntervalSinceReferenceDate.getter();
      v59 = v58;
      Date.timeIntervalSinceReferenceDate.getter();
      v61 = v60;
      v25(v54, v5);
      v25(v53, v5);
      if (v59 - v61 >= 86400.0)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = 1000000.0;
      }
    }

    else
    {
      v25(v54, v5);
      v25(v53, v5);
    }

    v47 = v93;
  }

  v62 = v88 / v89 + v29;
  v63 = v87 / v47 + v28;
  if (v62 == v63)
  {
    v93 = v26;
    v64 = v92;
    v89 = v92;
    Date.timeIntervalSinceReferenceDate.getter();
    v66 = v65;
    v67 = *&v64[v90];
    v68 = v94;
    v69 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
    swift_beginAccess();
    v23(v17, v67 + v69, v5);
    Date.timeIntervalSinceReferenceDate.getter();
    v71 = v70;

    v25(v17, v5);
    v72 = v66 - v71;
    v73 = v68;
    Date.timeIntervalSinceReferenceDate.getter();
    v75 = v74;
    v76 = *&v68[v86];
    v77 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
    swift_beginAccess();
    v91(v17, v76 + v77, v5);
    Date.timeIntervalSinceReferenceDate.getter();
    v79 = v78;

    v25(v17, v5);
    return v72 < v75 - v79;
  }

  else
  {
    return v63 < v62;
  }
}

uint64_t outlined assign with take of WorkoutPlan.Route?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of (key: UUID, value: WorkoutConfiguration)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMd, &_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s10Foundation4UUIDVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined consume of Set<WorkoutConfigurationOccurrenceStore.WorkoutConfigurationHolder>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t outlined init with take of UnlockedSinceBootMonitorProtocol(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void partial apply for closure #1 in closure #1 in WorkoutConfigurationOccurrenceStore.loadIfNeededInBackground(enteringForeground:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = v0 + ((*(v1 + 80) + 33) & ~*(v1 + 80));

  closure #1 in closure #1 in WorkoutConfigurationOccurrenceStore.loadIfNeededInBackground(enteringForeground:)(v2, v3, v4, v5);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t objectdestroy_130Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t LiveWorkoutConfiguration.configurationUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  v4 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  v5 = type metadata accessor for UUID();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t LiveWorkoutConfiguration.startSource.getter()
{
  v1 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t LiveWorkoutConfiguration.startSource.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t LiveWorkoutConfiguration.mirroredStartInterrupted.getter()
{
  v1 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_mirroredStartInterrupted;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t LiveWorkoutConfiguration.mirroredStartInterrupted.setter(char a1)
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_mirroredStartInterrupted;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id LiveWorkoutConfiguration.catalogWorkoutBridge.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for CatalogWorkout();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout, v4, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v4, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v12, v4, v5);
    v14 = *(v6 + 16);
    v14(v10, v12, v5);
    v15 = type metadata accessor for CatalogWorkoutCoreBridge();
    v16 = objc_allocWithZone(v15);
    v14(&v16[OBJC_IVAR___WOCoreCatalogWorkout_bridgedValue], v10, v5);
    v19.receiver = v16;
    v19.super_class = v15;
    v17 = objc_msgSendSuper2(&v19, sel_init);
    v18 = *(v6 + 8);
    v18(v10, v5);
    v18(v12, v5);
    return v17;
  }
}

Class @objc LiveWorkoutConfiguration.activityBeginDate.getter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = *a3;
  swift_beginAccess();
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(a1 + v9, v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v8, v10);
    v13 = isa;
  }

  return v13;
}

uint64_t LiveWorkoutConfiguration.activityBeginDate.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v4 + v8, a4, a2, a3);
}

void @objc LiveWorkoutConfiguration.activityBeginDate.setter(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  if (a3)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for Date();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = type metadata accessor for Date();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  v13 = *a4;
  swift_beginAccess();
  v14 = a1;
  _s10Foundation4DateVSgWOdTm_0(v10, a1 + v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_endAccess();
}

uint64_t LiveWorkoutConfiguration.activityBeginDate.setter(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  _s10Foundation4DateVSgWOdTm_0(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t key path setter for LiveWorkoutConfiguration.activityBeginDate : LiveWorkoutConfiguration(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v19 - v14;
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(a1, &v19 - v14, a5, a6);
  v16 = *a2;
  v17 = *a7;
  swift_beginAccess();
  _s10Foundation4DateVSgWOdTm_0(v15, v16 + v17, a5, a6);
  return swift_endAccess();
}

uint64_t _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10Foundation4DateVSgWOdTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t LiveWorkoutConfiguration.fitnessMachineSeymourStartSource.getter()
{
  v1 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSeymourStartSource;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t LiveWorkoutConfiguration.fitnessMachineSeymourStartSource.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSeymourStartSource;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

Class @objc LiveWorkoutConfiguration.fitnessMachineSessionUUID.getter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = *a3;
  swift_beginAccess();
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(a1 + v9, v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v8, v10);
    v13 = isa;
  }

  return v13;
}

void @objc LiveWorkoutConfiguration.fitnessMachineSessionUUID.setter(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  if (a3)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  v13 = *a4;
  swift_beginAccess();
  v14 = a1;
  _s10Foundation4DateVSgWOdTm_0(v10, a1 + v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  swift_endAccess();
}

void *LiveWorkoutConfiguration.suggestedHKWorkoutConfiguration.getter()
{
  v1 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_suggestedHKWorkoutConfiguration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void LiveWorkoutConfiguration.suggestedHKWorkoutConfiguration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_suggestedHKWorkoutConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void key path setter for LiveWorkoutConfiguration.suggestedHKWorkoutConfiguration : LiveWorkoutConfiguration(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_suggestedHKWorkoutConfiguration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t LiveWorkoutConfiguration.requiresGoalConfiguration.getter()
{
  v1 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_requiresGoalConfiguration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t LiveWorkoutConfiguration.requiresGoalConfiguration.setter(char a1)
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_requiresGoalConfiguration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id LiveWorkoutConfiguration.topLevelActivityType.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  v2 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v3 = *(v1 + v2);

  return v3;
}

uint64_t LiveWorkoutConfiguration.currentMultisportDisplayedActivityType.getter()
{
  v1 = LiveWorkoutConfiguration.currentActivityType.getter();
  v2 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for MultiSportWorkoutConfiguration();
  if (!swift_dynamicCastClass())
  {
    return v1;
  }

  v3 = v2;
  if ([v1 effectiveTypeIdentifier] != 83)
  {

    return v1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v8 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x20F2E7A20]();
    goto LABEL_7;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v8 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(9 * v8 + 0x20);
LABEL_7:
    v6 = v5;

    v7 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    swift_beginAccess();
    v1 = *&v6[v7];

    return v1;
  }

  __break(1u);
  return result;
}

id LiveWorkoutConfiguration.currentActivityType.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for MultiSportWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v11 >> 62)
    {
      v3 = __CocoaSet.count.getter();
    }

    else
    {
      v3 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v11 < v3)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if ((v11 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x20F2E7A20]();
        goto LABEL_9;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v11 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v4 = *(9 * v11 + 0x20);
LABEL_9:
        v5 = v4;

        v6 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
        swift_beginAccess();
        v7 = *&v5[v6];

        return v7;
      }

      __break(1u);
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    swift_beginAccess();
    v10 = *&v1[v9];

    return v10;
  }

  return result;
}

id LiveWorkoutConfiguration.currentActivityTypeIdentifier.getter()
{
  v0 = LiveWorkoutConfiguration.currentActivityType.getter();
  v1 = [v0 identifier];

  return v1;
}

id @objc LiveWorkoutConfiguration.currentActivityTypeIdentifier.getter(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = LiveWorkoutConfiguration.currentActivityType.getter();
  v6 = [v5 *a3];

  return v6;
}

id LiveWorkoutConfiguration.currentEffectiveActivityTypeIdentifier.getter()
{
  v0 = LiveWorkoutConfiguration.currentActivityType.getter();
  v1 = [v0 effectiveTypeIdentifier];

  return v1;
}

uint64_t LiveWorkoutConfiguration.currentActivityLocationType.getter()
{
  v0 = LiveWorkoutConfiguration.currentActivityType.getter();
  v1 = [v0 isIndoor];

  if (v1)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t LiveWorkoutConfiguration.currentIntervalWorkoutKeyPath.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t LiveWorkoutConfiguration.currentIntervalWorkoutKeyPath.setter(__int128 *a1)
{
  v6 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v1;
  return static Published.subscript.setter();
}

uint64_t (*LiveWorkoutConfiguration.currentIntervalWorkoutKeyPath.modify(uint64_t *a1))()
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
  return LiveWorkoutConfiguration.currentIntervalWorkoutKeyPath.modify;
}

uint64_t key path setter for LiveWorkoutConfiguration.$currentIntervalWorkoutKeyPath : LiveWorkoutConfiguration(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore08IntervalD7KeyPathVSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore08IntervalD7KeyPathVSg_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore08IntervalC7KeyPathVSgGMd, &_s7Combine9PublishedVy11WorkoutCore08IntervalC7KeyPathVSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t LiveWorkoutConfiguration.$currentIntervalWorkoutKeyPath.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore08IntervalD7KeyPathVSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore08IntervalD7KeyPathVSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore08IntervalC7KeyPathVSgGMd, &_s7Combine9PublishedVy11WorkoutCore08IntervalC7KeyPathVSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*LiveWorkoutConfiguration.$currentIntervalWorkoutKeyPath.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore08IntervalD7KeyPathVSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore08IntervalD7KeyPathVSg_GMR);
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

  v10 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__currentIntervalWorkoutKeyPath;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore08IntervalC7KeyPathVSgGMd, &_s7Combine9PublishedVy11WorkoutCore08IntervalC7KeyPathVSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return LiveWorkoutConfiguration.$currentIntervalWorkoutKeyPath.modify;
}

uint64_t LiveWorkoutConfiguration.currentMultiSportLeg.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path setter for LiveWorkoutConfiguration.$currentMultiSportLeg : LiveWorkoutConfiguration(uint64_t a1, uint64_t *a2)
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

void LiveWorkoutConfiguration.remainingMultisportLegCount.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for MultiSportWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    static Published.subscript.getter();

    if (v4 >> 62)
    {
      v3 = __CocoaSet.count.getter();
    }

    else
    {
      v3 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (__OFSUB__(v3, v4))
    {
      __break(1u);
    }

    else if (!__OFSUB__(v3 - v4, 1))
    {
      return;
    }

    __break(1u);
  }
}

id LiveWorkoutConfiguration.currentPowerZonesAlertTargetZone.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for IntervalWorkoutConfiguration();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_6;
  }

  v2 = LiveWorkoutConfiguration.currentActivityType.getter();
  v3 = [v2 effectiveTypeIdentifier];

  if (v3 == 13)
  {
    if (swift_dynamicCastClass())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v4 = v1;
      static Published.subscript.getter();

      if (v20 != 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v15 = v19;
        v16 = IntervalWorkout.stepForKeyPath(_:)(&v19);

        v17 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone;
        swift_beginAccess();
        v18 = *(v16 + v17);
        if (!v18)
        {
          if (one-time initialization token for defaultZone != -1)
          {
            swift_once();
          }

          v18 = static PowerZonesAlertTargetZone.defaultZone;
        }

        v9 = v18;

        goto LABEL_12;
      }
    }

LABEL_6:
    v4 = LiveWorkoutConfiguration.currentActivityType.getter();
    swift_beginAccess();
    v5 = static PowerZonesAlertTargetZone.powerZonesAlertTargetZonesByActivityTypeKey;
    v6 = off_27C728588;

    v7 = specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(v5, v6, v4);

    if (!v7 || (type metadata accessor for PowerZonesAlertTargetZone(), (v8 = PowerZonesAlertTargetZone.__allocating_init(dict:)(v7)) == 0))
    {
      if (one-time initialization token for defaultZone != -1)
      {
        swift_once();
      }

      v8 = static PowerZonesAlertTargetZone.defaultZone;
    }

    v9 = v8;
LABEL_12:

    return v9;
  }

  v11 = type metadata accessor for PowerZonesAlertTargetZone();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_defaultZonesDidLoad];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v12[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type];
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = -64;
  v21.receiver = v12;
  v21.super_class = v11;
  return objc_msgSendSuper2(&v21, sel_init);
}

id LiveWorkoutConfiguration.currentPowerAlertTargetZone.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for IntervalWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    v2 = type metadata accessor for PowerZonesAlertTargetZone();
    v3 = objc_allocWithZone(v2);
    v4 = &v3[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_defaultZonesDidLoad];
    *v4 = 0;
    *(v4 + 1) = 0;
    v5 = &v3[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type];
    *v5 = 0;
    *(v5 + 1) = 0;
    v5[16] = -64;
    v13.receiver = v3;
    v13.super_class = v2;
    return objc_msgSendSuper2(&v13, sel_init);
  }

  else
  {
    v7 = LiveWorkoutConfiguration.currentActivityType.getter();
    swift_beginAccess();
    v8 = static PowerZonesAlertTargetZone.powerZonesAlertTargetZonesByActivityTypeKey;
    v9 = off_27C728588;

    v10 = specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(v8, v9, v7);

    if (!v10 || (type metadata accessor for PowerZonesAlertTargetZone(), (v11 = PowerZonesAlertTargetZone.__allocating_init(dict:)(v10)) == 0))
    {
      if (one-time initialization token for defaultZone != -1)
      {
        swift_once();
      }

      v11 = static PowerZonesAlertTargetZone.defaultZone;
    }

    v12 = v11;

    return v12;
  }
}

id LiveWorkoutConfiguration.topLevelGoal.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for IntervalWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    v2 = objc_allocWithZone(MEMORY[0x277D0A838]);

    return [v2 initWithGoalTypeIdentifier:0 value:0];
  }

  else
  {

    return LiveWorkoutConfiguration.currentGoal.getter();
  }
}

id LiveWorkoutConfiguration.currentGoal.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for GoalWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    goto LABEL_2;
  }

  type metadata accessor for IntervalWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v1 = v1;
    static Published.subscript.getter();

    if ((v14 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v4 = v13;
      IntervalWorkout.stepForKeyPath(_:)(&v13);

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      return v13;
    }

    goto LABEL_7;
  }

  type metadata accessor for PacerWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
LABEL_2:
    swift_getKeyPath();
    swift_getKeyPath();
    v1 = v1;
    static Published.subscript.getter();

LABEL_3:

    return v13;
  }

  type metadata accessor for RaceWorkoutConfiguration();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for MultiSportWorkoutConfiguration();
    if (swift_dynamicCastClass())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v1 = v1;
      static Published.subscript.getter();

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v13 >> 62)
      {
        v6 = __CocoaSet.count.getter();
      }

      else
      {
        v6 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v13 >= v6)
      {
LABEL_7:
        v3 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];

        return v3;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if ((v13 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x20F2E7A20](v13, v13);
        goto LABEL_23;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v13 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v7 = *(9 * v13 + 0x20);
LABEL_23:
        v8 = v7;

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        goto LABEL_3;
      }

      __break(1u);
    }

    _StringGuts.grow(_:)(36);

    v9 = [v1 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    MEMORY[0x20F2E6D80](v10, v12);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v5 = objc_allocWithZone(MEMORY[0x277D0A838]);

  return [v5 initWithGoalTypeIdentifier:0 value:0];
}

uint64_t LiveWorkoutConfiguration.currentTargetZones.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for GoalWorkoutConfiguration();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    v4 = v2;
    swift_beginAccess();
    v5 = *(v4 + v3);
    v6 = v1;
    v7 = v5;
    specialized static TargetZoneStorage.defaultZones(activityType:)(v7);
    v9 = v8;

    return v9;
  }

  type metadata accessor for IntervalWorkoutConfiguration();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_18;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v1;
  static Published.subscript.getter();

  if (v65 == 1)
  {
    goto LABEL_57;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = v64;
  v11 = IntervalWorkout.stepForKeyPath(_:)(&v64);

  v12 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v13 = *(v11 + v12);
  if (v13 >> 62)
  {
    goto LABEL_63;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:

  if (!v14)
  {
LABEL_42:

    v33 = WorkoutStep.activePowerZonesAlertTargetZone.getter();
    if (v33)
    {
      v34 = v33;
      v35 = PowerZonesAlertTargetZone.targetZoneRepresentation.getter();

      if (v35)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_20B425990;
        *(v9 + 32) = v35;
LABEL_60:

        return v9;
      }
    }

    goto LABEL_57;
  }

  v15 = 0;
  while ((v13 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x20F2E7A20](v15, v13);
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_17;
    }

LABEL_12:
    swift_beginAccess();
    if (*(v16 + 40))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_20B425990;
      *(v9 + 32) = v16;
      goto LABEL_60;
    }

    ++v15;
    if (v17 == v14)
    {
      goto LABEL_42;
    }
  }

  if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_62;
  }

  v16 = *(v13 + 8 * v15 + 32);

  v17 = v15 + 1;
  if (!__OFADD__(v15, 1))
  {
    goto LABEL_12;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  type metadata accessor for PacerWorkoutConfiguration();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    type metadata accessor for RaceWorkoutConfiguration();
    if (swift_dynamicCastClass())
    {
      return MEMORY[0x277D84F90];
    }

    type metadata accessor for MultiSportWorkoutConfiguration();
    if (!swift_dynamicCastClass())
    {
      goto LABEL_81;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v1 = v1;
    static Published.subscript.getter();

    v36 = v64;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v64 >> 62)
    {
      v37 = __CocoaSet.count.getter();
    }

    else
    {
      v37 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v36 < v37)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v38 = v64;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if ((v64 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x20F2E7A20](v38, v64);
        goto LABEL_55;
      }

      if ((v38 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v38 < *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v39 = *(v64 + 8 * v38 + 32);
LABEL_55:
        v40 = v39;

        v41 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
        swift_beginAccess();
        v42 = *&v40[v41];
        specialized static TargetZoneStorage.defaultZones(activityType:)(v42);
        v9 = v43;

        return v9;
      }

      __break(1u);
LABEL_81:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

LABEL_57:

    return MEMORY[0x277D84F90];
  }

  v19 = v18;
  v20 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v21 = *(v19 + v20);
  v22 = v1;
  v13 = v21;
  specialized static TargetZoneStorage.defaultZones(activityType:)(v13);
  v24 = v23;

  v67 = MEMORY[0x277D84F90];
  if (v24 >> 62)
  {
    v25 = __CocoaSet.count.getter();
    if (!v25)
    {
      goto LABEL_65;
    }

LABEL_21:
    v63 = v19;
    v26 = 0;
    while (1)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x20F2E7A20](v26, v24);
        v1 = (v26 + 1);
        if (__OFADD__(v26, 1))
        {
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }
      }

      else
      {
        if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          v14 = __CocoaSet.count.getter();
          goto LABEL_7;
        }

        v28 = *(v24 + 8 * v26 + 32);

        v1 = (v26 + 1);
        if (__OFADD__(v26, 1))
        {
          goto LABEL_41;
        }
      }

      v29 = *(v28 + 16);
      if (v29 > 4)
      {
        if (v29 - 5 < 2)
        {
          v31 = "oneMasterTypeCadence";
LABEL_33:
          v13 = v31 | 0x8000000000000000;
LABEL_37:
          v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v32)
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v27 = *(v67 + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v13 = &v67;
            specialized ContiguousArray._endMutation()();
          }

          goto LABEL_23;
        }

        v30 = "audioTranscriptionsEnabled";
      }

      else
      {
        if (v29 >= 3)
        {
          v31 = "oneMasterTypePace";
          goto LABEL_33;
        }

        v30 = "oneMasterTypeNone";
      }

      v13 = v30 | 0x8000000000000000;
      if ((v30 | 0x8000000000000000) != 0x800000020B454EB0)
      {
        goto LABEL_37;
      }

LABEL_23:
      ++v26;
      if (v1 == v25)
      {
        v9 = v67;
        v19 = v63;
        goto LABEL_66;
      }
    }
  }

  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v25)
  {
    goto LABEL_21;
  }

LABEL_65:
  v9 = MEMORY[0x277D84F90];
LABEL_66:

  v68 = v9;
  v44 = *(v19 + v20);

  v45 = specialized static PacerAlertsStore.read(for:)(v44);
  swift_beginAccess();
  v46 = *(v45 + 16);

  if ((v46 & 1) == 0)
  {
    goto LABEL_75;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v47 = v66;
  v48 = [v66 value];

  v49 = 0.0;
  v50 = 0.0;
  if (v48)
  {
    v51 = [objc_opt_self() meterUnit];
    [v48 doubleValueForUnit_];
    v50 = v52;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v53 = v66;
  v54 = [v66 value];

  if (v54)
  {
    v55 = [objc_opt_self() secondUnit];
    [v54 doubleValueForUnit_];
    v49 = v56;
  }

  v57 = MEMORY[0x20F2E8430](v50, v49);
  if (v57 > 0.0)
  {
    v58 = v57;
    type metadata accessor for TargetZone();
    v59 = swift_allocObject();
    *(v59 + 16) = 1;
    *(v59 + 24) = v58;
    *(v59 + 32) = v58;
    *(v59 + 40) = (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0;

    MEMORY[0x20F2E6F30](v60);
    if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v62 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    return v68;
  }

  else
  {
LABEL_75:
  }

  return v9;
}

id LiveWorkoutConfiguration.currentHeartRateTargetZone.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for IntervalWorkoutConfiguration();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_4;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.getter();

  if (v14 == 1)
  {

LABEL_4:
    v2 = LiveWorkoutConfiguration.currentActivityType.getter();
    swift_beginAccess();
    v4 = static HeartRateTargetZone.heartRateTargetZonesByActivityTypeKey;
    v3 = off_27C728570;

    v5 = specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(v4, v3, v2);

    if (!v5 || (specialized HeartRateTargetZone.__allocating_init(dict:)(v5), !v6))
    {
      if (one-time initialization token for defaultZone != -1)
      {
        swift_once();
      }

      v6 = static HeartRateTargetZone.defaultZone;
    }

    v7 = v6;
    goto LABEL_15;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = v13;
  v9 = IntervalWorkout.stepForKeyPath(_:)(&v13);

  v10 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
  swift_beginAccess();
  v11 = *(v9 + v10);
  if (!v11)
  {
    if (one-time initialization token for defaultZone != -1)
    {
      swift_once();
    }

    v11 = static HeartRateTargetZone.defaultZone;
  }

  v7 = v11;

LABEL_15:

  return v7;
}

uint64_t LiveWorkoutConfiguration.isWorkoutBuddyMuted.getter()
{
  v1 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyMuted;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t LiveWorkoutConfiguration.isWorkoutBuddyMuted.setter(char a1)
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyMuted;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t LiveWorkoutConfiguration.isWorkoutBuddyFeatureNoLongerAvailable.getter()
{
  v1 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureNoLongerAvailable;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t LiveWorkoutConfiguration.isWorkoutBuddyFeatureNoLongerAvailable.setter(char a1)
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureNoLongerAvailable;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t LiveWorkoutConfiguration.isWorkoutBuddyUnavailableDueToHeadphonesOff.getter()
{
  v1 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyUnavailableDueToHeadphonesOff;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t LiveWorkoutConfiguration.isWorkoutBuddyUnavailableDueToHeadphonesOff.setter(char a1)
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyUnavailableDueToHeadphonesOff;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t LiveWorkoutConfiguration.multisportAutomaticallySwitchesLegs.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for MultiSportWorkoutConfiguration();
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = specialized static MultisportTransitionsStore.read()();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return v4;
  }

  return result;
}

BOOL @objc LiveWorkoutConfiguration.isInterval.getter(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *(a1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  a3(0);
  return swift_dynamicCastClass() != 0;
}

BOOL LiveWorkoutConfiguration.isInterval.getter(void (*a1)(void))
{
  v2 = *(v1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  a1(0);
  return swift_dynamicCastClass() != 0;
}

BOOL LiveWorkoutConfiguration.isGymKit.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSessionUUID;
  swift_beginAccess();
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v0 + v5, v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = type metadata accessor for UUID();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return v7;
}

BOOL LiveWorkoutConfiguration.isCatalogWorkout.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - v3;
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout, &v8 - v3, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  v5 = type metadata accessor for CatalogWorkout();
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5) != 1;
  _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v4, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  return v6;
}

uint64_t LiveWorkoutConfiguration.providerBundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  v2 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!v3)
  {
    return 0;
  }

  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);

  return v4;
}

uint64_t LiveWorkoutConfiguration.videoMetrics.getter()
{
  v1 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_videoMetrics;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t LiveWorkoutConfiguration.videoMetrics.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_videoMetrics;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path setter for LiveWorkoutConfiguration.videoMetrics : LiveWorkoutConfiguration(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_videoMetrics;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

id LiveWorkoutConfiguration.topLevelHKWorkoutConfiguration.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for MultiSportWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    v2 = objc_allocWithZone(MEMORY[0x277CCDC38]);
    v12 = v1;
    v3 = [v2 init];
    [v3 setActivityType_];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v13 >> 62)
    {
LABEL_20:
      v4 = __CocoaSet.count.getter();
    }

    else
    {
      v4 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = 0;
    while (v4 != v5)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x20F2E7A20](v5);
      }

      else
      {
        if (v5 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v6 = *(v13 + 8 * v5 + 32);
      }

      v7 = v6;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v8 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
      swift_beginAccess();
      v9 = *&v7[v8];
      v10 = [v9 isIndoor];

      ++v5;
      if ((v10 & 1) == 0)
      {

        [v3 setLocationType_];
        goto LABEL_17;
      }
    }

    [v3 setLocationType_];
LABEL_17:

    return v3;
  }

  else
  {

    return LiveWorkoutConfiguration.hkWorkoutConfiguration.getter();
  }
}

id LiveWorkoutConfiguration.hkWorkoutConfiguration.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v69 - v8;
  MEMORY[0x28223BE20](v7);
  v72 = &v69 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v69 - v13;
  v15 = type metadata accessor for CatalogWorkout();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_suggestedHKWorkoutConfiguration;
  swift_beginAccess();
  v21 = *(v1 + v20);
  if (v21)
  {
    v22 = *(v1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
    type metadata accessor for MultiSportWorkoutConfiguration();
    if (swift_dynamicCastClass())
    {
      v71 = v19;
      v23 = v16;
      v24 = v15;
      v25 = v9;
      v26 = v21;
      v27 = [v26 activityType];
      v28 = LiveWorkoutConfiguration.currentActivityType.getter();
      v29 = [v28 effectiveTypeIdentifier];

      if (v27 == v29)
      {
        v9 = v25;
        v15 = v24;
        v16 = v23;
        v19 = v71;
        goto LABEL_7;
      }

      v9 = v25;
      v15 = v24;
      v16 = v23;
      v19 = v71;
    }
  }

  v26 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
  v30 = LiveWorkoutConfiguration.currentActivityType.getter();
  v31 = [v30 effectiveTypeIdentifier];

  [v26 setActivityType_];
LABEL_7:
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout, v14, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v14, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  }

  else
  {
    v70 = v9;
    v71 = v6;
    v32 = *(v16 + 32);
    v69 = v15;
    v32(v19, v14, v15);
    v33 = CatalogWorkout.mediaType.getter();
    v35 = v34;
    v74 = v33;
    v75 = v34;
    v37 = v36 & 1;
    v76 = v36 & 1;
    v73 = 0;
    lazy protocol witness table accessor for type CatalogMediaType and conformance CatalogMediaType();
    lazy protocol witness table accessor for type CatalogMediaType and conformance CatalogMediaType();
    v38 = static PortableEnum<>.== infix(_:_:)();
    outlined consume of PortableEnum<CatalogMediaType>(v33, v35, v37);
    if (v38)
    {
      goto LABEL_28;
    }

    v39 = CatalogWorkout.mediaType.getter();
    v41 = v40;
    v74 = v39;
    v75 = v40;
    v43 = v42 & 1;
    v76 = v42 & 1;
    v73 = 1;
    v44 = static PortableEnum<>.== infix(_:_:)();
    outlined consume of PortableEnum<CatalogMediaType>(v39, v41, v43);
    if (v44)
    {
LABEL_28:
      v45 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSessionUUID;
      swift_beginAccess();
      v46 = v72;
      _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v1 + v45, v72, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v47 = type metadata accessor for UUID();
      LODWORD(v45) = (*(*(v47 - 8) + 48))(v46, 1, v47);
      _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v46, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (v45 == 1)
      {
        v48 = v26;
        [v48 setLocationType_];
        [v48 setShouldDisambiguateLocation_];
        v49 = CatalogWorkout.identifier.getter();
        v50 = MEMORY[0x20F2E6C00](v49);

        [v48 setFitnessPlusCatalogWorkoutId_];

        (*(v16 + 8))(v19, v69);
        v9 = v70;
        v6 = v71;
        goto LABEL_18;
      }
    }

    (*(v16 + 8))(v19, v69);
    v9 = v70;
    v6 = v71;
  }

  v51 = LiveWorkoutConfiguration.currentActivityType.getter();
  v52 = [v51 isIndoor];

  if (v52)
  {
    v53 = 2;
  }

  else
  {
    v53 = 3;
  }

  [v26 setLocationType_];
  v54 = v26;
LABEL_18:
  v55 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSessionUUID;
  swift_beginAccess();
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v1 + v55, v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v56 = type metadata accessor for UUID();
  v57 = *(v56 - 8);
  v58 = *(v57 + 48);
  isa = 0;
  if (v58(v9, 1, v56) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v57 + 8))(v9, v56);
  }

  [v26 setFitnessMachineSessionUUID_];

  v60 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_predictionSessionUUID;
  swift_beginAccess();
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v1 + v60, v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v61 = 0;
  if (v58(v6, 1, v56) != 1)
  {
    v61 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v57 + 8))(v6, v56);
  }

  [v26 setPredictionSessionUUID_];

  [v26 setShouldUseExtendedMode_];
  v62 = LiveWorkoutConfiguration.currentActivityType.getter();
  v63 = [v62 identifier];

  if (v63 == 46)
  {
    v64 = LiveWorkoutConfiguration.currentActivityType.getter();
    v65 = [v64 swimmingLocationType];

    [v26 setSwimmingLocationType_];
    v66 = LiveWorkoutConfiguration.currentActivityType.getter();
    v67 = [v66 lapLength];

    if (v67)
    {
      [v26 setLapLength_];
    }
  }

  return v26;
}

uint64_t LiveWorkoutConfiguration.isLowPowerMode.getter()
{
  v1 = [objc_opt_self() processInfo];
  v2 = [v1 isLowPowerModeEnabled];

  if (v2)
  {
    return 1;
  }

  else
  {
    return [*(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_domainAccessor) isPowerSavingModeEnabled];
  }
}

unint64_t LiveWorkoutConfiguration.hkWorkoutConfigurationMetadata.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for MultiSportWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20B423A90;
    *(inited + 32) = 0xD000000000000015;
    v3 = inited + 32;
    *(inited + 40) = 0x800000020B458830;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *(inited + 72) = MEMORY[0x277D83B88];
    *(inited + 48) = v9;
    goto LABEL_3;
  }

  type metadata accessor for IntervalWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v10)
    {
      return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20B423A90;
    *(inited + 32) = 0xD000000000000015;
    v3 = inited + 32;
    *(inited + 40) = 0x800000020B45D360;
    v7 = IntervalWorkoutKeyPath.serializedString.getter();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v7;
    *(inited + 56) = v8;
LABEL_3:
    v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v3, &_sSS_yptMd, &_sSS_yptMR);
    return v4;
  }

  v6 = MEMORY[0x277D84F90];

  return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v6);
}

uint64_t LiveWorkoutConfiguration.usePrecisionStart.getter()
{
  v1 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
  swift_beginAccess();
  return specialized static PrecisionStartChecker.usePrecisionStart(startSource:domainAccessor:)(*(v0 + v1), *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_domainAccessor)) & 1;
}

unint64_t @objc LiveWorkoutConfiguration.supportsTimeSplits.getter(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = LiveWorkoutConfiguration.currentActivityType.getter();
  v6 = [v5 *a3];

  if (v6)
  {
    v7 = *&v4[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration];
    type metadata accessor for IntervalWorkoutConfiguration();
    v6 = swift_dynamicCastClass() == 0;
  }

  return v6;
}

BOOL LiveWorkoutConfiguration.supportsTimeSplits.getter(SEL *a1)
{
  v3 = LiveWorkoutConfiguration.currentActivityType.getter();
  LODWORD(a1) = [v3 *a1];

  if (!a1)
  {
    return 0;
  }

  v4 = *(v1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for IntervalWorkoutConfiguration();
  return swift_dynamicCastClass() == 0;
}

BOOL LiveWorkoutConfiguration.isMirroredStart.getter()
{
  v1 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
  swift_beginAccess();
  return (*(v0 + v1) - 19) < 2;
}

uint64_t LiveWorkoutConfiguration.supportsMirroring.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v20[-v3];
  v5 = type metadata accessor for CatalogWorkout();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
  swift_beginAccess();
  if ((*(v0 + v10) - 19) < 2)
  {
    return 1;
  }

  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout, v4, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v4, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  }

  else
  {
    v12 = v0;
    (*(v6 + 32))(v9, v4, v5);
    v13 = CatalogWorkout.mediaType.getter();
    v15 = v14;
    v17 = v16;
    (*(v6 + 8))(v9, v5);
    if (v17)
    {
      return 0;
    }

    outlined consume of PortableEnum<CatalogMediaType>(v13, v15, 0);
    v0 = v12;
  }

  v18 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  if (specialized WorkoutConfiguration.shouldEnableUltraMode(domainAccessor:)())
  {
    return 0;
  }

  v19 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  if ([*(v18 + v19) supportsMirroredWorkouts])
  {
    return FIMirrorModeEnabled();
  }

  type metadata accessor for MultiSportWorkoutConfiguration();
  result = swift_dynamicCastClass();
  if (result)
  {
    return FIMirrorModeEnabled();
  }

  return result;
}

uint64_t LiveWorkoutConfiguration.supportsMirroringLogString.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v45[-v4];
  v6 = type metadata accessor for CatalogWorkout();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v45[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = 0;
  v47 = 0xE000000000000000;
  _StringGuts.grow(_:)(209);
  v48 = v46;
  v49 = v47;
  MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45E130);
  v11 = LiveWorkoutConfiguration.supportsMirroring.getter();
  v12 = (v11 & 1) == 0;
  if (v11)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v12)
  {
    v14 = 0xE500000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  MEMORY[0x20F2E6D80](v13, v14);

  MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45E150);
  v15 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
  swift_beginAccess();
  v16 = *(v1 + v15) - 19;
  if (v16 >= 2)
  {
    v17 = 0x65736C6166;
  }

  else
  {
    v17 = 1702195828;
  }

  if (v16 >= 2)
  {
    v18 = 0xE500000000000000;
  }

  else
  {
    v18 = 0xE400000000000000;
  }

  MEMORY[0x20F2E6D80](v17, v18);

  MEMORY[0x20F2E6D80](0xD000000000000026, 0x800000020B45E170);
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout, v5, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v5, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v19 = CatalogWorkout.mediaType.getter();
    v21 = v20;
    v23 = v22;
    (*(v7 + 8))(v10, v6);
    if (v23)
    {
      v24 = 0xE500000000000000;
      v25 = 0x65736C6166;
      goto LABEL_19;
    }

    outlined consume of PortableEnum<CatalogMediaType>(v19, v21, 0);
  }

  v24 = 0xE400000000000000;
  v25 = 1702195828;
LABEL_19:
  MEMORY[0x20F2E6D80](v25, v24);

  MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45E1A0);
  v26 = *(v1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  v27 = specialized WorkoutConfiguration.shouldEnableUltraMode(domainAccessor:)();
  v28 = (v27 & 1) == 0;
  if (v27)
  {
    v29 = 0x65736C6166;
  }

  else
  {
    v29 = 1702195828;
  }

  if (v28)
  {
    v30 = 0xE400000000000000;
  }

  else
  {
    v30 = 0xE500000000000000;
  }

  MEMORY[0x20F2E6D80](v29, v30);

  MEMORY[0x20F2E6D80](0xD000000000000035, 0x800000020B45E1C0);
  v31 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v32 = [*(v26 + v31) supportsMirroredWorkouts];
  v33 = v32 == 0;
  if (v32)
  {
    v34 = 1702195828;
  }

  else
  {
    v34 = 0x65736C6166;
  }

  if (v33)
  {
    v35 = 0xE500000000000000;
  }

  else
  {
    v35 = 0xE400000000000000;
  }

  MEMORY[0x20F2E6D80](v34, v35);

  MEMORY[0x20F2E6D80](0xD000000000000012, 0x800000020B45E200);
  type metadata accessor for MultiSportWorkoutConfiguration();
  v36 = swift_dynamicCastClass();
  v37 = v36 == 0;
  if (v36)
  {
    v38 = 1702195828;
  }

  else
  {
    v38 = 0x65736C6166;
  }

  if (v37)
  {
    v39 = 0xE500000000000000;
  }

  else
  {
    v39 = 0xE400000000000000;
  }

  MEMORY[0x20F2E6D80](v38, v39);

  MEMORY[0x20F2E6D80](0xD00000000000001BLL, 0x800000020B45E220);
  v40 = FIMirrorModeEnabled();
  v41 = v40 == 0;
  if (v40)
  {
    v42 = 1702195828;
  }

  else
  {
    v42 = 0x65736C6166;
  }

  if (v41)
  {
    v43 = 0xE500000000000000;
  }

  else
  {
    v43 = 0xE400000000000000;
  }

  MEMORY[0x20F2E6D80](v42, v43);

  MEMORY[0x20F2E6D80](10537, 0xE200000000000000);
  return v48;
}

uint64_t LiveWorkoutConfiguration.supportsMirroredCatalogWorkouts.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for CatalogWorkout();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout, v4, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v4, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    v10 = CatalogWorkout.mediaType.getter();
    v12 = v11;
    v14 = v13;
    (*(v6 + 8))(v9, v5);
    if (v14)
    {
      return 0;
    }

    outlined consume of PortableEnum<CatalogMediaType>(v10, v12, 0);
  }

  return 1;
}

uint64_t LiveWorkoutConfiguration.supportsWorkoutVoiceMotivation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - v3;
  v5 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for RaceWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    return 0;
  }

  type metadata accessor for PacerWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    return 0;
  }

  type metadata accessor for IntervalWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    return 0;
  }

  type metadata accessor for MultiSportWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    return 0;
  }

  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout, v4, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  v6 = type metadata accessor for CatalogWorkout();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6);
  _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v4, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  if (v7 != 1)
  {
    return 0;
  }

  v8 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
  swift_beginAccess();
  result = NLWorkoutStartSourceSupportsWorkoutVoiceMotivation(*(v0 + v8));
  if (result)
  {
    v10 = LiveWorkoutConfiguration.currentActivityType.getter();
    v11 = [v10 workoutActivityType];

    v12 = [v11 supportsWorkoutVoiceMotivation];
    return v12;
  }

  return result;
}

Swift::Bool __swiftcall LiveWorkoutConfiguration.configureWithWorkoutVoiceMotivation(shouldLog:)(Swift::Bool shouldLog)
{
  v2 = v1;
  swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v46 - v6 + 16;
  if ([objc_opt_self() isRunningInStoreDemoMode])
  {
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
      v47[0] = v12;
      *v11 = 136315138;
      v13 = _typeName(_:qualified:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v47);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_20AEA4000, v9, v10, "%s: configureWithWorkoutVoiceMotivation returning false due to in store demo mode", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_7(v12);
      MEMORY[0x20F2E9420](v12, -1, -1);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    goto LABEL_24;
  }

  v16 = type metadata accessor for FitnessIntelligenceFeatures();
  v47[3] = v16;
  v47[4] = lazy protocol witness table accessor for type FitnessIntelligenceFeatures and conformance FitnessIntelligenceFeatures();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
  (*(*(v16 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D09F48], v16);
  v18 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm_7(v47);
  v19 = LiveWorkoutConfiguration.currentActivityType.getter();
  v20 = [v19 workoutActivityType];

  v21 = FIIsWorkoutVoiceEnabledForActivityType();
  v22 = *&v2[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration];
  type metadata accessor for RaceWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    goto LABEL_15;
  }

  type metadata accessor for PacerWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    goto LABEL_15;
  }

  type metadata accessor for IntervalWorkoutConfiguration();
  if (swift_dynamicCastClass() || (type metadata accessor for MultiSportWorkoutConfiguration(), swift_dynamicCastClass()) || (_s11SeymourCore14CatalogWorkoutVSgWOcTm_0(&v2[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout], v7, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR), v23 = type metadata accessor for CatalogWorkout(), v24 = (*(*(v23 - 8) + 48))(v7, 1, v23), _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v7, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR), v24 != 1) || (v25 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource, swift_beginAccess(), !NLWorkoutStartSourceSupportsWorkoutVoiceMotivation(*&v2[v25])))
  {
LABEL_15:
    v28 = 0;
    v29 = 0;
    if (!shouldLog)
    {
      return v29 & 1;
    }

    goto LABEL_16;
  }

  v26 = LiveWorkoutConfiguration.currentActivityType.getter();
  v27 = [v26 workoutActivityType];

  v28 = [v27 supportsWorkoutVoiceMotivation];
  if (shouldLog)
  {
LABEL_16:
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static WOLog.workoutVoice);
    v31 = v2;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      HIDWORD(v45) = v21;
      v36 = v18;
      v37 = v35;
      v46[0] = v35;
      *v34 = 136316418;
      v38 = _typeName(_:qualified:)();
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v46);

      *(v34 + 4) = v40;
      *(v34 + 12) = 1024;
      *(v34 + 14) = v36 & 1;
      *(v34 + 18) = 1024;
      *(v34 + 20) = v28;
      *(v34 + 24) = 1024;
      *(v34 + 26) = HIDWORD(v45);
      *(v34 + 30) = 1024;
      LODWORD(v40) = v31[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureSupported];

      *(v34 + 32) = v40;
      *(v34 + 36) = 1024;
      v41 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureNoLongerAvailable;
      swift_beginAccess();
      LODWORD(v41) = v31[v41];

      *(v34 + 38) = v41;
      _os_log_impl(&dword_20AEA4000, v32, v33, "%s: configureWithWorkoutVoiceMotivation isFeatureEnabled:%{BOOL}d, supportsWorkoutVoiceMotivation: %{BOOL}d, activityTypeIsEnabled:%{BOOL}d, isFeatureSupported: %{BOOL}d, isWorkoutBuddyFeatureNoLongerAvailable: %{BOOL}d", v34, 0x2Au);
      __swift_destroy_boxed_opaque_existential_1Tm_7(v37);
      v42 = v37;
      v18 = v36;
      v21 = HIDWORD(v45);
      MEMORY[0x20F2E9420](v42, -1, -1);
      MEMORY[0x20F2E9420](v34, -1, -1);
    }

    else
    {
    }
  }

  if ((v18 & v28 & v21 & 1) == 0 || v2[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureSupported] != 1)
  {
LABEL_24:
    v29 = 0;
    return v29 & 1;
  }

  v43 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureNoLongerAvailable;
  swift_beginAccess();
  v29 = v2[v43] ^ 1;
  return v29 & 1;
}

id LiveWorkoutConfiguration.supportsCustomRouteAlerts.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for RaceWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    return 0;
  }

  v3 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  return [*(v1 + v3) supportsCustomRouteAlerts];
}

uint64_t LiveWorkoutConfiguration.canDisplayBlockRepeatIndicator.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for IntervalWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    v2 = LiveWorkoutConfiguration.currentActivityType.getter();
    if ([v2 isPoolSwimming])
    {

      v3 = 1;
    }

    else
    {
      v5[3] = &type metadata for WorkoutFeatures;
      v5[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
      LOBYTE(v5[0]) = 9;
      v3 = isFeatureEnabled(_:)();

      __swift_destroy_boxed_opaque_existential_1Tm_7(v5);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t LiveWorkoutConfiguration.canDisplayTrackLaneIndicator.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for IntervalWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    v2 = LiveWorkoutConfiguration.currentActivityType.getter();
    if ([v2 isPoolSwimming])
    {

      v3 = 0;
    }

    else
    {
      v6[3] = &type metadata for WorkoutFeatures;
      v6[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
      LOBYTE(v6[0]) = 9;
      v4 = isFeatureEnabled(_:)();

      __swift_destroy_boxed_opaque_existential_1Tm_7(v6);
      v3 = v4 ^ 1;
    }
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

void LiveWorkoutConfiguration.currentIntervalBlockRepeatCount.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for IntervalWorkoutConfiguration();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_15;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  static Published.subscript.getter();

  if (v12 != 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((v9 & 0x8000000000000000) == 0 && (v10 & 0x8000000000000000) == 0 && (v11 & 0x8000000000000000) == 0)
    {
      v5 = IntervalWorkout.blocks.getter();
      v6 = v5 >> 62 ? __CocoaSet.count.getter() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v9 < v6)
      {
        v7 = IntervalWorkout.blocks.getter();
        if ((v7 & 0xC000000000000001) != 0)
        {
          MEMORY[0x20F2E7A20](v9, v7);
          goto LABEL_12;
        }

        if (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v8 = *(v7 + 8 * v9 + 32);

LABEL_12:

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          if (v9 != 1)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter();

            *a1 = v10;
            *(a1 + 8) = v9;
            *(a1 + 16) = 0;
            return;
          }

          goto LABEL_14;
        }

        __break(1u);
      }
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

LABEL_14:

LABEL_15:
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t LiveWorkoutConfiguration.startTrackingWhenMetricsDisplay.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16[-v7];
  v9 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSessionUUID;
  swift_beginAccess();
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v0 + v9, v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = type metadata accessor for UUID();
  LODWORD(v9) = (*(*(v10 - 8) + 48))(v8, 1, v10);
  _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v9 == 1 && (_s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout, v4, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR), v11 = type metadata accessor for CatalogWorkout(), v12 = (*(*(v11 - 8) + 48))(v4, 1, v11), _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v4, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR), v12 == 1))
  {
    v13 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
    swift_beginAccess();
    v14 = specialized static PrecisionStartChecker.usePrecisionStart(startSource:domainAccessor:)(*(v0 + v13), *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_domainAccessor)) ^ 1;
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t LiveWorkoutConfiguration.shouldHideMetricsUntilFirstAlert.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for IntervalWorkoutConfiguration();
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
    swift_beginAccess();
    v4 = *(v0 + v3);
    if (v4 == 10 || (specialized static PrecisionStartChecker.usePrecisionStart(startSource:domainAccessor:)(v4, *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_domainAccessor)) & 1) != 0)
    {
      return 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (one-time initialization token for InitialState == -1)
    {
      if (v10)
      {
        return 0;
      }
    }

    else
    {
      swift_once();
      if (v10)
      {
        return 0;
      }
    }

    return v7 == static IntervalWorkoutKeyPath.InitialState && v8 == *(&static IntervalWorkoutKeyPath.InitialState + 1) && v9 == qword_27C729E28;
  }

  return result;
}

uint64_t LiveWorkoutConfiguration.safetyCheckInWillDismissCounter.getter()
{
  v1 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_safetyCheckInWillDismissCounter;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t LiveWorkoutConfiguration.safetyCheckInWillDismissCounter.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_safetyCheckInWillDismissCounter;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id LiveWorkoutConfiguration.__allocating_init(configuration:startSource:activityMoveMode:activityPausedRingsObserver:catalogWorkout:isWorkoutBuddyFeatureSupported:domainAccessor:hostPlatform:)(char *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v78 = a8;
  v79 = a6;
  v82 = a5;
  v83 = a7;
  v80 = a1;
  v81 = a4;
  v76 = a2;
  v77 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v68 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v69 = &v64 - v13;
  v14 = type metadata accessor for UUID();
  v85 = *(v14 - 8);
  v15 = *(v85 + 64);
  MEMORY[0x28223BE20](v14);
  v67 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v74 = *(v75 - 8);
  v17 = *(v74 + 64);
  MEMORY[0x28223BE20](v75);
  v19 = &v64 - v18;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v72 = *(v73 - 8);
  v20 = *(v72 + 64);
  MEMORY[0x28223BE20](v73);
  v22 = &v64 - v21;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore08IntervalC7KeyPathVSgGMd, &_s7Combine9PublishedVy11WorkoutCore08IntervalC7KeyPathVSgGMR);
  v23 = *(v71 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v71);
  v26 = &v64 - v25;
  v84 = v8;
  v27 = objc_allocWithZone(v8);
  v27[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_mirroredStartInterrupted] = 0;
  v28 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityBeginDate;
  v29 = type metadata accessor for Date();
  v30 = *(*(v29 - 8) + 56);
  v30(&v27[v28], 1, 1, v29);
  v30(&v27[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_dateUserRequestedToStartWorkout], 1, 1, v29);
  v31 = v85 + 56;
  v32 = *(v85 + 56);
  v32(&v27[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSessionUUID], 1, 1, v14);
  *&v27[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSeymourStartSource] = 0;
  v33 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_predictionSessionUUID;
  v70 = v14;
  v66 = v31;
  v65 = v32;
  v32(&v27[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_predictionSessionUUID], 1, 1, v14);
  *&v27[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_suggestedHKWorkoutConfiguration] = 0;
  v27[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_requiresGoalConfiguration] = 0;
  v34 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__currentIntervalWorkoutKeyPath;
  if (one-time initialization token for InitialState != -1)
  {
    swift_once();
  }

  v87 = static IntervalWorkoutKeyPath.InitialState;
  v88 = qword_27C729E28;
  v89 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore08IntervalA7KeyPathVSgMd, &_s11WorkoutCore08IntervalA7KeyPathVSgMR);
  Published.init(initialValue:)();
  (*(v23 + 32))(&v27[v34], v26, v71);
  v35 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__currentMultiSportLeg;
  *&v87 = 0;
  Published.init(initialValue:)();
  (*(v72 + 32))(&v27[v35], v22, v73);
  v27[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyMuted] = 0;
  v27[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureNoLongerAvailable] = 0;
  v27[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyUnavailableDueToHeadphonesOff] = 0;
  *&v27[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_videoMetrics] = 0;
  *&v27[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_safetyCheckInWillDismissCounter] = 0;
  v36 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__devicesSupportHeartRate;
  LOBYTE(v87) = 0;
  Published.init(initialValue:)();
  v37 = *(v74 + 32);
  v38 = v75;
  v37(&v27[v36], v19, v75);
  v39 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__devicesSupportPedometer;
  LOBYTE(v87) = 0;
  Published.init(initialValue:)();
  v37(&v27[v39], v19, v38);
  v41 = v80;
  v40 = v81;
  *&v27[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration] = v80;
  *&v27[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource] = v76;
  v27[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_hostPlatform] = v78 & 1;
  *&v27[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityMoveMode] = v77;
  *&v27[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityPausedRingsObserver] = v40;
  v42 = v82;
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v82, &v27[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout], &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  *&v27[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_domainAccessor] = v83;
  v27[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureSupported] = v79 & 1;
  v43 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v44 = *&v41[v43];
  v45 = v41;
  v46 = v40;
  swift_unknownObjectRetain();
  v47 = [v44 metadata];
  v48 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v49 = *MEMORY[0x277D0A700];
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v48 + 16))
  {

    goto LABEL_9;
  }

  v81 = v33;
  v52 = specialized __RawDictionaryStorage.find<A>(_:)(v50, v51);
  v54 = v53;

  if ((v54 & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  outlined init with copy of Any(*(v48 + 56) + 32 * v52, &v87);

  if (swift_dynamicCast())
  {
    v55 = v69;
    UUID.init(uuidString:)();

    v56 = v85;
    v57 = v70;
    if ((*(v85 + 48))(v55, 1, v70) == 1)
    {
      _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v55, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    else
    {
      v60 = *(v56 + 32);
      v61 = v67;
      v60(v67, v55, v57);
      v62 = v68;
      v60(v68, v61, v57);
      v65(v62, 0, 1, v57);
      v63 = v81;
      swift_beginAccess();
      _s10Foundation4DateVSgWOdTm_0(v62, v63 + v27, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      swift_endAccess();
    }
  }

LABEL_10:
  v86.receiver = v27;
  v86.super_class = v84;
  v58 = objc_msgSendSuper2(&v86, sel_init);

  swift_unknownObjectRelease();
  _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v42, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  return v58;
}

id LiveWorkoutConfiguration.init(configuration:startSource:activityMoveMode:activityPausedRingsObserver:catalogWorkout:isWorkoutBuddyFeatureSupported:domainAccessor:hostPlatform:)(char *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v9 = v8;
  v79 = a8;
  v80 = a6;
  v83 = a5;
  v84 = a7;
  v81 = a1;
  v82 = a4;
  v77 = a2;
  v78 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v69 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v70 = &v64 - v14;
  v15 = type metadata accessor for UUID();
  v85 = *(v15 - 8);
  v16 = *(v85 + 64);
  MEMORY[0x28223BE20](v15);
  v68 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v75 = *(v76 - 8);
  v18 = *(v75 + 64);
  MEMORY[0x28223BE20](v76);
  v20 = &v64 - v19;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v73 = *(v74 - 8);
  v21 = *(v73 + 64);
  MEMORY[0x28223BE20](v74);
  v23 = &v64 - v22;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore08IntervalC7KeyPathVSgGMd, &_s7Combine9PublishedVy11WorkoutCore08IntervalC7KeyPathVSgGMR);
  v24 = *(v72 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v72);
  v27 = &v64 - v26;
  v8[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_mirroredStartInterrupted] = 0;
  v28 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityBeginDate;
  v29 = type metadata accessor for Date();
  v30 = *(*(v29 - 8) + 56);
  v30(&v9[v28], 1, 1, v29);
  v30(&v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_dateUserRequestedToStartWorkout], 1, 1, v29);
  v31 = v85 + 56;
  v32 = *(v85 + 56);
  v32(&v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSessionUUID], 1, 1, v15);
  *&v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSeymourStartSource] = 0;
  v67 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_predictionSessionUUID;
  v71 = v15;
  v66 = v31;
  v65 = v32;
  v32(&v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_predictionSessionUUID], 1, 1, v15);
  *&v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_suggestedHKWorkoutConfiguration] = 0;
  v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_requiresGoalConfiguration] = 0;
  v33 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__currentIntervalWorkoutKeyPath;
  if (one-time initialization token for InitialState != -1)
  {
    swift_once();
  }

  v87 = static IntervalWorkoutKeyPath.InitialState;
  v88 = qword_27C729E28;
  v89 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore08IntervalA7KeyPathVSgMd, &_s11WorkoutCore08IntervalA7KeyPathVSgMR);
  Published.init(initialValue:)();
  (*(v24 + 32))(&v9[v33], v27, v72);
  v34 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__currentMultiSportLeg;
  *&v87 = 0;
  Published.init(initialValue:)();
  (*(v73 + 32))(&v9[v34], v23, v74);
  v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyMuted] = 0;
  v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureNoLongerAvailable] = 0;
  v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyUnavailableDueToHeadphonesOff] = 0;
  *&v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_videoMetrics] = 0;
  *&v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_safetyCheckInWillDismissCounter] = 0;
  v35 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__devicesSupportHeartRate;
  LOBYTE(v87) = 0;
  Published.init(initialValue:)();
  v36 = *(v75 + 32);
  v37 = v76;
  v36(&v9[v35], v20, v76);
  v38 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__devicesSupportPedometer;
  LOBYTE(v87) = 0;
  Published.init(initialValue:)();
  v36(&v9[v38], v20, v37);
  v40 = v81;
  v39 = v82;
  *&v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration] = v81;
  *&v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource] = v77;
  v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_hostPlatform] = v79 & 1;
  *&v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityMoveMode] = v78;
  *&v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityPausedRingsObserver] = v39;
  v41 = v83;
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v83, &v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout], &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  *&v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_domainAccessor] = v84;
  v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureSupported] = v80 & 1;
  v42 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v43 = *&v40[v42];
  v44 = v40;
  v45 = v39;
  swift_unknownObjectRetain();
  v46 = [v43 metadata];
  v47 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v48 = *MEMORY[0x277D0A700];
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v47 + 16))
  {

    goto LABEL_9;
  }

  v51 = specialized __RawDictionaryStorage.find<A>(_:)(v49, v50);
  v53 = v52;

  if ((v53 & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  outlined init with copy of Any(*(v47 + 56) + 32 * v51, &v87);

  if (swift_dynamicCast())
  {
    v54 = v70;
    UUID.init(uuidString:)();

    v55 = v85;
    v56 = v71;
    if ((*(v85 + 48))(v54, 1, v71) == 1)
    {
      _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v54, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    else
    {
      v60 = *(v55 + 32);
      v61 = v68;
      v60(v68, v54, v56);
      v62 = v69;
      v60(v69, v61, v56);
      v65(v62, 0, 1, v56);
      v63 = v67;
      swift_beginAccess();
      _s10Foundation4DateVSgWOdTm_0(v62, &v9[v63], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      swift_endAccess();
    }
  }

LABEL_10:
  v57 = type metadata accessor for LiveWorkoutConfiguration();
  v86.receiver = v9;
  v86.super_class = v57;
  v58 = objc_msgSendSuper2(&v86, sel_init);

  swift_unknownObjectRelease();
  _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v41, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  return v58;
}

id LiveWorkoutConfiguration.__allocating_init(configuration:startSource:activityBeginDate:activityPausedRingsObserver:catalogWorkout:isWorkoutBuddyFeatureSupported:)(char *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6)
{
  v85 = a6;
  v88 = a4;
  v90 = a3;
  v84 = a2;
  v87 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v76 = v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v77 = v74 - v11;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v75 = v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v82 = *(v83 - 8);
  v16 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v18 = v74 - v17;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v79 = *(v81 - 8);
  v19 = *(v79 + 64);
  MEMORY[0x28223BE20](v81);
  v21 = v74 - v20;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore08IntervalC7KeyPathVSgGMd, &_s7Combine9PublishedVy11WorkoutCore08IntervalC7KeyPathVSgGMR);
  v22 = *(v78 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v78);
  v25 = v74 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = v74 - v28;
  v80 = FIActivityMoveModeUserDefault();
  v89 = a5;
  v91 = v29;
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(a5, v29, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v92 = v13;
  v93 = v12;
  if (one-time initialization token for npsDomainAccessor != -1)
  {
    swift_once();
  }

  v30 = static WorkoutCoreInjector.npsDomainAccessor;
  v86 = type metadata accessor for LiveWorkoutConfiguration();
  v31 = objc_allocWithZone(v86);
  v31[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_mirroredStartInterrupted] = 0;
  v32 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityBeginDate;
  v33 = type metadata accessor for Date();
  v34 = *(*(v33 - 8) + 56);
  v34(&v31[v32], 1, 1, v33);
  v34(&v31[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_dateUserRequestedToStartWorkout], 1, 1, v33);
  v35 = v93;
  v36 = v92 + 56;
  v37 = *(v92 + 56);
  v37(&v31[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSessionUUID], 1, 1, v93);
  *&v31[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSeymourStartSource] = 0;
  v38 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_predictionSessionUUID;
  v74[1] = v36;
  v74[0] = v37;
  v37(&v31[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_predictionSessionUUID], 1, 1, v35);
  *&v31[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_suggestedHKWorkoutConfiguration] = 0;
  v31[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_requiresGoalConfiguration] = 0;
  v39 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__currentIntervalWorkoutKeyPath;
  v40 = one-time initialization token for InitialState;
  v41 = v30;
  if (v40 != -1)
  {
    swift_once();
  }

  v95 = static IntervalWorkoutKeyPath.InitialState;
  v96 = qword_27C729E28;
  v97 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore08IntervalA7KeyPathVSgMd, &_s11WorkoutCore08IntervalA7KeyPathVSgMR);
  Published.init(initialValue:)();
  (*(v22 + 32))(&v31[v39], v25, v78);
  v42 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__currentMultiSportLeg;
  *&v95 = 0;
  Published.init(initialValue:)();
  (*(v79 + 32))(&v31[v42], v21, v81);
  v31[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyMuted] = 0;
  v31[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureNoLongerAvailable] = 0;
  v31[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyUnavailableDueToHeadphonesOff] = 0;
  *&v31[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_videoMetrics] = 0;
  *&v31[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_safetyCheckInWillDismissCounter] = 0;
  v43 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__devicesSupportHeartRate;
  LOBYTE(v95) = 0;
  Published.init(initialValue:)();
  v44 = *(v82 + 32);
  v45 = v83;
  v44(&v31[v43], v18, v83);
  v46 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__devicesSupportPedometer;
  LOBYTE(v95) = 0;
  Published.init(initialValue:)();
  v44(&v31[v46], v18, v45);
  v47 = v87;
  v48 = v88;
  *&v31[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration] = v87;
  *&v31[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource] = v84;
  v31[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_hostPlatform] = 0;
  *&v31[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityMoveMode] = v80;
  *&v31[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityPausedRingsObserver] = v48;
  v49 = v91;
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v91, &v31[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout], &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  *&v31[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_domainAccessor] = v41;
  v31[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureSupported] = v85 & 1;
  v50 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v51 = *&v47[v50];
  v52 = v41;
  v53 = v47;
  v54 = v48;
  v55 = [v51 metadata];
  v56 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v57 = *MEMORY[0x277D0A700];
  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v56 + 16))
  {

    goto LABEL_14;
  }

  v88 = v38;
  v60 = specialized __RawDictionaryStorage.find<A>(_:)(v58, v59);
  v62 = v61;

  if ((v62 & 1) == 0)
  {
LABEL_14:

    goto LABEL_15;
  }

  outlined init with copy of Any(*(v56 + 56) + 32 * v60, &v95);

  if (swift_dynamicCast())
  {
    v63 = v77;
    UUID.init(uuidString:)();

    v65 = v92;
    v64 = v93;
    if ((*(v92 + 48))(v63, 1, v93) == 1)
    {
      _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v63, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    else
    {
      v70 = *(v65 + 32);
      v71 = v75;
      v70(v75, v63, v64);
      v72 = v76;
      v70(v76, v71, v64);
      (v74[0])(v72, 0, 1, v64);
      v73 = v88;
      swift_beginAccess();
      _s10Foundation4DateVSgWOdTm_0(v72, v73 + v31, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      swift_endAccess();
    }

    v49 = v91;
  }

LABEL_15:
  v94.receiver = v31;
  v94.super_class = v86;
  v66 = objc_msgSendSuper2(&v94, sel_init);

  _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v89, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v49, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  v67 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityBeginDate;
  swift_beginAccess();
  v68 = v66;
  _s10Foundation4DateVSgWOdTm_0(v90, v66 + v67, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_endAccess();

  return v68;
}

id LiveWorkoutConfiguration.__allocating_init(configuration:startSource:activityMoveMode:activityPausedRingsObserver:catalogWorkout:isWorkoutBuddyFeatureSupported:)(char *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, int a6)
{
  v7 = v6;
  v93 = a6;
  v95 = a4;
  v92 = a3;
  v91 = a2;
  v94 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v84 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v83 = &v80 - v13;
  v14 = type metadata accessor for UUID();
  v98 = *(v14 - 8);
  v99 = v14;
  v15 = *(v98 + 64);
  MEMORY[0x28223BE20](v14);
  v82 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v88 = *(v89 - 8);
  v17 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v19 = &v80 - v18;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v86 = *(v87 - 8);
  v20 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v22 = &v80 - v21;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore08IntervalC7KeyPathVSgGMd, &_s7Combine9PublishedVy11WorkoutCore08IntervalC7KeyPathVSgGMR);
  v23 = *(v85 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v85);
  v26 = &v80 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v80 - v29;
  v96 = objc_allocWithZone(v7);
  if (a5)
  {
    v31 = OBJC_IVAR___WOCoreCatalogWorkout_bridgedValue;
    v32 = type metadata accessor for CatalogWorkout();
    v33 = *(v32 - 8);
    (*(v33 + 16))(v30, a5 + v31, v32);
    (*(v33 + 56))(v30, 0, 1, v32);
  }

  else
  {
    v34 = type metadata accessor for CatalogWorkout();
    (*(*(v34 - 8) + 56))(v30, 1, 1, v34);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v100 = v30;
  v97 = a5;
  if (one-time initialization token for npsDomainAccessor != -1)
  {
    swift_once();
  }

  v35 = static WorkoutCoreInjector.npsDomainAccessor;
  v90 = type metadata accessor for LiveWorkoutConfiguration();
  v36 = objc_allocWithZone(v90);
  v36[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_mirroredStartInterrupted] = 0;
  v37 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityBeginDate;
  v38 = type metadata accessor for Date();
  v39 = *(*(v38 - 8) + 56);
  v39(&v36[v37], 1, 1, v38);
  v39(&v36[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_dateUserRequestedToStartWorkout], 1, 1, v38);
  v40 = v99;
  v41 = *(v98 + 56);
  v41(&v36[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSessionUUID], 1, 1, v99);
  *&v36[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSeymourStartSource] = 0;
  v81 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_predictionSessionUUID;
  v80 = v41;
  v41(&v36[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_predictionSessionUUID], 1, 1, v40);
  *&v36[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_suggestedHKWorkoutConfiguration] = 0;
  v36[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_requiresGoalConfiguration] = 0;
  v42 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__currentIntervalWorkoutKeyPath;
  v43 = one-time initialization token for InitialState;
  v44 = v35;
  if (v43 != -1)
  {
    swift_once();
  }

  v102 = static IntervalWorkoutKeyPath.InitialState;
  v103 = qword_27C729E28;
  v104 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore08IntervalA7KeyPathVSgMd, &_s11WorkoutCore08IntervalA7KeyPathVSgMR);
  Published.init(initialValue:)();
  (*(v23 + 32))(&v36[v42], v26, v85);
  v45 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__currentMultiSportLeg;
  *&v102 = 0;
  Published.init(initialValue:)();
  (*(v86 + 32))(&v36[v45], v22, v87);
  v36[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyMuted] = 0;
  v36[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureNoLongerAvailable] = 0;
  v36[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyUnavailableDueToHeadphonesOff] = 0;
  *&v36[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_videoMetrics] = 0;
  *&v36[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_safetyCheckInWillDismissCounter] = 0;
  v46 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__devicesSupportHeartRate;
  LOBYTE(v102) = 0;
  Published.init(initialValue:)();
  v47 = *(v88 + 32);
  v48 = v89;
  v47(&v36[v46], v19, v89);
  v49 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__devicesSupportPedometer;
  LOBYTE(v102) = 0;
  Published.init(initialValue:)();
  v47(&v36[v49], v19, v48);
  v50 = v94;
  v51 = v95;
  *&v36[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration] = v94;
  *&v36[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource] = v91;
  v36[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_hostPlatform] = 0;
  *&v36[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityMoveMode] = v92;
  *&v36[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityPausedRingsObserver] = v51;
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v100, &v36[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout], &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  *&v36[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_domainAccessor] = v44;
  v36[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureSupported] = v93 & 1;
  v52 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v53 = *&v50[v52];
  v54 = v44;
  v55 = v50;
  v56 = v51;
  v57 = [v53 metadata];
  v58 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v59 = *MEMORY[0x277D0A700];
  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v58 + 16))
  {

    goto LABEL_17;
  }

  v62 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v61);
  v64 = v63;

  if ((v64 & 1) == 0)
  {
LABEL_17:

    v70 = v100;
    v69 = v97;
    goto LABEL_18;
  }

  outlined init with copy of Any(*(v58 + 56) + 32 * v62, &v102);

  if (swift_dynamicCast())
  {
    v65 = v83;
    UUID.init(uuidString:)();

    v67 = v98;
    v66 = v99;
    v68 = (*(v98 + 48))(v65, 1, v99);
    v69 = v97;
    if (v68 == 1)
    {
      _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v65, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    else
    {
      v76 = *(v67 + 32);
      v77 = v82;
      v76(v82, v65, v66);
      v76(v84, v77, v66);
      v78 = v84;
      v80(v84, 0, 1, v66);
      v79 = v81;
      swift_beginAccess();
      _s10Foundation4DateVSgWOdTm_0(v78, &v36[v79], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      swift_endAccess();
    }

    v70 = v100;
  }

  else
  {
    v69 = v97;
    v70 = v100;
  }

LABEL_18:
  v101.receiver = v36;
  v101.super_class = v90;
  v71 = objc_msgSendSuper2(&v101, sel_init);

  _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v70, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  v72 = v96;
  swift_getObjectType();
  v73 = *((*MEMORY[0x277D85000] & *v72) + 0x30);
  v74 = *((*MEMORY[0x277D85000] & *v72) + 0x34);
  swift_deallocPartialClassInstance();
  return v71;
}

id LiveWorkoutConfiguration.init(configuration:startSource:activityMoveMode:activityPausedRingsObserver:catalogWorkout:isWorkoutBuddyFeatureSupported:)(char *a1, uint64_t a2, uint64_t a3, void *a4, char *a5, int a6)
{
  v89 = a6;
  v91 = a4;
  v88 = a3;
  v87 = a2;
  v90 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v79 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v80 = &v76 - v11;
  v12 = type metadata accessor for UUID();
  v94 = *(v12 - 8);
  v95 = v12;
  v13 = *(v94 + 64);
  MEMORY[0x28223BE20](v12);
  v78 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v84 = *(v85 - 8);
  v15 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v17 = &v76 - v16;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v82 = *(v83 - 8);
  v18 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v20 = &v76 - v19;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore08IntervalC7KeyPathVSgGMd, &_s7Combine9PublishedVy11WorkoutCore08IntervalC7KeyPathVSgGMR);
  v21 = *(v81 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v81);
  v24 = &v76 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v76 - v27;
  if (a5)
  {
    v29 = OBJC_IVAR___WOCoreCatalogWorkout_bridgedValue;
    v30 = type metadata accessor for CatalogWorkout();
    v31 = *(v30 - 8);
    (*(v31 + 16))(v28, &a5[v29], v30);
    (*(v31 + 56))(v28, 0, 1, v30);
  }

  else
  {
    v32 = type metadata accessor for CatalogWorkout();
    (*(*(v32 - 8) + 56))(v28, 1, 1, v32);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v96 = v28;
  v92 = a5;
  if (one-time initialization token for npsDomainAccessor != -1)
  {
    swift_once();
  }

  v33 = static WorkoutCoreInjector.npsDomainAccessor;
  v86 = type metadata accessor for LiveWorkoutConfiguration();
  v34 = objc_allocWithZone(v86);
  v34[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_mirroredStartInterrupted] = 0;
  v35 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityBeginDate;
  v36 = type metadata accessor for Date();
  v37 = *(*(v36 - 8) + 56);
  v37(&v34[v35], 1, 1, v36);
  v37(&v34[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_dateUserRequestedToStartWorkout], 1, 1, v36);
  v38 = v95;
  v39 = *(v94 + 56);
  v39(&v34[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSessionUUID], 1, 1, v95);
  *&v34[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSeymourStartSource] = 0;
  v77 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_predictionSessionUUID;
  v76 = v39;
  v39(&v34[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_predictionSessionUUID], 1, 1, v38);
  *&v34[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_suggestedHKWorkoutConfiguration] = 0;
  v34[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_requiresGoalConfiguration] = 0;
  v40 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__currentIntervalWorkoutKeyPath;
  v41 = one-time initialization token for InitialState;
  v42 = v33;
  if (v41 != -1)
  {
    swift_once();
  }

  v98 = static IntervalWorkoutKeyPath.InitialState;
  v99 = qword_27C729E28;
  v100 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore08IntervalA7KeyPathVSgMd, &_s11WorkoutCore08IntervalA7KeyPathVSgMR);
  Published.init(initialValue:)();
  (*(v21 + 32))(&v34[v40], v24, v81);
  v43 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__currentMultiSportLeg;
  *&v98 = 0;
  Published.init(initialValue:)();
  (*(v82 + 32))(&v34[v43], v20, v83);
  v34[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyMuted] = 0;
  v34[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureNoLongerAvailable] = 0;
  v34[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyUnavailableDueToHeadphonesOff] = 0;
  *&v34[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_videoMetrics] = 0;
  *&v34[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_safetyCheckInWillDismissCounter] = 0;
  v44 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__devicesSupportHeartRate;
  LOBYTE(v98) = 0;
  Published.init(initialValue:)();
  v45 = *(v84 + 32);
  v46 = v85;
  v45(&v34[v44], v17, v85);
  v47 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__devicesSupportPedometer;
  LOBYTE(v98) = 0;
  Published.init(initialValue:)();
  v45(&v34[v47], v17, v46);
  v48 = v90;
  v49 = v91;
  *&v34[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration] = v90;
  *&v34[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource] = v87;
  v34[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_hostPlatform] = 0;
  *&v34[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityMoveMode] = v88;
  *&v34[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityPausedRingsObserver] = v49;
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v96, &v34[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout], &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  *&v34[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_domainAccessor] = v42;
  v34[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureSupported] = v89 & 1;
  v50 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v51 = *&v48[v50];
  v52 = v42;
  v53 = v48;
  v54 = v49;
  v55 = [v51 metadata];
  v56 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v57 = *MEMORY[0x277D0A700];
  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v56 + 16))
  {

    goto LABEL_16;
  }

  v60 = specialized __RawDictionaryStorage.find<A>(_:)(v58, v59);
  v62 = v61;

  if ((v62 & 1) == 0)
  {
LABEL_16:

    goto LABEL_17;
  }

  outlined init with copy of Any(*(v56 + 56) + 32 * v60, &v98);

  if (swift_dynamicCast())
  {
    v63 = v80;
    UUID.init(uuidString:)();

    v65 = v94;
    v64 = v95;
    if ((*(v94 + 48))(v63, 1, v95) == 1)
    {
      _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v63, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    else
    {
      v72 = *(v65 + 32);
      v73 = v78;
      v72(v78, v63, v64);
      v74 = v79;
      v72(v79, v73, v64);
      v76(v74, 0, 1, v64);
      v75 = v77;
      swift_beginAccess();
      _s10Foundation4DateVSgWOdTm_0(v74, &v34[v75], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      swift_endAccess();
    }
  }

LABEL_17:
  v66 = v96;
  v97.receiver = v34;
  v97.super_class = v86;
  v67 = objc_msgSendSuper2(&v97, sel_init);

  _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v66, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  v68 = v93;
  swift_getObjectType();
  v69 = *((*MEMORY[0x277D85000] & *v68) + 0x30);
  v70 = *((*MEMORY[0x277D85000] & *v68) + 0x34);
  swift_deallocPartialClassInstance();
  return v67;
}