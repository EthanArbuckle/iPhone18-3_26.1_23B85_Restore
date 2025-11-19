uint64_t getEnumTagSinglePayload for RaceAlertsStore(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RaceAlertsStore(_WORD *result, int a2, int a3)
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

uint64_t lazy protocol witness table accessor for type RaceAlerts and conformance RaceAlerts(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RaceAlerts();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

double specialized static HKActivitySummary.fakeDouble(key:defaultValue:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = MEMORY[0x20F2E6C00](a1, a2);
  v8 = [v6 objectForKey_];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (*(&v14 + 1))
  {
    if (swift_dynamicCast())
    {
      *&v15[0] = 0;
      v9 = specialized String.withCString<A>(_:)(v11, v12);

      if (v9)
      {
        return *v15;
      }
    }
  }

  else
  {
    outlined destroy of Any?(v15);
  }

  return a3;
}

uint64_t specialized static HKActivitySummary.fake(activityMoveMode:)(char *a1)
{
  v70 = a1;
  v1 = type metadata accessor for Calendar.Identifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v65 - v8;
  v72 = type metadata accessor for DateComponents();
  v74 = *(v72 - 8);
  v10 = *(v74 + 64);
  v11 = MEMORY[0x28223BE20](v72);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v65 - v14;
  v71 = type metadata accessor for Date();
  v68 = *(v71 - 8);
  v16 = *(v68 + 64);
  v17 = MEMORY[0x28223BE20](v71);
  v66 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v65 = &v65 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v65 - v21;
  Date.init()();
  v23 = [objc_opt_self() calendarWithIdentifier_];
  if (v23)
  {
    v24 = v23;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v26 = [v24 hk:isa activitySummaryDateComponentsFromDate:?];
    v73 = v24;
    v27 = v26;

    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = DateComponents._bridgeToObjectiveC()().super.isa;
    v29 = _HKCacheIndexFromDateComponents();

    v30 = [objc_allocWithZone(MEMORY[0x277CCCFB0]) init];
    v69 = v15;
    v31 = DateComponents._bridgeToObjectiveC()().super.isa;
    [v30 _setGregorianDateComponents_];

    [v30 _setActivitySummaryIndex_];
    [v30 setActivityMoveMode_];
    (*(v2 + 104))(v5, *MEMORY[0x277CC9830], v1);
    Calendar.init(identifier:)();
    (*(v2 + 8))(v5, v1);
    v32 = type metadata accessor for Calendar();
    (*(*(v32 - 8) + 56))(v9, 0, 1, v32);
    v33 = [v30 _gregorianDateComponents];
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    DateComponents.calendar.setter();
    v34 = DateComponents._bridgeToObjectiveC()().super.isa;
    v35 = v74 + 8;
    v67 = *(v74 + 8);
    v67(v13, v72);
    [v30 _setGregorianDateComponents_];

    v70 = v22;
    v36 = Date._bridgeToObjectiveC()().super.isa;
    v37 = [v73 dateBySettingUnit:32 value:0 ofDate:v36 options:0];

    v38 = v35;
    if (v37)
    {
      v39 = v65;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = Date._bridgeToObjectiveC()().super.isa;
      v40 = v68;
      v41 = v71;
      (*(v68 + 8))(v39, v71);
    }

    else
    {
      v41 = v71;
      v40 = v68;
    }

    [v30 _setStartDate_];

    v42 = Date._bridgeToObjectiveC()().super.isa;
    v43 = [v73 dateBySettingUnit:32 value:23 ofDate:v42 options:0];

    v74 = v38;
    if (v43)
    {
      v44 = v66;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v43 = Date._bridgeToObjectiveC()().super.isa;
      (*(v40 + 8))(v44, v41);
    }

    [v30 _setEndDate_];

    v45 = objc_opt_self();
    v46 = [v45 largeCalorieUnit];
    v47 = specialized static HKActivitySummary.fakeDouble(key:defaultValue:)(0x676E695265766F6DLL, 0xE800000000000000, 500.0);
    v48 = objc_opt_self();
    v49 = [v48 quantityWithUnit:v46 doubleValue:v47];

    [v30 setActiveEnergyBurned_];
    v50 = [v45 largeCalorieUnit];
    v51 = [v48 quantityWithUnit:v50 doubleValue:{specialized static HKActivitySummary.fakeDouble(key:defaultValue:)(0x676E695265766F6DLL, 0xE800000000000000, 500.0)}];

    [v30 setActiveEnergyBurnedGoal_];
    v52 = [v45 minuteUnit];
    v53 = [v48 quantityWithUnit:v52 doubleValue:{specialized static HKActivitySummary.fakeDouble(key:defaultValue:)(0x656D695465766F6DLL, 0xEC000000676E6952, 100.0)}];

    [v30 setAppleMoveTime_];
    v54 = [v45 minuteUnit];
    v55 = [v48 quantityWithUnit:v54 doubleValue:{specialized static HKActivitySummary.fakeDouble(key:defaultValue:)(0xD000000000000010, 0x800000020B460F40, 100.0)}];

    [v30 setAppleMoveTimeGoal_];
    v56 = [v45 countUnit];
    v57 = [v48 quantityWithUnit:v56 doubleValue:{specialized static HKActivitySummary.fakeDouble(key:defaultValue:)(0x6E6952646E617473, 0xE900000000000067, 12.0)}];

    [v30 setAppleStandHours_];
    v58 = [v45 countUnit];
    v59 = [v48 quantityWithUnit:v58 doubleValue:12.0];

    [v30 setAppleStandHoursGoal_];
    v60 = [v45 minuteUnit];
    v61 = [v48 quantityWithUnit:v60 doubleValue:{specialized static HKActivitySummary.fakeDouble(key:defaultValue:)(0x6573696372657865, 0xEC000000676E6952, 30.0)}];

    [v30 setAppleExerciseTime_];
    v62 = [v45 minuteUnit];
    v63 = [v48 quantityWithUnit:v62 doubleValue:30.0];

    [v30 setAppleExerciseTimeGoal_];
    v67(v69, v72);
    (*(v40 + 8))(v70, v71);
    return v30;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

WorkoutCore::ActivityTypeKeyMigrator::MigrationVersion_optional __swiftcall ActivityTypeKeyMigrator.MigrationVersion.init(rawValue:)(Swift::Int rawValue)
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ActivityTypeKeyMigrator.MigrationVersion()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ActivityTypeKeyMigrator.MigrationVersion()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance ActivityTypeKeyMigrator.MigrationVersion@<X0>(void *result@<X0>, char *a2@<X8>)
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

BOOL ActivityTypeKeyMigrator.needsMigration.getter()
{
  v1 = *(v0 + 8);
  v2 = MEMORY[0x20F2E6C00](0xD00000000000001FLL, 0x800000020B460F60);
  v3 = [v1 integerForKey_];

  return v3 != 1;
}

void __swiftcall ActivityTypeKeyMigrator.init(migrationKeys:userDefaults:)(WorkoutCore::ActivityTypeKeyMigrator *__return_ptr retstr, Swift::OpaquePointer migrationKeys, NSUserDefaults userDefaults)
{
  isa = userDefaults.super.isa;

  retstr->migrationKeys = migrationKeys;
  retstr->userDefaults.super.isa = isa;
}

Swift::Void __swiftcall ActivityTypeKeyMigrator.migrateIfNeeded()()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = "moveTimeRingGoal";
  v4 = MEMORY[0x20F2E6C00](0xD00000000000001FLL, 0x800000020B460F60);
  v5 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
  v65 = v1;
  v6 = [v1 integerForKey_];

  if (v6 == 1)
  {
    if (one-time initialization token for migration == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_47;
  }

  v5 = *(v2 + 16);
  v64 = v2;
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21FIWorkoutActivityTypeCADGMd, &_ss18_DictionaryStorageCySo21FIWorkoutActivityTypeCADGMR);
    v13 = (v2 + 40);
    osloga = MEMORY[0x277D84F90];
    v3 = &selRef_updateZoneTrackerWithDistanceUnit_metadataSavingDelegate_;
    while (1)
    {
      v15 = *(v13 - 1);
      v14 = *v13;
      v72 = v2;
      v73 = v65;
      v16 = one-time initialization token for outdoorRowing;

      if (v16 != -1)
      {
        swift_once();
      }

      v68 = [static FIUIWorkoutActivityType.outdoorRowing workoutActivityType];
      if (one-time initialization token for indoorRowing != -1)
      {
        swift_once();
      }

      v69 = [static FIUIWorkoutActivityType.indoorRowing workoutActivityType];
      if (one-time initialization token for outdoorHockey != -1)
      {
        swift_once();
      }

      v70 = [static FIUIWorkoutActivityType.outdoorHockey workoutActivityType];
      if (one-time initialization token for indoorHockey != -1)
      {
        swift_once();
      }

      v71 = [static FIUIWorkoutActivityType.indoorHockey workoutActivityType];
      v17 = static _DictionaryStorage.allocate(capacity:)();

      v18 = v68;
      v19 = v69;
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v18);
      if (v21)
      {
        break;
      }

      *(v17 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
      *(v17[6] + 8 * v20) = v18;
      *(v17[7] + 8 * v20) = v19;
      v22 = v17[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_46;
      }

      v17[2] = v24;
      v25 = v70;
      v26 = v71;
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v25);
      if (v28)
      {
        break;
      }

      *(v17 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v27;
      *(v17[6] + 8 * v27) = v25;
      *(v17[7] + 8 * v27) = v26;
      v29 = v17[2];
      v23 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v23)
      {
        goto LABEL_46;
      }

      v17[2] = v30;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21FIWorkoutActivityTypeC_ABtMd, &_sSo21FIWorkoutActivityTypeC_ABtMR);
      swift_arrayDestroy();
      v31 = ActivityTypeKeyMigrator.migrate(userDefaultKey:activityTypeMigrationMap:)(v15, v14, v17);

      if (v31)
      {

        v2 = v64;
      }

      else
      {
        v2 = v64;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          osloga = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(osloga + 2) + 1, 1, osloga);
        }

        v33 = *(osloga + 2);
        v32 = *(osloga + 3);
        if (v33 >= v32 >> 1)
        {
          osloga = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, osloga);
        }

        *(osloga + 2) = v33 + 1;
        v34 = &osloga[16 * v33];
        *(v34 + 4) = v15;
        *(v34 + 5) = v14;
      }

      v13 += 2;
      v5 = (v5 - 1);
      if (!v5)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    swift_once();
LABEL_3:
    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.migration);

    v8 = v65;
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134218240;
      v11 = MEMORY[0x20F2E6C00](0xD00000000000001FLL, v3 | 0x8000000000000000);
      v12 = [v8 v5[364]];

      *(v10 + 4) = v12 == 1;

      *(v10 + 12) = 2048;
      *(v10 + 14) = 1;
      _os_log_impl(&dword_20AEA4000, oslog, v9, "ActivityTypeKeyMigrator migration not needed. current_version=%ld expected_version=%ld", v10, 0x16u);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }

    else
    {
    }

    return;
  }

  osloga = MEMORY[0x277D84F90];
LABEL_33:
  if (*(osloga + 2))
  {
    if (one-time initialization token for migration != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static WOLog.migration);
    swift_bridgeObjectRetain_n();
    v36 = v65;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v72 = v40;
      *v39 = 136315906;
      v41 = v2;
      v42 = MEMORY[0x277D837D0];
      v43 = MEMORY[0x20F2E6F70](v41, MEMORY[0x277D837D0]);
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v72);

      *(v39 + 4) = v45;
      *(v39 + 12) = 2080;

      v47 = MEMORY[0x20F2E6F70](v46, v42);
      v49 = v48;

      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v72);

      *(v39 + 14) = v50;
      *(v39 + 22) = 2048;
      v51 = MEMORY[0x20F2E6C00](0xD00000000000001FLL, 0x800000020B460F60);
      v52 = [v36 integerForKey_];

      *(v39 + 24) = v52 == 1;

      *(v39 + 32) = 2048;
      *(v39 + 34) = 1;
      _os_log_impl(&dword_20AEA4000, v37, v38, "ActivityTypeKeyMigrator migration completed with failures. migrations=%s failures=%s current_version=%ld expected_version=%ld", v39, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v40, -1, -1);
      MEMORY[0x20F2E9420](v39, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    if (one-time initialization token for migration != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, static WOLog.migration);
    swift_bridgeObjectRetain_n();
    v54 = v65;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v72 = v58;
      *v57 = 136315650;
      v59 = MEMORY[0x20F2E6F70](v2, MEMORY[0x277D837D0]);
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v72);

      *(v57 + 4) = v61;
      *(v57 + 12) = 2048;
      v62 = MEMORY[0x20F2E6C00](0xD00000000000001FLL, 0x800000020B460F60);
      v63 = [v54 integerForKey_];

      v2 = v64;
      *(v57 + 14) = v63 == 1;

      *(v57 + 22) = 2048;
      *(v57 + 24) = 1;
      _os_log_impl(&dword_20AEA4000, v55, v56, "ActivityTypeKeyMigrator migration completed successfully. migrations=%s current_version=%ld expected_version=%ld", v57, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x20F2E9420](v58, -1, -1);
      MEMORY[0x20F2E9420](v57, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v72 = v2;
    v73 = v54;
    ActivityTypeKeyMigrator.markMigrationCompleted()();
  }
}

uint64_t ActivityTypeKeyMigrator.migrate(userDefaultKey:activityTypeMigrationMap:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 8);
  v8 = MEMORY[0x20F2E6C00](a1, a2);
  v9 = [v7 dictionaryForKey_];

  if (v9)
  {
    v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = v10;
    v31 = 0;
    v30 = 1;

    specialized Sequence.forEach(_:)(v11, a3, &v32, &v31, a1, a2, &v30);

    if (v31 == 1)
    {
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v13 = MEMORY[0x20F2E6C00](a1, a2);
      [v7 setObject:isa forKey:v13];

      v14 = objc_opt_self();
      v15 = [v14 standardUserDefaults];
      _sSo14NSUserDefaultsCMaTm_0(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
      LOBYTE(isa) = static NSObject.== infix(_:_:)();

      if (isa)
      {
        v16 = MEMORY[0x20F2E6C00](a1, a2);
        [v14 fu:v16 backupStandardUserDefaultsKey:?];
      }

      if (one-time initialization token for migration != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static WOLog.migration);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v29 = v21;
        *v20 = 136315138;
        *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v29);
        _os_log_impl(&dword_20AEA4000, v18, v19, "Saved %s to user defaults during migration", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x20F2E9420](v21, -1, -1);
        MEMORY[0x20F2E9420](v20, -1, -1);
      }
    }

    else
    {
    }

    v27 = v30;
  }

  else
  {

    if (one-time initialization token for migration != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static WOLog.migration);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v25 = 136315138;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v32);
      _os_log_impl(&dword_20AEA4000, v23, v24, "%s key not present in user defaults. Not attempting migration.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x20F2E9420](v26, -1, -1);
      MEMORY[0x20F2E9420](v25, -1, -1);
    }

    return 1;
  }

  return v27;
}

void ActivityTypeKeyMigrator.markMigrationCompleted()()
{
  v1 = *(v0 + 8);
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 standardUserDefaults];
  _sSo14NSUserDefaultsCMaTm_0(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
  v5 = static NSObject.== infix(_:_:)();

  v6 = MEMORY[0x20F2E6C00](0xD00000000000001FLL, 0x800000020B460F60);
  v9 = v6;
  if (v5)
  {
    v7 = v2;
  }

  else
  {
    v7 = v3;
  }

  v8 = &selRef_fu_backupAndSetInteger_forKey_;
  if ((v5 & 1) == 0)
  {
    v8 = &selRef_setInteger_forKey_;
  }

  [v7 *v8];
}

unint64_t lazy protocol witness table accessor for type ActivityTypeKeyMigrator.MigrationVersion and conformance ActivityTypeKeyMigrator.MigrationVersion()
{
  result = lazy protocol witness table cache variable for type ActivityTypeKeyMigrator.MigrationVersion and conformance ActivityTypeKeyMigrator.MigrationVersion;
  if (!lazy protocol witness table cache variable for type ActivityTypeKeyMigrator.MigrationVersion and conformance ActivityTypeKeyMigrator.MigrationVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivityTypeKeyMigrator.MigrationVersion and conformance ActivityTypeKeyMigrator.MigrationVersion);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityTypeKeyMigrator(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for ActivityTypeKeyMigrator(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for ActivityTypeKeyMigrator.MigrationVersion(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ActivityTypeKeyMigrator.MigrationVersion(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized Sequence.forEach(_:)(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4, uint64_t a5, unint64_t a6, _BYTE *a7)
{
  v8 = a2;
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v67 = a2 & 0xC000000000000001;

  v15 = 0;
  v68 = a6;
  v64 = v8;
  while (v12)
  {
LABEL_10:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = (*(a1 + 48) + ((v15 << 10) | (16 * v17)));
    v19 = *v18;
    v20 = v18[1];

    v71 = v19;
    v21 = MEMORY[0x20F2E6C00](v19, v20);
    v22 = [objc_opt_self() activityTypeFromUniqueIdentifier_];

    if (v22)
    {
      if (v67)
      {
        v23 = v22;
        v24 = __CocoaDictionary.lookup(_:)();

        if (!v24)
        {
          goto LABEL_23;
        }

        *&v73 = v24;
        _sSo14NSUserDefaultsCMaTm_0(0, &lazy cache variable for type metadata for FIWorkoutActivityType, 0x277D095E0);
        swift_dynamicCast();
        v25 = *&v75[0];
        if (!*&v75[0])
        {
          goto LABEL_23;
        }
      }

      else if (!*(v8 + 16) || (v32 = specialized __RawDictionaryStorage.find<A>(_:)(v22), (v33 & 1) == 0) || (v25 = *(*(v8 + 56) + 8 * v32)) == 0)
      {
LABEL_23:
        v25 = v22;
      }

      v69 = v25;
      v34 = [v25 uniqueIdentifier];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = v71 == v35 && v20 == v37;
      if (v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        a6 = v68;
      }

      else
      {
        v39 = *a3;
        if (*(*a3 + 16) && (v40 = specialized __RawDictionaryStorage.find<A>(_:)(v71, v20), (v41 & 1) != 0))
        {
          outlined init with copy of Any(*(v39 + 56) + 32 * v40, v75);
        }

        else
        {
          memset(v75, 0, 32);
        }

        outlined init with copy of Any?(v75, &v73);
        if (*(&v74 + 1))
        {
          outlined init with take of Any(&v73, v72);
          v42 = *a3;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v76 = *a3;
          v44 = v35;
          v45 = a3;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v72, v44, v37, isUniquelyReferenced_nonNull_native);

          *a3 = v76;
        }

        else
        {
          outlined destroy of Any?(&v73);
          v46 = *a3;
          v47 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v37);
          if (v48)
          {
            v49 = v47;
            v50 = *a3;
            v51 = swift_isUniquelyReferenced_nonNull_native();
            v52 = *a3;
            v76 = *a3;
            if ((v51 & 1) == 0)
            {
              specialized _NativeDictionary.copy()();
              v52 = v76;
            }

            v53 = *(*(v52 + 48) + 16 * v49 + 8);

            outlined init with take of Any((*(v52 + 56) + 32 * v49), v72);
            specialized _NativeDictionary._delete(at:)(v49, v52);
            v45 = a3;
            *a3 = v52;
          }

          else
          {
            memset(v72, 0, sizeof(v72));
            v45 = a3;
          }

          outlined destroy of Any?(v72);
          v54 = *v45;
        }

        v55 = specialized __RawDictionaryStorage.find<A>(_:)(v71, v20);
        a6 = v68;
        if (v56)
        {
          v57 = v55;
          v58 = *v45;
          v59 = swift_isUniquelyReferenced_nonNull_native();
          v60 = *v45;
          *&v72[0] = *v45;
          if ((v59 & 1) == 0)
          {
            specialized _NativeDictionary.copy()();
            v60 = *&v72[0];
          }

          v61 = *(*(v60 + 48) + 16 * v57 + 8);

          outlined init with take of Any((*(v60 + 56) + 32 * v57), &v73);
          specialized _NativeDictionary._delete(at:)(v57, v60);
          *v45 = v60;
        }

        else
        {
          v73 = 0u;
          v74 = 0u;
        }

        outlined destroy of Any?(&v73);
        outlined destroy of Any?(v75);
        *a4 = 1;

        v8 = v64;
      }
    }

    else
    {
      if (one-time initialization token for migration != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static WOLog.migration);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *&v75[0] = v30;
        *v29 = 136315138;
        *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a5, a6, v75);
        _os_log_impl(&dword_20AEA4000, v27, v28, "Unable to serialize FIWorkoutActivityType from uniqueIdentifier during migrateKeys for migration key=%s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x20F2E9420](v30, -1, -1);
        v31 = v29;
        v8 = v64;
        MEMORY[0x20F2E9420](v31, -1, -1);
      }

      *a7 = 0;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSo14NSUserDefaultsCMaTm_0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

Swift::Int specialized RawRepresentable<>.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t static WorkoutAlertZone.type(for:)(unint64_t a1)
{
  if (a1 < 4)
  {
    return qword_20B43CA58[a1];
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id WorkoutAlertZone.__allocating_init(targetZone:alertValue:date:zoneAlertType:activityType:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone] = a1;
  *&v11[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_alertValue] = a5;
  *&v11[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_activityType] = a4;

  v12 = a4;
  *&v11[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_distanceType] = FIUIDistanceTypeForActivityType();
  v23.receiver = v11;
  v23.super_class = v5;
  v13 = objc_msgSendSuper2(&v23, sel_init);
  isa = Date._bridgeToObjectiveC()().super.isa;
  [v13 setEventDate_];

  [v13 setType_];
  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static WOLog.zones);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v13;
    *v19 = v13;
    v20 = v13;
    _os_log_impl(&dword_20AEA4000, v16, v17, "Created zone alert: %@", v18, 0xCu);
    outlined destroy of NSObject?(v19);
    MEMORY[0x20F2E9420](v19, -1, -1);
    MEMORY[0x20F2E9420](v18, -1, -1);

    v12 = v16;
  }

  else
  {
  }

  v21 = type metadata accessor for Date();
  (*(*(v21 - 8) + 8))(a2, v21);
  return v13;
}

uint64_t key path setter for WorkoutAlertZone.targetZone : WorkoutAlertZone(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t WorkoutAlertZone.targetZone.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t WorkoutAlertZone.targetZone.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t WorkoutAlertZone.distanceType.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_distanceType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t WorkoutAlertZone.distanceType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_distanceType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void key path setter for WorkoutAlertZone.activityType : WorkoutAlertZone(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_activityType;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id WorkoutAlertZone.activityType.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_activityType;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void WorkoutAlertZone.activityType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_activityType;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double WorkoutAlertZone.alertValue.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_alertValue;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t WorkoutAlertZone.alertValue.setter(double a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_alertValue;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id WorkoutAlertZone.init(targetZone:alertValue:date:zoneAlertType:activityType:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  *&v5[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone] = a1;
  *&v5[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_alertValue] = a5;
  *&v5[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_activityType] = a4;

  v9 = a4;
  *&v5[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_distanceType] = FIUIDistanceTypeForActivityType();
  v20.receiver = v5;
  v20.super_class = type metadata accessor for WorkoutAlertZone();
  v10 = objc_msgSendSuper2(&v20, sel_init);
  isa = Date._bridgeToObjectiveC()().super.isa;
  [v10 setEventDate_];

  [v10 setType_];
  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static WOLog.zones);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v10;
    *v16 = v10;
    v17 = v10;
    _os_log_impl(&dword_20AEA4000, v13, v14, "Created zone alert: %@", v15, 0xCu);
    outlined destroy of NSObject?(v16);
    MEMORY[0x20F2E9420](v16, -1, -1);
    MEMORY[0x20F2E9420](v15, -1, -1);
  }

  else
  {

    v13 = v9;
  }

  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 8))(a2, v18);
  return v10;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WorkoutAlertZone.CodingKeys()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance WorkoutAlertZone.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized WorkoutAlertZone.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance WorkoutAlertZone.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701869940;
  v5 = 0x7974697669746361;
  v6 = 0xEC00000065707954;
  v7 = 0xEA00000000006575;
  v8 = 0x6C61567472656C61;
  if (v2 != 4)
  {
    v8 = 0x746144746E657665;
    v7 = 0xE900000000000065;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x6F5A746567726174;
  v10 = 0xEA0000000000656ELL;
  if (v2 != 1)
  {
    v9 = 0x65636E6174736964;
    v10 = 0xEC00000065707954;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance WorkoutAlertZone.CodingKeys()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x7974697669746361;
  v4 = 0x6C61567472656C61;
  if (v1 != 4)
  {
    v4 = 0x746144746E657665;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F5A746567726174;
  if (v1 != 1)
  {
    v5 = 0x65636E6174736964;
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

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkoutAlertZone.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized WorkoutAlertZone.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkoutAlertZone.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkoutAlertZone.CodingKeys and conformance WorkoutAlertZone.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkoutAlertZone.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkoutAlertZone.CodingKeys and conformance WorkoutAlertZone.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutAlertZone.encode(to:)(void *a1)
{
  v3 = v1;
  v46 = type metadata accessor for Date();
  v48 = *(v46 - 8);
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore0D9AlertZoneC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore0D9AlertZoneC10CodingKeysOGMR);
  v7 = *(v55 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v55);
  v10 = &v44 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WorkoutAlertZone.CodingKeys and conformance WorkoutAlertZone.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone;
  swift_beginAccess();
  v13 = *&v3[v12];
  v14 = *(v13 + 16);
  swift_beginAccess();
  v15 = *(v13 + 24);
  swift_beginAccess();
  v16 = *(v13 + 32);
  v17 = type metadata accessor for JSONEncoder();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();

  JSONEncoder.init()();
  LOBYTE(v50) = v14;
  *(&v50 + 1) = v15;
  *&v51[0] = v16;
  lazy protocol witness table accessor for type TargetZone.TargetZoneHolder and conformance TargetZone.TargetZoneHolder();
  v20 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v2)
  {

    return (*(v7 + 8))(v10, v55);
  }

  else
  {
    v23 = v20;
    v24 = v21;
    v45 = v3;

    *&v50 = v23;
    *(&v50 + 1) = v24;
    v52 = 1;
    lazy protocol witness table accessor for type Data and conformance Data();
    v25 = v55;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v50, *(&v50 + 1));
    v26 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_alertValue;
    v27 = v45;
    swift_beginAccess();
    v28 = *&v27[v26];
    LOBYTE(v50) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v29 = v7;
    v30 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_activityType;
    swift_beginAccess();
    v31 = *&v27[v30];
    specialized FIUIWorkoutActivityType.ActivityType.init(activityType:)(v31, &v53);
    v32 = *(v17 + 48);
    v33 = *(v17 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    v50 = v53;
    v51[0] = *v54;
    *(v51 + 9) = *&v54[9];
    lazy protocol witness table accessor for type FIUIWorkoutActivityType.ActivityType and conformance FIUIWorkoutActivityType.ActivityType();
    v34 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v36 = v35;

    outlined destroy of FIUIWorkoutActivityType.ActivityType(&v53);
    *&v50 = v34;
    *(&v50 + 1) = v36;
    v49 = 3;
    v37 = v10;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v50, *(&v50 + 1));
    v38 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_distanceType;
    v39 = v45;
    swift_beginAccess();
    v40 = *&v39[v38];
    v49 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    [v39 type];
    v49 = 0;
    KeyedEncodingContainer.encode(_:forKey:)();
    v41 = [v39 eventDate];
    v42 = v47;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v49 = 5;
    _s10Foundation4DateVACSEAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date);
    v43 = v46;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v48 + 8))(v42, v43);
    return (*(v29 + 8))(v37, v25);
  }
}

id WorkoutAlertZone.init(from:)(uint64_t *a1)
{
  v3 = type metadata accessor for Date();
  v36 = *(v3 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore0D9AlertZoneC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore0D9AlertZoneC10CodingKeysOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v13 = a1[3];
  v12 = a1[4];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  lazy protocol witness table accessor for type WorkoutAlertZone.CodingKeys and conformance WorkoutAlertZone.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
    type metadata accessor for WorkoutAlertZone();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v33 = v6;
    v34 = v3;
    v35 = v8;
    v42 = 1;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = v40;
    v15 = v41;
    outlined copy of Data._Representation(v40, v41);
    v16 = specialized TargetZone.__allocating_init(serializedData:)(v14, v15);
    v18 = v38;
    *&v38[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone] = v16;
    LOBYTE(v40) = 4;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v18 + OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_alertValue) = v19;
    v42 = 3;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v20 = v40;
    v21 = v41;
    _sSo23FIUIWorkoutActivityTypeCMaTm_1(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
    outlined copy of Data._Representation(v20, v21);
    v22 = FIUIWorkoutActivityType.init(data:)(v20, v21);
    v23 = v38;
    *&v38[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_activityType] = v22;
    LOBYTE(v40) = 2;
    v24 = KeyedDecodingContainer.decode(_:forKey:)();
    v32 = v20;
    *&v23[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_distanceType] = v24;
    v25 = type metadata accessor for WorkoutAlertZone();
    v39.receiver = v23;
    v39.super_class = v25;
    v12 = objc_msgSendSuper2(&v39, sel_init);
    LOBYTE(v40) = 0;
    v26 = KeyedDecodingContainer.decode(_:forKey:)();
    v31 = v21;
    v38 = v15;
    [v12 setType_];
    LOBYTE(v40) = 5;
    _s10Foundation4DateVACSEAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date);
    v28 = v33;
    v27 = v34;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v29 = v35;
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v36 + 8))(v28, v27);
    [v12 setEventDate_];

    outlined consume of Data._Representation(v32, v31);
    outlined consume of Data._Representation(v14, v38);
    (*(v29 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  return v12;
}

void WorkoutAlertZone.localizedProgressDescription(with:formattingManager:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v57 = MEMORY[0x277D84F90];
  v5 = [v2 type];
  v6 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone;
  swift_beginAccess();
  v7 = [*&v3[v6] primaryType];
  v8 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_activityType;
  swift_beginAccess();
  v9 = WorkoutAlertZone.targetDescription(zoneType:targetZonePrimaryType:workoutActivityType:)(v5, v7, [*&v3[v8] effectiveTypeIdentifier]);
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    v13 = objc_opt_self();
    v14 = MEMORY[0x20F2E6C00](v11, v12);

    v15 = [v13 splitStringOnNewlines_];

    _sSo23FIUIWorkoutActivityTypeCMaTm_1(0, &lazy cache variable for type metadata for NLWorkoutAlertUnitAnnotatedString, off_277D86CF0);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Array.append<A>(contentsOf:)(v16);
  }

  v17 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_distanceType;
  swift_beginAccess();
  v55 = MEMORY[0x20F2E8410](*&v3[v17]);
  v18 = [*&v3[v6] primaryType];
  v19 = v18;
  if (v18 == 3)
  {
    v24 = [objc_opt_self() localizedShortPowerUnitString];
    if (!v24)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v25 = v24;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    if (one-time initialization token for integerNumberFormatter == -1)
    {
      goto LABEL_12;
    }

LABEL_25:
    swift_once();
    goto LABEL_12;
  }

  if (v18 == 1)
  {
    v20 = [objc_opt_self() meterUnit];
    v21 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_alertValue;
    swift_beginAccess();
    v22 = [objc_opt_self() quantityWithUnit:v20 doubleValue:*&v3[v21]];

    v23 = [a2 localizedPaceStringWithDistance:v22 overDuration:v55 paceFormat:a1 unitStyle:1 decimalTrimmingMode:*&v3[v17] distanceType:1.0];
    if (!v23)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    goto LABEL_13;
  }

  v26 = [objc_opt_self() localizedShortCadenceUnitStringForActivityType_];
  if (!v26)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v27 = v26;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  if (one-time initialization token for integerNumberFormatter != -1)
  {
    goto LABEL_25;
  }

LABEL_12:
  swift_beginAccess();
  v28 = static NSNumberFormatter.integerNumberFormatter;
  v29 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_alertValue;
  swift_beginAccess();
  v30 = *&v3[v29];
  v31 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v32 = v28;
  v33 = [v31 initWithDouble_];
  v23 = [v32 stringFromNumber_];

  if (v23)
  {
LABEL_13:
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    goto LABEL_15;
  }

  v34 = 0;
  v36 = 0xE000000000000000;
LABEL_15:
  v37 = qword_20B43CA78[*(*&v3[v6] + 16)];
  v38 = [a2 unitManager];
  if (!v38)
  {
    __break(1u);
    goto LABEL_27;
  }

  v39 = v38;
  v40 = [v38 paceDistanceUnitForDistanceType_];

  if ((v19 - 2) >= 2)
  {
    if (v19 != 1)
    {
      v41 = 0;
      v43 = 0xE000000000000000;
      goto LABEL_22;
    }

    v44 = [a2 localizedDistinguishingPaceUnitStringWithMetricType:v37 distanceType:*&v3[v17] distanceUnit:v40 paceFormat:v55 abbreviated:0 multiline:1];
    if (v44)
    {
      v45 = v44;
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v46;

      goto LABEL_22;
    }

LABEL_30:
    __break(1u);
    return;
  }

  v41 = WorkoutAlertZone.metricUnitString(workoutActivityType:)([*&v3[v8] effectiveTypeIdentifier]);
  v43 = v42;
LABEL_22:
  lazy protocol witness table accessor for type String and conformance String();
  v47 = StringProtocol.localizedUppercase.getter();
  v49 = v48;

  v50 = MEMORY[0x20F2E6C00](v34, v36);

  v51 = MEMORY[0x20F2E6C00](v47, v49);

  v52 = MEMORY[0x20F2E6C00](v41, v43);

  v53 = [objc_opt_self() stringWithValueString:v50 shortDescriptionString:v51 unitString:v52];

  MEMORY[0x20F2E6F30]();
  if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v54 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t WorkoutAlertZone.targetDescription(zoneType:targetZonePrimaryType:workoutActivityType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  if (a2 > 1)
  {
    if (a2 == 3)
    {
      v6 = 0xE500000000000000;
      v7 = 0x5245574F50;
      if (a1 == 8)
      {
LABEL_17:
        v12 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone;
        swift_beginAccess();
        v13 = *(v3 + v12);
        swift_beginAccess();
        v14 = *(v13 + 24);
        swift_beginAccess();
        if (v14 == *(v13 + 32))
        {
          v15 = 0x5F45564F4241;
LABEL_21:
          v19 = v15 & 0xFFFFFFFFFFFFLL | 0x4154000000000000;
          v20 = 0xED00005F54454752;
LABEL_26:
          v39 = v19;
          v40 = v20;
          MEMORY[0x20F2E6D80](v7, v6);

          v8 = v39;
          v9 = v40;
          goto LABEL_27;
        }

        v21 = 0x5F45564F4241;
        goto LABEL_25;
      }

LABEL_6:
      if (a1 != 9)
      {
        if (a1 != 10)
        {

          return 0;
        }

        strcpy(v41, "WITHIN_RANGE_");
        HIWORD(v41[1]) = -4864;
        MEMORY[0x20F2E6D80](v7, v6);

        v8 = v41[0];
        v9 = v41[1];
LABEL_27:
        type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v23 = objc_opt_self();
        v24 = [v23 bundleForClass_];
        v25 = MEMORY[0x20F2E6C00](v8, v9);

        v26 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
        v27 = [v24 localizedStringForKey:v25 value:0 table:v26];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (v5 == 3)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_20B423A90;
          v30 = [v23 bundleForClass_];
          v31 = MEMORY[0x20F2E6C00](0x5245574F50, 0xE500000000000000);
          v32 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
          v33 = [v30 localizedStringForKey:v31 value:0 table:v32];
        }

        else if (v5 == 2)
        {
          v28 = MEMORY[0x20F2E8390](a3);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_20B423A90;
          if (v28)
          {
            v30 = [v23 bundleForClass_];
            v31 = MEMORY[0x20F2E6C00](0xD000000000000011, 0x800000020B461100);
          }

          else
          {
            v30 = [v23 bundleForClass_];
            v31 = MEMORY[0x20F2E6C00](0x5F45434E45444143, 0xEF474E494C435943);
          }

          v32 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
          v33 = [v30 localizedStringForKey:v31 value:0 table:v32];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_20B423A90;
          v30 = [v23 bundleForClass_];
          v31 = MEMORY[0x20F2E6C00](1162035536, 0xE400000000000000);
          v32 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
          v33 = [v30 localizedStringForKey:v31 value:0 table:v32];
        }

        v34 = v33;

        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

        *(v29 + 56) = MEMORY[0x277D837D0];
        *(v29 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v29 + 32) = v35;
        *(v29 + 40) = v37;
        v5 = String.init(format:_:)();

        return v5;
      }

      v16 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone;
      swift_beginAccess();
      v17 = *(v3 + v16);
      swift_beginAccess();
      v18 = *(v17 + 24);
      swift_beginAccess();
      if (v18 == *(v17 + 32))
      {
        v15 = 0x5F574F4C4542;
        goto LABEL_21;
      }

      v21 = 0x5F574F4C4542;
LABEL_25:
      v19 = v21 & 0xFFFFFFFFFFFFLL | 0x4152000000000000;
      v20 = 0xEC0000005F45474ELL;
      goto LABEL_26;
    }

    if (a2 == 2)
    {
      v7 = 0x5F45434E45444143;
      v10 = a1;
      v11 = MEMORY[0x20F2E8390](a3);
      a1 = v10;
      if (v11)
      {
        v7 = 0xD000000000000011;
        v6 = 0x800000020B461100;
      }

      else
      {
        v6 = 0xEF474E494C435943;
      }

      if (a1 == 8)
      {
        goto LABEL_17;
      }

      goto LABEL_6;
    }
  }

  else
  {
    if (!a2)
    {
      return v5;
    }

    if (a2 == 1)
    {
      v6 = 0xE400000000000000;
      v7 = 1162035536;
      if (a1 == 8)
      {
        goto LABEL_17;
      }

      goto LABEL_6;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t WorkoutAlertZone.metricUnitString(workoutActivityType:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone;
  swift_beginAccess();
  v4 = 0;
  v5 = *(*(v1 + v3) + 16);
  if (v5 > 4)
  {
    if (v5 == 5)
    {
      v10 = "AVERAGE_POWER_DESCRIPTION";
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v12 = [objc_opt_self() bundleForClass_];
    }

    else
    {
      if (v5 != 6)
      {
        return v4;
      }

      v10 = "CADENCE_PEDOMETER";
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      v11 = swift_getObjCClassFromMetadata();
      v12 = [objc_opt_self() bundleForClass_];
    }

    v8 = v12;
    v18 = v10 | 0x8000000000000000;
    v16 = 0xD000000000000019;
LABEL_18:
    v20 = MEMORY[0x20F2E6C00](v16, v18);
    v21 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v22 = [v8 localizedStringForKey:v20 value:0 table:v21];

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v4;
  }

  if (v5 == 3)
  {
    v13 = MEMORY[0x20F2E8390](a1);
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v14 = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    if (v13)
    {
      v9 = "CURRENT_CADENCE_DESCRIPTION_PEDOMETER";
      goto LABEL_11;
    }

    v19 = "CURRENT_CADENCE_DESCRIPTION_CYCLING";
LABEL_16:
    v15 = v19 - 32;
    v16 = 0xD000000000000023;
    goto LABEL_17;
  }

  if (v5 == 4)
  {
    v6 = MEMORY[0x20F2E8390](a1);
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v7 = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    if (v6)
    {
      v9 = "AVERAGE_CADENCE_DESCRIPTION_PEDOMETER";
LABEL_11:
      v15 = v9 - 32;
      v16 = 0xD000000000000025;
LABEL_17:
      v18 = v15 | 0x8000000000000000;
      goto LABEL_18;
    }

    v19 = "AVERAGE_CADENCE_DESCRIPTION_CYCLING";
    goto LABEL_16;
  }

  return v4;
}

uint64_t WorkoutAlertZone.spokenDescription(with:)(void *a1)
{
  [v1 type];
  v3 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone;
  swift_beginAccess();
  v4 = [*&v1[v3] primaryType];
  v5 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_activityType;
  swift_beginAccess();
  v6 = specialized WorkoutAlertZone.spokenDescription(zoneType:zonePrimaryType:workoutActivityType:)(v4, [*&v1[v5] effectiveTypeIdentifier]);
  v8 = v7;
  v9 = *&v1[v5];
  v10 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_alertValue;
  swift_beginAccess();
  v11 = *&v1[v10];
  v12 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_distanceType;
  swift_beginAccess();
  v13 = *&v1[v12];
  v14 = qword_20B43CA78[*(*&v1[v3] + 16)];
  if (v8)
  {
    v15 = v6;
  }

  else
  {
    v8 = 0xE000000000000000;
    v15 = 0;
  }

  v16 = v9;
  v17 = specialized static SpokenUtilities.spokenMetric(activityType:value:distanceType:metricType:formattingManager:)(v16, v13, v14, a1, v11);
  v19 = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20B4282E0;
  v21 = MEMORY[0x277D837D0];
  *(v20 + 56) = MEMORY[0x277D837D0];
  v22 = lazy protocol witness table accessor for type String and conformance String();
  *(v20 + 32) = v15;
  *(v20 + 40) = v8;
  *(v20 + 96) = v21;
  *(v20 + 104) = v22;
  *(v20 + 64) = v22;
  *(v20 + 72) = v17;
  *(v20 + 80) = v19;
  return String.init(format:_:)();
}

id WorkoutAlertZone.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutAlertZone.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutAlertZone();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id protocol witness for Decodable.init(from:) in conformance WorkoutAlertZone@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for WorkoutAlertZone());
  result = WorkoutAlertZone.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutAlertZone.CodingKeys and conformance WorkoutAlertZone.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkoutAlertZone.CodingKeys and conformance WorkoutAlertZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutAlertZone.CodingKeys and conformance WorkoutAlertZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutAlertZone.CodingKeys and conformance WorkoutAlertZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutAlertZone.CodingKeys and conformance WorkoutAlertZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutAlertZone.CodingKeys and conformance WorkoutAlertZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutAlertZone.CodingKeys and conformance WorkoutAlertZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutAlertZone.CodingKeys and conformance WorkoutAlertZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutAlertZone.CodingKeys and conformance WorkoutAlertZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutAlertZone.CodingKeys and conformance WorkoutAlertZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutAlertZone.CodingKeys and conformance WorkoutAlertZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutAlertZone.CodingKeys and conformance WorkoutAlertZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutAlertZone.CodingKeys and conformance WorkoutAlertZone.CodingKeys);
  }

  return result;
}

uint64_t _s10Foundation4DateVACSEAAWlTm_0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t specialized WorkoutAlertZone.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WorkoutAlertZone.CodingKeys.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized WorkoutAlertZone.spokenDescription(zoneType:zonePrimaryType:workoutActivityType:)(uint64_t a1, uint64_t a2)
{
  switch(a1)
  {
    case 1:
      v5 = 0xE400000000000000;
      v4 = 1162035536;
      break;
    case 3:
      v5 = 0xE500000000000000;
      v4 = 0x5245574F50;
      break;
    case 2:
      v3 = MEMORY[0x20F2E8390](a2);
      if (v3)
      {
        v4 = 0xD000000000000011;
      }

      else
      {
        v4 = 0x5F45434E45444143;
      }

      if (v3)
      {
        v5 = 0x800000020B461100;
      }

      else
      {
        v5 = 0xEF474E494C435943;
      }

      break;
    default:
      return 0;
  }

  v6 = [v2 type];
  if (v6 == 8 || v6 == 9)
  {
    v8 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone;
    swift_beginAccess();
    v9 = *&v2[v8];
    swift_beginAccess();
    v10 = *(v9 + 24);
    swift_beginAccess();
    v11 = *(v9 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_20B423A90;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v12 + 32) = v4;
    *(v12 + 40) = v5;
    goto LABEL_19;
  }

  if (v6 != 10)
  {

    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20B423A90;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
LABEL_19:
  v14 = String.init(format:_:)();
  v16 = v15;
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass_];
  v19 = MEMORY[0x20F2E6C00](v14, v16);

  v20 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v21 = [v18 localizedStringForKey:v19 value:0 table:v20];

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v22;
}

uint64_t getEnumTagSinglePayload for WorkoutAlertZone.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutAlertZone.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized static HeartRateZonesPlatterMetricsProvider.metrics(workoutSettingsManager:foriOS:)(void *a1)
{
  v1 = [a1 supportedMetrics];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for NSNumber();
    lazy protocol witness table accessor for type NSNumber and conformance NSObject();
    v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = (v3 & 0xC000000000000001) == 0;
    v5 = v3 == 0;
  }

  else
  {
    v3 = 0;
    v4 = 1;
    v5 = 1;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v8 = v3 + 56;
  v9 = 0x277CCA000;
  v25 = v5;
  v26 = v4;
  do
  {
    if (v5)
    {
      goto LABEL_7;
    }

    v10 = outlined read-only object #0 of static HeartRateZonesPlatterMetricsProvider.metrics(workoutSettingsManager:foriOS:)[v6 + 4];
    v11 = [objc_allocWithZone(*(v9 + 2992)) initWithUnsignedInteger_];
    v12 = v11;
    if (v4)
    {
      if (!*(v3 + 16))
      {

        goto LABEL_7;
      }

      v27 = v10;
      v13 = v7;
      type metadata accessor for NSNumber();
      v14 = NSObject._rawHashValue(seed:)(*(v3 + 40));
      v15 = -1 << *(v3 + 32);
      v16 = v14 & ~v15;
      if (((*(v8 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
LABEL_5:

        v5 = v25;
        v4 = v26;
        v9 = 0x277CCA000uLL;
LABEL_6:
        v7 = v13;
        goto LABEL_7;
      }

      v17 = ~v15;
      while (1)
      {
        v18 = *(*(v3 + 48) + 8 * v16);
        v19 = static NSObject.== infix(_:_:)();

        if (v19)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v8 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v5 = v25;
      v4 = v26;
      v9 = 0x277CCA000;
      v10 = v27;
    }

    else
    {
      v13 = v7;
      v20 = __CocoaSet.contains(_:)();

      if ((v20 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v7 = v13;
    v28 = v13;
    v21 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1);
      v7 = v28;
    }

    v23 = *(v7 + 16);
    v22 = *(v7 + 24);
    if (v23 >= v22 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
      v7 = v28;
    }

    *(v7 + 16) = v23 + 1;
    *(v7 + 8 * v23 + 32) = v21;
LABEL_7:
    ++v6;
  }

  while (v6 != 4);

  return v7;
}

uint64_t getEnumTagSinglePayload for HeartRateZonesPlatterMetricsProvider(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for HeartRateZonesPlatterMetricsProvider(_WORD *result, int a2, int a3)
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

uint64_t NLSessionActivitySegmentMarker.segmentDescription(alertType:)(uint64_t a1)
{
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  if (a1 == 26)
  {
    v5 = 0xEE00544E454D4745;
  }

  else
  {
    v5 = 0xEC00000054494C50;
  }

  v6 = MEMORY[0x20F2E6C00](0x535F4E454B4F5053, v5);
  v7 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v8 = [v4 localizedStringForKey:v6 value:0 table:v7];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20B423A90;
  v10 = [v1 segmentIndex];
  v11 = MEMORY[0x277D83C10];
  *(v9 + 56) = MEMORY[0x277D83B88];
  *(v9 + 64) = v11;
  *(v9 + 32) = v10;
  v12 = String.init(format:_:)();

  return v12;
}

uint64_t NLSessionActivitySegmentMarker.spokenFullDescription(formattingManager:workoutActivityType:activityMoveMode:alertType:shouldSkipTime:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v81 = NLSessionActivitySegmentMarker.segmentDescription(alertType:)(a4);
  [v5 duration];
  v11 = [a1 stringWithDuration:6 durationFormat:?];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  v80 = specialized static SpokenUtilities.appendEndPhrasePunctuation(phrase:)(v13, v15);
  v82 = v16;
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v17);

  MEMORY[0x20F2E6D80](92, 0xE100000000000000);
  v18 = [objc_allocWithZone(MEMORY[0x277D0A828]) initWithWorkoutActivityType:a2 activityMoveMode:a3];
  if (!v18)
  {
    __break(1u);
    goto LABEL_46;
  }

  v19 = v18;
  v78 = a5;
  v20 = [v18 supportedMetrics];

  if (v20)
  {
    type metadata accessor for NSNumber();
    lazy protocol witness table accessor for type NSNumber and conformance NSObject();
    v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    v23 = specialized Set.contains(_:)(v22, v21);

    if ((v23 & 1) == 0)
    {

      v54 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
      v55 = specialized Set.contains(_:)(v54, v21);

      if ((v55 & 1) == 0)
      {
        v83 = v81;
        MEMORY[0x20F2E6D80](10, 0xE100000000000000);
        MEMORY[0x20F2E6D80](0x3D65737561705C1BLL, 0xE800000000000000);

        v59 = v80;
        v58 = v82;
LABEL_44:
        MEMORY[0x20F2E6D80](v59, v58);

        return v83;
      }

      v56 = NLSessionActivitySegmentMarker.energySpokenDescription(formattingManager:)(a1);
      v58 = v57;
      v83 = v81;
      MEMORY[0x20F2E6D80](10, 0xE100000000000000);
      MEMORY[0x20F2E6D80](0x3D65737561705C1BLL, 0xE800000000000000);
      MEMORY[0x20F2E6D80](v80, v82);

      MEMORY[0x20F2E6D80](10, 0xE100000000000000);
      MEMORY[0x20F2E6D80](0x3D65737561705C1BLL, 0xE800000000000000);
      goto LABEL_42;
    }

    v24 = FIUIDistanceTypeForActivityType();
    v25 = [v6 distance];
    if (v25)
    {
      v26 = v25;
      v27 = [objc_opt_self() meterUnit];
      [v26 doubleValueForUnit_];
      v29 = v28;

      v30 = [a1 localizedNaturalScaleStringWithDistanceInMeters:v24 distanceType:3 unitStyle:0 usedUnit:2 decimalTrimmingMode:v29];
      if (v30)
      {
        v31 = v30;
        v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v77 = v32;

        v33 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
        LOBYTE(v31) = specialized Set.contains(_:)(v33, v21);

        if ((v31 & 1) == 0)
        {

          if (a5)
          {

            return v81;
          }

          v58 = v82;
          if (a4 == 26)
          {
            v83 = v81;
            MEMORY[0x20F2E6D80](10, 0xE100000000000000);
            MEMORY[0x20F2E6D80](0x3D65737561705C1BLL, 0xE800000000000000);
            MEMORY[0x20F2E6D80](v76, v77);
          }

          else
          {

            v83 = v81;
            MEMORY[0x20F2E6D80](10, 0xE100000000000000);
          }

          MEMORY[0x20F2E6D80](0x3D65737561705C1BLL, 0xE800000000000000);

          v59 = v80;
          goto LABEL_44;
        }

        if (a4 == 26)
        {
          v34 = 23;
        }

        else
        {
          v34 = 36;
        }

        v35 = [v6 distance];
        if (v35)
        {
          v36 = v35;

          [v6 duration];
          v38 = v37;
          v39 = MEMORY[0x20F2E8410](v24);
          if (v39 == 4)
          {
LABEL_17:
            v44 = MEMORY[0x20F2E8410](v24);
            if (v44 == 4)
            {
LABEL_20:
              v49 = [a1 localizedPaceAndUnitWithDistance:v36 overDuration:v44 paceFormat:v24 distanceType:3 unitStyle:2 decimalTrimmingMode:v38];
              if (v49)
              {
                v50 = v49;
                v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v53 = v52;

LABEL_30:
                v61 = v82;
                v62 = specialized static SpokenUtilities.spokenLocalizedString(metricType:paceFormat:activityType:)(v34, v39, 0);
                v64 = v63;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
                v65 = swift_allocObject();
                *(v65 + 16) = xmmword_20B423A20;
                v66 = MEMORY[0x277D837D0];
                *(v65 + 56) = MEMORY[0x277D837D0];
                v67 = lazy protocol witness table accessor for type String and conformance String();
                *(v65 + 64) = v67;
                *(v65 + 32) = v62;
                *(v65 + 40) = v64;
                if (one-time initialization token for pausePunctuation != -1)
                {
                  v75 = v67;
                  swift_once();
                  v67 = v75;
                }

                v69 = static SpokenUtilities.pausePunctuation;
                v68 = *algn_27C72C6E8;
                *(v65 + 96) = v66;
                *(v65 + 104) = v67;
                *(v65 + 72) = v69;
                *(v65 + 80) = v68;
                *(v65 + 136) = v66;
                *(v65 + 144) = v67;
                *(v65 + 112) = v51;
                *(v65 + 120) = v53;

                v70 = String.init(format:_:)();
                v72 = specialized static SpokenUtilities.appendEndPhrasePunctuation(phrase:)(v70, v71);
                v74 = v73;

                goto LABEL_36;
              }

LABEL_29:
              v51 = 0;
              v53 = 0xE000000000000000;
              goto LABEL_30;
            }

            v45 = [a1 unitManager];
            if (v45)
            {
              v46 = v45;
              [v45 paceWithDistance:v36 overDuration:v44 paceFormat:v24 distanceType:v38];
              v48 = v47;

              if (v48 <= 0.0)
              {
                goto LABEL_29;
              }

              goto LABEL_20;
            }

            goto LABEL_50;
          }

          v40 = [a1 unitManager];
          if (v40)
          {
            v41 = v40;
            [v40 paceWithDistance:v36 overDuration:v39 paceFormat:v24 distanceType:v38];
            v43 = v42;

            if (v43 <= 0.0)
            {

              v72 = 0;
              v74 = 0xE000000000000000;
              v61 = v82;
LABEL_36:
              MEMORY[0x20F2E6D80](0x3D65737561705C1BLL, 0xE800000000000000);
              MEMORY[0x20F2E6D80](v72, v74);

              v56 = 10;
              v58 = 0xE100000000000000;
              if (v78)
              {

                v83 = v81;
LABEL_43:
                v59 = v56;
                goto LABEL_44;
              }

              if (a4 == 26)
              {
                v83 = v81;
                MEMORY[0x20F2E6D80](10, 0xE100000000000000);
                MEMORY[0x20F2E6D80](0x3D65737561705C1BLL, 0xE800000000000000);
                MEMORY[0x20F2E6D80](v76, v77);
              }

              else
              {

                v83 = v81;
                MEMORY[0x20F2E6D80](10, 0xE100000000000000);
              }

              MEMORY[0x20F2E6D80](0x3D65737561705C1BLL, 0xE800000000000000);

              MEMORY[0x20F2E6D80](v80, v61);
LABEL_42:

              goto LABEL_43;
            }

            goto LABEL_17;
          }

LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_51:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t NLSessionActivitySegmentMarker.energySpokenDescription(formattingManager:)(void *a1)
{
  v3 = [v1 activeEnergyBurn];
  v4 = [a1 localizedStringWithActiveEnergy:v3 unitStyle:0];

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = [a1 localizedLongActiveEnergyUnitStringWithTextCase_];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  MEMORY[0x20F2E6D80](32, 0xE100000000000000);
  MEMORY[0x20F2E6D80](v10, v12);

  v13 = specialized static SpokenUtilities.appendEndPhrasePunctuation(phrase:)(v5, v7);

  return v13;
}

uint64_t specialized NLSessionActivitySegmentMarker.spokenDescription(formattingManager:alertType:)(uint64_t a1)
{
  v1 = NLSessionActivitySegmentMarker.segmentDescription(alertType:)(a1);
  v3 = v2;
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = MEMORY[0x20F2E6C00](0xD000000000000015, 0x800000020B461320);
  v7 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_20B4282E0;
  v13 = MEMORY[0x277D837D0];
  *(v12 + 56) = MEMORY[0x277D837D0];
  v14 = lazy protocol witness table accessor for type String and conformance String();
  *(v12 + 32) = v1;
  *(v12 + 40) = v3;
  *(v12 + 96) = v13;
  *(v12 + 104) = v14;
  *(v12 + 64) = v14;
  *(v12 + 72) = v9;
  *(v12 + 80) = v11;

  return String.init(format:_:)();
}

unint64_t Apple_Workout_Core_HeartRateCurrentValueType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Apple_Workout_Core_HeartRateCurrentValueType.rawValue.getter()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance Apple_Workout_Core_HeartRateCurrentValueType@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Enum.rawValue.getter in conformance Apple_Workout_Core_HeartRateCurrentValueType()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance Apple_Workout_Core_HeartRateCurrentValueType@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Apple_Workout_Core_HeartRateCurrentValueType(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_HeartRateCurrentValueType()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_HeartRateCurrentValueType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateCurrentValueType and conformance Apple_Workout_Core_HeartRateCurrentValueType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_HeartRateCurrentValueType()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_HeartRateCurrentValueType(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

double Apple_Workout_Core_HeartRateMetricsPublisher.currentHeartRate.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher() + 28);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher()
{
  result = type metadata singleton initialization cache for Apple_Workout_Core_HeartRateMetricsPublisher;
  if (!type metadata singleton initialization cache for Apple_Workout_Core_HeartRateMetricsPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_HeartRateMetricsPublisher.currentHeartRate.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Apple_Workout_Core_HeartRateMetricsPublisher.currentHeartRate.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher() + 28);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_HeartRateMetricsPublisher.currentHeartRate.modify;
}

Swift::Void __swiftcall Apple_Workout_Core_HeartRateMetricsPublisher.clearCurrentHeartRate()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher() + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

void Apple_Workout_Core_HeartRateMetricsPublisher.currentHeartRateValueType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Workout_Core_HeartRateMetricsPublisher.currentHeartRateValueType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

double Apple_Workout_Core_HeartRateMetricsPublisher.averageHeartRate.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher() + 32);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Apple_Workout_Core_HeartRateMetricsPublisher.averageHeartRate.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Apple_Workout_Core_HeartRateMetricsPublisher.averageHeartRate.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher() + 32);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_HeartRateMetricsPublisher.averageHeartRate.modify;
}

uint64_t Apple_Workout_Core_HeartRateMetricsPublisher.averageHeartRate.modify(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

Swift::Void __swiftcall Apple_Workout_Core_HeartRateMetricsPublisher.clearAverageHeartRate()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher() + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double Apple_Workout_Core_HeartRateMetricsPublisher.maximumHeartRate.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher() + 36);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Apple_Workout_Core_HeartRateMetricsPublisher.maximumHeartRate.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Apple_Workout_Core_HeartRateMetricsPublisher.maximumHeartRate.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher() + 36);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_HeartRateMetricsPublisher.maximumHeartRate.modify;
}

Swift::Void __swiftcall Apple_Workout_Core_HeartRateMetricsPublisher.clearMaximumHeartRate()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher() + 36);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Apple_Workout_Core_HeartRateMetricsPublisher.liveHeartRateZones.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  outlined init with copy of Apple_Workout_Core_LiveZones?(v1 + *(v7 + 40), v6);
  v8 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_LiveZones(v6, a1);
  }

  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  v10 = a1 + *(v8 + 24);
  UnknownStorage.init()();
  v11 = a1 + *(v8 + 28);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_0(v6, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  }

  return result;
}

uint64_t outlined init with copy of Apple_Workout_Core_LiveZones?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Apple_Workout_Core_LiveZones(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t key path getter for Apple_Workout_Core_HeartRateMetricsPublisher.liveHeartRateZones : Apple_Workout_Core_HeartRateMetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  outlined init with copy of Apple_Workout_Core_LiveZones?(a1 + *(v8 + 40), v7);
  v9 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_LiveZones(v7, a2);
  }

  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  v11 = a2 + *(v9 + 24);
  UnknownStorage.init()();
  v12 = a2 + *(v9 + 28);
  *v12 = 0;
  *(v12 + 4) = 1;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_HeartRateMetricsPublisher.liveHeartRateZones : Apple_Workout_Core_HeartRateMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_LiveZones(a1, v8);
  v9 = *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher() + 40);
  _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_0(a2 + v9, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  outlined init with take of Apple_Workout_Core_LiveZones(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Workout_Core_HeartRateMetricsPublisher.liveHeartRateZones.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher() + 40);
  _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_0(v1 + v3, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  outlined init with take of Apple_Workout_Core_LiveZones(a1, v1 + v3);
  v4 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Apple_Workout_Core_HeartRateMetricsPublisher.liveHeartRateZones.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher() + 40);
  *(v5 + 12) = v15;
  outlined init with copy of Apple_Workout_Core_LiveZones?(v1 + v15, v8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    *(v14 + 8) = 0;
    v17 = v14 + *(v9 + 24);
    UnknownStorage.init()();
    v18 = v14 + *(v9 + 28);
    *v18 = 0;
    *(v18 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_LiveZones(v8, v14);
  }

  return Apple_Workout_Core_HeartRateMetricsPublisher.liveHeartRateZones.modify;
}

void Apple_Workout_Core_HeartRateMetricsPublisher.liveHeartRateZones.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of Apple_Workout_Core_LiveZones((*a1)[5], v4);
    _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_0(v9 + v3, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
    outlined init with take of Apple_Workout_Core_LiveZones(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of Apple_Workout_Core_LiveZones(v5);
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_0(v9 + v3, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
    outlined init with take of Apple_Workout_Core_LiveZones(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t outlined init with copy of Apple_Workout_Core_LiveZones(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_LiveZones(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Apple_Workout_Core_HeartRateMetricsPublisher.hasLiveHeartRateZones.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  outlined init with copy of Apple_Workout_Core_LiveZones?(v0 + *(v5 + 40), v4);
  v6 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_0(v4, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  return v7;
}

Swift::Void __swiftcall Apple_Workout_Core_HeartRateMetricsPublisher.clearLiveHeartRateZones()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher() + 40);
  _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_0(v0 + v1, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Workout_Core_HeartRateMetricsPublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher() + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_HeartRateMetricsPublisher.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher() + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_HeartRateMetricsPublisher.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  v3 = a1 + v2[6];
  UnknownStorage.init()();
  v4 = a1 + v2[7];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a1 + v2[8];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1 + v2[9];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v2[10];
  v8 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, 1, 1, v8);
}

uint64_t static Apple_Workout_Core_HeartRateCurrentValueType._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

uint64_t Apple_Workout_Core_HeartRateMetricsPublisher.decodeMessage<A>(decoder:)()
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
        switch(result)
        {
          case 4:
            v3 = v0;
            v6 = *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher() + 36);
            goto LABEL_5;
          case 5:
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
          case 6:
            closure #6 in Apple_Workout_Core_HeartRateMetricsPublisher.decodeMessage<A>(decoder:)();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v3 = v0;
            v4 = *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher() + 28);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
            break;
          case 2:
            lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateCurrentValueType and conformance Apple_Workout_Core_HeartRateCurrentValueType();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 3:
            v3 = v0;
            v5 = *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher() + 32);
            goto LABEL_5;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #6 in Apple_Workout_Core_HeartRateMetricsPublisher.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher() + 40);
  type metadata accessor for Apple_Workout_Core_LiveZones(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_LiveZones and conformance Apple_Workout_Core_LiveZones, type metadata accessor for Apple_Workout_Core_LiveZones);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_Core_HeartRateMetricsPublisher.traverse<A>(visitor:)()
{
  result = closure #1 in Apple_Workout_Core_HeartRateMetricsPublisher.traverse<A>(visitor:)(v0);
  if (!v1)
  {
    if (*v0)
    {
      v4 = *v0;
      v5 = *(v0 + 8);
      lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateCurrentValueType and conformance Apple_Workout_Core_HeartRateCurrentValueType();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    closure #2 in Apple_Workout_Core_HeartRateMetricsPublisher.traverse<A>(visitor:)(v0);
    closure #3 in Apple_Workout_Core_HeartRateMetricsPublisher.traverse<A>(visitor:)(v0);
    if (*(v0 + 9) == 1)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    closure #4 in Apple_Workout_Core_HeartRateMetricsPublisher.traverse<A>(visitor:)(v0);
    v3 = v0 + *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher() + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_HeartRateMetricsPublisher.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  v3 = (a1 + *(result + 28));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateCurrentValueType and conformance Apple_Workout_Core_HeartRateCurrentValueType()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateCurrentValueType and conformance Apple_Workout_Core_HeartRateCurrentValueType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateCurrentValueType and conformance Apple_Workout_Core_HeartRateCurrentValueType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateCurrentValueType and conformance Apple_Workout_Core_HeartRateCurrentValueType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateCurrentValueType and conformance Apple_Workout_Core_HeartRateCurrentValueType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateCurrentValueType and conformance Apple_Workout_Core_HeartRateCurrentValueType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateCurrentValueType and conformance Apple_Workout_Core_HeartRateCurrentValueType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateCurrentValueType and conformance Apple_Workout_Core_HeartRateCurrentValueType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateCurrentValueType and conformance Apple_Workout_Core_HeartRateCurrentValueType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateCurrentValueType and conformance Apple_Workout_Core_HeartRateCurrentValueType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateCurrentValueType and conformance Apple_Workout_Core_HeartRateCurrentValueType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateCurrentValueType and conformance Apple_Workout_Core_HeartRateCurrentValueType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateCurrentValueType and conformance Apple_Workout_Core_HeartRateCurrentValueType);
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_Core_HeartRateMetricsPublisher.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  v3 = (a1 + *(result + 32));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in Apple_Workout_Core_HeartRateMetricsPublisher.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  v3 = (a1 + *(result + 36));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in Apple_Workout_Core_HeartRateMetricsPublisher.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  outlined init with copy of Apple_Workout_Core_LiveZones?(a1 + *(v11 + 40), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_0(v5, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  }

  outlined init with take of Apple_Workout_Core_LiveZones(v5, v10);
  lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_LiveZones and conformance Apple_Workout_Core_LiveZones, type metadata accessor for Apple_Workout_Core_LiveZones);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_LiveZones(v10);
}

Swift::Int Apple_Workout_Core_HeartRateMetricsPublisher.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_HeartRateMetricsPublisher@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = a2 + a1[6];
  UnknownStorage.init()();
  v5 = a1[8];
  v6 = a2 + a1[7];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1[9];
  v9 = a1[10];
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a2 + v9, 1, 1, v11);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_HeartRateMetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_HeartRateMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_HeartRateMetricsPublisher(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_HeartRateMetricsPublisher;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_HeartRateMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_HeartRateCurrentValueType@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
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

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_HeartRateMetricsPublisher(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_HeartRateMetricsPublisher()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_HeartRateMetricsPublisher()
{
  lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_HeartRateMetricsPublisher()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_HeartRateMetricsPublisher.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - v15;
  v17 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  v18 = v17[7];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 8);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (*v19 != *v21)
    {
      LOBYTE(v22) = 1;
    }

    if (v22)
    {
      goto LABEL_35;
    }
  }

  v23 = *a1;
  v24 = *a2;
  if (*(a1 + 8))
  {
    v23 = *a1 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v24)
    {
      if (v23 != 1)
      {
        goto LABEL_35;
      }
    }

    else if (v23)
    {
      goto LABEL_35;
    }
  }

  else if (v23 != v24)
  {
    goto LABEL_35;
  }

  v25 = v17[8];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 8);
  if (v27)
  {
    if (!v29)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      goto LABEL_35;
    }
  }

  v30 = v17[9];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 8);
  if (v32)
  {
    if (!v34)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      goto LABEL_35;
    }
  }

  if (*(a1 + 9) == *(a2 + 9))
  {
    v35 = v17;
    v36 = v17[10];
    v37 = *(v13 + 48);
    outlined init with copy of Apple_Workout_Core_LiveZones?(a1 + v36, v16);
    outlined init with copy of Apple_Workout_Core_LiveZones?(a2 + v36, &v16[v37]);
    v38 = *(v5 + 48);
    if (v38(v16, 1, v4) == 1)
    {
      if (v38(&v16[v37], 1, v4) == 1)
      {
        _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_0(v16, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
LABEL_38:
        v42 = v35[6];
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v39 = dispatch thunk of static Equatable.== infix(_:_:)();
        return v39 & 1;
      }

      goto LABEL_34;
    }

    outlined init with copy of Apple_Workout_Core_LiveZones?(v16, v12);
    if (v38(&v16[v37], 1, v4) == 1)
    {
      outlined destroy of Apple_Workout_Core_LiveZones(v12);
LABEL_34:
      _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_0(v16, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSg_ADtMR);
      goto LABEL_35;
    }

    outlined init with take of Apple_Workout_Core_LiveZones(&v16[v37], v8);
    v41 = static Apple_Workout_Core_LiveZones.== infix(_:_:)(v12, v8);
    outlined destroy of Apple_Workout_Core_LiveZones(v8);
    outlined destroy of Apple_Workout_Core_LiveZones(v12);
    _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_0(v16, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
    if (v41)
    {
      goto LABEL_38;
    }
  }

LABEL_35:
  v39 = 0;
  return v39 & 1;
}

unint64_t lazy protocol witness table accessor for type [Apple_Workout_Core_HeartRateCurrentValueType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Apple_Workout_Core_HeartRateCurrentValueType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Apple_Workout_Core_HeartRateCurrentValueType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore06Apple_a1_B26_HeartRateCurrentValueTypeOGMd, &_sSay11WorkoutCore06Apple_a1_B26_HeartRateCurrentValueTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Apple_Workout_Core_HeartRateCurrentValueType] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Apple_Workout_Core_HeartRateCurrentValueType(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Apple_Workout_Core_HeartRateCurrentValueType(uint64_t result, int a2, int a3)
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

uint64_t getEnumTag for Apple_Workout_Core_HeartRateCurrentValueType(uint64_t a1)
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

uint64_t destructiveInjectEnumTag for Apple_Workout_Core_HeartRateCurrentValueType(uint64_t result, int a2)
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

void type metadata completion function for Apple_Workout_Core_HeartRateMetricsPublisher()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Double?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Apple_Workout_Core_LiveZones?();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Apple_Workout_Core_LiveZones?()
{
  if (!lazy cache variable for type metadata for Apple_Workout_Core_LiveZones?)
  {
    type metadata accessor for Apple_Workout_Core_LiveZones(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Apple_Workout_Core_LiveZones?);
    }
  }
}

uint64_t _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DataLinkClient.mirroredClientDelegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t DataLinkClient.mirroredClientDelegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*DataLinkClient.mirroredClientDelegate.modify(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return DataLinkClient.mirroredClientDelegate.modify;
}

void key path setter for DataLinkClient.activationError : DataLinkClient(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
  v5 = v2;
}

void *DataLinkClient.activationError.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void DataLinkClient.activationError.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t key path getter for DataLinkClient.presenceDidChangeHandler : DataLinkClient@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(unsigned __int8 *a1, uint64_t *a2)@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = _sSbIeg_Iegyg_SbxRi_zRi0_zlyytIsegr_ytIegnnr_TRTA;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20AED3EDC(v4);
}

uint64_t _sSbIeg_Iegyg_SbxRi_zRi0_zlyytIsegr_ytIegnnr_TR(unsigned __int8 *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t (*)(), uint64_t))
{
  v4 = *a1;
  v6 = *a2;
  v5 = a2[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  a3(v4, _sytIegr_Ieg_TRTA_2, v7);
}

uint64_t key path setter for DataLinkClient.presenceDidChangeHandler : DataLinkClient(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _sSbxRi_zRi0_zlyytIsegr_ytIegnnr_SbIeg_Iegyg_TRTA;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 40);
  v9 = *(v7 + 48);
  *(v7 + 40) = v6;
  *(v7 + 48) = v5;
  sub_20AED3EDC(v3);
  return _sSbIeg_Iegyg_SgWOe_0(v8);
}

uint64_t _sSbxRi_zRi0_zlyytIsegr_ytIegnnr_SbIeg_Iegyg_TR(char a1, uint64_t a2, uint64_t a3, void (*a4)(char *, void *))
{
  v10 = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[0] = _sIeg_ytIegr_TRTA_2;
  v9[1] = v7;

  a4(&v10, v9);
}

uint64_t DataLinkClient.presenceDidChangeHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_20AED3EDC(v1);
  return v1;
}

uint64_t DataLinkClient.presenceDidChangeHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _sSbIeg_Iegyg_SgWOe_0(v5);
}

uint64_t key path getter for DataLinkClient.notificationHandler : DataLinkClient@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed WorkoutNotification) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20AED3EDC(v4);
}

uint64_t key path setter for DataLinkClient.notificationHandler : DataLinkClient(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed WorkoutNotification) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 56);
  v9 = *(v7 + 64);
  *(v7 + 56) = v6;
  *(v7 + 64) = v5;
  sub_20AED3EDC(v3);
  return _sSbIeg_Iegyg_SgWOe_0(v8);
}

uint64_t DataLinkClient.notificationHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_20AED3EDC(v1);
  return v1;
}

uint64_t DataLinkClient.notificationHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  v6 = *(v2 + 64);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return _sSbIeg_Iegyg_SgWOe_0(v5);
}

uint64_t key path getter for DataLinkClient.metricsUpdateHandler : DataLinkClient@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed MetricsPublisher) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20AED3EDC(v4);
}

uint64_t key path setter for DataLinkClient.metricsUpdateHandler : DataLinkClient(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed MetricsPublisher) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 72);
  v9 = *(v7 + 80);
  *(v7 + 72) = v6;
  *(v7 + 80) = v5;
  sub_20AED3EDC(v3);
  return _sSbIeg_Iegyg_SgWOe_0(v8);
}

uint64_t DataLinkClient.metricsUpdateHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  sub_20AED3EDC(v1);
  return v1;
}

uint64_t DataLinkClient.metricsUpdateHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return _sSbIeg_Iegyg_SgWOe_0(v5);
}

uint64_t DataLinkClient.connection.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  return swift_unknownObjectRetain();
}

uint64_t DataLinkClient.sessionUUID.getter()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  ObjectType = swift_getObjectType();
  return (*(*(v1 + 8) + 72))(ObjectType);
}

void *DataLinkClient.__allocating_init(metricsPublisher:)(void *a1)
{
  swift_allocObject();
  v2 = specialized DataLinkClient.init(metricsPublisher:)(a1);

  return v2;
}

void *DataLinkClient.init(metricsPublisher:)(void *a1)
{
  v2 = specialized DataLinkClient.init(metricsPublisher:)(a1);

  return v2;
}

uint64_t closure #1 in DataLinkClient.init(metricsPublisher:)(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  v14 = objc_opt_self();
  v15 = a1;

  if ([v14 isMainThread])
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      swift_beginAccess();
      v18 = *(v17 + 56);
      sub_20AED3EDC(v18);

      if (v18)
      {
        v18(v15);
        _sSbIeg_Iegyg_SgWOe_0(v18);
      }
    }
  }

  else
  {
    type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v26 = static OS_dispatch_queue.main.getter();
    v19 = swift_allocObject();
    *(v19 + 16) = partial apply for closure #1 in closure #1 in DataLinkClient.init(metricsPublisher:);
    *(v19 + 24) = v13;
    aBlock[4] = partial apply for closure #1 in static DataLinkClient.onMainThread(closure:);
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_97_0;
    v24 = _Block_copy(aBlock);
    v25 = v8;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DataLinkError and conformance DataLinkError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    v23 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_5(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v20 = v24;
    v21 = v26;
    MEMORY[0x20F2E7580](0, v11, v6, v24);
    _Block_release(v20);

    (*(v3 + 8))(v6, v2);
    (*(v25 + 8))(v11, v23);
  }
}

uint64_t closure #1 in closure #1 in DataLinkClient.init(metricsPublisher:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + 56);
    sub_20AED3EDC(v5);

    if (v5)
    {
      v5(a2);
      return _sSbIeg_Iegyg_SgWOe_0(v5);
    }
  }

  return result;
}

uint64_t closure #2 in DataLinkClient.init(metricsPublisher:)(char a1, uint64_t a2, uint64_t a3)
{
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
    v10 = swift_slowAlloc();
    *v9 = 67109378;
    *(v9 + 4) = a1 & 1;
    *(v9 + 8) = 2112;
    v11 = [objc_opt_self() currentThread];
    *(v9 + 10) = v11;
    *v10 = v11;
    _os_log_impl(&dword_20AEA4000, v7, v8, "Presence of host is now %{BOOL}d, thread: %@", v9, 0x12u);
    outlined destroy of DataLinkMirroredClientExpectation?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    swift_beginAccess();
    v14 = *(v13 + 40);
    sub_20AED3EDC(v14);

    if (v14)
    {
      v14(a1 & 1, a2, a3);
      return _sSbIeg_Iegyg_SgWOe_0(v14);
    }
  }

  return result;
}

uint64_t closure #3 in DataLinkClient.init(metricsPublisher:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    v4 = *(v3 + 72);
    sub_20AED3EDC(v4);

    if (v4)
    {
      v4(a1);
      return _sSbIeg_Iegyg_SgWOe_0(v4);
    }
  }

  return result;
}

id DataLinkClient.deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = *(v0 + 120);
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v4; result = [*(*(v1 + 56) + ((v9 << 9) | (8 * v10))) invalidate])
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      v11 = *(v0 + 120);
      *(v0 + 120) = MEMORY[0x277D84F98];

      outlined destroy of weak DataLinkMirroredClientDelegate?(v0 + 16);

      v12 = *(v0 + 48);
      _sSbIeg_Iegyg_SgWOe_0(*(v0 + 40));
      v13 = *(v0 + 64);
      _sSbIeg_Iegyg_SgWOe_0(*(v0 + 56));
      v14 = *(v0 + 80);
      _sSbIeg_Iegyg_SgWOe_0(*(v0 + 72));

      v15 = *(v0 + 96);
      swift_unknownObjectRelease();

      v16 = *(v0 + 120);

      return v0;
    }

    v4 = *(v1 + 64 + 8 * v9);
    ++i;
    if (v4)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t DataLinkClient.__deallocating_deinit()
{
  DataLinkClient.deinit();

  return swift_deallocClassInstance();
}

void closure #1 in DataLinkClient.activateLink()()
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
    *v2 = 0;
    _os_log_impl(&dword_20AEA4000, oslog, v1, "Client data link activated", v2, 2u);
    MEMORY[0x20F2E9420](v2, -1, -1);
  }
}

uint64_t DataLinkClient.activateLink(activated:)(uint64_t a1, uint64_t a2)
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
    _os_log_impl(&dword_20AEA4000, v7, v8, "Activating client data link", v9, 2u);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  v11 = *(v3 + 96);
  v10 = *(v3 + 104);
  ObjectType = swift_getObjectType();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = *(*(v10 + 8) + 8);
  v15 = *(v14 + 8);
  swift_unknownObjectRetain();

  v15(partial apply for closure #1 in DataLinkClient.activateLink(activated:), v13, a1, a2, ObjectType, v14);
  swift_unknownObjectRelease();
}

uint64_t closure #1 in DataLinkClient.activateLink(activated:)(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (a1)
    {
      v4 = a1;
      if (one-time initialization token for dataLink != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static WOLog.dataLink);
      v6 = a1;
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v7, v8))
      {

        goto LABEL_13;
      }

      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = a1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_20AEA4000, v7, v8, "Failed to activate connection: %@", v9, 0xCu);
      outlined destroy of DataLinkMirroredClientExpectation?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v10, -1, -1);
      MEMORY[0x20F2E9420](v9, -1, -1);
    }

    else
    {
      if (one-time initialization token for dataLink != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static WOLog.dataLink);
      v7 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_20AEA4000, v7, v14, "Did activate link successfully", v15, 2u);
        MEMORY[0x20F2E9420](v15, -1, -1);
      }
    }

LABEL_13:
    swift_beginAccess();
    v16 = *(v3 + 32);
    *(v3 + 32) = a1;

    v17 = a1;
  }

  return result;
}

uint64_t DataLinkClient.send(command:acknowledged:)(char *a1, uint64_t a2, uint64_t a3)
{
  v19 = type metadata accessor for UUID();
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v19);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  UUID.init()();
  v13 = *(v3 + 96);
  v12 = *(v3 + 104);
  ObjectType = swift_getObjectType();
  v20 = v11;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v16 = *(v12 + 8);
  v17 = *(v16 + 40);

  v17(&v20, v10, partial apply for closure #1 in DataLinkClient.send(command:acknowledged:), v15, ObjectType, v16);

  return (*(v7 + 8))(v10, v19);
}

Swift::Void __swiftcall DataLinkClient.endSession()()
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
    _os_log_impl(&dword_20AEA4000, v3, v4, "[mirrored] endSession", v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  v7 = *(v1 + 96);
  v6 = *(v1 + 104);
  ObjectType = swift_getObjectType();
  (*(v6 + 72))(closure #1 in DataLinkClient.endSession(), 0, ObjectType, v6);
}

void closure #1 in DataLinkClient.endSession()(char a1, void *a2)
{
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.dataLink);
  v5 = a2;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 67109378;
    *(v7 + 4) = a1 & 1;
    *(v7 + 8) = 2112;
    if (a2)
    {
      v9 = a2;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      v11 = v10;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    *(v7 + 10) = v10;
    *v8 = v11;
    _os_log_impl(&dword_20AEA4000, oslog, v6, "[mirrored] endSession completion (success: %{BOOL}d, error: %@)", v7, 0x12u);
    outlined destroy of DataLinkMirroredClientExpectation?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }
}

uint64_t DataLinkClient.sendMirroredClient(with:perform:)(uint64_t a1, uint64_t (*a2)(void, void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for DataLinkMirroredClientExpectation();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of DataLinkMirroredClientExpectation?(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of DataLinkMirroredClientExpectation?(v8, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
    return a2(*(v2 + 96), *(v2 + 104));
  }

  else
  {
    outlined init with take of DataLinkMirroredClientExpectation(v8, v13, type metadata accessor for DataLinkMirroredClientExpectation);
    DataLinkClient.addClientExpectation(_:)(v13);
    a2(*(v2 + 96), *(v2 + 104));
    return outlined destroy of DataLinkMirroredClientExpectation(v13, type metadata accessor for DataLinkMirroredClientExpectation);
  }
}

void DataLinkClient.addClientExpectation(_:)(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DataLinkMirroredClientExpectation();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v69 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v68 = &v63 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v63 - v11);
  MEMORY[0x28223BE20](v10);
  v14 = &v63 - v13;
  v15 = *a1;
  v16 = a1[1];
  swift_beginAccess();
  v17 = specialized Dictionary._Variant.removeValue(forKey:)(v15, v16);
  swift_endAccess();
  p_cache = &OBJC_METACLASS____TtC11WorkoutCore31MultiModalityWidgetDataProvider.cache;
  if (v17)
  {
    [v17 invalidate];
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static WOLog.dataLink);
    outlined init with copy of DataLinkMirroredClientExpectation(a1, v14, type metadata accessor for DataLinkMirroredClientExpectation);
    outlined init with copy of DataLinkMirroredClientExpectation(a1, v12, type metadata accessor for DataLinkMirroredClientExpectation);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v65 = v21;
      v23 = v22;
      v66 = swift_slowAlloc();
      v70 = v66;
      *v23 = 136315394;
      v64 = v20;
      v24 = DataLinkMirroredClientExpectation.description.getter();
      v67 = v5;
      v26 = v25;
      outlined destroy of DataLinkMirroredClientExpectation(v14, type metadata accessor for DataLinkMirroredClientExpectation);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v70);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      aBlock = *v12;
      lazy protocol witness table accessor for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected();
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      p_cache = (&OBJC_METACLASS____TtC11WorkoutCore31MultiModalityWidgetDataProvider + 16);
      outlined destroy of DataLinkMirroredClientExpectation(v12, type metadata accessor for DataLinkMirroredClientExpectation);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v70);
      v5 = v67;

      *(v23 + 14) = v31;
      v32 = v64;
      _os_log_impl(&dword_20AEA4000, v64, v65, "[mirrored] addClientExpectation (%s) is replacing existing expected (%s)", v23, 0x16u);
      v33 = v66;
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v33, -1, -1);
      MEMORY[0x20F2E9420](v23, -1, -1);
    }

    else
    {

      outlined destroy of DataLinkMirroredClientExpectation(v12, type metadata accessor for DataLinkMirroredClientExpectation);
      outlined destroy of DataLinkMirroredClientExpectation(v14, type metadata accessor for DataLinkMirroredClientExpectation);
    }
  }

  v34 = objc_opt_self();
  v35 = *(a1 + 2);
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = p_cache;
  v38 = v68;
  outlined init with copy of DataLinkMirroredClientExpectation(a1, v68, type metadata accessor for DataLinkMirroredClientExpectation);
  v39 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = v36;
  outlined init with take of DataLinkMirroredClientExpectation(v38, v40 + v39, type metadata accessor for DataLinkMirroredClientExpectation);
  v74 = partial apply for closure #1 in DataLinkClient.addClientExpectation(_:);
  v75 = v40;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v72 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
  v73 = &block_descriptor_44;
  v41 = _Block_copy(&aBlock);

  v42 = [v34 scheduledTimerWithTimeInterval:0 repeats:v41 block:v35];
  _Block_release(v41);
  v43 = *a1;
  v44 = a1[1];
  swift_beginAccess();
  v45 = v42;
  v46 = *(v2 + 120);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v70 = *(v2 + 120);
  *(v2 + 120) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v45, v43, v44, isUniquelyReferenced_nonNull_native);
  *(v2 + 120) = v70;
  swift_endAccess();
  if (v37[310] != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  __swift_project_value_buffer(v48, static WOLog.dataLink);
  v49 = v69;
  outlined init with copy of DataLinkMirroredClientExpectation(a1, v69, type metadata accessor for DataLinkMirroredClientExpectation);

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *&aBlock = v53;
    *v52 = 136315394;
    v54 = DataLinkMirroredClientExpectation.description.getter();
    v56 = v55;
    outlined destroy of DataLinkMirroredClientExpectation(v49, type metadata accessor for DataLinkMirroredClientExpectation);
    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, &aBlock);

    *(v52 + 4) = v57;
    *(v52 + 12) = 2080;
    v58 = *(v2 + 120);
    type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
    lazy protocol witness table accessor for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected();

    v59 = Dictionary.Keys.description.getter();
    v61 = v60;

    v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, &aBlock);

    *(v52 + 14) = v62;
    _os_log_impl(&dword_20AEA4000, v50, v51, "[mirrored] addClientExpectation (%s) added, all expected %s", v52, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v53, -1, -1);
    MEMORY[0x20F2E9420](v52, -1, -1);
  }

  else
  {

    outlined destroy of DataLinkMirroredClientExpectation(v49, type metadata accessor for DataLinkMirroredClientExpectation);
  }
}

uint64_t closure #1 in DataLinkClient.addClientExpectation(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v89 = a3;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v76[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v85 = &v76[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for DataLinkMirroredClientExpectation();
  v87 = *(v12 - 8);
  v13 = *(v87 + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v88 = &v76[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v76[-v18];
  MEMORY[0x28223BE20](v17);
  v21 = &v76[-v20];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = result;
    v80 = v9;
    v81 = v7;
    v82 = v8;
    v86 = &v76[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v83 = v4;
    v84 = v3;
    swift_beginAccess();
    v24 = *(v23 + 120);
    v25 = 1 << *(v24 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v24 + 64);
    v28 = (v25 + 63) >> 6;
    v29 = *(v23 + 120);
    swift_bridgeObjectRetain_n();
    v30 = 0;
    v31 = &selRef_adjustedStatisticsForStatistics_;
    if (v27)
    {
      while (1)
      {
        v32 = v30;
LABEL_10:
        v33 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
        [*(*(v24 + 56) + ((v32 << 9) | (8 * v33))) invalidate];
        if (!v27)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v32 >= v28)
      {
        break;
      }

      v27 = *(v24 + 64 + 8 * v32);
      ++v30;
      if (v27)
      {
        v30 = v32;
        goto LABEL_10;
      }
    }

    v34 = *(v23 + 120);
    *(v23 + 120) = MEMORY[0x277D84F98];

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v31 = Strong;
      v30 = *(v23 + 24);
      v27 = v89;
      if (one-time initialization token for dataLink == -1)
      {
LABEL_14:
        v36 = type metadata accessor for Logger();
        __swift_project_value_buffer(v36, static WOLog.dataLink);
        outlined init with copy of DataLinkMirroredClientExpectation(v27, v19, type metadata accessor for DataLinkMirroredClientExpectation);

        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();

        v39 = os_log_type_enabled(v37, v38);
        v79 = v31;
        if (v39)
        {
          v40 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          aBlock[0] = v78;
          *v40 = 136315394;
          v77 = v38;
          v41 = DataLinkMirroredClientExpectation.description.getter();
          v42 = v27;
          v43 = v30;
          v45 = v44;
          outlined destroy of DataLinkMirroredClientExpectation(v19, type metadata accessor for DataLinkMirroredClientExpectation);
          v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v45, aBlock);
          v30 = v43;
          v27 = v42;

          *(v40 + 4) = v46;
          *(v40 + 12) = 2080;
          type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
          lazy protocol witness table accessor for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected();
          v47 = Dictionary.Keys.description.getter();
          v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, aBlock);

          *(v40 + 14) = v49;
          _os_log_impl(&dword_20AEA4000, v37, v77, "[mirrored] call failedClientExpectation (%s) due timeout, cleaned up all expected %s", v40, 0x16u);
          v50 = v78;
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v50, -1, -1);
          v51 = v40;
          v31 = v79;
          MEMORY[0x20F2E9420](v51, -1, -1);
        }

        else
        {

          outlined destroy of DataLinkMirroredClientExpectation(v19, type metadata accessor for DataLinkMirroredClientExpectation);
        }

        v63 = v86;
        v62 = v87;
        v64 = v88;
        outlined init with copy of DataLinkMirroredClientExpectation(v27, v88, type metadata accessor for DataLinkMirroredClientExpectation);
        outlined init with copy of DataLinkMirroredClientExpectation(v64, v63, type metadata accessor for DataLinkMirroredClientExpectation);
        v65 = (*(v62 + 80) + 32) & ~*(v62 + 80);
        v66 = swift_allocObject();
        *(v66 + 16) = v31;
        *(v66 + 24) = v30;
        outlined init with take of DataLinkMirroredClientExpectation(v64, v66 + v65, type metadata accessor for DataLinkMirroredClientExpectation);
        v67 = objc_opt_self();
        swift_unknownObjectRetain();
        if ([v67 isMainThread])
        {
          ObjectType = swift_getObjectType();
          (*(v30 + 56))(v63, ObjectType, v30);

          swift_unknownObjectRelease();
          v69 = v63;
        }

        else
        {
          type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
          v89 = static OS_dispatch_queue.main.getter();
          v70 = swift_allocObject();
          *(v70 + 16) = partial apply for closure #2 in closure #1 in DataLinkClient.addClientExpectation(_:);
          *(v70 + 24) = v66;
          aBlock[4] = _s11WorkoutCore17DispatchUtilitiesC22ensureMainQueueOrAsync5blockyyyc_tFZyyScMYccfU_TA_6;
          aBlock[5] = v70;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
          aBlock[3] = &block_descriptor_83;
          v71 = _Block_copy(aBlock);

          v72 = v85;
          static DispatchQoS.unspecified.getter();
          aBlock[0] = MEMORY[0x277D84F90];
          lazy protocol witness table accessor for type DataLinkError and conformance DataLinkError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_5(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          v73 = v81;
          v74 = v84;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v75 = v89;
          MEMORY[0x20F2E7580](0, v72, v73, v71);
          _Block_release(v71);

          swift_unknownObjectRelease();

          (*(v83 + 8))(v73, v74);
          (*(v80 + 8))(v72, v82);
          v69 = v86;
        }

        return outlined destroy of DataLinkMirroredClientExpectation(v69, type metadata accessor for DataLinkMirroredClientExpectation);
      }

LABEL_28:
      swift_once();
      goto LABEL_14;
    }

    v52 = v89;
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, static WOLog.dataLink);
    outlined init with copy of DataLinkMirroredClientExpectation(v52, v21, type metadata accessor for DataLinkMirroredClientExpectation);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      aBlock[0] = v57;
      *v56 = 136315138;
      v58 = DataLinkMirroredClientExpectation.description.getter();
      v60 = v59;
      outlined destroy of DataLinkMirroredClientExpectation(v21, type metadata accessor for DataLinkMirroredClientExpectation);
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, aBlock);

      *(v56 + 4) = v61;
      _os_log_impl(&dword_20AEA4000, v54, v55, "[mirrored] cannot call failedClientExpectation (%s), mirroredClientDelegate is not set", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x20F2E9420](v57, -1, -1);
      MEMORY[0x20F2E9420](v56, -1, -1);
    }

    v69 = v21;
    return outlined destroy of DataLinkMirroredClientExpectation(v69, type metadata accessor for DataLinkMirroredClientExpectation);
  }

  return result;
}

void DataLinkClient.receivedMirroredHostClearExpected(_:)(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  isa = v4[-1].isa;
  v6 = *(isa + 8);
  MEMORY[0x28223BE20](v4);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  v9 = a1[1];
  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(isa + 13))(v8, *MEMORY[0x277D85200], v4);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(isa + 1))(v8, v4);
  if ((a1 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  swift_beginAccess();
  v4 = specialized Dictionary._Variant.removeValue(forKey:)(v10, v9);
  swift_endAccess();
  if (v4)
  {
    if (one-time initialization token for dataLink == -1)
    {
LABEL_4:
      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static WOLog.dataLink);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v36 = v15;
        v37 = v10;
        *v14 = 136315394;
        v38 = v9;
        lazy protocol witness table accessor for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected();
        v16 = dispatch thunk of CustomStringConvertible.description.getter();
        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v36);

        *(v14 + 4) = v18;
        *(v14 + 12) = 2080;
        v19 = *(v2 + 120);
        type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
        lazy protocol witness table accessor for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected();

        v20 = Dictionary.Keys.description.getter();
        v22 = v21;

        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v36);

        *(v14 + 14) = v23;
        _os_log_impl(&dword_20AEA4000, v12, v13, "[mirrored] assertReceivedMirroredHostMessage fulfilled client expectation for (%s), all expected %s", v14, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v15, -1, -1);
        MEMORY[0x20F2E9420](v14, -1, -1);
      }

      [v4 invalidate];
      goto LABEL_11;
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static WOLog.dataLink);

  v4 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v36 = v27;
    v37 = v10;
    *v26 = 136315394;
    v38 = v9;
    lazy protocol witness table accessor for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected();
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v36);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    v31 = *(v2 + 120);
    type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
    lazy protocol witness table accessor for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected();

    v32 = Dictionary.Keys.description.getter();
    v34 = v33;

    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v36);

    *(v26 + 14) = v35;
    _os_log_impl(&dword_20AEA4000, v4, v25, "[mirrored] assertReceivedMirroredHostMessage no client expectation for (%s), all expected %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v27, -1, -1);
    MEMORY[0x20F2E9420](v26, -1, -1);
  }

LABEL_11:
}

Swift::Void __swiftcall DataLinkClient.removeAllClientExpectations()()
{
  v1 = v0;
  if (one-time initialization token for dataLink != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static WOLog.dataLink);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v22 = v6;
      *v5 = 136315138;
      swift_beginAccess();
      v7 = *(v1 + 120);
      type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
      lazy protocol witness table accessor for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected();

      v8 = Dictionary.Keys.description.getter();
      v10 = v9;

      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v22);

      *(v5 + 4) = v11;
      _os_log_impl(&dword_20AEA4000, v3, v4, "[mirrored] removeAllClientExpectations %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x20F2E9420](v6, -1, -1);
      MEMORY[0x20F2E9420](v5, -1, -1);
    }

    swift_beginAccess();
    v12 = *(v1 + 120);
    if (!*(v12 + 16))
    {
      break;
    }

    v13 = 1 << *(v12 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v12 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = *(v1 + 120);
    swift_bridgeObjectRetain_n();
    v18 = 0;
    while (v15)
    {
      v19 = v18;
LABEL_13:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      [*(*(v12 + 56) + ((v19 << 9) | (8 * v20))) invalidate];
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v16)
      {

        v21 = *(v1 + 120);
        *(v1 + 120) = MEMORY[0x277D84F98];

        return;
      }

      v15 = *(v12 + 64 + 8 * v19);
      ++v18;
      if (v15)
      {
        v18 = v19;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_18:
    swift_once();
  }
}

uint64_t DataLinkClient.sendMirroredClientCommand(_:clientExpectation:acknowledged:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v27 - v14;
  v16 = *a1;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = swift_allocObject();
  swift_weakInit();
  outlined init with copy of DataLinkMirroredClientExpectation?(a2, v11);
  type metadata accessor for MainActor();

  v19 = static MainActor.shared.getter();
  v20 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v21 = v20 + v9;
  v22 = (v20 + v9) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  v23[2] = v19;
  v23[3] = v24;
  v23[4] = v18;
  outlined init with take of DataLinkMirroredClientExpectation?(v11, v23 + v20);
  *(v23 + v21) = v16;
  v25 = v23 + v22;
  *(v25 + 1) = v28;
  *(v25 + 2) = a4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in DataLinkClient.sendMirroredClientCommand(_:clientExpectation:acknowledged:), v23);
}

uint64_t closure #1 in DataLinkClient.sendMirroredClientCommand(_:clientExpectation:acknowledged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 88) = a6;
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  *(v8 + 40) = a1;
  type metadata accessor for MainActor();
  *(v8 + 80) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in DataLinkClient.sendMirroredClientCommand(_:clientExpectation:acknowledged:), v10, v9);
}

uint64_t closure #1 in DataLinkClient.sendMirroredClientCommand(_:clientExpectation:acknowledged:)()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(v0 + 88);
    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    v7 = swift_task_alloc();
    v8 = *(v0 + 64);
    *(v7 + 16) = v4;
    *(v7 + 24) = v5;
    *(v7 + 32) = v6;
    *(v7 + 40) = v8;
    DataLinkClient.sendMirroredClient(with:perform:)(v5, partial apply for closure #1 in closure #1 in DataLinkClient.sendMirroredClientCommand(_:clientExpectation:acknowledged:));
  }

  **(v0 + 40) = Strong == 0;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t closure #1 in closure #1 in DataLinkClient.sendMirroredClientCommand(_:clientExpectation:acknowledged:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v31 = a7;
  v28[1] = a1;
  v29 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[0] = swift_getObjectType();
  v32 = a3;
  UUID.init()();
  outlined init with copy of DataLinkMirroredClientExpectation?(a4, v14);
  v20 = (*(v11 + 80) + 17) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  outlined init with take of DataLinkMirroredClientExpectation?(v14, v22 + v20);
  *(v22 + v21) = a5;
  v23 = (v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8));
  v24 = v31;
  *v23 = v30;
  v23[1] = v24;
  v25 = v29;
  v26 = *(v29 + 40);

  v26(&v32, v19, partial apply for closure #1 in closure #1 in closure #1 in DataLinkClient.sendMirroredClientCommand(_:clientExpectation:acknowledged:), v22, v28[0], v25);

  return (*(v16 + 8))(v19, v15);
}

uint64_t closure #1 in closure #1 in closure #1 in DataLinkClient.sendMirroredClientCommand(_:clientExpectation:acknowledged:)(int a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void), uint64_t a7)
{
  v42 = a7;
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - v13;
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static WOLog.dataLink);
  outlined init with copy of DataLinkMirroredClientExpectation?(a4, v14);
  v16 = a2;

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v41 = a6;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v45 = v40;
    *v19 = 136316162;
    if (a3)
    {
      if (a3 == 1)
      {
        v21 = 0xD000000000000023;
      }

      else
      {
        v21 = 0x70736552676E6970;
      }

      if (a3 == 1)
      {
        v22 = 0x800000020B45EE50;
      }

      else
      {
        v22 = 0xEC00000065736E6FLL;
      }
    }

    else
    {
      v21 = 0xD00000000000001BLL;
      v22 = 0x800000020B45EE80;
    }

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v45);

    *(v19 + 4) = v23;
    *(v19 + 12) = 1024;
    *(v19 + 14) = v43 & 1;
    *(v19 + 18) = 2112;
    if (a2)
    {
      v24 = a2;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      v26 = v25;
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }

    *(v19 + 20) = v25;
    *v20 = v26;
    *(v19 + 28) = 2080;
    v27 = Optional.description.getter();
    v29 = v28;
    outlined destroy of DataLinkMirroredClientExpectation?(v14, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v45);

    *(v19 + 30) = v30;
    *(v19 + 38) = 2080;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v32 = Strong;
      swift_beginAccess();
      v33 = *(v32 + 120);
    }

    else
    {
      v33 = 0;
    }

    v44 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVy11WorkoutCore30DataLinkMirroredClientExpectedOSo7NSTimerC_GSgMd, &_sSD4KeysVy11WorkoutCore30DataLinkMirroredClientExpectedOSo7NSTimerC_GSgMR);
    v34 = Optional.description.getter();
    v36 = v35;

    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v45);

    *(v19 + 40) = v37;
    _os_log_impl(&dword_20AEA4000, v17, v18, "[mirrored] sendMirroredClientCommand acknowledged (%s) (success: %{BOOL}d, error: %@) clientExpectation (%s) all expected %s", v19, 0x30u);
    outlined destroy of DataLinkMirroredClientExpectation?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v20, -1, -1);
    v38 = v40;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v38, -1, -1);
    MEMORY[0x20F2E9420](v19, -1, -1);

    a6 = v41;
  }

  else
  {

    outlined destroy of DataLinkMirroredClientExpectation?(v14, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  }

  return a6(v43 & 1, a2);
}

uint64_t DataLinkClient.sendMirroredClientMachTimestampResponse(_:clientExpectation:acknowledged:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v29 - v15;
  v17 = *a1;
  v18 = a1[1];
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  swift_weakInit();
  outlined init with copy of DataLinkMirroredClientExpectation?(a2, v12);
  type metadata accessor for MainActor();

  v21 = static MainActor.shared.getter();
  v22 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v23 = (v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  v24[2] = v21;
  v24[3] = v25;
  v24[4] = v20;
  outlined init with take of DataLinkMirroredClientExpectation?(v12, v24 + v22);
  v26 = (v24 + v23);
  *v26 = v17;
  v26[1] = v18;
  v27 = (v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v27 = a3;
  v27[1] = a4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v16, &async function pointer to partial apply for closure #1 in DataLinkClient.sendMirroredClientMachTimestampResponse(_:clientExpectation:acknowledged:), v24);
}

uint64_t closure #1 in DataLinkClient.sendMirroredClientMachTimestampResponse(_:clientExpectation:acknowledged:)(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 80) = a8;
  *(v9 + 88) = a9;
  *(v9 + 64) = a2;
  *(v9 + 72) = a3;
  *(v9 + 48) = a6;
  *(v9 + 56) = a7;
  *(v9 + 40) = a1;
  type metadata accessor for MainActor();
  *(v9 + 96) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in DataLinkClient.sendMirroredClientMachTimestampResponse(_:clientExpectation:acknowledged:), v11, v10);
}

uint64_t closure #1 in DataLinkClient.sendMirroredClientMachTimestampResponse(_:clientExpectation:acknowledged:)()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 48);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(v0 + 64);
    v4 = *(v0 + 72);
    v7 = *(v0 + 48);
    v6 = *(v0 + 56);
    v8 = swift_task_alloc();
    v9 = *(v0 + 80);
    *(v8 + 16) = v5;
    *(v8 + 24) = v4;
    *(v8 + 32) = v6;
    *(v8 + 40) = v7;
    *(v8 + 48) = v9;
    DataLinkClient.sendMirroredClient(with:perform:)(v6, partial apply for closure #1 in closure #1 in DataLinkClient.sendMirroredClientMachTimestampResponse(_:clientExpectation:acknowledged:));
  }

  **(v0 + 40) = Strong == 0;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t closure #1 in closure #1 in DataLinkClient.sendMirroredClientMachTimestampResponse(_:clientExpectation:acknowledged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v33 = a5;
  v34 = a6;
  v31 = a1;
  v32 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v16 = &v31 - v15;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  *v35 = a7;
  *&v35[1] = a8;
  UUID.init()();
  outlined init with copy of DataLinkMirroredClientExpectation?(a3, v16);
  v23 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v24 = (v14 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = a7;
  *(v25 + 24) = a8;
  outlined init with take of DataLinkMirroredClientExpectation?(v16, v25 + v23);
  *(v25 + v24) = a4;
  v26 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  v27 = v34;
  *v26 = v33;
  v26[1] = v27;
  v28 = v32;
  v29 = *(v32 + 48);

  v29(v35, v21, partial apply for closure #1 in closure #1 in closure #1 in DataLinkClient.sendMirroredClientMachTimestampResponse(_:clientExpectation:acknowledged:), v25, ObjectType, v28);

  return (*(v18 + 8))(v21, v17);
}

uint64_t closure #1 in closure #1 in closure #1 in DataLinkClient.sendMirroredClientMachTimestampResponse(_:clientExpectation:acknowledged:)(int a1, void *a2, uint64_t a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(void, void), uint64_t a8)
{
  v45 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v43 - v16;
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static WOLog.dataLink);
  outlined init with copy of DataLinkMirroredClientExpectation?(a3, v17);
  v19 = a2;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v43[1] = a8;
    v44 = a7;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v43[0] = swift_slowAlloc();
    v49 = v43[0];
    *v22 = 136316162;
    v47 = a4;
    v48 = a5;
    lazy protocol witness table accessor for type MirroredClientMachTimestampResponse and conformance MirroredClientMachTimestampResponse();
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v49);

    *(v22 + 4) = v26;
    *(v22 + 12) = 1024;
    *(v22 + 14) = v45 & 1;
    *(v22 + 18) = 2112;
    if (a2)
    {
      v27 = a2;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      v29 = v28;
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }

    *(v22 + 20) = v28;
    *v23 = v29;
    *(v22 + 28) = 2080;
    v30 = Optional.description.getter();
    v32 = v31;
    outlined destroy of DataLinkMirroredClientExpectation?(v17, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v49);

    *(v22 + 30) = v33;
    *(v22 + 38) = 2080;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v35 = Strong;
      swift_beginAccess();
      v36 = *(v35 + 120);
    }

    else
    {
      v36 = 0;
    }

    v46 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVy11WorkoutCore30DataLinkMirroredClientExpectedOSo7NSTimerC_GSgMd, &_sSD4KeysVy11WorkoutCore30DataLinkMirroredClientExpectedOSo7NSTimerC_GSgMR);
    v37 = Optional.description.getter();
    v39 = v38;

    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v49);

    *(v22 + 40) = v40;
    _os_log_impl(&dword_20AEA4000, v20, v21, "[mirrored] sendMirroredClientMachTimestampResponse acknowledged (%s) (success: %{BOOL}d, error: %@) clientExpectation (%s) all expected %s", v22, 0x30u);
    outlined destroy of DataLinkMirroredClientExpectation?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v23, -1, -1);
    v41 = v43[0];
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v41, -1, -1);
    MEMORY[0x20F2E9420](v22, -1, -1);

    a7 = v44;
  }

  else
  {

    outlined destroy of DataLinkMirroredClientExpectation?(v17, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  }

  return a7(v45 & 1, a2);
}

uint64_t DataLinkClient.sendMirroredClientAlertStackResponse(_:clientExpectation:acknowledged:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v27 - v14;
  v16 = a1[1];
  v29 = *a1;
  v28 = *(a1 + 16);
  v27 = a1[3];
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = swift_allocObject();
  swift_weakInit();
  outlined init with copy of DataLinkMirroredClientExpectation?(a2, v11);
  type metadata accessor for MainActor();

  v19 = static MainActor.shared.getter();
  v20 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  v22[2] = v19;
  v22[3] = v23;
  v22[4] = v18;
  outlined init with take of DataLinkMirroredClientExpectation?(v11, v22 + v20);
  v24 = v22 + v21;
  *v24 = v29;
  *(v24 + 1) = v16;
  v24[16] = v28;
  *(v24 + 3) = v27;
  v25 = (v22 + ((v21 + 39) & 0xFFFFFFFFFFFFFFF8));
  *v25 = v30;
  v25[1] = a4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in DataLinkClient.sendMirroredClientAlertStackResponse(_:clientExpectation:acknowledged:), v22);
}

uint64_t closure #1 in DataLinkClient.sendMirroredClientAlertStackResponse(_:clientExpectation:acknowledged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 96) = v14;
  *(v8 + 80) = v13;
  *(v8 + 112) = a8;
  *(v8 + 64) = a6;
  *(v8 + 72) = a7;
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  *(v8 + 40) = a1;
  type metadata accessor for MainActor();
  *(v8 + 104) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in DataLinkClient.sendMirroredClientAlertStackResponse(_:clientExpectation:acknowledged:), v10, v9);
}

uint64_t closure #1 in DataLinkClient.sendMirroredClientAlertStackResponse(_:clientExpectation:acknowledged:)()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 48);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(v0 + 72);
    v4 = *(v0 + 80);
    v6 = *(v0 + 112);
    v7 = *(v0 + 56);
    v8 = *(v0 + 64);
    v9 = *(v0 + 48);
    v10 = swift_task_alloc();
    v11 = *(v0 + 88);
    *(v10 + 16) = v8;
    *(v10 + 24) = v5;
    *(v10 + 32) = v6;
    *(v10 + 40) = v4;
    *(v10 + 48) = v7;
    *(v10 + 56) = v9;
    *(v10 + 64) = v11;
    DataLinkClient.sendMirroredClient(with:perform:)(v7, partial apply for closure #1 in closure #1 in DataLinkClient.sendMirroredClientAlertStackResponse(_:clientExpectation:acknowledged:));
  }

  **(v0 + 40) = Strong == 0;
  v12 = *(v0 + 8);

  return v12();
}

uint64_t closure #1 in closure #1 in DataLinkClient.sendMirroredClientAlertStackResponse(_:clientExpectation:acknowledged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v39 = a8;
  v32 = a1;
  v33 = a7;
  v36 = a10;
  v37 = a2;
  v35 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v18 = &v30 - v17;
  v38 = type metadata accessor for UUID();
  v34 = *(v38 - 8);
  v19 = *(v34 + 64);
  MEMORY[0x28223BE20](v38);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v40[0] = a3;
  v40[1] = a4;
  v41 = a5;
  v42 = a6;
  UUID.init()();
  outlined init with copy of DataLinkMirroredClientExpectation?(v33, v18);
  v22 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v23 = (v16 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  *(v24 + 32) = a5;
  *(v24 + 40) = a6;
  outlined init with take of DataLinkMirroredClientExpectation?(v18, v24 + v22);
  *(v24 + v23) = v39;
  v25 = (v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8));
  v26 = v36;
  *v25 = v35;
  v25[1] = v26;
  v27 = v37;
  v28 = *(v37 + 56);

  v28(v40, v21, partial apply for closure #1 in closure #1 in closure #1 in DataLinkClient.sendMirroredClientAlertStackResponse(_:clientExpectation:acknowledged:), v24, ObjectType, v27);

  return (*(v34 + 8))(v21, v38);
}

uint64_t closure #1 in closure #1 in closure #1 in DataLinkClient.sendMirroredClientAlertStackResponse(_:clientExpectation:acknowledged:)(char a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void, void *), uint64_t a10)
{
  v48 = a6;
  v47 = a5;
  v46 = a3;
  v50 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v45 - v16;
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static WOLog.dataLink);
  outlined init with copy of DataLinkMirroredClientExpectation?(a7, v17);

  v19 = a2;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v45[1] = a10;
    v22 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v45[0] = v23;
    *v22 = 136316162;
    v52 = v46;
    v53 = a4;
    v54 = v47 & 1;
    v55 = v48;
    v56 = v23;

    v24 = MirroredClientAlertStackResponse.description.getter();
    v26 = v25;

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v56);

    *(v22 + 4) = v27;
    *(v22 + 12) = 1024;
    *(v22 + 14) = a1 & 1;
    *(v22 + 18) = 2112;
    if (a2)
    {
      v28 = a2;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      v30 = v29;
    }

    else
    {
      v29 = 0;
      v30 = 0;
    }

    *(v22 + 20) = v29;
    *v49 = v30;
    *(v22 + 28) = 2080;
    v31 = Optional.description.getter();
    v33 = v32;
    outlined destroy of DataLinkMirroredClientExpectation?(v17, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v56);

    *(v22 + 30) = v34;
    *(v22 + 38) = 2080;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v36 = Strong;
      swift_beginAccess();
      v37 = *(v36 + 120);
    }

    else
    {
      v37 = 0;
    }

    v51 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVy11WorkoutCore30DataLinkMirroredClientExpectedOSo7NSTimerC_GSgMd, &_sSD4KeysVy11WorkoutCore30DataLinkMirroredClientExpectedOSo7NSTimerC_GSgMR);
    v38 = Optional.description.getter();
    v40 = v39;

    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v56);

    *(v22 + 40) = v41;
    _os_log_impl(&dword_20AEA4000, v20, v21, "[mirrored] sendMirroredClientAlertStackResponse acknowledged (%s) (success: %{BOOL}d, error: %@) clientExpectation (%s) all expected %s", v22, 0x30u);
    v42 = v49;
    outlined destroy of DataLinkMirroredClientExpectation?(v49, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v42, -1, -1);
    v43 = v45[0];
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v43, -1, -1);
    MEMORY[0x20F2E9420](v22, -1, -1);
  }

  else
  {

    outlined destroy of DataLinkMirroredClientExpectation?(v17, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  }

  return v50(a1 & 1, a2);
}

uint64_t DataLinkClient.sendMirroredClientPrecisionStart(_:clientExpectation:acknowledged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v30 = a3;
  v6 = type metadata accessor for MirroredClientPrecisionStart();
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v27 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v27 - v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  swift_weakInit();
  outlined init with copy of DataLinkMirroredClientExpectation?(a2, v12);
  outlined init with copy of DataLinkMirroredClientExpectation(a1, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MirroredClientPrecisionStart);
  type metadata accessor for MainActor();

  v19 = v29;

  v20 = static MainActor.shared.getter();
  v21 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v22 = (v10 + *(v28 + 80) + v21) & ~*(v28 + 80);
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  v23[2] = v20;
  v23[3] = v24;
  v23[4] = v18;
  outlined init with take of DataLinkMirroredClientExpectation?(v12, v23 + v21);
  outlined init with take of DataLinkMirroredClientExpectation(v27, v23 + v22, type metadata accessor for MirroredClientPrecisionStart);
  v25 = (v23 + ((v7 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = v30;
  v25[1] = v19;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v16, &async function pointer to partial apply for closure #1 in DataLinkClient.sendMirroredClientPrecisionStart(_:clientExpectation:acknowledged:), v23);
}

uint64_t closure #1 in DataLinkClient.sendMirroredClientPrecisionStart(_:clientExpectation:acknowledged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a1;
  v8[6] = a4;
  type metadata accessor for MainActor();
  v8[11] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in DataLinkClient.sendMirroredClientPrecisionStart(_:clientExpectation:acknowledged:), v10, v9);
}

uint64_t closure #1 in DataLinkClient.sendMirroredClientPrecisionStart(_:clientExpectation:acknowledged:)()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(v0 + 48);
    v5 = swift_task_alloc();
    v6 = *(v0 + 56);
    v7 = *(v0 + 72);
    *(v5 + 16) = vextq_s8(v6, v6, 8uLL);
    *(v5 + 32) = v4;
    *(v5 + 40) = v7;
    DataLinkClient.sendMirroredClient(with:perform:)(v6.i64[0], partial apply for closure #1 in closure #1 in DataLinkClient.sendMirroredClientPrecisionStart(_:clientExpectation:acknowledged:));
  }

  **(v0 + 40) = Strong == 0;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t closure #1 in closure #1 in DataLinkClient.sendMirroredClientPrecisionStart(_:clientExpectation:acknowledged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a6;
  v39 = a7;
  v36 = a5;
  v37 = a2;
  v33 = a1;
  v34 = a4;
  v31 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for MirroredClientPrecisionStart();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for UUID();
  v17 = *(v35 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v35);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  UUID.init()();
  outlined init with copy of DataLinkMirroredClientExpectation(a3, v16, type metadata accessor for MirroredClientPrecisionStart);
  outlined init with copy of DataLinkMirroredClientExpectation?(v34, v12);
  v21 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v22 = (v15 + *(v9 + 80) + v21) & ~*(v9 + 80);
  v23 = (v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  outlined init with take of DataLinkMirroredClientExpectation(v16, v24 + v21, type metadata accessor for MirroredClientPrecisionStart);
  outlined init with take of DataLinkMirroredClientExpectation?(v12, v24 + v22);
  v25 = v37;
  *(v24 + v23) = v36;
  v26 = (v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8));
  v27 = v39;
  *v26 = v38;
  v26[1] = v27;
  v28 = *(v25 + 64);

  v28(v31, v20, partial apply for closure #1 in closure #1 in closure #1 in DataLinkClient.sendMirroredClientPrecisionStart(_:clientExpectation:acknowledged:), v24, ObjectType, v25);

  return (*(v17 + 8))(v20, v35);
}

uint64_t closure #1 in closure #1 in closure #1 in DataLinkClient.sendMirroredClientPrecisionStart(_:clientExpectation:acknowledged:)(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void), uint64_t a7)
{
  v51 = a7;
  v50 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - v13;
  v15 = type metadata accessor for MirroredClientPrecisionStart();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static WOLog.dataLink);
  outlined init with copy of DataLinkMirroredClientExpectation(a3, v18, type metadata accessor for MirroredClientPrecisionStart);
  outlined init with copy of DataLinkMirroredClientExpectation?(a4, v14);
  v20 = a2;

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v48 = a6;
    v23 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v53 = v47;
    *v23 = 136316162;
    v24 = MirroredClientPrecisionStart.description.getter();
    v26 = v25;
    outlined destroy of DataLinkMirroredClientExpectation(v18, type metadata accessor for MirroredClientPrecisionStart);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v53);

    *(v23 + 4) = v27;
    *(v23 + 12) = 1024;
    v28 = v50;
    *(v23 + 14) = v50 & 1;
    *(v23 + 18) = 2112;
    if (a2)
    {
      v29 = a2;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      v31 = v30;
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

    *(v23 + 20) = v30;
    *v49 = v31;
    *(v23 + 28) = 2080;
    v32 = Optional.description.getter();
    v34 = v33;
    outlined destroy of DataLinkMirroredClientExpectation?(v14, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v53);

    *(v23 + 30) = v35;
    *(v23 + 38) = 2080;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v37 = Strong;
      swift_beginAccess();
      v38 = *(v37 + 120);
    }

    else
    {
      v38 = 0;
    }

    v52 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVy11WorkoutCore30DataLinkMirroredClientExpectedOSo7NSTimerC_GSgMd, &_sSD4KeysVy11WorkoutCore30DataLinkMirroredClientExpectedOSo7NSTimerC_GSgMR);
    v39 = Optional.description.getter();
    v41 = v40;

    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v53);

    *(v23 + 40) = v42;
    _os_log_impl(&dword_20AEA4000, v21, v22, "[mirrored] mirroredClientPrecisionStart acknowledged (%s) (success: %{BOOL}d, error: %@) clientExpectation (%s) all expected %s", v23, 0x30u);
    v43 = v49;
    outlined destroy of DataLinkMirroredClientExpectation?(v49, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v43, -1, -1);
    v44 = v47;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v44, -1, -1);
    MEMORY[0x20F2E9420](v23, -1, -1);

    a6 = v48;
  }

  else
  {

    outlined destroy of DataLinkMirroredClientExpectation?(v14, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
    outlined destroy of DataLinkMirroredClientExpectation(v18, type metadata accessor for MirroredClientPrecisionStart);
    v28 = v50;
  }

  return a6(v28 & 1, a2);
}

uint64_t protocol witness for DataLinkMirroredClientProtocol.mirroredClientDelegate.getter in conformance DataLinkClient()
{
  v1 = *v0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 24);
  return result;
}

uint64_t protocol witness for DataLinkMirroredClientProtocol.mirroredClientDelegate.setter in conformance DataLinkClient(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*protocol witness for DataLinkMirroredClientProtocol.mirroredClientDelegate.modify in conformance DataLinkClient(uint64_t *a1))()
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
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return protocol witness for DataLinkMirroredClientProtocol.mirroredClientDelegate.modify in conformance DataLinkClient;
}

void DataLinkClient.mirroredClientDelegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
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

void DataLinkClient.receivedMirroredHostCommand(_:closure:)(unsigned __int8 *a1, void (*a2)(void, void *), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v25[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a1;
  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((a1 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v4 + 24);
    v25[0] = v13;
    v25[1] = 0;
    DataLinkClient.receivedMirroredHostClearExpected(_:)(v25);
    ObjectType = swift_getObjectType();
    LOBYTE(v25[0]) = v13;
    (*(v14 + 8))(v25, a2, a3, ObjectType, v14);
    swift_unknownObjectRelease();
    return;
  }

  if (one-time initialization token for dataLink != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static WOLog.dataLink);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_20AEA4000, v17, v18, "[mirrored] receivedMirroredHostCommand, noClientDelegateSetup", v19, 2u);
    MEMORY[0x20F2E9420](v19, -1, -1);
  }

  type metadata accessor for DataLinkError();
  lazy protocol witness table accessor for type DataLinkError and conformance DataLinkError(&lazy protocol witness table cache variable for type DataLinkError and conformance DataLinkError, type metadata accessor for DataLinkError);
  v20 = swift_allocError();
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMR);
  (*(*(v23 - 8) + 56))(v22, 4, 5, v23);
  a2(0, v20);
}

void DataLinkClient.receivedMirroredHostStartConfiguration(_:closure:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a1;
  v14 = *(a1 + 1);
  v15 = *(a1 + 8);
  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((a1 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v4 + 24);
    started = lazy protocol witness table accessor for type MirroredHostStartConfiguration and conformance MirroredHostStartConfiguration();
    v28 = &type metadata for MirroredHostStartConfiguration;
    v29 = started | 0x8000000000000000;
    DataLinkClient.receivedMirroredHostClearExpected(_:)(&v28);
    ObjectType = swift_getObjectType();
    LOBYTE(v28) = v13;
    BYTE1(v28) = v14;
    v29 = v15;
    (*(v16 + 16))(&v28, a2, a3, ObjectType, v16);
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
    _os_log_impl(&dword_20AEA4000, v20, v21, "[mirrored] receivedMirroredHostStartConfiguration, noClientDelegateSetup", v22, 2u);
    MEMORY[0x20F2E9420](v22, -1, -1);
  }

  type metadata accessor for DataLinkError();
  lazy protocol witness table accessor for type DataLinkError and conformance DataLinkError(&lazy protocol witness table cache variable for type DataLinkError and conformance DataLinkError, type metadata accessor for DataLinkError);
  v23 = swift_allocError();
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMR);
  (*(*(v26 - 8) + 56))(v25, 4, 5, v26);
  a2(0, v23);
}

void DataLinkClient.receivedMirroredHostMachTimestampRequest(_:closure:)(uint64_t *a1, void (*a2)(void, void *), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v26[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a1;
  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((a1 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v4 + 24);
    v15 = lazy protocol witness table accessor for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest();
    v26[0] = &type metadata for MirroredHostMachTimestampRequest;
    v26[1] = v15 | 0x8000000000000000;
    DataLinkClient.receivedMirroredHostClearExpected(_:)(v26);
    ObjectType = swift_getObjectType();
    v26[0] = v13;
    (*(v14 + 32))(v26, a2, a3, ObjectType, v14);
    swift_unknownObjectRelease();
    return;
  }

  if (one-time initialization token for dataLink != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static WOLog.dataLink);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_20AEA4000, v18, v19, "[mirrored] receivedMirroredHostMachTimestampRequest, noClientDelegateSetup", v20, 2u);
    MEMORY[0x20F2E9420](v20, -1, -1);
  }

  type metadata accessor for DataLinkError();
  lazy protocol witness table accessor for type DataLinkError and conformance DataLinkError(&lazy protocol witness table cache variable for type DataLinkError and conformance DataLinkError, type metadata accessor for DataLinkError);
  v21 = swift_allocError();
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMR);
  (*(*(v24 - 8) + 56))(v23, 4, 5, v24);
  a2(0, v21);
}

void DataLinkClient.receivedMirroredHostCountdownStart(_:closure:)(ValueMetadata **a1, void (*a2)(void, void *), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a1;
  v14 = a1[1];
  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((a1 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v4 + 24);
    v16 = lazy protocol witness table accessor for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart();
    v27 = &type metadata for MirroredHostCountdownStart;
    v28 = v16 | 0x8000000000000000;
    DataLinkClient.receivedMirroredHostClearExpected(_:)(&v27);
    ObjectType = swift_getObjectType();
    v27 = v13;
    v28 = v14;
    (*(v15 + 40))(&v27, a2, a3, ObjectType, v15);
    swift_unknownObjectRelease();
    return;
  }

  if (one-time initialization token for dataLink != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static WOLog.dataLink);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_20AEA4000, v19, v20, "[mirrored] receivedMirroredHostCountdownStart, noClientDelegateSetup", v21, 2u);
    MEMORY[0x20F2E9420](v21, -1, -1);
  }

  type metadata accessor for DataLinkError();
  lazy protocol witness table accessor for type DataLinkError and conformance DataLinkError(&lazy protocol witness table cache variable for type DataLinkError and conformance DataLinkError, type metadata accessor for DataLinkError);
  v22 = swift_allocError();
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMR);
  (*(*(v25 - 8) + 56))(v24, 4, 5, v25);
  a2(0, v22);
}

void DataLinkClient.receivedMirroredHostAlertStackRequest(_:closure:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3)
{
  v4 = v3;
  v28 = a2;
  v29 = a3;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  v27 = *(a1 + 40);
  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((a1 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v4 + 24);
    v17 = lazy protocol witness table accessor for type MirroredHostAlertStackRequest and conformance MirroredHostAlertStackRequest();
    v30 = &type metadata for MirroredHostAlertStackRequest;
    v31 = v17 | 0x8000000000000000;
    DataLinkClient.receivedMirroredHostClearExpected(_:)(&v30);
    ObjectType = swift_getObjectType();
    v30 = v11;
    v31 = v12;
    v32 = v13;
    v33 = v14;
    v34 = v15;
    v35 = v27;
    (*(v16 + 24))(&v30, v28, v29, ObjectType, v16);
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
    _os_log_impl(&dword_20AEA4000, v20, v21, "[mirrored] receivedMirroredHostAlertStackRequest, noClientDelegateSetup", v22, 2u);
    MEMORY[0x20F2E9420](v22, -1, -1);
  }

  type metadata accessor for DataLinkError();
  lazy protocol witness table accessor for type DataLinkError and conformance DataLinkError(&lazy protocol witness table cache variable for type DataLinkError and conformance DataLinkError, type metadata accessor for DataLinkError);
  v23 = swift_allocError();
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMR);
  (*(*(v26 - 8) + 56))(v25, 4, 5, v26);
  v28(0, v23);
}

void DataLinkClient.receivedMirroredHostSummaryUpdate(_:closure:)(uint64_t *a1, void (*a2)(void, void *), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v26[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a1;
  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((a1 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v4 + 24);
    v15 = lazy protocol witness table accessor for type MirroredHostSummaryUpdate and conformance MirroredHostSummaryUpdate();
    v26[0] = &type metadata for MirroredHostSummaryUpdate;
    v26[1] = v15 | 0x8000000000000000;
    DataLinkClient.receivedMirroredHostClearExpected(_:)(v26);
    ObjectType = swift_getObjectType();
    v26[0] = v13;
    (*(v14 + 48))(v26, a2, a3, ObjectType, v14);
    swift_unknownObjectRelease();
    return;
  }

  if (one-time initialization token for dataLink != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static WOLog.dataLink);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_20AEA4000, v18, v19, "[mirrored] receivedMirroredHostSummaryUpdate, noClientDelegateSetup", v20, 2u);
    MEMORY[0x20F2E9420](v20, -1, -1);
  }

  type metadata accessor for DataLinkError();
  lazy protocol witness table accessor for type DataLinkError and conformance DataLinkError(&lazy protocol witness table cache variable for type DataLinkError and conformance DataLinkError, type metadata accessor for DataLinkError);
  v21 = swift_allocError();
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMR);
  (*(*(v24 - 8) + 56))(v23, 4, 5, v24);
  a2(0, v21);
}

void *specialized DataLinkClient.init(metricsPublisher:)(void *a1)
{
  v2 = v1;
  v45 = a1;
  v44 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v44 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v44);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  v11 = type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  v43[1] = "clientExpectations";
  v43[2] = v11;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0;
  static DispatchQoS.userInteractive.getter();
  v46 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DataLinkError and conformance DataLinkError(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_5(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v6, *MEMORY[0x277D85260], v44);
  *(v1 + 88) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + 120) = MEMORY[0x277D84F98];
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static WOLog.dataLink);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_20AEA4000, v13, v14, "Initializing data link client", v15, 2u);
    MEMORY[0x20F2E9420](v15, -1, -1);
  }

  v16 = v45;
  v2[14] = v45;
  v17 = objc_allocWithZone(type metadata accessor for DataLinkHealthKitClientConnection());
  v18 = v16;
  v2[12] = [v17 init];
  v2[13] = &protocol witness table for DataLinkHealthKitClientConnection;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v19 = v2[12];
  v20 = v2[13];
  ObjectType = swift_getObjectType();
  v22 = *(v20 + 24);
  swift_unknownObjectRetain();

  v22(v23, &protocol witness table for DataLinkClient, ObjectType, v20);
  swift_unknownObjectRelease();
  v24 = v2[12];
  v25 = v2[13];
  v26 = swift_getObjectType();
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = *(v25 + 8);
  v29 = *(v28 + 24);

  swift_unknownObjectRetain();

  v29(partial apply for closure #1 in DataLinkClient.init(metricsPublisher:), v27, v26, v28);
  swift_unknownObjectRelease();

  v30 = v2[12];
  v31 = v2[13];
  v32 = swift_getObjectType();
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = *(v31 + 8);
  v35 = *(v34 + 32);
  swift_unknownObjectRetain();

  v35(partial apply for closure #2 in DataLinkClient.init(metricsPublisher:), v33, v32, v34);
  swift_unknownObjectRelease();

  v36 = v2[12];
  v37 = v2[13];
  v38 = swift_getObjectType();
  v39 = swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  v40 = *(v37 + 8);
  v41 = *(v40 + 16);

  v41(partial apply for closure #3 in DataLinkClient.init(metricsPublisher:), v39, v38, v40);
  swift_unknownObjectRelease();

  return v2;
}

uint64_t partial apply for closure #1 in DataLinkClient.send(command:acknowledged:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t partial apply for closure #1 in DataLinkClient.addClientExpectation(_:)(uint64_t a1)
{
  v3 = *(type metadata accessor for DataLinkMirroredClientExpectation() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return closure #1 in DataLinkClient.addClientExpectation(_:)(a1, v4, v5);
}

uint64_t outlined init with copy of DataLinkMirroredClientExpectation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of DataLinkMirroredClientExpectation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in DataLinkClient.sendMirroredClientCommand(_:clientExpectation:acknowledged:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1 + (v7 & 0xFFFFFFFFFFFFFFF8);
  v12 = *(v11 + 1);
  v13 = *(v11 + 2);
  v14 = *(v1 + v7);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = partial apply for closure #1 in DataLinkClient.sendMirroredClientCommand(_:clientExpectation:acknowledged:);

  return closure #1 in DataLinkClient.sendMirroredClientCommand(_:clientExpectation:acknowledged:)(a1, v8, v9, v10, v1 + v6, v14, v12, v13);
}

uint64_t partial apply for closure #1 in DataLinkClient.sendMirroredClientMachTimestampResponse(_:clientExpectation:acknowledged:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = (v1 + v7);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v1 + v8);
  v16 = *(v1 + v8 + 8);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = partial apply for closure #1 in DataLinkClient.sendMirroredClientMachTimestampResponse(_:clientExpectation:acknowledged:);

  return closure #1 in DataLinkClient.sendMirroredClientMachTimestampResponse(_:clientExpectation:acknowledged:)(a1, v13, v14, v9, v10, v11, v1 + v6, v15, v16);
}

uint64_t partial apply for closure #1 in DataLinkClient.sendMirroredClientAlertStackResponse(_:clientExpectation:acknowledged:)(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 39) & 0xFFFFFFFFFFFFFFF8;
  v18 = v1[3];
  v19 = v1[2];
  v8 = v1[4];
  v9 = v1 + v6;
  v10 = *v9;
  v11 = *(v9 + 1);
  v12 = v9[16];
  v13 = *(v9 + 3);
  v14 = *(v1 + v7);
  v15 = *(v1 + v7 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = partial apply for closure #1 in DataLinkClient.sendMirroredClientAlertStackResponse(_:clientExpectation:acknowledged:);

  return closure #1 in DataLinkClient.sendMirroredClientAlertStackResponse(_:clientExpectation:acknowledged:)(a1, v19, v18, v8, v1 + v5, v10, v11, v12);
}

uint64_t outlined init with copy of DataLinkMirroredClientExpectation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of DataLinkMirroredClientExpectation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in DataLinkClient.sendMirroredClientPrecisionStart(_:clientExpectation:acknowledged:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for MirroredClientPrecisionStart() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = partial apply for closure #1 in DataLinkClient.sendMirroredClientPrecisionStart(_:clientExpectation:acknowledged:);

  return closure #1 in DataLinkClient.sendMirroredClientPrecisionStart(_:clientExpectation:acknowledged:)(a1, v10, v11, v12, v1 + v6, v1 + v9, v14, v15);
}

uint64_t partial apply for closure #1 in DataLinkClient.sendMirroredClientPrecisionStart(_:clientExpectation:acknowledged:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t type metadata accessor for NSTimer(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void specialized DataLinkClient.failedClientExpectation(_:)(uint64_t a1)
{
  v2 = type metadata accessor for DataLinkMirroredClientExpectation();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.dataLink);
  outlined init with copy of DataLinkMirroredClientExpectation(a1, v5, type metadata accessor for DataLinkMirroredClientExpectation);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v11 = DataLinkMirroredClientExpectation.description.getter();
    v13 = v12;
    outlined destroy of DataLinkMirroredClientExpectation(v5, type metadata accessor for DataLinkMirroredClientExpectation);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_20AEA4000, v7, v8, "[mirrored] failedClientExpectation: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  else
  {

    outlined destroy of DataLinkMirroredClientExpectation(v5, type metadata accessor for DataLinkMirroredClientExpectation);
  }
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed WorkoutNotification) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed WorkoutNotification) -> ()(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in DataLinkClient.sendMirroredClientPrecisionStart(_:clientExpectation:acknowledged:)(int a1, void *a2)
{
  v5 = *(type metadata accessor for MirroredClientPrecisionStart() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v2 + v10);
  v12 = v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 8);

  return closure #1 in closure #1 in closure #1 in DataLinkClient.sendMirroredClientPrecisionStart(_:clientExpectation:acknowledged:)(a1, a2, v2 + v6, v2 + v9, v11, v13, v14);
}

uint64_t outlined destroy of DataLinkMirroredClientExpectation(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in DataLinkClient.sendMirroredClientAlertStackResponse(_:clientExpectation:acknowledged:)(char a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return closure #1 in closure #1 in closure #1 in DataLinkClient.sendMirroredClientAlertStackResponse(_:clientExpectation:acknowledged:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in DataLinkClient.sendMirroredClientMachTimestampResponse(_:clientExpectation:acknowledged:)(int a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  return closure #1 in closure #1 in closure #1 in DataLinkClient.sendMirroredClientMachTimestampResponse(_:clientExpectation:acknowledged:)(a1, a2, v2 + v6, v9, v10, v8, v12, v13);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in DataLinkClient.sendMirroredClientCommand(_:clientExpectation:acknowledged:)(int a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR) - 8);
  v6 = (*(v5 + 80) + 17) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v2 + 16);

  return closure #1 in closure #1 in closure #1 in DataLinkClient.sendMirroredClientCommand(_:clientExpectation:acknowledged:)(a1, a2, v12, v2 + v6, v8, v10, v11);
}

uint64_t partial apply for closure #2 in closure #1 in DataLinkClient.addClientExpectation(_:)()
{
  v1 = *(type metadata accessor for DataLinkMirroredClientExpectation() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v4 + 56))(v0 + v2, ObjectType, v4);
}

uint64_t lazy protocol witness table accessor for type DataLinkError and conformance DataLinkError(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in static DataLinkClient.onMainThread(closure:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t Apple_Workout_Core_RunningTrackInfo.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo();
  *(a1 + 20) = 0;
  *(a1 + 12) = 0;
  *(a1 + 28) = 0;
  v3 = a1 + *(v2 + 36);
  UnknownStorage.init()();
  v4 = *(v2 + 40);
  v5 = type metadata accessor for Apple_Workout_Core_CLLocation();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t type metadata accessor for Apple_Workout_Core_RunningTrackInfo()
{
  result = type metadata singleton initialization cache for Apple_Workout_Core_RunningTrackInfo;
  if (!type metadata singleton initialization cache for Apple_Workout_Core_RunningTrackInfo)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t Apple_Workout_Core_RunningTrackProximity.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_RunningTrackProximity()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_RunningTrackProximity(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_RunningTrackProximity and conformance Apple_Workout_Core_RunningTrackProximity();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_RunningTrackProximity()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Apple_Workout_Core_RunningTrackInfo.location.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo();
  outlined init with copy of Apple_Workout_Core_CLLocation?(v1 + *(v7 + 40), v6);
  v8 = type metadata accessor for Apple_Workout_Core_CLLocation();
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_CLLocation(v6, a1);
  }

  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  v10 = a1 + *(v8 + 40);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_CLLocation?(v6, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_RunningTrackInfo.location : Apple_Workout_Core_RunningTrackInfo@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo();
  outlined init with copy of Apple_Workout_Core_CLLocation?(a1 + *(v8 + 40), v7);
  v9 = type metadata accessor for Apple_Workout_Core_CLLocation();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_CLLocation(v7, a2);
  }

  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  v11 = a2 + *(v9 + 40);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_CLLocation?(v7, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_RunningTrackInfo.location : Apple_Workout_Core_RunningTrackInfo(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_CLLocation();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_CLLocation(a1, v8);
  v9 = *(type metadata accessor for Apple_Workout_Core_RunningTrackInfo() + 40);
  outlined destroy of Apple_Workout_Core_CLLocation?(a2 + v9, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
  outlined init with take of Apple_Workout_Core_CLLocation(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Workout_Core_RunningTrackInfo.location.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_RunningTrackInfo() + 40);
  outlined destroy of Apple_Workout_Core_CLLocation?(v1 + v3, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
  outlined init with take of Apple_Workout_Core_CLLocation(a1, v1 + v3);
  v4 = type metadata accessor for Apple_Workout_Core_CLLocation();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t outlined init with copy of Apple_Workout_Core_CLLocation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Apple_Workout_Core_CLLocation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_CLLocation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*Apple_Workout_Core_RunningTrackInfo.location.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Workout_Core_CLLocation();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_RunningTrackInfo() + 40);
  *(v5 + 12) = v15;
  outlined init with copy of Apple_Workout_Core_CLLocation?(v1 + v15, v8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v14[1] = 0u;
    v14[2] = 0u;
    *v14 = 0u;
    v17 = v14 + *(v9 + 40);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_CLLocation?(v8, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_CLLocation(v8, v14);
  }

  return Apple_Workout_Core_RunningTrackInfo.location.modify;
}

void Apple_Workout_Core_RunningTrackInfo.location.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of Apple_Workout_Core_CLLocation((*a1)[5], v4);
    outlined destroy of Apple_Workout_Core_CLLocation?(v9 + v3, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
    outlined init with take of Apple_Workout_Core_CLLocation(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of Apple_Workout_Core_CLLocation(v5);
  }

  else
  {
    outlined destroy of Apple_Workout_Core_CLLocation?(v9 + v3, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
    outlined init with take of Apple_Workout_Core_CLLocation(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t outlined destroy of Apple_Workout_Core_CLLocation(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_CLLocation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Apple_Workout_Core_RunningTrackInfo.hasLocation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo();
  outlined init with copy of Apple_Workout_Core_CLLocation?(v0 + *(v5 + 40), v4);
  v6 = type metadata accessor for Apple_Workout_Core_CLLocation();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Apple_Workout_Core_CLLocation?(v4, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
  return v7;
}

Swift::Void __swiftcall Apple_Workout_Core_RunningTrackInfo.clearLocation()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_RunningTrackInfo() + 40);
  outlined destroy of Apple_Workout_Core_CLLocation?(v0 + v1, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_CLLocation();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

void Apple_Workout_Core_RunningTrackInfo.proximity.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Workout_Core_RunningTrackInfo.proximity.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Workout_Core_RunningTrackInfo.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_RunningTrackInfo() + 36);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_RunningTrackInfo.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_RunningTrackInfo() + 36);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static Apple_Workout_Core_RunningTrackProximity._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

uint64_t Apple_Workout_Core_RunningTrackInfo.decodeMessage<A>(decoder:)()
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
        if (result == 4 || result == 5)
        {
LABEL_4:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_5;
        }

        if (result == 6)
        {
          dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            closure #1 in Apple_Workout_Core_RunningTrackInfo.decodeMessage<A>(decoder:)();
            break;
          case 2:
            lazy protocol witness table accessor for type Apple_Workout_Core_RunningTrackProximity and conformance Apple_Workout_Core_RunningTrackProximity();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 3:
            goto LABEL_4;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_RunningTrackInfo.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_Core_RunningTrackInfo() + 40);
  type metadata accessor for Apple_Workout_Core_CLLocation();
  lazy protocol witness table accessor for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo(&lazy protocol witness table cache variable for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation, type metadata accessor for Apple_Workout_Core_CLLocation);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_Core_RunningTrackInfo.traverse<A>(visitor:)()
{
  result = closure #1 in Apple_Workout_Core_RunningTrackInfo.traverse<A>(visitor:)(v0);
  if (!v1)
  {
    if (*v0)
    {
      v4 = *v0;
      v5 = *(v0 + 8);
      lazy protocol witness table accessor for type Apple_Workout_Core_RunningTrackProximity and conformance Apple_Workout_Core_RunningTrackProximity();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    if (*(v0 + 12))
    {
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    if (*(v0 + 16))
    {
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    if (*(v0 + 20))
    {
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    if (*(v0 + 24))
    {
      dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)();
    }

    v3 = v0 + *(type metadata accessor for Apple_Workout_Core_RunningTrackInfo() + 36);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_RunningTrackInfo.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Apple_Workout_Core_CLLocation();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo();
  outlined init with copy of Apple_Workout_Core_CLLocation?(a1 + *(v11 + 40), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return outlined destroy of Apple_Workout_Core_CLLocation?(v5, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
  }

  outlined init with take of Apple_Workout_Core_CLLocation(v5, v10);
  lazy protocol witness table accessor for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo(&lazy protocol witness table cache variable for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation, type metadata accessor for Apple_Workout_Core_CLLocation);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_CLLocation(v10);
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_RunningTrackProximity and conformance Apple_Workout_Core_RunningTrackProximity()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackProximity and conformance Apple_Workout_Core_RunningTrackProximity;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackProximity and conformance Apple_Workout_Core_RunningTrackProximity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackProximity and conformance Apple_Workout_Core_RunningTrackProximity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackProximity and conformance Apple_Workout_Core_RunningTrackProximity;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackProximity and conformance Apple_Workout_Core_RunningTrackProximity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackProximity and conformance Apple_Workout_Core_RunningTrackProximity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackProximity and conformance Apple_Workout_Core_RunningTrackProximity;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackProximity and conformance Apple_Workout_Core_RunningTrackProximity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackProximity and conformance Apple_Workout_Core_RunningTrackProximity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackProximity and conformance Apple_Workout_Core_RunningTrackProximity;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackProximity and conformance Apple_Workout_Core_RunningTrackProximity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackProximity and conformance Apple_Workout_Core_RunningTrackProximity);
  }

  return result;
}

Swift::Int Apple_Workout_Core_RunningTrackInfo.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Workout_Core_RunningTrackInfo();
  lazy protocol witness table accessor for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo(&lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_RunningTrackInfo@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 20) = 0;
  *(a2 + 12) = 0;
  *(a2 + 28) = 0;
  v4 = a2 + *(a1 + 36);
  UnknownStorage.init()();
  v5 = *(a1 + 40);
  v6 = type metadata accessor for Apple_Workout_Core_CLLocation();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_RunningTrackInfo@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_RunningTrackInfo(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_RunningTrackInfo(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_RunningTrackInfo;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_RunningTrackInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo(&lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_RunningTrackProximity@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
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

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_RunningTrackInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo(&lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_RunningTrackInfo()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_RunningTrackInfo()
{
  lazy protocol witness table accessor for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo(&lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_RunningTrackInfo()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_RunningTrackInfo.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_CLLocation();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_CLLocationVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSg_ADtMR);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  v18 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo();
  v19 = *(v18 + 40);
  v20 = *(v14 + 56);
  outlined init with copy of Apple_Workout_Core_CLLocation?(a1 + v19, v17);
  outlined init with copy of Apple_Workout_Core_CLLocation?(a2 + v19, &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) != 1)
  {
    outlined init with copy of Apple_Workout_Core_CLLocation?(v17, v12);
    if (v21(&v17[v20], 1, v4) != 1)
    {
      outlined init with take of Apple_Workout_Core_CLLocation(&v17[v20], v8);
      v24 = static Apple_Workout_Core_CLLocation.== infix(_:_:)(v12, v8);
      outlined destroy of Apple_Workout_Core_CLLocation(v8);
      outlined destroy of Apple_Workout_Core_CLLocation(v12);
      outlined destroy of Apple_Workout_Core_CLLocation?(v17, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
      if ((v24 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    outlined destroy of Apple_Workout_Core_CLLocation(v12);
LABEL_6:
    outlined destroy of Apple_Workout_Core_CLLocation?(v17, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSg_ADtMR);
    goto LABEL_7;
  }

  if (v21(&v17[v20], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Apple_Workout_Core_CLLocation?(v17, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
LABEL_10:
  v25 = *a1;
  v26 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v26 > 1)
    {
      if (v26 == 2)
      {
        if (v25 != 2)
        {
          goto LABEL_7;
        }
      }

      else if (v25 != 3)
      {
        goto LABEL_7;
      }
    }

    else if (v26)
    {
      if (v25 != 1)
      {
        goto LABEL_7;
      }
    }

    else if (v25)
    {
      goto LABEL_7;
    }
  }

  else if (v25 != v26)
  {
    goto LABEL_7;
  }

  if (*(a1 + 3) == *(a2 + 12) && *(a1 + 4) == *(a2 + 16) && *(a1 + 5) == *(a2 + 20) && a1[3] == *(a2 + 24))
  {
    v27 = *(v18 + 36);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v22 & 1;
  }

LABEL_7:
  v22 = 0;
  return v22 & 1;
}

unint64_t lazy protocol witness table accessor for type [Apple_Workout_Core_RunningTrackProximity] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Apple_Workout_Core_RunningTrackProximity] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Apple_Workout_Core_RunningTrackProximity] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore06Apple_a1_B22_RunningTrackProximityOGMd, &_sSay11WorkoutCore06Apple_a1_B22_RunningTrackProximityOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Apple_Workout_Core_RunningTrackProximity] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Apple_Workout_Core_RunningTrackProximity(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Apple_Workout_Core_RunningTrackProximity(uint64_t result, int a2, int a3)
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

uint64_t getEnumTag for Apple_Workout_Core_RunningTrackProximity(uint64_t a1)
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

uint64_t destructiveInjectEnumTag for Apple_Workout_Core_RunningTrackProximity(uint64_t result, int a2)
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

void type metadata completion function for Apple_Workout_Core_RunningTrackInfo()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_Core_CLLocation?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Apple_Workout_Core_CLLocation?()
{
  if (!lazy cache variable for type metadata for Apple_Workout_Core_CLLocation?)
  {
    type metadata accessor for Apple_Workout_Core_CLLocation();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Apple_Workout_Core_CLLocation?);
    }
  }
}

uint64_t outlined destroy of Apple_Workout_Core_CLLocation?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo(unint64_t *a1, void (*a2)(uint64_t))
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

void MirroredHostStartSource.init(protobuf:)(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8) == 1)
  {
    v4 = v3 != 0;
  }

  else
  {
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static WOLog.dataLink);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = v9;
      *v8 = 134218242;
      *(v8 + 4) = v3;
      *(v8 + 12) = 2080;
      *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6944705564616568, 0xED000079616C7073, &v10);
      _os_log_impl(&dword_20AEA4000, v6, v7, "Unrecognized MirroredHostStartSource rawValue: %ld, defaulted to %s", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x20F2E9420](v9, -1, -1);
      MEMORY[0x20F2E9420](v8, -1, -1);
    }

    v4 = 0;
  }

  *a2 = v4;
}

uint64_t MirroredHostStartSource.description.getter()
{
  if (*v0)
  {
    result = 0x6465726F7272696DLL;
  }

  else
  {
    result = 0x6944705564616568;
  }

  *v0;
  return result;
}

WorkoutCore::MirroredHostStartSource_optional __swiftcall MirroredHostStartSource.init(rawValue:)(Swift::Int rawValue)
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

void *protocol witness for RawRepresentable.init(rawValue:) in conformance MirroredHostStartSource@<X0>(void *result@<X0>, char *a2@<X8>)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MirroredHostStartSource()
{
  if (*v0)
  {
    result = 0x6465726F7272696DLL;
  }

  else
  {
    result = 0x6944705564616568;
  }

  *v0;
  return result;
}

void protocol witness for MirroredEnumProtocol.init(protobuf:) in conformance MirroredHostStartSource(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  v4 = v2;
  MirroredHostStartSource.init(protobuf:)(&v3, a2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredHostStartSource()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredHostStartSource()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

unint64_t instantiation function for generic protocol witness table for MirroredHostStartSource(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MirroredHostStartSource and conformance MirroredHostStartSource();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MirroredHostStartSource and conformance MirroredHostStartSource()
{
  result = lazy protocol witness table cache variable for type MirroredHostStartSource and conformance MirroredHostStartSource;
  if (!lazy protocol witness table cache variable for type MirroredHostStartSource and conformance MirroredHostStartSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostStartSource and conformance MirroredHostStartSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredHostStartSource and conformance MirroredHostStartSource;
  if (!lazy protocol witness table cache variable for type MirroredHostStartSource and conformance MirroredHostStartSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostStartSource and conformance MirroredHostStartSource);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MirroredHostStartSource(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MirroredHostStartSource(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t TrackRunningMetricsPublisher.trackInfo.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for TrackRunningMetricsPublisher.trackInfo : TrackRunningMetricsPublisher@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for TrackRunningMetricsPublisher.trackInfo : TrackRunningMetricsPublisher(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t TrackRunningMetricsPublisher.trackInfo.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*TrackRunningMetricsPublisher.trackInfo.modify(uint64_t *a1))()
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
  return TrackRunningMetricsPublisher.trackInfo.modify;
}

uint64_t key path setter for TrackRunningMetricsPublisher.$trackInfo : TrackRunningMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore16RunningTrackInfoCSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore16RunningTrackInfoCSg_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMd, &_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t TrackRunningMetricsPublisher.$trackInfo.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore16RunningTrackInfoCSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore16RunningTrackInfoCSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMd, &_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*TrackRunningMetricsPublisher.$trackInfo.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore16RunningTrackInfoCSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore16RunningTrackInfoCSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore28TrackRunningMetricsPublisher__trackInfo;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMd, &_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return TrackRunningMetricsPublisher.$trackInfo.modify;
}

uint64_t TrackRunningMetricsPublisher.trackRunningCoordinator.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for TrackRunningMetricsPublisher.trackRunningCoordinator : TrackRunningMetricsPublisher@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for TrackRunningMetricsPublisher.trackRunningCoordinator : TrackRunningMetricsPublisher(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v2;
  return static Published.subscript.setter();
}

uint64_t TrackRunningMetricsPublisher.trackRunningCoordinator.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*TrackRunningMetricsPublisher.trackRunningCoordinator.modify(uint64_t *a1))()
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
  return TrackRunningMetricsPublisher.trackRunningCoordinator.modify;
}

void TrackRunningMetricsPublisher.trackInfo.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t TrackRunningMetricsPublisher.$trackInfo.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for TrackRunningMetricsPublisher.$trackInfo : TrackRunningMetricsPublisher(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for TrackRunningMetricsPublisher.$trackRunningCoordinator : TrackRunningMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore23TrackRunningCoordinatorC_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore23TrackRunningCoordinatorC_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMd, &_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t TrackRunningMetricsPublisher.$trackRunningCoordinator.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore23TrackRunningCoordinatorC_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore23TrackRunningCoordinatorC_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMd, &_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*TrackRunningMetricsPublisher.$trackRunningCoordinator.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore23TrackRunningCoordinatorC_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore23TrackRunningCoordinatorC_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore28TrackRunningMetricsPublisher__trackRunningCoordinator;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMd, &_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return TrackRunningMetricsPublisher.$trackRunningCoordinator.modify;
}

void TrackRunningMetricsPublisher.$trackInfo.modify(uint64_t a1, char a2)
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

uint64_t TrackRunningMetricsPublisher.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore16RunningTrackInfoCSgMd, &_s11WorkoutCore16RunningTrackInfoCSgMR);
  Published.init(initialValue:)();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static TrackRunningCoordinator.shared;
  type metadata accessor for TrackRunningCoordinator();
  v5 = v4;
  Published.init(initialValue:)();
  return v3;
}

uint64_t TrackRunningMetricsPublisher.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMd, &_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMd, &_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v11 = OBJC_IVAR____TtC11WorkoutCore28TrackRunningMetricsPublisher__trackInfo;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore16RunningTrackInfoCSgMd, &_s11WorkoutCore16RunningTrackInfoCSgMR);
  Published.init(initialValue:)();
  (*(v7 + 32))(v0 + v11, v10, v6);
  v12 = OBJC_IVAR____TtC11WorkoutCore28TrackRunningMetricsPublisher__trackRunningCoordinator;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static TrackRunningCoordinator.shared;
  v17 = static TrackRunningCoordinator.shared;
  type metadata accessor for TrackRunningCoordinator();
  v14 = v13;
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v12, v5, v1);
  return v0;
}

uint64_t TrackRunningMetricsPublisher.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore28TrackRunningMetricsPublisher__trackInfo;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMd, &_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore28TrackRunningMetricsPublisher__trackRunningCoordinator;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMd, &_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t TrackRunningMetricsPublisher.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore28TrackRunningMetricsPublisher__trackInfo;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMd, &_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore28TrackRunningMetricsPublisher__trackRunningCoordinator;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMd, &_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance TrackRunningMetricsPublisher@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t TrackRunningMetricsPublisher.protobuf.getter()
{
  type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher();
  lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  return static Message.with(_:)();
}

uint64_t closure #1 in TrackRunningMetricsPublisher.protobuf.getter(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator();
  v17 = *(v2 - 8);
  v3 = *(v17 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v18)
  {
    lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
    static Message.with(_:)();

    v11 = *(type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher() + 20);
    _s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgWOhTm_0(a1 + v11, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
    outlined init with take of Apple_Workout_Core_TrackRunningCoordinator(v10, a1 + v11, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
    (*(v7 + 56))(a1 + v11, 0, 1, v6);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13 = v18;
  MEMORY[0x28223BE20](v12);
  *(&v16 - 2) = v13;
  lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningCoordinator and conformance Apple_Workout_Core_TrackRunningCoordinator, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
  static Message.with(_:)();

  v14 = *(type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher() + 24);
  _s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgWOhTm_0(a1 + v14, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  outlined init with take of Apple_Workout_Core_TrackRunningCoordinator(v5, a1 + v14, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
  return (*(v17 + 56))(a1 + v14, 0, 1, v2);
}

uint64_t TrackRunningMetricsPublisher.wireData()()
{
  v0 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  static Message.with(_:)();
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_TrackRunningMetricsPublisher(v3, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  return v4;
}

uint64_t Apple_Workout_Core_TrackRunningMetricsPublisher.decodeInto(publisher:)(uint64_t a1)
{
  v46 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v44 = &v40 - v4;
  v5 = type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator();
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = *(v42 + 64);
  MEMORY[0x28223BE20](v5);
  v45 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v40 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - v17;
  v41 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher();
  v19 = *(v41 + 20);
  _s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgWOcTm_0(v1 + v19, v18, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  v20 = *(v9 + 48);
  v21 = v20(v18, 1, v8);
  v22 = v18;
  v23 = v1;
  _s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgWOhTm_0(v22, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  if (v21 != 1)
  {
    v24 = v1 + v19;
    v25 = v40;
    _s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgWOcTm_0(v24, v40, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
    if (v20(v25, 1, v8) == 1)
    {
      *v12 = 0;
      v12[8] = 1;
      *(v12 + 20) = 0;
      *(v12 + 12) = 0;
      *(v12 + 7) = 0;
      v26 = &v12[*(v8 + 36)];
      UnknownStorage.init()();
      v27 = *(v8 + 40);
      v28 = type metadata accessor for Apple_Workout_Core_CLLocation();
      (*(*(v28 - 8) + 56))(&v12[v27], 1, 1, v28);
      if (v20(v25, 1, v8) != 1)
      {
        _s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgWOhTm_0(v25, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
      }
    }

    else
    {
      outlined init with take of Apple_Workout_Core_TrackRunningCoordinator(v25, v12, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
    }

    v29 = Apple_Workout_Core_RunningTrackInfo.decoded.getter();
    outlined destroy of Apple_Workout_Core_TrackRunningMetricsPublisher(v12, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
    swift_getKeyPath();
    swift_getKeyPath();
    v47 = v29;

    static Published.subscript.setter();
  }

  v30 = v44;
  _s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgWOcTm_0(v23 + *(v41 + 24), v44, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  v31 = v43;
  v32 = *(v42 + 48);
  if (v32(v30, 1, v43) == 1)
  {
    v33 = v45;
    *v45 = 0;
    v34 = &v33[*(v31 + 20)];
    UnknownStorage.init()();
    if (v32(v30, 1, v31) != 1)
    {
      _s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgWOhTm_0(v30, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
    }
  }

  else
  {
    v33 = v45;
    outlined init with take of Apple_Workout_Core_TrackRunningCoordinator(v30, v45, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v35 = static TrackRunningCoordinator.shared;
  v36 = *v33;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v47) = v36;
  v37 = v35;
  static Published.subscript.setter();
  outlined destroy of Apple_Workout_Core_TrackRunningMetricsPublisher(v33, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
  swift_getKeyPath();
  swift_getKeyPath();
  v47 = v37;

  v38 = v37;
  return static Published.subscript.setter();
}

char *TrackRunningMetricsPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized TrackRunningMetricsPublisher.__allocating_init(serializedData:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

uint64_t protocol witness for Protable.protobuf.getter in conformance TrackRunningMetricsPublisher()
{
  v1 = *v0;
  type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher();
  lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  return static Message.with(_:)();
}

uint64_t protocol witness for ProDatable.wireData() in conformance TrackRunningMetricsPublisher()
{
  v1 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  static Message.with(_:)();
  v6 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_TrackRunningMetricsPublisher(v4, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  return v6;
}

uint64_t protocol witness for static ProDatable.decodeProto(serializedData:) in conformance TrackRunningMetricsPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized static TrackRunningMetricsPublisher.decodeProto(serializedData:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t protocol witness for ProDatable.init(serializedData:) in conformance TrackRunningMetricsPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char **a3@<X8>)
{
  v7 = specialized TrackRunningMetricsPublisher.__allocating_init(serializedData:)(a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t specialized static TrackRunningMetricsPublisher.decodeProto(serializedData:)(uint64_t a1, unint64_t a2)
{
  v28 = a1;
  v29 = a2;
  v2 = type metadata accessor for BinaryDecodingOptions();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher();
  v5 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMd, &_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMd, &_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  v18 = type metadata accessor for TrackRunningMetricsPublisher();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  v22 = OBJC_IVAR____TtC11WorkoutCore28TrackRunningMetricsPublisher__trackInfo;
  *&v32 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore16RunningTrackInfoCSgMd, &_s11WorkoutCore16RunningTrackInfoCSgMR);
  Published.init(initialValue:)();
  (*(v14 + 32))(v21 + v22, v17, v13);
  v23 = OBJC_IVAR____TtC11WorkoutCore28TrackRunningMetricsPublisher__trackRunningCoordinator;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v24 = static TrackRunningCoordinator.shared;
  *&v32 = static TrackRunningCoordinator.shared;
  type metadata accessor for TrackRunningCoordinator();
  v25 = v24;
  Published.init(initialValue:)();
  (*(v9 + 32))(v21 + v23, v12, v8);
  v35 = v28;
  v36 = v29;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  outlined copy of Data._Representation(v28, v29);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  v26 = v37;
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v26)
  {
  }

  else
  {
    Apple_Workout_Core_TrackRunningMetricsPublisher.decodeInto(publisher:)(v21);
    outlined destroy of Apple_Workout_Core_TrackRunningMetricsPublisher(v7, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  }

  return v21;
}

char *specialized TrackRunningMetricsPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMd, &_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMR);
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMd, &_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMR);
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for BinaryDecodingOptions();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  v38 = a2;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  v18 = v39;
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (!v18)
  {
    v19 = v7;
    v20 = v32;
    v31 = v4;
    v39 = 0;
    v21 = type metadata accessor for TrackRunningMetricsPublisher();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    v7 = swift_allocObject();
    v24 = OBJC_IVAR____TtC11WorkoutCore28TrackRunningMetricsPublisher__trackInfo;
    *&v34 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore16RunningTrackInfoCSgMd, &_s11WorkoutCore16RunningTrackInfoCSgMR);
    Published.init(initialValue:)();
    (*(v33 + 32))(&v7[v24], v11, v8);
    v25 = OBJC_IVAR____TtC11WorkoutCore28TrackRunningMetricsPublisher__trackRunningCoordinator;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v26 = static TrackRunningCoordinator.shared;
    *&v34 = static TrackRunningCoordinator.shared;
    type metadata accessor for TrackRunningCoordinator();
    v27 = v26;
    Published.init(initialValue:)();
    (*(v20 + 32))(&v7[v25], v19, v31);

    Apple_Workout_Core_TrackRunningMetricsPublisher.decodeInto(publisher:)(v28);

    outlined destroy of Apple_Workout_Core_TrackRunningMetricsPublisher(v17, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  }

  return v7;
}

uint64_t type metadata accessor for TrackRunningMetricsPublisher()
{
  result = type metadata singleton initialization cache for TrackRunningMetricsPublisher;
  if (!type metadata singleton initialization cache for TrackRunningMetricsPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for TrackRunningMetricsPublisher()
{
  type metadata accessor for Published<RunningTrackInfo?>();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for Published<TrackRunningCoordinator>();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}