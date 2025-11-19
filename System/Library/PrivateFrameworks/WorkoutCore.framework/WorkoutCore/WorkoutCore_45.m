uint64_t one-time initialization function for EntityPropertyIdentifierAllowlist()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for EntityPropertyIdentifierAllowlist);
  result = swift_arrayDestroy();
  EntityPropertyIdentifierAllowlist = v0;
  return result;
}

uint64_t type metadata accessor for INPlayMediaIntent(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t HeartRateZoneType.rawValue.getter()
{
  v1 = 0x6D6F74737563;
  if (*v0 != 1)
  {
    v1 = 6710895;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

WorkoutCore::HeartRateZoneType_optional __swiftcall HeartRateZoneType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HeartRateZoneType.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t HeartRateZoneType.analyticsKey.getter()
{
  v1 = 0xD000000000000013;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000019;
  }

  *v0;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance HeartRateZoneType(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6D6F74737563;
  if (v2 != 1)
  {
    v4 = 6710895;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6974616D6F747561;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000063;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D6F74737563;
  if (*a2 != 1)
  {
    v8 = 6710895;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6974616D6F747561;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000063;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HeartRateZoneType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance HeartRateZoneType()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HeartRateZoneType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance HeartRateZoneType(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000063;
  v4 = 0xE600000000000000;
  v5 = 0x6D6F74737563;
  if (v2 != 1)
  {
    v5 = 6710895;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6974616D6F747561;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t lazy protocol witness table accessor for type [HeartRateZoneType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [HeartRateZoneType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HeartRateZoneType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore17HeartRateZoneTypeOGMd, &_sSay11WorkoutCore17HeartRateZoneTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [HeartRateZoneType] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeartRateZoneType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HeartRateZoneType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t WorkoutConfiguration.deserializedCopy(validator:)(uint64_t a1)
{
  type metadata accessor for WorkoutConfiguration();
  v3 = [v1 serialize];
  static WorkoutConfiguration.deserialize(from:requiringOccurrence:validator:)(v3, 0, a1, v10);

  if (v10[3])
  {
    if (swift_dynamicCast())
    {
      return v9;
    }
  }

  else
  {
    _sypSgWOhTm_4(v10, &_sypSgMd, &_sypSgMR);
  }

  if (one-time initialization token for activityPicker != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static WOLog.activityPicker);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20AEA4000, v6, v7, "Could not copy workout configuration via serialization", v8, 2u);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  return 0;
}

uint64_t WorkoutConfiguration.copy(uuid:location:swimmingLocation:isPartOfMultisport:preservingExternalProvider:)(uint64_t a1, void *a2, int a3, uint64_t a4, int a5, int a6, int a7)
{
  v8 = v7;
  v84 = a7;
  v91 = a5;
  v92 = a6;
  v95 = a2;
  v96 = a4;
  v90 = a3;
  v88 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v98 = &v80 - v11;
  v12 = type metadata accessor for UUID();
  v86 = *(v12 - 8);
  v87 = v12;
  v13 = *(v86 + 64);
  MEMORY[0x28223BE20](v12);
  v89 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v80 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v80 - v23;
  type metadata accessor for WorkoutConfigurationValidator();
  swift_initStackObject();
  v25 = WorkoutConfigurationValidator.init()();
  v26 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  v93 = *(v8 + v26);
  v27 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  v94 = v24;
  _s10Foundation4DateVSgWOcTm_9(v8 + v27, v24, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v28 = OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate;
  swift_beginAccess();
  v97 = v22;
  v29 = v22;
  v30 = v25;
  _s10Foundation4DateVSgWOcTm_9(v8 + v28, v29, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v82 = v26;
  *(v8 + v26) = 0;
  v31 = type metadata accessor for Date();
  v32 = *(*(v31 - 8) + 56);
  v32(v19, 1, 1, v31);
  swift_beginAccess();
  v83 = v27;
  outlined assign with take of Date?(v19, v8 + v27);
  swift_endAccess();
  v32(v19, 1, 1, v31);
  swift_beginAccess();
  v85 = v19;
  outlined assign with take of Date?(v19, v8 + v28);
  swift_endAccess();
  v33 = WorkoutConfiguration.deserializedCopy(validator:)(v30);
  if (!v33)
  {
LABEL_15:

    _sypSgWOhTm_4(v97, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    _sypSgWOhTm_4(v94, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    return 0;
  }

  v34 = v33;
  v81 = v30;
  v35 = v98;
  _s10Foundation4DateVSgWOcTm_9(v88, v98, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v36 = v86;
  v37 = *(v86 + 48);
  v38 = v35;
  v39 = v87;
  v40 = v37(v38, 1, v87);
  v80 = v28;
  if (v40 == 1)
  {
    v41 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    v42 = v89;
    (v36)[2](v89, v8 + v41, v39);
    v43 = v37(v98, 1, v39);
    v44 = v39;
    v46 = v95;
    v45 = v96;
    v47 = v91;
    if (v43 != 1)
    {
      _sypSgWOhTm_4(v98, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }
  }

  else
  {
    v42 = v89;
    (v36)[4](v89, v98, v39);
    v44 = v39;
    v46 = v95;
    v45 = v96;
    v47 = v91;
  }

  v48 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  (v36)[5](&v34[v48], v42, v44);
  swift_endAccess();
  v49 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v50 = *(v8 + v49);
  v51 = v90;
  v52 = v92;
  v53 = FIUIWorkoutActivityType.copy(location:swimmingLocation:isPartOfMultisport:)(v46, v90 & 1, v45, v47 & 1, v92);
  v54 = v47;
  v55 = v53;

  v56 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v57 = *&v34[v56];
  *&v34[v56] = v55;

  v58 = WorkoutConfiguration.deserializedCopy(validator:)(v81);
  if (!v58)
  {
    if (one-time initialization token for activityPicker != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    __swift_project_value_buffer(v75, static WOLog.activityPicker);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_20AEA4000, v76, v77, "Failed to validate copied workout configuration via serialization", v78, 2u);
      MEMORY[0x20F2E9420](v78, -1, -1);
    }

    goto LABEL_15;
  }

  v59 = v58;
  v60 = *&v34[v56];
  v61 = FIUIWorkoutActivityType.copy(location:swimmingLocation:isPartOfMultisport:)(v95, v51 & 1, v96, v54 & 1, v52);

  v62 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v63 = *(v59 + v62);
  *(v59 + v62) = v61;

  v64 = *(v8 + v82);
  v65 = v93;
  *(v8 + v82) = v93;

  v66 = v94;
  v67 = v85;
  _s10Foundation4DateVSgWOcTm_9(v94, v85, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v68 = v83;
  swift_beginAccess();
  outlined assign with take of Date?(v67, v8 + v68);
  swift_endAccess();
  _s10Foundation4DateVSgWOcTm_9(v97, v67, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v69 = v80;
  swift_beginAccess();
  outlined assign with take of Date?(v67, v8 + v69);
  swift_endAccess();
  if (v84)
  {
    v70 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
    swift_beginAccess();
    v71 = *(v59 + v70);
    *(v59 + v70) = v65;

    v72 = v85;
    outlined init with take of Date?(v66, v85);
    v73 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
    swift_beginAccess();
    outlined assign with take of Date?(v72, v59 + v73);
    swift_endAccess();
    outlined init with take of Date?(v97, v72);
    v74 = OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate;
    swift_beginAccess();
    outlined assign with take of Date?(v72, v59 + v74);
    swift_endAccess();
  }

  else
  {

    _sypSgWOhTm_4(v97, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    _sypSgWOhTm_4(v66, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  return v59;
}

uint64_t _s10Foundation4DateVSgWOcTm_9(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

char *StandardActivityItemsDataSource.__allocating_init(standardActivityTypeProvider:wheelchairUseProvider:swimmingSupported:activityMoveMode:reducedActivityTypesProvider:occurrenceStore:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = type metadata accessor for StandardActivityItemsDataSource();
  v12 = objc_allocWithZone(v11);
  v13 = OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_compoundObservers;
  *&v12[v13] = [objc_opt_self() weakObjectsHashTable];
  *&v12[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_multiModalityWidgetDataProvider] = 0;
  *&v12[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_activityMoveMode] = a4;
  *&v12[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_standardActivityTypeProvider] = a1;
  *&v12[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_wheelchairUseProvider] = a2;
  swift_unknownObjectRetain();
  v12[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_isWheelchairUser] = [swift_unknownObjectRetain() isWheelchairUser];
  v12[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_swimmingSupported] = a3;
  *&v12[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_occurrenceStore] = a6;
  v33.receiver = v12;
  v33.super_class = v11;
  v14 = a6;
  v15 = objc_msgSendSuper2(&v33, sel_init);
  v16 = *&v15[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_wheelchairUseProvider];
  v17 = v15;
  [v16 addObserver_];
  v18 = objc_allocWithZone(type metadata accessor for MultiModalityWidgetDataProvider());
  v19 = specialized MultiModalityWidgetDataProvider.init(standardActivityItemsDataSource:)(v17, v18);
  v20 = *&v17[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_multiModalityWidgetDataProvider];
  *&v17[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_multiModalityWidgetDataProvider] = v19;

  v21 = objc_opt_self();
  v22 = [v21 defaultCenter];
  [v22 addObserver:v17 selector:sel_smartGoalStoreUpdatedOccurrenceDataWithNotification_ name:@"NLSmartGoalStoreDidUpdateOccurrenceData" object:0];

  v23 = [v21 defaultCenter];
  [v23 addObserver:v17 selector:sel_smartGoalStoreDidShowActivityTypeWithNotification_ name:@"NLSmartGoalStoreDidShowActivityType" object:0];

  v24 = [v21 defaultCenter];
  [v24 addObserver:v17 selector:sel_smartGoalStoreDidHideActivityTypeWithNotification_ name:@"NLSmartGoalStoreDidHideActivityType" object:0];

  v25 = CFNotificationCenterGetDarwinNotifyCenter();
  v26 = *MEMORY[0x277CBECE8];
  v27 = *MEMORY[0x277CCB790];
  v28 = kCFStringEncodingASCII.getter();
  v29 = CFStringCreateWithCString(v26, v27, v28);
  CFNotificationCenterAddObserver(v25, v17, @objc closure #1 in StandardActivityItemsDataSource.observeActivityMoveModeChanged(), v29, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v30 = CFNotificationCenterGetDarwinNotifyCenter();
  v31 = MEMORY[0x20F2E6C00](0xD00000000000002CLL, 0x800000020B45F550);
  CFNotificationCenterAddObserver(v30, v17, @objc closure #1 in StandardActivityItemsDataSource.observeActivityPickerListChanged(), v31, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v17;
}

char *StandardActivityItemsDataSource.__allocating_init(standardActivityTypeProvider:wheelchairUseProvider:swimmingSupported:activityMoveMode:occurrenceStore:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  v13 = OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_compoundObservers;
  *&v12[v13] = [objc_opt_self() weakObjectsHashTable];
  *&v12[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_multiModalityWidgetDataProvider] = 0;
  *&v12[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_activityMoveMode] = a4;
  *&v12[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_standardActivityTypeProvider] = a1;
  *&v12[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_wheelchairUseProvider] = a2;
  swift_unknownObjectRetain();
  v12[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_isWheelchairUser] = [swift_unknownObjectRetain() isWheelchairUser];
  v12[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_swimmingSupported] = a3;
  *&v12[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_occurrenceStore] = a5;
  v33.receiver = v12;
  v33.super_class = v6;
  v14 = a5;
  v15 = objc_msgSendSuper2(&v33, sel_init);
  v16 = *&v15[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_wheelchairUseProvider];
  v17 = v15;
  [v16 addObserver_];
  v18 = objc_allocWithZone(type metadata accessor for MultiModalityWidgetDataProvider());
  v19 = specialized MultiModalityWidgetDataProvider.init(standardActivityItemsDataSource:)(v17, v18);
  v20 = *&v17[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_multiModalityWidgetDataProvider];
  *&v17[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_multiModalityWidgetDataProvider] = v19;

  v21 = objc_opt_self();
  v22 = [v21 defaultCenter];
  [v22 addObserver:v17 selector:sel_smartGoalStoreUpdatedOccurrenceDataWithNotification_ name:@"NLSmartGoalStoreDidUpdateOccurrenceData" object:0];

  v23 = [v21 defaultCenter];
  [v23 addObserver:v17 selector:sel_smartGoalStoreDidShowActivityTypeWithNotification_ name:@"NLSmartGoalStoreDidShowActivityType" object:0];

  v24 = [v21 defaultCenter];
  [v24 addObserver:v17 selector:sel_smartGoalStoreDidHideActivityTypeWithNotification_ name:@"NLSmartGoalStoreDidHideActivityType" object:0];

  v25 = CFNotificationCenterGetDarwinNotifyCenter();
  v26 = *MEMORY[0x277CBECE8];
  v27 = *MEMORY[0x277CCB790];
  v28 = kCFStringEncodingASCII.getter();
  v29 = CFStringCreateWithCString(v26, v27, v28);
  CFNotificationCenterAddObserver(v25, v17, @objc closure #1 in StandardActivityItemsDataSource.observeActivityMoveModeChanged(), v29, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v30 = CFNotificationCenterGetDarwinNotifyCenter();
  v31 = MEMORY[0x20F2E6C00](0xD00000000000002CLL, 0x800000020B45F550);
  CFNotificationCenterAddObserver(v30, v17, @objc closure #1 in StandardActivityItemsDataSource.observeActivityPickerListChanged(), v31, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v17;
}

char *StandardActivityItemsDataSource.init(standardActivityTypeProvider:wheelchairUseProvider:swimmingSupported:activityMoveMode:occurrenceStore:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  v11 = OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_compoundObservers;
  *&v5[v11] = [objc_opt_self() weakObjectsHashTable];
  *&v5[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_multiModalityWidgetDataProvider] = 0;
  *&v5[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_activityMoveMode] = a4;
  *&v5[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_standardActivityTypeProvider] = a1;
  *&v5[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_wheelchairUseProvider] = a2;
  swift_unknownObjectRetain();
  v5[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_isWheelchairUser] = [swift_unknownObjectRetain() isWheelchairUser];
  v5[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_swimmingSupported] = a3;
  *&v5[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_occurrenceStore] = a5;
  v31.receiver = v5;
  v31.super_class = type metadata accessor for StandardActivityItemsDataSource();
  v12 = a5;
  v13 = objc_msgSendSuper2(&v31, sel_init);
  v14 = *&v13[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_wheelchairUseProvider];
  v15 = v13;
  [v14 addObserver_];
  v16 = objc_allocWithZone(type metadata accessor for MultiModalityWidgetDataProvider());
  v17 = specialized MultiModalityWidgetDataProvider.init(standardActivityItemsDataSource:)(v15, v16);
  v18 = *&v15[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_multiModalityWidgetDataProvider];
  *&v15[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_multiModalityWidgetDataProvider] = v17;

  v19 = objc_opt_self();
  v20 = [v19 defaultCenter];
  [v20 addObserver:v15 selector:sel_smartGoalStoreUpdatedOccurrenceDataWithNotification_ name:@"NLSmartGoalStoreDidUpdateOccurrenceData" object:0];

  v21 = [v19 defaultCenter];
  [v21 addObserver:v15 selector:sel_smartGoalStoreDidShowActivityTypeWithNotification_ name:@"NLSmartGoalStoreDidShowActivityType" object:0];

  v22 = [v19 defaultCenter];
  [v22 addObserver:v15 selector:sel_smartGoalStoreDidHideActivityTypeWithNotification_ name:@"NLSmartGoalStoreDidHideActivityType" object:0];

  v23 = CFNotificationCenterGetDarwinNotifyCenter();
  v24 = *MEMORY[0x277CBECE8];
  v25 = *MEMORY[0x277CCB790];
  v26 = kCFStringEncodingASCII.getter();
  v27 = CFStringCreateWithCString(v24, v25, v26);
  CFNotificationCenterAddObserver(v23, v15, @objc closure #1 in StandardActivityItemsDataSource.observeActivityMoveModeChanged(), v27, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v28 = CFNotificationCenterGetDarwinNotifyCenter();
  v29 = MEMORY[0x20F2E6C00](0xD00000000000002CLL, 0x800000020B45F550);
  CFNotificationCenterAddObserver(v28, v15, @objc closure #1 in StandardActivityItemsDataSource.observeActivityPickerListChanged(), v29, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v15;
}

id StandardActivityItemsDataSource.__deallocating_deinit()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v1, v0);

  v3.receiver = v0;
  v3.super_class = type metadata accessor for StandardActivityItemsDataSource();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void StandardActivityItemsDataSource.smartGoalStoreUpdatedOccurrenceData(notification:)(void *a1)
{
  if (one-time initialization token for activityPicker != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.activityPicker);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = [v3 name];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v13);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Standard: smart goal store updating Standard occurrence data, notification: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm_7(v7);
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  StandardActivityItemsDataSource.updateCompoundObservers()();
}

void StandardActivityItemsDataSource.smartGoalStoreDidShowActivityType(notification:)(void *a1, const char *a2, char *a3)
{
  v6 = [a1 userInfo];
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v8 + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v41), (v10 & 1) == 0))
  {

    outlined destroy of AnyHashable(v41);
LABEL_13:
    v42 = 0u;
    v43 = 0u;
    goto LABEL_14;
  }

  outlined init with copy of Any(*(v8 + 56) + 32 * v9, &v42);
  outlined destroy of AnyHashable(v41);

  if (!*(&v43 + 1))
  {
LABEL_14:
    _sypSgWOhTm_5(&v42, &_sypSgMd, &_sypSgMR);
    goto LABEL_15;
  }

  type metadata accessor for FIUIWorkoutActivityType();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

  v11 = v41[0];
  if ([v41[0] isStandard])
  {
    if (one-time initialization token for activityPicker != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static WOLog.activityPicker);
    v13 = a1;
    v14 = v11;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      format = swift_slowAlloc();
      v41[0] = format;
      *v17 = 136315394;
      v18 = [v13 name];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v41);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2112;
      *(v17 + 14) = v14;
      *v38 = v11;
      v23 = v14;
      _os_log_impl(&dword_20AEA4000, v15, v16, a2, v17, 0x16u);
      _sypSgWOhTm_5(v38, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v38, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm_7(format);
      MEMORY[0x20F2E9420](format, -1, -1);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }

    StandardActivityItemsDataSource.updateCompoundObservers()();
    return;
  }

LABEL_16:
  if (one-time initialization token for activityPicker != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static WOLog.activityPicker);
  v25 = v11;
  v26 = a1;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    formata = a3;
    v31 = swift_slowAlloc();
    v41[0] = v31;
    *v29 = 136315394;
    v32 = [v26 name];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, v41);

    *(v29 + 4) = v36;
    *(v29 + 12) = 2112;
    *(v29 + 14) = v25;
    *v30 = v11;
    v37 = v25;
    _os_log_impl(&dword_20AEA4000, v27, v28, formata, v29, 0x16u);
    _sypSgWOhTm_5(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v30, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm_7(v31);
    MEMORY[0x20F2E9420](v31, -1, -1);
    MEMORY[0x20F2E9420](v29, -1, -1);
  }

  else
  {
  }
}

void StandardActivityItemsDataSource.activityMoveModeDidUpdate()()
{
  v1 = FIActivityMoveModeUserDefault();
  v2 = OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_activityMoveMode;
  *&v0[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_activityMoveMode] = v1;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.default);
  v4 = v0;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000091, 0x800000020B46AE50, &v16);
    *(v7 + 12) = 2080;
    v9 = *&v0[v2];
    v10 = NLHKActivityMoveModeString();
    if (v10)
    {
      v11 = v10;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v12 = Optional.description.getter();
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v16);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_20AEA4000, v5, v6, "Standard: [%s] Activity move mode did update. activityMoveMode: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  StandardActivityItemsDataSource.updateCompoundObservers()();
}

void @objc closure #1 in StandardActivityItemsDataSource.observeActivityMoveModeChanged()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  if (a2)
  {
    type metadata accessor for StandardActivityItemsDataSource();
    swift_unknownObjectRetain();
    if (swift_dynamicCastClass())
    {
      a6();
    }

    swift_unknownObjectRelease();
  }
}

void StandardActivityItemsDataSource.activityPickerDidUpdate()()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static WOLog.default);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = v4;
    *v3 = 136315138;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000091, 0x800000020B46AE50, &v5);
    _os_log_impl(&dword_20AEA4000, v1, v2, "Standard: [%s] Activity picker did update", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm_7(v4);
    MEMORY[0x20F2E9420](v4, -1, -1);
    MEMORY[0x20F2E9420](v3, -1, -1);
  }

  StandardActivityItemsDataSource.updateCompoundObservers()();
}

id StandardActivityItemsDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id specialized MultiModalityWidgetDataProvider.init(standardActivityItemsDataSource:)(uint64_t a1, char *a2)
{
  v17[3] = type metadata accessor for StandardActivityItemsDataSource();
  v17[4] = &protocol witness table for StandardActivityItemsDataSource;
  v17[0] = a1;
  v4 = OBJC_IVAR____TtC11WorkoutCore31MultiModalityWidgetDataProvider_userDefaults;
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v6 = MEMORY[0x20F2E6C00](0xD00000000000001ELL, 0x800000020B46AEF0);
  v7 = [v5 initWithSuiteName_];

  *&a2[v4] = v7;
  outlined init with copy of CompoundActivityItemsDataSourceSync(v17, &a2[OBJC_IVAR____TtC11WorkoutCore31MultiModalityWidgetDataProvider_standardActivityItemsDataSource]);
  *&a2[OBJC_IVAR____TtC11WorkoutCore31MultiModalityWidgetDataProvider_savedModalities] = MEMORY[0x277D84F90];
  v16.receiver = a2;
  v16.super_class = type metadata accessor for MultiModalityWidgetDataProvider();
  v8 = objc_msgSendSuper2(&v16, sel_init);
  v9 = one-time initialization token for workoutWidget;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static WOLog.workoutWidget);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_20AEA4000, v12, v13, "[MultiModalityWidget] subscribing to activity picker updates", v14, 2u);
    MEMORY[0x20F2E9420](v14, -1, -1);
  }

  [*(a1 + OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_compoundObservers) addObject_];
  __swift_destroy_boxed_opaque_existential_0Tm_7(v17);
  return v10;
}

void specialized StandardActivityItemsDataSource.wheelchairUseCharacteristicCache(_:wheelchairUsageDidChange:)(char a1)
{
  v2 = v1;
  if (one-time initialization token for activityPicker != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.activityPicker);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_20AEA4000, v5, v6, "wheelchairUseCharacteristicCache did change: %{BOOL}d", v7, 8u);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  if (*(v2 + OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_isWheelchairUser) != (a1 & 1))
  {
    *(v2 + OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_isWheelchairUser) = a1 & 1;

    StandardActivityItemsDataSource.updateCompoundObservers()();
  }
}

uint64_t outlined init with copy of CompoundActivityItemsDataSourceSync(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for WorkoutVoiceMomentAnalyticsEvent()
{
  result = type metadata singleton initialization cache for WorkoutVoiceMomentAnalyticsEvent;
  if (!type metadata singleton initialization cache for WorkoutVoiceMomentAnalyticsEvent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WorkoutVoiceMomentAnalyticsEvent()
{
  type metadata accessor for WorkoutState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WorkoutVoiceMomentType();
    if (v1 <= 0x3F)
    {
      type metadata accessor for InferenceResult?();
      if (v2 <= 0x3F)
      {
        _sSdSgMaTm_1(319, &lazy cache variable for type metadata for Double?);
        if (v3 <= 0x3F)
        {
          _sSdSgMaTm_1(319, &lazy cache variable for type metadata for Bool?);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Error?();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for InferenceResult?()
{
  if (!lazy cache variable for type metadata for InferenceResult?)
  {
    type metadata accessor for InferenceResult();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for InferenceResult?);
    }
  }
}

void _sSdSgMaTm_1(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata accessor for Error?()
{
  if (!lazy cache variable for type metadata for Error?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Error?);
    }
  }
}

id _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy11WorkoutCore0D25VoiceMomentAnalyticsEventV0H3Key33_8527EA2E8BFC8B0F8968C39360BA77E2LLOSo8NSObjectCG_SS_AMts5NeverOTg504_s11d8Core0A25fghi14V0E3Key33_8527klmnopqr6LLOSo8s36CSSAHIgygoo_AF3key_AH5valuetSS_AHts5t19OIegnrzr_TR04_s11a8v44A25cdef19V05buildeF0SDySSSo8p25CGyFSS_AFtAC0yZ37_8527hijklmnO12LLO_AFtXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v35 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v35;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = _HashTable.startBucket.getter();
  v7 = result;
  v8 = 0;
  v9 = *(v3 + 36);
  v28 = v3 + 72;
  v29 = v1;
  v30 = v9;
  v31 = v3 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v32 = v8;
    v12 = *(*(v3 + 56) + 8 * v7);
    v13 = WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey.rawValue.getter(*(*(v3 + 48) + v7));
    v33 = v14;
    v34 = v13;
    v15 = v3;
    v17 = *(v35 + 16);
    v16 = *(v35 + 24);
    result = v12;
    v18 = result;
    if (v17 >= v16 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
    }

    *(v35 + 16) = v17 + 1;
    v19 = (v35 + 24 * v17);
    v19[4] = v34;
    v19[5] = v33;
    v19[6] = v18;
    v10 = 1 << *(v15 + 32);
    if (v7 >= v10)
    {
      goto LABEL_24;
    }

    v4 = v31;
    v20 = *(v31 + 8 * v11);
    if ((v20 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v3 = v15;
    v21 = *(v15 + 36);
    v9 = v30;
    if (v30 != v21)
    {
      goto LABEL_26;
    }

    v22 = v20 & (-2 << (v7 & 0x3F));
    if (v22)
    {
      v10 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v11 << 6;
      v24 = v11 + 1;
      v25 = (v28 + 8 * v11);
      while (v24 < (v10 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = outlined consume of [WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey : NSObject].Index._Variant(v7, v30, 0);
          v10 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = outlined consume of [WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey : NSObject].Index._Variant(v7, v30, 0);
    }

LABEL_4:
    v8 = v32 + 1;
    v7 = v10;
    if (v32 + 1 == v29)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t WorkoutVoiceMomentAnalyticsEvent.buildAnalyticsEvent()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence23AnnounceUtteranceSourceOSgMd, &_s19FitnessIntelligence23AnnounceUtteranceSourceOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v141 = &v140 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence23AnnounceUtteranceResultVSgMd, &_s19FitnessIntelligence23AnnounceUtteranceResultVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v142 = &v140 - v7;
  v8 = type metadata accessor for AnnounceUtteranceResult();
  v9 = *(v8 - 8);
  v144 = v8;
  v145 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v143 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v147 = &v140 - v14;
  v15 = type metadata accessor for InferenceResult();
  v148 = *(v15 - 8);
  v149 = v15;
  v16 = *(v148 + 64);
  MEMORY[0x28223BE20](v15);
  v146 = &v140 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for WorkoutVoiceMomentType();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v140 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore0C25VoiceMomentAnalyticsEventV0G3Key33_8527EA2E8BFC8B0F8968C39360BA77E2LLO_So8NSObjectCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v24 = MEMORY[0x20F2E6C00](*(v1 + 16), *(v1 + 24));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v151 = v23;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, 10, isUniquelyReferenced_nonNull_native);
  v26 = v151;
  v152 = v151;
  v27 = type metadata accessor for WorkoutVoiceMomentAnalyticsEvent();
  v28 = v27[6];
  v150 = v1;
  v29 = WorkoutState.activityType.getter();
  [v29 effectiveTypeIdentifier];

  v30 = _HKWorkoutActivityNameForActivityType();
  if (v30)
  {
    v31 = v30;
    v140 = v22;
    v32 = v18;
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36._object = 0x800000020B456540;
    v36._countAndFlagsBits = 0xD000000000000015;
    if (String.hasPrefix(_:)(v36))
    {
      v37 = String.count.getter();
      v38 = specialized Collection.dropFirst(_:)(v37, v33, v35);
      v40 = v39;
      v42 = v41;
      v44 = v43;

      v33 = MEMORY[0x20F2E6D00](v38, v40, v42, v44);
      v35 = v45;
    }

    v18 = v32;
    v22 = v140;
  }

  else
  {
    v35 = 0x800000020B456520;
    v33 = 0xD000000000000010;
  }

  v46 = MEMORY[0x20F2E6C00](v33, v35);

  v47 = swift_isUniquelyReferenced_nonNull_native();
  v151 = v26;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v46, 0, v47);
  v48 = v151;
  v49 = WorkoutState.activityType.getter();
  [v49 isIndoor];

  type metadata accessor for NSString();
  v50 = NSString.init(stringLiteral:)();
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v151 = v48;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v50, 2, v51);
  v152 = v151;
  v52 = v150;
  (*(v19 + 16))(v22, v150 + v27[7], v18);
  v53 = (*(v19 + 88))(v22, v18);
  if (v53 == *MEMORY[0x277D0A468])
  {
    v54 = 0;
  }

  else if (v53 == *MEMORY[0x277D0A470])
  {
    v54 = 3;
  }

  else if (v53 == *MEMORY[0x277D0A478])
  {
    v54 = 1;
  }

  else
  {
    if (v53 != *MEMORY[0x277D0A460])
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v54 = 2;
  }

  v55 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v56 = v152;
  v57 = swift_isUniquelyReferenced_nonNull_native();
  v151 = v56;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v55, 3, v57);
  v58 = v151;
  v59 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v151 = v58;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v59, 19, v60);
  v61 = v151;
  v152 = v151;
  v62 = v52 + v27[9];
  v63 = *v62;
  v64 = *(v62 + 8);
  if ((v64 & 1) == 0)
  {
    v65 = *v62;
    v66 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v151 = v61;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v66, 4, v67);
    v61 = v151;
    v152 = v151;
  }

  v68 = v52 + v27[10];
  if ((*(v68 + 8) & 1) == 0)
  {
    v69 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v70 = swift_isUniquelyReferenced_nonNull_native();
    v151 = v61;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v69, 5, v70);
    v61 = v151;
    v152 = v151;
  }

  v71 = *(v52 + v27[11]);
  if (v71 != 2)
  {
    v72 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v151 = v61;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v72, 15, v73);
    v61 = v151;
    v152 = v151;
  }

  v74 = *(v52 + v27[12]);
  if (v74 != 2)
  {
    v75 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v76 = swift_isUniquelyReferenced_nonNull_native();
    v151 = v61;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v75, 16, v76);
    v61 = v151;
    v152 = v151;
  }

  v77 = *(v52 + v27[13]);
  if (v77 != 2)
  {
    v78 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v151 = v61;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v78, 17, v79);
    v61 = v151;
    v152 = v151;
  }

  v81 = v147;
  v80 = v148;
  outlined init with copy of InferenceResult?(v52 + v27[8], v147);
  if ((*(v80 + 48))(v81, 1, v149) == 1)
  {
    v82 = &_s19FitnessIntelligence15InferenceResultVSgMd;
    v83 = &_s19FitnessIntelligence15InferenceResultVSgMR;
LABEL_34:
    outlined destroy of InferenceResult?(v81, v82, v83);
    goto LABEL_45;
  }

  v84 = v146;
  (*(v80 + 32))();
  v85 = InferenceResult.systemVersion.getter();
  if (v86)
  {
    v87 = MEMORY[0x20F2E6C00](v85);
  }

  else
  {
    v87 = 0;
  }

  v88 = v144;
  specialized Dictionary.subscript.setter(v87, 6);
  v89 = InferenceResult.modelVersion.getter();
  if (v90)
  {
    v91 = MEMORY[0x20F2E6C00](v89);
  }

  else
  {
    v91 = 0;
  }

  specialized Dictionary.subscript.setter(v91, 7);
  InferenceResult.inferenceDuration.getter();
  v93 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v94 = v152;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v151 = v94;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v93, 8, v95);
  v61 = v151;
  v152 = v151;
  v81 = v142;
  v96 = v84;
  InferenceResult.announceUtteranceResult.getter();
  v97 = v145;
  if ((*(v145 + 48))(v81, 1, v88) == 1)
  {
    (*(v148 + 8))(v96, v149);
    v82 = &_s19FitnessIntelligence23AnnounceUtteranceResultVSgMd;
    v83 = &_s19FitnessIntelligence23AnnounceUtteranceResultVSgMR;
    goto LABEL_34;
  }

  (*(v97 + 32))(v143, v81, v88);
  AnnounceUtteranceResult.announceDuration.getter();
  v99 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v100 = v152;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v151 = v100;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v99, 11, v101);
  v152 = v151;
  v102 = v141;
  AnnounceUtteranceResult.announceSource.getter();
  v103 = type metadata accessor for AnnounceUtteranceSource();
  v104 = *(v103 - 8);
  if ((*(v104 + 48))(v102, 1, v103) == 1)
  {
    outlined destroy of InferenceResult?(v102, &_s19FitnessIntelligence23AnnounceUtteranceSourceOSgMd, &_s19FitnessIntelligence23AnnounceUtteranceSourceOSgMR);
    v105 = 0;
  }

  else
  {
    v106 = AnnounceUtteranceSource.rawValue.getter();
    v108 = v107;
    (*(v104 + 8))(v102, v103);
    v109 = MEMORY[0x20F2E6C00](v106, v108);

    v105 = v109;
  }

  specialized Dictionary.subscript.setter(v105, 12);
  v110 = v143;
  AnnounceUtteranceResult.synthesisDuration.getter();
  v112 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v113 = v152;
  v114 = swift_isUniquelyReferenced_nonNull_native();
  v151 = v113;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v112, 9, v114);
  v61 = v151;
  v152 = v151;
  if ((v64 & 1) == 0)
  {
    InferenceResult.inferenceDuration.getter();
    v116 = v115 + v63;
    AnnounceUtteranceResult.synthesisDuration.getter();
    v118 = v116 + v117;
    AnnounceUtteranceResult.announceDuration.getter();
    v120 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v121 = swift_isUniquelyReferenced_nonNull_native();
    v151 = v61;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v120, 13, v121);
    v61 = v151;
    v152 = v151;
  }

  v122 = AnnounceUtteranceResult.announceResult.getter();
  if (v122 != 2)
  {
    v123 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v124 = swift_isUniquelyReferenced_nonNull_native();
    v151 = v61;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v123, 1, v124);
    v61 = v151;
    v152 = v151;
  }

  v125 = AnnounceUtteranceResult.synthesizedAudioLength.getter();
  if ((v126 & 1) == 0)
  {
    v127 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v128 = swift_isUniquelyReferenced_nonNull_native();
    v151 = v61;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v127, 14, v128);
    v61 = v151;
    v152 = v151;
  }

  v129 = v148;
  (*(v145 + 8))(v110, v88);
  (*(v129 + 8))(v146, v149);
LABEL_45:
  v130 = WorkoutVoiceMomentAnalyticsEvent.announcementFailure.getter();
  if (v130 <= 5u)
  {
    if (v130 > 2u)
    {
      v131 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
      if (v130 == 3)
      {
        v132 = 3;
      }

      else if (v130 == 4)
      {
        v132 = 4;
      }

      else
      {
        v132 = 5;
      }
    }

    else
    {
      v131 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
      if (v130)
      {
        if (v130 == 1)
        {
          v132 = 1;
        }

        else
        {
          v132 = 2;
        }
      }

      else
      {
        v132 = v130;
      }
    }

    goto LABEL_68;
  }

  if (v130 <= 8u)
  {
    v131 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
    if (v130 == 6)
    {
      v132 = 6;
    }

    else if (v130 == 7)
    {
      v132 = 7;
    }

    else
    {
      v132 = 8;
    }

    goto LABEL_68;
  }

  if (v130 == 9)
  {
    v132 = 9;
    goto LABEL_64;
  }

  if (v130 == 10)
  {
    v132 = 100;
LABEL_64:
    v131 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
LABEL_68:
    v133 = [objc_allocWithZone(MEMORY[0x277CCABB0]) v131[88]];
    v134 = v152;
    v135 = swift_isUniquelyReferenced_nonNull_native();
    v151 = v134;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v133, 18, v135);
    v61 = v151;
  }

  v136 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy11WorkoutCore0D25VoiceMomentAnalyticsEventV0H3Key33_8527EA2E8BFC8B0F8968C39360BA77E2LLOSo8NSObjectCG_SS_AMts5NeverOTg504_s11d8Core0A25fghi14V0E3Key33_8527klmnopqr6LLOSo8s36CSSAHIgygoo_AF3key_AH5valuetSS_AHts5t19OIegnrzr_TR04_s11a8v44A25cdef19V05buildeF0SDySSSo8p25CGyFSS_AFtAC0yZ37_8527hijklmnO12LLO_AFtXEfU_Tf3nnnpf_nTf1cn_n(v61);

  if (v136[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
    v137 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v137 = MEMORY[0x277D84F98];
  }

  v151 = v137;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v138, 1, &v151);

  return v151;
}

uint64_t WorkoutVoiceMomentAnalyticsEvent.announcementFailure.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence23AnnounceUtteranceResultVSgMd, &_s19FitnessIntelligence23AnnounceUtteranceResultVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v22 - v8;
  v10 = type metadata accessor for WorkoutVoiceMomentAnalyticsEvent();
  outlined init with copy of InferenceResult?(v1 + *(v10 + 32), v5);
  v11 = type metadata accessor for InferenceResult();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    v13 = &_s19FitnessIntelligence15InferenceResultVSgMd;
    v14 = &_s19FitnessIntelligence15InferenceResultVSgMR;
    v15 = v5;
LABEL_5:
    outlined destroy of InferenceResult?(v15, v13, v14);
    goto LABEL_6;
  }

  InferenceResult.announceUtteranceResult.getter();
  (*(v12 + 8))(v5, v11);
  v16 = type metadata accessor for AnnounceUtteranceResult();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v9, 1, v16) == 1)
  {
    v13 = &_s19FitnessIntelligence23AnnounceUtteranceResultVSgMd;
    v14 = &_s19FitnessIntelligence23AnnounceUtteranceResultVSgMR;
    v15 = v9;
    goto LABEL_5;
  }

  v21 = AnnounceUtteranceResult.announceResult.getter();
  (*(v17 + 8))(v9, v16);
  if (v21 != 2 && (v21 & 1) == 0)
  {
    return 9;
  }

LABEL_6:
  v18 = *(v1 + *(v10 + 56));
  if (!v18)
  {
    return 11;
  }

  v22[1] = *(v1 + *(v10 + 56));
  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    return 1;
  }

  else
  {
    return 10;
  }
}

unint64_t WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey.rawValue.getter(char a1)
{
  result = 0x7974697669746361;
  switch(a1)
  {
    case 1:
    case 10:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x6E6F697461636F6CLL;
      break;
    case 3:
      result = 0x7954746E656D6F4DLL;
      break;
    case 4:
      result = 0xD00000000000001ELL;
      break;
    case 5:
      result = 0x7275446C61746F74;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0xD00000000000001CLL;
      break;
    case 11:
    case 12:
      result = 0x65636E756F6E6E61;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    case 15:
    case 18:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0xD00000000000001ALL;
      break;
    case 17:
      result = 0xD00000000000001BLL;
      break;
    case 19:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey(char *a1, char *a2)
{
  v2 = *a2;
  v3 = WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey()
{
  WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = specialized WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey.init(rawValue:)();
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey@<X0>(unint64_t *a1@<X8>)
{
  result = WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MomentGenerationError()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MomentGenerationError()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

uint64_t outlined init with copy of InferenceResult?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of InferenceResult?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MomentGenerationError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MomentGenerationError(_WORD *result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type MomentGenerationError and conformance MomentGenerationError()
{
  result = lazy protocol witness table cache variable for type MomentGenerationError and conformance MomentGenerationError;
  if (!lazy protocol witness table cache variable for type MomentGenerationError and conformance MomentGenerationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MomentGenerationError and conformance MomentGenerationError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey and conformance WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey()
{
  result = lazy protocol witness table cache variable for type WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey and conformance WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey;
  if (!lazy protocol witness table cache variable for type WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey and conformance WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey and conformance WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey);
  }

  return result;
}

uint64_t specialized WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey.init(rawValue:)()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

uint64_t one-time initialization function for NRDEVICECAPABILITY_NAPILI_ALIGNED()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __swift_allocate_value_buffer(v0, static MediaPlaybackDeviceCompatibility.NRDEVICECAPABILITY_NAPILI_ALIGNED);
  __swift_project_value_buffer(v0, static MediaPlaybackDeviceCompatibility.NRDEVICECAPABILITY_NAPILI_ALIGNED);
  return UUID.init(uuidString:)();
}

uint64_t one-time initialization function for NRDEVICECAPABILITY_NAPILIB_ALIGNED()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __swift_allocate_value_buffer(v0, static MediaPlaybackDeviceCompatibility.NRDEVICECAPABILITY_NAPILIB_ALIGNED);
  __swift_project_value_buffer(v0, static MediaPlaybackDeviceCompatibility.NRDEVICECAPABILITY_NAPILIB_ALIGNED);
  return UUID.init(uuidString:)();
}

uint64_t specialized static MediaPlaybackDeviceCompatibility.hasNapiliAlignedPairedDevice()()
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v0 = *(*(v33 - 8) + 64);
  v1 = MEMORY[0x28223BE20](v33);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v25 - v4;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v7 = result;
    v8 = [result getPairedDevices];
    if (v8)
    {
      v9 = v8;
      type metadata accessor for NRDevice();
      v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v10 >> 62)
      {
        goto LABEL_36;
      }

      for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
      {
        v26 = v7;
        v28 = v3;
        v12 = 0;
        v31 = *MEMORY[0x277D2BB28];
        v32 = v10 & 0xC000000000000001;
        v27 = v10 & 0xFFFFFFFFFFFFFF8;
        v29 = i;
        v30 = v10;
        while (1)
        {
          if (v32)
          {
            v13 = MEMORY[0x20F2E7A20](v12, v10);
          }

          else
          {
            if (v12 >= *(v27 + 16))
            {
              goto LABEL_35;
            }

            v13 = *(v10 + 8 * v12 + 32);
          }

          v14 = v13;
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if ([v13 valueForProperty_])
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v35 = 0u;
            v36 = 0u;
          }

          v37[0] = v35;
          v37[1] = v36;
          if (*(&v36 + 1))
          {
            if (swift_dynamicCast() && (v34 & 1) != 0)
            {
              goto LABEL_6;
            }
          }

          else
          {
            outlined destroy of Any?(v37);
          }

          if (one-time initialization token for NRDEVICECAPABILITY_NAPILI_ALIGNED != -1)
          {
            swift_once();
          }

          v16 = __swift_project_value_buffer(v33, static MediaPlaybackDeviceCompatibility.NRDEVICECAPABILITY_NAPILI_ALIGNED);
          outlined init with copy of UUID?(v16, v5);
          v17 = type metadata accessor for UUID();
          v3 = *(v17 - 8);
          v7 = *(v3 + 6);
          isa = 0;
          if ((v7)(v5, 1, v17) != 1)
          {
            isa = UUID._bridgeToObjectiveC()().super.isa;
            (*(v3 + 1))(v5, v17);
          }

          v19 = [v14 supportsCapability_];

          if (v19)
          {
            if (one-time initialization token for NRDEVICECAPABILITY_NAPILIB_ALIGNED != -1)
            {
              swift_once();
            }

            v20 = __swift_project_value_buffer(v33, static MediaPlaybackDeviceCompatibility.NRDEVICECAPABILITY_NAPILIB_ALIGNED);
            v21 = v28;
            outlined init with copy of UUID?(v20, v28);
            if ((v7)(v21, 1, v17) == 1)
            {
              v22 = 0;
            }

            else
            {
              v22 = UUID._bridgeToObjectiveC()().super.isa;
              v23 = *(v3 + 1);
              v3 += 8;
              v23(v21, v17);
            }

            v10 = v30;
            v24 = [v14 supportsCapability_];

            if ((v24 & 1) == 0)
            {

              return 1;
            }

            goto LABEL_7;
          }

LABEL_6:

          v10 = v30;
LABEL_7:
          ++v12;
          if (v15 == v29)
          {

            return 0;
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        ;
      }
    }

    return 0;
  }

  return result;
}

unint64_t type metadata accessor for NRDevice()
{
  result = lazy cache variable for type metadata for NRDevice;
  if (!lazy cache variable for type metadata for NRDevice)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NRDevice);
  }

  return result;
}

uint64_t static WorkoutSupport.shouldTrackPaceWithOdometer(for:)(void *a1)
{
  v2 = [a1 identifier];
  if ((v2 - 70) < 2)
  {
    return 1;
  }

  if (v2 == 13)
  {
    return [a1 isIndoor] ^ 1;
  }

  return 0;
}

id WorkoutSupport.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutSupport.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutSupport();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WorkoutSupport.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutSupport();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id WOCatalogMediaTypeHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WOCatalogMediaTypeHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WOCatalogMediaTypeHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WOCatalogMediaTypeHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WOCatalogMediaTypeHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id VoiceMotivationStartEventAlert.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VoiceMotivationStartEventAlert.init()()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for VoiceMotivationStartEventAlert();
  v10.receiver = v0;
  v10.super_class = started;
  v7 = objc_msgSendSuper2(&v10, sel_init);
  [v7 setType_];
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v5, v1);
  [v7 setEventDate_];

  return v7;
}

id VoiceMotivationStartEventAlert.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoiceMotivationStartEventAlert();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TranscriptWorkoutAlert.message.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore22TranscriptWorkoutAlert_message);
  v2 = *(v0 + OBJC_IVAR____TtC11WorkoutCore22TranscriptWorkoutAlert_message + 8);

  return v1;
}

uint64_t TranscriptWorkoutAlert.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore22TranscriptWorkoutAlert_title);
  v2 = *(v0 + OBJC_IVAR____TtC11WorkoutCore22TranscriptWorkoutAlert_title + 8);

  return v1;
}

id TranscriptWorkoutAlert.init(title:message:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v4[OBJC_IVAR____TtC11WorkoutCore22TranscriptWorkoutAlert_title];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v4[OBJC_IVAR____TtC11WorkoutCore22TranscriptWorkoutAlert_message];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = type metadata accessor for TranscriptWorkoutAlert();
  v20.receiver = v4;
  v20.super_class = v16;
  v17 = objc_msgSendSuper2(&v20, sel_init);
  [v17 setType_];
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v10 + 8))(v13, v9);
  [v17 setEventDate_];

  return v17;
}

id TranscriptWorkoutAlert.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TranscriptWorkoutAlert.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranscriptWorkoutAlert();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Apple_Workout_Core_EnergyMetricsPublisher.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher();
  *a1 = 0;
  a1[1] = 0;
  v3 = a1 + *(v2 + 24);
  return UnknownStorage.init()();
}

uint64_t type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher()
{
  result = type metadata singleton initialization cache for Apple_Workout_Core_EnergyMetricsPublisher;
  if (!type metadata singleton initialization cache for Apple_Workout_Core_EnergyMetricsPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_EnergyMetricsPublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher() + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_EnergyMetricsPublisher.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher() + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static Apple_Workout_Core_EnergyMetricsPublisher._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_EnergyMetricsPublisher._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Workout_Core_EnergyMetricsPublisher.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_EnergyMetricsPublisher.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v1))
  {
    if (!v0[1] || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher() + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t static Apple_Workout_Core_EnergyMetricsPublisher.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v2 = *(type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher() + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_7(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

Swift::Int Apple_Workout_Core_EnergyMetricsPublisher.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_7(&lazy protocol witness table cache variable for type Apple_Workout_Core_EnergyMetricsPublisher and conformance Apple_Workout_Core_EnergyMetricsPublisher, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_EnergyMetricsPublisher@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_EnergyMetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_EnergyMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_EnergyMetricsPublisher(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_EnergyMetricsPublisher;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_EnergyMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_7(&lazy protocol witness table cache variable for type Apple_Workout_Core_EnergyMetricsPublisher and conformance Apple_Workout_Core_EnergyMetricsPublisher, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_EnergyMetricsPublisher@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_EnergyMetricsPublisher._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_EnergyMetricsPublisher(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_7(&lazy protocol witness table cache variable for type Apple_Workout_Core_EnergyMetricsPublisher and conformance Apple_Workout_Core_EnergyMetricsPublisher, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_EnergyMetricsPublisher()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_EnergyMetricsPublisher()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_7(&lazy protocol witness table cache variable for type Apple_Workout_Core_EnergyMetricsPublisher and conformance Apple_Workout_Core_EnergyMetricsPublisher, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_EnergyMetricsPublisher()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_EnergyMetricsPublisher(double *a1, double *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v3 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_7(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t type metadata completion function for Apple_Workout_Core_EnergyMetricsPublisher()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_7(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static MediaPlaybackStore.sharedInstance.getter()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }
}

uint64_t one-time initialization function for mediaConfigurationsUpdatedNotificationName()
{
  result = MEMORY[0x20F2E6C00](0xD000000000000033, 0x800000020B46B210);
  static MediaPlaybackStore.mediaConfigurationsUpdatedNotificationName = result;
  return result;
}

id static MediaPlaybackStore.mediaConfigurationsUpdatedNotificationName.getter()
{
  if (one-time initialization token for mediaConfigurationsUpdatedNotificationName != -1)
  {
    swift_once();
  }

  v1 = static MediaPlaybackStore.mediaConfigurationsUpdatedNotificationName;

  return v1;
}

uint64_t one-time initialization function for workoutMediaPreferencesChangedNotificationName()
{
  result = MEMORY[0x20F2E6C00](0xD00000000000002ALL, 0x800000020B46B2C0);
  static MediaPlaybackStore.workoutMediaPreferencesChangedNotificationName = result;
  return result;
}

void *MediaPlaybackStore.migratedUser.getter()
{
  v1 = *(v0 + 168);
  v2 = v1;
  return v1;
}

uint64_t MediaPlaybackStore.deinit()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v1, v0);

  v2 = *(v0 + 112);
  swift_unknownObjectRelease();
  v3 = *(v0 + 128);

  v4 = *(v0 + 144);

  v5 = *(v0 + 152);

  v6 = *(v0 + 160);

  v7 = *(v0 + 184);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t MediaPlaybackStore.__deallocating_deinit()
{
  MediaPlaybackStore.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t MediaPlaybackStore.addMediaConfiguration(for:configuration:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](MediaPlaybackStore.addMediaConfiguration(for:configuration:), v2, 0);
}

uint64_t MediaPlaybackStore.addMediaConfiguration(for:configuration:)()
{
  v1 = [*(v0 + 16) uniqueIdentifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  *(v0 + 40) = v4;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = MediaPlaybackStore.addMediaConfiguration(for:configuration:);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);

  return MediaPlaybackStore._addMediaConfiguration(for:configuration:)(v2, v4, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = MediaPlaybackStore.addMediaConfiguration(for:configuration:);
  }

  else
  {
    v7 = *(v2 + 32);
    v6 = *(v2 + 40);

    v5 = MediaPlaybackStore.addMediaConfiguration(for:configuration:);
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = *(v0 + 32);
  MediaPlaybackStore.sendMediaConfigurationAnalytics(for:configuration:)(*(v0 + 16), *(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t MediaPlaybackStore._addMediaConfiguration(for:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = type metadata accessor for UUID();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](MediaPlaybackStore._addMediaConfiguration(for:configuration:), v3, 0);
}

uint64_t MediaPlaybackStore._addMediaConfiguration(for:configuration:)()
{
  v1 = *(v0[9] + 152);
  v0[13] = v1;
  if (v1)
  {
    v3 = v0[7];
    v2 = v0[8];
    v4 = v0[6];
    v0[5] = v1;
    v5 = v2;

    swift_beginAccess();
    v6 = specialized Dictionary._Variant.removeValue(forKey:)(v4, v3);
    swift_endAccess();

    if (static MediaPlaybackDeviceCompatibility._cachedShouldMitigateDefaultsSize == 2)
    {
      v7 = specialized static MediaPlaybackDeviceCompatibility.hasNapiliAlignedPairedDevice()();
      static MediaPlaybackDeviceCompatibility._cachedShouldMitigateDefaultsSize = (v7 & 1) == 0;
      if ((v7 & 1) == 0)
      {
LABEL_4:
        if (one-time initialization token for mediaPlayback != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        __swift_project_value_buffer(v8, static WOLog.mediaPlayback);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&dword_20AEA4000, v9, v10, "Compatible configuration for local media suggestions artwork caching, checking.", v11, 2u);
          MEMORY[0x20F2E9420](v11, -1, -1);
        }

        v12 = swift_task_alloc();
        v0[16] = v12;
        *v12 = v0;
        v12[1] = MediaPlaybackStore._addMediaConfiguration(for:configuration:);
        v13 = v0[9];

        return MediaPlaybackStore.moveArtworkToLocalCacheIfNecessary(_:)((v0 + 5));
      }
    }

    else if (static MediaPlaybackDeviceCompatibility._cachedShouldMitigateDefaultsSize)
    {
      goto LABEL_4;
    }

    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.mediaPlayback);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_20AEA4000, v18, v19, "Incompatible configuration for local media suggestions artwork caching, skipping.", v20, 2u);
      MEMORY[0x20F2E9420](v20, -1, -1);
    }

    v21 = v0[9];
    v22 = v0[5];
    v0[17] = v22;
    v23 = *(v21 + 152);
    *(v21 + 152) = v22;

    v24 = swift_task_alloc();
    v0[18] = v24;
    *v24 = v0;
    v24[1] = MediaPlaybackStore._addMediaConfiguration(for:configuration:);
    v25 = v0[9];

    return MediaPlaybackStore.write(mediaPlaybackConfigurations:)(v22);
  }

  else
  {
    v15 = swift_task_alloc();
    v0[14] = v15;
    *v15 = v0;
    v15[1] = MediaPlaybackStore._addMediaConfiguration(for:configuration:);
    v16 = v0[9];

    return MediaPlaybackStore.refreshMediaPlaybackConfigurations()();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = MediaPlaybackStore._addMediaConfiguration(for:configuration:);
  }

  else
  {
    v6 = MediaPlaybackStore._addMediaConfiguration(for:configuration:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  if (*(v0[9] + 152))
  {
  }

  else
  {
    v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore30MediaPlaybackConfigurationItemCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v2 = v0[9];
  }

  v3 = v0[13];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  v0[5] = v1;
  v7 = v4;

  swift_beginAccess();
  v8 = specialized Dictionary._Variant.removeValue(forKey:)(v6, v5);
  swift_endAccess();

  if (static MediaPlaybackDeviceCompatibility._cachedShouldMitigateDefaultsSize == 2)
  {
    v9 = specialized static MediaPlaybackDeviceCompatibility.hasNapiliAlignedPairedDevice()();
    static MediaPlaybackDeviceCompatibility._cachedShouldMitigateDefaultsSize = (v9 & 1) == 0;
    if ((v9 & 1) == 0)
    {
LABEL_6:
      if (one-time initialization token for mediaPlayback != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static WOLog.mediaPlayback);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_20AEA4000, v11, v12, "Compatible configuration for local media suggestions artwork caching, checking.", v13, 2u);
        MEMORY[0x20F2E9420](v13, -1, -1);
      }

      v14 = swift_task_alloc();
      v0[16] = v14;
      *v14 = v0;
      v14[1] = MediaPlaybackStore._addMediaConfiguration(for:configuration:);
      v15 = v0[9];

      return MediaPlaybackStore.moveArtworkToLocalCacheIfNecessary(_:)((v0 + 5));
    }
  }

  else if (static MediaPlaybackDeviceCompatibility._cachedShouldMitigateDefaultsSize)
  {
    goto LABEL_6;
  }

  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static WOLog.mediaPlayback);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_20AEA4000, v18, v19, "Incompatible configuration for local media suggestions artwork caching, skipping.", v20, 2u);
    MEMORY[0x20F2E9420](v20, -1, -1);
  }

  v21 = v0[9];
  v22 = v0[5];
  v0[17] = v22;
  v23 = *(v21 + 152);
  *(v21 + 152) = v22;

  v24 = swift_task_alloc();
  v0[18] = v24;
  *v24 = v0;
  v24[1] = MediaPlaybackStore._addMediaConfiguration(for:configuration:);
  v25 = v0[9];

  return MediaPlaybackStore.write(mediaPlaybackConfigurations:)(v22);
}

{
  v1 = v0[15];
  v2 = v0[12];

  v3 = v0[1];

  return v3();
}

{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](MediaPlaybackStore._addMediaConfiguration(for:configuration:), v2, 0);
}

{
  v1 = v0[9];
  v2 = v0[5];
  v0[17] = v2;
  v3 = *(v1 + 152);
  *(v1 + 152) = v2;

  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = MediaPlaybackStore._addMediaConfiguration(for:configuration:);
  v5 = v0[9];

  return MediaPlaybackStore.write(mediaPlaybackConfigurations:)(v2);
}

{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v9 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);
    v5 = MediaPlaybackStore._addMediaConfiguration(for:configuration:);
  }

  else
  {
    v6 = *(v2 + 136);
    v7 = *(v2 + 72);

    v5 = MediaPlaybackStore._addMediaConfiguration(for:configuration:);
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v35 = v0;
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  UUID.init()();
  UUID.uuidString.getter();
  (*(v2 + 8))(v1, v3);
  v4 = specialized Collection.prefix(_:)(8);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v12 = v0[7];
  v11 = v0[8];
  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static WOLog.mediaPlayback);
  v14 = v11;

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = v0[8];
    v32 = v0[6];
    v33 = v0[7];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v34 = v19;
    *v18 = 136315650;
    v20 = MEMORY[0x20F2E6D00](v4, v6, v8, v10);
    v22 = v21;

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v34);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v24 = [v17 debugDescription];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v34);

    *(v18 + 14) = v28;
    *(v18 + 22) = 2080;
    *(v18 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v34);
    _os_log_impl(&dword_20AEA4000, v15, v16, "[%s] Successfully saved media configuration %s for %s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v19, -1, -1);
    MEMORY[0x20F2E9420](v18, -1, -1);
  }

  else
  {
  }

  v29 = v0[12];

  v30 = v0[1];

  return v30();
}

{
  v1 = v0[17];

  v2 = v0[19];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t MediaPlaybackStore.write(mediaPlaybackConfigurations:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](MediaPlaybackStore.write(mediaPlaybackConfigurations:), v1, 0);
}

void MediaPlaybackStore.write(mediaPlaybackConfigurations:)()
{
  v1 = v0[3];
  v2 = type metadata accessor for JSONEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS11WorkoutCore30MediaPlaybackConfigurationItemCGMd, &_sSDySS11WorkoutCore30MediaPlaybackConfigurationItemCGMR);
  lazy protocol witness table accessor for type [String : MediaPlaybackConfigurationItem] and conformance <> [A : B]();
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static WOLog.mediaPlayback);
  outlined copy of Data._Representation(v5, v7);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = v7 >> 62;
  if (!os_log_type_enabled(v9, v10))
  {
    outlined consume of Data._Representation(v5, v7);
    goto LABEL_16;
  }

  v12 = swift_slowAlloc();
  *v12 = 134217984;
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      v13 = 0;
      goto LABEL_15;
    }

    v15 = *(v5 + 16);
    v14 = *(v5 + 24);
    v16 = __OFSUB__(v14, v15);
    v13 = v14 - v15;
    if (!v16)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    LODWORD(v13) = HIDWORD(v5) - v5;
    if (__OFSUB__(HIDWORD(v5), v5))
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v13 = v13;
    goto LABEL_15;
  }

  if (v11)
  {
    goto LABEL_12;
  }

  v13 = BYTE6(v7);
LABEL_15:
  *(v12 + 4) = v13;
  v17 = v12;
  outlined consume of Data._Representation(v5, v7);
  _os_log_impl(&dword_20AEA4000, v9, v10, "Writing media playback configurations with data size: %ld", v17, 0xCu);
  MEMORY[0x20F2E9420](v17, -1, -1);
LABEL_16:

  if (v11 <= 1)
  {
    if (!v11)
    {
      goto LABEL_28;
    }

    LODWORD(v18) = HIDWORD(v5) - v5;
    if (!__OFSUB__(HIDWORD(v5), v5))
    {
      v18 = v18;
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_40;
  }

  if (v11 != 2)
  {
    goto LABEL_28;
  }

  v20 = *(v5 + 16);
  v19 = *(v5 + 24);
  v16 = __OFSUB__(v19, v20);
  v18 = v19 - v20;
  if (v16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_22:
  if (v18 <= 90000)
  {
    goto LABEL_28;
  }

  outlined copy of Data._Representation(v5, v7);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v21, v22))
  {
    outlined consume of Data._Representation(v5, v7);
LABEL_33:

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_20AEA4000, v32, v33, "ERROR: Aborting write to avoid clogging NPS domain. Changes to configurations will not be saved.", v34, 2u);
      MEMORY[0x20F2E9420](v34, -1, -1);
    }

    outlined consume of Data._Representation(v5, v7);

    goto LABEL_36;
  }

  v23 = swift_slowAlloc();
  *v23 = 134218240;
  if (v11 != 2)
  {
    LODWORD(v26) = HIDWORD(v5) - v5;
    if (!__OFSUB__(HIDWORD(v5), v5))
    {
      v26 = v26;
LABEL_32:
      *(v23 + 4) = v26;
      v31 = v23;
      outlined consume of Data._Representation(v5, v7);
      *(v31 + 12) = 2048;
      *(v31 + 14) = 90000;
      _os_log_impl(&dword_20AEA4000, v21, v22, "ERROR: Media playback configurations size (%ld) exceeds maximum allowed size (%ld).", v31, 0x16u);
      MEMORY[0x20F2E9420](v31, -1, -1);
      goto LABEL_33;
    }

LABEL_42:
    __break(1u);
    return;
  }

  v25 = *(v5 + 16);
  v24 = *(v5 + 24);
  v16 = __OFSUB__(v24, v25);
  v26 = v24 - v25;
  if (!v16)
  {
    goto LABEL_32;
  }

  __break(1u);
LABEL_28:
  v27 = v0[4];
  v28 = v27[14];
  v29 = MEMORY[0x20F2E6C00](v27[15], v27[16]);
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v28 writeDataPerGizmoDomainAndKey:v29 data:isa];

  outlined consume of Data._Representation(v5, v7);
LABEL_36:

  v35 = v0[1];

  v35();
}

uint64_t MediaPlaybackStore.fetchMediaPlaybackConfiguration(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Date();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](MediaPlaybackStore.fetchMediaPlaybackConfiguration(for:), v1, 0);
}

{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = v1;

  v7 = *(v3 + 24);
  if (v1)
  {

    v8 = MediaPlaybackStore.fetchMediaPlaybackConfiguration(for:);
  }

  else
  {
    v8 = MediaPlaybackStore.fetchMediaPlaybackConfiguration(for:);
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t MediaPlaybackStore.fetchMediaPlaybackConfiguration(for:)()
{
  v190 = v0;
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v2 + 8))(v1, v3);
  v5 = specialized Collection.prefix(_:)(8);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  *(v0 + 88) = v5;
  *(v0 + 96) = v7;
  v180 = v9;
  v184 = v7;
  *(v0 + 104) = v9;
  *(v0 + 112) = v11;
  Date.init()();
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 16);
  v13 = type metadata accessor for Logger();
  *(v0 + 120) = __swift_project_value_buffer(v13, static WOLog.mediaPlayback);

  v14 = v12;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = *(v0 + 16);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v189[0] = v19;
    *v18 = 136315394;

    v20 = MEMORY[0x20F2E6D00](v5, v7, v9, v11);
    v177 = v5;
    v22 = v21;

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v189);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v24 = [v17 uniqueIdentifier];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v189);
    v5 = v177;

    *(v18 + 14) = v28;
    _os_log_impl(&dword_20AEA4000, v15, v16, "[%s] MediaPlaybackStore fetching configuration for activityType: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v19, -1, -1);
    MEMORY[0x20F2E9420](v18, -1, -1);
  }

  v29 = [*(v0 + 16) isPartOfMultiSport];
  v30 = *(v0 + 16);
  if (v29)
  {
    v31 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:82 isIndoor:0];

    v30 = v31;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v189[0] = v35;
      *v34 = 136315394;

      v36 = MEMORY[0x20F2E6D00](v5, v184, v180, v11);
      v38 = v37;

      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, v189);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2080;
      v40 = [v30 uniqueIdentifier];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v189);

      *(v34 + 14) = v44;
      _os_log_impl(&dword_20AEA4000, v32, v33, "[%s] Mapped multisport to swimBikeRun: %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v35, -1, -1);
      MEMORY[0x20F2E9420](v34, -1, -1);
    }

    else
    {
    }
  }

  *(v0 + 128) = v30;
  v45 = *(*(v0 + 24) + 152);
  *(v0 + 136) = v45;
  if (v45)
  {

    v46 = [v30 uniqueIdentifier];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    if (*(v45 + 16))
    {
      v50 = specialized __RawDictionaryStorage.find<A>(_:)(v47, v49);
      v52 = v51;

      if (v52)
      {
        v54 = *(v0 + 120);
        v53 = *(v0 + 128);
        v55 = *(v0 + 112);
        v185 = *(*(v45 + 56) + 8 * v50);

        v56 = v53;
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v57, v58))
        {
          v181 = *(v0 + 128);
          v60 = *(v0 + 104);
          v59 = *(v0 + 112);
          v61 = *(v0 + 88);
          v62 = *(v0 + 96);
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v189[0] = v64;
          *v63 = 136315394;

          v65 = MEMORY[0x20F2E6D00](v61, v62, v60, v59);
          v67 = v66;

          v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, v189);

          *(v63 + 4) = v68;
          *(v63 + 12) = 2080;
          v69 = [v181 &selRef_setNeedsReloadForSignificantRequestChange];
          v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v72 = v71;

          v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, v189);

          *(v63 + 14) = v73;
          _os_log_impl(&dword_20AEA4000, v57, v58, "[%s] Found existing configuration for %s", v63, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v64, -1, -1);
          MEMORY[0x20F2E9420](v63, -1, -1);
        }

        v74 = *(v0 + 104);
        v75 = *(v0 + 112);
        v77 = *(v0 + 88);
        v76 = *(v0 + 96);
        v78 = *(v0 + 24);
        v79 = [*(v0 + 128) uniqueIdentifier];
        v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v82 = v81;

        v83 = MEMORY[0x20F2E6D00](v77, v76, v74, v75);
        v85 = MediaPlaybackStore.validatedMediaConfiguration(_:for:requestId:)(v185, v80, v82, v83, v84);
        v86 = *(v0 + 112);
        v87 = *(v0 + 56);
        v183 = v85;
        v141 = *(v0 + 120);
        v143 = *(v0 + 40);
        v142 = *(v0 + 48);
        v144 = *(v0 + 32);

        Date.init()();
        Date.timeIntervalSince(_:)();
        v146 = v145;
        v147 = *(v143 + 8);
        v147(v142, v144);

        v148 = Logger.logObject.getter();
        v149 = static os_log_type_t.default.getter();

        v150 = os_log_type_enabled(v148, v149);
        v151 = *(v0 + 128);
        v152 = *(v0 + 112);
        if (v150)
        {
          v153 = *(v0 + 96);
          v154 = *(v0 + 104);
          v155 = *(v0 + 88);
          v188 = *(v0 + 56);
          v179 = *(v0 + 32);
          v176 = *(v0 + 128);
          v156 = swift_slowAlloc();
          v175 = v147;
          v157 = swift_slowAlloc();
          v189[0] = v157;
          *v156 = 136315394;
          v158 = MEMORY[0x20F2E6D00](v155, v153, v154, v152);
          v160 = v159;

          v161 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v158, v160, v189);

          *(v156 + 4) = v161;
          *(v156 + 12) = 2080;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v162 = swift_allocObject();
          v163 = MEMORY[0x277D839F8];
          *(v162 + 16) = xmmword_20B423A90;
          v164 = MEMORY[0x277D83A80];
          *(v162 + 56) = v163;
          *(v162 + 64) = v164;
          *(v162 + 32) = v146;
          v165 = String.init(format:_:)();
          v167 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v165, v166, v189);

          *(v156 + 14) = v167;
          _os_log_impl(&dword_20AEA4000, v148, v149, "[%s] MediaPlaybackStore fetch completed in %ss", v156, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v157, -1, -1);
          MEMORY[0x20F2E9420](v156, -1, -1);

          v175(v188, v179);
        }

        else
        {
          v168 = *(v0 + 56);
          v169 = *(v0 + 32);
          v170 = *(v0 + 112);

          v147(v168, v169);
        }

        v171 = *(v0 + 80);
        v172 = *(v0 + 48);
        v173 = *(v0 + 56);

        v174 = *(v0 + 8);

        return v174(v183);
      }
    }

    else
    {
    }

    v92 = *(v0 + 120);
    v91 = *(v0 + 128);
    v93 = *(v0 + 112);
    v94 = *(*(v0 + 24) + 168);

    v95 = v91;
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.default.getter();

    v98 = os_log_type_enabled(v96, v97);
    if (v94)
    {
      if (v98)
      {
        v186 = *(v0 + 128);
        v100 = *(v0 + 104);
        v99 = *(v0 + 112);
        v102 = *(v0 + 88);
        v101 = *(v0 + 96);
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v189[0] = v104;
        *v103 = 136315394;

        v105 = MEMORY[0x20F2E6D00](v102, v101, v100, v99);
        v107 = v106;

        v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v107, v189);

        *(v103 + 4) = v108;
        *(v103 + 12) = 2080;
        v109 = [v186 &selRef_setNeedsReloadForSignificantRequestChange];
        v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v112 = v111;

        v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v112, v189);

        *(v103 + 14) = v113;
        _os_log_impl(&dword_20AEA4000, v96, v97, "[%s] No existing configuration, attempting migration for %s", v103, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v104, -1, -1);
        MEMORY[0x20F2E9420](v103, -1, -1);
      }

      v114 = swift_task_alloc();
      *(v0 + 160) = v114;
      *v114 = v0;
      v114[1] = MediaPlaybackStore.fetchMediaPlaybackConfiguration(for:);
      v115 = *(v0 + 24);

      return MediaPlaybackStore.fetchMigratedConfiguration()();
    }

    else
    {
      v116 = *(v0 + 128);
      v117 = *(v0 + 112);
      if (v98)
      {
        v118 = *(v0 + 96);
        v119 = *(v0 + 104);
        v120 = *(v0 + 88);
        v178 = *(v0 + 40);
        v182 = *(v0 + 32);
        v187 = *(v0 + 56);
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v189[0] = v122;
        *v121 = 136315394;
        v123 = MEMORY[0x20F2E6D00](v120, v118, v119, v117);
        v125 = v124;

        v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v125, v189);

        *(v121 + 4) = v126;
        *(v121 + 12) = 2080;
        v127 = [v116 uniqueIdentifier];
        v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v130 = v129;

        v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v130, v189);

        *(v121 + 14) = v131;
        _os_log_impl(&dword_20AEA4000, v96, v97, "[%s] No media configuration set for workout type %s", v121, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v122, -1, -1);
        MEMORY[0x20F2E9420](v121, -1, -1);

        lazy protocol witness table accessor for type MediaPlaybackStoreError and conformance MediaPlaybackStoreError();
        swift_allocError();
        *v132 = xmmword_20B42C710;
        swift_willThrow();
        (*(v178 + 8))(v187, v182);
      }

      else
      {
        v133 = *(v0 + 56);
        v134 = *(v0 + 32);
        v135 = *(v0 + 40);

        lazy protocol witness table accessor for type MediaPlaybackStoreError and conformance MediaPlaybackStoreError();
        swift_allocError();
        *v136 = xmmword_20B42C710;
        swift_willThrow();
        (*(v135 + 8))(v133, v134);
      }

      v137 = *(v0 + 80);
      v139 = *(v0 + 48);
      v138 = *(v0 + 56);

      v140 = *(v0 + 8);

      return v140();
    }
  }

  else
  {
    v88 = swift_task_alloc();
    *(v0 + 144) = v88;
    *v88 = v0;
    v88[1] = MediaPlaybackStore.fetchMediaPlaybackConfiguration(for:);
    v89 = *(v0 + 24);

    return MediaPlaybackStore.refreshMediaPlaybackConfigurations()();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {

    v6 = MediaPlaybackStore.fetchMediaPlaybackConfiguration(for:);
  }

  else
  {
    v6 = MediaPlaybackStore.fetchMediaPlaybackConfiguration(for:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v146 = v0;
  v1 = *(v0 + 24);
  v2 = *(v1 + 152);
  if (v2)
  {
    v3 = *(v1 + 152);
  }

  else
  {
    v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore30MediaPlaybackConfigurationItemCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v4 = *(v0 + 152);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);

  v7 = [v6 uniqueIdentifier];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (*(v2 + 16))
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v10);
    v13 = v12;

    if (v13)
    {
      v15 = *(v0 + 120);
      v14 = *(v0 + 128);
      v16 = *(v0 + 112);
      v142 = *(*(v2 + 56) + 8 * v11);

      v17 = v14;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v139 = *(v0 + 128);
        v21 = *(v0 + 104);
        v20 = *(v0 + 112);
        v23 = *(v0 + 88);
        v22 = *(v0 + 96);
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v145[0] = v25;
        *v24 = 136315394;

        v26 = MEMORY[0x20F2E6D00](v23, v22, v21, v20);
        v28 = v27;

        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v145);

        *(v24 + 4) = v29;
        *(v24 + 12) = 2080;
        v30 = [v139 uniqueIdentifier];
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v145);

        *(v24 + 14) = v34;
        _os_log_impl(&dword_20AEA4000, v18, v19, "[%s] Found existing configuration for %s", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v25, -1, -1);
        MEMORY[0x20F2E9420](v24, -1, -1);
      }

      v35 = *(v0 + 104);
      v36 = *(v0 + 112);
      v38 = *(v0 + 88);
      v37 = *(v0 + 96);
      v39 = *(v0 + 24);
      v40 = [*(v0 + 128) uniqueIdentifier];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v44 = MEMORY[0x20F2E6D00](v38, v37, v35, v36);
      v46 = MediaPlaybackStore.validatedMediaConfiguration(_:for:requestId:)(v142, v41, v43, v44, v45);
      v47 = *(v0 + 112);
      v48 = *(v0 + 56);
      if (v4)
      {
        v49 = *(v0 + 128);
        (*(*(v0 + 40) + 8))(*(v0 + 56), *(v0 + 32));

        goto LABEL_20;
      }

      v141 = v46;
      v101 = *(v0 + 120);
      v103 = *(v0 + 40);
      v102 = *(v0 + 48);
      v104 = *(v0 + 32);

      Date.init()();
      Date.timeIntervalSince(_:)();
      v106 = v105;
      v107 = *(v103 + 8);
      v107(v102, v104);

      v108 = Logger.logObject.getter();
      v109 = static os_log_type_t.default.getter();

      v110 = os_log_type_enabled(v108, v109);
      v111 = *(v0 + 128);
      v112 = *(v0 + 112);
      if (v110)
      {
        v113 = *(v0 + 96);
        v114 = *(v0 + 104);
        v115 = *(v0 + 88);
        v144 = *(v0 + 56);
        v138 = *(v0 + 32);
        v136 = *(v0 + 128);
        v116 = swift_slowAlloc();
        v135 = v107;
        v117 = swift_slowAlloc();
        v145[0] = v117;
        *v116 = 136315394;
        v118 = MEMORY[0x20F2E6D00](v115, v113, v114, v112);
        v120 = v119;

        v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v118, v120, v145);

        *(v116 + 4) = v121;
        *(v116 + 12) = 2080;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v122 = swift_allocObject();
        v123 = MEMORY[0x277D839F8];
        *(v122 + 16) = xmmword_20B423A90;
        v124 = MEMORY[0x277D83A80];
        *(v122 + 56) = v123;
        *(v122 + 64) = v124;
        *(v122 + 32) = v106;
        v125 = String.init(format:_:)();
        v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v126, v145);

        *(v116 + 14) = v127;
        _os_log_impl(&dword_20AEA4000, v108, v109, "[%s] MediaPlaybackStore fetch completed in %ss", v116, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v117, -1, -1);
        MEMORY[0x20F2E9420](v116, -1, -1);

        v135(v144, v138);
      }

      else
      {
        v128 = *(v0 + 56);
        v129 = *(v0 + 32);
        v130 = *(v0 + 112);

        v107(v128, v129);
      }

      v131 = *(v0 + 80);
      v132 = *(v0 + 48);
      v133 = *(v0 + 56);

      v134 = *(v0 + 8);

      return v134(v141);
    }
  }

  else
  {
  }

  v51 = *(v0 + 120);
  v50 = *(v0 + 128);
  v52 = *(v0 + 112);
  v53 = *(*(v0 + 24) + 168);

  v54 = v50;
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();

  v57 = os_log_type_enabled(v55, v56);
  if (!v53)
  {
    v49 = *(v0 + 128);
    v77 = *(v0 + 112);
    if (v57)
    {
      v78 = *(v0 + 96);
      v79 = *(v0 + 104);
      v80 = *(v0 + 88);
      v137 = *(v0 + 40);
      v140 = *(v0 + 32);
      v143 = *(v0 + 56);
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v145[0] = v82;
      *v81 = 136315394;
      v83 = MEMORY[0x20F2E6D00](v80, v78, v79, v77);
      v85 = v84;

      v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, v145);

      *(v81 + 4) = v86;
      *(v81 + 12) = 2080;
      v87 = [v49 uniqueIdentifier];
      v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v90 = v89;

      v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v90, v145);

      *(v81 + 14) = v91;
      _os_log_impl(&dword_20AEA4000, v55, v56, "[%s] No media configuration set for workout type %s", v81, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v82, -1, -1);
      MEMORY[0x20F2E9420](v81, -1, -1);

      lazy protocol witness table accessor for type MediaPlaybackStoreError and conformance MediaPlaybackStoreError();
      swift_allocError();
      *v92 = xmmword_20B42C710;
      swift_willThrow();
      (*(v137 + 8))(v143, v140);
    }

    else
    {
      v93 = *(v0 + 56);
      v94 = *(v0 + 32);
      v95 = *(v0 + 40);

      lazy protocol witness table accessor for type MediaPlaybackStoreError and conformance MediaPlaybackStoreError();
      swift_allocError();
      *v96 = xmmword_20B42C710;
      swift_willThrow();
      (*(v95 + 8))(v93, v94);
    }

LABEL_20:

    v97 = *(v0 + 80);
    v99 = *(v0 + 48);
    v98 = *(v0 + 56);

    v100 = *(v0 + 8);

    return v100();
  }

  if (v57)
  {
    v58 = *(v0 + 128);
    v60 = *(v0 + 104);
    v59 = *(v0 + 112);
    v62 = *(v0 + 88);
    v61 = *(v0 + 96);
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v145[0] = v64;
    *v63 = 136315394;

    v65 = MEMORY[0x20F2E6D00](v62, v61, v60, v59);
    v67 = v66;

    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, v145);

    *(v63 + 4) = v68;
    *(v63 + 12) = 2080;
    v69 = [v58 uniqueIdentifier];
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;

    v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, v145);

    *(v63 + 14) = v73;
    _os_log_impl(&dword_20AEA4000, v55, v56, "[%s] No existing configuration, attempting migration for %s", v63, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v64, -1, -1);
    MEMORY[0x20F2E9420](v63, -1, -1);
  }

  v74 = swift_task_alloc();
  *(v0 + 160) = v74;
  *v74 = v0;
  v74[1] = MediaPlaybackStore.fetchMediaPlaybackConfiguration(for:);
  v75 = *(v0 + 24);

  return MediaPlaybackStore.fetchMigratedConfiguration()();
}

{
  v59 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = *(v0[3] + 168);

  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  if (v4)
  {
    if (v8)
    {
      v9 = v0[16];
      v11 = v0[13];
      v10 = v0[14];
      v13 = v0[11];
      v12 = v0[12];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v58[0] = v15;
      *v14 = 136315394;

      v16 = MEMORY[0x20F2E6D00](v13, v12, v11, v10);
      v18 = v17;

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v58);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2080;
      v20 = [v9 uniqueIdentifier];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v58);

      *(v14 + 14) = v24;
      _os_log_impl(&dword_20AEA4000, v6, v7, "[%s] No existing configuration, attempting migration for %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v15, -1, -1);
      MEMORY[0x20F2E9420](v14, -1, -1);
    }

    v25 = swift_task_alloc();
    v0[20] = v25;
    *v25 = v0;
    v25[1] = MediaPlaybackStore.fetchMediaPlaybackConfiguration(for:);
    v26 = v0[3];

    return MediaPlaybackStore.fetchMigratedConfiguration()();
  }

  else
  {
    v28 = v0[16];
    v29 = v0[14];
    if (v8)
    {
      v30 = v0[16];
      v31 = v0[12];
      v32 = v0[13];
      v33 = v0[11];
      v55 = v0[5];
      v56 = v0[4];
      v57 = v0[7];
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v58[0] = v35;
      *v34 = 136315394;
      v36 = v32;
      v28 = v30;
      v37 = MEMORY[0x20F2E6D00](v33, v31, v36, v29);
      v39 = v38;

      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v58);

      *(v34 + 4) = v40;
      *(v34 + 12) = 2080;
      v41 = [v30 uniqueIdentifier];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v58);

      *(v34 + 14) = v45;
      _os_log_impl(&dword_20AEA4000, v6, v7, "[%s] No media configuration set for workout type %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v35, -1, -1);
      MEMORY[0x20F2E9420](v34, -1, -1);

      lazy protocol witness table accessor for type MediaPlaybackStoreError and conformance MediaPlaybackStoreError();
      swift_allocError();
      *v46 = xmmword_20B42C710;
      swift_willThrow();
      (*(v55 + 8))(v57, v56);
    }

    else
    {
      v47 = v0[7];
      v49 = v0[4];
      v48 = v0[5];

      lazy protocol witness table accessor for type MediaPlaybackStoreError and conformance MediaPlaybackStoreError();
      swift_allocError();
      *v50 = xmmword_20B42C710;
      swift_willThrow();
      (*(v48 + 8))(v47, v49);
    }

    v51 = v0[10];
    v53 = v0[6];
    v52 = v0[7];

    v54 = v0[1];

    return v54();
  }
}

{
  v78 = v0;
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    v8 = *(v0 + 88);
    v7 = *(v0 + 96);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v77[0] = v10;
    *v9 = 136315138;

    v11 = MEMORY[0x20F2E6D00](v8, v7, v6, v5);
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v77);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_20AEA4000, v3, v4, "[%s] Successfully fetched migrated configuration", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  v15 = *(v0 + 168);
  v75 = *(v0 + 176);
  v17 = *(v0 + 104);
  v16 = *(v0 + 112);
  v19 = *(v0 + 88);
  v18 = *(v0 + 96);
  v20 = *(v0 + 24);
  v21 = [*(v0 + 128) uniqueIdentifier];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = MEMORY[0x20F2E6D00](v19, v18, v17, v16);
  v27 = MediaPlaybackStore.validatedMediaConfiguration(_:for:requestId:)(v15, v22, v24, v25, v26);
  v28 = *(v0 + 168);
  v29 = *(v0 + 112);
  v30 = *(v0 + 56);
  if (v75)
  {
    v31 = *(v0 + 128);
    (*(*(v0 + 40) + 8))(*(v0 + 56), *(v0 + 32));

    v32 = *(v0 + 80);
    v34 = *(v0 + 48);
    v33 = *(v0 + 56);

    v35 = *(v0 + 8);

    return v35();
  }

  else
  {
    v76 = v27;
    v37 = *(v0 + 120);
    v38 = *(v0 + 40);
    v39 = *(v0 + 48);
    v40 = *(v0 + 32);

    Date.init()();
    Date.timeIntervalSince(_:)();
    v42 = v41;
    v43 = *(v38 + 8);
    v43(v39, v40);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 128);
    v48 = *(v0 + 112);
    if (v46)
    {
      v49 = *(v0 + 96);
      v50 = *(v0 + 104);
      v51 = *(v0 + 88);
      v73 = *(v0 + 32);
      v74 = *(v0 + 56);
      v72 = v43;
      v52 = swift_slowAlloc();
      v71 = v47;
      v53 = swift_slowAlloc();
      v77[0] = v53;
      *v52 = 136315394;
      v54 = MEMORY[0x20F2E6D00](v51, v49, v50, v48);
      v56 = v55;

      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, v77);

      *(v52 + 4) = v57;
      *(v52 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v58 = swift_allocObject();
      v59 = MEMORY[0x277D839F8];
      *(v58 + 16) = xmmword_20B423A90;
      v60 = MEMORY[0x277D83A80];
      *(v58 + 56) = v59;
      *(v58 + 64) = v60;
      *(v58 + 32) = v42;
      v61 = String.init(format:_:)();
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, v77);

      *(v52 + 14) = v63;
      _os_log_impl(&dword_20AEA4000, v44, v45, "[%s] MediaPlaybackStore fetch completed in %ss", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v53, -1, -1);
      MEMORY[0x20F2E9420](v52, -1, -1);

      v72(v74, v73);
    }

    else
    {
      v64 = *(v0 + 56);
      v65 = *(v0 + 32);
      v66 = *(v0 + 112);

      v43(v64, v65);
    }

    v67 = *(v0 + 80);
    v69 = *(v0 + 48);
    v68 = *(v0 + 56);

    v70 = *(v0 + 8);

    return v70(v76);
  }
}

{
  v40 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[16];
  v9 = v0[14];
  if (v7)
  {
    v10 = v0[16];
    v11 = v0[12];
    v12 = v0[13];
    v13 = v0[11];
    v36 = v0[5];
    v37 = v0[4];
    v38 = v0[7];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v39[0] = v15;
    *v14 = 136315394;
    v16 = v12;
    v8 = v10;
    v17 = MEMORY[0x20F2E6D00](v13, v11, v16, v9);
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v39);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v10 uniqueIdentifier];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v39);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_20AEA4000, v5, v6, "[%s] No media configuration set for workout type %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v15, -1, -1);
    MEMORY[0x20F2E9420](v14, -1, -1);

    lazy protocol witness table accessor for type MediaPlaybackStoreError and conformance MediaPlaybackStoreError();
    swift_allocError();
    *v26 = xmmword_20B42C710;
    swift_willThrow();
    (*(v36 + 8))(v38, v37);
  }

  else
  {
    v27 = v0[7];
    v29 = v0[4];
    v28 = v0[5];

    lazy protocol witness table accessor for type MediaPlaybackStoreError and conformance MediaPlaybackStoreError();
    swift_allocError();
    *v30 = xmmword_20B42C710;
    swift_willThrow();
    (*(v28 + 8))(v27, v29);
  }

  v31 = v0[10];
  v33 = v0[6];
  v32 = v0[7];

  v34 = v0[1];

  return v34();
}

uint64_t MediaPlaybackStore.fetchMediaPlaybackConfigurations()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](MediaPlaybackStore.fetchMediaPlaybackConfigurations(), v0, 0);
}

{
  v1 = *(v0[2] + 152);
  v0[3] = v1;
  if (v1)
  {
    v6 = v0[1];

    return v6(v2);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    v4[1] = MediaPlaybackStore.fetchMediaPlaybackConfigurations();
    v5 = v0[2];

    return MediaPlaybackStore.refreshMediaPlaybackConfigurations()();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 16);

    return MEMORY[0x2822009F8](MediaPlaybackStore.fetchMediaPlaybackConfigurations(), v7, 0);
  }
}

{
  v1 = v0[2];
  v2 = *(v1 + 152);
  if (v2)
  {
    v3 = *(v1 + 152);
  }

  else
  {
    v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore30MediaPlaybackConfigurationItemCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v4 = v0[3];
  v6 = v0[1];

  return v6(v2);
}

uint64_t MediaPlaybackStore.refreshMediaPlaybackConfigurations()()
{
  *(v1 + 48) = v0;
  return MEMORY[0x2822009F8](MediaPlaybackStore.refreshMediaPlaybackConfigurations(), v0, 0);
}

{
  v1 = v0[6];
  v2 = v1[14];
  v3 = MEMORY[0x20F2E6C00](v1[15], v1[16]);
  v4 = [v2 dataForPerGizmoDomainAndKey_];

  if (v4)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v0[7] = v5;
    v0[8] = v7;
    v8 = type metadata accessor for JSONDecoder();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v0[9] = JSONDecoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS11WorkoutCore30MediaPlaybackConfigurationItemCGMd, &_sSDySS11WorkoutCore30MediaPlaybackConfigurationItemCGMR);
    lazy protocol witness table accessor for type [String : MediaPlaybackConfigurationItem] and conformance <> [A : B]();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v11 = swift_task_alloc();
    v0[10] = v11;
    *v11 = v0;
    v11[1] = MediaPlaybackStore.refreshMediaPlaybackConfigurations();
    v12 = v0[6];

    return MediaPlaybackStore.moveArtworkToLocalCacheIfNecessary(_:)((v0 + 5));
  }

  else
  {
    v14 = v0[1];

    return v14();
  }
}

{
  if (*(v0 + 112) == 1)
  {
    v1 = *(v0 + 40);
    *(v0 + 88) = v1;
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = MediaPlaybackStore.refreshMediaPlaybackConfigurations();
    v3 = *(v0 + 48);

    return MediaPlaybackStore.write(mediaPlaybackConfigurations:)(v1);
  }

  else
  {
    v5 = *(v0 + 64);
    v6 = *(v0 + 72);
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    v9 = *(v8 + 152);
    *(v8 + 152) = *(v0 + 40);

    v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore30MediaPlaybackConfigurationItemCTt0g5Tf4g_n(MEMORY[0x277D84F90]);

    outlined consume of Data._Representation(v7, v5);
    swift_beginAccess();
    v11 = *(v8 + 160);
    *(v8 + 160) = v10;

    v12 = *(v0 + 8);

    return v12();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v2 + 88);
    v5 = *(v2 + 48);

    v6 = MediaPlaybackStore.refreshMediaPlaybackConfigurations();
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 48);
    v6 = MediaPlaybackStore.refreshMediaPlaybackConfigurations();
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = *(v4 + 152);
  *(v4 + 152) = v0[5];

  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore30MediaPlaybackConfigurationItemCTt0g5Tf4g_n(MEMORY[0x277D84F90]);

  outlined consume of Data._Representation(v3, v1);
  swift_beginAccess();
  v7 = *(v4 + 160);
  *(v4 + 160) = v6;

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[13];
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[7];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Error decoding media playback configurations, resetting: %@", v10, 0xCu);
    _sSo8NSObjectCSgWOhTm_17(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v11, -1, -1);
    MEMORY[0x20F2E9420](v10, -1, -1);

    outlined consume of Data._Representation(v9, v7);
  }

  else
  {
    v14 = v0[9];

    outlined consume of Data._Representation(v9, v7);
  }

  v15 = v0[6];
  v16 = *(v15 + 152);
  *(v15 + 152) = 0;

  v17 = v0[1];

  return v17();
}

uint64_t MediaPlaybackStore.refreshMediaPlaybackConfigurations()(char a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 112) = a1;

  return MEMORY[0x2822009F8](MediaPlaybackStore.refreshMediaPlaybackConfigurations(), v3, 0);
}

uint64_t MediaPlaybackStore.fetchMigratedConfiguration()()
{
  *(v1 + 32) = v0;
  return MEMORY[0x2822009F8](MediaPlaybackStore.fetchMigratedConfiguration(), v0, 0);
}

{
  v1 = *(v0[4] + 152);
  v0[5] = v1;
  if (v1)
  {
    v2 = *(v1 + 16);

    if (v2 && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000020, 0x800000020B46B1C0), (v4 & 1) != 0))
    {
      v5 = *(*(v1 + 56) + 8 * v3);

      v6 = v0[1];

      return v6(v5);
    }

    else
    {

      type metadata accessor for WorkoutPlaylistMigration();
      swift_initStaticObject();
      v8 = swift_task_alloc();
      v0[7] = v8;
      *v8 = v0;
      v8[1] = MediaPlaybackStore.fetchMigratedConfiguration();

      return WorkoutPlaylistMigration.createSuggestionForLegacyWorkoutPlaylist()();
    }
  }

  else
  {
    v9 = swift_task_alloc();
    v0[6] = v9;
    *v9 = v0;
    v9[1] = MediaPlaybackStore.fetchMigratedConfiguration();
    v10 = v0[4];

    return MediaPlaybackStore.refreshMediaPlaybackConfigurations()();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {

    type metadata accessor for WorkoutPlaylistMigration();
    swift_initStaticObject();
    v5 = swift_task_alloc();
    *(v2 + 56) = v5;
    *v5 = v4;
    v5[1] = MediaPlaybackStore.fetchMigratedConfiguration();

    return WorkoutPlaylistMigration.createSuggestionForLegacyWorkoutPlaylist()();
  }

  else
  {
    v7 = *(v2 + 32);

    return MEMORY[0x2822009F8](MediaPlaybackStore.fetchMigratedConfiguration(), v7, 0);
  }
}

{
  v1 = v0[4];
  v2 = *(v1 + 152);
  if (v2)
  {
    v3 = *(v1 + 152);
  }

  else
  {
    v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore30MediaPlaybackConfigurationItemCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v4 = v0[5];
  v5 = *(v2 + 16);

  if (v5 && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000020, 0x800000020B46B1C0), (v7 & 1) != 0))
  {
    v8 = *(*(v2 + 56) + 8 * v6);

    v9 = v0[1];

    return v9(v8);
  }

  else
  {

    type metadata accessor for WorkoutPlaylistMigration();
    swift_initStaticObject();
    v11 = swift_task_alloc();
    v0[7] = v11;
    *v11 = v0;
    v11[1] = MediaPlaybackStore.fetchMigratedConfiguration();

    return WorkoutPlaylistMigration.createSuggestionForLegacyWorkoutPlaylist()();
  }
}

{
  receiver = v0[4].receiver;
  v2 = type metadata accessor for MediaPlaybackConfigurationItem();
  v3 = objc_allocWithZone(v2);
  v4 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
  *&v3[OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion] = 0;
  v5 = receiver;
  ObservationRegistrar.init()();
  v3[OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled] = 1;
  v3[OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled] = 0;
  v6 = *&v3[v4];
  v7 = v5;

  *&v3[v4] = receiver;
  v0[1].receiver = v3;
  v0[1].super_class = v2;
  v8 = objc_msgSendSuper2(v0 + 1, sel_init);
  v0[4].super_class = v8;

  v9 = swift_task_alloc();
  v0[5].receiver = v9;
  *v9 = v0;
  v9[1] = MediaPlaybackStore.fetchMigratedConfiguration();
  v10 = v0[2].receiver;

  return MediaPlaybackStore._addMediaConfiguration(for:configuration:)(0xD000000000000020, 0x800000020B46B1C0, v8);
}

{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = MediaPlaybackStore.fetchMigratedConfiguration();
  }

  else
  {
    v6 = MediaPlaybackStore.fetchMigratedConfiguration();
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{

  v1 = *(v0 + 72);
  v2 = *(v0 + 8);

  return v2(v1);
}

{
  v1 = *(v0 + 64);

  v2 = *(v0 + 88);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t MediaPlaybackStore.fetchMigratedConfiguration()(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *v2;
  *(*v2 + 64) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v3 + 32);

    return MEMORY[0x2822009F8](MediaPlaybackStore.fetchMigratedConfiguration(), v8, 0);
  }
}

uint64_t MediaPlaybackStore.handleWorkoutMediaPreferencesChangedNotification(_:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - v7;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static WOLog.mediaPlayback);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = a1;
    v22 = v14;
    *v13 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CFNotificationNameaSgMd, &_sSo18CFNotificationNameaSgMR);
    v15 = Optional.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v22);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_20AEA4000, v11, v12, "workout preferences changed, received: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x20F2E9420](v14, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }

  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v2;
  v19[5] = v4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in MediaPlaybackStore.handleWorkoutMediaPreferencesChangedNotification(_:), v19);
}

uint64_t closure #1 in MediaPlaybackStore.handleWorkoutMediaPreferencesChangedNotification(_:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #1 in MediaPlaybackStore.handleWorkoutMediaPreferencesChangedNotification(_:);

  return MediaPlaybackStore.refreshMediaPlaybackConfigurations()();
}

{
  v2 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 24) = v0;

  if (v0)
  {
    v3 = closure #1 in MediaPlaybackStore.handleWorkoutMediaPreferencesChangedNotification(_:);
  }

  else
  {
    v3 = closure #1 in MediaPlaybackStore.handleWorkoutMediaPreferencesChangedNotification(_:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
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
    _os_log_impl(&dword_20AEA4000, v2, v3, "Refreshed media playback configurations", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v5 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for mediaConfigurationsUpdatedNotificationName != -1)
  {
    swift_once();
  }

  [v5 postNotificationName:static MediaPlaybackStore.mediaConfigurationsUpdatedNotificationName object:0];

  v6 = *(v0 + 8);

  return v6();
}

{
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 24);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Error refreshing media playback configurations: %@", v8, 0xCu);
    _sSo8NSObjectCSgWOhTm_17(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

void @objc closure #1 in MediaPlaybackStore.observeWorkoutMediaPreferencesChangedNotification()(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void *))
{
  if (a2)
  {
    type metadata accessor for MediaPlaybackStore();
    swift_unknownObjectRetain();
    v8 = a3;
    if (swift_dynamicCastClass())
    {
      a6(a3);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t MediaPlaybackStore.handleDomainAccessorRefresh(_:)(void *a1)
{
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CFNotificationNameaSgMd, &_sSo18CFNotificationNameaSgMR);
    v8 = Optional.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_20AEA4000, v4, v5, "WONPSDomainAccessor refreshed, received: %s, refreshing configurations", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  return MediaPlaybackStore.handleWorkoutMediaPreferencesChangedNotification(_:)(a1);
}

uint64_t MediaPlaybackStore.moveArtworkToLocalCacheIfNecessary(_:)(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return MEMORY[0x2822009F8](MediaPlaybackStore.moveArtworkToLocalCacheIfNecessary(_:), v1, 0);
}

uint64_t MediaPlaybackStore.moveArtworkToLocalCacheIfNecessary(_:)()
{
  v35 = v0;
  *(v0 + 56) = MEMORY[0x277D84FA0];
  v3 = **(v0 + 72);
  *(v0 + 88) = v3;
  v4 = *(v3 + 32);
  *(v0 + 168) = v4;
  v5 = 1 << v4;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v3 + 64);
  *(v0 + 169) = 0;

  v8 = 0;
  while (v7)
  {
    v9 = *(v0 + 88);
LABEL_12:
    *(v0 + 96) = v7;
    *(v0 + 104) = v8;
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v8 << 6);
    v13 = (*(v9 + 48) + 16 * v12);
    v33 = *v13;
    *(v0 + 112) = *v13;
    v2 = v13[1];
    *(v0 + 120) = v2;
    v14 = *(*(v9 + 56) + 8 * v12);
    *(v0 + 128) = v14;
    KeyPath = swift_getKeyPath();
    *(v0 + 64) = v14;
    lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem(&lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem);

    v15 = v14;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v16 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
    swift_beginAccess();
    v17 = *&v15[v16];
    *(v0 + 136) = v17;
    if (v17)
    {
      KeyPath = v17;
      v18 = [KeyPath identifier];
      if (v18)
      {
        v19 = v18;
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        specialized Set._Variant.insert(_:)((v0 + 40), v20, v22);
        v23 = *(v0 + 48);

        if ([KeyPath hasArtwork])
        {
          if (one-time initialization token for mediaPlayback != -1)
          {
LABEL_27:
            swift_once();
          }

          v27 = type metadata accessor for Logger();
          *(v0 + 144) = __swift_project_value_buffer(v27, static WOLog.mediaPlayback);

          v28 = Logger.logObject.getter();
          v29 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            v34 = v31;
            *v30 = 136315138;
            *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v2, &v34);
            _os_log_impl(&dword_20AEA4000, v28, v29, "Workout: %s has a media suggestion with artwork, storing and clearing", v30, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v31);
            MEMORY[0x20F2E9420](v31, -1, -1);
            MEMORY[0x20F2E9420](v30, -1, -1);
          }

          type metadata accessor for MediaPlaybackArtworkStore();
          swift_initStaticObject();
          v32 = swift_task_alloc();
          *(v0 + 152) = v32;
          *v32 = v0;
          v32[1] = MediaPlaybackStore.moveArtworkToLocalCacheIfNecessary(_:);

          return MediaPlaybackArtworkStore.storeArtwork(for:)(KeyPath);
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    v9 = *(v0 + 88);
    if (v10 >= (((1 << *(v0 + 168)) + 63) >> 6))
    {
      break;
    }

    v7 = *(v9 + 8 * v10 + 64);
    ++v8;
    if (v7)
    {
      v8 = v10;
      goto LABEL_12;
    }
  }

  type metadata accessor for MediaPlaybackArtworkStore();
  swift_initStaticObject();
  MediaPlaybackArtworkStore.clearUnusedArtwork(configuredIdentifiers:)(*(v0 + 56));

  v24 = *(v0 + 8);
  v25 = *(v0 + 169);

  return v24(v25);
}

{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v9 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = *(v2 + 120);
    v5 = *(v2 + 80);

    v6 = MediaPlaybackStore.moveArtworkToLocalCacheIfNecessary(_:);
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 80);
    v6 = MediaPlaybackStore.moveArtworkToLocalCacheIfNecessary(_:);
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

{
  v38 = v0;
  if (*(*(v0 + 88) + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 112), *(v0 + 120));
    v4 = v3;

    v1 = *(v0 + 128);
    v5 = *(v0 + 136);
    if (v4)
    {
      KeyPath = *(*(*(v0 + 88) + 56) + 8 * v2);
      v7 = MSSuggestion.minify()();
      MediaPlaybackConfigurationItem.mediaSuggestion.setter(v7);
    }

    else
    {

      KeyPath = v5;
    }
  }

  else
  {
    v8 = *(v0 + 128);
    KeyPath = *(v0 + 136);
    v9 = *(v0 + 120);
  }

  v10 = *(v0 + 104);
  v11 = (*(v0 + 96) - 1) & *(v0 + 96);
  *(v0 + 169) = 1;
  while (v11)
  {
    v12 = *(v0 + 88);
LABEL_14:
    *(v0 + 96) = v11;
    *(v0 + 104) = v10;
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v15 = v14 | (v10 << 6);
    v16 = (*(v12 + 48) + 16 * v15);
    v36 = *v16;
    *(v0 + 112) = *v16;
    v1 = v16[1];
    *(v0 + 120) = v1;
    v17 = *(*(v12 + 56) + 8 * v15);
    *(v0 + 128) = v17;
    KeyPath = swift_getKeyPath();
    *(v0 + 64) = v17;
    lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem(&lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem);

    v18 = v17;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v19 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
    swift_beginAccess();
    v20 = *&v18[v19];
    *(v0 + 136) = v20;
    if (v20)
    {
      KeyPath = v20;
      v21 = [KeyPath identifier];
      if (v21)
      {
        v22 = v21;
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        specialized Set._Variant.insert(_:)((v0 + 40), v23, v25);
        v26 = *(v0 + 48);

        if ([KeyPath hasArtwork])
        {
          if (one-time initialization token for mediaPlayback != -1)
          {
LABEL_29:
            swift_once();
          }

          v30 = type metadata accessor for Logger();
          *(v0 + 144) = __swift_project_value_buffer(v30, static WOLog.mediaPlayback);

          v31 = Logger.logObject.getter();
          v32 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            v37 = v34;
            *v33 = 136315138;
            *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v1, &v37);
            _os_log_impl(&dword_20AEA4000, v31, v32, "Workout: %s has a media suggestion with artwork, storing and clearing", v33, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v34);
            MEMORY[0x20F2E9420](v34, -1, -1);
            MEMORY[0x20F2E9420](v33, -1, -1);
          }

          type metadata accessor for MediaPlaybackArtworkStore();
          swift_initStaticObject();
          v35 = swift_task_alloc();
          *(v0 + 152) = v35;
          *v35 = v0;
          v35[1] = MediaPlaybackStore.moveArtworkToLocalCacheIfNecessary(_:);

          return MediaPlaybackArtworkStore.storeArtwork(for:)(KeyPath);
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    v12 = *(v0 + 88);
    if (v13 >= (((1 << *(v0 + 168)) + 63) >> 6))
    {
      break;
    }

    v11 = *(v12 + 8 * v13 + 64);
    ++v10;
    if (v11)
    {
      v10 = v13;
      goto LABEL_14;
    }
  }

  type metadata accessor for MediaPlaybackArtworkStore();
  swift_initStaticObject();
  MediaPlaybackArtworkStore.clearUnusedArtwork(configuredIdentifiers:)(*(v0 + 56));

  v27 = *(v0 + 8);
  v28 = *(v0 + 169);

  return v27(v28);
}

{
  v42 = v0;
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  KeyPath = *(v0 + 160);
  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v1 = swift_slowAlloc();
    *v11 = 138412290;
    v12 = KeyPath;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v1 = v13;
    _os_log_impl(&dword_20AEA4000, v5, v6, "Failed to cache artwork locally: %@", v11, 0xCu);
    _sSo8NSObjectCSgWOhTm_17(v1, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v1, -1, -1);
    MEMORY[0x20F2E9420](v11, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 104);
  v15 = (*(v0 + 96) - 1) & *(v0 + 96);
  while (v15)
  {
    v16 = *(v0 + 88);
LABEL_12:
    *(v0 + 96) = v15;
    *(v0 + 104) = v14;
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v19 = v18 | (v14 << 6);
    v20 = (*(v16 + 48) + 16 * v19);
    v40 = *v20;
    *(v0 + 112) = *v20;
    v1 = v20[1];
    *(v0 + 120) = v1;
    v21 = *(*(v16 + 56) + 8 * v19);
    *(v0 + 128) = v21;
    KeyPath = swift_getKeyPath();
    *(v0 + 64) = v21;
    lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem(&lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem);

    v22 = v21;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v23 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
    swift_beginAccess();
    v24 = *&v22[v23];
    *(v0 + 136) = v24;
    if (v24)
    {
      KeyPath = v24;
      v25 = [KeyPath identifier];
      if (v25)
      {
        v26 = v25;
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        specialized Set._Variant.insert(_:)((v0 + 40), v27, v29);
        v30 = *(v0 + 48);

        if ([KeyPath hasArtwork])
        {
          if (one-time initialization token for mediaPlayback != -1)
          {
LABEL_27:
            swift_once();
          }

          v34 = type metadata accessor for Logger();
          *(v0 + 144) = __swift_project_value_buffer(v34, static WOLog.mediaPlayback);

          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            v38 = swift_slowAlloc();
            v41 = v38;
            *v37 = 136315138;
            *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v1, &v41);
            _os_log_impl(&dword_20AEA4000, v35, v36, "Workout: %s has a media suggestion with artwork, storing and clearing", v37, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v38);
            MEMORY[0x20F2E9420](v38, -1, -1);
            MEMORY[0x20F2E9420](v37, -1, -1);
          }

          type metadata accessor for MediaPlaybackArtworkStore();
          swift_initStaticObject();
          v39 = swift_task_alloc();
          *(v0 + 152) = v39;
          *v39 = v0;
          v39[1] = MediaPlaybackStore.moveArtworkToLocalCacheIfNecessary(_:);

          return MediaPlaybackArtworkStore.storeArtwork(for:)(KeyPath);
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    v16 = *(v0 + 88);
    if (v17 >= (((1 << *(v0 + 168)) + 63) >> 6))
    {
      break;
    }

    v15 = *(v16 + 8 * v17 + 64);
    ++v14;
    if (v15)
    {
      v14 = v17;
      goto LABEL_12;
    }
  }

  type metadata accessor for MediaPlaybackArtworkStore();
  swift_initStaticObject();
  MediaPlaybackArtworkStore.clearUnusedArtwork(configuredIdentifiers:)(*(v0 + 56));

  v31 = *(v0 + 8);
  v32 = *(v0 + 169);

  return v31(v32);
}

NSObject *MediaPlaybackStore.validatedMediaConfiguration(_:for:requestId:)(uint64_t *a1, uint64_t *a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v97 = a2;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static WOLog.mediaPlayback);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v96[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v96);
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, a3, v96);
    _os_log_impl(&dword_20AEA4000, v11, v12, "[%s] Validating media configuration for %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v14, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }

  swift_beginAccess();
  v15 = *(v6 + 160);
  if (*(v15 + 16))
  {
    v16 = *(v6 + 160);

    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v97, a3);
    if (v18)
    {
      v19 = *(*(v15 + 56) + 8 * v17);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v95 = v23;
        *v22 = 136315138;
        *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v95);
        _os_log_impl(&dword_20AEA4000, v20, v21, "[%s] Using cached validated configuration", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v23);
        MEMORY[0x20F2E9420](v23, -1, -1);
        MEMORY[0x20F2E9420](v22, -1, -1);
      }

      return v19;
    }
  }

  swift_getKeyPath();
  v95 = a1;
  lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem(&lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled;
  swift_beginAccess();
  v89 = v25;
  if (*(a1 + v25) == 1 && (swift_getKeyPath(), v94 = a1, ObservationRegistrar.access<A, B>(_:keyPath:)(), , v26 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled, swift_beginAccess(), (*(a1 + v26) & 1) == 0))
  {
    v86 = v26;
    swift_getKeyPath();
    v94 = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v34 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
    swift_beginAccess();
    v35 = *(a1 + v34);
    if (v35)
    {

      v36 = v35;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();

      v83 = v38;
      v85 = v36;
      if (os_log_type_enabled(v37, v38))
      {
        log = v37;
        v39 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v92[0] = v81;
        *v39 = 136315650;
        *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v92);
        v40 = v39;
        *(v39 + 12) = 2080;
        v41 = [v36 title];
        if (v41)
        {
          v42 = v41;
          v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = v44;
        }

        else
        {
          v45 = 0xE700000000000000;
          v43 = 0x6E776F6E6B6E75;
        }

        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, v92);

        v51 = v40;
        *(v40 + 14) = v50;
        *(v40 + 22) = 2080;
        v36 = v85;
        v52 = [v85 bundleID];
        v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;

        v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v54, v92);

        *(v51 + 24) = v55;
        _os_log_impl(&dword_20AEA4000, log, v83, "[%s] Validating media suggestion: %s from %s", v51, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v81, -1, -1);
        MEMORY[0x20F2E9420](v51, -1, -1);
      }

      else
      {
      }

      v56 = MSSuggestion.validatedSuggestion.getter();
      if (v56)
      {
        v84 = v56;
        swift_getKeyPath();
        v92[0] = a1;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v90 = *(a1 + v89);
        swift_getKeyPath();
        v92[0] = a1;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v87 = *(a1 + v86);
        v88 = type metadata accessor for MediaPlaybackConfigurationItem();
        v57 = objc_allocWithZone(v88);
        v58 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
        *&v57[OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion] = 0;
        v59 = v84;
        ObservationRegistrar.init()();
        v57[OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled] = v90;
        v57[OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled] = v87;
        v60 = *&v57[v58];
        v61 = v59;

        *&v57[v58] = v84;
        v93.receiver = v57;
        v93.super_class = v88;
        v62 = objc_msgSendSuper2(&v93, sel_init);

        swift_beginAccess();
        v19 = v62;
        v63 = specialized Dictionary._Variant.updateValue(_:forKey:)(v19, v97, a3);
        swift_endAccess();

        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v92[0] = v67;
          *v66 = 136315138;
          *(v66 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v92);
          _os_log_impl(&dword_20AEA4000, v64, v65, "[%s] Successfully validated and cached configuration", v66, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v67);
          MEMORY[0x20F2E9420](v67, -1, -1);
          MEMORY[0x20F2E9420](v66, -1, -1);
        }
      }

      else
      {

        v68 = a1;
        v19 = Logger.logObject.getter();
        v69 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v19, v69))
        {
          v70 = v36;
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v92[0] = v72;
          *v71 = 136315394;
          *(v71 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v92);
          *(v71 + 12) = 2080;
          v73 = [v68 debugDescription];
          v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v76 = v75;

          v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, v92);

          *(v71 + 14) = v77;
          _os_log_impl(&dword_20AEA4000, v19, v69, "[%s] Media suggestion not playable on this device: %s", v71, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v72, -1, -1);
          v78 = v71;
          v36 = v70;
          MEMORY[0x20F2E9420](v78, -1, -1);
        }

        lazy protocol witness table accessor for type MediaPlaybackStoreError and conformance MediaPlaybackStoreError();
        swift_allocError();
        *v79 = xmmword_20B44A8E0;
        swift_willThrow();
      }

      return v19;
    }

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v92[0] = v49;
      *v48 = 136315138;
      *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v92);
      _os_log_impl(&dword_20AEA4000, v46, v47, "[%s] Configuration has no media suggestion, validation not needed", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x20F2E9420](v49, -1, -1);
      MEMORY[0x20F2E9420](v48, -1, -1);
    }

    return a1;
  }

  else
  {
    v27 = a1;

    v28 = v27;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v92[0] = v97;
      *v31 = 136315650;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v92);
      *(v31 + 12) = 1024;
      swift_getKeyPath();
      v94 = v28;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      *(v31 + 14) = *(a1 + v89);

      *(v31 + 18) = 1024;
      swift_getKeyPath();
      v94 = v28;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v32 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled;
      swift_beginAccess();
      *(v31 + 20) = v28[v32];

      _os_log_impl(&dword_20AEA4000, v29, v30, "[%s] Configuration doesn't require validation (autoPlay: %{BOOL}d, smartStation: %{BOOL}d)", v31, 0x18u);
      v33 = v97;
      __swift_destroy_boxed_opaque_existential_0(v97);
      MEMORY[0x20F2E9420](v33, -1, -1);
      MEMORY[0x20F2E9420](v31, -1, -1);
    }

    else
    {
    }

    return v28;
  }
}

void MediaPlaybackStore.sendMediaConfigurationAnalytics(for:configuration:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_opt_self() sharedConnection];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 isHealthDataSubmissionAllowed];

    if (v8)
    {
      [a1 isIndoor];
      _sSo8NSStringCMaTm_0(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
      v20 = NSString.init(stringLiteral:)();
      swift_getKeyPath();
      aBlock[0] = a2;
      lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem(&lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v9 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled;
      swift_beginAccess();
      LOBYTE(v9) = *(a2 + v9);
      _sSo8NSStringCMaTm_0(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      isa = NSNumber.init(integerLiteral:)((v9 & 1) == 0).super.super.isa;
      swift_getKeyPath();
      aBlock[0] = a2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v11 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled;
      swift_beginAccess();
      v12 = NSNumber.init(integerLiteral:)((*(a2 + v11) & 1) == 0).super.super.isa;
      v13 = MEMORY[0x20F2E6C00](*(v3 + 176), *(v3 + 184));
      v14 = swift_allocObject();
      v14[2] = a1;
      v14[3] = v20;
      v14[4] = isa;
      v14[5] = v12;
      aBlock[4] = partial apply for closure #1 in MediaPlaybackStore.sendMediaConfigurationAnalytics(for:configuration:);
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
      aBlock[3] = &block_descriptor_78;
      v15 = _Block_copy(aBlock);
      v16 = a1;
      v17 = v20;
      v18 = isa;
      v19 = v12;

      AnalyticsSendEventLazy();
      _Block_release(v15);
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t closure #1 in MediaPlaybackStore.sendMediaConfigurationAnalytics(for:configuration:)(void *a1, void *a2, void *a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B4290B0;
  strcpy((inited + 32), "activity_type");
  *(inited + 46) = -4864;
  [a1 identifier];
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
      v22 = v21;

      v11 = MEMORY[0x20F2E6D00](v16, v18, v20, v22);
      v13 = v23;
    }
  }

  else
  {
    v13 = 0x800000020B456520;
    v11 = 0xD000000000000010;
  }

  v24 = MEMORY[0x20F2E6C00](v11, v13);

  *(inited + 48) = v24;
  strcpy((inited + 56), "location_type");
  *(inited + 70) = -4864;
  *(inited + 72) = a2;
  strcpy((inited + 80), "configuration");
  *(inited + 94) = -4864;
  *(inited + 96) = a3;
  *(inited + 104) = 0xD000000000000012;
  *(inited + 112) = 0x800000020B46B1F0;
  *(inited + 120) = a4;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  return v28;
}

unint64_t lazy protocol witness table accessor for type MediaPlaybackStoreError and conformance MediaPlaybackStoreError()
{
  result = lazy protocol witness table cache variable for type MediaPlaybackStoreError and conformance MediaPlaybackStoreError;
  if (!lazy protocol witness table cache variable for type MediaPlaybackStoreError and conformance MediaPlaybackStoreError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaPlaybackStoreError and conformance MediaPlaybackStoreError);
  }

  return result;
}

uint64_t dispatch thunk of MediaPlaybackStore.addMediaConfiguration(for:configuration:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 200);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of MediaPlaybackStore.addMediaConfiguration(for:configuration:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of MediaPlaybackStore.addMediaConfiguration(for:configuration:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of MediaPlaybackStore.fetchMediaPlaybackConfiguration(for:)(uint64_t a1)
{
  v4 = *(*v1 + 224);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of MediaPlaybackStore.fetchMediaPlaybackConfiguration(for:);

  return v8(a1);
}

{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of MediaPlaybackStore.fetchMediaPlaybackConfigurations()()
{
  v2 = *(*v0 + 232);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of MediaPlaybackStore.fetchMediaPlaybackConfigurations();

  return v6();
}

uint64_t get_enum_tag_for_layout_string_11WorkoutCore23MediaPlaybackStoreErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for MediaPlaybackStoreError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MediaPlaybackStoreError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for MediaPlaybackStoreError(void *result, int a2)
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

uint64_t partial apply for closure #1 in MediaPlaybackStore.handleWorkoutMediaPreferencesChangedNotification(_:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for closure #1 in MediaPlaybackStore.handleWorkoutMediaPreferencesChangedNotification(_:);

  return closure #1 in MediaPlaybackStore.handleWorkoutMediaPreferencesChangedNotification(_:)();
}

{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MediaPlaybackConfigurationItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSo8NSStringCMaTm_0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t RaceRouteDataStore.__allocating_init(healthStore:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = a1;
  *(v2 + 16) = [objc_allocWithZone(MEMORY[0x277CCD868]) initWithHealthStore_];
  return v2;
}

uint64_t RaceRouteDataStore.init(healthStore:)(uint64_t a1)
{
  *(v1 + 24) = a1;
  *(v1 + 16) = [objc_allocWithZone(MEMORY[0x277CCD868]) initWithHealthStore_];
  return v1;
}

uint64_t RaceRouteDataStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void RaceRouteDataStore.queryRoute(for:timestampAnchor:pointsLimit:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  v18 = objc_allocWithZone(MEMORY[0x277CCD870]);

  isa = UUID._bridgeToObjectiveC()().super.isa;
  aBlock[4] = partial apply for closure #1 in RaceRouteDataStore.queryRoute(for:timestampAnchor:pointsLimit:completion:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed HKRaceRouteLocationSeriesQuery, @guaranteed [CLRoutePoint]?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_79;
  v20 = _Block_copy(aBlock);
  v21 = [v18 initWithWorkoutUUID:isa timestampAnchor:a2 limit:v20 dataHandler:a5];
  _Block_release(v20);

  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static WOLog.race);
  (*(v13 + 16))(v16, a1, v12);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v34 = v6;
    aBlock[0] = v26;
    v27 = v26;
    *v25 = 136315138;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v13 + 8))(v16, v12);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, aBlock);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_20AEA4000, v23, v24, "Race Data Store: executing location query for workout %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    v32 = v27;
    v6 = v34;
    MEMORY[0x20F2E9420](v32, -1, -1);
    MEMORY[0x20F2E9420](v25, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  [*(v6 + 24) executeQuery_];
}

void closure #1 in RaceRouteDataStore.queryRoute(for:timestampAnchor:pointsLimit:completion:)(uint64_t a1, unint64_t a2, void *a3, void (*a4)(id *))
{
  if (a3)
  {
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static WOLog.race);
    v7 = a3;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v31 = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v12 = MEMORY[0x20F2E7F50]();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v31);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_20AEA4000, v8, v9, "Race Data Store: Failed to query locations %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x20F2E9420](v11, -1, -1);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }

    v31 = a3;
    v32 = 1;
    v15 = a3;
  }

  else if (a2)
  {
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.race);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      if (a2 >> 62)
      {
        v21 = __CocoaSet.count.getter();
      }

      else
      {
        v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v20 + 4) = v21;

      _os_log_impl(&dword_20AEA4000, v18, v19, "Race Data Store: queried route with locations: %ld", v20, 0xCu);
      MEMORY[0x20F2E9420](v20, -1, -1);
    }

    else
    {
    }

    v28 = specialized _arrayForceCast<A, B>(_:)(a2);
    v29 = specialized _arrayConditionalCast<A, B>(_:)(v28);

    v30 = MEMORY[0x277D84F90];
    if (v29)
    {
      v30 = v29;
    }

    v31 = v30;
    v32 = 0;
  }

  else
  {
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static WOLog.race);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_20AEA4000, v23, v24, "Race Data Store: Locations array is nil.", v25, 2u);
      MEMORY[0x20F2E9420](v25, -1, -1);
    }

    lazy protocol witness table accessor for type RaceError and conformance RaceError();
    v26 = swift_allocError();
    *v27 = 6;
    v31 = v26;
    v32 = 1;
  }

  a4(&v31);
  outlined consume of Result<RaceRoute, Error>(v31, v32);
}

void RaceRouteDataStore.queryConfigurations(for:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = [a1 identifier];
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a1;
  v12[4] = partial apply for closure #1 in RaceRouteDataStore.queryConfigurations(for:completion:);
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [HKRaceRouteCluster]?, @guaranteed Error?) -> ();
  v12[3] = &block_descriptor_6_8;
  v10 = _Block_copy(v12);

  v11 = a1;

  [v7 fetchRaceRouteClustersForActivityType:v8 completion:v10];
  _Block_release(v10);
}

void closure #1 in RaceRouteDataStore.queryConfigurations(for:completion:)(unint64_t a1, void *a2, void (*a3)(void *, uint64_t), uint64_t a4, unint64_t a5)
{
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (a2)
    {
      v31 = a2;
      if (one-time initialization token for race != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static WOLog.race);
      v33 = a2;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        aBlock[0] = v37;
        *v36 = 136315138;
        swift_getErrorValue();
        v38 = MEMORY[0x20F2E7F50](v84[2], v84[3]);
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, aBlock);

        *(v36 + 4) = v40;
        _os_log_impl(&dword_20AEA4000, v34, v35, "Race Data Store: error fetching configurations: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x20F2E9420](v37, -1, -1);
        MEMORY[0x20F2E9420](v36, -1, -1);
      }

      v41 = a2;
      a3(a2, 1);
    }

    else
    {
      if (one-time initialization token for race != -1)
      {
        swift_once();
      }

      v65 = type metadata accessor for Logger();
      __swift_project_value_buffer(v65, static WOLog.race);
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_20AEA4000, v66, v67, "Race Data Store: nil cluster array without error", v68, 2u);
        MEMORY[0x20F2E9420](v68, -1, -1);
      }

      a3(MEMORY[0x277D84F90], 0);
    }

    return;
  }

  v72 = v21;
  v73 = v19;
  v74 = v15;
  v75 = v18;
  v76 = v12;
  v78 = a3;
  v79 = a4;
  v80 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_69;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v23 = MEMORY[0x277D84F90];
    v77 = v11;
    if (!i)
    {
      break;
    }

    aBlock[0] = MEMORY[0x277D84F90];
    v24 = aBlock;
    v25 = specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      __break(1u);
      goto LABEL_72;
    }

    v11 = 0;
    v5 = (a1 & 0xC000000000000001);
    v26 = a1;
    v81 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v27 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5)
      {
        v28 = MEMORY[0x20F2E7A20](v11, v26);
      }

      else
      {
        if (v11 >= *(v81 + 16))
        {
          goto LABEL_68;
        }

        v28 = *(v26 + 8 * v11 + 32);
      }

      v29 = v28;
      v84[0] = v28;
      closure #1 in closure #1 in RaceRouteDataStore.queryConfigurations(for:completion:)(v84, a5, v83);

      a1 = v83[0];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v30 = *(aBlock[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v11;
      if (v27 == i)
      {
        a5 = aBlock[0];
        a1 = v26;
        v23 = MEMORY[0x277D84F90];
        goto LABEL_21;
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
    ;
  }

  a5 = MEMORY[0x277D84F90];
LABEL_21:
  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  v43 = __swift_project_value_buffer(v42, static WOLog.race);

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 134217984;
    if (v80)
    {
      v47 = __CocoaSet.count.getter();
    }

    else
    {
      v47 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v46 + 4) = v47;

    _os_log_impl(&dword_20AEA4000, v44, v45, "Race Data Store: found clusters: %ld", v46, 0xCu);
    MEMORY[0x20F2E9420](v46, -1, -1);
  }

  else
  {
  }

  v71 = a1;
  v81 = v43;
  aBlock[0] = v23;
  if (a5 >> 62)
  {
    v48 = __CocoaSet.count.getter();
  }

  else
  {
    v48 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a1 = MEMORY[0x277D84F90];
  if (v48)
  {
    v11 = 0;
    v5 = (a5 & 0xC000000000000001);
    v43 = &OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
    while (1)
    {
      if (v5)
      {
        v49 = MEMORY[0x20F2E7A20](v11, a5);
      }

      else
      {
        if (v11 >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_67;
        }

        v49 = *(a5 + 8 * v11 + 32);
      }

      a1 = v49;
      v50 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_66;
      }

      v51 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
      swift_beginAccess();
      if (*(a1 + v51) < 0.0)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v52 = *(aBlock[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v11;
      if (v50 == v48)
      {
        i = aBlock[0];
        a1 = MEMORY[0x277D84F90];
        goto LABEL_44;
      }
    }
  }

  i = MEMORY[0x277D84F90];
LABEL_44:

  v53 = v71;

  LOBYTE(v24) = v81;
  v5 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v5, v11))
  {

    goto LABEL_53;
  }

  a5 = swift_slowAlloc();
  *a5 = 134217984;
  if (v80)
  {
    v25 = __CocoaSet.count.getter();
  }

  else
  {
    v25 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((i & 0x8000000000000000) == 0 && (i & 0x4000000000000000) == 0)
  {
    v54 = *(i + 16);
    v55 = __OFSUB__(v25, v54);
    v56 = (v25 - v54);
    if (!v55)
    {
      goto LABEL_52;
    }

LABEL_74:
    __break(1u);
LABEL_75:
    v57 = __CocoaSet.count.getter();
LABEL_57:
    *(v43 + 4) = v57;

    _os_log_impl(&dword_20AEA4000, v11, v24, "Race Data Store: found %ld non-fragmented clusters", v43, 0xCu);
    MEMORY[0x20F2E9420](v43, -1, -1);

    goto LABEL_59;
  }

LABEL_72:
  v43 = v25;
  v69 = __CocoaSet.count.getter();
  v56 = v43 - v69;
  if (__OFSUB__(v43, v69))
  {
    goto LABEL_74;
  }

LABEL_52:
  *(a5 + 4) = v56;

  _os_log_impl(&dword_20AEA4000, v5, v11, "Race Data Store: hiding %ld fragmented clusters", a5, 0xCu);
  MEMORY[0x20F2E9420](a5, -1, -1);

LABEL_53:

  v11 = Logger.logObject.getter();
  LOBYTE(v24) = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v24))
  {
    v43 = swift_slowAlloc();
    *v43 = 134217984;
    if (i < 0 || (i & 0x4000000000000000) != 0)
    {
      goto LABEL_75;
    }

    v57 = *(i + 16);
    goto LABEL_57;
  }

LABEL_59:
  type metadata accessor for HKRaceRouteCluster(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v58 = static OS_dispatch_queue.main.getter();
  v59 = swift_allocObject();
  v60 = v79;
  v59[2] = v78;
  v59[3] = v60;
  v59[4] = i;
  aBlock[4] = partial apply for closure #3 in closure #1 in RaceRouteDataStore.queryConfigurations(for:completion:);
  aBlock[5] = v59;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_21_3;
  v61 = _Block_copy(aBlock);

  v62 = v72;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = a1;
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_5(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v63 = v74;
  v64 = v77;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v62, v63, v61);
  _Block_release(v61);

  (*(v76 + 8))(v63, v64);
  (*(v73 + 8))(v62, v75);
}

uint64_t closure #1 in closure #1 in RaceRouteDataStore.queryConfigurations(for:completion:)@<X0>(void **a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v101 = a2;
  v102 = a3;
  v98 = type metadata accessor for UUID();
  v109 = *(v98 - 8);
  v4 = *(v109 + 64);
  v5 = MEMORY[0x28223BE20](v98);
  v100 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v118 = &v95 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v120 = &v95 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v113 = &v95 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v111 = &v95 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v108 = &v95 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v119 = &v95 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v112 = &v95 - v20;
  MEMORY[0x28223BE20](v19);
  v110 = &v95 - v21;
  v22 = type metadata accessor for Date();
  v104 = v22;
  v107 = *(v22 - 8);
  v23 = v107;
  v24 = v107[8];
  v25 = MEMORY[0x28223BE20](v22);
  v116 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v117 = &v95 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v105 = &v95 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v106 = &v95 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v95 - v33;
  v35 = *a1;
  v36 = specialized Occurrence.__allocating_init(count:)(0);
  v37 = [v35 lastWorkoutDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
  swift_beginAccess();
  v39 = v23[5];
  v99 = v36;
  v39(&v36[v38], v34, v22);
  swift_endAccess();
  v40 = [v35 workoutRouteLabel];
  v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v96 = v41;

  v42 = [v35 clusterUUID];
  v43 = v110;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v44 = [v35 lastWorkoutUUID];
  v45 = v112;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  [v35 lastWorkoutDistance];
  v47 = v46;
  [v35 lastWorkoutDuration];
  v49 = v48;
  v50 = [v35 lastWorkoutDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v51 = [v35 bestWorkoutUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  [v35 bestWorkoutDistance];
  v53 = v52;
  [v35 bestWorkoutDuration];
  v55 = v54;
  v56 = [v35 bestWorkoutDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v57 = [v35 workoutRouteSnapshot];
  v58 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v114 = v59;
  v115 = v58;

  v95 = [v35 clusterSize];
  v103 = [v35 lastWorkoutStartingPoint];
  [v35 relevanceValue];
  v61 = v60;
  v62 = v108;
  UUID.init()();
  v63 = *(v109 + 16);
  v64 = v111;
  v65 = v43;
  v66 = v98;
  v63(v111, v65, v98);
  v67 = v113;
  v63(v113, v45, v66);
  v68 = v107[2];
  v69 = v104;
  v68(v117, v106, v104);
  v63(v120, v119, v66);
  v68(v116, v105, v69);
  v63(v118, v62, v66);
  v70 = objc_allocWithZone(type metadata accessor for RaceWorkoutConfiguration());
  v71 = &v70[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle];
  v72 = v96;
  *v71 = v97;
  v71[1] = v72;
  v63(&v70[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID], v64, v66);
  swift_beginAccess();
  v122 = 1;
  Published.init(initialValue:)();
  swift_endAccess();
  v63(&v70[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID], v67, v66);
  *&v70[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance] = v47;
  *&v70[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration] = v49;
  v73 = v104;
  v68(&v70[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDate], v117, v104);
  v63(&v70[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID], v120, v66);
  *&v70[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance] = v53;
  *&v70[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration] = v55;
  v68(&v70[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDate], v116, v73);
  v74 = v103;
  v75 = &v70[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData];
  v76 = v114;
  *v75 = v115;
  v75[1] = v76;
  *&v70[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterSize] = v95;
  if (v74)
  {
    outlined copy of Data._Representation(v115, v114);
    v77 = v74;
    [v77 coordinate];
    *&v70[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude] = v78;
    [v77 coordinate];
    v80 = v79;

    *&v70[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude] = v80;
  }

  else
  {
    *&v70[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude] = 0x412E848000000000;
    *&v70[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude] = 0x412E848000000000;
    outlined copy of Data._Representation(v115, v114);
  }

  *&v70[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue] = v61;
  v81 = v100;
  v63(v100, v118, v66);
  *&v70[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v82 = v107;
  v83 = v107[7];
  v83(&v70[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v73);
  v83(&v70[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v73);
  v84 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v85 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v85 - 8) + 56))(&v70[v84], 1, 1, v85);
  v86 = v109;
  (*(v109 + 56))(&v70[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v66);
  v87 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v70[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v63(&v70[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v81, v66);
  v88 = v101;
  *&v70[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v101;
  v70[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 2;
  *&v70[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v99;
  swift_beginAccess();
  *&v70[v87] = 0;
  v70[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v89 = type metadata accessor for WorkoutConfiguration();
  v121.receiver = v70;
  v121.super_class = v89;
  v90 = v88;
  v91 = objc_msgSendSuper2(&v121, sel_init);

  outlined consume of Data._Representation(v115, v114);
  v92 = *(v86 + 8);
  v92(v81, v66);
  v92(v118, v66);
  v93 = v82[1];
  v93(v116, v73);
  v92(v120, v66);
  v93(v117, v73);
  v92(v113, v66);
  v92(v111, v66);
  v92(v108, v66);
  v93(v105, v73);
  v92(v119, v66);
  v93(v106, v73);
  v92(v112, v66);
  result = (v92)(v110, v66);
  *v102 = v91;
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [HKRaceRouteCluster]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    type metadata accessor for HKRaceRouteCluster(0, &lazy cache variable for type metadata for HKRaceRouteCluster, 0x277CCD860);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

void protocol witness for RaceRouteDataStoring.queryConfigurations(for:completion:) in conformance RaceRouteDataStore(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 16);
  v8 = [a1 identifier];
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a1;
  v12[4] = closure #1 in RaceRouteDataStore.queryConfigurations(for:completion:)partial apply;
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [HKRaceRouteCluster]?, @guaranteed Error?) -> ();
  v12[3] = &block_descriptor_15_7;
  v10 = _Block_copy(v12);

  v11 = a1;

  [v7 fetchRaceRouteClustersForActivityType:v8 completion:v10];
  _Block_release(v10);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed HKRaceRouteLocationSeriesQuery, @guaranteed [CLRoutePoint]?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    type metadata accessor for HKRaceRouteCluster(0, &lazy cache variable for type metadata for CLRoutePoint, 0x277CBFC78);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

uint64_t objectdestroy_2Tm_2()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t type metadata accessor for HKRaceRouteCluster(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t TrackRunningCoordinator.protobuf.getter()
{
  type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator();
  lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningCoordinator and conformance Apple_Workout_Core_TrackRunningCoordinator(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningCoordinator and conformance Apple_Workout_Core_TrackRunningCoordinator, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
  return static Message.with(_:)();
}

id Apple_Workout_Core_TrackRunningCoordinator.decoded.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static TrackRunningCoordinator.shared;
  v2 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  static Published.subscript.setter();
  return v3;
}

id TrackRunningMetadataKeys.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TrackRunningMetadataKeys.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrackRunningMetadataKeys();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TrackRunningMetadataKeys.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrackRunningMetadataKeys();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TrackRunningCoordinator.canShowTrackPrompt.getter()
{
  v1 = OBJC_IVAR___WOCoreTrackRunningCoordinator_canShowTrackPrompt;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TrackRunningCoordinator.canShowTrackPrompt.setter(char a1)
{
  v3 = OBJC_IVAR___WOCoreTrackRunningCoordinator_canShowTrackPrompt;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t TrackRunningCoordinator.didShowTrackPrompt.getter()
{
  v1 = OBJC_IVAR___WOCoreTrackRunningCoordinator_didShowTrackPrompt;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TrackRunningCoordinator.didShowTrackPrompt.setter(char a1)
{
  v3 = OBJC_IVAR___WOCoreTrackRunningCoordinator_didShowTrackPrompt;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t TrackRunningCoordinator.trackModeEnabledLocal.getter()
{
  return TrackRunningCoordinator.trackModeEnabledLocal.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t TrackRunningCoordinator.trackModeEnabledLocal.setter()
{
  return TrackRunningCoordinator.trackModeEnabledLocal.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*TrackRunningCoordinator.trackModeEnabledLocal.modify(uint64_t *a1))()
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
  return TrackRunningCoordinator.trackModeEnabledLocal.modify;
}

uint64_t (*TrackRunningCoordinator.$trackModeEnabledLocal.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR___WOCoreTrackRunningCoordinator__trackModeEnabledLocal;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return TrackRunningCoordinator.$trackModeEnabledLocal.modify;
}

uint64_t key path getter for TrackRunningCoordinator.trackModeEnabledMirrored : TrackRunningCoordinator@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  return key path getter for TrackRunningCoordinator.trackModeEnabledMirrored : TrackRunningCoordinator(a1, a2);
}

{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for TrackRunningCoordinator.trackModeEnabledMirrored : TrackRunningCoordinator(char *a1, void **a2)
{
  return key path setter for TrackRunningCoordinator.trackModeEnabledMirrored : TrackRunningCoordinator(a1, a2);
}

{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t (*TrackRunningCoordinator.trackModeEnabledMirrored.modify(uint64_t *a1))()
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
  return TrackRunningCoordinator.trackModeEnabledMirrored.modify;
}

uint64_t (*TrackRunningCoordinator.$trackModeEnabledMirrored.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR___WOCoreTrackRunningCoordinator__trackModeEnabledMirrored;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return TrackRunningCoordinator.$trackModeEnabledMirrored.modify;
}

uint64_t (*TrackRunningCoordinator.hasTrackUnitsOfMeasure.modify(uint64_t *a1))()
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
  return TrackRunningCoordinator.hasTrackUnitsOfMeasure.modify;
}

uint64_t key path setter for TrackRunningCoordinator.$trackModeEnabledLocal : TrackRunningCoordinator(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
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

uint64_t TrackRunningCoordinator.$trackModeEnabledLocal.setter(uint64_t a1, uint64_t *a2)
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

uint64_t (*TrackRunningCoordinator.$hasTrackUnitsOfMeasure.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR___WOCoreTrackRunningCoordinator__hasTrackUnitsOfMeasure;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return TrackRunningCoordinator.$hasTrackUnitsOfMeasure.modify;
}

uint64_t key path getter for TrackRunningCoordinator.preferredUnit : TrackRunningCoordinator@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for TrackRunningCoordinator.preferredUnit : TrackRunningCoordinator(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return static Published.subscript.setter();
}

uint64_t TrackRunningCoordinator.preferredUnit.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t TrackRunningCoordinator.preferredUnit.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*TrackRunningCoordinator.preferredUnit.modify(uint64_t *a1))()
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
  return TrackRunningCoordinator.preferredUnit.modify;
}

void TrackRunningCoordinator.trackModeEnabledLocal.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path getter for TrackRunningCoordinator.$trackModeEnabledLocal : TrackRunningCoordinator(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for TrackRunningCoordinator.$preferredUnit : TrackRunningCoordinator(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo12NSUnitLengthC_GMd, &_s7Combine9PublishedV9PublisherVySo12NSUnitLengthC_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo12NSUnitLengthCGMd, &_s7Combine9PublishedVySo12NSUnitLengthCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t TrackRunningCoordinator.$trackModeEnabledLocal.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t TrackRunningCoordinator.$preferredUnit.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo12NSUnitLengthC_GMd, &_s7Combine9PublishedV9PublisherVySo12NSUnitLengthC_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo12NSUnitLengthCGMd, &_s7Combine9PublishedVySo12NSUnitLengthCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*TrackRunningCoordinator.$preferredUnit.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo12NSUnitLengthC_GMd, &_s7Combine9PublishedV9PublisherVySo12NSUnitLengthC_GMR);
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

  v10 = OBJC_IVAR___WOCoreTrackRunningCoordinator__preferredUnit;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo12NSUnitLengthCGMd, &_s7Combine9PublishedVySo12NSUnitLengthCGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return TrackRunningCoordinator.$preferredUnit.modify;
}

void TrackRunningCoordinator.$trackModeEnabledLocal.modify(uint64_t a1, char a2)
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

uint64_t TrackRunningCoordinator.preferredDistanceUnit.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v4 != 1)
  {
    return 0;
  }

  type metadata accessor for NSUnitLength(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = [objc_opt_self() miles];
  v1 = static NSObject.== infix(_:_:)();

  if (v1)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

void *TrackRunningCoordinator.trackId.getter()
{
  v1 = OBJC_IVAR___WOCoreTrackRunningCoordinator_trackId;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TrackRunningCoordinator.trackId.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WOCoreTrackRunningCoordinator_trackId;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void key path setter for TrackRunningCoordinator.trackId : TrackRunningCoordinator(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOCoreTrackRunningCoordinator_trackId;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id static TrackRunningCoordinator.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static TrackRunningCoordinator.shared;

  return v1;
}

char *TrackRunningCoordinator.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo12NSUnitLengthCGMd, &_s7Combine9PublishedVySo12NSUnitLengthCGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v0[OBJC_IVAR___WOCoreTrackRunningCoordinator_canShowTrackPrompt] = 1;
  v0[OBJC_IVAR___WOCoreTrackRunningCoordinator_didShowTrackPrompt] = 0;
  v11 = OBJC_IVAR___WOCoreTrackRunningCoordinator__trackModeEnabledLocal;
  LOBYTE(v29) = 0;
  Published.init(initialValue:)();
  v12 = *(v7 + 32);
  v12(&v0[v11], v10, v6);
  v13 = OBJC_IVAR___WOCoreTrackRunningCoordinator__trackModeEnabledMirrored;
  LOBYTE(v29) = 0;
  Published.init(initialValue:)();
  v12(&v0[v13], v10, v6);
  v14 = OBJC_IVAR___WOCoreTrackRunningCoordinator__hasTrackUnitsOfMeasure;
  LOBYTE(v29) = 0;
  Published.init(initialValue:)();
  v12(&v0[v14], v10, v6);
  v15 = OBJC_IVAR___WOCoreTrackRunningCoordinator__preferredUnit;
  v29 = [objc_opt_self() meters];
  type metadata accessor for NSUnitLength(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  Published.init(initialValue:)();
  (*(v2 + 32))(&v0[v15], v5, v1);
  *&v0[OBJC_IVAR___WOCoreTrackRunningCoordinator_trackId] = 0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  v16 = [objc_allocWithZone(MEMORY[0x277CCD570]) initWithCategory:0 domainName:*MEMORY[0x277CCE4C8] healthStore:static WorkoutCoreInjector.healthStore];
  *&v0[OBJC_IVAR___WOCoreTrackRunningCoordinator_domain] = v16;
  if (one-time initialization token for nanoSyncControl != -1)
  {
    swift_once();
  }

  v17 = static WorkoutCoreInjector.nanoSyncControl;
  *&v0[OBJC_IVAR___WOCoreTrackRunningCoordinator_control] = static WorkoutCoreInjector.nanoSyncControl;
  v18 = one-time initialization token for unitManager;
  v19 = v17;
  if (v18 != -1)
  {
    swift_once();
  }

  v20 = static WorkoutCoreInjector.unitManager;
  *&v0[OBJC_IVAR___WOCoreTrackRunningCoordinator_unitManager] = static WorkoutCoreInjector.unitManager;
  v21 = type metadata accessor for TrackRunningCoordinator();
  v28.receiver = v0;
  v28.super_class = v21;
  v22 = v20;
  v23 = objc_msgSendSuper2(&v28, sel_init);
  v24 = *&v23[OBJC_IVAR___WOCoreTrackRunningCoordinator_domain];
  v25 = v23;
  [v24 startObservation_];
  TrackRunningCoordinator.fetchPreferredUnit()();

  return v25;
}

id TrackRunningCoordinator.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR___WOCoreTrackRunningCoordinator_domain] stopObservation_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrackRunningCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc TrackRunningCoordinator.trackModeEnabledLocal.setter(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return static Published.subscript.setter();
}

Swift::Void __swiftcall TrackRunningCoordinator.reset()()
{
  v1 = OBJC_IVAR___WOCoreTrackRunningCoordinator_canShowTrackPrompt;
  swift_beginAccess();
  v0[v1] = 1;
  v2 = OBJC_IVAR___WOCoreTrackRunningCoordinator_didShowTrackPrompt;
  swift_beginAccess();
  v0[v2] = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v0;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  static Published.subscript.setter();
  v5 = OBJC_IVAR___WOCoreTrackRunningCoordinator_trackId;
  swift_beginAccess();
  v6 = *&v4[v5];
  *&v4[v5] = 0;
}

void closure #1 in TrackRunningCoordinator.forceSync()(char a1, id a2)
{
  if (a2)
  {
    v4 = a2;
    if (one-time initialization token for trackRunning != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static WOLog.trackRunning);
    v6 = a2;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v7, v8))
    {

      if (a1)
      {
        return;
      }

      goto LABEL_9;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = a2;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_20AEA4000, v7, v8, "Received an error forcing a HK sync: %@", v9, 0xCu);
    outlined destroy of NSObject?(v10);
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  if (a1)
  {
    return;
  }

LABEL_9:
  if (one-time initialization token for trackRunning != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static WOLog.trackRunning);
  oslog = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_20AEA4000, oslog, v14, "Failed to force an HK sync.", v15, 2u);
    MEMORY[0x20F2E9420](v15, -1, -1);
  }
}

void TrackRunningCoordinator.fetchPreferredUnit()()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreTrackRunningCoordinator_domain);
  v2 = MEMORY[0x20F2E6C00](0xD000000000000013, 0x800000020B46B380);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5[4] = partial apply for closure #1 in TrackRunningCoordinator.fetchPreferredUnit();
  v5[5] = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSNumber?, @guaranteed Error?) -> ();
  v5[3] = &block_descriptor_55_2;
  v4 = _Block_copy(v5);

  [v1 numberForKey:v2 completion:v4];
  _Block_release(v4);
}

void closure #1 in closure #1 in TrackRunningCoordinator.fetchPreferredUnit()(void *a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v21) = 1;
  v4 = a1;
  static Published.subscript.setter();
  v5 = objc_opt_self();
  v6 = &selRef_meters;
  if ((a2 & 1) == 0)
  {
    v6 = &selRef_miles;
  }

  v7 = [v5 *v6];
  swift_getKeyPath();
  swift_getKeyPath();
  v21 = v7;
  v8 = v4;
  static Published.subscript.setter();
  if (one-time initialization token for trackRunning != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static WOLog.trackRunning);
  v10 = v8;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v15 = [v20 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v21);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_20AEA4000, v11, v12, "Found preferred unit for track running: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x20F2E9420](v14, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }
}

Swift::Void __swiftcall TrackRunningCoordinator.storePreferredUnit(_:)(NSUnitLength a1)
{
  isa = a1.super.super.super.isa;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSUnitLength(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = isa;
  aBlock[4] = partial apply for closure #1 in TrackRunningCoordinator.storePreferredUnit(_:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_80;
  v14 = _Block_copy(aBlock);
  v15 = v1;
  v16 = isa;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningCoordinator and conformance Apple_Workout_Core_TrackRunningCoordinator(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v11, v7, v14);
  _Block_release(v14);

  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v18);
}

void closure #1 in TrackRunningCoordinator.storePreferredUnit(_:)(void *a1, void *a2)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock[0] = a2;
  v5 = v4;
  v6 = a2;
  static Published.subscript.setter();
  type metadata accessor for NSUnitLength(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  v7 = [objc_opt_self() meters];
  LOBYTE(a2) = static NSObject.== infix(_:_:)();

  v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v9 = *&v5[OBJC_IVAR___WOCoreTrackRunningCoordinator_domain];
  v10 = v8;
  v11 = MEMORY[0x20F2E6C00](0xD000000000000013, 0x800000020B46B380);
  aBlock[0] = 0;
  v12 = [v9 setNumber:v10 forKey:v11 error:aBlock];

  v13 = aBlock[0];
  if (v12)
  {
    v14 = *&v5[OBJC_IVAR___WOCoreTrackRunningCoordinator_control];
    aBlock[4] = closure #1 in TrackRunningCoordinator.forceSync();
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_76_0;
    v15 = _Block_copy(aBlock);
    v16 = v13;
    [v14 forceNanoSyncWithOptions:0 completion:v15];
    _Block_release(v15);
  }

  else
  {
    v17 = aBlock[0];
    v18 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for trackRunning != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static WOLog.trackRunning);
    v20 = v18;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136315138;
      swift_getErrorValue();
      v25 = Error.localizedDescription.getter();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, aBlock);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_20AEA4000, v21, v22, "Unable to set preferred unit for track workouts: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x20F2E9420](v24, -1, -1);
      MEMORY[0x20F2E9420](v23, -1, -1);
    }

    else
    {
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void closure #1 in TrackRunningCoordinator.keyValueDomain(didUpdate:)()
{
  if (one-time initialization token for trackRunning != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static WOLog.trackRunning);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_20AEA4000, v1, v2, "Received a HKKeyValueDomain update, reloading preferences.", v3, 2u);
    MEMORY[0x20F2E9420](v3, -1, -1);
  }

  TrackRunningCoordinator.fetchPreferredUnit()();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance TrackRunningCoordinator@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TrackRunningCoordinator();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t closure #1 in TrackRunningCoordinator.didUpdateFromProximity(_:to:with:)(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return static Published.subscript.setter();
}

uint64_t closure #1 in TrackRunningCoordinator.protobuf.getter(_BYTE *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t type metadata accessor for NSUnitLength(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningCoordinator and conformance Apple_Workout_Core_TrackRunningCoordinator(unint64_t *a1, void (*a2)(uint64_t))
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

void specialized TrackRunningCoordinator.didUpdateFromProximity(_:to:with:)(_BYTE *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 3)
  {
    v19 = v12;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (LOBYTE(aBlock[0]) == 1)
    {
      type metadata accessor for NSUnitLength(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v20 = static OS_dispatch_queue.main.getter();
      v21 = swift_allocObject();
      *(v21 + 16) = v2;
      aBlock[4] = partial apply for closure #1 in TrackRunningCoordinator.didUpdateFromProximity(_:to:with:);
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_67_1;
      v22 = _Block_copy(aBlock);
      v23 = v2;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningCoordinator and conformance Apple_Workout_Core_TrackRunningCoordinator(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x20F2E7580](0, v14, v8, v22);
      _Block_release(v22);

      (*(v5 + 8))(v8, v4);
      (*(v10 + 8))(v14, v19);
    }
  }

  else if (!*a1)
  {
    if (one-time initialization token for trackRunning != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static WOLog.trackRunning);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20AEA4000, v16, v17, "didUpdateFromProximity checking for preferred unit updates.", v18, 2u);
      MEMORY[0x20F2E9420](v18, -1, -1);
    }

    TrackRunningCoordinator.fetchPreferredUnit()();
  }
}

uint64_t specialized TrackRunningCoordinator.keyValueDomain(didUpdate:)()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSUnitLength(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = partial apply for closure #1 in TrackRunningCoordinator.keyValueDomain(didUpdate:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_73;
  v13 = _Block_copy(aBlock);
  v14 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningCoordinator and conformance Apple_Workout_Core_TrackRunningCoordinator(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v10, v5, v13);
  _Block_release(v13);

  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

uint64_t keypath_get_27Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_28Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

void type metadata completion function for TrackRunningCoordinator()
{
  type metadata accessor for Published<Bool>();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for Published<NSUnitLength>();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<NSUnitLength>()
{
  if (!lazy cache variable for type metadata for Published<NSUnitLength>)
  {
    type metadata accessor for NSUnitLength(255, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<NSUnitLength>);
    }
  }
}

uint64_t static Locale.languageCode(for:)()
{

  v0 = specialized Collection.prefix(_:)(2);
  v2 = v1;
  v4 = v3;
  v6 = v5;

  v7 = MEMORY[0x20F2E6D00](v0, v2, v4, v6);

  return v7;
}

uint64_t static Locale.appendRegionCode(to:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV6RegionVSgMd, &_s10Foundation6LocaleV6RegionVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v19 - v11;
  if (String.count.getter() > 2)
  {
  }

  else
  {
    static Locale.current.getter();
    Locale.region.getter();
    (*(v5 + 8))(v8, v4);
    v13 = type metadata accessor for Locale.Region();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      outlined destroy of Locale.Region?(v12);
      lazy protocol witness table accessor for type Locale.LocaleError and conformance Locale.LocaleError();
      swift_allocError();
      swift_willThrow();
    }

    else
    {
      v15 = MEMORY[0x20F2E4880]();
      v17 = v16;
      (*(v14 + 8))(v12, v13);
      v19[0] = a1;
      v19[1] = a2;

      MEMORY[0x20F2E6D80](45, 0xE100000000000000);

      MEMORY[0x20F2E6D80](v15, v17);

      return v19[0];
    }
  }

  return a1;
}

Swift::Int Locale.LocaleError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Locale.LocaleError()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Locale.LocaleError()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

uint64_t specialized static Locale.appLanguageId.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 preferredLocalizations];

  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v2[2])
  {
    v3 = v2[4];
    v4 = v2[5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t outlined destroy of Locale.Region?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV6RegionVSgMd, &_s10Foundation6LocaleV6RegionVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Locale.LocaleError and conformance Locale.LocaleError()
{
  result = lazy protocol witness table cache variable for type Locale.LocaleError and conformance Locale.LocaleError;
  if (!lazy protocol witness table cache variable for type Locale.LocaleError and conformance Locale.LocaleError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.LocaleError and conformance Locale.LocaleError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.LocaleError and conformance Locale.LocaleError;
  if (!lazy protocol witness table cache variable for type Locale.LocaleError and conformance Locale.LocaleError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.LocaleError and conformance Locale.LocaleError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Locale.LocaleError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Locale.LocaleError(_WORD *result, int a2, int a3)
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

uint64_t Apple_Workout_Core_ActivitySummaryMetricsPublisher.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  v3 = &a1[*(v2 + 20)];
  UnknownStorage.init()();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

unint64_t Apple_Workout_Core_ActivityMoveMode.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Apple_Workout_Core_ActivityMoveMode.rawValue.getter()
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

unint64_t protocol witness for Enum.init(rawValue:) in conformance Apple_Workout_Core_ActivityMoveMode@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Enum.rawValue.getter in conformance Apple_Workout_Core_ActivityMoveMode()
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

void *protocol witness for RawRepresentable.init(rawValue:) in conformance Apple_Workout_Core_ActivityMoveMode@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Apple_Workout_Core_ActivityMoveMode(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_ActivityMoveMode()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_ActivityMoveMode(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMoveMode and conformance Apple_Workout_Core_ActivityMoveMode();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_ActivityMoveMode()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_ActivityMoveMode(uint64_t *a1, uint64_t *a2)
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

uint64_t Apple_Workout_Core_ActivitySummaryMetricsPublisher.activitySummary.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v1 + *(v7 + 24), v6, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_HKActivitySummary(v6, a1, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v10) = static Apple_Workout_Core_HKActivitySummary._StorageClass.defaultInstance;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return outlined destroy of Apple_Workout_Core_HKActivitySummary?(v6, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_ActivitySummaryMetricsPublisher.activitySummary : Apple_Workout_Core_ActivitySummaryMetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(a1 + *(v8 + 24), v7, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_HKActivitySummary(v7, a2, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v11) = static Apple_Workout_Core_HKActivitySummary._StorageClass.defaultInstance;
  v12 = v10(v7, 1, v9);

  if (v12 != 1)
  {
    return outlined destroy of Apple_Workout_Core_HKActivitySummary?(v7, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_ActivitySummaryMetricsPublisher.activitySummary : Apple_Workout_Core_ActivitySummaryMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_HKActivitySummary(a1, v8, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
  v9 = *(type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0) + 24);
  outlined destroy of Apple_Workout_Core_HKActivitySummary?(a2 + v9, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  outlined init with take of Apple_Workout_Core_HKActivitySummary(v8, a2 + v9, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Workout_Core_ActivitySummaryMetricsPublisher.activitySummary.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0) + 24);
  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v1 + v3, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  outlined init with take of Apple_Workout_Core_HKActivitySummary(a1, v1 + v3, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
  v4 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Workout_Core_HKActivitySummary.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v2) = static Apple_Workout_Core_HKActivitySummary._StorageClass.defaultInstance;
}

void (*Apple_Workout_Core_ActivitySummaryMetricsPublisher.activitySummary.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v1 + v15, v8, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v17) = static Apple_Workout_Core_HKActivitySummary._StorageClass.defaultInstance;
    v18 = v16(v8, 1, v9);

    if (v18 != 1)
    {
      outlined destroy of Apple_Workout_Core_HKActivitySummary?(v8, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_HKActivitySummary(v8, v14, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
  }

  return Apple_Workout_Core_ActivitySummaryMetricsPublisher.activitySummary.modify;
}

void Apple_Workout_Core_ActivitySummaryMetricsPublisher.activitySummary.modify(uint64_t **a1, char a2)
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
    outlined init with copy of Apple_Workout_Core_HKActivitySummary((*a1)[5], v4, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
    outlined destroy of Apple_Workout_Core_HKActivitySummary?(v9 + v3, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
    outlined init with take of Apple_Workout_Core_HKActivitySummary(v4, v9 + v3, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of Apple_Workout_Core_HKActivitySummary(v5, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
  }

  else
  {
    outlined destroy of Apple_Workout_Core_HKActivitySummary?(v9 + v3, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
    outlined init with take of Apple_Workout_Core_HKActivitySummary(v5, v9 + v3, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Apple_Workout_Core_ActivitySummaryMetricsPublisher.hasActivitySummary.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v0 + *(v5 + 24), v4, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  v6 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v4, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  return v7;
}

Swift::Void __swiftcall Apple_Workout_Core_ActivitySummaryMetricsPublisher.clearActivitySummary()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0) + 24);
  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v0 + v1, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Workout_Core_ActivitySummaryMetricsPublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_ActivitySummaryMetricsPublisher.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_HKActivitySummary.moveMode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20));
  result = swift_beginAccess();
  v5 = *(v3 + 24);
  *a1 = *(v3 + 16);
  *(a1 + 8) = v5;
  return result;
}

uint64_t key path setter for Apple_Workout_Core_HKActivitySummary.moveMode : Apple_Workout_Core_HKActivitySummary(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20);
  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v8);
    *(a2 + v5) = v8;
  }

  result = swift_beginAccess();
  *(v8 + 16) = v3;
  *(v8 + 24) = v4;
  return result;
}

uint64_t Apple_Workout_Core_HKActivitySummary.moveMode.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20);
  v6 = *(v1 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v8);
    *(v2 + v5) = v8;
  }

  result = swift_beginAccess();
  *(v8 + 16) = v3;
  *(v8 + 24) = v4;
  return result;
}

void (*Apple_Workout_Core_HKActivitySummary.moveMode.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  *(v4 + 72) = *(v6 + 16);
  *(v4 + 80) = v7;
  return Apple_Workout_Core_HKActivitySummary.moveMode.modify;
}

void Apple_Workout_Core_HKActivitySummary.moveMode.modify(uint64_t *a1)
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
    v11 = type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v8 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v8);
    *(v10 + v9) = v8;
  }

  swift_beginAccess();
  *(v8 + 16) = v2;
  *(v8 + 24) = v5;

  free(v1);
}

void (*Apple_Workout_Core_HKActivitySummary.activeEnergyBurned.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v17 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurned;
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

  return Apple_Workout_Core_HKActivitySummary.activeEnergyBurned.modify;
}

void (*Apple_Workout_Core_HKActivitySummary.appleMoveTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v17 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTime;
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

  return Apple_Workout_Core_HKActivitySummary.appleMoveTime.modify;
}

BOOL Apple_Workout_Core_HKActivitySummary.hasActiveEnergyBurned.getter(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20));
  v8 = *a1;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_HKActivitySummary?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v10 = (*(*(v9 - 8) + 48))(v6, 1, v9) != 1;
  outlined destroy of Apple_Workout_Core_HKActivitySummary?(v6, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  return v10;
}

uint64_t Apple_Workout_Core_HKActivitySummary.clearActiveEnergyBurned()(uint64_t *a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_HKActivitySummary._StorageClass.init(copying:)(v11);
    *(v3 + v8) = v11;
  }

  v15 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  v16 = *a1;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_HKQuantity?(v7, v11 + v16);
  return swift_endAccess();
}

void (*Apple_Workout_Core_HKActivitySummary.appleExerciseTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v17 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleExerciseTime;
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

  return Apple_Workout_Core_HKActivitySummary.appleExerciseTime.modify;
}

void (*Apple_Workout_Core_HKActivitySummary.appleStandHours.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v17 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleStandHours;
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

  return Apple_Workout_Core_HKActivitySummary.appleStandHours.modify;
}

void (*Apple_Workout_Core_HKActivitySummary.activeEnergyBurnedGoal.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v17 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurnedGoal;
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

  return Apple_Workout_Core_HKActivitySummary.activeEnergyBurnedGoal.modify;
}

void (*Apple_Workout_Core_HKActivitySummary.appleMoveTimeGoal.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v17 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTimeGoal;
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

  return Apple_Workout_Core_HKActivitySummary.appleMoveTimeGoal.modify;
}

void (*Apple_Workout_Core_HKActivitySummary.exerciseTimeGoal.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v17 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__exerciseTimeGoal;
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

  return Apple_Workout_Core_HKActivitySummary.exerciseTimeGoal.modify;
}