Swift::Bool __swiftcall LiveWorkoutConfiguration.moveToNextStep()()
{
  v1 = *&v0[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration];
  type metadata accessor for IntervalWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    static Published.subscript.getter();

    if (v15 != 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v4 = v13;
      v10 = v13;
      v11 = v14;
      v16.block = &v10;
      IntervalWorkout.nextKeyPath(currentKeyPath:)(v16);

      v9 = v13;
      v5 = v14;
      v6 = v15;
      swift_getKeyPath();
      swift_getKeyPath();
      v10 = v9;
      v11 = v5;
      v12 = v6;
      v7 = v0;
      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v3 = v15 ^ 1;
      return v3 & 1;
    }
  }

  v3 = 0;
  return v3 & 1;
}

Swift::Bool __swiftcall LiveWorkoutConfiguration.isLastIntervalWorkoutKeyPath()()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for IntervalWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    static Published.subscript.getter();

    if (v7 != 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v4 = v6;
      v8.block = &v6;
      v3 = IntervalWorkout.isLastKeyPath(currentKeyPath:)(v8);

      return v3;
    }
  }

  return 0;
}

Swift::Bool __swiftcall LiveWorkoutConfiguration.isLastMultiSportLeg()()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for MultiSportWorkoutConfiguration();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v1;
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v6 >> 62)
    {
      v4 = __CocoaSet.count.getter();
    }

    else
    {
      v4 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (__OFSUB__(v4, 1))
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v2) = v6 == v4 - 1;
    }
  }

  return v2;
}

Swift::Void __swiftcall LiveWorkoutConfiguration.advanceMultisportLeg(suggestedConfiguration:)(HKWorkoutConfiguration_optional suggestedConfiguration)
{
  v2 = v1;
  isa = suggestedConfiguration.value.super.isa;
  v4 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_suggestedHKWorkoutConfiguration;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = isa;
  v6 = isa;

  swift_getKeyPath();
  swift_getKeyPath();
  v7 = static Published.subscript.modify();
  if (__OFADD__(*v8, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v8;
    v7(v9, 0);
  }
}

Swift::Void __swiftcall LiveWorkoutConfiguration.restoreMultisportLeg(_:)(Swift::Int a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.setter();
}

uint64_t @objc LiveWorkoutConfiguration.currentMultiSportLeg.setter(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return static Published.subscript.setter();
}

Swift::Void __swiftcall LiveWorkoutConfiguration.restoreFromWorkoutActivityMetadata(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = *&v2[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration];
  type metadata accessor for IntervalWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    if (*(a1._rawValue + 2))
    {
      v5 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000015, 0x800000020B45D360);
      if (v6)
      {
        outlined init with copy of Any(*(a1._rawValue + 7) + 32 * v5, &v11);
        if (swift_dynamicCast())
        {
          IntervalWorkoutKeyPath.init(serializedString:)(v10);
          if (v13 != 1)
          {
            v7 = v12;
            v9 = v11;
            swift_getKeyPath();
            swift_getKeyPath();
            v11 = v9;
            v12 = v7;
            v13 = 0;
            v8 = v2;
            static Published.subscript.setter();
          }
        }
      }
    }
  }
}

uint64_t LiveWorkoutConfiguration.supportsSegments.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17 - v3;
  v5 = LiveWorkoutConfiguration.currentActivityType.getter();
  v6 = [v5 supportsSegments];

  if (v6)
  {
    _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout, v4, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
    v7 = type metadata accessor for CatalogWorkout();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v4, 1, v7) == 1)
    {
      _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v4, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
      v9 = 1;
    }

    else
    {
      v10 = CatalogWorkout.mediaType.getter();
      v12 = v11;
      v14 = v13;
      (*(v8 + 8))(v4, v7);
      v19 = v10;
      v20 = v12;
      v21 = v14 & 1;
      v17 = xmmword_20B438AF0;
      v18 = 1;
      lazy protocol witness table accessor for type CatalogMediaType and conformance CatalogMediaType();
      lazy protocol witness table accessor for type CatalogMediaType and conformance CatalogMediaType();
      v15 = static PortableEnum<>.== infix(_:_:)();
      outlined consume of PortableEnum<CatalogMediaType>(v19, v20, v21);
      v9 = v15 ^ 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t LiveWorkoutConfiguration.devicesSupportHeartRate.getter()
{
  return LiveWorkoutConfiguration.devicesSupportHeartRate.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t LiveWorkoutConfiguration.devicesSupportHeartRate.setter()
{
  return LiveWorkoutConfiguration.devicesSupportHeartRate.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*LiveWorkoutConfiguration.devicesSupportHeartRate.modify(uint64_t *a1))()
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
  return LiveWorkoutConfiguration.devicesSupportHeartRate.modify;
}

uint64_t key path setter for LiveWorkoutConfiguration.$devicesSupportHeartRate : LiveWorkoutConfiguration(uint64_t a1, uint64_t *a2)
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

uint64_t LiveWorkoutConfiguration.$devicesSupportPedometer.setter(uint64_t a1, uint64_t *a2)
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

uint64_t (*LiveWorkoutConfiguration.$devicesSupportHeartRate.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__devicesSupportHeartRate;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return LiveWorkoutConfiguration.$devicesSupportHeartRate.modify;
}

uint64_t @objc LiveWorkoutConfiguration.devicesSupportHeartRate.getter(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  static Published.subscript.getter();

  return v4;
}

uint64_t @objc LiveWorkoutConfiguration.devicesSupportHeartRate.setter(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return static Published.subscript.setter();
}

uint64_t (*LiveWorkoutConfiguration.devicesSupportPedometer.modify(uint64_t *a1))()
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
  return LiveWorkoutConfiguration.devicesSupportPedometer.modify;
}

void LiveWorkoutConfiguration.currentIntervalWorkoutKeyPath.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path getter for LiveWorkoutConfiguration.$currentIntervalWorkoutKeyPath : LiveWorkoutConfiguration(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for LiveWorkoutConfiguration.$devicesSupportPedometer : LiveWorkoutConfiguration(uint64_t a1, uint64_t *a2)
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

uint64_t LiveWorkoutConfiguration.$currentIntervalWorkoutKeyPath.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t (*LiveWorkoutConfiguration.$devicesSupportPedometer.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__devicesSupportPedometer;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return LiveWorkoutConfiguration.$devicesSupportPedometer.modify;
}

void LiveWorkoutConfiguration.$currentIntervalWorkoutKeyPath.modify(uint64_t a1, char a2)
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

unint64_t LiveWorkoutConfiguration.logString.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v128 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v127 = &v121 - v6;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v132 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v132);
  v131 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v121 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v124 = &v121 - v19;
  v20 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  v129 = type metadata accessor for MultiSportWorkoutConfiguration();
  v21 = swift_dynamicCastClass();
  v133 = v0;
  v130 = v20;
  v126 = v12;
  v125 = v13;
  v123 = v16;
  if (v21)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v121 = v20;
    static Published.subscript.getter();

    v22 = v144;
    if (v144 >> 62)
    {
      goto LABEL_74;
    }

    for (i = *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
    {
      v122 = v11;
      if (!i)
      {
        break;
      }

      v24 = 0;
      v11 = 0;
      v135 = v22 & 0xFFFFFFFFFFFFFF8;
      v136 = v22 & 0xC000000000000001;
      v25 = 0xE000000000000000;
      v134 = v22;
      while (1)
      {
        if (v136)
        {
          v26 = MEMORY[0x20F2E7A20](v24, v22);
        }

        else
        {
          if (v24 >= *(v135 + 16))
          {
            goto LABEL_73;
          }

          v26 = *(v22 + 8 * v24 + 32);
        }

        v27 = v26;
        v28 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        v29 = HIBYTE(v25) & 0xF;
        if ((v25 & 0x2000000000000000) == 0)
        {
          v29 = v11 & 0xFFFFFFFFFFFFLL;
        }

        if (v29)
        {
          v30 = 8236;
        }

        else
        {
          v30 = 0;
        }

        if (v29)
        {
          v31 = 0xE200000000000000;
        }

        else
        {
          v31 = 0xE000000000000000;
        }

        v144 = v11;
        v145 = v25;

        v32 = i;
        MEMORY[0x20F2E6D80](v30, v31);

        v33 = v144;
        v34 = v145;
        v35 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
        swift_beginAccess();
        v36 = [*&v27[v35] localizedName];
        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v38;

        v144 = v33;
        v145 = v34;

        MEMORY[0x20F2E6D80](v37, v39);
        i = v32;
        v22 = v134;

        v11 = v144;
        v25 = v145;
        ++v24;
        if (v28 == i)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      ;
    }

    v11 = 0;
    v25 = 0xE000000000000000;
LABEL_23:

    v144 = 10272;
    v145 = 0xE200000000000000;
    MEMORY[0x20F2E6D80](v11, v25);

    MEMORY[0x20F2E6D80](41, 0xE100000000000000);

    v135 = v144;
    v136 = v145;
    v1 = v133;
    v11 = v122;
  }

  else
  {
    v135 = 0;
    v136 = 0xE000000000000000;
  }

  v144 = 0;
  v145 = 0xE000000000000000;
  _StringGuts.grow(_:)(266);
  v146 = v144;
  v147 = v145;
  MEMORY[0x20F2E6D80](0xD000000000000026, 0x800000020B45D380);
  v40 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
  swift_beginAccess();
  v41 = NLWorkoutStartSourceDescription(*(v1 + v40));
  v134 = v40;
  if (v41)
  {
    v42 = v41;
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  v142 = v43;
  v143 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v46 = Optional.description.getter();
  v48 = v47;

  MEMORY[0x20F2E6D80](v46, v48);

  MEMORY[0x20F2E6D80](0x72746C5573692820, 0xEF203A65646F4D61);
  v49 = *(v1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_domainAccessor);
  v50 = specialized WorkoutConfiguration.shouldEnableUltraMode(domainAccessor:)();
  v51 = (v50 & 1) == 0;
  if (v50)
  {
    v52 = 1702195828;
  }

  else
  {
    v52 = 0x65736C6166;
  }

  v53 = 0xE400000000000000;
  if (v51)
  {
    v54 = 0xE500000000000000;
  }

  else
  {
    v54 = 0xE400000000000000;
  }

  MEMORY[0x20F2E6D80](v52, v54);

  MEMORY[0x20F2E6D80](0xD000000000000012, 0x800000020B45D3B0);
  v55 = [objc_opt_self() processInfo];
  v56 = [v55 isLowPowerModeEnabled];

  v57 = 1702195828;
  if ((v56 & 1) == 0)
  {
    v58 = [v49 isPowerSavingModeEnabled];
    v59 = v58 == 0;
    v57 = v58 ? 1702195828 : 0x65736C6166;
    if (v59)
    {
      v53 = 0xE500000000000000;
    }
  }

  MEMORY[0x20F2E6D80](v57, v53);

  MEMORY[0x20F2E6D80](2108457, 0xE300000000000000);
  v60 = LiveWorkoutConfiguration.supportsMirroringLogString.getter();
  MEMORY[0x20F2E6D80](v60);

  MEMORY[0x20F2E6D80](0xD000000000000015, 0x800000020B45D3D0);
  v61 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityBeginDate;
  swift_beginAccess();
  v62 = v124;
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v1 + v61, v124, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v63 = v125;
  v64 = v126;
  if ((*(v125 + 48))(v62, 1, v126))
  {
    _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v62, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v65 = 0;
    v66 = 0;
  }

  else
  {
    v67 = v123;
    (*(v63 + 16))(v123, v62, v64);
    _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v62, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (one-time initialization token for logDateFormatter != -1)
    {
      swift_once();
    }

    v68 = static WOLog.logDateFormatter;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v70 = [v68 stringFromDate_];

    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v71;

    (*(v63 + 8))(v67, v64);
  }

  v140 = v65;
  v141 = v66;
  v72 = Optional.description.getter();
  v74 = v73;

  MEMORY[0x20F2E6D80](v72, v74);

  MEMORY[0x20F2E6D80](0xD000000000000014, 0x800000020B45D3F0);
  v75 = *(v1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityMoveMode);
  v76 = HKActivityMoveModeToString();
  if (v76)
  {
    v77 = v76;
    v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v80 = v79;
  }

  else
  {
    v78 = 0;
    v80 = 0;
  }

  v140 = v78;
  v141 = v80;
  v81 = Optional.description.getter();
  v83 = v82;

  MEMORY[0x20F2E6D80](v81, v83);

  MEMORY[0x20F2E6D80](0x4B6D79477369202CLL, 0xEC000000203A7469);
  v84 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSessionUUID;
  swift_beginAccess();
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v1 + v84, v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v85 = type metadata accessor for UUID();
  v86 = (*(*(v85 - 8) + 48))(v11, 1, v85);
  _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v87 = 0x65736C6166;
  if (v86 == 1)
  {
    v88 = 0x65736C6166;
  }

  else
  {
    v88 = 1702195828;
  }

  v89 = 0xE500000000000000;
  if (v86 == 1)
  {
    v90 = 0xE500000000000000;
  }

  else
  {
    v90 = 0xE400000000000000;
  }

  MEMORY[0x20F2E6D80](v88, v90);

  MEMORY[0x20F2E6D80](0xD000000000000014, 0x800000020B45D410);
  v91 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout;
  v92 = v127;
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout, v127, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  v93 = type metadata accessor for CatalogWorkout();
  v94 = *(v93 - 8);
  v95 = *(v94 + 48);
  if (v95(v92, 1, v93) != 1)
  {
    v87 = 1702195828;
    v89 = 0xE400000000000000;
  }

  _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v92, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  MEMORY[0x20F2E6D80](v87, v89);

  MEMORY[0x20F2E6D80](0x54616964656D2820, 0xED0000203A657079);
  v96 = v128;
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v1 + v91, v128, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  if (v95(v96, 1, v93) == 1)
  {
    _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v96, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
    v97 = 0;
    v98 = 0;
    v99 = -1;
  }

  else
  {
    v97 = CatalogWorkout.mediaType.getter();
    v98 = v100;
    v102 = v101;
    (*(v94 + 8))(v96, v93);
    v99 = v102 & 1;
  }

  v137 = v97;
  v138 = v98;
  v139 = v99;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore12PortableEnumOyAA16CatalogMediaTypeOGSgMd, &_s11SeymourCore12PortableEnumOyAA16CatalogMediaTypeOGSgMR);
  v103 = Optional.description.getter();
  v105 = v104;
  outlined consume of PortableEnum<CatalogMediaType>?(v97, v98, v99);
  MEMORY[0x20F2E6D80](v103, v105);

  MEMORY[0x20F2E6D80](0xD000000000000014, 0x800000020B45D430);
  v106 = v133;
  v107 = *(v133 + v134) - 19;
  if (v107 >= 2)
  {
    v108 = 0x65736C6166;
  }

  else
  {
    v108 = 1702195828;
  }

  if (v107 >= 2)
  {
    v109 = 0xE500000000000000;
  }

  else
  {
    v109 = 0xE400000000000000;
  }

  MEMORY[0x20F2E6D80](v108, v109);

  MEMORY[0x20F2E6D80](0xD000000000000010, 0x800000020B45D450);
  v110 = swift_dynamicCastClass();
  v111 = v110 == 0;
  if (v110)
  {
    v112 = 1702195828;
  }

  else
  {
    v112 = 0x65736C6166;
  }

  if (v111)
  {
    v113 = 0xE500000000000000;
  }

  else
  {
    v113 = 0xE400000000000000;
  }

  MEMORY[0x20F2E6D80](v112, v113);

  MEMORY[0x20F2E6D80](v135, v136);

  MEMORY[0x20F2E6D80](0xD000000000000019, 0x800000020B45D470);
  v114 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_predictionSessionUUID;
  swift_beginAccess();
  v115 = v131;
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v106 + v114, v131, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v116 = Optional.description.getter();
  v118 = v117;
  _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v115, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x20F2E6D80](v116, v118);

  MEMORY[0x20F2E6D80](0xD000000000000011, 0x800000020B45D490);
  v119 = WorkoutConfiguration.logString.getter();
  MEMORY[0x20F2E6D80](v119);

  return v146;
}

id LiveWorkoutConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LiveWorkoutConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiveWorkoutConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance LiveWorkoutConfiguration@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LiveWorkoutConfiguration();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t key path getter for MultisportTransitions.automaticallySwitchLegs : MultisportTransitions@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for MultisportTransitions.automaticallySwitchLegs : MultisportTransitions(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

unint64_t lazy protocol witness table accessor for type FitnessIntelligenceFeatures and conformance FitnessIntelligenceFeatures()
{
  result = lazy protocol witness table cache variable for type FitnessIntelligenceFeatures and conformance FitnessIntelligenceFeatures;
  if (!lazy protocol witness table cache variable for type FitnessIntelligenceFeatures and conformance FitnessIntelligenceFeatures)
  {
    type metadata accessor for FitnessIntelligenceFeatures();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FitnessIntelligenceFeatures and conformance FitnessIntelligenceFeatures);
  }

  return result;
}

uint64_t type metadata accessor for LiveWorkoutConfiguration()
{
  result = type metadata singleton initialization cache for LiveWorkoutConfiguration;
  if (!type metadata singleton initialization cache for LiveWorkoutConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id specialized LiveWorkoutConfiguration.supportsMetricType(_:domainAccessor:)(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  if (specialized WorkoutConfiguration.shouldEnableUltraMode(domainAccessor:)())
  {
    if (a1 >= 0x20)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      v4 = 0x3FF67EFu >> a1;
    }
  }

  else
  {
    v5 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
    swift_beginAccess();
    v6 = 0x3FC1FFFFFuLL >> a1;
    if (a1 >= 0x25)
    {
      LOBYTE(v6) = 1;
    }

    if (*(v3 + v5) == 1)
    {
      LOBYTE(v4) = v6;
    }

    else
    {
      LOBYTE(v4) = 1;
    }
  }

  if (*(v1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_hostPlatform))
  {
    return (v4 & 1);
  }

  if (a1 - 37 < 4 || a1 == 5)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v7 = v21;
  }

  else
  {
    v7 = 1;
  }

  v8 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  if (a1 > 0x30 || ((1 << a1) & 0x1061800C44112) == 0)
  {
LABEL_26:
    LOBYTE(v4) = v4 & v7;
    return (v4 & 1);
  }

  v9 = *(v3 + v8);
  if (![v9 isIndoor])
  {
LABEL_23:

    goto LABEL_26;
  }

  [v9 effectiveTypeIdentifier];
  result = _HKWorkoutDistanceTypeForActivityType();
  if (result)
  {
    v11 = result;
    v12 = [result identifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = *MEMORY[0x277CCCB40];
    if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v17)
    {
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v7 &= v20;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined consume of PortableEnum<CatalogMediaType>?(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of PortableEnum<CatalogMediaType>(result, a2, a3 & 1);
  }

  return result;
}

uint64_t keypath_get_83Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  swift_beginAccess();
  return _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v8 + v9, a5, a3, a4);
}

uint64_t keypath_get_79Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_get_81Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_82Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t keypath_set_80Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

void type metadata completion function for LiveWorkoutConfiguration()
{
  type metadata accessor for CatalogWorkout?(319, &lazy cache variable for type metadata for CatalogWorkout?, MEMORY[0x277D50820]);
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    type metadata accessor for CatalogWorkout?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      type metadata accessor for CatalogWorkout?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x277CC95F0]);
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        type metadata accessor for Published<IntervalWorkoutKeyPath?>();
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          type metadata accessor for Published<Int>(319, &lazy cache variable for type metadata for Published<Int>);
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            type metadata accessor for Published<Int>(319, &lazy cache variable for type metadata for Published<Bool>);
            if (v11 <= 0x3F)
            {
              v17 = *(v10 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for CatalogWorkout?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for Published<IntervalWorkoutKeyPath?>()
{
  if (!lazy cache variable for type metadata for Published<IntervalWorkoutKeyPath?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11WorkoutCore08IntervalA7KeyPathVSgMd, &_s11WorkoutCore08IntervalA7KeyPathVSgMR);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<IntervalWorkoutKeyPath?>);
    }
  }
}

void type metadata accessor for Published<Int>(uint64_t a1, unint64_t *a2)
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

void specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(uint64_t a1, uint64_t a2)
{
  specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(a1, a2, &block_descriptor_24_2, &OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_invalidationTimer, 300.0);
}

{
  specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(a1, a2, &block_descriptor_18_0, &OBJC_IVAR___NLVerticalOscillationAccumulator_invalidationTimer, 15.0);
}

{
  specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(a1, a2, &block_descriptor_15_2, &OBJC_IVAR___NLStrideLengthAccumulator_invalidationTimer, 15.0);
}

{
  specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(a1, a2, &block_descriptor_12_1, &OBJC_IVAR___NLSessionActivityElevationAccumulator_invalidationTimer, 15.0);
}

{
  specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(a1, a2, &block_descriptor_9_2, &OBJC_IVAR___NLSessionActivityPowerAccumulator_invalidationTimer, 15.0);
}

{
  specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(a1, a2, &block_descriptor_31, &OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_invalidationTimer, 15.0);
}

void specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, double a5)
{
  v9 = v5;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v16 = static OS_dispatch_queue.main.getter();
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v17 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if (v17)
  {
    aBlock[4] = a1;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
    aBlock[3] = a3;
    v18 = _Block_copy(aBlock);
    v19 = objc_opt_self();

    v20 = [v19 timerWithTimeInterval:0 repeats:v18 block:a5];
    _Block_release(v18);

    v21 = *a4;
    swift_beginAccess();
    [*(v9 + v21) invalidate];
    v22 = *(v9 + v21);
    *(v9 + v21) = v20;

    v23 = objc_opt_self();
    v24 = v20;
    v25 = [v23 mainRunLoop];
    [v25 addTimer:v24 forMode:*MEMORY[0x277CBE640]];
  }

  else
  {
    __break(1u);
  }
}

uint64_t GroundContactTimeAccumulator.currentGroundContactTime.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___NLGroundContactTimeAccumulator_currentGroundContactTime;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t GroundContactTimeAccumulator.currentGroundContactTime.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t GroundContactTimeAccumulator.averageGroundContactTime.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___NLGroundContactTimeAccumulator_averageGroundContactTime;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

void key path setter for GroundContactTimeAccumulator.invalidationTimer : GroundContactTimeAccumulator(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLGroundContactTimeAccumulator_invalidationTimer;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *GroundContactTimeAccumulator.invalidationTimer.getter()
{
  v1 = OBJC_IVAR___NLGroundContactTimeAccumulator_invalidationTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void GroundContactTimeAccumulator.invalidationTimer.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___NLGroundContactTimeAccumulator_invalidationTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall GroundContactTimeAccumulator.update(statistics:)(HKStatistics statistics)
{
  v2 = v1;
  v4 = [(objc_class *)statistics.super.isa mostRecentQuantity];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() secondUnit];
    [v5 doubleValueForUnit_];
    v8 = v7;

    v9 = &v2[OBJC_IVAR___NLGroundContactTimeAccumulator_currentGroundContactTime];
    swift_beginAccess();
    *v9 = v8;
    v9[8] = 0;
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static WOLog.app);
    v11 = v2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v37 = v15;
      *v14 = 136315138;
      v16 = v9[8];
      v39[1] = *v9;
      v40 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
      v17 = Optional.description.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v37);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_20AEA4000, v12, v13, "Current GroundContactTime quantity received: %s seconds", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x20F2E9420](v15, -1, -1);
      MEMORY[0x20F2E9420](v14, -1, -1);
    }
  }

  v20 = [(objc_class *)statistics.super.isa averageQuantity];
  if (v20)
  {
    v21 = v20;
    v22 = [objc_opt_self() secondUnit];
    [v21 doubleValueForUnit_];
    v24 = v23;

    v25 = &v2[OBJC_IVAR___NLGroundContactTimeAccumulator_averageGroundContactTime];
    swift_beginAccess();
    *v25 = v24;
    v25[8] = 0;
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static WOLog.app);
    v27 = v2;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39[0] = v31;
      *v30 = 136315138;
      v32 = v25[8];
      v37 = *v25;
      v38 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
      v33 = Optional.description.getter();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v39);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_20AEA4000, v28, v29, "Average GroundContactTime quantity received: %s seconds", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x20F2E9420](v31, -1, -1);
      MEMORY[0x20F2E9420](v30, -1, -1);
    }
  }

  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();

  specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(partial apply for closure #1 in GroundContactTimeAccumulator.update(statistics:), v36, &block_descriptor_21, &OBJC_IVAR___NLGroundContactTimeAccumulator_invalidationTimer, 15.0);

  [v2 update];
}

void closure #1 in GroundContactTimeAccumulator.update(statistics:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong + OBJC_IVAR___NLGroundContactTimeAccumulator_currentGroundContactTime;
    v2 = Strong;
    swift_beginAccess();
    *v1 = 0;
    *(v1 + 8) = 1;
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    [v3 update];
  }
}

id GroundContactTimeAccumulator.__allocating_init(builder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBuilder_];

  return v3;
}

id GroundContactTimeAccumulator.init(builder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR___NLGroundContactTimeAccumulator_currentGroundContactTime];
  *v3 = 0;
  v3[8] = 1;
  v4 = &v1[OBJC_IVAR___NLGroundContactTimeAccumulator_averageGroundContactTime];
  *v4 = 0;
  v4[8] = 1;
  *&v1[OBJC_IVAR___NLGroundContactTimeAccumulator_invalidationTimer] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for GroundContactTimeAccumulator();
  v5 = objc_msgSendSuper2(&v7, sel_initWithBuilder_, a1);

  return v5;
}

id GroundContactTimeAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroundContactTimeAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for GroundContactTimeProvider.currentGroundContactTime.getter in conformance GroundContactTimeAccumulator(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (*v3 + *a3);
  swift_beginAccess();
  result = *v4;
  v6 = *(v4 + 8);
  return result;
}

void *protocol witness for InvalidationTimerProtocol.invalidationTimer.getter in conformance GroundContactTimeAccumulator()
{
  v1 = OBJC_IVAR___NLGroundContactTimeAccumulator_invalidationTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void protocol witness for InvalidationTimerProtocol.invalidationTimer.setter in conformance GroundContactTimeAccumulator(uint64_t a1)
{
  v3 = OBJC_IVAR___NLGroundContactTimeAccumulator_invalidationTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t keypath_getTm_0@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1 + *a2;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a3 = *v4;
  *(a3 + 8) = v6;
  return result;
}

uint64_t keypath_setTm_1(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a2 + *a5;
  result = swift_beginAccess();
  *v7 = v5;
  *(v7 + 8) = v6;
  return result;
}

uint64_t MultiSportWorkoutTracker.dataProvider(_:didUpdate:)(void *a1, unint64_t a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 <= 0x36)
  {
    if (((1 << a2) & 0x7FFFFCFFFFFEF4) != 0)
    {
      return result;
    }

    if (a2 == 3)
    {
      v11 = result;
      v12 = *(v2 + OBJC_IVAR___WOMultiSportWorkoutTracker_elapsedTimeAccumulator);

      [objc_msgSend(a1 elapsedTimeProvider)];
      goto LABEL_12;
    }

    if (a2 == 8)
    {
      v11 = result;
      v14 = *(v2 + OBJC_IVAR___WOMultiSportWorkoutTracker_averagePaceAccumulator);

      v15 = [a1 paceProvider];
      if (!v15)
      {
        v17 = 0.0;
        goto LABEL_13;
      }

      [v15 averagePaceInMetersPerSecond];
LABEL_12:
      v17 = v13;
      swift_unknownObjectRelease();
LABEL_13:
      Date.init()();
      Date.timeIntervalSinceReferenceDate.getter();
      WindowedAccumulator.add(_:position:)(v17, v18);

      return (*(v6 + 8))(v10, v11);
    }
  }

  if (a2)
  {
    if (a2 != 1)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v11 = result;
    v16 = *(v2 + OBJC_IVAR___WOMultiSportWorkoutTracker_distanceAccumulator);

    [objc_msgSend(a1 distanceProvider)];
    goto LABEL_12;
  }

  return result;
}

Swift::Bool __swiftcall HKWorkoutConfiguration.equivalentForMultisport(_:)(HKWorkoutConfiguration a1)
{
  v3 = [v1 activityType];
  result = 0;
  if (v3 == [(objc_class *)a1.super.isa activityType])
  {
    v4 = [v1 locationType];
    if (v4 == [(objc_class *)a1.super.isa locationType])
    {
      if ([v1 activityType] != 46)
      {
        return 1;
      }

      v5 = [v1 swimmingLocationType];
      if (v5 == [(objc_class *)a1.super.isa swimmingLocationType])
      {
        return 1;
      }
    }
  }

  return result;
}

void specialized MultiSportWorkoutTracker.workout(_:didMoveToState:)(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 3)
  {
    if (a1 < 3)
    {
      return;
    }

    if (a1 == 3)
    {
      v9 = OBJC_IVAR___WOMultiSportWorkoutTracker_endWorkoutTimer;
      if (*(v1 + OBJC_IVAR___WOMultiSportWorkoutTracker_endWorkoutTimer))
      {
        v10 = v1;
        if (one-time initialization token for multisport != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        __swift_project_value_buffer(v11, static WOLog.multisport);
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_20AEA4000, v12, v13, "Workout has paused, cancel our end workout timer", v14, 2u);
          MEMORY[0x20F2E9420](v14, -1, -1);
        }

        [*(v10 + v9) invalidate];
        v15 = *(v10 + v9);
        *(v10 + v9) = 0;

        *(v10 + OBJC_IVAR___WOMultiSportWorkoutTracker_wasTimingToNotifyWhenPaused) = 1;
      }

      return;
    }

LABEL_20:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if ((a1 - 5) < 2)
  {
    v16 = OBJC_IVAR___WOMultiSportWorkoutTracker_endWorkoutTimer;
    [*(v1 + OBJC_IVAR___WOMultiSportWorkoutTracker_endWorkoutTimer) invalidate];
    v17 = *(v1 + v16);
    *(v1 + v16) = 0;

    *(v1 + OBJC_IVAR___WOMultiSportWorkoutTracker_wasTimingToNotifyWhenPaused) = 0;
    return;
  }

  if (a1 != 4)
  {
    goto LABEL_20;
  }

  v18 = OBJC_IVAR___WOMultiSportWorkoutTracker_wasTimingToNotifyWhenPaused;
  if (*(v1 + OBJC_IVAR___WOMultiSportWorkoutTracker_wasTimingToNotifyWhenPaused) == 1)
  {
    v19 = v6;
    v20 = v1;
    if (one-time initialization token for multisport != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static WOLog.multisport);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_20AEA4000, v22, v23, "Workout has resumed, we were tracking an end, resume workout timer", v24, 2u);
      MEMORY[0x20F2E9420](v24, -1, -1);
    }

    *(v20 + v18) = 0;
    Date.init()();
    MultiSportWorkoutTracker.startEndWorkoutTimer(fromDate:)();
    (*(v4 + 8))(v8, v19);
  }
}

uint64_t MirroredHostAlertStackRequest.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MirroredHostAlertStackRequest.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MirroredHostAlertStackRequest.alertTitle.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MirroredHostAlertStackRequest.alertTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MirroredHostAlertStackRequest.alertMessage.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t MirroredHostAlertStackRequest.alertMessage.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MirroredHostAlertStackRequest.continueOptionTitles.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

void __swiftcall MirroredHostAlertStackRequest.init(identifier:alertTitle:alertMessage:continueOptionTitles:)(WorkoutCore::MirroredHostAlertStackRequest *__return_ptr retstr, Swift::String identifier, Swift::String alertTitle, Swift::String alertMessage, Swift::OpaquePointer continueOptionTitles)
{
  retstr->identifier = identifier;
  retstr->alertTitle = alertTitle;
  retstr->alertMessage = alertMessage;
  retstr->continueOptionTitles = continueOptionTitles;
}

uint64_t MirroredHostAlertStackRequest.init(protobuf:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  *a2 = v5;
  a2[1] = v4;
  v6 = a1[3];
  a2[2] = a1[2];
  a2[3] = v6;
  v7 = a1[5];
  a2[4] = a1[4];
  a2[5] = v7;
  v8 = a1[6];

  result = outlined destroy of Apple_Workout_Core_MirroredHostAlertStackRequest(a1);
  a2[6] = v8;
  return result;
}

uint64_t outlined destroy of Apple_Workout_Core_MirroredHostAlertStackRequest(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MirroredHostAlertStackRequest.protobuf.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostAlertStackRequest and conformance Apple_Workout_Core_MirroredHostAlertStackRequest();
  return static Message.with(_:)();
}

uint64_t closure #1 in MirroredHostAlertStackRequest.protobuf.getter(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = a1[1];

  *a1 = v5;
  a1[1] = v4;
  v8 = a2[2];
  v7 = a2[3];
  v9 = a1[3];

  a1[2] = v8;
  a1[3] = v7;
  v11 = a2[4];
  v10 = a2[5];
  v12 = a1[5];

  a1[4] = v11;
  a1[5] = v10;
  v13 = a2[6];
  v14 = a1[6];

  a1[6] = v13;
  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostAlertStackRequest and conformance Apple_Workout_Core_MirroredHostAlertStackRequest()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostAlertStackRequest and conformance Apple_Workout_Core_MirroredHostAlertStackRequest;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostAlertStackRequest and conformance Apple_Workout_Core_MirroredHostAlertStackRequest)
  {
    type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostAlertStackRequest and conformance Apple_Workout_Core_MirroredHostAlertStackRequest);
  }

  return result;
}

uint64_t MirroredHostAlertStackRequest.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  _StringGuts.grow(_:)(74);
  MEMORY[0x20F2E6D80](0x696669746E656469, 0xEC000000203A7265);
  MEMORY[0x20F2E6D80](v1, v2);
  MEMORY[0x20F2E6D80](0x547472656C61202CLL, 0xEE00203A656C7469);
  MEMORY[0x20F2E6D80](v3, v4);
  MEMORY[0x20F2E6D80](0xD000000000000018, 0x800000020B45E430);
  v8 = MEMORY[0x20F2E6F70](v7, MEMORY[0x277D837D0]);
  MEMORY[0x20F2E6D80](v8);

  MEMORY[0x20F2E6D80](0xD000000000000010, 0x800000020B45E450);
  MEMORY[0x20F2E6D80](v5, v6);
  return 0;
}

uint64_t protocol witness for MirroredMessageProtocol.init(protobuf:) in conformance MirroredHostAlertStackRequest@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  *a2 = v5;
  a2[1] = v4;
  v6 = a1[3];
  a2[2] = a1[2];
  a2[3] = v6;
  v7 = a1[5];
  a2[4] = a1[4];
  a2[5] = v7;
  v8 = a1[6];

  result = outlined destroy of Apple_Workout_Core_MirroredHostAlertStackRequest(a1);
  a2[6] = v8;
  return result;
}

uint64_t protocol witness for MirroredMessageProtocol.protobuf.getter in conformance MirroredHostAlertStackRequest()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostAlertStackRequest and conformance Apple_Workout_Core_MirroredHostAlertStackRequest();
  return static Message.with(_:)();
}

uint64_t MirroredHostAlertStackRequest.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  result = MEMORY[0x20F2E7FF0](*(v7 + 16));
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = (v7 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;

      String.hash(into:)();

      v10 += 2;
      --v9;
    }

    while (v9);
  }

  return result;
}

Swift::Int MirroredHostAlertStackRequest.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  v5 = *(v0 + 40);
  Hasher.init(_seed:)();
  MirroredHostAlertStackRequest.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredHostAlertStackRequest()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  v5 = *(v0 + 40);
  Hasher.init(_seed:)();
  MirroredHostAlertStackRequest.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredHostAlertStackRequest()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  v5 = *(v0 + 40);
  Hasher.init(_seed:)();
  MirroredHostAlertStackRequest.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static MirroredHostAlertStackRequest.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v7 || v4 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v3 != v9 || v6 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v5, v11);
}

unint64_t instantiation function for generic protocol witness table for MirroredHostAlertStackRequest(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MirroredHostAlertStackRequest and conformance MirroredHostAlertStackRequest();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MirroredHostAlertStackRequest and conformance MirroredHostAlertStackRequest()
{
  result = lazy protocol witness table cache variable for type MirroredHostAlertStackRequest and conformance MirroredHostAlertStackRequest;
  if (!lazy protocol witness table cache variable for type MirroredHostAlertStackRequest and conformance MirroredHostAlertStackRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostAlertStackRequest and conformance MirroredHostAlertStackRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredHostAlertStackRequest and conformance MirroredHostAlertStackRequest;
  if (!lazy protocol witness table cache variable for type MirroredHostAlertStackRequest and conformance MirroredHostAlertStackRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostAlertStackRequest and conformance MirroredHostAlertStackRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredHostAlertStackRequest and conformance MirroredHostAlertStackRequest;
  if (!lazy protocol witness table cache variable for type MirroredHostAlertStackRequest and conformance MirroredHostAlertStackRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostAlertStackRequest and conformance MirroredHostAlertStackRequest);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MirroredHostAlertStackRequest(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for MirroredHostAlertStackRequest(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySo21HKWorkoutActivityTypeVSaySdGG_SSs5NeverOTg50132_s11WorkoutCore010MultiSportA7TrackerC41stringArrayForPreviousMultisportDistances33_0E6D109B9F68067E5BEC40CEBADAD9E2LLSaySSGvgSSSo21deF26V3key_SaySdG5valuet_tXEfU_Tf1cn_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v32 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v28 = v32;
    v4 = a1 + 64;
    v5 = -1 << *(a1 + 32);
    result = _HashTable.startBucket.getter();
    v6 = result;
    v7 = 0;
    v8 = *(a1 + 36);
    v25 = v2;
    v26 = v8;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (v8 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v27 = v7;
      v11 = *(*(a1 + 56) + 8 * v6);
      v29 = *(*(a1 + 48) + 8 * v6);

      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v12;
      MEMORY[0x20F2E6D80](8250, 0xE200000000000000);
      v13 = MEMORY[0x20F2E6F70](v11, MEMORY[0x277D839F8]);
      MEMORY[0x20F2E6D80](v13);

      v14 = v28;
      v16 = *(v28 + 16);
      v15 = *(v28 + 24);
      if (v16 >= v15 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v14 = v28;
      }

      *(v14 + 16) = v16 + 1;
      v17 = v14 + 16 * v16;
      *(v17 + 32) = v30;
      *(v17 + 40) = v31;
      v9 = 1 << *(a1 + 32);
      if (v6 >= v9)
      {
        goto LABEL_25;
      }

      v4 = a1 + 64;
      v18 = *(a1 + 64 + 8 * v10);
      if ((v18 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      v28 = v14;
      v8 = v26;
      if (v26 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v19 = v18 & (-2 << (v6 & 0x3F));
      if (v19)
      {
        v9 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v10 << 6;
        v21 = v10 + 1;
        v22 = (a1 + 72 + 8 * v10);
        while (v21 < (v9 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = outlined consume of [HKWorkoutActivityType : [Double]].Index._Variant(v6, v26, 0);
            v9 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = outlined consume of [HKWorkoutActivityType : [Double]].Index._Variant(v6, v26, 0);
      }

LABEL_4:
      v7 = v27 + 1;
      v6 = v9;
      if (v27 + 1 == v25)
      {
        return v28;
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
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t (*MultiSportWorkoutTracker.alertDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR___WOMultiSportWorkoutTracker_alertDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return MultiSportWorkoutTracker.alertDelegate.modify;
}

id @objc MultiSportWorkoutTracker.alertDelegate.getter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t MultiSportWorkoutTracker.alertDelegate.getter(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t @objc MultiSportWorkoutTracker.alertDelegate.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t MultiSportWorkoutTracker.alertDelegate.setter(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*MultiSportWorkoutTracker.progressionRequestDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR___WOMultiSportWorkoutTracker_progressionRequestDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return MultiSportWorkoutTracker.progressionRequestDelegate.modify;
}

void MultiSportWorkoutTracker.alertDelegate.modify(uint64_t a1, char a2)
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

uint64_t MultiSportWorkoutTracker.multiSportTransitionState.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___WOMultiSportWorkoutTracker_multiSportTransitionState;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t MultiSportWorkoutTracker.multiSportTransitionState.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___WOMultiSportWorkoutTracker_multiSportTransitionState;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t MultiSportWorkoutTracker.firstActivityStarted.getter()
{
  v1 = OBJC_IVAR___WOMultiSportWorkoutTracker_firstActivityStarted;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MultiSportWorkoutTracker.firstActivityStarted.setter(char a1)
{
  v3 = OBJC_IVAR___WOMultiSportWorkoutTracker_firstActivityStarted;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

BOOL MultiSportWorkoutTracker.currentlyInTransition.getter()
{
  v1 = OBJC_IVAR___WOMultiSportWorkoutTracker_multiSportTransitionState;
  swift_beginAccess();
  return *(v0 + v1) != 0;
}

double MultiSportWorkoutTracker.lastMultisportLegTime.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportTimes);
  v2 = *(v1 + 16);
  if (v2)
  {
    return *(v1 + 8 * v2 + 24);
  }

  else
  {
    return 0.0;
  }
}

void MultiSportWorkoutTracker.lastMultisportLegDistance.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR___WOMultiSportWorkoutTracker_multiSportTransitionState;
  swift_beginAccess();
  if (*(v1 + v2) != 2)
  {
    v17 = LiveWorkoutConfiguration.currentActivityType.getter();
    v18 = [v17 identifier];

    v19 = OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportDistancesByActivity;
    swift_beginAccess();
    v20 = *(v1 + v19);
    if (*(v20 + 16) && (v21 = specialized __RawDictionaryStorage.find<A>(_:)(v18), (v22 & 1) != 0))
    {
      v23 = *(*(v20 + 56) + 8 * v21);

      v25 = *(v24 + 16);
      if (!v25)
      {
LABEL_15:

        return;
      }
    }

    else
    {
      v24 = MEMORY[0x277D84F90];
      v25 = *(MEMORY[0x277D84F90] + 16);
      if (!v25)
      {
        goto LABEL_15;
      }
    }

    v26 = *(v24 + 8 * v25 + 24);

    return;
  }

  v3 = *(*(v1 + OBJC_IVAR___WOMultiSportWorkoutTracker_configuration) + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for MultiSportWorkoutConfiguration();
  if (!swift_dynamicCastClass())
  {
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v27 & 0xC000000000000001) == 0)
  {
    if ((v27 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v27 < *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(9 * v27 + 0x20);
      goto LABEL_7;
    }

    __break(1u);
    return;
  }

  v5 = MEMORY[0x20F2E7A20]();
LABEL_7:
  v6 = v5;

  v7 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v8 = *&v6[v7];

  v9 = [v8 identifier];
  v10 = OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportDistancesByActivity;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (*(v11 + 16))
  {
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
    if (v13)
    {
      v14 = *(*(v11 + 56) + 8 * v12);
      v15 = *(v14 + 16);
      if (v15)
      {
        v16 = *(v14 + 8 * v15 + 24);
      }
    }
  }
}

double MultiSportWorkoutTracker.lastMultisportLegAveragePace.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportAveragePaces);
  v2 = *(v1 + 16);
  if (v2)
  {
    return *(v1 + 8 * v2 + 24);
  }

  else
  {
    return 0.0;
  }
}

uint64_t MultiSportWorkoutTracker.allHKConfigurations.getter()
{
  v1 = *(*(v0 + OBJC_IVAR___WOMultiSportWorkoutTracker_configuration) + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for MultiSportWorkoutConfiguration();
  if (!swift_dynamicCastClass())
  {
    if (one-time initialization token for multisport == -1)
    {
LABEL_20:
      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static WOLog.multisport);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_20AEA4000, v16, v17, "Tried to get workout configurations, but we aren't a MultiSport config.", v18, 2u);
        MEMORY[0x20F2E9420](v18, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }

LABEL_29:
    swift_once();
    goto LABEL_20;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.getter();

  if (v20 >> 62)
  {
    goto LABEL_25;
  }

  v3 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {
      v21 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v3 < 0)
      {
        break;
      }

      v4 = 0;
      v19 = v2;
      v2 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
      while (1)
      {
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if ((v20 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x20F2E7A20](v4);
        }

        else
        {
          if (v4 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v7 = *(v20 + 8 * v4 + 32);
        }

        v8 = v7;
        v9 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
        v10 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
        swift_beginAccess();
        [v9 setActivityType_];
        if ([*&v8[v10] isIndoor])
        {
          v11 = 2;
        }

        else
        {
          v11 = 3;
        }

        [v9 setLocationType_];
        if ([v9 activityType] == 46)
        {
          [v9 setSwimmingLocationType_];
          v12 = [*&v8[v10] lapLength];
          if (v12)
          {
            v13 = v12;
            [v9 setLapLength_];

            v8 = v13;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v5 = *(v21 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v4;
        if (v6 == v3)
        {

          return v21;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v3 = __CocoaSet.count.getter();
      if (!v3)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

LABEL_26:

  return MEMORY[0x277D84F90];
}

unint64_t MultiSportWorkoutTracker.autoTransitionMetadata.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v26[-v3];
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR___WOMultiSportWorkoutTracker_lastAutoTransitionStartDate;
  swift_beginAccess();
  _s10Foundation4DateVSgWOcTm_4(v0 + v10, v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    _s10Foundation4DateVSgWOhTm_7(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  (*(v6 + 32))(v9, v4, v5);
  v11 = *(v0 + OBJC_IVAR___WOMultiSportWorkoutTracker_lastAutoTransitionUUIDString + 8);
  if (!v11)
  {
    (*(v6 + 8))(v9, v5);
    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v12 = *(v0 + OBJC_IVAR___WOMultiSportWorkoutTracker_lastAutoTransitionUUIDString);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423940;
  *(inited + 32) = 0xD000000000000031;
  *(inited + 40) = 0x800000020B45E470;
  *(inited + 72) = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
  (*(v6 + 16))(boxed_opaque_existential_0, v9, v5);
  *(inited + 80) = 0xD000000000000032;
  *(inited + 88) = 0x800000020B45E4B0;
  v15 = MEMORY[0x277D837D0];
  *(inited + 96) = v12;
  *(inited + 104) = v11;
  *(inited + 120) = v15;
  *(inited + 128) = 0xD000000000000028;
  *(inited + 136) = 0x800000020B45E4F0;
  v16 = *(v0 + OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportTimes);
  v17 = *(v16 + 16);
  v18 = 0;
  v19 = 0;
  if (v17)
  {
    v19 = *(v16 + 8 * v17 + 24);
  }

  v20 = MEMORY[0x277D839F8];
  *(inited + 144) = v19;
  *(inited + 168) = v20;
  *(inited + 176) = 0xD00000000000002CLL;
  *(inited + 184) = 0x800000020B45E520;

  MultiSportWorkoutTracker.lastMultisportLegDistance.getter();
  *(inited + 192) = v21;
  *(inited + 216) = v20;
  *(inited + 224) = 0xD000000000000028;
  *(inited + 232) = 0x800000020B45E550;
  v22 = *(v0 + OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportAveragePaces);
  v23 = *(v22 + 16);
  if (v23)
  {
    v18 = *(v22 + 8 * v23 + 24);
  }

  *(inited + 264) = v20;
  *(inited + 240) = v18;
  v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  (*(v6 + 8))(v9, v5);
  return v24;
}

id MultiSportWorkoutTracker.init(configuration:formattingManager:)(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR___WOMultiSportWorkoutTracker_multiSportTransitionState] = 0;
  v2[OBJC_IVAR___WOMultiSportWorkoutTracker_firstActivityStarted] = 0;
  *&v2[OBJC_IVAR___WOMultiSportWorkoutTracker_endWorkoutTimer] = 0;
  *&v2[OBJC_IVAR___WOMultiSportWorkoutTracker_endWorkoutNotificationDelay] = 0x4066800000000000;
  v2[OBJC_IVAR___WOMultiSportWorkoutTracker_didNotifyOfEndSuggestion] = 0;
  v2[OBJC_IVAR___WOMultiSportWorkoutTracker_wasTimingToNotifyWhenPaused] = 0;
  v5 = OBJC_IVAR___WOMultiSportWorkoutTracker_lastAutoTransitionStartDate;
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 56))(&v2[v5], 1, 1, v6);
  v7 = &v2[OBJC_IVAR___WOMultiSportWorkoutTracker_lastAutoTransitionUUIDString];
  *v7 = 0;
  v7[1] = 0;
  v8 = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR___WOMultiSportWorkoutTracker__progressObservers] = MEMORY[0x277D84F90];
  v9 = OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportDistancesByActivity;
  *&v2[v9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21HKWorkoutActivityTypeV_SaySdGTt0g5Tf4g_n(v8);
  *&v2[OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportTimes] = v8;
  *&v2[OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportAveragePaces] = v8;
  v10 = OBJC_IVAR___WOMultiSportWorkoutTracker_elapsedTimeAccumulator;
  type metadata accessor for WindowedAccumulator();
  v11 = swift_allocObject();
  *(v11 + 48) = v8;
  *(v11 + 56) = 0;
  *(v11 + 16) = 0x4072C00000000000;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 40) = 1;
  *&v2[v10] = v11;
  v12 = OBJC_IVAR___WOMultiSportWorkoutTracker_distanceAccumulator;
  v13 = swift_allocObject();
  *(v13 + 48) = v8;
  *(v13 + 56) = 0;
  *(v13 + 16) = 0x4072C00000000000;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  *(v13 + 40) = 1;
  *&v2[v12] = v13;
  v14 = OBJC_IVAR___WOMultiSportWorkoutTracker_averagePaceAccumulator;
  v15 = swift_allocObject();
  *(v15 + 48) = v8;
  *(v15 + 56) = 0;
  *(v15 + 16) = 0x4072C00000000000;
  *(v15 + 24) = 0;
  *(v15 + 32) = 0;
  *(v15 + 40) = 1;
  *&v2[v14] = v15;
  *&v2[OBJC_IVAR___WOMultiSportWorkoutTracker_configuration] = a1;
  *&v2[OBJC_IVAR___WOMultiSportWorkoutTracker_formattingManager] = a2;
  v17.receiver = v2;
  v17.super_class = type metadata accessor for MultiSportWorkoutTracker();
  return objc_msgSendSuper2(&v17, sel_init);
}

id MultiSportWorkoutTracker.addObserver(_:)(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR___WOMultiSportWorkoutTracker__progressObservers;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v17 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
LABEL_20:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (v5 != v6)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v6, v4);
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v8 = *(v4 + 8 * v6 + 32);

      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    ++v6;
    if (Strong)
    {
      MEMORY[0x20F2E6F30](v11);
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v7 = v17;
      v6 = v9;
    }
  }

  v18 = v7;
  v13 = swift_unknownObjectRetain();
  MEMORY[0x20F2E6F30](v13);
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized WeakCollection.wrappedValue.setter(v18, &_s11WorkoutCore14WeakCollectionV0C6Object33_6D7B651E7B66F37A97BD77673902658BLLCyAA010MultiSportA23TrackerProgressObserver_p_GMd, &_s11WorkoutCore14WeakCollectionV0C6Object33_6D7B651E7B66F37A97BD77673902658BLLCyAA010MultiSportA23TrackerProgressObserver_p_GMR);
  swift_endAccess();
  return [a1 didEnterNewLeg:v2 date:0];
}

void MultiSportWorkoutTracker.enterTransition(suggestedConfiguration:date:)(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for multisport != -1)
  {
LABEL_41:
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static WOLog.multisport);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v37 = v10;
    *v9 = 136315138;
    if (a1)
    {
      v11 = 0x6974616D6F747561;
    }

    else
    {
      v11 = 0x6C61756E616DLL;
    }

    if (a1)
    {
      v12 = 0xE900000000000063;
    }

    else
    {
      v12 = 0xE600000000000000;
    }

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v37);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_20AEA4000, v7, v8, "Requesting entering into %s transition", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_20AEA4000, v30, v31, "Unable to enter transition - progression delegate is nil.", v32, 2u);
      MEMORY[0x20F2E9420](v32, -1, -1);
    }

    return;
  }

  v15 = Strong;
  if (!a1)
  {
    v33 = a2;
    isa = Date._bridgeToObjectiveC()().super.isa;
    [v15 startManualTransitionWithDate_];

LABEL_45:
    MultiSportWorkoutTracker.appendValues(upTo:)(v33);
    swift_unknownObjectRelease();
    return;
  }

  v16 = OBJC_IVAR___WOMultiSportWorkoutTracker_multiSportTransitionState;
  swift_beginAccess();
  *(v3 + v16) = 1;
  v17 = OBJC_IVAR___WOMultiSportWorkoutTracker__progressObservers;
  swift_beginAccess();
  v18 = *(v3 + v17);
  v36 = MEMORY[0x277D84F90];
  if (v18 >> 62)
  {
    v19 = __CocoaSet.count.getter();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = v6;

  v21 = 0;
  a1 = MEMORY[0x277D84F90];
  while (v19 != v21)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v21, v18);
      v3 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (v21 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v22 = *(v18 + 8 * v21 + 32);

      v3 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }
    }

    v23 = swift_unknownObjectWeakLoadStrong();

    ++v21;
    if (v23)
    {
      MEMORY[0x20F2E6F30](v24);
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v25 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      a1 = v36;
      v21 = v3;
    }
  }

  if (a1 >> 62)
  {
    v26 = __CocoaSet.count.getter();
    if (v26)
    {
      goto LABEL_28;
    }

LABEL_44:

    v33 = a2;
    goto LABEL_45;
  }

  v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
    goto LABEL_44;
  }

LABEL_28:
  if (v26 >= 1)
  {
    v27 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x20F2E7A20](v27, a1);
      }

      else
      {
        v28 = *(a1 + 8 * v27 + 32);
        swift_unknownObjectRetain();
      }

      ++v27;
      v29 = Date._bridgeToObjectiveC()().super.isa;
      [v28 enterAutomaticTransitionWithSuggestedConfig:v20 date:v29];
      swift_unknownObjectRelease();
    }

    while (v26 != v27);
    goto LABEL_44;
  }

  __break(1u);
}

uint64_t MultiSportWorkoutTracker.cancelTransition()()
{
  v1 = v0;
  v2 = OBJC_IVAR___WOMultiSportWorkoutTracker_multiSportTransitionState;
  swift_beginAccess();
  *(v1 + v2) = 0;
  MultiSportWorkoutTracker.dropLastValues()();
  v3 = OBJC_IVAR___WOMultiSportWorkoutTracker__progressObservers;
  swift_beginAccess();
  v30 = v3;
  v4 = *(v1 + v3);
  v31 = MEMORY[0x277D84F90];
  v5 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
LABEL_29:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (v6 != v7)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v7, v4);
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_27;
      }

      v9 = *(v4 + 8 * v7 + 32);

      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_26;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    ++v7;
    if (Strong)
    {
      MEMORY[0x20F2E6F30](v12);
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v8 = v31;
      v7 = v10;
    }
  }

  if (v8 >> 62)
  {
    v4 = __CocoaSet.count.getter();
    if (v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v4 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_17:
      v14 = 0;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x20F2E7A20](v14, v8);
          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v14 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v15 = *(v8 + 8 * v14 + 32);
          swift_unknownObjectRetain();
          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }
        }

        [v15 didCancelAutomaticTransition];
        swift_unknownObjectRelease();
        ++v14;
      }

      while (v16 != v4);
    }
  }

  v17 = *(v1 + v30);
  v32 = MEMORY[0x277D84F90];
  if (v17 >> 62)
  {
LABEL_55:
    v18 = __CocoaSet.count.getter();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  while (v18 != v19)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v19, v17);
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_54;
      }

      v21 = *(v17 + 8 * v19 + 32);

      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }
    }

    v23 = swift_unknownObjectWeakLoadStrong();

    ++v19;
    if (v23)
    {
      MEMORY[0x20F2E6F30](v24);
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v25 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v20 = v32;
      v19 = v22;
    }
  }

  if (!(v20 >> 62))
  {
    v27 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_47;
    }
  }

  result = __CocoaSet.count.getter();
  v27 = result;
  if (!result)
  {
  }

LABEL_47:
  if (v27 >= 1)
  {
    for (i = 0; i != v27; ++i)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x20F2E7A20](i, v20);
      }

      else
      {
        v29 = *(v20 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [v29 didUpdateLastLegValues_];
      swift_unknownObjectRelease();
    }
  }

  __break(1u);
  return result;
}

void MultiSportWorkoutTracker.moveToNextLeg(suggestedConfiguration:date:)(void *a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for multisport != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.multisport);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v34 = a2;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v35[0] = v11;
    *v10 = 136315138;
    v35[7] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22HKWorkoutConfigurationCSgMd, &_sSo22HKWorkoutConfigurationCSgMR);
    v12 = Optional.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v35);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_20AEA4000, v8, v9, "Moving to next leg with suggested configuration %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x20F2E9420](v11, -1, -1);
    v15 = v10;
    a2 = v34;
    MEMORY[0x20F2E9420](v15, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v31.super.isa = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31.super.isa, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_20AEA4000, v31.super.isa, v32, "Unable to move to next leg - progression delegate is nil.", v33, 2u);
      MEMORY[0x20F2E9420](v33, -1, -1);
    }

    goto LABEL_10;
  }

  v17 = Strong;
  MultiSportWorkoutTracker.appendValues(upTo:)(a2);
  v18 = *(v2 + OBJC_IVAR___WOMultiSportWorkoutTracker_configuration);
  v19 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_suggestedHKWorkoutConfiguration;
  swift_beginAccess();
  v20 = *(v18 + v19);
  *(v18 + v19) = a1;

  swift_getKeyPath();
  swift_getKeyPath();
  v21 = v7;
  v22 = static Published.subscript.modify();
  if (!__OFADD__(*v23, 1))
  {
    ++*v23;
    v22(v35, 0);

    v24 = *(v3 + OBJC_IVAR___WOMultiSportWorkoutTracker_distanceAccumulator);
    v25 = *(v24 + 48);
    v26 = MEMORY[0x277D84F90];
    *(v24 + 48) = MEMORY[0x277D84F90];

    v27 = *(v3 + OBJC_IVAR___WOMultiSportWorkoutTracker_elapsedTimeAccumulator);
    v28 = *(v27 + 48);
    *(v27 + 48) = v26;

    v29 = *(v3 + OBJC_IVAR___WOMultiSportWorkoutTracker_averagePaceAccumulator);
    v30 = *(v29 + 48);
    *(v29 + 48) = v26;

    v31.super.isa = Date._bridgeToObjectiveC()().super.isa;
    [v17 enterNewLeg:v3 date:v31.super.isa];
    swift_unknownObjectRelease();
LABEL_10:

    return;
  }

  __break(1u);
}

void MultiSportWorkoutTracker.manuallyMoveToNextActivity(multisportTransitions:)()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v0 + OBJC_IVAR___WOMultiSportWorkoutTracker_configuration);
  if (LiveWorkoutConfiguration.isLastMultiSportLeg()())
  {
    v8 = OBJC_IVAR___WOMultiSportWorkoutTracker_multiSportTransitionState;
    swift_beginAccess();
    *(v1 + v8) = 0;
    if (one-time initialization token for multisport != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static WOLog.multisport);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_20AEA4000, v10, v11, "Requested to move to next leg, but already at end of workout.", v12, 2u);
      MEMORY[0x20F2E9420](v12, -1, -1);
    }
  }

  else
  {
    v13 = *(v7 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
    type metadata accessor for MultiSportWorkoutConfiguration();
    if (swift_dynamicCastClass())
    {
      Date.init()();
      v14 = OBJC_IVAR___WOMultiSportWorkoutTracker_multiSportTransitionState;
      swift_beginAccess();
      if (*(v1 + v14) || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , (v15[7] & 1) == 0))
      {
        MultiSportWorkoutTracker.moveToNextLeg(suggestedConfiguration:date:)(0, v6);
      }

      else
      {
        MultiSportWorkoutTracker.enterTransition(suggestedConfiguration:date:)(0, v6);
      }

      (*(v3 + 8))(v6, v2);
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

void MultiSportWorkoutTracker.startEndWorkoutTimer(fromDate:)()
{
  v1 = OBJC_IVAR___WOMultiSportWorkoutTracker_endWorkoutTimer;
  if (*(v0 + OBJC_IVAR___WOMultiSportWorkoutTracker_endWorkoutTimer))
  {
    if (one-time initialization token for multisport != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static WOLog.multisport);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_20AEA4000, oslog, v3, "Ignoring request to start end workout timer, we are already timing", v4, 2u);
      MEMORY[0x20F2E9420](v4, -1, -1);
    }
  }

  else
  {
    v5 = v0;
    Date.timeIntervalSinceNow.getter();
    v7 = v6 + 180.0;
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = one-time initialization token for multisport;
    if (v7 <= 0.0)
    {

      if (v9 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static WOLog.multisport);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_20AEA4000, v20, v21, "Transition started earlier than our normal delay date, suggesting end now", v22, 2u);
        MEMORY[0x20F2E9420](v22, -1, -1);
      }

      closure #1 in MultiSportWorkoutTracker.startEndWorkoutTimer(fromDate:)();
    }

    else
    {
      if (one-time initialization token for multisport != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static WOLog.multisport);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 134217984;
        *(v13 + 4) = v7;
        _os_log_impl(&dword_20AEA4000, v11, v12, "Scheduling an end workout suggestion for %f from now", v13, 0xCu);
        MEMORY[0x20F2E9420](v13, -1, -1);
      }

      v14 = objc_opt_self();
      v15 = swift_allocObject();
      *(v15 + 16) = partial apply for closure #1 in MultiSportWorkoutTracker.startEndWorkoutTimer(fromDate:);
      *(v15 + 24) = v8;
      aBlock[4] = partial apply for closure #2 in MultiSportWorkoutTracker.startEndWorkoutTimer(fromDate:);
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
      aBlock[3] = &block_descriptor_32;
      v16 = _Block_copy(aBlock);

      v17 = [v14 scheduledTimerWithTimeInterval:0 repeats:v16 block:v7];

      _Block_release(v16);
      v18 = *(v5 + v1);
      *(v5 + v1) = v17;
    }
  }
}

void closure #1 in MultiSportWorkoutTracker.startEndWorkoutTimer(fromDate:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (one-time initialization token for multisport != -1)
    {
LABEL_33:
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static WOLog.multisport);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_20AEA4000, v3, v4, "Suggest ending the workout now", v5, 2u);
      MEMORY[0x20F2E9420](v5, -1, -1);
    }

    v6 = OBJC_IVAR___WOMultiSportWorkoutTracker__progressObservers;
    swift_beginAccess();
    v7 = *&v1[v6];
    v22 = MEMORY[0x277D84F90];
    if (v7 >> 62)
    {
      v8 = __CocoaSet.count.getter();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (v8 != v9)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        MEMORY[0x20F2E7A20](v9, v7);
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v11 = *(v7 + 8 * v9 + 32);

        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_30;
        }
      }

      v13 = swift_unknownObjectWeakLoadStrong();

      ++v9;
      if (v13)
      {
        MEMORY[0x20F2E6F30](v14);
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v15 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v10 = v22;
        v9 = v12;
      }
    }

    if (v10 >> 62)
    {
      v16 = __CocoaSet.count.getter();
      if (v16)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v16 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
LABEL_21:
        v17 = 0;
        do
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x20F2E7A20](v17, v10);
            v19 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (v17 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_32;
            }

            v18 = *(v10 + 8 * v17 + 32);
            swift_unknownObjectRetain();
            v19 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
LABEL_29:
              __break(1u);
              goto LABEL_30;
            }
          }

          [v18 suggestEndingWorkout];
          swift_unknownObjectRelease();
          ++v17;
        }

        while (v19 != v16);
      }
    }

    v1[OBJC_IVAR___WOMultiSportWorkoutTracker_didNotifyOfEndSuggestion] = 1;
    v20 = OBJC_IVAR___WOMultiSportWorkoutTracker_endWorkoutTimer;
    [*&v1[OBJC_IVAR___WOMultiSportWorkoutTracker_endWorkoutTimer] invalidate];
    v21 = *&v1[v20];
    *&v1[v20] = 0;
  }
}

void MultiSportWorkoutTracker.handleFinalLegSuggestion(_:date:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  _sSo17OS_dispatch_queueCMaTm_12(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v10 = MultiSportWorkoutTracker.allHKConfigurations.getter();
    v9 = v10;
    if (!(v10 >> 62))
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_4;
      }

LABEL_30:

      v13 = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_31;
    }
  }

  else
  {
    __break(1u);
  }

  v11 = __CocoaSet.count.getter();
  if (!v11)
  {
    goto LABEL_30;
  }

LABEL_4:
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v12)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if ((v9 & 0xC000000000000001) == 0)
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v13 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v14 = *(v9 + 8 * v13 + 32);
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_35;
  }

LABEL_32:
  v14 = MEMORY[0x20F2E7A20](v13, v9);
LABEL_9:
  v4 = v14;

  if (*(v2 + OBJC_IVAR___WOMultiSportWorkoutTracker_didNotifyOfEndSuggestion))
  {
    if (one-time initialization token for multisport == -1)
    {
LABEL_11:
      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static WOLog.multisport);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v16, v17))
      {
LABEL_14:

LABEL_17:
        return;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "Already notified the user, ignoring any new suggestions";
LABEL_13:
      _os_log_impl(&dword_20AEA4000, v16, v17, v19, v18, 2u);
      MEMORY[0x20F2E9420](v18, -1, -1);
      goto LABEL_14;
    }

LABEL_35:
    swift_once();
    goto LABEL_11;
  }

  if ([a1 activityType] == 83)
  {
    MultiSportWorkoutTracker.startEndWorkoutTimer(fromDate:)();
    goto LABEL_17;
  }

  if (!HKWorkoutConfiguration.equivalentForMultisport(_:)(v4))
  {
    if (one-time initialization token for multisport != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static WOLog.multisport);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_14;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Ignoring unknown configuration change when at the end of known legs";
    goto LABEL_13;
  }

  if (one-time initialization token for multisport != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static WOLog.multisport);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_20AEA4000, v21, v22, "We are back in our expected workout type, cancel any ending timer", v23, 2u);
    MEMORY[0x20F2E9420](v23, -1, -1);
  }

  v24 = OBJC_IVAR___WOMultiSportWorkoutTracker_endWorkoutTimer;
  v25 = *(v2 + OBJC_IVAR___WOMultiSportWorkoutTracker_endWorkoutTimer);
  [v25 invalidate];

  v26 = *(v2 + v24);
  *(v2 + v24) = 0;

  *(v2 + OBJC_IVAR___WOMultiSportWorkoutTracker_wasTimingToNotifyWhenPaused) = 0;
}

void MultiSportWorkoutTracker.handleSuggestedConfiguration(_:date:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v75 = a2;
  v76 = a1;
  v4 = type metadata accessor for UUID();
  v74 = *(v4 - 8);
  v5 = *(v74 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v73 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v73 - v17;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (&v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  _sSo17OS_dispatch_queueCMaTm_12(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v23 = static OS_dispatch_queue.main.getter();
  (*(v20 + 104))(v23, *MEMORY[0x277D85200], v19);
  v24 = _dispatchPreconditionTest(_:)();
  v26 = *(v20 + 8);
  v25 = (v20 + 8);
  v26(v23, v19);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_57;
  }

  v27 = *(v3 + OBJC_IVAR___WOMultiSportWorkoutTracker_configuration);
  v28 = *(v27 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for MultiSportWorkoutConfiguration();
  if (!swift_dynamicCastClass())
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if (LiveWorkoutConfiguration.isLastMultiSportLeg()())
  {
    MultiSportWorkoutTracker.handleFinalLegSuggestion(_:date:)(v76);
    return;
  }

  v25 = specialized static MultisportTransitionsStore.read()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v78 != 1)
  {
    if (one-time initialization token for multisport == -1)
    {
LABEL_13:
      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static WOLog.multisport);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v32, v33))
      {
LABEL_16:

        return;
      }

      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "Ignoring suggested configuration as the user has decided to manually transition.";
LABEL_15:
      _os_log_impl(&dword_20AEA4000, v32, v33, v35, v34, 2u);
      MEMORY[0x20F2E9420](v34, -1, -1);
      goto LABEL_16;
    }

LABEL_57:
    swift_once();
    goto LABEL_13;
  }

  v29 = [v76 activityType];
  v30 = OBJC_IVAR___WOMultiSportWorkoutTracker_multiSportTransitionState;
  if (v29 == 83)
  {
    swift_beginAccess();
    if (*(v3 + v30))
    {
      if (one-time initialization token for multisport != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, static WOLog.multisport);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v32, v33))
      {
        goto LABEL_16;
      }

      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "Already in transition, ignoring change request";
      goto LABEL_15;
    }

    if (one-time initialization token for multisport == -1)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

  swift_beginAccess();
  if (!*(v3 + v30))
  {
    if (one-time initialization token for multisport != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    __swift_project_value_buffer(v61, static WOLog.multisport);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_16;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "Ignoring configuration change that's not for transition if we're not in transition";
    goto LABEL_15;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = v77;
  v4 = (v77 + 1);
  if (__OFADD__(v77, 1))
  {
    __break(1u);
    goto LABEL_59;
  }

  v37 = MultiSportWorkoutTracker.allHKConfigurations.getter();
  v27 = v37;
  if ((v37 & 0xC000000000000001) != 0)
  {
LABEL_59:
    v41 = MEMORY[0x20F2E7A20](v7, v27);
    v42 = MEMORY[0x20F2E7A20](v4, v27);
    v38 = v76;
LABEL_24:

    if (HKWorkoutConfiguration.equivalentForMultisport(_:)(v41))
    {
      if (one-time initialization token for multisport != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static WOLog.multisport);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_20AEA4000, v44, v45, "Suggested config equals previous leg, cancel current transition", v46, 2u);
        MEMORY[0x20F2E9420](v46, -1, -1);
      }

      MultiSportWorkoutTracker.cancelTransition()();
    }

    else
    {
      if (!HKWorkoutConfiguration.equivalentForMultisport(_:)(v42))
      {
        if (one-time initialization token for multisport != -1)
        {
          swift_once();
        }

        v66 = type metadata accessor for Logger();
        __swift_project_value_buffer(v66, static WOLog.multisport);
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          *v69 = 0;
          _os_log_impl(&dword_20AEA4000, v67, v68, "Neither current nor previous match, ignoring CM suggestion.", v69, 2u);
          MEMORY[0x20F2E9420](v69, -1, -1);
        }

        goto LABEL_53;
      }

      if (one-time initialization token for multisport != -1)
      {
        swift_once();
      }

      v62 = type metadata accessor for Logger();
      __swift_project_value_buffer(v62, static WOLog.multisport);
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_20AEA4000, v63, v64, "Next config matches CM suggestion, moving to next leg", v65, 2u);
        MEMORY[0x20F2E9420](v65, -1, -1);
      }

      MultiSportWorkoutTracker.moveToNextLeg(suggestedConfiguration:date:)(v38, v75);
    }

LABEL_53:
    return;
  }

  v38 = v76;
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_61;
  }

  v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 >= v39)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v4 < v39)
  {
    v40 = *(v37 + 32 + 8 * v4);
    v41 = *(v37 + 32 + 8 * v7);
    v42 = v40;
    goto LABEL_24;
  }

LABEL_62:
  __break(1u);
LABEL_63:
  swift_once();
LABEL_31:
  v47 = type metadata accessor for Logger();
  __swift_project_value_buffer(v47, static WOLog.multisport);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_20AEA4000, v48, v49, "Entering transition from CM notification", v50, 2u);
    MEMORY[0x20F2E9420](v50, -1, -1);
  }

  v51 = type metadata accessor for Date();
  v52 = *(v51 - 8);
  (*(v52 + 16))(v18, v75, v51);
  v53 = 1;
  (*(v52 + 56))(v18, 0, 1, v51);
  v54 = OBJC_IVAR___WOMultiSportWorkoutTracker_lastAutoTransitionStartDate;
  swift_beginAccess();
  _s10Foundation4DateVSgWOdTm_1(v18, v3 + v54, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_endAccess();
  v55 = v76;
  v56 = [v76 suggestedActivityUUID];
  if (v56)
  {
    v57 = v56;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v53 = 0;
  }

  v58 = v74;
  (*(v74 + 56))(v12, v53, 1, v4);
  outlined init with take of UUID?(v12, v14);
  if ((*(v58 + 48))(v14, 1, v4))
  {
    _s10Foundation4DateVSgWOhTm_7(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v59 = 0;
    v60 = 0;
  }

  else
  {
    (*(v58 + 16))(v7, v14, v4);
    _s10Foundation4DateVSgWOhTm_7(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v59 = UUID.uuidString.getter();
    v60 = v70;
    (*(v58 + 8))(v7, v4);
  }

  v71 = (v3 + OBJC_IVAR___WOMultiSportWorkoutTracker_lastAutoTransitionUUIDString);
  v72 = *(v3 + OBJC_IVAR___WOMultiSportWorkoutTracker_lastAutoTransitionUUIDString + 8);
  *v71 = v59;
  v71[1] = v60;

  MultiSportWorkoutTracker.enterTransition(suggestedConfiguration:date:)(v55, v75);
}

uint64_t MultiSportWorkoutTracker.grabAutoTransitionValues(fromMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v44 - v6;
  v8 = type metadata accessor for UUID();
  v45 = *(v8 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v44 - v14;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16) || (v21 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000031, 0x800000020B45E470), (v22 & 1) == 0))
  {
    (*(v17 + 56))(v15, 1, 1, v16);
    goto LABEL_10;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v21, v47);
  v23 = swift_dynamicCast();
  (*(v17 + 56))(v15, v23 ^ 1u, 1, v16);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
LABEL_10:
    v27 = &_s10Foundation4DateVSgMd;
    v28 = &_s10Foundation4DateVSgMR;
    v29 = v15;
    goto LABEL_11;
  }

  v44[0] = *(v17 + 32);
  v44[1] = v17 + 32;
  (v44[0])(v20, v15, v16);
  if (!*(a1 + 16))
  {
    goto LABEL_24;
  }

  v24 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000032, 0x800000020B45E4B0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_24;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v24, v47);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  UUID.init(uuidString:)();

  v26 = v45;
  if ((*(v45 + 48))(v7, 1, v8) == 1)
  {
    (*(v17 + 8))(v20, v16);
    v27 = &_s10Foundation4UUIDVSgMd;
    v28 = &_s10Foundation4UUIDVSgMR;
    v29 = v7;
LABEL_11:
    _s10Foundation4DateVSgWOhTm_7(v29, v27, v28);
LABEL_12:
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_AA4UUIDVtMd, &_s10Foundation4DateV_AA4UUIDVtMR);
    return (*(*(v30 - 8) + 56))(a2, 1, 1, v30);
  }

  v32 = v7;
  v33 = *(v26 + 32);
  v33(v11, v32, v8);
  if (!*(a1 + 16))
  {
    goto LABEL_23;
  }

  v34 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000028, 0x800000020B45E4F0);
  if ((v35 & 1) == 0 || (outlined init with copy of Any(*(a1 + 56) + 32 * v34, v47), (swift_dynamicCast() & 1) == 0) || !*(a1 + 16) || (v36 = v46, v37 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002CLL, 0x800000020B45E520), (v38 & 1) == 0) || (outlined init with copy of Any(*(a1 + 56) + 32 * v37, v47), (swift_dynamicCast() & 1) == 0) || !*(a1 + 16) || (v39 = v46, v40 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000028, 0x800000020B45E550), (v41 & 1) == 0) || (outlined init with copy of Any(*(a1 + 56) + 32 * v40, v47), (swift_dynamicCast() & 1) == 0))
  {
LABEL_23:
    (*(v45 + 8))(v11, v8);
LABEL_24:
    (*(v17 + 8))(v20, v16);
    goto LABEL_12;
  }

  MultiSportWorkoutTracker.appendValues(distance:time:pace:)(v39, v36, v46);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_AA4UUIDVtMd, &_s10Foundation4DateV_AA4UUIDVtMR);
  v43 = *(v42 + 48);
  (v44[0])(a2, v20, v16);
  v33((a2 + v43), v11, v8);
  return (*(*(v42 - 8) + 56))(a2, 0, 1, v42);
}

Swift::Void __swiftcall MultiSportWorkoutTracker.recoverState(sessionActivity:)(NLSessionActivity *sessionActivity)
{
  v1 = [(NLSessionActivity *)sessionActivity builder];
  if (v1)
  {
    v2 = v1;
    v3 = [(HKLiveWorkoutBuilder *)v2 workoutActivities];
    _sSo17OS_dispatch_queueCMaTm_12(0, &lazy cache variable for type metadata for HKWorkoutActivity, 0x277CCDBF0);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = [(HKLiveWorkoutBuilder *)v2 metadata];
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    MultiSportWorkoutTracker.recoverState(workoutActivities:builderMetadata:)(v4, v6);
  }
}

Swift::Void __swiftcall MultiSportWorkoutTracker.recoverState(workoutActivities:builderMetadata:)(Swift::OpaquePointer workoutActivities, Swift::OpaquePointer builderMetadata)
{
  v4 = v2;
  rawValue = builderMetadata._rawValue;
  v189 = type metadata accessor for UUID();
  v182 = *(v189 - 8);
  v5 = *(v182 + 64);
  MEMORY[0x28223BE20](v189);
  v188 = &v179 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v194 = *(v7 - 8);
  v8 = *(v194 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v187 = &v179 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v191 = &v179 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v192 = &v179 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v203 = &v179 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_AA4UUIDVtSgMd, &_s10Foundation4DateV_AA4UUIDVtSgMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v184 = &v179 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v183 = &v179 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v179 - v23;
  v25 = OBJC_IVAR___WOMultiSportWorkoutTracker_firstActivityStarted;
  swift_beginAccess();
  *(v2 + v25) = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_AA4UUIDVtMd, &_s10Foundation4DateV_AA4UUIDVtMR);
  v186 = *(v26 - 8);
  v27 = *(v186 + 56);
  v195 = v24;
  v190 = v26;
  v27(v24, 1, 1);

  v207[0] = specialized Array._copyToContiguousArray()(v28);
  specialized MutableCollection<>.sort(by:)(v207);
  v181 = 0;
  v29 = v207[0];

  v30 = specialized Collection.dropLast(_:)(1, v29);
  v204 = v31;
  v33 = v32;
  v35 = v34;

  v36 = (v35 >> 1);
  v193 = v33;
  v196 = v30;
  v199 = v4;
  v198 = v7;
  v201 = (v35 >> 1);
  if (v33 != (v35 >> 1))
  {
    v180 = v29;
    v202 = (v194 + 56);
    swift_unknownObjectRetain();
    *&v37 = 138412546;
    v197 = v37;
    v38 = v193;
    while (1)
    {
      if (v38 >= v36)
      {
        __break(1u);
        goto LABEL_75;
      }

      v39 = one-time initialization token for multisport;
      v40 = v204[v38];
      if (v39 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      v42 = __swift_project_value_buffer(v41, static WOLog.multisport);
      v43 = v40;
      v3 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v3, v44))
      {
        v200 = v42;
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v207[0] = v47;
        *v45 = v197;
        *(v45 + 4) = v43;
        *v46 = v43;
        *(v45 + 12) = 2080;
        v48 = [v43 metadata];
        if (v48)
        {
          v49 = v48;
          v50 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v50 = 0;
        }

        v206[0] = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGSgMd, &_sSDySSypGSgMR);
        v51 = Optional.description.getter();
        v53 = v52;

        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v207);

        *(v45 + 14) = v54;
        _os_log_impl(&dword_20AEA4000, v3, v44, "Restoring from earlier activity %@ with metadata %s", v45, 0x16u);
        _s10Foundation4DateVSgWOhTm_7(v46, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x20F2E9420](v46, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v47);
        MEMORY[0x20F2E9420](v47, -1, -1);
        MEMORY[0x20F2E9420](v45, -1, -1);

        v4 = v199;
        v7 = v198;
        v36 = v201;
      }

      else
      {
      }

      v55 = [v43 endDate];
      if (!v55)
      {
        break;
      }

      v29 = v55;
      v56 = v203;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*v202)(v56, 0, 1, v7);
      _s10Foundation4DateVSgWOhTm_7(v56, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v57 = [v43 workoutConfiguration];
      [v57 activityType];

      v58 = _HKWorkoutDistanceTypeForActivityType();
      v59 = 0.0;
      v60 = 0.0;
      if (v58)
      {
        v61 = v58;
        v62 = [v43 statisticsForType_];
        if (v62)
        {
          v29 = v62;
          v63 = [v62 sumQuantity];
          if (v63)
          {
            v64 = v63;
            v65 = [objc_opt_self() meterUnit];
            [v64 doubleValueForUnit_];
            v60 = v66;

            v67 = v29;
          }

          else
          {
            v67 = v61;
            v61 = v29;
          }

          v36 = v201;
        }
      }

      v33 = &selRef_adjustedStatisticsForStatistics_;
      [v43 duration];
      v69 = v68;
      [v43 duration];
      if (v70 > 15.0)
      {
        [v43 duration];
        v59 = v60 / v71;
      }

      ++v38;
      MultiSportWorkoutTracker.appendValues(distance:time:pace:)(v60, v69, v59);

      if (v36 == v38)
      {
        swift_unknownObjectRelease();
        v29 = v180;
        goto LABEL_26;
      }
    }

    swift_unknownObjectRelease();
    v72 = v203;
    (*v202)(v203, 1, 1, v7);
    _s10Foundation4DateVSgWOhTm_7(v72, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_20AEA4000, v73, v74, "Earlier activity does not have an end date, but we have activities after this point. Giving up.", v75, 2u);
      MEMORY[0x20F2E9420](v75, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    goto LABEL_113;
  }

LABEL_26:
  if ((v29 & 0x8000000000000000) == 0 && (v29 & 0x4000000000000000) == 0)
  {
    v76 = *(v29 + 16);
    if (v76)
    {
      goto LABEL_29;
    }

LABEL_107:

    if (one-time initialization token for multisport != -1)
    {
      swift_once();
    }

    v160 = type metadata accessor for Logger();
    __swift_project_value_buffer(v160, static WOLog.multisport);
    v161 = Logger.logObject.getter();
    v162 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v161, v162))
    {
      v163 = swift_slowAlloc();
      *v163 = 0;
      _os_log_impl(&dword_20AEA4000, v161, v162, "There are no activities to restore from, skipping restore.", v163, 2u);
      MEMORY[0x20F2E9420](v163, -1, -1);
    }

    goto LABEL_112;
  }

  v76 = __CocoaSet.count.getter();
  if (!v76)
  {
    goto LABEL_107;
  }

LABEL_29:
  v77 = __OFSUB__(v76, 1);
  v78 = v76 - 1;
  if (v77)
  {
    __break(1u);
    goto LABEL_115;
  }

  if ((v29 & 0xC000000000000001) != 0)
  {
LABEL_115:
    v79 = MEMORY[0x20F2E7A20](v78, v29);
    goto LABEL_34;
  }

  if ((v78 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    swift_once();
LABEL_36:
    v83 = type metadata accessor for Logger();
    __swift_project_value_buffer(v83, static WOLog.multisport);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      v87 = "Last activity in recovery has already ended. We must have failed to transition. This case is currently unhandled.";
LABEL_61:
      _os_log_impl(&dword_20AEA4000, v84, v85, v87, v86, 2u);
      MEMORY[0x20F2E9420](v86, -1, -1);
    }

LABEL_62:

LABEL_112:
    swift_unknownObjectRelease();
LABEL_113:
    _s10Foundation4DateVSgWOhTm_7(v195, &_s10Foundation4DateV_AA4UUIDVtSgMd, &_s10Foundation4DateV_AA4UUIDVtSgMR);
    return;
  }

  if (v78 >= *(v29 + 16))
  {
    goto LABEL_117;
  }

  v79 = *(v29 + 8 * v78 + 32);
LABEL_34:
  v36 = v79;

  v80 = [v36 endDate];
  if (v80)
  {
    v81 = v192;
    v82 = v80;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v194 + 56))(v81, 0, 1, v7);
    _s10Foundation4DateVSgWOhTm_7(v81, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (one-time initialization token for multisport == -1)
    {
      goto LABEL_36;
    }

    goto LABEL_120;
  }

  v88 = v192;
  (*(v194 + 56))(v192, 1, 1, v7);
  _s10Foundation4DateVSgWOhTm_7(v88, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v84 = [v36 workoutConfiguration];
  v89 = [v84 activityType];

  if (v89 == 83)
  {
    if (v193 == v201)
    {
      if (one-time initialization token for multisport != -1)
      {
        swift_once();
      }

      v90 = type metadata accessor for Logger();
      __swift_project_value_buffer(v90, static WOLog.multisport);
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v84, v85))
      {
        goto LABEL_62;
      }

      v86 = swift_slowAlloc();
      *v86 = 0;
      v87 = "Recovery says that we are in transition, but we have no previous legs. Giving up.";
      goto LABEL_61;
    }

    if (v201 <= v193)
    {
      __break(1u);
    }

    else
    {
      v84 = v204[v201 - 1];
      v103 = [v84 metadata];
      if (v103)
      {
        v104 = v36;
        v105 = v103;
        v106 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v106 + 16) && (v107 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000015, 0x800000020B458830), (v108 & 1) != 0))
        {
          outlined init with copy of Any(*(v106 + 56) + 32 * v107, v207);

          if (swift_dynamicCast())
          {
            v109 = v206[0];
            v110 = OBJC_IVAR___WOMultiSportWorkoutTracker_multiSportTransitionState;
            swift_beginAccess();
            *(v4 + v110) = 2;
            v111 = *(v4 + OBJC_IVAR___WOMultiSportWorkoutTracker_configuration);
            swift_getKeyPath();
            swift_getKeyPath();
            v206[0] = v109;
            v112 = v104;
            v113 = v111;
            static Published.subscript.setter();

            goto LABEL_78;
          }
        }

        else
        {
        }
      }

      if (one-time initialization token for multisport == -1)
      {
LABEL_65:
        v115 = type metadata accessor for Logger();
        __swift_project_value_buffer(v115, static WOLog.multisport);
        v116 = Logger.logObject.getter();
        v117 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v116, v117))
        {
          v118 = v36;
          v119 = swift_slowAlloc();
          *v119 = 0;
          _os_log_impl(&dword_20AEA4000, v116, v117, "Previous leg does not have a leg metadata key. Giving up.", v119, 2u);
          MEMORY[0x20F2E9420](v119, -1, -1);

          goto LABEL_112;
        }

        goto LABEL_62;
      }
    }

    swift_once();
    goto LABEL_65;
  }

  v91 = [v36 metadata];
  if (!v91)
  {
    goto LABEL_57;
  }

  v92 = v91;
  v93 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v93 + 16) || (v94 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000015, 0x800000020B458830), (v95 & 1) == 0))
  {

    goto LABEL_57;
  }

  outlined init with copy of Any(*(v93 + 56) + 32 * v94, v207);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_57:
    if (one-time initialization token for multisport != -1)
    {
      swift_once();
    }

    v114 = type metadata accessor for Logger();
    __swift_project_value_buffer(v114, static WOLog.multisport);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v84, v85))
    {
      goto LABEL_62;
    }

    v86 = swift_slowAlloc();
    *v86 = 0;
    v87 = "Current leg does not have a leg metadata key. Giving up.";
    goto LABEL_61;
  }

  v7 = v206[0];
  v203 = v36;
  v96 = v36;
  v97 = v183;
  MultiSportWorkoutTracker.grabAutoTransitionValues(fromMetadata:)(rawValue, v183);
  v98 = v97;
  v99 = v195;
  _s10Foundation4DateVSgWOdTm_1(v98, v195, &_s10Foundation4DateV_AA4UUIDVtSgMd, &_s10Foundation4DateV_AA4UUIDVtSgMR);
  v100 = v184;
  _s10Foundation4DateVSgWOcTm_4(v99, v184, &_s10Foundation4DateV_AA4UUIDVtSgMd, &_s10Foundation4DateV_AA4UUIDVtSgMR);
  v101 = (*(v186 + 48))(v100, 1, v190);
  _s10Foundation4DateVSgWOhTm_7(v100, &_s10Foundation4DateV_AA4UUIDVtSgMd, &_s10Foundation4DateV_AA4UUIDVtSgMR);
  v102 = OBJC_IVAR___WOMultiSportWorkoutTracker_multiSportTransitionState;
  swift_beginAccess();
  *(v4 + v102) = v101 != 1;
  if (one-time initialization token for multisport != -1)
  {
    swift_once();
  }

  v120 = type metadata accessor for Logger();
  __swift_project_value_buffer(v120, static WOLog.multisport);
  v121 = v96;
  v33 = Logger.logObject.getter();
  LOBYTE(v36) = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v36))
  {
    v29 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v206[0] = v3;
    *v29 = 138412546;
    *(v29 + 4) = v121;
    *v38 = v121;
    *(v29 + 12) = 2080;
    v122 = [v121 metadata];
    if (v122)
    {
      v123 = v122;
      v124 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
LABEL_75:
      v124 = 0;
    }

    v205 = v124;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGSgMd, &_sSDySSypGSgMR);
    v125 = Optional.description.getter();
    v127 = v126;

    v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v127, v206);

    *(v29 + 14) = v128;
    _os_log_impl(&dword_20AEA4000, v33, v36, "Restoring current activity %@ with metadata %s", v29, 0x16u);
    _s10Foundation4DateVSgWOhTm_7(v38, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v38, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x20F2E9420](v3, -1, -1);
    MEMORY[0x20F2E9420](v29, -1, -1);
  }

  else
  {
  }

  v4 = v199;
  v129 = *(v199 + OBJC_IVAR___WOMultiSportWorkoutTracker_configuration);
  swift_getKeyPath();
  swift_getKeyPath();
  v206[0] = v7;
  v130 = v129;
  static Published.subscript.setter();
  v104 = v203;
LABEL_78:
  v203 = v104;
  v131 = OBJC_IVAR___WOMultiSportWorkoutTracker__progressObservers;
  swift_beginAccess();
  rawValue = v131;
  v132 = *&v131[v4];
  v205 = MEMORY[0x277D84F90];
  if (v132 >> 62)
  {
    v36 = __CocoaSet.count.getter();
  }

  else
  {
    v36 = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v133 = 0;
  v134 = MEMORY[0x277D84F90];
  while (v36 != v133)
  {
    if ((v132 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v133, v132);
      v136 = (v133 + 1);
      if (__OFADD__(v133, 1))
      {
        goto LABEL_118;
      }
    }

    else
    {
      if (v133 >= *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_119;
      }

      v135 = *(v132 + 8 * v133 + 32);

      v136 = (v133 + 1);
      if (__OFADD__(v133, 1))
      {
        goto LABEL_118;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    ++v133;
    if (Strong)
    {
      MEMORY[0x20F2E6F30](v138);
      if (*((v205 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v205 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v139 = *((v205 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v134 = v205;
      v133 = v136;
    }
  }

  v140 = v190;
  if (v134 >> 62)
  {
    v142 = __CocoaSet.count.getter();
    if (!v142)
    {
      goto LABEL_125;
    }
  }

  else
  {
    v141 = (v134 & 0xFFFFFFFFFFFFFF8);
    v142 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v142)
    {
      goto LABEL_125;
    }
  }

  if (v142 < 1)
  {
    __break(1u);
    goto LABEL_155;
  }

  v143 = 0;
  v200 = v134 & 0xC000000000000001;
  v144 = (v194 + 8);
  v204 = (v186 + 48);
  v194 += 16;
  v193 = (v182 + 16);
  v192 = (v182 + 8);
  v202 = v134;
  *&v197 = v144;
  v201 = v142;
  do
  {
    if (v200)
    {
      v148 = MEMORY[0x20F2E7A20](v143, v134);
    }

    else
    {
      v148 = *(v134 + 8 * v143 + 32);
      swift_unknownObjectRetain();
    }

    v149 = [v203 startDate];
    v150 = v191;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v151.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v152 = *v144;
    v153 = v198;
    (*v144)(v150, v198);
    v154 = *v204;
    v155 = v195;
    if ((*v204)(v195, 1, v140))
    {
      isa = 0;
    }

    else
    {
      v157 = v187;
      (*v194)(v187, v155, v153);
      v158.super.isa = Date._bridgeToObjectiveC()().super.isa;
      v155 = v195;
      isa = v158.super.isa;
      v159 = v157;
      v140 = v190;
      v152(v159, v153);
    }

    if (v154(v155, 1, v140))
    {
      v147.super.isa = 0;
    }

    else
    {
      v145 = v188;
      v146 = v189;
      (v193->isa)(v188, v155 + *(v140 + 48), v189);
      v147.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      (*v192)(v145, v146);
    }

    v143 = (v143 + 1);
    [v148 didRestoreActivityType:v199 startDate:v151.super.isa autoTransitionStartDate:isa autoTransitionUUID:v147.super.isa];
    swift_unknownObjectRelease();

    v134 = v202;
    v144 = v197;
  }

  while (v201 != v143);
LABEL_125:

  v164 = *&rawValue[v199];
  v205 = MEMORY[0x277D84F90];
  if (v164 >> 62)
  {
LABEL_150:
    v165 = __CocoaSet.count.getter();
  }

  else
  {
    v165 = *((v164 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v166 = 0;
  v167 = MEMORY[0x277D84F90];
  while (v165 != v166)
  {
    if ((v164 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v166, v164);
      v169 = v166 + 1;
      if (__OFADD__(v166, 1))
      {
        goto LABEL_148;
      }
    }

    else
    {
      if (v166 >= *((v164 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_149;
      }

      v168 = *(v164 + 8 * v166 + 32);

      v169 = v166 + 1;
      if (__OFADD__(v166, 1))
      {
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }
    }

    v170 = swift_unknownObjectWeakLoadStrong();

    ++v166;
    if (v170)
    {
      MEMORY[0x20F2E6F30](v171);
      if (*((v205 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v205 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v172 = *((v205 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v167 = v205;
      v166 = v169;
    }
  }

  if (!(v167 >> 62))
  {
    v173 = *((v167 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v141 = &v208;
    v174 = v199;
    v175 = v203;
    if (v173)
    {
      goto LABEL_141;
    }

LABEL_152:
    swift_unknownObjectRelease();

LABEL_153:

    goto LABEL_113;
  }

  v173 = __CocoaSet.count.getter();
  v141 = &v208;
  v174 = v199;
  v175 = v203;
  if (!v173)
  {
    goto LABEL_152;
  }

LABEL_141:
  if (v173 >= 1)
  {
    for (i = 0; i != v173; ++i)
    {
      if ((v167 & 0xC000000000000001) != 0)
      {
        v177 = MEMORY[0x20F2E7A20](i, v167);
      }

      else
      {
        v177 = *(v167 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [v177 didUpdateLastLegValues_];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    v178 = v203;

    goto LABEL_153;
  }

LABEL_155:
  __break(1u);

  __break(1u);
}

Swift::Void __swiftcall MultiSportWorkoutTracker.notifyObserversValuesChanged()()
{
  v1 = v0;
  v2 = OBJC_IVAR___WOMultiSportWorkoutTracker__progressObservers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v15 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
LABEL_25:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (v4 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v5, v3);
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v7 = *(v3 + 8 * v5 + 32);

      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    ++v5;
    if (Strong)
    {
      MEMORY[0x20F2E6F30](v10);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = v15;
      v5 = v8;
    }
  }

  if (!(v6 >> 62))
  {
    v12 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_27:

    return;
  }

  v12 = __CocoaSet.count.getter();
  if (!v12)
  {
    goto LABEL_27;
  }

LABEL_17:
  if (v12 >= 1)
  {
    for (i = 0; i != v12; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x20F2E7A20](i, v6);
      }

      else
      {
        v14 = *(v6 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [v14 didUpdateLastLegValues_];
      swift_unknownObjectRelease();
    }

    goto LABEL_27;
  }

  __break(1u);
}

void MultiSportWorkoutTracker.appendValues(distance:time:pace:)(double a1, double a2, double a3)
{
  v4 = v3;
  v8 = *&v3[OBJC_IVAR___WOMultiSportWorkoutTracker_configuration];
  v9 = LiveWorkoutConfiguration.currentActivityType.getter();
  v10 = [v9 identifier];

  v11 = OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportDistancesByActivity;
  swift_beginAccess();
  v12 = *&v4[v11];
  if (*(v12 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  *(inited + 32) = a1;
  v74[0] = v15;
  specialized Array.append<A>(contentsOf:)(inited);
  v17 = v15;
  v18 = LiveWorkoutConfiguration.currentActivityType.getter();
  v19 = [v18 identifier];

  swift_beginAccess();
  v20 = *&v4[v11];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v73 = *&v4[v11];
  *&v4[v11] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, v19, isUniquelyReferenced_nonNull_native);
  *&v4[v11] = v73;
  swift_endAccess();
  v22 = OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportTimes;
  v23 = *&v4[OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportTimes];
  v24 = swift_isUniquelyReferenced_nonNull_native();
  *&v4[v22] = v23;
  if ((v24 & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
    *&v4[v22] = v23;
  }

  v26 = *(v23 + 2);
  v25 = *(v23 + 3);
  if (v26 >= v25 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v23);
  }

  *(v23 + 2) = v26 + 1;
  *&v23[8 * v26 + 32] = a2;
  *&v4[v22] = v23;
  v27 = OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportAveragePaces;
  v28 = *&v4[OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportAveragePaces];
  v29 = swift_isUniquelyReferenced_nonNull_native();
  *&v4[v27] = v28;
  if ((v29 & 1) == 0)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
    *&v4[v27] = v28;
  }

  v31 = *(v28 + 2);
  v30 = *(v28 + 3);
  if (v31 >= v30 >> 1)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v28);
  }

  *(v28 + 2) = v31 + 1;
  *&v28[8 * v31 + 32] = a3;
  v72 = v27;
  *&v4[v27] = v28;
  if (one-time initialization token for multisport != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static WOLog.multisport);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_20AEA4000, v33, v34, "Did append current values. New storage:", v35, 2u);
    MEMORY[0x20F2E9420](v35, -1, -1);
  }

  v36 = v4;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v71 = v22;
    v40 = swift_slowAlloc();
    v74[0] = v40;
    *v39 = 136315138;
    v41 = *&v4[v11];

    v43 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySo21HKWorkoutActivityTypeVSaySdGG_SSs5NeverOTg50132_s11WorkoutCore010MultiSportA7TrackerC41stringArrayForPreviousMultisportDistances33_0E6D109B9F68067E5BEC40CEBADAD9E2LLSaySSGvgSSSo21deF26V3key_SaySdG5valuet_tXEfU_Tf1cn_n(v42);

    v44 = MEMORY[0x20F2E6F70](v43, MEMORY[0x277D837D0]);
    v46 = v45;

    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v74);

    *(v39 + 4) = v47;
    _os_log_impl(&dword_20AEA4000, v37, v38, "Distances: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    v48 = v40;
    v22 = v71;
    MEMORY[0x20F2E9420](v48, -1, -1);
    MEMORY[0x20F2E9420](v39, -1, -1);
  }

  v49 = v36;
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v74[0] = v53;
    *v52 = 136315138;
    v54 = *&v4[v22];

    v56 = MEMORY[0x20F2E6F70](v55, MEMORY[0x277D839F8]);
    v58 = v57;

    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, v74);

    *(v52 + 4) = v59;
    _os_log_impl(&dword_20AEA4000, v50, v51, "Times: %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x20F2E9420](v53, -1, -1);
    MEMORY[0x20F2E9420](v52, -1, -1);
  }

  v60 = v49;
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v74[0] = v64;
    *v63 = 136315138;
    v65 = *&v4[v72];

    v67 = MEMORY[0x20F2E6F70](v66, MEMORY[0x277D839F8]);
    v69 = v68;

    v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, v74);

    *(v63 + 4) = v70;
    _os_log_impl(&dword_20AEA4000, v61, v62, "Paces: %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x20F2E9420](v64, -1, -1);
    MEMORY[0x20F2E9420](v63, -1, -1);
  }
}

uint64_t MultiSportWorkoutTracker.dropLastValues()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___WOMultiSportWorkoutTracker_configuration);
  v3 = LiveWorkoutConfiguration.currentActivityType.getter();
  v4 = [v3 identifier];

  v5 = LiveWorkoutConfiguration.currentActivityType.getter();
  v6 = [v5 identifier];

  v7 = OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportDistancesByActivity;
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v13 = specialized Sequence.dropLast(_:)(1, v12);
  swift_beginAccess();
  v14 = *(v1 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v1 + v7);
  *(v1 + v7) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, v4, isUniquelyReferenced_nonNull_native);
  *(v1 + v7) = v17;
  swift_endAccess();
  specialized RangeReplaceableCollection<>.popLast()();
  return specialized RangeReplaceableCollection<>.popLast()();
}

uint64_t specialized Sequence.dropLast(_:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    goto LABEL_30;
  }

  v2 = a2;
  v3 = result;
  if (!result)
  {
    return v2;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_26:

    return v8;
  }

  v5 = 0;
  v6 = (a2 + 32);
  v7 = v4 - 1;
  v8 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = *v6;
    v11 = *(v9 + 16);
    if (v11 < v3)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 + 1, 1);
      }

      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      }

      *(v9 + 16) = v13 + 1;
      *(v9 + 8 * v13 + 32) = v10;
      if (!v7)
      {
        goto LABEL_26;
      }

      goto LABEL_6;
    }

    if (v5 >= v11)
    {
      break;
    }

    v14 = *(v9 + 8 * v5 + 32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1);
    }

    v16 = *(v8 + 16);
    v15 = *(v8 + 24);
    if (v16 >= v15 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
    }

    *(v8 + 16) = v16 + 1;
    *(v8 + 8 * v16 + 32) = v14;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v9);
      v9 = result;
    }

    if (v5 >= *(v9 + 16))
    {
      goto LABEL_29;
    }

    *(v9 + 8 * v5++ + 32) = v10;
    if (v5 < v3)
    {
      if (!v7)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (!v7)
      {
        goto LABEL_26;
      }

      v5 = 0;
    }

LABEL_6:
    --v7;
    ++v6;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t specialized RangeReplaceableCollection<>.popLast()()
{
  v1 = *v0;
  if (!*(*v0 + 16))
  {
    return 0;
  }

  v2 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v4 = *(v1 + 16);
    if (v4)
    {
LABEL_4:
      v5 = v4 - 1;
      result = *(v1 + 8 * v5 + 32);
      *(v1 + 16) = v5;
      *v0 = v1;
      return result;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    v1 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

id MultiSportWorkoutTracker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MultiSportWorkoutTracker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiSportWorkoutTracker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t key path getter for MultisportTransitions.shouldTrackTransitions : MultisportTransitions@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for MultisportTransitions.shouldTrackTransitions : MultisportTransitions(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t specialized WeakCollection.wrappedValue.setter(unint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v8 = *v3;

  if (!(a1 >> 62))
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_12:

    v17 = MEMORY[0x277D84F90];
LABEL_13:
    *v6 = v17;
    return result;
  }

  v9 = __CocoaSet.count.getter();
  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_3:
  v18 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v9 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = 0;
      do
      {
        v12 = v11 + 1;
        MEMORY[0x20F2E7A20]();
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakAssign();
        swift_unknownObjectRelease();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v13 = *(v18 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v11 = v12;
      }

      while (v9 != v12);
    }

    else
    {
      v14 = 32;
      do
      {
        v15 = *(a1 + v14);
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakAssign();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v16 = *(v18 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v14 += 8;
        --v9;
      }

      while (v9);
    }

    v17 = v18;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t specialized MultiSportWorkoutTracker.workout(_:didBeginNewActivity:)(Class isa)
{
  v50 = type metadata accessor for Date();
  v2 = *(v50 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v50);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for multisport != -1)
  {
    goto LABEL_61;
  }

  while (1)
  {
    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static WOLog.multisport);
    v7 = isa;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = v7;
      v12 = v7;
      _os_log_impl(&dword_20AEA4000, v8, v9, "Tracker has noticed that a new activity began: %@", v10, 0xCu);
      _s10Foundation4DateVSgWOhTm_7(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v11, -1, -1);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }

    v13 = [(objc_class *)v7 workoutConfiguration];
    v14 = [v13 activityType];

    v15 = OBJC_IVAR___WOMultiSportWorkoutTracker_multiSportTransitionState;
    v49 = v7;
    v47 = v2;
    if (v14 == 83)
    {
      break;
    }

    v25 = v48;
    swift_beginAccess();
    *(v25 + v15) = 0;
    v26 = OBJC_IVAR___WOMultiSportWorkoutTracker__progressObservers;
    swift_beginAccess();
    v27 = *(v25 + v26);
    v51 = MEMORY[0x277D84F90];
    if (v27 >> 62)
    {
      v28 = __CocoaSet.count.getter();
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v2 = v27 & 0xC000000000000001;

    isa = 0;
    v19 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v28 == isa)
      {
        goto LABEL_44;
      }

      if (!v2)
      {
        break;
      }

      MEMORY[0x20F2E7A20](isa, v27);
      v30 = (isa + 1);
      if (__OFADD__(isa, 1))
      {
        goto LABEL_56;
      }

LABEL_26:
      Strong = swift_unknownObjectWeakLoadStrong();

      isa = (isa + 1);
      if (Strong)
      {
        MEMORY[0x20F2E6F30](v32);
        if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v33 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v19 = v51;
        isa = v30;
      }
    }

    if (isa >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_58;
    }

    v29 = *(v27 + 8 * isa + 32);

    v30 = (isa + 1);
    if (!__OFADD__(isa, 1))
    {
      goto LABEL_26;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    swift_once();
  }

  v16 = v48;
  swift_beginAccess();
  *(v16 + v15) = 2;
  v17 = OBJC_IVAR___WOMultiSportWorkoutTracker__progressObservers;
  swift_beginAccess();
  v2 = *(v16 + v17);
  v51 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    v18 = __CocoaSet.count.getter();
  }

  else
  {
    v18 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  isa = 0;
  v19 = MEMORY[0x277D84F90];
  while (v18 != isa)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](isa, v2);
      v21 = (isa + 1);
      if (__OFADD__(isa, 1))
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }
    }

    else
    {
      if (isa >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_57;
      }

      v20 = *(v2 + 8 * isa + 32);

      v21 = (isa + 1);
      if (__OFADD__(isa, 1))
      {
        goto LABEL_55;
      }
    }

    v22 = swift_unknownObjectWeakLoadStrong();

    isa = (isa + 1);
    if (v22)
    {
      MEMORY[0x20F2E6F30](v23);
      if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v24 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v19 = v51;
      isa = v21;
    }
  }

  if (v19 >> 62)
  {
    v2 = __CocoaSet.count.getter();
    if (!v2)
    {
    }
  }

  else
  {
    v2 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
    }
  }

  v34 = 0;
  v35 = (v47 + 8);
  while (2)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x20F2E7A20](v34, v19);
      v37 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      goto LABEL_39;
    }

    if (v34 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_59;
    }

    v36 = *(v19 + 8 * v34 + 32);
    swift_unknownObjectRetain();
    v37 = v34 + 1;
    if (!__OFADD__(v34, 1))
    {
LABEL_39:
      v38 = [(objc_class *)v49 startDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      isa = Date._bridgeToObjectiveC()().super.isa;
      (*v35)(v5, v50);
      [v36 didEnterManualTransitionWithDate_];
      swift_unknownObjectRelease();

      ++v34;
      if (v37 == v2)
      {
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_44:

  if (v19 >> 62)
  {
    v39 = __CocoaSet.count.getter();
    if (v39)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v39 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v39)
    {
LABEL_46:
      v40 = 0;
      v2 = v19 & 0xFFFFFFFFFFFFFF8;
      v41 = (v47 + 8);
      do
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v42 = MEMORY[0x20F2E7A20](v40, v19);
          v43 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            goto LABEL_54;
          }
        }

        else
        {
          if (v40 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_60;
          }

          v42 = *(v19 + 8 * v40 + 32);
          swift_unknownObjectRetain();
          v43 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
LABEL_54:
            __break(1u);
            goto LABEL_55;
          }
        }

        v44 = [(objc_class *)v49 startDate];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        isa = Date._bridgeToObjectiveC()().super.isa;
        (*v41)(v5, v50);
        [v42 didEnterNewLeg:v48 date:isa];
        swift_unknownObjectRelease();

        ++v40;
      }

      while (v43 != v39);
    }
  }
}

uint64_t specialized MultiSportWorkoutTracker.metadataKeysToDelete.getter()
{
  v20 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 6, 0);
  v0 = 0;
  result = v20;
  v2 = ", alertMessage: ";
  v3 = "ansitionUUIDString";
  v4 = "taAutoTransitionLastTime";
  do
  {
    v5 = outlined read-only object #0 of MultiSportWorkoutTracker.metadataKeysToDelete.getter[v0 + 32];
    v6 = 0xD000000000000031;
    v7 = 0xD00000000000002CLL;
    if (v5 == 4)
    {
      v8 = v4;
    }

    else
    {
      v7 = 0xD000000000000028;
      v8 = "taAutoTransitionLastDistance";
    }

    if (v5 == 3)
    {
      v7 = 0xD000000000000028;
      v8 = v3;
    }

    v9 = 0xD00000000000002FLL;
    if (v5 == 1)
    {
      v10 = "his point in the configs";
    }

    else
    {
      v9 = 0xD000000000000032;
      v10 = "ansitionStartDate";
    }

    if (outlined read-only object #0 of MultiSportWorkoutTracker.metadataKeysToDelete.getter[v0 + 32])
    {
      v6 = v9;
      v11 = v10;
    }

    else
    {
      v11 = v2;
    }

    if (outlined read-only object #0 of MultiSportWorkoutTracker.metadataKeysToDelete.getter[v0 + 32] <= 2u)
    {
      v12 = v6;
    }

    else
    {
      v12 = v7;
    }

    if (outlined read-only object #0 of MultiSportWorkoutTracker.metadataKeysToDelete.getter[v0 + 32] <= 2u)
    {
      v13 = v11;
    }

    else
    {
      v13 = v8;
    }

    v21 = result;
    v15 = *(result + 16);
    v14 = *(result + 24);
    if (v15 >= v14 >> 1)
    {
      v18 = v3;
      v19 = v2;
      v17 = v4;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      v4 = v17;
      v3 = v18;
      v2 = v19;
      result = v21;
    }

    ++v0;
    *(result + 16) = v15 + 1;
    v16 = result + 16 * v15;
    *(v16 + 32) = v12;
    *(v16 + 40) = v13 | 0x8000000000000000;
  }

  while (v0 != 6);
  return result;
}

uint64_t type metadata accessor for MultiSportWorkoutTracker()
{
  result = type metadata singleton initialization cache for MultiSportWorkoutTracker;
  if (!type metadata singleton initialization cache for MultiSportWorkoutTracker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized Collection.dropLast(_:)(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = a2;
  v3 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_13:
    v8 = result;
    result = __CocoaSet.count.getter();
    v9 = result - v8;
    if (__OFSUB__(result, v8))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v10 = __CocoaSet.count.getter();
    result = __CocoaSet.count.getter();
    if (result < 0)
    {
LABEL_27:
      __break(1u);
      return result;
    }

    if (v9 <= v10)
    {
      v11 = v9 & ~(v9 >> 63);
    }

    else
    {
      v11 = v10;
    }

    if (v10 < 0 || v9 < 1)
    {
      v5 = v9 & ~(v9 >> 63);
    }

    else
    {
      v5 = v11;
    }

    result = __CocoaSet.count.getter();
    if (result >= v5)
    {
      goto LABEL_4;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = (v4 - result) & ~((v4 - result) >> 63);
  if (v4 < v5)
  {
    goto LABEL_25;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) != 0 && v5)
  {
    _sSo17OS_dispatch_queueCMaTm_12(0, &lazy cache variable for type metadata for HKWorkoutActivity, 0x277CCDBF0);

    v6 = 0;
    do
    {
      v7 = v6 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v6);
      v6 = v7;
    }

    while (v5 != v7);
    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }
  }

  else
  {

    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return _CocoaArrayWrapper.subscript.getter();
}

uint64_t _s10Foundation4DateVSgWOdTm_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t _s10Foundation4DateVSgWOcTm_4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10Foundation4DateVSgWOhTm_7(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t keypath_get_21Tm_0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a3 = result;
  return result;
}

uint64_t keypath_set_22Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

void type metadata completion function for MultiSportWorkoutTracker()
{
  type metadata accessor for Date?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t partial apply for closure #2 in MultiSportWorkoutTracker.startEndWorkoutTimer(fromDate:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t VerticalOscillationAccumulator.currentVerticalOscillation.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___NLVerticalOscillationAccumulator_currentVerticalOscillation;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t VerticalOscillationAccumulator.currentVerticalOscillation.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t VerticalOscillationAccumulator.averageVerticalOscillation.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___NLVerticalOscillationAccumulator_averageVerticalOscillation;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

void key path setter for VerticalOscillationAccumulator.invalidationTimer : VerticalOscillationAccumulator(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLVerticalOscillationAccumulator_invalidationTimer;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *VerticalOscillationAccumulator.invalidationTimer.getter()
{
  v1 = OBJC_IVAR___NLVerticalOscillationAccumulator_invalidationTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void VerticalOscillationAccumulator.invalidationTimer.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___NLVerticalOscillationAccumulator_invalidationTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall VerticalOscillationAccumulator.update(statistics:)(HKStatistics statistics)
{
  v2 = v1;
  v4 = [(objc_class *)statistics.super.isa mostRecentQuantity];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() meterUnit];
    [v5 doubleValueForUnit_];
    v8 = v7;

    v9 = &v2[OBJC_IVAR___NLVerticalOscillationAccumulator_currentVerticalOscillation];
    swift_beginAccess();
    *v9 = v8;
    v9[8] = 0;
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static WOLog.app);
    v11 = v2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v37 = v15;
      *v14 = 136315138;
      v16 = v9[8];
      v39[1] = *v9;
      v40 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
      v17 = Optional.description.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v37);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_20AEA4000, v12, v13, "Current VerticalOscillation quantity received: %s meters", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x20F2E9420](v15, -1, -1);
      MEMORY[0x20F2E9420](v14, -1, -1);
    }
  }

  v20 = [(objc_class *)statistics.super.isa averageQuantity];
  if (v20)
  {
    v21 = v20;
    v22 = [objc_opt_self() meterUnit];
    [v21 doubleValueForUnit_];
    v24 = v23;

    v25 = &v2[OBJC_IVAR___NLVerticalOscillationAccumulator_averageVerticalOscillation];
    swift_beginAccess();
    *v25 = v24;
    v25[8] = 0;
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static WOLog.app);
    v27 = v2;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39[0] = v31;
      *v30 = 136315138;
      v32 = v25[8];
      v37 = *v25;
      v38 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
      v33 = Optional.description.getter();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v39);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_20AEA4000, v28, v29, "Average VerticalOscillation quantity received: %s meters", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x20F2E9420](v31, -1, -1);
      MEMORY[0x20F2E9420](v30, -1, -1);
    }
  }

  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();

  specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(partial apply for closure #1 in VerticalOscillationAccumulator.update(statistics:), v36);

  [v2 update];
}

void closure #1 in VerticalOscillationAccumulator.update(statistics:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong + OBJC_IVAR___NLVerticalOscillationAccumulator_currentVerticalOscillation;
    v2 = Strong;
    swift_beginAccess();
    *v1 = 0;
    *(v1 + 8) = 1;
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    [v3 update];
  }
}

id VerticalOscillationAccumulator.__allocating_init(builder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBuilder_];

  return v3;
}

id VerticalOscillationAccumulator.init(builder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR___NLVerticalOscillationAccumulator_currentVerticalOscillation];
  *v3 = 0;
  v3[8] = 1;
  v4 = &v1[OBJC_IVAR___NLVerticalOscillationAccumulator_averageVerticalOscillation];
  *v4 = 0;
  v4[8] = 1;
  *&v1[OBJC_IVAR___NLVerticalOscillationAccumulator_invalidationTimer] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for VerticalOscillationAccumulator();
  v5 = objc_msgSendSuper2(&v7, sel_initWithBuilder_, a1);

  return v5;
}

id VerticalOscillationAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VerticalOscillationAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for VerticalOscillationProvider.currentVerticalOscillation.getter in conformance VerticalOscillationAccumulator(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (*v3 + *a3);
  swift_beginAccess();
  result = *v4;
  v6 = *(v4 + 8);
  return result;
}

void *protocol witness for InvalidationTimerProtocol.invalidationTimer.getter in conformance VerticalOscillationAccumulator()
{
  v1 = OBJC_IVAR___NLVerticalOscillationAccumulator_invalidationTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void protocol witness for InvalidationTimerProtocol.invalidationTimer.setter in conformance VerticalOscillationAccumulator(uint64_t a1)
{
  v3 = OBJC_IVAR___NLVerticalOscillationAccumulator_invalidationTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t keypath_getTm_1@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1 + *a2;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a3 = *v4;
  *(a3 + 8) = v6;
  return result;
}

uint64_t keypath_setTm_2(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a2 + *a5;
  result = swift_beginAccess();
  *v7 = v5;
  *(v7 + 8) = v6;
  return result;
}

uint64_t static PacerDistanceGoalProgressAccumulatorFactory.make(builder:configuration:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for PacerWorkoutConfiguration();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = objc_allocWithZone(type metadata accessor for PacerDistanceGoalProgressAccumulator());
    v7 = v3;
    v8 = a1;
    v9 = specialized PacerDistanceGoalProgressAccumulator.init(builder:workoutConfiguration:)(v8, v5);

    return v9;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id PacerDistanceGoalProgressAccumulatorFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PacerDistanceGoalProgressAccumulatorFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PacerDistanceGoalProgressAccumulatorFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PacerDistanceGoalProgressAccumulatorFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PacerDistanceGoalProgressAccumulatorFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t StrideLengthAccumulator.currentStrideLength.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___NLStrideLengthAccumulator_currentStrideLength;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t StrideLengthAccumulator.currentStrideLength.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t StrideLengthAccumulator.averageStrideLength.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___NLStrideLengthAccumulator_averageStrideLength;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

void key path setter for StrideLengthAccumulator.invalidationTimer : StrideLengthAccumulator(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLStrideLengthAccumulator_invalidationTimer;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *StrideLengthAccumulator.invalidationTimer.getter()
{
  v1 = OBJC_IVAR___NLStrideLengthAccumulator_invalidationTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void StrideLengthAccumulator.invalidationTimer.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___NLStrideLengthAccumulator_invalidationTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall StrideLengthAccumulator.update(statistics:)(HKStatistics statistics)
{
  v2 = v1;
  v4 = [(objc_class *)statistics.super.isa mostRecentQuantity];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() meterUnit];
    [v5 doubleValueForUnit_];
    v8 = v7;

    v9 = &v2[OBJC_IVAR___NLStrideLengthAccumulator_currentStrideLength];
    swift_beginAccess();
    *v9 = v8;
    v9[8] = 0;
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static WOLog.app);
    v11 = v2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v37 = v15;
      *v14 = 136315138;
      v16 = v9[8];
      v39[1] = *v9;
      v40 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
      v17 = Optional.description.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v37);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_20AEA4000, v12, v13, "Current StrideLength quantity received: %s meters", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x20F2E9420](v15, -1, -1);
      MEMORY[0x20F2E9420](v14, -1, -1);
    }
  }

  v20 = [(objc_class *)statistics.super.isa averageQuantity];
  if (v20)
  {
    v21 = v20;
    v22 = [objc_opt_self() meterUnit];
    [v21 doubleValueForUnit_];
    v24 = v23;

    v25 = &v2[OBJC_IVAR___NLStrideLengthAccumulator_averageStrideLength];
    swift_beginAccess();
    *v25 = v24;
    v25[8] = 0;
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static WOLog.app);
    v27 = v2;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39[0] = v31;
      *v30 = 136315138;
      v32 = v25[8];
      v37 = *v25;
      v38 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
      v33 = Optional.description.getter();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v39);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_20AEA4000, v28, v29, "Average StrideLength quantity received: %s meters", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x20F2E9420](v31, -1, -1);
      MEMORY[0x20F2E9420](v30, -1, -1);
    }
  }

  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();

  specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(partial apply for closure #1 in StrideLengthAccumulator.update(statistics:), v36);

  [v2 update];
}

void closure #1 in StrideLengthAccumulator.update(statistics:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong + OBJC_IVAR___NLStrideLengthAccumulator_currentStrideLength;
    v2 = Strong;
    swift_beginAccess();
    *v1 = 0;
    *(v1 + 8) = 1;
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    [v3 update];
  }
}

id StrideLengthAccumulator.__allocating_init(builder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBuilder_];

  return v3;
}

id StrideLengthAccumulator.init(builder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR___NLStrideLengthAccumulator_currentStrideLength];
  *v3 = 0;
  v3[8] = 1;
  v4 = &v1[OBJC_IVAR___NLStrideLengthAccumulator_averageStrideLength];
  *v4 = 0;
  v4[8] = 1;
  *&v1[OBJC_IVAR___NLStrideLengthAccumulator_invalidationTimer] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for StrideLengthAccumulator();
  v5 = objc_msgSendSuper2(&v7, sel_initWithBuilder_, a1);

  return v5;
}

id StrideLengthAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StrideLengthAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for StrideLengthProvider.currentStrideLength.getter in conformance StrideLengthAccumulator(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (*v3 + *a3);
  swift_beginAccess();
  result = *v4;
  v6 = *(v4 + 8);
  return result;
}

void *protocol witness for InvalidationTimerProtocol.invalidationTimer.getter in conformance StrideLengthAccumulator()
{
  v1 = OBJC_IVAR___NLStrideLengthAccumulator_invalidationTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void protocol witness for InvalidationTimerProtocol.invalidationTimer.setter in conformance StrideLengthAccumulator(uint64_t a1)
{
  v3 = OBJC_IVAR___NLStrideLengthAccumulator_invalidationTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t keypath_getTm_2@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1 + *a2;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a3 = *v4;
  *(a3 + 8) = v6;
  return result;
}

uint64_t keypath_setTm_3(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a2 + *a5;
  result = swift_beginAccess();
  *v7 = v5;
  *(v7 + 8) = v6;
  return result;
}

id static PrecisionStartChecker.fakePrecisionStart()()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B45ED90);
  v2 = [v0 BOOLForKey_];

  return v2;
}

uint64_t specialized static PrecisionStartChecker.usePrecisionStart(startSource:domainAccessor:)(unint64_t a1, id a2)
{
  if (one-time initialization token for precisionStart != -1)
  {
    v8 = a2;
    swift_once();
    a2 = v8;
  }

  if (static DeviceFeatures.precisionStart != 1 || ([a2 isPrecisionStartEnabled] & 1) == 0)
  {
    v3 = [objc_opt_self() standardUserDefaults];
    v4 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B45ED90);
    v5 = [v3 BOOLForKey_];

    if (!v5)
    {
      LOBYTE(v6) = 0;
      return v6 & 1;
    }
  }

  if (a1 < 0x19)
  {
    v6 = 0x18DC05Eu >> a1;
    return v6 & 1;
  }

  _StringGuts.grow(_:)(56);
  MEMORY[0x20F2E6D80](0xD000000000000036, 0x800000020B45EE10);
  type metadata accessor for NLWorkoutStartSource(0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

BOOL static DataLinkMirroredHostExpected.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
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

uint64_t DataLinkMirroredHostExpected.hash(into:)()
{
  v1 = *v0;
  if (v0[1] < 0)
  {
    v3 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore29MirroredClientMessageProtocol_pXpMd, &_s11WorkoutCore29MirroredClientMessageProtocol_pXpMR);
    String.init<A>(describing:)();
  }

  String.hash(into:)();
}

uint64_t DataLinkMirroredHostExpected.description.getter()
{
  if (v0[1] < 0)
  {
    v2 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore29MirroredClientMessageProtocol_pXpMd, &_s11WorkoutCore29MirroredClientMessageProtocol_pXpMR);
    return String.init<A>(describing:)();
  }

  else if (*v0)
  {
    if (*v0 == 1)
    {
      return 0xD000000000000023;
    }

    else
    {
      return 0x70736552676E6970;
    }
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t DataLinkMirroredHostExpected.hashValue.getter()
{
  v2 = *v0;
  lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();
  return dispatch thunk of Hashable._rawHashValue(seed:)();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DataLinkMirroredHostExpected()
{
  v1 = *v0;
  if (v0[1] < 0)
  {
    v3 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore29MirroredClientMessageProtocol_pXpMd, &_s11WorkoutCore29MirroredClientMessageProtocol_pXpMR);
    String.init<A>(describing:)();
  }

  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DataLinkMirroredHostExpected()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2 < 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore29MirroredClientMessageProtocol_pXpMd, &_s11WorkoutCore29MirroredClientMessageProtocol_pXpMR);
    String.init<A>(describing:)();
  }

  String.hash(into:)();

  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance DataLinkMirroredHostExpected(uint64_t *a1, uint64_t *a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DataLinkMirroredHostExpected()
{
  if (v0[1] < 0)
  {
    v2 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore29MirroredClientMessageProtocol_pXpMd, &_s11WorkoutCore29MirroredClientMessageProtocol_pXpMR);
    return String.init<A>(describing:)();
  }

  else if (*v0)
  {
    if (*v0 == 1)
    {
      return 0xD000000000000023;
    }

    else
    {
      return 0x70736552676E6970;
    }
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

__n128 DataLinkMirroredHostExpectation.expected.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t DataLinkMirroredHostExpectation.created.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DataLinkMirroredHostExpectation() + 24);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DataLinkMirroredHostExpectation.init(expected:timeout:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a2 + *(type metadata accessor for DataLinkMirroredHostExpectation() + 24);
  result = static Date.now.getter();
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = a3;
  return result;
}

uint64_t DataLinkMirroredHostExpectation.description.getter()
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
  LODWORD(v3) = *(type metadata accessor for DataLinkMirroredHostExpectation() + 24);
  Date.timeIntervalSinceReferenceDate.getter();
  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  MEMORY[0x20F2E6D80](0x6465746365707865, 0xEA0000000000203ALL);
  v16 = *v1;
  lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();
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

Swift::Int MirroredHostWorkoutSessionStartedTimeoutAction.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredHostWorkoutSessionStartedTimeoutAction()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredHostWorkoutSessionStartedTimeoutAction()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t type metadata accessor for DataLinkMirroredHostExpectation()
{
  result = type metadata singleton initialization cache for DataLinkMirroredHostExpectation;
  if (!type metadata singleton initialization cache for DataLinkMirroredHostExpectation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MirroredHostWorkoutSessionStartedTimeoutAction and conformance MirroredHostWorkoutSessionStartedTimeoutAction()
{
  result = lazy protocol witness table cache variable for type MirroredHostWorkoutSessionStartedTimeoutAction and conformance MirroredHostWorkoutSessionStartedTimeoutAction;
  if (!lazy protocol witness table cache variable for type MirroredHostWorkoutSessionStartedTimeoutAction and conformance MirroredHostWorkoutSessionStartedTimeoutAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostWorkoutSessionStartedTimeoutAction and conformance MirroredHostWorkoutSessionStartedTimeoutAction);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataLinkMirroredHostExpected(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DataLinkMirroredHostExpected(uint64_t result, unsigned int a2, unsigned int a3)
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

void *destructiveInjectEnumTag for DataLinkMirroredHostExpected(void *result, uint64_t a2)
{
  v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *result &= 0xFFFFFFFFFFFFFFBuLL;
  result[1] = v2;
  return result;
}

uint64_t type metadata completion function for DataLinkMirroredHostExpectation()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MirroredHostWorkoutSessionStartedTimeoutAction(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MirroredHostWorkoutSessionStartedTimeoutAction(uint64_t result, unsigned int a2, unsigned int a3)
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

Swift::Void __swiftcall LocationRequest.start()()
{
  v1 = v0[2];
  v2 = v0[5];
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = objc_allocWithZone(type metadata accessor for GCDTimer());
  swift_retain_n();
  v5 = GCDTimer.init(timeInterval:queue:completion:)(v2, partial apply for closure #1 in LocationRequest.start(), v3);
  v6 = v5;
  if (*&v5[OBJC_IVAR____TtC11WorkoutCore8GCDTimer_source])
  {
    v7 = *&v5[OBJC_IVAR____TtC11WorkoutCore8GCDTimer_source];
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.resume()();
    swift_unknownObjectRelease();
  }

  v8 = v0[8];
  v0[8] = v6;
}

uint64_t closure #1 in LocationRequest.start()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12[1] = *(result + 40);
    aBlock[4] = partial apply for closure #1 in closure #1 in LocationRequest.start();
    aBlock[5] = result;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_33;
    v11 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v12[2] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v9, v4, v11);
    _Block_release(v11);
    (*(v1 + 8))(v4, v0);
    (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t closure #1 in closure #1 in LocationRequest.start()(void *a1)
{
  if (one-time initialization token for location != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.location);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = a1[2];
    _os_log_impl(&dword_20AEA4000, v3, v4, "Failed to retrieve a location within the specified timeout: %f", v5, 0xCu);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  v6 = a1[9];
  if (v6)
  {
    v7 = a1[10];

    v6(0);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed CLLocation?) -> ())?(v6);
    v8 = a1[9];
  }

  else
  {
    v8 = 0;
  }

  v9 = a1[10];
  a1[9] = 0;
  a1[10] = 0;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed CLLocation?) -> ())?(v8);
  v10 = a1[8];
  a1[8] = 0;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    LocationManager.requestDidTimeout(request:)(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Bool __swiftcall LocationRequest.received(_:)(CLLocation_optional a1)
{
  v3 = v1;
  isa = a1.value.super.isa;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + 5);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_6;
  }

  if (isa)
  {
    [(objc_class *)isa horizontalAccuracy];
    v2 = v12;
  }

  else
  {
    v2 = 1.79769313e308;
  }

  if (one-time initialization token for location != -1)
  {
    goto LABEL_18;
  }

LABEL_6:
  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static WOLog.location);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134218240;
    *(v16 + 4) = v2;
    *(v16 + 12) = 2048;
    *(v16 + 14) = v3[4];
    _os_log_impl(&dword_20AEA4000, v14, v15, "Received location with accuracy: %f threshold: %f", v16, 0x16u);
    MEMORY[0x20F2E9420](v16, -1, -1);
  }

  v17 = v3[4];
  if (v2 <= v17)
  {
    v18 = *(v3 + 9);
    if (v18)
    {
      v19 = *(v3 + 10);

      v18(isa);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed CLLocation?) -> ())?(v18);
      v20 = *(v3 + 9);
    }

    else
    {
      v20 = 0;
    }

    v21 = *(v3 + 10);
    v3[9] = 0.0;
    v3[10] = 0.0;
    outlined consume of (@escaping @callee_guaranteed (@guaranteed CLLocation?) -> ())?(v20);
    v22 = *(v3 + 8);
    if (v22)
    {
      v23 = OBJC_IVAR____TtC11WorkoutCore8GCDTimer_source;
      if (*&v22[OBJC_IVAR____TtC11WorkoutCore8GCDTimer_source])
      {
        v24 = *&v22[OBJC_IVAR____TtC11WorkoutCore8GCDTimer_source];
        swift_getObjectType();
        v25 = v22;
        swift_unknownObjectRetain();
        OS_dispatch_source.cancel()();
        swift_unknownObjectRelease();
        v26 = *&v22[v23];
        *&v22[v23] = 0;

        swift_unknownObjectRelease();
        v22 = *(v3 + 8);
      }
    }

    v3[8] = 0.0;
  }

  return v2 <= v17;
}

uint64_t LocationRequest.deinit()
{
  outlined destroy of weak LocationRequestDelegate?(v0 + 48);

  v1 = *(v0 + 80);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed CLLocation?) -> ())?(*(v0 + 72));
  return v0;
}

uint64_t LocationRequest.__deallocating_deinit()
{
  outlined destroy of weak LocationRequestDelegate?(v0 + 48);

  v1 = *(v0 + 80);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed CLLocation?) -> ())?(*(v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@guaranteed CLLocation?) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LocationManager.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LocationManager.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LocationManager.State@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized LocationManager.State.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id one-time initialization function for shared()
{
  result = [objc_allocWithZone(type metadata accessor for LocationManager()) init];
  static LocationManager.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for WorkoutDevicesProvider()) init];
  static WorkoutDevicesProvider.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for UserDevicesBehaviors()) init];
  static UserDevicesBehaviors.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for TaskFinalizer()) init];
  static TaskFinalizer.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for Chronicle()) init];
  static Chronicle.shared = result;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B440990;
  type metadata accessor for WorkoutIntervalSignpost();
  v1 = swift_allocObject();
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 56) = 0;
  *(v1 + 16) = "StartWorkoutSessionUntilStateRunning";
  *(v1 + 24) = 36;
  *(v1 + 32) = 2;
  *(v1 + 40) = xmmword_20B4322F0;
  *(inited + 32) = v1;
  v2 = swift_allocObject();
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 56) = 0;
  *(v2 + 16) = "BuilderRequestedCollectingUntilDidBeginCollecting";
  *(v2 + 24) = 49;
  *(v2 + 32) = 2;
  *(v2 + 40) = xmmword_20B443F80;
  *(inited + 40) = v2;
  v3 = swift_allocObject();
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 56) = 0;
  *(v3 + 16) = "EndingWorkoutSessionUntilEnded";
  *(v3 + 24) = 30;
  *(v3 + 32) = 2;
  *(v3 + 40) = xmmword_20B443F90;
  *(inited + 48) = v3;
  v4 = swift_allocObject();
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 56) = 0;
  *(v4 + 16) = "StartWorkoutSessionUntilFirstHKHeartRateSample";
  *(v4 + 24) = 46;
  *(v4 + 32) = 2;
  *(v4 + 40) = xmmword_20B440A60;
  *(inited + 56) = v4;
  v5 = swift_allocObject();
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 56) = 0;
  *(v5 + 16) = "StartWorkoutSessionUntilMediaHandleIntentCompleted";
  *(v5 + 24) = 50;
  *(v5 + 32) = 2;
  *(v5 + 40) = xmmword_20B443FA0;
  *(inited + 64) = v5;
  v6 = swift_allocObject();
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 56) = 0;
  *(v6 + 16) = "StateRunningUntilMediaHandleIntentCompleted";
  *(v6 + 24) = 43;
  *(v6 + 32) = 2;
  *(v6 + 40) = xmmword_20B443FB0;
  *(inited + 72) = v6;
  v7 = swift_allocObject();
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = 0;
  *(v7 + 16) = "MediaHandleCalledUntilCompleted";
  *(v7 + 24) = 31;
  *(v7 + 32) = 2;
  *(v7 + 40) = xmmword_20B443FC0;
  *(inited + 80) = v7;
  v8 = swift_allocObject();
  *(v8 + 64) = 0;
  *(v8 + 72) = 0;
  *(v8 + 56) = 0;
  *(v8 + 16) = "MirroredStartWorkoutSessionUntilStartCountdown";
  *(v8 + 24) = 46;
  *(v8 + 32) = 2;
  *(v8 + 40) = xmmword_20B443FD0;
  *(inited + 88) = v8;
  v9 = objc_allocWithZone(type metadata accessor for WorkoutSignposter());
  result = WorkoutSignposter.init(intervalSignposts:)(inited);
  static WorkoutSignposter.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for TrackRunningCoordinator()) init];
  static TrackRunningCoordinator.shared = result;
  return result;
}

id static LocationManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static LocationManager.shared;

  return v1;
}

void *LocationManager.lastLocation.getter()
{
  v1 = OBJC_IVAR___WOCoreLocationManager_lastLocation;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void key path setter for LocationManager.lastLocation : LocationManager(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOCoreLocationManager_lastLocation;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t LocationManager.lastLocationReceivedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___WOCoreLocationManager_lastLocationReceivedDate;
  swift_beginAccess();
  return outlined init with copy of Date?(v1 + v3, a1);
}

uint64_t key path setter for LocationManager.lastLocationReceivedDate : LocationManager(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of Date?(a1, &v11 - v6);
  v8 = *a2;
  v9 = OBJC_IVAR___WOCoreLocationManager_lastLocationReceivedDate;
  swift_beginAccess();
  outlined assign with take of Date?(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t LocationManager.currentState.getter()
{
  v10 = 0;
  v1 = *&v0[OBJC_IVAR___WOCoreLocationManager_queue];
  v2 = swift_allocObject();
  *(v2 + 16) = &v10;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in LocationManager.currentState.getter;
  *(v3 + 24) = v2;
  aBlock[4] = _sIg_Ieg_TRTA_1;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_34;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

char *LocationManager.().init()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v2 - 8);
  v39 = v2;
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2);
  v37 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v33 = *(v5 - 8);
  v34 = v5;
  v6 = *(v33 + 64);
  MEMORY[0x28223BE20](v5);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = type metadata accessor for DispatchQoS();
  v35 = *(v10 - 8);
  v36 = v10;
  v11 = *(v35 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR___WOCoreLocationManager_lastLocation] = 0;
  v14 = OBJC_IVAR___WOCoreLocationManager_lastLocationReceivedDate;
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 56))(&v0[v14], 1, 1, v15);
  *&v0[OBJC_IVAR___WOCoreLocationManager_locationManager] = 0;
  v16 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR___WOCoreLocationManager__observers] = MEMORY[0x277D84F90];
  if (one-time initialization token for location != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static WOLog.location);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_20AEA4000, v18, v19, "[Location Manager] Initializing LocationManager", v20, 2u);
    MEMORY[0x20F2E9420](v20, -1, -1);
  }

  *&v1[OBJC_IVAR___WOCoreLocationManager_state] = 0;
  *&v1[OBJC_IVAR___WOCoreLocationManager_locationRequests] = v16;
  _sSo10CLLocationCMaTm_1(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = v16;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v33 + 104))(v32, *MEMORY[0x277D85260], v34);
  *&v1[OBJC_IVAR___WOCoreLocationManager_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v21 = type metadata accessor for LocationManager();
  v42.receiver = v1;
  v42.super_class = v21;
  v22 = objc_msgSendSuper2(&v42, sel_init);
  v23 = *&v22[OBJC_IVAR___WOCoreLocationManager_queue];
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  aBlock[4] = partial apply for closure #1 in LocationManager.().init();
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_55_0;
  v25 = _Block_copy(aBlock);
  v26 = v22;
  v27 = v23;
  static DispatchQoS.unspecified.getter();
  v40 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v28 = v37;
  v29 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v13, v28, v25);
  _Block_release(v25);

  (*(v38 + 8))(v28, v29);
  (*(v35 + 8))(v13, v36);

  return v26;
}

void closure #1 in LocationManager.().init()(uint64_t a1)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = *(a1 + OBJC_IVAR___WOCoreLocationManager_queue);
    v8 = MEMORY[0x20F2E6C00](v4, v6);
  }

  else
  {
    v7 = *(a1 + OBJC_IVAR___WOCoreLocationManager_queue);
    v8 = 0;
  }

  v9 = [objc_allocWithZone(MEMORY[0x277CBFC10]) initWithEffectiveBundleIdentifier:v8 delegate:a1 onQueue:v7];

  v10 = OBJC_IVAR___WOCoreLocationManager_locationManager;
  v11 = *(a1 + OBJC_IVAR___WOCoreLocationManager_locationManager);
  *(a1 + OBJC_IVAR___WOCoreLocationManager_locationManager) = v9;
  v12 = v9;

  if (v12)
  {
    [v12 setAllowsBackgroundLocationUpdates_];
  }

  v13 = *(a1 + v10);
  if (v13)
  {
    v17 = v13;
    [v17 setTrackRunInfoEnabled:1];
    [v17 setActivityType:3];
    LocationManager.configureLocationUpdates()();
  }

  else
  {
    if (one-time initialization token for location != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static WOLog.location);
    v17 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20AEA4000, v17, v15, "[Location Manager] Failed to construct a location manager", v16, 2u);
      MEMORY[0x20F2E9420](v16, -1, -1);
    }
  }
}

void closure #1 in LocationManager.add(observer:)(uint64_t a1, unint64_t a2)
{
  if (one-time initialization token for location != -1)
  {
LABEL_23:
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.location);
  swift_unknownObjectRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore23LocationManagerObserver_pMd, &_s11WorkoutCore23LocationManagerObserver_pMR);
    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v24);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_20AEA4000, v4, v5, "[Location Manager] Adding observer: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  v11 = OBJC_IVAR___WOCoreLocationManager__observers;
  swift_beginAccess();
  v12 = *(a2 + v11);
  v22 = MEMORY[0x277D84F90];
  if (v12 >> 62)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  a2 = MEMORY[0x277D84F90];
  while (v13 != v14)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v14, v12);
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v15 = *(v12 + 8 * v14 + 32);

      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    ++v14;
    if (Strong)
    {
      MEMORY[0x20F2E6F30](v18);
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v19 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      a2 = v22;
      v14 = v16;
    }
  }

  v23 = a2;
  v20 = swift_unknownObjectRetain();
  MEMORY[0x20F2E6F30](v20);
  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized WeakCollection.wrappedValue.setter(v23);
  swift_endAccess();
  LocationManager.configureLocationAccuracy()();
  LocationManager.configureLocationUpdates()();
}

void closure #1 in LocationManager.remove(observer:)(unint64_t a1, unint64_t a2)
{
  if (one-time initialization token for location != -1)
  {
LABEL_24:
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.location);
  swift_unknownObjectRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = a1;
    v25 = v8;
    *v7 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore23LocationManagerObserver_pMd, &_s11WorkoutCore23LocationManagerObserver_pMR);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v25);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_20AEA4000, v5, v6, "[Location Manager] Removing observer: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v12 = OBJC_IVAR___WOCoreLocationManager__observers;
  swift_beginAccess();
  v13 = *(a2 + v12);
  v24 = MEMORY[0x277D84F90];
  if (v13 >> 62)
  {
    v14 = __CocoaSet.count.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a2 = v13 & 0xC000000000000001;
  v15 = a1;
  swift_unknownObjectRetain();
  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  while (v14 != v16)
  {
    if (a2)
    {
      MEMORY[0x20F2E7A20](v16, v13);
      a1 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v18 = *(v13 + 8 * v16 + 32);

      a1 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    ++v16;
    if (Strong)
    {
      MEMORY[0x20F2E6F30](v20);
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v21 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v17 = v24;
      v16 = a1;
    }
  }

  v24 = v17;
  swift_unknownObjectRetain();
  v22 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v24, v15);
  swift_unknownObjectRelease();
  if (v24 >> 62)
  {
    v23 = __CocoaSet.count.getter();
  }

  else
  {
    v23 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v23 < v22)
  {
    __break(1u);
  }

  else
  {
    specialized Array.replaceSubrange<A>(_:with:)(v22, v23);
    specialized WeakCollection.wrappedValue.setter(v24);
    swift_endAccess();
    swift_unknownObjectRelease();
    LocationManager.configureLocationAccuracy()();
    LocationManager.configureLocationUpdates()();
  }
}

void @objc LocationManager.add(observer:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, id))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3, v7);
  swift_unknownObjectRelease();
}

uint64_t LocationManager.requestSingleLocationUpdate(timeout:requestedAccuracy:acceptableAccuracy:completion:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v16 = *(v25 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v25);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = *&v5[OBJC_IVAR___WOCoreLocationManager_queue];
  v20 = swift_allocObject();
  *(v20 + 16) = v5;
  *(v20 + 24) = a1;
  *(v20 + 32) = a2;
  *(v20 + 40) = a3;
  *(v20 + 48) = a4;
  *(v20 + 56) = a5;
  aBlock[4] = partial apply for closure #1 in LocationManager.requestSingleLocationUpdate(timeout:requestedAccuracy:acceptableAccuracy:completion:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_9_3;
  v21 = _Block_copy(aBlock);
  v22 = v5;

  static DispatchQoS.unspecified.getter();
  v26 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v19, v15, v21);
  _Block_release(v21);
  (*(v12 + 8))(v15, v11);
  (*(v16 + 8))(v19, v25);
}

void closure #1 in LocationManager.requestSingleLocationUpdate(timeout:requestedAccuracy:acceptableAccuracy:completion:)(uint64_t a1, void (*a2)(void), uint64_t a3, double a4, double a5, double a6)
{
  v8 = *(a1 + OBJC_IVAR___WOCoreLocationManager_locationManager);
  if (v8)
  {
    v25 = v8;
    if ([v25 authorizationStatus] == 4 || objc_msgSend(v25, sel_authorizationStatus) == 3)
    {
      if (one-time initialization token for location != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static WOLog.location);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 134217984;
        *(v16 + 4) = a4;
        _os_log_impl(&dword_20AEA4000, v14, v15, "[Location Manager] Requesting location with timeout: %f", v16, 0xCu);
        MEMORY[0x20F2E9420](v16, -1, -1);
      }

      v17 = *(a1 + OBJC_IVAR___WOCoreLocationManager_queue);
      type metadata accessor for LocationRequest();
      v18 = swift_allocObject();
      *(v18 + 56) = 0;
      swift_unknownObjectWeakInit();
      *(v18 + 72) = 0;
      *(v18 + 80) = 0;
      *(v18 + 16) = a4;
      *(v18 + 24) = a5;
      *(v18 + 32) = a6;
      *(v18 + 40) = v17;
      *(v18 + 56) = &protocol witness table for LocationManager;
      *(v18 + 64) = 0;
      swift_unknownObjectWeakAssign();
      v19 = *(v18 + 72);
      v20 = *(v18 + 80);
      *(v18 + 72) = a2;
      *(v18 + 80) = a3;
      v21 = v17;
      outlined consume of (@escaping @callee_guaranteed (@guaranteed CLLocation?) -> ())?(v19);
      v22 = OBJC_IVAR___WOCoreLocationManager_locationRequests;
      swift_beginAccess();

      MEMORY[0x20F2E6F30](v23);
      if (*((*(a1 + v22) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + v22) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v24 = *((*(a1 + v22) & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      LocationManager.configureLocationAccuracy()();
      [v25 requestLocation];
      LocationRequest.start()();
    }

    else
    {
      a2(0);
    }
  }

  else
  {
    a2(0);
  }
}

uint64_t LocationManager.isAuthorizedAsync(_:)(uint64_t a1, uint64_t a2)
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
  v18[1] = *&v2[OBJC_IVAR___WOCoreLocationManager_queue];
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = partial apply for closure #1 in LocationManager.isAuthorizedAsync(_:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_15_3;
  v15 = _Block_copy(aBlock);
  v16 = v2;

  static DispatchQoS.unspecified.getter();
  v20 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v19);
}

void closure #1 in LocationManager.isAuthorizedAsync(_:)(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = *(a1 + OBJC_IVAR___WOCoreLocationManager_locationManager);
  if (!v3)
  {
    a2(0);
    return;
  }

  v6 = v3;
  v4 = [v6 authorizationStatus];
  if (v4 >= 3)
  {
    if (v4 - 3 >= 2)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  a2(v5);
}

Swift::Bool __swiftcall LocationManager.cacheLastKnownLocation(_:)(CLLocation a1)
{
  isa = a1.super.isa;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v29[-v5];
  [(objc_class *)isa horizontalAccuracy];
  v8 = v7;
  if (v7 > 1000.0)
  {
    if (one-time initialization token for location != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static WOLog.location);
    v23 = isa;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      [(objc_class *)v23 horizontalAccuracy];
      *(v26 + 4) = v27;
      _os_log_impl(&dword_20AEA4000, v24, v25, "[Location Manager] Rejected cached location update due to inaccuracy: %fm", v26, 0xCu);
      MEMORY[0x20F2E9420](v26, -1, -1);
    }
  }

  else
  {
    v9 = OBJC_IVAR___WOCoreLocationManager_lastLocation;
    swift_beginAccess();
    v10 = *(v1 + v9);
    *(v1 + v9) = isa;
    v11 = isa;

    v12 = [(objc_class *)v11 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = type metadata accessor for Date();
    (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
    v14 = OBJC_IVAR___WOCoreLocationManager_lastLocationReceivedDate;
    swift_beginAccess();
    outlined assign with take of Date?(v6, v1 + v14);
    swift_endAccess();
    if (one-time initialization token for location != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static WOLog.location);
    v16 = v11;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = isa;
      v21 = v16;
      _os_log_impl(&dword_20AEA4000, v17, v18, "[Location Manager] Updated cached location: %@", v19, 0xCu);
      _sSo8NSObjectCSgWOhTm_4(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v20, -1, -1);
      MEMORY[0x20F2E9420](v19, -1, -1);
    }
  }

  return v8 <= 1000.0;
}

void LocationManager.configureLocationUpdates()()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR___WOCoreLocationManager_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  v9 = _dispatchPreconditionTest(_:)();
  v11 = *(v3 + 8);
  v10 = v3 + 8;
  v11(v6, v2);
  if ((v9 & 1) == 0)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    v13 = __CocoaSet.count.getter();
    goto LABEL_5;
  }

  v10 = *(v0 + OBJC_IVAR___WOCoreLocationManager_locationManager);
  if (!v10)
  {
    return;
  }

  v12 = OBJC_IVAR___WOCoreLocationManager__observers;
  swift_beginAccess();
  v106 = v12;
  v9 = *(v0 + v12);
  v115 = MEMORY[0x277D84F90];
  v111 = v0;
  v1 = v9 & 0xFFFFFFFFFFFFFF8;
  if (v9 >> 62)
  {
    goto LABEL_60;
  }

  v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v107 = v10;

  v10 = 0;
  v14 = MEMORY[0x277D84F90];
  while (v13 != v10)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v10, v9);
      v16 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (v10 >= *(v1 + 16))
      {
        goto LABEL_55;
      }

      v15 = *(v9 + 8 * v10 + 32);

      v16 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    ++v10;
    if (Strong)
    {
      MEMORY[0x20F2E6F30](v18);
      if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v19 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v14 = v115;
      v10 = v16;
    }
  }

  if (v14 >> 62)
  {
    v20 = __CocoaSet.count.getter();
  }

  else
  {
    v20 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = v111;

  LODWORD(v21) = [v107 authorizationStatus];
  if (one-time initialization token for location != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v113 = __swift_project_value_buffer(v22, static WOLog.location);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 67109120;
    *(v25 + 4) = v21;
    _os_log_impl(&dword_20AEA4000, v23, v24, "[Location Manager] configuring state with authorizationStatus: %d", v25, 8u);
    MEMORY[0x20F2E9420](v25, -1, -1);
  }

  if (v20)
  {
    v9 = *(v106 + v10);
    v115 = MEMORY[0x277D84F90];
    LODWORD(v105) = v21;
    if (v9 >> 62)
    {
      v26 = __CocoaSet.count.getter();
    }

    else
    {
      v26 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v1 = v9 & 0xC000000000000001;

    v27 = 0;
    v110 = MEMORY[0x277D84F90];
    while (v26 != v27)
    {
      if (v1)
      {
        LODWORD(v21) = MEMORY[0x20F2E7A20](v27, v9);
        v28 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v27 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }

        v21 = *(v9 + 8 * v27 + 32);

        v28 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_56;
        }
      }

      v10 = swift_unknownObjectWeakLoadStrong();

      ++v27;
      if (v10)
      {
        MEMORY[0x20F2E6F30](v29);
        if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v21 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v110 = v115;
        v27 = v28;
      }
    }

    v104 = v20;

    v9 = v110;
    if (v110 >> 62)
    {
      v31 = __CocoaSet.count.getter();
      if (v31)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v31 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31)
      {
LABEL_40:
        v20 = 0;
        v10 = v9 & 0xC000000000000001;
        v32 = v9 & 0xFFFFFFFFFFFFFF8;
        *&v30 = 136315394;
        v108 = v30;
        v109 = v9 & 0xC000000000000001;
        do
        {
          if (v10)
          {
            v33 = MEMORY[0x20F2E7A20](v20, v9);
            v1 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              goto LABEL_49;
            }
          }

          else
          {
            if (v20 >= *(v32 + 16))
            {
              goto LABEL_58;
            }

            v33 = *(v9 + 8 * v20 + 32);
            swift_unknownObjectRetain();
            v1 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }
          }

          swift_unknownObjectRetain();
          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.default.getter();
          swift_unknownObjectRelease();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v112 = swift_slowAlloc();
            v114 = v33;
            v115 = v112;
            *v36 = v108;
            swift_unknownObjectRetain();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore23LocationManagerObserver_pMd, &_s11WorkoutCore23LocationManagerObserver_pMR);
            v37 = String.init<A>(describing:)();
            LODWORD(v21) = v38;
            v39 = v32;
            v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v115);

            *(v36 + 4) = v40;
            v32 = v39;
            *(v36 + 12) = 2048;
            [v33 locationManagerRequestedAccuracy];
            *(v36 + 14) = v41;
            _os_log_impl(&dword_20AEA4000, v34, v35, "[Location Manager] Observer: %s, requestedAccuracy: %f", v36, 0x16u);
            v42 = v112;
            __swift_destroy_boxed_opaque_existential_0(v112);
            v43 = v42;
            v10 = v109;
            MEMORY[0x20F2E9420](v43, -1, -1);
            v44 = v36;
            v9 = v110;
            MEMORY[0x20F2E9420](v44, -1, -1);
          }

          swift_unknownObjectRelease();

          ++v20;
        }

        while (v1 != v31);
      }
    }

    v10 = v111;
    v20 = v104;
    LODWORD(v21) = v105;
    if (v105)
    {
      goto LABEL_65;
    }

LABEL_53:
    LocationManager.set(state:)(1);
    goto LABEL_133;
  }

LABEL_50:
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_20AEA4000, v45, v46, "[Location Manager] no current observers", v47, 2u);
    MEMORY[0x20F2E9420](v47, -1, -1);
  }

  if (!v21)
  {
    goto LABEL_53;
  }

LABEL_65:
  v48 = OBJC_IVAR___WOCoreLocationManager_state;
  v49 = *(v10 + OBJC_IVAR___WOCoreLocationManager_state);
  if (v20 && v21 > 2)
  {
    if (v49 == 2)
    {
      goto LABEL_133;
    }

    *(v10 + OBJC_IVAR___WOCoreLocationManager_state) = 2;
    LocationManager.startUpdatingLocation()();
    v50 = *(v10 + v48);
    v51 = *(v106 + v10);
    v115 = MEMORY[0x277D84F90];
    v52 = v51 & 0xFFFFFFFFFFFFFF8;
    if (v51 >> 62)
    {
      v53 = __CocoaSet.count.getter();
    }

    else
    {
      v53 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v54 = 0;
    v109 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v53 == v54)
      {
        goto LABEL_109;
      }

      if ((v51 & 0xC000000000000001) != 0)
      {
        MEMORY[0x20F2E7A20](v54, v51);
        v56 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          goto LABEL_122;
        }
      }

      else
      {
        if (v54 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_124;
        }

        v55 = *(v51 + 8 * v54 + 32);

        v56 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
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
          v60 = __CocoaSet.count.getter();
          goto LABEL_85;
        }
      }

      v57 = swift_unknownObjectWeakLoadStrong();

      ++v54;
      if (v57)
      {
        MEMORY[0x20F2E6F30](v58);
        if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v59 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v109 = v115;
        v54 = v56;
      }
    }
  }

  if (v49 == 3)
  {
    goto LABEL_133;
  }

  *(v10 + OBJC_IVAR___WOCoreLocationManager_state) = 3;
  LocationManager.stopUpdatingLocation()();
  v50 = *(v10 + v48);
  v51 = *(v106 + v10);
  v115 = MEMORY[0x277D84F90];
  v52 = v51 & 0xFFFFFFFFFFFFFF8;
  if (v51 >> 62)
  {
    goto LABEL_127;
  }

  v60 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_85:

  v61 = 0;
  v109 = MEMORY[0x277D84F90];
  while (v60 != v61)
  {
    if ((v51 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v61, v51);
      v63 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }
    }

    else
    {
      if (v61 >= *(v52 + 16))
      {
        goto LABEL_123;
      }

      v62 = *(v51 + 8 * v61 + 32);

      v63 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        goto LABEL_121;
      }
    }

    v64 = swift_unknownObjectWeakLoadStrong();

    ++v61;
    if (v64)
    {
      MEMORY[0x20F2E6F30](v65);
      if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v66 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v109 = v115;
      v61 = v63;
    }
  }

  v51 = v109;
  if (v109 >> 62)
  {
    v68 = __CocoaSet.count.getter();
    if (!v68)
    {
      goto LABEL_132;
    }
  }

  else
  {
    v68 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v68)
    {
      goto LABEL_132;
    }
  }

  v69 = 0;
  v52 = v51 & 0xC000000000000001;
  v70 = v51 & 0xFFFFFFFFFFFFFF8;
  *&v67 = 136315138;
  v105 = v67;
  v71 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
  *&v108 = v50;
  v106 = v68;
  while (1)
  {
    if (v52)
    {
      v72 = MEMORY[0x20F2E7A20](v69, v51);
      v73 = (v69 + 1);
      if (__OFADD__(v69, 1))
      {
        break;
      }

      goto LABEL_104;
    }

    if (v69 >= *(v70 + 16))
    {
      goto LABEL_125;
    }

    v72 = *(v51 + 8 * v69 + 32);
    swift_unknownObjectRetain();
    v73 = (v69 + 1);
    if (__OFADD__(v69, 1))
    {
      break;
    }

LABEL_104:
    v112 = v73;
    swift_unknownObjectRetain();
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v114 = v72;
      v115 = v110;
      *v76 = v105;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore23LocationManagerObserver_pMd, &_s11WorkoutCore23LocationManagerObserver_pMR);
      v77 = String.init<A>(describing:)();
      v79 = v71;
      v80 = v70;
      v81 = v52;
      v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, &v115);
      v51 = v109;

      *(v76 + 4) = v82;
      v52 = v81;
      v70 = v80;
      v71 = v79;
      _os_log_impl(&dword_20AEA4000, v74, v75, "[Location Manager] Notifying %s about new location manager state", v76, 0xCu);
      v83 = v110;
      __swift_destroy_boxed_opaque_existential_0(v110);
      v68 = v106;
      MEMORY[0x20F2E9420](v83, -1, -1);
      v84 = v76;
      v50 = v108;
      MEMORY[0x20F2E9420](v84, -1, -1);
    }

    [v72 v71[304]];
    swift_unknownObjectRelease();
    ++v69;
    if (v112 == v68)
    {
      goto LABEL_132;
    }
  }

  __break(1u);
LABEL_109:

  v51 = v109;
  if (v109 >> 62)
  {
    v86 = __CocoaSet.count.getter();
    if (v86)
    {
      goto LABEL_111;
    }
  }

  else
  {
    v86 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v86)
    {
LABEL_111:
      v87 = 0;
      v52 = v51 & 0xC000000000000001;
      v88 = v51 & 0xFFFFFFFFFFFFFF8;
      *&v85 = 136315138;
      v105 = v85;
      v89 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
      *&v108 = v50;
      v106 = v86;
      do
      {
        if (v52)
        {
          v90 = MEMORY[0x20F2E7A20](v87, v51);
          v91 = (v87 + 1);
          if (__OFADD__(v87, 1))
          {
            goto LABEL_120;
          }
        }

        else
        {
          if (v87 >= *(v88 + 16))
          {
            goto LABEL_126;
          }

          v90 = *(v51 + 8 * v87 + 32);
          swift_unknownObjectRetain();
          v91 = (v87 + 1);
          if (__OFADD__(v87, 1))
          {
LABEL_120:
            __break(1u);
            goto LABEL_121;
          }
        }

        v112 = v91;
        swift_unknownObjectRetain();
        v92 = Logger.logObject.getter();
        v93 = static os_log_type_t.default.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          v114 = v90;
          v115 = v110;
          *v94 = v105;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore23LocationManagerObserver_pMd, &_s11WorkoutCore23LocationManagerObserver_pMR);
          v95 = String.init<A>(describing:)();
          v97 = v89;
          v98 = v88;
          v99 = v52;
          v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v96, &v115);
          v51 = v109;

          *(v94 + 4) = v100;
          v52 = v99;
          v88 = v98;
          v89 = v97;
          _os_log_impl(&dword_20AEA4000, v92, v93, "[Location Manager] Notifying %s about new location manager state", v94, 0xCu);
          v101 = v110;
          __swift_destroy_boxed_opaque_existential_0(v110);
          v86 = v106;
          MEMORY[0x20F2E9420](v101, -1, -1);
          v102 = v94;
          v50 = v108;
          MEMORY[0x20F2E9420](v102, -1, -1);
        }

        [v90 v89[304]];
        swift_unknownObjectRelease();
        ++v87;
      }

      while (v112 != v86);
    }
  }

LABEL_132:

LABEL_133:
}

uint64_t LocationManager.set(state:)(uint64_t result)
{
  v2 = OBJC_IVAR___WOCoreLocationManager_state;
  if (*(v1 + OBJC_IVAR___WOCoreLocationManager_state) == result)
  {
    return result;
  }

  v3 = v1;
  *(v1 + OBJC_IVAR___WOCoreLocationManager_state) = result;
  if (result > 2)
  {
    if (result == 3)
    {
      LocationManager.stopUpdatingLocation()();
      goto LABEL_13;
    }

    goto LABEL_51;
  }

  if (result != 1)
  {
    if (result == 2)
    {
      LocationManager.startUpdatingLocation()();
      goto LABEL_13;
    }

    if (!result)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

LABEL_51:
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

  if (one-time initialization token for location != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.location);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20AEA4000, v5, v6, "[Location Manager] Requesting location authorization", v7, 2u);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  [*(v3 + OBJC_IVAR___WOCoreLocationManager_locationManager) requestWhenInUseAuthorization];
LABEL_13:
  v38 = *(v3 + v2);
  v8 = OBJC_IVAR___WOCoreLocationManager__observers;
  swift_beginAccess();
  v9 = *(v3 + v8);
  v39 = MEMORY[0x277D84F90];
  v36 = v3;
  v10 = v9 & 0xFFFFFFFFFFFFFF8;
  if (v9 >> 62)
  {
LABEL_45:
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  v37 = MEMORY[0x277D84F90];
  while (v11 != v12)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v12, v9);
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v12 >= *(v10 + 16))
      {
        goto LABEL_42;
      }

      v13 = *(v9 + 8 * v12 + 32);

      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    ++v12;
    if (Strong)
    {
      MEMORY[0x20F2E6F30](v16);
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v17 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v37 = v39;
      v12 = v14;
    }
  }

  v10 = v36;
  v18 = v37;
  if (v37 >> 62)
  {
    v9 = __CocoaSet.count.getter();
    if (v9)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v9 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_29:
      v19 = 0;
      v20 = v37 & 0xC000000000000001;
      v21 = v37 & 0xFFFFFFFFFFFFFF8;
      v35 = v9;
      do
      {
        if (v20)
        {
          v22 = MEMORY[0x20F2E7A20](v19, v18);
          v23 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_43;
          }
        }

        else
        {
          if (v19 >= *(v21 + 16))
          {
            goto LABEL_44;
          }

          v22 = *(v18 + 8 * v19 + 32);
          swift_unknownObjectRetain();
          v23 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_43;
          }
        }

        if (one-time initialization token for location != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        __swift_project_value_buffer(v24, static WOLog.location);
        swift_unknownObjectRetain();
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = v20;
          v29 = swift_slowAlloc();
          v39 = v29;
          *v27 = 136315138;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore23LocationManagerObserver_pMd, &_s11WorkoutCore23LocationManagerObserver_pMR);
          v30 = String.init<A>(describing:)();
          v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v39);
          v18 = v37;

          *(v27 + 4) = v32;
          _os_log_impl(&dword_20AEA4000, v25, v26, "[Location Manager] Notifying %s about new location manager state", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v29);
          v33 = v29;
          v20 = v28;
          v9 = v35;
          v10 = v36;
          MEMORY[0x20F2E9420](v33, -1, -1);
          v34 = v27;
          v21 = v37 & 0xFFFFFFFFFFFFFF8;
          MEMORY[0x20F2E9420](v34, -1, -1);
        }

        [v22 locationManagerStateDidChangeWithState:v38 locationManager:v10];
        swift_unknownObjectRelease();
        ++v19;
      }

      while (v23 != v9);
    }
  }
}

id LocationManager.startUpdatingLocation()(const char *a1, const char **a2)
{
  v5 = v2;
  if (one-time initialization token for location != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.location);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_20AEA4000, v7, v8, a1, v9, 2u);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  v10 = *(v5 + OBJC_IVAR___WOCoreLocationManager_locationManager);
  v11 = *a2;

  return [v10 v11];
}

id LocationManager.configureLocationAccuracy()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR___WOCoreLocationManager_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  v9 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v9 & 1) == 0)
  {
    goto LABEL_43;
  }

  v9 = MEMORY[0x277CE4270];
  v10 = OBJC_IVAR___WOCoreLocationManager_locationRequests;
  result = swift_beginAccess();
  v2 = *(v1 + v10);
  if (v2 >> 62)
  {
LABEL_44:
    result = __CocoaSet.count.getter();
    v12 = result;
    v13 = *v9;
    if (!result)
    {
      goto LABEL_13;
    }

    goto LABEL_4;
  }

  v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v13 = *v9;
  if (!v12)
  {
LABEL_13:
    v18 = OBJC_IVAR___WOCoreLocationManager__observers;
    swift_beginAccess();
    v19 = *(v1 + v18);
    v37 = MEMORY[0x277D84F90];
    if (v19 >> 62)
    {
      v9 = __CocoaSet.count.getter();
    }

    else
    {
      v9 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = 0;
    v2 = MEMORY[0x277D84F90];
    while (v9 != v20)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        MEMORY[0x20F2E7A20](v20, v19);
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }
      }

      else
      {
        if (v20 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v21 = *(v19 + 8 * v20 + 32);

        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_40;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();

      ++v20;
      if (Strong)
      {
        MEMORY[0x20F2E6F30](v24);
        if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v25 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v2 = v37;
        v20 = v22;
      }
    }

    if (v2 >> 62)
    {
      v26 = __CocoaSet.count.getter();
      if (v26)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v26 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26)
      {
LABEL_29:
        v9 = 0;
        v27 = v13;
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v28 = MEMORY[0x20F2E7A20](v9, v2);
            v29 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              goto LABEL_39;
            }
          }

          else
          {
            if (v9 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_42;
            }

            v28 = *(v2 + 8 * v9 + 32);
            swift_unknownObjectRetain();
            v29 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
LABEL_39:
              __break(1u);
              goto LABEL_40;
            }
          }

          [v28 locationManagerRequestedAccuracy];
          v31 = v30;
          swift_unknownObjectRelease();
          if (v31 < v13)
          {
            v27 = v31;
            v13 = v31;
          }

          ++v9;
          if (v29 == v26)
          {
            goto LABEL_49;
          }
        }
      }
    }

    v27 = v13;
LABEL_49:

    if (one-time initialization token for location != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static WOLog.location);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134217984;
      *(v35 + 4) = v27;
      _os_log_impl(&dword_20AEA4000, v33, v34, "[Location Manager] Setting location accuracy to %f", v35, 0xCu);
      MEMORY[0x20F2E9420](v35, -1, -1);
    }

    return [*(v1 + OBJC_IVAR___WOCoreLocationManager_locationManager) setDesiredAccuracy_];
  }

LABEL_4:
  if (v12 >= 1)
  {

    v14 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x20F2E7A20](v14++, v2);
        v16 = *(v15 + 24);
        swift_unknownObjectRelease();
        if (v16 < v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v17 = *(v2 + 32 + 8 * v14++);
        v16 = *(v17 + 24);
        if (v16 < v13)
        {
LABEL_11:
          v13 = v16;
        }
      }

      if (v14 == v12)
      {

        goto LABEL_13;
      }
    }
  }

  __break(1u);
  return result;
}