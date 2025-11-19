uint64_t static SplitMetricsPlatter.metrics(workoutSettingsManager:)(void *a1)
{
  v1 = [a1 supportedMetrics];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for NSNumber();
    lazy protocol witness table accessor for type NSNumber and conformance NSObject();
    v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = specialized Sequence.compactMap<A>(_:)(v3);

    v5 = *(v4 + 16);
    v6 = 32;
    while (v5)
    {
      v7 = *(v4 + v6);
      v6 += 8;
      --v5;
      if (v7 == 1)
      {
        v8 = 0;
        v9 = MEMORY[0x277D84F90];
        do
        {
          v12 = outlined read-only object #0 of one-time initialization function for metricsWithDistance[v8 + 4];
          v13 = *(v4 + 16);
          v14 = 32;
          while (v13)
          {
            v15 = *(v4 + v14);
            v14 += 8;
            --v13;
            if (v15 == v12)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1);
              }

              v11 = *(v9 + 16);
              v10 = *(v9 + 24);
              if (v11 >= v10 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
              }

              *(v9 + 16) = v11 + 1;
              *(v9 + 8 * v11 + 32) = v12;
              break;
            }
          }

          ++v8;
        }

        while (v8 != 4);

        return v9;
      }
    }
  }

  else
  {
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for SplitMetricsPlatter(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SplitMetricsPlatter(_WORD *result, int a2, int a3)
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

id SplitsDisplayAccumulator.splitsAccumulator.getter()
{
  v1 = OBJC_IVAR___WOSplitsDisplayAccumulator_splitsAccumulator;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SplitsDisplayAccumulator.splitsAccumulator.setter(void *a1)
{
  specialized SplitsDisplayAccumulator.splitsAccumulator.setter(a1);
}

void (*SplitsDisplayAccumulator.splitsAccumulator.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = OBJC_IVAR___WOSplitsDisplayAccumulator_splitsAccumulator;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return SplitsDisplayAccumulator.splitsAccumulator.modify;
}

void SplitsDisplayAccumulator.splitsAccumulator.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v5 = *(*a1 + 32);
  if (a2)
  {
    v6 = v3;
    specialized SplitsDisplayAccumulator.splitsAccumulator.setter(v6);

    v3 = *v4;
  }

  else
  {
    specialized SplitsDisplayAccumulator.splitsAccumulator.setter(*(*a1 + 24));
  }

  free(v2);
}

void *SplitsDisplayAccumulator.averagePowerAccumulator.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOSplitsDisplayAccumulator_averagePowerAccumulator);
  v2 = v1;
  return v1;
}

id SplitsDisplayAccumulator.__allocating_init(builder:splitsAccumulator:activityType:powerAccumulator:)(void *a1, void *a2, void *a3, id a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  *&v10[OBJC_IVAR___WOSplitsDisplayAccumulator_builder] = a1;
  v11 = objc_allocWithZone(type metadata accessor for SegmentDistanceAccumulator());
  v12 = a1;
  v13 = [v11 init];
  *&v10[OBJC_IVAR___WOSplitsDisplayAccumulator_distanceAccumulator] = v13;
  *&v10[OBJC_IVAR___WOSplitsDisplayAccumulator_elapsedTimeAccumulator] = [objc_allocWithZone(type metadata accessor for SegmentElapsedTimeAccumulator()) init];
  v14 = type metadata accessor for SegmentPaceAccumulator();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR___WOSegmentPaceAccumulator_distance] = 0;
  *&v15[OBJC_IVAR___WOSegmentPaceAccumulator_duration] = 0;
  *&v15[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] = 0;
  *&v15[OBJC_IVAR___WOSegmentPaceAccumulator_paceForceCalculationTimeout] = 0x4024000000000000;
  v16 = v12;
  v17 = a3;
  v18 = [v17 effectiveTypeIdentifier];
  *&v15[OBJC_IVAR___WOSegmentPaceAccumulator_activityType] = v18;
  v26.receiver = v15;
  v26.super_class = v14;
  v19 = objc_msgSendSuper2(&v26, sel_initWithBuilder_, v16);

  *&v10[OBJC_IVAR___WOSplitsDisplayAccumulator_paceAccumulator] = v19;
  *&v10[OBJC_IVAR___WOSplitsDisplayAccumulator_splitsAccumulator] = a2;
  if (a4)
  {
    v20 = objc_allocWithZone(type metadata accessor for AveragePowerAccumulator());
    v21 = a2;
    a4 = a4;
    *&v10[OBJC_IVAR___WOSplitsDisplayAccumulator_averagePowerAccumulator] = AveragePowerAccumulator.init(powerAccumulator:)(a4);
  }

  else
  {
    *&v10[OBJC_IVAR___WOSplitsDisplayAccumulator_averagePowerAccumulator] = 0;
    v22 = a2;
  }

  v25.receiver = v10;
  v25.super_class = v5;
  v23 = objc_msgSendSuper2(&v25, sel_init);
  [a2 addSplitObserver_];

  return v23;
}

id SplitsDisplayAccumulator.init(builder:splitsAccumulator:activityType:powerAccumulator:)(void *a1, void *a2, void *a3, id a4)
{
  v5 = v4;
  *&v5[OBJC_IVAR___WOSplitsDisplayAccumulator_builder] = a1;
  v10 = objc_allocWithZone(type metadata accessor for SegmentDistanceAccumulator());
  v11 = a1;
  v12 = [v10 init];
  *&v5[OBJC_IVAR___WOSplitsDisplayAccumulator_distanceAccumulator] = v12;
  *&v5[OBJC_IVAR___WOSplitsDisplayAccumulator_elapsedTimeAccumulator] = [objc_allocWithZone(type metadata accessor for SegmentElapsedTimeAccumulator()) init];
  v13 = type metadata accessor for SegmentPaceAccumulator();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR___WOSegmentPaceAccumulator_distance] = 0;
  *&v14[OBJC_IVAR___WOSegmentPaceAccumulator_duration] = 0;
  *&v14[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] = 0;
  *&v14[OBJC_IVAR___WOSegmentPaceAccumulator_paceForceCalculationTimeout] = 0x4024000000000000;
  v15 = v11;
  v16 = a3;
  v17 = [v16 effectiveTypeIdentifier];
  *&v14[OBJC_IVAR___WOSegmentPaceAccumulator_activityType] = v17;
  v25.receiver = v14;
  v25.super_class = v13;
  v18 = objc_msgSendSuper2(&v25, sel_initWithBuilder_, v15);

  *&v5[OBJC_IVAR___WOSplitsDisplayAccumulator_paceAccumulator] = v18;
  *&v5[OBJC_IVAR___WOSplitsDisplayAccumulator_splitsAccumulator] = a2;
  if (a4)
  {
    v19 = objc_allocWithZone(type metadata accessor for AveragePowerAccumulator());
    v20 = a2;
    a4 = a4;
    *&v5[OBJC_IVAR___WOSplitsDisplayAccumulator_averagePowerAccumulator] = AveragePowerAccumulator.init(powerAccumulator:)(a4);
  }

  else
  {
    *&v5[OBJC_IVAR___WOSplitsDisplayAccumulator_averagePowerAccumulator] = 0;
    v21 = a2;
  }

  v24.receiver = v5;
  v24.super_class = type metadata accessor for SplitsDisplayAccumulator();
  v22 = objc_msgSendSuper2(&v24, sel_init);
  [a2 addSplitObserver_];

  return v22;
}

Swift::Void __swiftcall SplitsDisplayAccumulator.assignStartValues()()
{
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = (&v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = &v89 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v93 = (&v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v96 = &v89 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = (&v89 - v18);
  v20 = OBJC_IVAR___WOSplitsDisplayAccumulator_splitsAccumulator;
  swift_beginAccess();
  v21 = [*(&v0->isa + v20) completedSplits];
  v100 = 0;
  type metadata accessor for FIUIWorkoutSplit();
  static Array._conditionallyBridgeFromObjectiveC(_:result:)();

  v22 = v100;
  if (v100)
  {
    v91 = v9;
    v92 = v11;
    v94 = v100 >> 62;
    v95 = v19;
    if (v100 >> 62)
    {
      v23 = __CocoaSet.count.getter();
    }

    else
    {
      v23 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = MEMORY[0x277D84F90];
    v25 = (v23 & ~(v23 >> 63));
    if (v23)
    {
      v100 = MEMORY[0x277D84F90];
      v26 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23 & ~(v23 >> 63), 0);
      if (v23 < 0)
      {
        __break(1u);
        goto LABEL_82;
      }

      v90 = v4;
      v1 = 0;
      v27 = v100;
      v9 = &selRef_totalDiskCapacity;
      do
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x20F2E7A20](v1, v22);
        }

        else
        {
          v28 = v22[v1 + 4];
        }

        v29 = v28;
        [v28 distanceInMeters];
        v31 = v30;

        v100 = v27;
        v11 = v27[2];
        v32 = v27[3];
        v33 = v11 + 1;
        if (v11 >= v32 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v11 + 1, 1);
          v27 = v100;
        }

        ++v1;
        v27[2] = v33;
        v27[v11 + 4] = v31;
      }

      while (v23 != v1);
      v4 = v90;
      if (v33 <= 3)
      {
LABEL_14:
        v34 = 0;
        v3 = 0.0;
        goto LABEL_20;
      }
    }

    else
    {
      v33 = *(MEMORY[0x277D84F90] + 16);
      if (!v33)
      {

        v3 = 0.0;
        goto LABEL_33;
      }

      v27 = MEMORY[0x277D84F90];
      if (v33 <= 3)
      {
        goto LABEL_14;
      }
    }

    v34 = v33 & 0xFFFFFFFFFFFFFFFCLL;
    v35 = v27 + 6;
    v3 = 0.0;
    v36 = v33 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v37 = *v35;
      v3 = v3 + *(v35 - 2) + *(v35 - 1) + *v35 + *(v35 + 1);
      v35 += 4;
      v36 -= 4;
    }

    while (v36);
    if (v33 == v34)
    {
LABEL_22:

      if (v23)
      {
        v100 = v24;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
        if (v23 < 0)
        {
          goto LABEL_86;
        }

        v41 = 0;
        v24 = v100;
        do
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v42 = MEMORY[0x20F2E7A20](v41, v22);
          }

          else
          {
            v42 = v22[v41 + 4];
          }

          v43 = v42;
          [v42 duration];
          v45 = v44;

          v100 = v24;
          v47 = v24[2];
          v46 = v24[3];
          v11 = v47 + 1;
          if (v47 >= v46 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1);
            v24 = v100;
          }

          ++v41;
          v24[2] = v11;
          v24[v47 + 4] = v45;
        }

        while (v23 != v41);
        v48 = v96;
        v9 = v92;
        v1 = v91;
        goto LABEL_34;
      }

LABEL_33:
      v11 = v24[2];
      v48 = v96;
      v9 = v92;
      v1 = v91;
      if (!v11)
      {
        v2 = 0.0;
        goto LABEL_43;
      }

LABEL_34:
      if (v11 > 3)
      {
        v49 = v11 & 0xFFFFFFFFFFFFFFFCLL;
        v50 = v24 + 6;
        v2 = 0.0;
        v51 = v11 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v52 = *v50;
          v2 = v2 + *(v50 - 2) + *(v50 - 1) + *v50 + *(v50 + 1);
          v50 += 4;
          v51 -= 4;
        }

        while (v51);
        if (v11 == v49)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v49 = 0;
        v2 = 0.0;
      }

      v53 = v11 - v49;
      v54 = 8 * v49 + 32;
      do
      {
        v2 = v2 + *(v24 + v54);
        v54 += 8;
        --v53;
      }

      while (v53);
LABEL_43:

      v55 = *(&v4->isa + OBJC_IVAR___WOSplitsDisplayAccumulator_distanceAccumulator);
      v56 = OBJC_IVAR___WOSegmentDistanceAccumulator_segmentStartDistance;
      swift_beginAccess();
      *(v55 + v56) = v3;
      SegmentDistanceAccumulator._updateInternalQuantity()();
      v57 = *(&v4->isa + OBJC_IVAR___WOSplitsDisplayAccumulator_elapsedTimeAccumulator);
      v58 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_segmentStartDuration;
      swift_beginAccess();
      *&v57[v58] = v2;
      if (*&v57[OBJC_IVAR___WOSegmentElapsedTimeAccumulator_lastReceivedDuration] - v2 > 0.0)
      {
        v59 = *&v57[OBJC_IVAR___WOSegmentElapsedTimeAccumulator_lastReceivedDuration] - v2;
      }

      else
      {
        v59 = 0.0;
      }

      v60 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_duration;
      swift_beginAccess();
      *&v57[v60] = v59;
      v25 = &selRef_localizedPaceStringWithDistance_overDuration_paceFormat_unitStyle_decimalTrimmingMode_distanceType_;
      v61 = [v57 updateHandler];
      if (v61)
      {
        v62 = v61;
        (*(v61 + 2))();
        _Block_release(v62);
      }

      v63 = *(&v4->isa + OBJC_IVAR___WOSplitsDisplayAccumulator_paceAccumulator);
      *&v63[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] = 0;
      *&v63[OBJC_IVAR___WOSegmentPaceAccumulator_distance] = 0;
      *&v63[OBJC_IVAR___WOSegmentPaceAccumulator_duration] = 0;
      v64 = [v63 updateHandler];
      v24 = v95;
      if (v64)
      {
        v65 = v64;
        (*(v64 + 2))();
        _Block_release(v65);
      }

      if (v94)
      {
        v66 = __CocoaSet.count.getter();
        if (v66)
        {
LABEL_52:
          v67 = __OFSUB__(v66, 1);
          v26 = v66 - 1;
          if (!v67)
          {
            if ((v22 & 0xC000000000000001) == 0)
            {
              if ((v26 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v26 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v68 = v22[v26 + 4];
LABEL_57:
                v69 = v68;
                v70 = [v68 dateInterval];
                if (v70)
                {
                  v71 = v70;
                  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

                  v72 = 0;
                }

                else
                {
                  v72 = 1;
                }

                v74 = type metadata accessor for DateInterval();
                v75 = *(v74 - 8);
                (*(v75 + 56))(v1, v72, 1, v74);
                outlined init with take of DateInterval?(v1, v9);
                if ((*(v75 + 48))(v9, 1, v74) == 1)
                {
                  __break(1u);
                  return;
                }

                DateInterval.end.getter();
                (*(v75 + 8))(v9, v74);
                v73 = 0;
                v48 = v96;
LABEL_64:
                v9 = type metadata accessor for Date();
                v23 = *(v9 - 1);
                (*(v23 + 56))(v24, v73, 1, v9);
                if (*(&v4->isa + OBJC_IVAR___WOSplitsDisplayAccumulator_averagePowerAccumulator))
                {
                  AveragePowerAccumulator.reset(with:)(v24);
                }

                if (one-time initialization token for splits != -1)
                {
                  swift_once();
                }

                v76 = type metadata accessor for Logger();
                __swift_project_value_buffer(v76, static WOLog.splits);
                outlined init with copy of Date?(v24, v48);

                v4 = Logger.logObject.getter();
                LOBYTE(v1) = static os_log_type_t.default.getter();
                if (!os_log_type_enabled(v4, v1))
                {

                  swift_bridgeObjectRelease_n();
                  outlined destroy of Date?(v48);
                  v78 = v24;
LABEL_78:
                  outlined destroy of Date?(v78);
                  return;
                }

                v11 = swift_slowAlloc();
                v24 = swift_slowAlloc();
                v99 = v24;
                *v11 = 134218754;
                if (v94)
                {
                  v77 = __CocoaSet.count.getter();
                }

                else
                {
                  v77 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                *(v11 + 4) = v77;

                *(v11 + 12) = 2048;
                *(v11 + 14) = v3;
                *(v11 + 22) = 2048;
                *(v11 + 24) = v2;
                *(v11 + 32) = 2080;
                v25 = v93;
                outlined init with copy of Date?(v48, v93);
                if ((*(v23 + 48))(v25, 1, v9) == 1)
                {
                  outlined destroy of Date?(v25);
                  v79 = 0;
                  v80 = 0;
LABEL_77:
                  v97 = v79;
                  v98 = v80;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
                  v85 = Optional.description.getter();
                  v87 = v86;
                  outlined destroy of Date?(v96);

                  v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v87, &v99);

                  *(v11 + 34) = v88;
                  _os_log_impl(&dword_20AEA4000, v4, v1, "SplitsDisplayAccumulator: (new split) completedSplits: %ld, distance %f, duration %f, newSplitStartDate: %s", v11, 0x2Au);
                  __swift_destroy_boxed_opaque_existential_0(v24);
                  MEMORY[0x20F2E9420](v24, -1, -1);
                  MEMORY[0x20F2E9420](v11, -1, -1);

                  v78 = v95;
                  goto LABEL_78;
                }

                if (one-time initialization token for logDateFormatter == -1)
                {
LABEL_76:
                  v81 = static WOLog.logDateFormatter;
                  isa = Date._bridgeToObjectiveC()().super.isa;
                  v83 = [v81 stringFromDate_];

                  v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v80 = v84;

                  (*(v23 + 8))(v25, v9);
                  goto LABEL_77;
                }

LABEL_87:
                swift_once();
                goto LABEL_76;
              }

              __break(1u);
LABEL_86:
              __break(1u);
              goto LABEL_87;
            }

LABEL_83:
            v68 = MEMORY[0x20F2E7A20](v26, v22);
            goto LABEL_57;
          }

LABEL_82:
          __break(1u);
          goto LABEL_83;
        }
      }

      else
      {
        v66 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v66)
        {
          goto LABEL_52;
        }
      }

      v73 = 1;
      goto LABEL_64;
    }

LABEL_20:
    v38 = v33 - v34;
    v39 = &v27[v34 + 4];
    do
    {
      v40 = *v39++;
      v3 = v3 + v40;
      --v38;
    }

    while (v38);
    goto LABEL_22;
  }
}

id SplitsDisplayAccumulator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SplitsDisplayAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SplitsDisplayAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id SplitsDisplayAccumulator.definedSplitDistance.getter()
{
  v1 = OBJC_IVAR___WOSplitsDisplayAccumulator_splitsAccumulator;
  swift_beginAccess();
  return [*(v0 + v1) definedDistance];
}

double SplitsDisplayAccumulator.splitDistance.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOSplitsDisplayAccumulator_distanceAccumulator);
  v2 = OBJC_IVAR___WOSegmentDistanceAccumulator_distance;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 meterUnit];
  [v5 doubleValueForUnit_];
  v8 = v7;

  return v8;
}

double SplitsDisplayAccumulator.splitDuration.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOSplitsDisplayAccumulator_elapsedTimeAccumulator);
  v2 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_duration;
  swift_beginAccess();
  return *(v1 + v2);
}

double SplitsDisplayAccumulator.splitPace.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOSplitsDisplayAccumulator_paceAccumulator);
  v2 = *(v1 + OBJC_IVAR___WOSegmentPaceAccumulator_duration);
  if (v2 > 0.0 && *(v1 + OBJC_IVAR___WOSegmentPaceAccumulator_distance) > 0.0)
  {
    if (v2 - *(v1 + OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration) < 10.0)
    {
      v3 = *(v1 + OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration);
    }

    JUMPOUT(0x20F2E8430);
  }

  return 0.0;
}

char *SplitsDisplayAccumulator.splitIndex.getter()
{
  v1 = OBJC_IVAR___WOSplitsDisplayAccumulator_splitsAccumulator;
  swift_beginAccess();
  v2 = [*(v0 + v1) completedSplits];
  v3 = [v2 count];

  result = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t SplitsDisplayAccumulator.splitStartDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - v10;
  v12 = OBJC_IVAR___WOSplitsDisplayAccumulator_splitsAccumulator;
  swift_beginAccess();
  v13 = [*(v1 + v12) splitStartDate];
  if (v13)
  {
    v14 = v13;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = *(v4 + 32);
    v15(v11, v7, v3);
    (*(v4 + 56))(v11, 0, 1, v3);
    return (v15)(a1, v11, v3);
  }

  else
  {
    (*(v4 + 56))(v11, 1, 1, v3);
    Date.init()();
    result = (*(v4 + 48))(v11, 1, v3);
    if (result != 1)
    {
      return outlined destroy of Date?(v11);
    }
  }

  return result;
}

void SplitsDisplayAccumulator.splitAveragePower.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOSplitsDisplayAccumulator_averagePowerAccumulator);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = [v2 wattUnit];
    v4 = *(v1 + OBJC_IVAR___WOAveragePowerAccumulator_statisticAccumulator);
    v5 = *(v4 + 24);
    if (v5 < 1)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = *(v4 + 16) / v5;
    }

    v7 = [objc_opt_self() quantityWithUnit:v3 doubleValue:v6];

    v8 = [v2 wattUnit];
    [v7 doubleValueForUnit_];
  }
}

uint64_t SplitsDisplayAccumulator.logString.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(91);
  MEMORY[0x20F2E6D80](0x203A74696C7073, 0xE700000000000000);
  v16[1] = [v0 splitIndex];
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v7);

  MEMORY[0x20F2E6D80](0x203A656361702820, 0xE800000000000000);
  [v0 splitPace];
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0xD000000000000010, 0x800000020B465B00);
  [v0 splitDuration];
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0x6E6174736964202CLL, 0xEC000000203A6563);
  [v0 splitDistance];
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0x447472617473202CLL, 0xED0000203A657461);
  v8 = [v0 splitStartDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  if (one-time initialization token for logDateFormatter != -1)
  {
    swift_once();
  }

  v9 = static WOLog.logDateFormatter;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v11 = [v9 stringFromDate_];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  (*(v3 + 8))(v6, v2);
  MEMORY[0x20F2E6D80](v12, v14);

  MEMORY[0x20F2E6D80](0xD000000000000010, 0x800000020B465B60);
  [v1 splitAveragePower];
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0x73747461772029, 0xE700000000000000);
  return v17;
}

void SplitsDisplayAccumulator.dataProvider(_:didUpdate:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v69 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v69 - v16;
  if (a2 == 3)
  {
    v23 = *&v3[OBJC_IVAR___WOSplitsDisplayAccumulator_elapsedTimeAccumulator];
    [objc_msgSend(a1 elapsedTimeProvider)];
    v25 = v24;
    swift_unknownObjectRelease();
    *&v23[OBJC_IVAR___WOSegmentElapsedTimeAccumulator_lastReceivedDuration] = v25;
    v26 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_segmentStartDuration;
    swift_beginAccess();
    if (v25 - *&v23[v26] > 0.0)
    {
      v27 = v25 - *&v23[v26];
    }

    else
    {
      v27 = 0.0;
    }

    v28 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_duration;
    swift_beginAccess();
    *&v23[v28] = v27;
    v29 = [v23 updateHandler];
    if (v29)
    {
      v30 = v29;
      (*(v29 + 2))();
      _Block_release(v30);
    }

    v31 = *&v3[OBJC_IVAR___WOSplitsDisplayAccumulator_paceAccumulator];
    SegmentPaceAccumulator.updateDuration(_:)(*&v23[v28]);
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static WOLog.app);
    swift_unknownObjectRetain();
    v33 = v3;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    swift_unknownObjectRelease();
    if (!os_log_type_enabled(v34, v35))
    {
      goto LABEL_24;
    }

    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v70 = v37;
    *v36 = 134218242;
    [a1 activityDuration];
    *(v36 + 4) = v38;
    *(v36 + 12) = 2080;
    v39 = SplitsDisplayAccumulator.logString.getter();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v70);

    *(v36 + 14) = v41;
    v42 = "SplitsDisplayAccumulator: updated duration, activityDuration: %f, %s";
    v43 = v35;
    v44 = v34;
    v45 = v36;
    v46 = 22;
    goto LABEL_23;
  }

  if (a2 != 1)
  {
    return;
  }

  v18 = *&v3[OBJC_IVAR___WOSplitsDisplayAccumulator_distanceAccumulator];
  [objc_msgSend(a1 distanceProvider)];
  v20 = v19;
  swift_unknownObjectRelease();
  *(v18 + OBJC_IVAR___WOSegmentDistanceAccumulator_lastReceivedDistance) = v20;
  SegmentDistanceAccumulator._updateInternalQuantity()();
  v69 = *&v3[OBJC_IVAR___WOSplitsDisplayAccumulator_builder];
  v21 = [objc_msgSend(a1 distanceProvider)];
  swift_unknownObjectRelease();
  if (v21)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = *(v11 + 32);
    v22(v9, v15, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
    v22(v17, v9, v10);
  }

  else
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    Date.init()();
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      outlined destroy of Date?(v9);
    }
  }

  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v11 + 8))(v17, v10);
  [v69 elapsedTimeAtDate_];
  v49 = v48;

  v50 = *&v3[OBJC_IVAR___WOSplitsDisplayAccumulator_elapsedTimeAccumulator];
  v51 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_segmentStartDuration;
  swift_beginAccess();
  if (v49 - *(v50 + v51) > 0.0)
  {
    v52 = v49 - *(v50 + v51);
  }

  else
  {
    v52 = 0.0;
  }

  v53 = *&v3[OBJC_IVAR___WOSplitsDisplayAccumulator_paceAccumulator];
  v54 = OBJC_IVAR___WOSegmentDistanceAccumulator_distance;
  swift_beginAccess();
  v55 = *(v18 + v54);
  v56 = objc_opt_self();
  v57 = v55;
  v58 = [v56 meterUnit];
  [v57 doubleValueForUnit_];
  v60 = v59;

  SegmentPaceAccumulator.updateDistance(_:duration:)(v60, v52);
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  __swift_project_value_buffer(v61, static WOLog.app);
  swift_unknownObjectRetain();
  v62 = v3;
  v34 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v34, v63))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v70 = v37;
    *v36 = 134218498;
    [objc_msgSend(a1 distanceProvider)];
    v65 = v64;
    swift_unknownObjectRelease();
    *(v36 + 4) = v65;
    *(v36 + 12) = 2048;
    *(v36 + 14) = v52;
    *(v36 + 22) = 2080;
    v66 = SplitsDisplayAccumulator.logString.getter();
    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, &v70);

    *(v36 + 24) = v68;
    v42 = "SplitsDisplayAccumulator: updated distance: %f, duration: %f, %s";
    v43 = v63;
    v44 = v34;
    v45 = v36;
    v46 = 32;
LABEL_23:
    _os_log_impl(&dword_20AEA4000, v44, v43, v42, v45, v46);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x20F2E9420](v37, -1, -1);
    MEMORY[0x20F2E9420](v36, -1, -1);
  }

LABEL_24:
}

void specialized SplitsDisplayAccumulator.splitsAccumulator.setter(void *a1)
{
  v3 = OBJC_IVAR___WOSplitsDisplayAccumulator_splitsAccumulator;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  v6 = [v4 removeAllSplitObservers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27WOSplitsAccumulatorObserver_pMd, &_sSo27WOSplitsAccumulatorObserver_pMR);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_10:

    SplitsDisplayAccumulator.assignStartValues()();

    return;
  }

  v8 = __CocoaSet.count.getter();
  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x20F2E7A20](i, v7);
      }

      else
      {
        v10 = *(v7 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [*(v1 + v3) addSplitObserver_];
      swift_unknownObjectRelease();
    }

    goto LABEL_10;
  }

  __break(1u);
}

unint64_t type metadata accessor for FIUIWorkoutSplit()
{
  result = lazy cache variable for type metadata for FIUIWorkoutSplit;
  if (!lazy cache variable for type metadata for FIUIWorkoutSplit)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for FIUIWorkoutSplit);
  }

  return result;
}

id SplitsAccumulatorFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SplitsAccumulatorFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SplitsAccumulatorFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SplitsAccumulatorFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SplitsAccumulatorFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized static SplitsAccumulatorFactory.makeStandardSplitsAccumulators(activityType:builder:powerAccumulator:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 identifier];
  v7 = objc_opt_self();
  v8 = v7;
  if (v6 == 46)
  {
    v9 = [v7 yardUnit];
    v10 = [v8 meterUnit];
    v11 = 100.0;
  }

  else
  {
    v9 = [v7 mileUnit];
    v10 = [v8 meterUnitWithMetricPrefix_];
    v11 = 1.0;
  }

  v12 = v10;
  v23 = [objc_allocWithZone(NLSessionActivitySplitsAccumulator) initWithBuilder:a2 activityType:a1 unit:v9 distancePerUnit:2 measurementSystem:0 isCustomSplit:a3 powerAccumulator:v11];
  v24 = [objc_allocWithZone(NLSessionActivitySplitsAccumulator) initWithBuilder:a2 activityType:a1 unit:v12 distancePerUnit:1 measurementSystem:0 isCustomSplit:a3 powerAccumulator:v11];
  v13 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v14 = v23;
  v15 = v24;
  for (i = 0; i != 2; ++i)
  {
    v17 = v22[i + 4];
    if (v17)
    {
      v18 = v17;
      MEMORY[0x20F2E6F30]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v19 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v13 = v21;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo34NLSessionActivitySplitsAccumulatorCSgMd, &_sSo34NLSessionActivitySplitsAccumulatorCSgMR);
  swift_arrayDestroy();

  return v13;
}

id specialized static SplitsAccumulatorFactory.makeCustomSplitsAccumulator(activityType:builder:userDistanceUnit:powerAccumulator:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = [objc_opt_self() currentThread];
  v9 = [v8 threadDictionary];

  *&v31 = 0xD00000000000001ALL;
  *(&v31 + 1) = 0x800000020B46DC00;
  v10 = [v9 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33[0] = v31;
  v33[1] = v32;
  if (*(&v32 + 1))
  {
    type metadata accessor for NLSessionActivitySplitsAccumulator(0, &lazy cache variable for type metadata for NLWorkoutSplitStorage, 0x277D0A840);
    if (swift_dynamicCast())
    {
      v11 = v30;
      goto LABEL_9;
    }
  }

  else
  {
    _sypSgWOhTm_6(v33, &_sypSgMd, &_sypSgMR);
  }

  v11 = [objc_opt_self() distanceSplitForActivityType:a1 userDistanceUnit:a3];
LABEL_9:
  [v11 value];
  if (v12 <= 0.0)
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static WOLog.app);
    v22 = a1;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v22;
      *v26 = v22;
      v27 = v22;
      _os_log_impl(&dword_20AEA4000, v23, v24, "No workout split storage for activity_type=%@, not creating custom splits accumulator.", v25, 0xCu);
      _sypSgWOhTm_6(v26, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v26, -1, -1);
      MEMORY[0x20F2E9420](v25, -1, -1);
    }

    return 0;
  }

  else
  {
    v13 = objc_opt_self();
    v14 = [v13 meterUnit];
    [v11 value];
    v16 = [objc_opt_self() quantityWithUnit:v14 doubleValue:v15];

    [v16 doubleValueForUnit_];
    v18 = v17;

    v19 = [v13 meterUnit];
    LODWORD(v14) = [a3 _isCompatibleWithUnit_];

    if (v14)
    {
      if ([a3 _isMetricDistance])
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }
    }

    else
    {
      v20 = 0;
    }

    v29 = [objc_allocWithZone(NLSessionActivitySplitsAccumulator) initWithBuilder:a2 activityType:a1 unit:a3 distancePerUnit:v20 measurementSystem:1 isCustomSplit:a4 powerAccumulator:v18];

    return v29;
  }
}

unint64_t specialized static SplitsAccumulatorFactory.makeAccumulators(activityType:builder:userDistanceUnit:powerAccumulator:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = specialized static SplitsAccumulatorFactory.makeStandardSplitsAccumulators(activityType:builder:powerAccumulator:)(a1, a2, a4);
  v30 = v8;
  v9 = specialized static SplitsAccumulatorFactory.makeCustomSplitsAccumulator(activityType:builder:userDistanceUnit:powerAccumulator:)(a1, a2, a3, a4);
  if (v9)
  {
    v10 = v9;
    v11 = FIUIDistanceTypeForActivityType();
    v12 = NLDistanceNotificationIntervalForDistanceType(v11);
    v13 = [objc_opt_self() quantityWithUnit:a3 doubleValue:v12];
    v14 = [objc_opt_self() meterUnit];
    [v13 doubleValueForUnit_];
    v16 = v15;

    if (v8 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v18 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x20F2E7A20](v18, v8);
        }

        else
        {
          if (v18 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v19 = *(v8 + 8 * v18 + 32);
        }

        v20 = v19;
        v21 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        [v19 definedDistance];
        v23 = v22;
        [v10 definedDistance];
        if (v23 == v24)
        {
          [v20 definedDistance];
          v26 = v25;

          if (v26 == v16)
          {

            return v8;
          }
        }

        else
        {
        }

        ++v18;
        if (v21 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:
    v27 = v10;
    MEMORY[0x20F2E6F30]();
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v29 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    return v30;
  }

  return v8;
}

void *specialized static SplitsAccumulatorFactory.displayedAccumulator(for:userDistanceUnit:)(unint64_t a1, void *a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v6)
      {
        v8 = MEMORY[0x20F2E7A20](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v8 = *(v3 + 8 * v5 + 32);
      }

      v9 = v8;
      v10 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if ([v8 isCustomSplit])
      {
        return v9;
      }

      ++v5;
    }

    while (v10 != i);
    v11 = 0;
    v22 = v3;
    while (1)
    {
      if (v6)
      {
        v12 = MEMORY[0x20F2E7A20](v11, v3);
      }

      else
      {
        if (v11 >= *(v7 + 16))
        {
          goto LABEL_29;
        }

        v12 = *(v3 + 8 * v11 + 32);
      }

      v9 = v12;
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v14 = i;
      v15 = [v12 measurementSystem];
      v16 = [objc_opt_self() meterUnit];
      v17 = a2;
      v18 = [a2 _isCompatibleWithUnit_];

      if (v18)
      {
        v19 = [v17 _isMetricDistance];
        v20 = 1;
        if (!v19)
        {
          v20 = 2;
        }
      }

      else
      {
        v20 = 0;
      }

      a2 = v17;
      i = v14;
      if (v15 == v20 && ![v9 isCustomSplit])
      {
        return v9;
      }

      ++v11;
      v3 = v22;
      if (v13 == i)
      {
        return 0;
      }
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  return 0;
}

uint64_t type metadata accessor for NLSessionActivitySplitsAccumulator(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void *DataLinkHealthMonitor.init()()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[3] = 0;
  v1[4] = 0;
  v1[5] = 0;
  Date.init()();
  *(v1 + OBJC_IVAR____TtC11WorkoutCore21DataLinkHealthMonitor_timer) = 0;
  Date.init()();
  v6 = type metadata accessor for TimeBucketedData();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v1[2] = TimeBucketedData.init(bucketDuration:maxBucketCount:startDate:)(30, 0, v5, 60.0);
  DataLinkHealthMonitor.spinUpTimer()();
  return v1;
}

uint64_t DataLinkHealthMonitor.didTransmitData(_:)(uint64_t a1, unint64_t a2)
{
  v28 = a2;
  v30 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v30 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v31 = *(v5 - 8);
  v32 = v5;
  v6 = *(v31 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  Date.init()();
  type metadata accessor for OS_dispatch_queue();
  v27 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  swift_weakInit();
  (*(v10 + 16))(v13, v15, v9);
  v17 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = v16;
  *(v18 + 3) = a1;
  v19 = a1;
  v20 = v28;
  *(v18 + 4) = v28;
  (*(v10 + 32))(&v18[v17], v13, v9);
  aBlock[4] = partial apply for closure #1 in DataLinkHealthMonitor.didTransmitData(_:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_38_1;
  v21 = _Block_copy(aBlock);
  outlined copy of Data._Representation(v19, v20);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v23 = v29;
  v22 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v27;
  MEMORY[0x20F2E7580](0, v8, v23, v21);
  _Block_release(v21);

  (*(v33 + 8))(v23, v22);
  (*(v31 + 8))(v8, v32);
  return (*(v10 + 8))(v15, v9);
}

uint64_t closure #1 in DataLinkHealthMonitor.didTransmitData(_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = *(result + 16);
    v15 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v15 != 2)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v18 = *(a2 + 16);
      v17 = *(a2 + 24);
      v19 = __OFSUB__(v17, v18);
      v16 = v17 - v18;
      if (!v19)
      {
        goto LABEL_12;
      }

      __break(1u);
    }

    else if (!v15)
    {
      v16 = BYTE6(a3);
      goto LABEL_12;
    }

    LODWORD(v16) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      goto LABEL_16;
    }

    v16 = v16;
LABEL_12:
    v20 = v16;
    Date.init()();
    TimeBucketedData.addSample(_:date:)(v11, v20);
    (*(v8 + 8))(v11, v7);
    v21 = OBJC_IVAR____TtC11WorkoutCore21DataLinkHealthMonitor_lastSentTimestamp;
    swift_beginAccess();
    (*(v8 + 24))(v13 + v21, a4, v7);
    result = swift_endAccess();
    v22 = *(v13 + 24);
    v23 = __CFADD__(v22, 1);
    v24 = v22 + 1;
    if (!v23)
    {
      *(v13 + 24) = v24;
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in DataLinkHealthMonitor.didReceiveAck()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 32);
    v2 = __CFADD__(v1, 1);
    v3 = v1 + 1;
    if (v2)
    {
      __break(1u);
    }

    else
    {
      *(result + 32) = v3;
    }
  }

  return result;
}

uint64_t DataLinkHealthMonitor.didReceiveAck()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v18);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = a1;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = a2;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v12, v8, v15);
  _Block_release(v15);

  (*(v5 + 8))(v8, v4);
  return (*(v9 + 8))(v12, v18);
}

uint64_t closure #1 in DataLinkHealthMonitor.didReceiveError()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 40);
    v2 = __CFADD__(v1, 1);
    v3 = v1 + 1;
    if (v2)
    {
      __break(1u);
    }

    else
    {
      *(result + 40) = v3;
    }
  }

  return result;
}

void DataLinkHealthMonitor.spinUpTimer()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {

    DataLinkHealthMonitor._mainThreadSpinUpTimer()();
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v10 = static OS_dispatch_queue.main.getter();
    v11 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = partial apply for closure #1 in DataLinkHealthMonitor.spinUpTimer();
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_23_3;
    v12 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v9, v4, v12);
    _Block_release(v12);

    (*(v1 + 8))(v4, v0);
    (*(v6 + 8))(v9, v5);
  }
}

uint64_t closure #1 in DataLinkHealthMonitor.spinUpTimer()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    DataLinkHealthMonitor._mainThreadSpinUpTimer()();
  }

  return result;
}

void DataLinkHealthMonitor._mainThreadSpinUpTimer()()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore21DataLinkHealthMonitor_timer;
  [*(v0 + OBJC_IVAR____TtC11WorkoutCore21DataLinkHealthMonitor_timer) invalidate];
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_weakInit();
  v7[4] = partial apply for closure #1 in DataLinkHealthMonitor._mainThreadSpinUpTimer();
  v7[5] = v3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
  v7[3] = &block_descriptor_90;
  v4 = _Block_copy(v7);

  v5 = [v2 scheduledTimerWithTimeInterval:1 repeats:v4 block:60.0];
  _Block_release(v4);
  v6 = *(v0 + v1);
  *(v0 + v1) = v5;
}

uint64_t closure #1 in DataLinkHealthMonitor._mainThreadSpinUpTimer()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    DataLinkHealthMonitor._mainThreadDumpNetworkingStats()();
    DataLinkHealthMonitor._mainThreadDumpHealthStats()();
  }

  return result;
}

uint64_t DataLinkHealthMonitor._mainThreadDumpNetworkingStats()()
{
  v1 = v0;
  v103 = type metadata accessor for DispatchPredicate();
  v105 = *(v103 - 8);
  v2 = *(v105 + 64);
  MEMORY[0x28223BE20](v103);
  v4 = (&v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v90 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v93 = &v87 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v94 = &v87 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v87 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v15);
  v89 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v92 = &v87 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v87 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v87 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v87 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v87 - v31;
  Date.init()();
  Date.addingTimeInterval(_:)();
  v95 = v27;
  v87 = v32;
  Date.addingTimeInterval(_:)();
  v33 = *(v1 + 16);
  v34 = v16[7];
  v34(v14, 1, 1, v15);
  v35 = TimeBucketedData.sum(since:)(v14);
  v36 = v14;
  v37 = v94;
  _s10Foundation4DateVSgWOhTm_16(v36, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v104 = v16;
  v38 = v16[2];
  v88 = v30;
  v91 = v38;
  v38(v37, v30, v15);
  v100 = v34;
  v101 = v15;
  v34(v37, 0, 1, v15);
  v39 = v24;
  Date.init()();
  v40 = *(v33 + 40);
  *v4 = v40;
  v41 = v105;
  v42 = *(v105 + 104);
  v98 = *MEMORY[0x277D851F0];
  v43 = v103;
  v99 = v105 + 104;
  v97 = v42;
  v42(v4);
  v44 = v40;
  LOBYTE(v32) = _dispatchPreconditionTest(_:)();
  v45 = *(v41 + 8);
  v105 = v41 + 8;
  v96 = v45;
  v46 = v45(v4, v43);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v47 = *(v33 + 40);
  MEMORY[0x28223BE20](v46);
  *(&v87 - 4) = v37;
  *(&v87 - 3) = v33;
  *(&v87 - 2) = v39;
  v43 = 0;
  OS_dispatch_queue.sync<A>(execute:)();
  v48 = v106;
  v49 = v104[1];
  v50 = v101;
  ++v104;
  v102 = v49;
  v49(v39, v101);
  _s10Foundation4DateVSgWOhTm_16(v37, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v51 = v93;
  v91(v93, v95, v50);
  v100(v51, 0, 1, v50);
  v39 = v92;
  Date.init()();
  v52 = *(v33 + 40);
  *v4 = v52;
  v53 = v103;
  v97(v4, v98, v103);
  v54 = v52;
  LOBYTE(v47) = _dispatchPreconditionTest(_:)();
  v55 = v96(v4, v53);
  if ((v47 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v56 = *(v33 + 40);
  MEMORY[0x28223BE20](v55);
  *(&v87 - 4) = v51;
  *(&v87 - 3) = v33;
  *(&v87 - 2) = v39;
  OS_dispatch_queue.sync<A>(execute:)();
  v57 = v106;
  v58 = v39;
  v39 = v101;
  v102(v58, v101);
  _s10Foundation4DateVSgWOhTm_16(v51, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v59 = v90;
  v100(v90, 1, 1, v39);
  v60 = v89;
  Date.init()();
  v61 = *(v33 + 40);
  *v4 = v61;
  v62 = v103;
  v97(v4, v98, v103);
  v63 = v61;
  LOBYTE(v56) = _dispatchPreconditionTest(_:)();
  v64 = v96(v4, v62);
  if (v56)
  {
    v65 = *(v33 + 40);
    MEMORY[0x28223BE20](v64);
    *(&v87 - 4) = v59;
    *(&v87 - 3) = v33;
    *(&v87 - 2) = v60;
    OS_dispatch_queue.sync<A>(execute:)();
    v77 = v106;
    v102(v60, v39);
    _s10Foundation4DateVSgWOhTm_16(v59, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    __swift_project_value_buffer(v78, static WOLog.dataLink);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();
    v81 = os_log_type_enabled(v79, v80);
    v71 = v95;
    if (v81)
    {
      v82 = swift_slowAlloc();
      *v82 = 134218752;
      *(v82 + 4) = v35;
      *(v82 + 12) = 2048;
      *(v82 + 14) = v48;
      *(v82 + 22) = 2048;
      *(v82 + 24) = v57;
      *(v82 + 32) = 2048;
      *(v82 + 34) = v77;
      _os_log_impl(&dword_20AEA4000, v79, v80, "Total Uncompressed Bytes Sent: %f, 1min %fB/s, 5min %fB/s, total %fB/s", v82, 0x2Au);
      MEMORY[0x20F2E9420](v82, -1, -1);
    }

    goto LABEL_13;
  }

LABEL_16:
  __break(1u);
  swift_once();
  v66 = type metadata accessor for Logger();
  __swift_project_value_buffer(v66, static WOLog.dataLink);
  v67 = v43;
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.error.getter();

  v70 = os_log_type_enabled(v68, v69);
  v71 = v95;
  if (v70)
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v72 = 138412290;
    v74 = v43;
    v75 = _swift_stdlib_bridgeErrorToNSError();
    *(v72 + 4) = v75;
    *v73 = v75;
    _os_log_impl(&dword_20AEA4000, v68, v69, "Unable to dump network stats: %@", v72, 0xCu);
    _s10Foundation4DateVSgWOhTm_16(v73, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v76 = v73;
    v39 = v101;
    MEMORY[0x20F2E9420](v76, -1, -1);
    MEMORY[0x20F2E9420](v72, -1, -1);
  }

LABEL_13:
  v83 = v88;
  v84 = v87;
  v85 = v102;
  v102(v71, v39);
  v85(v83, v39);
  return (v85)(v84, v39);
}

void DataLinkHealthMonitor._mainThreadDumpHealthStats()()
{
  v3 = v0;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = *(v0 + 4);
  v13 = *(v0 + 5);
  v14 = __CFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_10;
  }

  v16 = *(v0 + 3);
  v1 = v16 - v15;
  if (v16 < v15)
  {
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.dataLink);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134218496;
      v21 = *(v3 + 3);
      *(v20 + 4) = *(v3 + 4);
      *(v20 + 12) = 2048;
      *(v20 + 14) = *(v3 + 5);
      *(v20 + 22) = 2048;
      *(v20 + 24) = v21;

      _os_log_impl(&dword_20AEA4000, v18, v19, "Error: have more acked (%lu and errored %lu than sent %lu", v20, 0x20u);
      MEMORY[0x20F2E9420](v20, -1, -1);
    }

    else
    {
    }

    v1 = 0;
  }

  Date.init()();
  v22 = OBJC_IVAR____TtC11WorkoutCore21DataLinkHealthMonitor_lastSentTimestamp;
  swift_beginAccess();
  (*(v5 + 16))(v9, &v3[v22], v4);
  Date.timeIntervalSince(_:)();
  v2 = v23;
  v24 = *(v5 + 8);
  v24(v9, v4);
  v24(v11, v4);
  if (one-time initialization token for dataLink != -1)
  {
    goto LABEL_14;
  }

LABEL_10:
  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static WOLog.dataLink);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134219008;
    v29 = *(v3 + 4);
    *(v28 + 4) = *(v3 + 3);
    *(v28 + 12) = 2048;
    *(v28 + 14) = v29;
    *(v28 + 22) = 2048;
    *(v28 + 24) = *(v3 + 5);

    *(v28 + 32) = 2048;
    *(v28 + 34) = v1;
    *(v28 + 42) = 2048;
    *(v28 + 44) = v2;
    _os_log_impl(&dword_20AEA4000, v26, v27, "Sent: %lu Acked: %lu Errored: %lu Unreplied: %lu Waiting: %f", v28, 0x34u);
    MEMORY[0x20F2E9420](v28, -1, -1);
  }

  else
  {
  }
}

uint64_t DataLinkHealthMonitor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore21DataLinkHealthMonitor_timer;
  v2 = *&v0[OBJC_IVAR____TtC11WorkoutCore21DataLinkHealthMonitor_timer];
  if (v2)
  {
    [v2 invalidate];
  }

  v3 = *(v0 + 2);

  v4 = OBJC_IVAR____TtC11WorkoutCore21DataLinkHealthMonitor_lastSentTimestamp;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DataLinkHealthMonitor()
{
  result = type metadata singleton initialization cache for DataLinkHealthMonitor;
  if (!type metadata singleton initialization cache for DataLinkHealthMonitor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for DataLinkHealthMonitor()
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

uint64_t _s10Foundation4DateVSgWOhTm_16(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t partial apply for closure #1 in DataLinkHealthMonitor.didTransmitData(_:)()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return closure #1 in DataLinkHealthMonitor.didTransmitData(_:)(v2, v3, v4, v5);
}

uint64_t closure #1 in TimeBucketedData.average(since:until:)partial apply@<X0>(double *a1@<X8>)
{
  return partial apply for closure #1 in TimeBucketedData.average(since:until:)(a1);
}

{
  return partial apply for closure #1 in TimeBucketedData.average(since:until:)(a1);
}

unint64_t specialized Dictionary.subscript.setter(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = *v3;
    result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if (v8)
    {
      v9 = result;
      v10 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v4;
      v16 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v12 = v16;
      }

      result = specialized _NativeDictionary._delete(at:)(v9, v12);
      *v4 = v12;
    }
  }

  else
  {
    v14 = *v3;
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a3, v15, *&a1);
    *v3 = v17;
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    v9 = *v2;
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      v11 = result;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        specialized _NativeDictionary.copy()();
        v14 = v16;
      }

      result = specialized _NativeDictionary._delete(at:)(v11, v14);
      *v3 = v14;
    }
  }

  return result;
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    outlined destroy of Date?(a1);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v8);
    v14 = type metadata accessor for Station.Mood();
    (*(*(v14 - 8) + 8))(a2, v14);
    return outlined destroy of Date?(v8);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for Station.Mood();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        specialized _NativeDictionary.copy()();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = specialized _NativeDictionary._delete(at:)(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

{
  v4 = v3;
  if (a2)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v10 = type metadata accessor for Station.Mood();
    result = (*(*(v10 - 8) + 8))(a3, v10);
    *v3 = v26;
  }

  else
  {
    v12 = *v3;
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if (v14)
    {
      v15 = v13;
      v16 = *v4;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v4;
      v27 = *v4;
      if (!v17)
      {
        specialized _NativeDictionary.copy()();
        v18 = v27;
      }

      v19 = *(v18 + 48);
      v20 = type metadata accessor for Station.Mood();
      v21 = *(v20 - 8);
      v22 = *(v21 + 8);
      v22(v19 + *(v21 + 72) * v15, v20);
      v23 = *(*(v18 + 56) + 16 * v15 + 8);

      specialized _NativeDictionary._delete(at:)(v15, v18);
      result = (v22)(a3, v20);
      *v4 = v18;
    }

    else
    {
      v24 = type metadata accessor for Station.Mood();
      v25 = *(*(v24 - 8) + 8);

      return v25(a3, v24);
    }
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        specialized _NativeDictionary.copy()();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = specialized _NativeDictionary._delete(at:)(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t static ExternalProvider.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_beginAccess();
  if (v4 == *(a2 + 32) && v5 == *(a2 + 40))
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

double static ExternalProvider.deserialize(from:)@<D0>(void *a1@<X0>, char **a2@<X8>)
{
  v95 = a2;
  v3 = type metadata accessor for UUID();
  v93 = *(v3 - 8);
  v94 = v3;
  v4 = *(v93 + 64);
  MEMORY[0x28223BE20](v3);
  v92 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v91 = *(v6 - 8);
  v7 = v91[8];
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v84 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v84 - v14;
  v16 = *MEMORY[0x277D7E810];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  v20 = [a1 keyedStrings];
  v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v21 + 16))
  {

    goto LABEL_11;
  }

  v22 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v19);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
LABEL_11:

    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    __swift_project_value_buffer(v73, static WOLog.core);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v74, v75))
    {
      goto LABEL_26;
    }

    v76 = swift_slowAlloc();
    *v76 = 0;
    v77 = "Could not determine source name: no value.";
LABEL_25:
    _os_log_impl(&dword_20AEA4000, v74, v75, v77, v76, 2u);
    MEMORY[0x20F2E9420](v76, -1, -1);
    goto LABEL_26;
  }

  v25 = (*(v21 + 56) + 16 * v22);
  v26 = v25[1];
  v89 = *v25;
  v90 = v26;

  v27 = *MEMORY[0x277D7E800];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;
  v31 = [a1 keyedStrings];
  v32 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v32 + 16))
  {

    goto LABEL_16;
  }

  v33 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v30);
  v35 = v34;

  if ((v35 & 1) == 0)
  {
LABEL_16:

    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    __swift_project_value_buffer(v78, static WOLog.core);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v74, v75))
    {
      goto LABEL_26;
    }

    v76 = swift_slowAlloc();
    *v76 = 0;
    v77 = "Could not determine bundleId: no value.";
    goto LABEL_25;
  }

  v36 = (*(v32 + 56) + 16 * v33);
  v37 = *v36;
  v38 = v36[1];

  v39 = *MEMORY[0x277D7E808];
  v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;
  v42 = [a1 keyedDatas];
  v43 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v43 + 16))
  {

    goto LABEL_21;
  }

  v87 = v37;
  v44 = specialized __RawDictionaryStorage.find<A>(_:)(v88, v41);
  v46 = v45;

  if ((v46 & 1) == 0)
  {
LABEL_21:

    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    __swift_project_value_buffer(v79, static WOLog.core);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v74, v75))
    {
      goto LABEL_26;
    }

    v76 = swift_slowAlloc();
    *v76 = 0;
    v77 = "Could not determine image data: no value.";
    goto LABEL_25;
  }

  v47 = (*(v43 + 56) + 16 * v44);
  v48 = v47[1];
  v88 = *v47;
  v86 = v48;
  outlined copy of Data._Representation(v88, v48);

  v49 = *MEMORY[0x277D7E820];
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;
  v53 = [a1 keyedDates];
  v54 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v54 + 16))
  {
    v55 = specialized __RawDictionaryStorage.find<A>(_:)(v50, v52);
    v57 = v56;

    if (v57)
    {
      v58 = v91;
      v59 = v91[2];
      v59(v13, *(v54 + 56) + v91[9] * v55, v6);

      v85 = v38;
      v60 = v58[4];
      v60(v15, v13, v6);
      v61 = v60;
      v59(v10, v15, v6);
      v62 = [a1 uuid];
      v63 = v92;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v64 = type metadata accessor for ExternalProvider();
      v65 = *(v64 + 48);
      v66 = *(v64 + 52);
      v67 = swift_allocObject();
      v68 = v90;
      *(v67 + 2) = v89;
      *(v67 + 3) = v68;
      v69 = v85;
      *(v67 + 4) = v87;
      *(v67 + 5) = v69;
      v70 = v86;
      *(v67 + 6) = v88;
      *(v67 + 7) = v70;
      v61(&v67[OBJC_IVAR____TtC11WorkoutCore16ExternalProvider_syncStartDate], v10, v6);
      (*(v93 + 32))(&v67[OBJC_IVAR____TtC11WorkoutCore16ExternalProvider_uuid], v63, v94);
      v71 = v95;
      v95[3] = v64;
      *v71 = v67;
      (v58[1])(v15, v6);
      return result;
    }
  }

  else
  {
  }

  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v81 = type metadata accessor for Logger();
  __swift_project_value_buffer(v81, static WOLog.core);
  v74 = Logger.logObject.getter();
  v82 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v74, v82))
  {
    v83 = swift_slowAlloc();
    *v83 = 0;
    _os_log_impl(&dword_20AEA4000, v74, v82, "Could not determine sync start date: no value.", v83, 2u);
    MEMORY[0x20F2E9420](v83, -1, -1);
  }

  outlined consume of Data._Representation(v88, v86);
LABEL_26:

  result = 0.0;
  v80 = v95;
  *v95 = 0u;
  *(v80 + 1) = 0u;
  return result;
}

uint64_t ExternalProvider.description.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  MEMORY[0x20F2E6D80](v1, v2);

  MEMORY[0x20F2E6D80](39, 0xE100000000000000);
  return 0x72656469766F7270;
}

char *ExternalProvider.__allocating_init(sourceName:sourceBundleIdentifier:sourceImageData:syncStartDate:uuid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(v8 + 48);
  v18 = *(v8 + 52);
  v19 = swift_allocObject();
  *(v19 + 2) = a1;
  *(v19 + 3) = a2;
  *(v19 + 4) = a3;
  *(v19 + 5) = a4;
  *(v19 + 6) = a5;
  *(v19 + 7) = a6;
  v20 = OBJC_IVAR____TtC11WorkoutCore16ExternalProvider_syncStartDate;
  v21 = type metadata accessor for Date();
  (*(*(v21 - 8) + 32))(&v19[v20], a7, v21);
  v22 = OBJC_IVAR____TtC11WorkoutCore16ExternalProvider_uuid;
  v23 = type metadata accessor for UUID();
  (*(*(v23 - 8) + 32))(&v19[v22], a8, v23);
  return v19;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExternalProvider.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ExternalProvider.CodingKeys()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExternalProvider.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ExternalProvider.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ExternalProvider.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ExternalProvider.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000656DLL;
  v4 = 0x614E656372756F73;
  v5 = 0xEF61746144656761;
  v6 = 0x6D49656372756F73;
  v7 = 0xED00006574614474;
  v8 = 0x72617453636E7973;
  if (v2 != 3)
  {
    v8 = 1684632949;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000016;
    v3 = 0x800000020B455080;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ExternalProvider.CodingKeys()
{
  v1 = *v0;
  v2 = 0x614E656372756F73;
  v3 = 0x6D49656372756F73;
  v4 = 0x72617453636E7973;
  if (v1 != 3)
  {
    v4 = 1684632949;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance ExternalProvider.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized ExternalProvider.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ExternalProvider.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ExternalProvider.CodingKeys and conformance ExternalProvider.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ExternalProvider.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ExternalProvider.CodingKeys and conformance ExternalProvider.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t key path setter for ExternalProvider.sourceName : ExternalProvider(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t ExternalProvider.sourceName.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ExternalProvider.sourceName.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t key path setter for ExternalProvider.sourceBundleIdentifier : ExternalProvider(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 40);
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
}

uint64_t ExternalProvider.sourceBundleIdentifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ExternalProvider.sourceBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t key path setter for ExternalProvider.sourceImageData : ExternalProvider(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 48);
  v6 = *(v4 + 56);
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  outlined copy of Data._Representation(v2, v3);
  return outlined consume of Data._Representation(v5, v6);
}

uint64_t ExternalProvider.sourceImageData.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  outlined copy of Data._Representation(v1, *(v0 + 56));
  return v1;
}

uint64_t ExternalProvider.sourceImageData.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return outlined consume of Data._Representation(v5, v6);
}

uint64_t ExternalProvider.syncStartDate.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

char *ExternalProvider.init(sourceName:sourceBundleIdentifier:sourceImageData:syncStartDate:uuid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 2) = a1;
  *(v8 + 3) = a2;
  *(v8 + 4) = a3;
  *(v8 + 5) = a4;
  *(v8 + 6) = a5;
  *(v8 + 7) = a6;
  v11 = OBJC_IVAR____TtC11WorkoutCore16ExternalProvider_syncStartDate;
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 32))(&v8[v11], a7, v12);
  v13 = OBJC_IVAR____TtC11WorkoutCore16ExternalProvider_uuid;
  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 32))(&v8[v13], a8, v14);
  return v8;
}

uint64_t ExternalProvider.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ExternalProvider.init(from:)(a1);
  return v5;
}

uint64_t ExternalProvider.init(from:)(uint64_t *a1)
{
  v2 = type metadata accessor for UUID();
  v30 = *(v2 - 8);
  v31 = v2;
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore16ExternalProviderC10CodingKeys33_16CFC71F3F099194EA929A55B0075CFFLLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore16ExternalProviderC10CodingKeys33_16CFC71F3F099194EA929A55B0075CFFLLOGMR);
  v10 = *(v33 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v33);
  v13 = &v29 - v12;
  v14 = a1[3];
  v15 = a1[4];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1Tm_3(a1, v14);
  lazy protocol witness table accessor for type ExternalProvider.CodingKeys and conformance ExternalProvider.CodingKeys();
  v16 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    v17 = v35;
    type metadata accessor for ExternalProvider();
    v26 = *(*v17 + 48);
    v27 = *(*v17 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v18 = v9;
    v19 = v10;
    v34 = v5;
    v20 = v32;
    LOBYTE(v37) = 0;
    v21 = KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v35;
    *(v35 + 16) = v21;
    *(v17 + 24) = v22;
    LOBYTE(v37) = 1;
    *(v17 + 32) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v17 + 40) = v23;
    v38 = 2;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v17 + 48) = v37;
    LOBYTE(v37) = 3;
    _s10Foundation4DateVACSeAAWlTm_3(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v29 = 0;
    (*(v20 + 32))(v17 + OBJC_IVAR____TtC11WorkoutCore16ExternalProvider_syncStartDate, v18, v6);
    LOBYTE(v37) = 4;
    _s10Foundation4DateVACSeAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v24 = v34;
    v25 = v31;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v19 + 8))(v13, v33);
    (*(v30 + 32))(v17 + OBJC_IVAR____TtC11WorkoutCore16ExternalProvider_uuid, v24, v25);
  }

  __swift_destroy_boxed_opaque_existential_1Tm_23(v36);
  return v17;
}

uint64_t ExternalProvider.encode(to:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore16ExternalProviderC10CodingKeys33_16CFC71F3F099194EA929A55B0075CFFLLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore16ExternalProviderC10CodingKeys33_16CFC71F3F099194EA929A55B0075CFFLLOGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm_3(a1, a1[3]);
  lazy protocol witness table accessor for type ExternalProvider.CodingKeys and conformance ExternalProvider.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_beginAccess();
  v12 = v4[2];
  v13 = v4[3];
  v22 = 0;

  KeyedEncodingContainer.encode(_:forKey:)();
  if (v3)
  {
    (*(v7 + 8))(v10, v6);
  }

  else
  {

    swift_beginAccess();
    v14 = v4[4];
    v15 = v4[5];
    v21 = 1;

    KeyedEncodingContainer.encode(_:forKey:)();

    swift_beginAccess();
    v16 = v4[7];
    v19 = v4[6];
    v20 = v16;
    v18[7] = 2;
    outlined copy of Data._Representation(v19, v16);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v19, v20);
    LOBYTE(v19) = 3;
    type metadata accessor for Date();
    _s10Foundation4DateVACSeAAWlTm_3(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v19) = 4;
    type metadata accessor for UUID();
    _s10Foundation4DateVACSeAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t one-time initialization function for placeholder()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() zeroObjectModificationDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init()();
  v11 = type metadata accessor for ExternalProvider();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0xE000000000000000;
  *(v14 + 32) = 0;
  *(v14 + 40) = 0xE000000000000000;
  *(v14 + 48) = xmmword_20B42FB30;
  (*(v6 + 32))(v14 + OBJC_IVAR____TtC11WorkoutCore16ExternalProvider_syncStartDate, v9, v5);
  result = (*(v1 + 32))(v14 + OBJC_IVAR____TtC11WorkoutCore16ExternalProvider_uuid, v4, v0);
  static ExternalProvider.placeholder = v14;
  return result;
}

uint64_t static ExternalProvider.placeholder.getter()
{
  if (one-time initialization token for placeholder != -1)
  {
    swift_once();
  }
}

char *ExternalProvider.deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  outlined consume of Data._Representation(*(v0 + 6), *(v0 + 7));
  v3 = OBJC_IVAR____TtC11WorkoutCore16ExternalProvider_syncStartDate;
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = OBJC_IVAR____TtC11WorkoutCore16ExternalProvider_uuid;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  return v0;
}

uint64_t ExternalProvider.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  outlined consume of Data._Representation(*(v0 + 6), *(v0 + 7));
  v3 = OBJC_IVAR____TtC11WorkoutCore16ExternalProvider_syncStartDate;
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = OBJC_IVAR____TtC11WorkoutCore16ExternalProvider_uuid;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Decodable.init(from:) in conformance ExternalProvider@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for ExternalProvider();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = ExternalProvider.init(from:)(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

id ExternalProvider.serialize()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v72 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v74 = &v71 - v6;
  v75 = type metadata accessor for Date();
  v73 = *(v75 - 8);
  v7 = v73;
  v8 = *(v73 + 64);
  MEMORY[0x28223BE20](v75);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = v0[4];
  v12 = v1[5];

  v13 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(v11, v12);
  v15 = v14;
  static Date.now.getter();
  v16 = objc_allocWithZone(MEMORY[0x277D7E7E8]);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v18 = Data._bridgeToObjectiveC()().super.isa;
  v19 = Date._bridgeToObjectiveC()().super.isa;
  v20 = [v16 initWithVersion:1 type:4 uuid:isa persistedData:v18 persistedProtoData:0 objectState:0 objectModificationDate:v19 syncIdentity:0];

  outlined consume of Data._Representation(v13, v15);
  v21 = *(v7 + 8);
  v71 = v10;
  v21(v10, v75);
  v22 = *MEMORY[0x277D7E810];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;
  swift_beginAccess();
  v26 = v1[2];
  v27 = v1[3];

  v28 = [v20 keyedStrings];
  v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v78 = v29;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, v27, v23, v25, isUniquelyReferenced_nonNull_native);

  v31 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v20 setKeyedStrings_];

  v32 = *MEMORY[0x277D7E800];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;
  v36 = v1[4];
  v37 = v1[5];

  v38 = [v20 keyedStrings];
  v39 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v40 = swift_isUniquelyReferenced_nonNull_native();
  v78 = v39;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v36, v37, v33, v35, v40);

  v41 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v20 setKeyedStrings_];

  v42 = *MEMORY[0x277D7E808];
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;
  swift_beginAccess();
  v46 = v1[6];
  v47 = v1[7];
  outlined copy of Data._Representation(v46, v47);
  v48 = [v20 keyedDatas];
  v49 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v50 = swift_isUniquelyReferenced_nonNull_native();
  v77 = v49;
  v51 = v46;
  v52 = v75;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v51, v47, v43, v45, v50);

  v53 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v20 setKeyedDatas_];

  v54 = *MEMORY[0x277D7E820];
  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;
  v59 = v73;
  v58 = v74;
  (*(v73 + 16))(v74, v1 + OBJC_IVAR____TtC11WorkoutCore16ExternalProvider_syncStartDate, v52);
  v60 = v59;
  v61 = v58;
  (*(v59 + 56))(v58, 0, 1, v52);
  v62 = [v20 keyedDates];
  v63 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v64 = v61;
  v77 = v63;
  if ((*(v60 + 48))(v61, 1, v52) == 1)
  {
    outlined destroy of Date?(v61);
    v65 = v72;
    specialized Dictionary._Variant.removeValue(forKey:)(v55, v57, v72);

    outlined destroy of Date?(v65);
  }

  else
  {
    v66 = v71;
    (*(v60 + 32))(v71, v64, v52);
    v67 = v77;
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v76 = v67;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v66, v55, v57, v68);

    v77 = v76;
  }

  v69 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v20 setKeyedDates_];

  return v20;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ExternalProvider()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  MEMORY[0x20F2E6D80](v2, v3);

  MEMORY[0x20F2E6D80](39, 0xE100000000000000);
  return 0x72656469766F7270;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ExternalProvider(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  swift_beginAccess();
  if (v4 == *(v3 + 32) && v5 == *(v3 + 40))
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t ExternalProvider.hash(into:)()
{
  swift_beginAccess();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);

  String.hash(into:)();
}

Swift::Int ExternalProvider.hashValue.getter()
{
  Hasher.init(_seed:)();
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExternalProvider()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ExternalProvider()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExternalProvider()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t type metadata accessor for ExternalProvider()
{
  result = type metadata singleton initialization cache for ExternalProvider;
  if (!type metadata singleton initialization cache for ExternalProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ExternalProvider.CodingKeys and conformance ExternalProvider.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ExternalProvider.CodingKeys and conformance ExternalProvider.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExternalProvider.CodingKeys and conformance ExternalProvider.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExternalProvider.CodingKeys and conformance ExternalProvider.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExternalProvider.CodingKeys and conformance ExternalProvider.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExternalProvider.CodingKeys and conformance ExternalProvider.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExternalProvider.CodingKeys and conformance ExternalProvider.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExternalProvider.CodingKeys and conformance ExternalProvider.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExternalProvider.CodingKeys and conformance ExternalProvider.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExternalProvider.CodingKeys and conformance ExternalProvider.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExternalProvider.CodingKeys and conformance ExternalProvider.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExternalProvider.CodingKeys and conformance ExternalProvider.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExternalProvider.CodingKeys and conformance ExternalProvider.CodingKeys);
  }

  return result;
}

uint64_t type metadata completion function for ExternalProvider()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExternalProvider.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ExternalProvider.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t specialized ExternalProvider.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ExternalProvider.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

void *__swift_project_boxed_opaque_existential_1Tm_3(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t static VoiceFeedbackWorkoutStep.make(workoutStep:distanceType:formattingManager:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v92 = a2;
  v7 = type metadata accessor for VoiceFeedbackStepType();
  v98 = *(v7 - 8);
  v8 = *(v98 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20WorkoutAnnouncements23VoiceFeedbackPaceFormatOSgMd, &_s20WorkoutAnnouncements23VoiceFeedbackPaceFormatOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v91 = v86 - v13;
  v89 = type metadata accessor for VoiceFeedbackMetricType();
  v88 = *(v89 - 8);
  v14 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v90 = v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20WorkoutAnnouncements23VoiceFeedbackTargetZoneVSgMd, &_s20WorkoutAnnouncements23VoiceFeedbackTargetZoneVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v100 = v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v101 = v86 - v20;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v21 = v102;
  v22 = [v102 goalTypeIdentifier];

  v99 = v10;
  if (v22 <= 1)
  {
    if (!v22)
    {
      v96 = 1;
      v97 = 0;
LABEL_7:
      v28 = v101;
      goto LABEL_22;
    }

    if (v22 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v29 = v102;
      v30 = [v102 value];

      v28 = v101;
      if (v30)
      {
        v22 = [v30 _unit];
        v31 = v22;
        [v30 _value];
        v33 = v32;

        v96 = 0;
        v97 = v33;
        goto LABEL_22;
      }
    }

    while (1)
    {
LABEL_92:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  if (v22 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v23 = v102;
    v24 = [v102 value];

    if (v24)
    {
      v22 = [v24 _unit];
      v25 = v22;
      [v24 _value];
      v27 = v26;

      v96 = 0;
      v97 = v27;
      goto LABEL_7;
    }

    goto LABEL_92;
  }

  if (v22 != 3)
  {
    goto LABEL_92;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v34 = v102;
  v35 = [v102 value];

  if (!v35)
  {
    goto LABEL_92;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v36 = v102;
  v37 = [v102 goalTypeIdentifier];

  v38 = [a3 unitManager];
  if (!v38)
  {
    __break(1u);
    goto LABEL_92;
  }

  v39 = v38;
  v28 = v101;
  if (v37 > 2)
  {
    if (v37 != 3)
    {
      goto LABEL_92;
    }

    v40 = [v38 userActiveEnergyBurnedUnit];
  }

  else if (v37 == 1)
  {
    v40 = [v38 userDistanceHKUnitForDistanceType_];
  }

  else
  {
    if (v37 != 2)
    {
      goto LABEL_92;
    }

    v40 = [objc_opt_self() secondUnit];
  }

  v22 = v40;

  [v35 doubleValueForUnit_];
  v42 = v41;

  v97 = v42;
  v43 = v22;
  v96 = 0;
LABEL_22:
  v44 = type metadata accessor for VoiceFeedbackTargetZone();
  v45 = *(v44 - 8);
  v46 = *(v45 + 56);
  v95 = v44;
  v94 = v46;
  v93 = v45 + 56;
  (v46)(v28, 1, 1);
  if ((WorkoutStep.hasActiveTargetZone.getter() & 1) == 0)
  {
    goto LABEL_75;
  }

  v47 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v87 = a1;
  v48 = *&a1[v47];
  v86[1] = a4;
  v86[0] = v7;
  a1 = a3;
  if (v48 >> 62)
  {
LABEL_87:
    v49 = __CocoaSet.count.getter();
  }

  else
  {
    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v49)
  {
LABEL_36:

    a1 = v87;
    v48 = *&v87[v47];
    if (v48 >> 62)
    {
      if (v48 < 0)
      {
        v85 = *&v87[v47];
      }

      v53 = __CocoaSet.count.getter();
    }

    else
    {
      v53 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v53)
    {
      v54 = 0;
      v47 = v48 & 0xC000000000000001;
      while (1)
      {
        if (v47)
        {
          v55 = MEMORY[0x20F2E7A20](v54, v48);
          v56 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (v54 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_86;
          }

          v55 = *(v48 + 8 * v54 + 32);

          v56 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }
        }

        swift_beginAccess();
        v57 = *(v55 + 40);

        if (v57 == 1)
        {
          break;
        }

        ++v54;
        if (v56 == v53)
        {
          goto LABEL_49;
        }
      }

      v7 = v86[0];
    }

    else
    {
LABEL_49:

      v58 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
      swift_beginAccess();
      v59 = *&a1[v58];
      if (v59)
      {
        v60 = *&a1[v58];
        v7 = v86[0];
      }

      else
      {
        v7 = v86[0];
        if (one-time initialization token for defaultZone != -1)
        {
          swift_once();
        }

        v60 = static HeartRateTargetZone.defaultZone;
      }

      v62 = OBJC_IVAR___WOCoreHeartRateTargetZone_type;
      if (v60[OBJC_IVAR___WOCoreHeartRateTargetZone_type] && v60[OBJC_IVAR___WOCoreHeartRateTargetZone_type] != 1)
      {
        v71 = v59;
      }

      else
      {
        v63 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v64 = v59;

        if ((v63 & 1) == 0)
        {
          HeartRateTargetZone.applicableRange.getter();
          v28 = v101;
          if (v65)
          {
            if (one-time initialization token for zones != -1)
            {
              swift_once();
            }

            v66 = type metadata accessor for Logger();
            __swift_project_value_buffer(v66, static WOLog.zones);
            v67 = Logger.logObject.getter();
            v68 = static os_log_type_t.fault.getter();
            if (!os_log_type_enabled(v67, v68))
            {
              goto LABEL_74;
            }

            v69 = swift_slowAlloc();
            *v69 = 0;
            v70 = "[VoiceFeedback] No applicable range for heart rate zone alert";
            goto LABEL_73;
          }

          if (v60[v62] == 1)
          {
            v81 = &v60[OBJC_IVAR___WOCoreHeartRateTargetZone_customRange];
            swift_beginAccess();
            if ((v81[2] & 1) == 0)
            {
              v81[1];
              *v81;
            }
          }

          v82 = [objc_opt_self() _countPerMinuteUnit];
          v83 = [v82 unitString];

          v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          (*(v88 + 104))(v90, *MEMORY[0x277D7D8D0], v89);
          v84 = type metadata accessor for VoiceFeedbackPaceFormat();
          (*(*(v84 - 8) + 56))(v91, 1, 1, v84);
          v80 = v100;
LABEL_83:
          VoiceFeedbackTargetZone.init(minMagnitude:maxMagnitude:unit:metricType:paceFormat:zoneIndex:)();

          outlined destroy of VoiceFeedbackTargetZone?(v28);
          v94(v80, 0, 1, v95);
          outlined init with take of VoiceFeedbackTargetZone?(v80, v28);
          if (!v22)
          {
            goto LABEL_77;
          }

LABEL_76:
          v75 = [v22 unitString];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          goto LABEL_77;
        }
      }
    }

    v28 = v101;
    v72 = WorkoutStep.activePowerZonesAlertTargetZone.getter();
    if (!v72)
    {
      goto LABEL_75;
    }

    v60 = v72;
    PowerZonesAlertTargetZone.applicableRange.getter();
    if (v73)
    {
      if (one-time initialization token for zones != -1)
      {
        swift_once();
      }

      v74 = type metadata accessor for Logger();
      __swift_project_value_buffer(v74, static WOLog.zones);
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.fault.getter();
      if (!os_log_type_enabled(v67, v68))
      {
        goto LABEL_74;
      }

      v69 = swift_slowAlloc();
      *v69 = 0;
      v70 = "[VoiceFeedback] No applicable range for power zone alert";
LABEL_73:
      _os_log_impl(&dword_20AEA4000, v67, v68, v70, v69, 2u);
      MEMORY[0x20F2E9420](v69, -1, -1);
LABEL_74:

LABEL_75:
      if (!v22)
      {
        goto LABEL_77;
      }

      goto LABEL_76;
    }

    v77 = [objc_opt_self() wattUnit];
    v78 = [v77 unitString];

    v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v88 + 104))(v90, *MEMORY[0x277D7D8C8], v89);
    v79 = type metadata accessor for VoiceFeedbackPaceFormat();
    (*(*(v79 - 8) + 56))(v91, 1, 1, v79);
    v80 = v100;
    goto LABEL_83;
  }

  v50 = 0;
  while (1)
  {
    if ((v48 & 0xC000000000000001) != 0)
    {
      v51 = MEMORY[0x20F2E7A20](v50, v48);
      v52 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }

    else
    {
      if (v50 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v51 = *(v48 + 8 * v50 + 32);

      v52 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        goto LABEL_35;
      }
    }

    swift_beginAccess();
    if (*(v51 + 40))
    {
      break;
    }

    ++v50;
    if (v52 == v49)
    {
      goto LABEL_36;
    }
  }

  v61 = v100;
  static VoiceFeedbackTargetZone.make(targetZone:distanceType:formattingManager:)(v51, v92, a1, v100);

  v28 = v101;
  outlined destroy of VoiceFeedbackTargetZone?(v101);
  v94(v61, 0, 1, v95);
  outlined init with take of VoiceFeedbackTargetZone?(v61, v28);
  v7 = v86[0];
  a1 = v87;
  if (v22)
  {
    goto LABEL_76;
  }

LABEL_77:
  swift_beginAccess();
  (*(v98 + 104))(v99, **(&unk_277D8C980 + a1[16]), v7);
  outlined init with copy of VoiceFeedbackTargetZone?(v28, v100);
  VoiceFeedbackWorkoutStep.init(magnitude:unit:stepType:targetZone:)();

  return outlined destroy of VoiceFeedbackTargetZone?(v28);
}

uint64_t outlined init with copy of VoiceFeedbackTargetZone?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20WorkoutAnnouncements23VoiceFeedbackTargetZoneVSgMd, &_s20WorkoutAnnouncements23VoiceFeedbackTargetZoneVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of VoiceFeedbackTargetZone?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20WorkoutAnnouncements23VoiceFeedbackTargetZoneVSgMd, &_s20WorkoutAnnouncements23VoiceFeedbackTargetZoneVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of VoiceFeedbackTargetZone?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20WorkoutAnnouncements23VoiceFeedbackTargetZoneVSgMd, &_s20WorkoutAnnouncements23VoiceFeedbackTargetZoneVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id specialized static NLSessionActivityGoal.canonicalUnit(for:)(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v1 = &selRef_kilocalorieUnit;
      goto LABEL_8;
    }

LABEL_11:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (a1 != 1)
  {
    if (a1 == 2)
    {
      v1 = &selRef_secondUnit;
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v1 = &selRef_meterUnit;
LABEL_8:
  v2 = [objc_opt_self() *v1];

  return v2;
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  lazy protocol witness table accessor for type MusicItemCollection<Station> and conformance MusicItemCollection<A>(a3, a1, a2);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v17[4] == v17[0])
  {
    v10 = a4(0);
    return (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
  }

  else
  {
    v12 = dispatch thunk of Collection.subscript.read();
    v14 = v13;
    v15 = a4(0);
    v16 = *(v15 - 8);
    (*(v16 + 16))(a5, v14, v15);
    v12(v17, 0);
    return (*(v16 + 56))(a5, 0, 1, v15);
  }
}

void *one-time initialization function for shared()
{
  type metadata accessor for MediaPlaybackMoodStationCache();
  swift_allocObject();
  result = MediaPlaybackMoodStationCache.().init()();
  static MediaPlaybackMoodStationCache.shared = result;
  return result;
}

uint64_t static MediaPlaybackMoodStationCache.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

void *MediaPlaybackMoodStationCache.().init()()
{
  swift_defaultActor_initialize();
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = MEMORY[0x20F2E6C00](0xD000000000000039, 0x800000020B46DFE0);
  v3 = [v1 initWithSuiteName_];

  v0[14] = v3;
  v4 = MEMORY[0x277D84F90];
  v0[15] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8MusicKit7StationV0cD8InternalE4MoodO_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v0[16] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8MusicKit7StationV0cD8InternalE4MoodO_10Foundation4DateVTt0g5Tf4g_n(v4);
  v0[17] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8MusicKit7StationV0cD8InternalE4MoodO_ScTySSSgs5NeverOGTt0g5Tf4g_n(v4);
  return v0;
}

uint64_t MediaPlaybackMoodStationCache.prefetchMoodStationIfNecessary(for:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v39 - v6;
  v8 = type metadata accessor for Station.Mood();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  swift_beginAccess();
  if (!*(*(v1 + 120) + 16))
  {
    MediaPlaybackMoodStationCache.loadDefaultsMoodStationIdentifiers()();
  }

  HKWorkoutActivityType.moodForWorkoutType.getter([a1 identifier], v17);
  MediaPlaybackMoodStationCache.validCachedMoodStationIdentifier(for:)(v17);
  if (v18)
  {

    return (*(v9 + 8))(v17, v8);
  }

  swift_beginAccess();
  if (*(*(v1 + 136) + 16))
  {
    v20 = *(v1 + 136);

    specialized __RawDictionaryStorage.find<A>(_:)(v17);
    v22 = v21;

    if (v22)
    {
      return (*(v9 + 8))(v17, v8);
    }
  }

  v46 = v7;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static WOLog.mediaPlayback);
  v47 = *(v9 + 16);
  v47(v15, v17, v8);
  v24 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v43))
  {
    v25 = swift_slowAlloc();
    v41 = v25;
    v42 = swift_slowAlloc();
    v48 = v42;
    *v25 = 136315138;
    v47(v12, v15, v8);
    v40 = String.init<A>(describing:)();
    v27 = v26;
    v28 = *(v9 + 8);
    v44 = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v45 = v28;
    v28(v15, v8);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v27, &v48);

    v30 = v41;
    *(v41 + 1) = v29;
    _os_log_impl(&dword_20AEA4000, v24, v43, "MediaPlaybackMoodStationCache: Prefetching mood station identifier for mood: %s", v30, 0xCu);
    v31 = v42;
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x20F2E9420](v31, -1, -1);
    MEMORY[0x20F2E9420](v30, -1, -1);
  }

  else
  {

    v32 = *(v9 + 8);
    v44 = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v45 = v32;
    v32(v15, v8);
  }

  v33 = v46;
  static TaskPriority.userInitiated.getter();
  v34 = type metadata accessor for TaskPriority();
  (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
  v47(v12, v17, v8);
  v36 = lazy protocol witness table accessor for type MediaPlaybackMoodStationCache and conformance MediaPlaybackMoodStationCache(&lazy protocol witness table cache variable for type MediaPlaybackMoodStationCache and conformance MediaPlaybackMoodStationCache, v35, type metadata accessor for MediaPlaybackMoodStationCache);
  v37 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v38 = swift_allocObject();
  *(v38 + 2) = v2;
  *(v38 + 3) = v36;
  *(v38 + 4) = v2;
  (*(v9 + 32))(&v38[v37], v12, v8);
  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v33, &async function pointer to partial apply for closure #1 in MediaPlaybackMoodStationCache.prefetchMoodStationIfNecessary(for:), v38);

  return v45(v17, v8);
}

uint64_t closure #1 in MediaPlaybackMoodStationCache.prefetchMoodStationIfNecessary(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = type metadata accessor for Station.Mood();
  v5[4] = v7;
  v8 = *(v7 - 8);
  v5[5] = v8;
  v9 = *(v8 + 64) + 15;
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v10 = swift_task_alloc();
  v5[8] = v10;
  *v10 = v5;
  v10[1] = closure #1 in MediaPlaybackMoodStationCache.prefetchMoodStationIfNecessary(for:);

  return MediaPlaybackMoodStationCache.moodStationIdentifier(for:)(a5);
}

uint64_t closure #1 in MediaPlaybackMoodStationCache.prefetchMoodStationIfNecessary(for:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *(*v2 + 16);
  v7 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;

  return MEMORY[0x2822009F8](closure #1 in MediaPlaybackMoodStationCache.prefetchMoodStationIfNecessary(for:), v5, 0);
}

uint64_t closure #1 in MediaPlaybackMoodStationCache.prefetchMoodStationIfNecessary(for:)()
{
  v33 = v0;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.mediaPlayback);
  v7 = *(v4 + 16);
  v7(v2, v5, v3);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v28 = v0[10];
    v29 = v0[9];
    v11 = v0[6];
    v10 = v0[7];
    v31 = v9;
    v13 = v0[4];
    v12 = v0[5];
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v14 = 136315394;
    v7(v11, v10, v13);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    (*(v12 + 8))(v10, v13);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v32);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    if (v28)
    {
      v19 = v29;
    }

    else
    {
      v19 = 7104878;
    }

    if (!v28)
    {
      v1 = 0xE300000000000000;
    }

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v1, &v32);

    *(v14 + 14) = v20;
    _os_log_impl(&dword_20AEA4000, v8, v31, "MediaPlaybackMoodStationCache: Finished prefetching mood station identifier for %s: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v30, -1, -1);
    MEMORY[0x20F2E9420](v14, -1, -1);
  }

  else
  {
    v21 = v0[7];
    v22 = v0[4];
    v23 = v0[5];

    (*(v23 + 8))(v21, v22);
  }

  v25 = v0[6];
  v24 = v0[7];

  v26 = v0[1];

  return v26();
}

uint64_t MediaPlaybackMoodStationCache.moodStationIdentifier(for:)(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v4 = type metadata accessor for Station.Mood();
  v2[15] = v4;
  v5 = *(v4 - 8);
  v2[16] = v5;
  v2[17] = *(v5 + 64);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](MediaPlaybackMoodStationCache.moodStationIdentifier(for:), v1, 0);
}

uint64_t MediaPlaybackMoodStationCache.moodStationIdentifier(for:)()
{
  v90 = v0;
  v1 = v0[13];
  v2 = MediaPlaybackMoodStationCache.validCachedMoodStationIdentifier(for:)(v0[12]);
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v6 = v0[20];
    v8 = v0[15];
    v7 = v0[16];
    v9 = v0[12];
    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static WOLog.mediaPlayback);
    v11 = *(v7 + 16);
    v11(v6, v9, v8);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[20];
    if (v14)
    {
      v84 = v5;
      v86 = v4;
      v16 = v0[19];
      v18 = v0[15];
      v17 = v0[16];
      v19 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v89 = v83;
      *v19 = 136315394;
      v11(v16, v15, v18);
      v20 = String.init<A>(describing:)();
      v22 = v21;
      v23 = v18;
      v5 = v84;
      (*(v17 + 8))(v15, v23);
      v24 = v20;
      v4 = v86;
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v22, &v89);

      *(v19 + 4) = v25;
      *(v19 + 12) = 2080;
      *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v84, &v89);
      _os_log_impl(&dword_20AEA4000, v12, v13, "MediaPlaybackMoodStationCache: Using cached mood station identifier for %s: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v83, -1, -1);
      MEMORY[0x20F2E9420](v19, -1, -1);
    }

    else
    {
      v50 = v0[15];
      v51 = v0[16];

      (*(v51 + 8))(v15, v50);
    }

    v53 = v0[19];
    v52 = v0[20];
    v54 = v0[18];
    v55 = v0[14];

    v56 = v0[1];

    return v56(v4, v5);
  }

  v26 = v0[13];
  swift_beginAccess();
  v27 = *(v26 + 136);
  if (*(v27 + 16))
  {
    v28 = v0[12];
    v29 = *(v26 + 136);

    v30 = specialized __RawDictionaryStorage.find<A>(_:)(v28);
    if (v31)
    {
      v32 = *(*(v27 + 56) + 8 * v30);
      v0[21] = v32;

      if (one-time initialization token for mediaPlayback != -1)
      {
        swift_once();
      }

      v33 = v0[18];
      v34 = v0[15];
      v35 = v0[16];
      v36 = v0[12];
      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static WOLog.mediaPlayback);
      v38 = *(v35 + 16);
      v38(v33, v36, v34);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v87 = v32;
        v41 = v0[18];
        v42 = v0[19];
        v44 = v0[15];
        v43 = v0[16];
        v45 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v89 = v85;
        *v45 = 136315138;
        v38(v42, v41, v44);
        v46 = String.init<A>(describing:)();
        v48 = v47;
        (*(v43 + 8))(v41, v44);
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v89);

        *(v45 + 4) = v49;
        v32 = v87;
        _os_log_impl(&dword_20AEA4000, v39, v40, "MediaPlaybackMoodStationCache: Awaiting existing request for mood: %s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v85);
        MEMORY[0x20F2E9420](v85, -1, -1);
        MEMORY[0x20F2E9420](v45, -1, -1);
      }

      else
      {
        v78 = v0[18];
        v80 = v0[15];
        v79 = v0[16];

        (*(v79 + 8))(v78, v80);
      }

      v81 = *(MEMORY[0x277D857E0] + 4);
      v82 = swift_task_alloc();
      v0[22] = v82;
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      *v82 = v0;
      v82[1] = MediaPlaybackMoodStationCache.moodStationIdentifier(for:);
      v76 = v0 + 10;
      v77 = v32;
      goto LABEL_20;
    }
  }

  v58 = v0[19];
  v60 = v0[16];
  v59 = v0[17];
  v61 = v0[14];
  v62 = v0[15];
  v63 = v0[12];
  v64 = v0[13];
  v88 = v63;
  static TaskPriority.userInitiated.getter();
  v65 = type metadata accessor for TaskPriority();
  (*(*(v65 - 8) + 56))(v61, 0, 1, v65);
  (*(v60 + 16))(v58, v63, v62);
  v67 = lazy protocol witness table accessor for type MediaPlaybackMoodStationCache and conformance MediaPlaybackMoodStationCache(&lazy protocol witness table cache variable for type MediaPlaybackMoodStationCache and conformance MediaPlaybackMoodStationCache, v66, type metadata accessor for MediaPlaybackMoodStationCache);
  v68 = (*(v60 + 80) + 40) & ~*(v60 + 80);
  v69 = swift_allocObject();
  *(v69 + 2) = v64;
  *(v69 + 3) = v67;
  *(v69 + 4) = v64;
  (*(v60 + 32))(&v69[v68], v58, v62);
  swift_retain_n();
  v70 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCAG_Tt2g5(0, 0, v61, &async function pointer to partial apply for closure #1 in MediaPlaybackMoodStationCache.moodStationIdentifier(for:), v69);
  v0[23] = v70;
  swift_beginAccess();

  v71 = *(v26 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v89 = *(v26 + 136);
  *(v26 + 136) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v70, v88, isUniquelyReferenced_nonNull_native);
  *(v26 + 136) = v89;
  swift_endAccess();
  v73 = *(MEMORY[0x277D857E0] + 4);
  v74 = swift_task_alloc();
  v0[24] = v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  *v74 = v0;
  v74[1] = MediaPlaybackMoodStationCache.moodStationIdentifier(for:);
  v76 = v0 + 8;
  v77 = v70;
LABEL_20:

  return MEMORY[0x282200460](v76, v77, v75);
}

{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](MediaPlaybackMoodStationCache.moodStationIdentifier(for:), v2, 0);
}

{
  v1 = v0[21];

  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v7 = v0[14];

  v8 = v0[1];

  return v8(v3, v2);
}

{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](MediaPlaybackMoodStationCache.moodStationIdentifier(for:), v2, 0);
}

{
  v1 = v0[23];

  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v7 = v0[14];

  v8 = v0[1];

  return v8(v3, v2);
}

uint64_t closure #1 in MediaPlaybackMoodStationCache.moodStationIdentifier(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = closure #1 in MediaPlaybackMoodStationCache.moodStationIdentifier(for:);

  return MediaPlaybackMoodStationCache.requestMoodStationIdentifier(for:)(a5);
}

uint64_t closure #1 in MediaPlaybackMoodStationCache.moodStationIdentifier(for:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v5 = *(*v2 + 24);
  v7 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;

  return MEMORY[0x2822009F8](closure #1 in MediaPlaybackMoodStationCache.moodStationIdentifier(for:), v5, 0);
}

uint64_t closure #1 in MediaPlaybackMoodStationCache.moodStationIdentifier(for:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  **(v0 + 16) = *(v0 + 48);
  $defer #1 () in closure #1 in MediaPlaybackMoodStationCache.moodStationIdentifier(for:)(v1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t $defer #1 () in closure #1 in MediaPlaybackMoodStationCache.moodStationIdentifier(for:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 136);
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if (v6)
  {
    v7 = v5;
    v8 = *(a1 + 136);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(a1 + 136);
    *(a1 + 136) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
    }

    v11 = *(v10 + 48);
    v12 = type metadata accessor for Station.Mood();
    (*(*(v12 - 8) + 8))(v11 + *(*(v12 - 8) + 72) * v7, v12);
    v13 = *(*(v10 + 56) + 8 * v7);

    specialized _NativeDictionary._delete(at:)(v7, v10);
    *(a1 + 136) = v10;
  }

  return swift_endAccess();
}

uint64_t MediaPlaybackMoodStationCache.validCachedMoodStationIdentifier(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v39 - v6;
  v8 = type metadata accessor for Station.Mood();
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - v18;
  swift_beginAccess();
  v20 = *(v1 + 120);
  if (!*(v20 + 16))
  {
    return 0;
  }

  v21 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v22 & 1) == 0)
  {

    return 0;
  }

  v23 = (*(v20 + 56) + 16 * v21);
  v25 = *v23;
  v24 = v23[1];
  v40 = v13;
  v41 = v25;
  v42 = v24;

  swift_beginAccess();
  v26 = *(v2 + 128);
  if (*(v26 + 16))
  {
    v27 = *(v2 + 128);

    v28 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if ((v29 & 1) == 0)
    {

      return v41;
    }

    v30 = v40;
    (*(v40 + 16))(v17, *(v26 + 56) + *(v40 + 72) * v28, v12);

    (*(v30 + 32))(v19, v17, v12);
    Date.timeIntervalSinceNow.getter();
    if (v31 > -604800.0)
    {
      (*(v30 + 8))(v19, v12);
      return v41;
    }

    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static WOLog.mediaPlayback);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_20AEA4000, v34, v35, "MediaPlaybackMoodStationCache: cached mood station identifier is stale, discarding", v36, 2u);
      MEMORY[0x20F2E9420](v36, -1, -1);
    }

    v37 = *(v43 + 16);
    v37(v11, a1, v8);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(0, 0, v11);
    swift_endAccess();
    v37(v11, a1, v8);
    v38 = v40;
    (*(v40 + 56))(v7, 1, 1, v12);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v11);
    swift_endAccess();
    (*(v38 + 8))(v19, v12);
    return 0;
  }

  return v41;
}

uint64_t MediaPlaybackMoodStationCache.requestMoodStationIdentifier(for:)(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for MusicSiriRepresentation();
  v2[11] = v4;
  v5 = *(v4 - 8);
  v2[12] = v5;
  v6 = *(v5 + 64) + 15;
  v2[13] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7StationVSgMd, &_s8MusicKit7StationVSgMR) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA7StationVGMd, &_s8MusicKit0A14ItemCollectionVyAA7StationVGMR);
  v2[15] = v8;
  v9 = *(v8 - 8);
  v2[16] = v9;
  v10 = *(v9 + 64) + 15;
  v2[17] = swift_task_alloc();
  v11 = type metadata accessor for Station();
  v2[18] = v11;
  v12 = *(v11 - 8);
  v2[19] = v12;
  v13 = *(v12 + 64) + 15;
  v2[20] = swift_task_alloc();
  v14 = type metadata accessor for MusicMoodStationResponse();
  v2[21] = v14;
  v15 = *(v14 - 8);
  v2[22] = v15;
  v16 = *(v15 + 64) + 15;
  v2[23] = swift_task_alloc();
  v17 = type metadata accessor for Station.Mood();
  v2[24] = v17;
  v18 = *(v17 - 8);
  v2[25] = v18;
  v19 = *(v18 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v20 = type metadata accessor for MusicMoodStationRequest();
  v2[28] = v20;
  v21 = *(v20 - 8);
  v2[29] = v21;
  v22 = *(v21 + 64) + 15;
  v2[30] = swift_task_alloc();
  v23 = type metadata accessor for MusicDataRequest.ExecutionMethod();
  v2[31] = v23;
  v24 = *(v23 - 8);
  v2[32] = v24;
  v25 = *(v24 + 64) + 15;
  v2[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](MediaPlaybackMoodStationCache.requestMoodStationIdentifier(for:), v1, 0);
}

uint64_t MediaPlaybackMoodStationCache.requestMoodStationIdentifier(for:)()
{
  v32 = v0;
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[8];
  (*(v0[32] + 104))(v0[33], *MEMORY[0x277D2AE20], v0[31]);
  static MusicDataRequest.preferredExecutionMethod.setter();
  v6 = *(v4 + 16);
  v0[34] = v6;
  v0[35] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  MusicMoodStationRequest.init(mood:)();
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v7 = v0[26];
  v8 = v0[24];
  v9 = v0[8];
  v10 = type metadata accessor for Logger();
  v0[36] = __swift_project_value_buffer(v10, static WOLog.mediaPlayback);
  v6(v7, v9, v8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[26];
    v14 = v0[27];
    v16 = v0[24];
    v15 = v0[25];
    v17 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v17 = 136315138;
    v6(v14, v13, v16);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    (*(v15 + 8))(v13, v16);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v31);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_20AEA4000, v11, v12, "MediaPlaybackMoodStationCache: request starting for mood: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x20F2E9420](v30, -1, -1);
    MEMORY[0x20F2E9420](v17, -1, -1);
  }

  else
  {
    v23 = v0[25];
    v22 = v0[26];
    v24 = v0[24];

    (*(v23 + 8))(v22, v24);
  }

  v25 = *(MEMORY[0x277D2A538] + 4);
  v26 = swift_task_alloc();
  v0[37] = v26;
  *v26 = v0;
  v26[1] = MediaPlaybackMoodStationCache.requestMoodStationIdentifier(for:);
  v27 = v0[30];
  v28 = v0[23];

  return MEMORY[0x282189588](v28);
}

{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = MediaPlaybackMoodStationCache.requestMoodStationIdentifier(for:);
  }

  else
  {
    v6 = MediaPlaybackMoodStationCache.requestMoodStationIdentifier(for:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = v0[23];
  v2 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  MusicMoodStationResponse.stations.getter();
  specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVyAA7StationVGMd, &_s8MusicKit0A14ItemCollectionVyAA7StationVGMR, &lazy protocol witness table cache variable for type MusicItemCollection<Station> and conformance MusicItemCollection<A>, MEMORY[0x277CD84F8], v7);
  (*(v5 + 8))(v4, v6);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    v9 = v0[29];
    v8 = v0[30];
    v10 = v0[28];
    v11 = v0[14];
    (*(v0[22] + 8))(v0[23], v0[21]);
    (*(v9 + 8))(v8, v10);
    _sSo8NSObjectCSgWOhTm_19(v11, &_s8MusicKit7StationVSgMd, &_s8MusicKit7StationVSgMR);
    v50 = 0;
    v51 = 0;
  }

  else
  {
    v40 = v0[34];
    v41 = v0[35];
    v12 = v0[28];
    v48 = v12;
    v49 = v0[30];
    v38 = v0[27];
    v39 = v0[24];
    v46 = v0[23];
    v47 = v0[29];
    v44 = v0[22];
    v45 = v0[21];
    v13 = v0[19];
    v42 = v0[20];
    v43 = v0[18];
    v14 = v0[13];
    v16 = v0[11];
    v15 = v0[12];
    v17 = v0[9];
    v37 = v0[10];
    v18 = v0[8];
    (*(v13 + 32))(v42, v0[14]);
    Station.siriRepresentation.getter();
    v19 = MusicSiriRepresentation.id.getter();
    v21 = v20;
    (*(v15 + 8))(v14, v16);
    swift_beginAccess();

    v22 = *(v17 + 120);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v19;
    v52 = *(v17 + 120);
    *(v17 + 120) = 0x8000000000000000;
    v50 = v21;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, v21, v18, isUniquelyReferenced_nonNull_native);
    *(v17 + 120) = v52;
    swift_endAccess();
    v40(v38, v18, v39);
    Date.init()();
    v24 = type metadata accessor for Date();
    (*(*(v24 - 8) + 56))(v37, 0, 1, v24);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v37, v38);
    swift_endAccess();
    MediaPlaybackMoodStationCache.saveDefaultsMoodStationIdentifiers()();
    (*(v13 + 8))(v42, v43);
    (*(v44 + 8))(v46, v45);
    (*(v47 + 8))(v49, v48);
  }

  v25 = v0[33];
  v26 = v0[30];
  v28 = v0[26];
  v27 = v0[27];
  v29 = v0[23];
  v30 = v0[20];
  v31 = v0[17];
  v32 = v0[13];
  v33 = v0[14];
  v34 = v0[10];

  v35 = v0[1];

  return v35(v51, v50);
}

{
  v1 = v0[38];
  v2 = v0[36];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[38];
  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[28];
  if (v6)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_20AEA4000, v4, v5, "MediaPlaybackMoodStationCache: request failed: %@", v11, 0xCu);
    _sSo8NSObjectCSgWOhTm_19(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v12, -1, -1);
    MEMORY[0x20F2E9420](v11, -1, -1);
  }

  else
  {
  }

  (*(v9 + 8))(v8, v10);
  v15 = v0[33];
  v16 = v0[30];
  v18 = v0[26];
  v17 = v0[27];
  v19 = v0[23];
  v20 = v0[20];
  v21 = v0[17];
  v23 = v0[13];
  v22 = v0[14];
  v24 = v0[10];

  v25 = v0[1];

  return v25(0, 0);
}

void MediaPlaybackMoodStationCache.saveDefaultsMoodStationIdentifiers()()
{
  v1 = v0;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20AEA4000, v3, v4, "MediaPlaybackMoodStationCache: saving to defaults", v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  v6 = type metadata accessor for JSONEncoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  swift_beginAccess();
  v23 = v1[15];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy8MusicKit7StationV0aB8InternalE4MoodOSSGMd, &_sSDy8MusicKit7StationV0aB8InternalE4MoodOSSGMR);
  lazy protocol witness table accessor for type [Station.Mood : String] and conformance <> [A : B]();
  v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v11 = v10;

  v12 = v1[14];
  if (v12)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    v14 = MEMORY[0x20F2E6C00](0xD000000000000016, 0x800000020B46DFC0);
    [v12 setObject:isa forKey:v14];
  }

  v15 = *(v6 + 48);
  v16 = *(v6 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  swift_beginAccess();
  v22 = v1[16];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy8MusicKit7StationV0aB8InternalE4MoodO10Foundation4DateVGMd, &_sSDy8MusicKit7StationV0aB8InternalE4MoodO10Foundation4DateVGMR);
  lazy protocol witness table accessor for type [Station.Mood : Date] and conformance <> [A : B]();
  v17 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v19 = v18;

  if (v12)
  {
    v20 = Data._bridgeToObjectiveC()().super.isa;
    v21 = MEMORY[0x20F2E6C00](0xD00000000000001BLL, 0x800000020B46DFA0);
    [v12 setObject:v20 forKey:{v21, v22, v23}];
    outlined consume of Data._Representation(v9, v11);
    outlined consume of Data._Representation(v17, v19);
  }

  else
  {
    outlined consume of Data._Representation(v9, v11);
    outlined consume of Data._Representation(v17, v19);
  }
}

void MediaPlaybackMoodStationCache.loadDefaultsMoodStationIdentifiers()()
{
  v1 = v0;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20AEA4000, v3, v4, "MediaPlaybackMoodStationCache: loading from defaults", v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  v6 = v1[14];
  if (v6)
  {
    v7 = MEMORY[0x20F2E6C00](0xD000000000000016, 0x800000020B46DFC0);
    v8 = [v6 dataForKey_];

    if (v8)
    {
      v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = type metadata accessor for JSONDecoder();
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      swift_allocObject();
      JSONDecoder.init()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy8MusicKit7StationV0aB8InternalE4MoodOSSGMd, &_sSDy8MusicKit7StationV0aB8InternalE4MoodOSSGMR);
      lazy protocol witness table accessor for type [Station.Mood : String] and conformance <> [A : B]();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();

      swift_beginAccess();
      v15 = v1[15];
      v1[15] = v40[1];

      v16 = MEMORY[0x20F2E6C00](0xD00000000000001BLL, 0x800000020B46DFA0);
      v17 = [v6 dataForKey_];

      if (v17)
      {
        v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        v21 = *(v12 + 48);
        v22 = *(v12 + 52);
        swift_allocObject();
        JSONDecoder.init()();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy8MusicKit7StationV0aB8InternalE4MoodO10Foundation4DateVGMd, &_sSDy8MusicKit7StationV0aB8InternalE4MoodO10Foundation4DateVGMR);
        lazy protocol witness table accessor for type [Station.Mood : Date] and conformance <> [A : B]();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        outlined consume of Data._Representation(v18, v20);

        swift_beginAccess();
        v23 = v1[16];
        v1[16] = v39;
      }

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v37 = v25;
        v26 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v40[0] = v38;
        *v26 = 136315394;
        v27 = v1[15];
        type metadata accessor for Station.Mood();
        lazy protocol witness table accessor for type MediaPlaybackMoodStationCache and conformance MediaPlaybackMoodStationCache(&lazy protocol witness table cache variable for type Station.Mood and conformance Station.Mood, 255, MEMORY[0x277D2B280]);

        v28 = Dictionary.description.getter();
        v30 = v29;

        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v40);

        *(v26 + 4) = v31;
        *(v26 + 12) = 2080;
        swift_beginAccess();
        v32 = v1[16];
        type metadata accessor for Date();

        v33 = Dictionary.description.getter();
        v35 = v34;

        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, v40);

        *(v26 + 14) = v36;
        _os_log_impl(&dword_20AEA4000, v24, v37, "MediaPlaybackMoodStationCache: loaded from defaults, identifiers: %s, dates: %s", v26, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v38, -1, -1);
        MEMORY[0x20F2E9420](v26, -1, -1);
      }

      outlined consume of Data._Representation(v9, v11);
    }
  }
}

uint64_t MediaPlaybackMoodStationCache.deinit()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  v3 = *(v0 + 136);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t MediaPlaybackMoodStationCache.__deallocating_deinit()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  v3 = *(v0 + 136);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t partial apply for closure #1 in MediaPlaybackMoodStationCache.prefetchMoodStationIfNecessary(for:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Station.Mood() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in MediaPlaybackMoodStationCache.prefetchMoodStationIfNecessary(for:);

  return closure #1 in MediaPlaybackMoodStationCache.prefetchMoodStationIfNecessary(for:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroyTm_11()
{
  v1 = type metadata accessor for Station.Mood();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in MediaPlaybackMoodStationCache.moodStationIdentifier(for:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Station.Mood() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in MediaPlaybackMoodStationCache.moodStationIdentifier(for:);

  return closure #1 in MediaPlaybackMoodStationCache.moodStationIdentifier(for:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t partial apply for closure #1 in MediaPlaybackMoodStationCache.moodStationIdentifier(for:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t lazy protocol witness table accessor for type MusicItemCollection<Station> and conformance MusicItemCollection<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t lazy protocol witness table accessor for type MediaPlaybackMoodStationCache and conformance MediaPlaybackMoodStationCache(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id ButtonActivityPickerItem.__allocating_init(buttonType:title:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(v3);
  v6[OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_type] = 3;
  v7 = &v6[OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_title];
  *v7 = a2;
  v7[1] = a3;
  v9.receiver = v6;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ButtonActivityPickerItem.ButtonType()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ButtonActivityPickerItem.ButtonType()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

uint64_t ButtonActivityPickerItem.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_title);
  v2 = *(v0 + OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_title + 8);

  return v1;
}

id ButtonActivityPickerItem.init(buttonType:title:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_type] = 3;
  v4 = &v3[OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_title];
  *v4 = a2;
  v4[1] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for ButtonActivityPickerItem();
  return objc_msgSendSuper2(&v6, sel_init);
}

id ButtonActivityPickerItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ButtonActivityPickerItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ButtonActivityPickerItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ButtonActivityPickerItem.copy(with:)@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_title);
  v3 = *(v1 + OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_title + 8);
  v5 = type metadata accessor for ButtonActivityPickerItem();
  v6 = objc_allocWithZone(v5);
  v6[OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_type] = 3;
  v7 = &v6[OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_title];
  *v7 = v4;
  v7[1] = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, sel_init);
  a1[3] = v5;
  *a1 = result;
  return result;
}

id protocol witness for Identifiable.id.getter in conformance ButtonActivityPickerItem@<X0>(void *a1@<X8>)
{
  result = [*v1 hash];
  *a1 = result;
  return result;
}

Swift::Int ButtonActivityPickerItem.hash.getter()
{
  Hasher.init()();
  MEMORY[0x20F2E7FF0](*(v0 + OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_type));
  MEMORY[0x20F2E7FF0](0);
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_title);
  v2 = *(v0 + OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_title + 8);
  String.hash(into:)();
  return Hasher.finalize()();
}

uint64_t ButtonActivityPickerItem.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v6);
  if (!v7)
  {
    outlined destroy of Any?(v6);
    goto LABEL_11;
  }

  type metadata accessor for ButtonActivityPickerItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v3 = 0;
    return v3 & 1;
  }

  if (*(v1 + OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_type) != v5[OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_type])
  {

    goto LABEL_11;
  }

  if (*(v1 + OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_title) == *&v5[OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_title] && *(v1 + OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_title + 8) == *&v5[OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_title + 8])
  {

    v3 = 1;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v3 & 1;
}

unint64_t lazy protocol witness table accessor for type ButtonActivityPickerItem.ButtonType and conformance ButtonActivityPickerItem.ButtonType()
{
  result = lazy protocol witness table cache variable for type ButtonActivityPickerItem.ButtonType and conformance ButtonActivityPickerItem.ButtonType;
  if (!lazy protocol witness table cache variable for type ButtonActivityPickerItem.ButtonType and conformance ButtonActivityPickerItem.ButtonType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonActivityPickerItem.ButtonType and conformance ButtonActivityPickerItem.ButtonType);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ButtonActivityPickerItem(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ButtonActivityPickerItem and conformance ButtonActivityPickerItem();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ButtonActivityPickerItem.ButtonType(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ButtonActivityPickerItem.ButtonType(_WORD *result, int a2, int a3)
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

id protocol witness for ActiveWorkoutProvider.activeWorkout.getter in conformance NLWorkoutController()
{
  v1 = [*v0 activeWorkout];

  return v1;
}

uint64_t MirroredClientAlertStackResponse.init(protobuf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = *(a1 + 16);
  v6 = *(a1 + 20);

  result = outlined destroy of Apple_Workout_Core_MirroredClientAlertStackResponse(a1);
  *(a2 + 24) = v6;
  return result;
}

uint64_t outlined destroy of Apple_Workout_Core_MirroredClientAlertStackResponse(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MirroredClientAlertStackResponse.protobuf.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientAlertStackResponse and conformance Apple_Workout_Core_MirroredClientAlertStackResponse();
  return static Message.with(_:)();
}

uint64_t MirroredClientAlertStackResponse.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MirroredClientAlertStackResponse.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

WorkoutCore::MirroredClientAlertStackResponse __swiftcall MirroredClientAlertStackResponse.init(identifier:continueExecution:continueOption:)(WorkoutCore::MirroredClientAlertStackResponse identifier, Swift::Bool continueExecution, Swift::Int continueOption)
{
  *v3 = identifier.identifier;
  *(v3 + 16) = continueExecution;
  *(v3 + 24) = continueOption;
  identifier.continueOption = continueOption;
  identifier.continueExecution = continueExecution;
  return identifier;
}

uint64_t closure #1 in MirroredClientAlertStackResponse.protobuf.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = *(a1 + 8);

  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  if (a5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a5 <= 0x7FFFFFFF)
  {
    *(a1 + 20) = a5;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientAlertStackResponse and conformance Apple_Workout_Core_MirroredClientAlertStackResponse()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientAlertStackResponse and conformance Apple_Workout_Core_MirroredClientAlertStackResponse;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientAlertStackResponse and conformance Apple_Workout_Core_MirroredClientAlertStackResponse)
  {
    type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientAlertStackResponse and conformance Apple_Workout_Core_MirroredClientAlertStackResponse);
  }

  return result;
}

uint64_t MirroredClientAlertStackResponse.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  _StringGuts.grow(_:)(57);
  MEMORY[0x20F2E6D80](0x696669746E656469, 0xEC000000203A7265);
  MEMORY[0x20F2E6D80](v1, v2);
  MEMORY[0x20F2E6D80](0xD000000000000015, 0x800000020B46E090);
  if (v3)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v3)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x20F2E6D80](v5, v6);

  MEMORY[0x20F2E6D80](0xD000000000000012, 0x800000020B46E0B0);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v7);

  return 0;
}

uint64_t protocol witness for MirroredMessageProtocol.init(protobuf:) in conformance MirroredClientAlertStackResponse@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = *(a1 + 16);
  v6 = *(a1 + 20);

  result = outlined destroy of Apple_Workout_Core_MirroredClientAlertStackResponse(a1);
  *(a2 + 24) = v6;
  return result;
}

uint64_t protocol witness for MirroredMessageProtocol.protobuf.getter in conformance MirroredClientAlertStackResponse()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientAlertStackResponse and conformance Apple_Workout_Core_MirroredClientAlertStackResponse();
  return static Message.with(_:)();
}

BOOL static MirroredClientAlertStackResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 == v5;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v7 & 1) != 0 && ((v2 ^ v4) & 1) == 0)
  {
    return v3 == v5;
  }

  return result;
}

uint64_t MirroredClientAlertStackResponse.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  return MEMORY[0x20F2E7FF0](v4);
}

Swift::Int MirroredClientAlertStackResponse.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  MEMORY[0x20F2E7FF0](v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredClientAlertStackResponse()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  MEMORY[0x20F2E7FF0](v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MirroredClientAlertStackResponse()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  return MEMORY[0x20F2E7FF0](v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredClientAlertStackResponse()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  MEMORY[0x20F2E7FF0](v4);
  return Hasher._finalize()();
}

unint64_t instantiation function for generic protocol witness table for MirroredClientAlertStackResponse(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MirroredClientAlertStackResponse and conformance MirroredClientAlertStackResponse();
  *(a1 + 8) = result;
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance MirroredClientAlertStackResponse(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 == v5;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v7 & 1) != 0 && ((v2 ^ v4) & 1) == 0)
  {
    return v3 == v5;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MirroredClientAlertStackResponse(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for MirroredClientAlertStackResponse(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t NLWorkoutController.startSession(with:countdownDeadline:)(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  type metadata accessor for MainActor();
  v3[28] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[29] = v5;
  v3[30] = v4;

  return MEMORY[0x2822009F8](NLWorkoutController.startSession(with:countdownDeadline:), v5, v4);
}

uint64_t NLWorkoutController.startSession(with:countdownDeadline:)()
{
  v42 = v0;
  v1 = v0 + 80;
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 200);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.app);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 200);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v41 = v9;
    *v8 = 136315394;
    v10 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
    swift_beginAccess();
    v11 = NLWorkoutStartSourceDescription(*(v7 + v10));
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v16 = *(v0 + 200);
    *(v0 + 80) = v13;
    *(v0 + 88) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v17 = Optional.description.getter();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v41);
    v1 = v0 + 80;

    *(v8 + 4) = v20;
    *(v8 + 12) = 2080;
    v21 = LiveWorkoutConfiguration.logString.getter();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v41);

    *(v8 + 14) = v23;
    _os_log_impl(&dword_20AEA4000, v5, v6, "[NLWorkoutController] startSession with startSource: %s, live configuration: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  else
  {
  }

  v24 = *(v0 + 200);
  v25 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
  swift_beginAccess();
  if ((*(v24 + v25) - 19) > 1)
  {
    v31 = [*(v0 + 216) healthStore];
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (one-time initialization token for formattingManager != -1)
    {
      swift_once();
    }

    v32 = *(v0 + 216);
    v33 = *(v0 + 200);
    v34 = static WorkoutCoreInjector.formattingManager;
    v35 = [v32 locationProvider];
    v36 = [objc_allocWithZone(NLWorkout) initWithWorkoutConfiguration:v33 healthStore:v31 formattingManager:v34 locationProvider:v35];
    *(v0 + 248) = v36;

    [v32 _logWorkoutStartWithConfiguration_workout_];
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v37 = *(v0 + 208);
    v38 = *(v0 + 216);
    WorkoutSignposter.emit(signpost:)(0);
    v39 = *(v24 + v25);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 192;
    *(v0 + 24) = NLWorkoutController.startSession(with:countdownDeadline:);
    v40 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo16NLSessionControlCs5NeverOGMd, &_sSccySo16NLSessionControlCs5NeverOGMR);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NLSessionControl) -> () with result type NLSessionControl;
    *(v0 + 104) = &block_descriptor_91;
    *(v0 + 112) = v40;
    [v38 _startSessionWithWorkout_startSource_countdownDeadline_completion_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v27 = *(v0 + 216);
    v26 = *(v0 + 224);
    v28 = *(v0 + 200);

    [v27 _startMirroredSessionWithLiveWorkoutConfiguration_];
    v29 = *(v0 + 8);

    return v29(0);
  }
}

{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v3 = *v0;

  return MEMORY[0x2822009F8](NLWorkoutController.startSession(with:countdownDeadline:), v2, v1);
}

{
  v1 = *(v0 + 224);

  v2 = *(v0 + 192);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NLSessionControl) -> () with result type NLSessionControl(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

uint64_t @objc closure #1 in NLWorkoutController.startSession(with:countdownDeadline:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](@objc closure #1 in NLWorkoutController.startSession(with:countdownDeadline:), v6, v5);
}

uint64_t @objc closure #1 in NLWorkoutController.startSession(with:countdownDeadline:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  v0[7] = _Block_copy(v3);
  v6 = v5;
  v7 = v4;
  v8 = v2;
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = @objc closure #1 in NLWorkoutController.startSession(with:countdownDeadline:);
  v10 = v0[5];
  v12 = v0[2];
  v11 = v0[3];

  return NLWorkoutController.startSession(with:countdownDeadline:)(v12, v11);
}

uint64_t @objc closure #1 in NLWorkoutController.startSession(with:countdownDeadline:)(void *a1)
{
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v10 = *v1;

  (v4)[2](v4, a1);
  _Block_release(v4);

  v8 = *(v10 + 8);

  return v8();
}

Swift::Bool __swiftcall NLWorkoutController.hasCurrentSession()()
{
  v1 = [v0 activeWorkout];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 sessionActivity];
  IsActive_2 = NLSessionActivityIsActive_2(v3);

  if (IsActive_2)
  {
    IsPaused_1 = 1;
  }

  else
  {
    v6 = [v2 sessionActivity];
    IsPaused_1 = NLSessionActivityIsPaused_1(v6);
  }

  return IsPaused_1;
}

BOOL @objc NLWorkoutController.hasCurrentSession()(NLWorkoutController *self, SEL a2)
{
  v2 = self;
  v3 = [(NLWorkoutController *)v2 activeWorkout];
  if (v3)
  {
    v4 = v3;
    v5 = [(NLWorkout *)v3 sessionActivity];
    IsActive_2 = NLSessionActivityIsActive_2(v5);

    if (IsActive_2)
    {
      IsPaused_1 = 1;
    }

    else
    {
      v8 = [(NLWorkout *)v4 sessionActivity];
      IsPaused_1 = NLSessionActivityIsPaused_1(v8);
    }
  }

  else
  {
    IsPaused_1 = 0;
  }

  return IsPaused_1;
}

NLSessionControl __swiftcall NLWorkoutController.sessionControlForRecovery()()
{
  v1 = [v0 activeWorkout];
  v2 = [objc_allocWithZone(NLSessionControl) initWithWorkout_];

  if (v2)
  {
    v3 = v2;
  }

  else
  {
    __break(1u);
  }

  result._workout = v4;
  result.super.isa = v3;
  return result;
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = _sIeghH_IeAgH_TRTQ0_;

  return v7();
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = _sIeAgH_ytIeAgHr_TRTQ0_;

  return v8();
}

uint64_t _sIeAgH_ytIeAgHr_TRTQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  outlined init with copy of TaskPriority?(a3, v25 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of TaskPriority?(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    outlined destroy of TaskPriority?(a3);

    return v23;
  }

LABEL_8:
  outlined destroy of TaskPriority?(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

BOOL NLSessionActivityIsActive_2(void *a1)
{
  v1 = a1;
  v2 = [v1 state];

  return v2 == 6;
}

uint64_t NLSessionActivityIsPaused_1(void *a1)
{
  v1 = a1;
  v2 = [v1 state];
  v3 = v2 < 0xA;
  v4 = 0x338u >> v2;

  return v3 & v4;
}

uint64_t partial apply for @objc closure #1 in NLWorkoutController.startSession(with:countdownDeadline:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for @objc closure #1 in NLWorkoutController.startSession(with:countdownDeadline:);

  return @objc closure #1 in NLWorkoutController.startSession(with:countdownDeadline:)(v2, v3, v5, v4);
}

uint64_t objectdestroy_3Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t _sIeAgH_ytIeAgHr_TRTATQ0__0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_17(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_17TQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_17TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t static VoiceFeedbackTargetZone.make(targetZone:distanceType:formattingManager:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, id a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20WorkoutAnnouncements23VoiceFeedbackPaceFormatOSgMd, &_s20WorkoutAnnouncements23VoiceFeedbackPaceFormatOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20WorkoutAnnouncements23VoiceFeedbackMetricTypeOSgMd, &_s20WorkoutAnnouncements23VoiceFeedbackMetricTypeOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v46 - v13;
  v15 = type metadata accessor for VoiceFeedbackMetricType();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v52 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v46 - v20;
  v22 = MEMORY[0x20F2E8410](a2);
  swift_beginAccess();
  v23 = *(a1 + 24);
  swift_beginAccess();
  v24 = *(a1 + 32);
  v25 = [a1 primaryType];
  if (v25 > 2)
  {
    if (v25 != 3)
    {
      goto LABEL_30;
    }

    v34 = [objc_opt_self() wattUnit];
    goto LABEL_10;
  }

  if (v25 != 1)
  {
    if (v25 != 2)
    {
      goto LABEL_30;
    }

    v34 = [objc_opt_self() _countPerMinuteUnit];
LABEL_10:
    v31 = v34;
    goto LABEL_18;
  }

  v50 = a3;
  v26 = [a3 unitManager];
  if (!v26)
  {
    __break(1u);
    goto LABEL_27;
  }

  v27 = v26;
  v28 = [v26 userDistanceHKUnitForDistanceType_];
  v49 = a2;
  v29 = v28;

  v30 = objc_opt_self();
  v31 = v29;
  v48 = v30;
  a3 = [v30 meterUnit];
  v32 = *(a1 + 24);
  v47 = objc_opt_self();
  v33 = [v47 quantityWithUnit:a3 doubleValue:v32];

  if (v22 == 4)
  {
    [v50 speedPerHourWithDistance:v33 overDuration:4 paceFormat:v49 distanceType:1.0];
    goto LABEL_13;
  }

  v35 = [v50 unitManager];
  if (!v35)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v36 = v35;
  [v35 paceWithDistance:v33 overDuration:v22 paceFormat:v49 distanceType:1.0];

LABEL_13:
  v37 = [v48 meterUnit];
  a3 = [v47 quantityWithUnit:v37 doubleValue:*(a1 + 32)];

  if (v22 != 4)
  {
    v38 = [v50 unitManager];
    if (v38)
    {
      v39 = v38;
      [v38 paceWithDistance:a3 overDuration:v22 paceFormat:v49 distanceType:1.0];

      goto LABEL_17;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  [v50 speedPerHourWithDistance:a3 overDuration:4 paceFormat:v49 distanceType:1.0];
LABEL_17:

LABEL_18:
  a3 = qword_20B44F0B8[*(a1 + 16)];
  VoiceFeedbackMetricType.init(_:)();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
LABEL_29:
    outlined destroy of VoiceFeedbackMetricType?(v14);
    v54 = 0;
    v55 = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    MEMORY[0x20F2E6D80](0xD00000000000003FLL, 0x800000020B46E130);
    v53 = a3;
    type metadata accessor for HKWorkoutMetricType(0);
    _print_unlocked<A, B>(_:_:)();
    goto LABEL_30;
  }

  (*(v16 + 32))(v21, v14, v15);
  v40 = [v31 unitString];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v16 + 16))(v52, v21, v15);
  if (v22 <= 2)
  {
    if (v22 != 1)
    {
      goto LABEL_30;
    }

LABEL_24:
    v41 = MEMORY[0x277D7D8D8];
    goto LABEL_25;
  }

  if (v22 == 3)
  {
    goto LABEL_24;
  }

  if (v22 == 4)
  {
    v41 = MEMORY[0x277D7D8E0];
LABEL_25:
    v42 = *v41;
    v43 = type metadata accessor for VoiceFeedbackPaceFormat();
    v44 = *(v43 - 8);
    (*(v44 + 104))(v10, v42, v43);
    (*(v44 + 56))(v10, 0, 1, v43);
    VoiceFeedbackTargetZone.init(minMagnitude:maxMagnitude:unit:metricType:paceFormat:zoneIndex:)();

    return (*(v16 + 8))(v21, v15);
  }

LABEL_30:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t outlined destroy of VoiceFeedbackMetricType?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20WorkoutAnnouncements23VoiceFeedbackMetricTypeOSgMd, &_s20WorkoutAnnouncements23VoiceFeedbackMetricTypeOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static VoiceFeedbackWorkoutStep.make(completedStep:formattingManager:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20WorkoutAnnouncements23VoiceFeedbackTargetZoneVSgMd, &_s20WorkoutAnnouncements23VoiceFeedbackTargetZoneVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v45 - v8;
  v10 = type metadata accessor for VoiceFeedbackStepType();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  if (v16)
  {
    v51 = v9;
    v52 = v13;
    v53 = v12;
    v18 = *a1;
    v17 = *(a1 + 8);
    v19 = *(a1 + 24);
    v20 = *(a1 + 32);
    v21 = *(a1 + 40);
    v54[0] = *a1;
    v54[1] = v17;
    v54[2] = v16;
    v54[3] = v19;
    v54[4] = v20;
    v55 = v21 & 1;

    v22 = CompletedWorkoutStep.metricTypeToDisplay.getter();
    if ((v23 & 1) == 0)
    {
      v47 = v18;
      v48 = v20;
      v50 = a3;
      v49 = v21;
      if (v22 == 3)
      {
        v28 = [objc_opt_self() secondUnit];
        v29 = v17;
        v46 = v17;
      }

      else
      {
        if (v22 != 1)
        {
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

        v29 = v17;
        v30 = *&v18;
        v31 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
        swift_beginAccess();
        v32 = *(v16 + v31);
        v33 = FIUIDistanceTypeForActivityType();
        v54[0] = 1;

        v34 = MEMORY[0x20F2E8320](v54[0]);
        v35 = objc_opt_self();
        v28 = v34;
        v36 = [v35 meterUnit];
        v37 = [objc_opt_self() quantityWithUnit:v36 doubleValue:v30];

        [v37 doubleValueForUnit_];
        v39 = v38;

        v46 = v39;
      }

      v40 = [v28 unitString];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      swift_beginAccess();
      (*(v52 + 104))(v15, **(&unk_277D8C9B0 + *(v16 + 16)), v53);
      v41 = type metadata accessor for VoiceFeedbackTargetZone();
      (*(*(v41 - 8) + 56))(v51, 1, 1, v41);
      v42 = v50;
      VoiceFeedbackWorkoutStep.init(magnitude:unit:stepType:targetZone:)();

      outlined consume of CompletedWorkoutStep?(v47, v29, v16);
      v43 = type metadata accessor for VoiceFeedbackWorkoutStep();
      result = (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
      v44 = *MEMORY[0x277D85DE8];
      return result;
    }

    outlined consume of CompletedWorkoutStep?(v18, v17, v16);
  }

  v24 = type metadata accessor for VoiceFeedbackWorkoutStep();
  v25 = *(*(v24 - 8) + 56);
  v26 = *MEMORY[0x277D85DE8];

  return v25(a3, 1, 1, v24);
}

id PowerZonesAlertTargetZone.workoutKitRepresentation(activityType:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for WorkoutAlertMetric();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 effectiveTypeIdentifier];
  if (result != 13)
  {
    goto LABEL_12;
  }

  v11 = v2 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  result = swift_beginAccess();
  v13 = *v11;
  v12 = *(v11 + 8);
  v14 = *(v11 + 16);
  v15 = v14 >> 6;
  if (v14 >> 6 <= 1)
  {
    if (!v15)
    {
      v16 = *v11;
      v17 = *(v11 + 8);
      if (v17 == 5)
      {
        v18 = [objc_opt_self() watts];
        v19 = MEMORY[0x277CE3F50];
        goto LABEL_16;
      }

      if (v17 == 6)
      {
        v18 = [objc_opt_self() watts];
        v19 = MEMORY[0x277CE3F48];
LABEL_16:
        (*(v6 + 104))(v9, *v19, v5);
        *(a2 + 24) = type metadata accessor for PowerThresholdAlert();
        *(a2 + 32) = lazy protocol witness table accessor for type PowerRangeAlert and conformance PowerRangeAlert(&lazy protocol witness table cache variable for type PowerThresholdAlert and conformance PowerThresholdAlert, MEMORY[0x277CE40D8]);
        __swift_allocate_boxed_opaque_existential_1(a2);
        static WorkoutAlert<>.power(_:unit:metric:)();
LABEL_20:

        return (*(v6 + 8))(v9, v5);
      }

LABEL_12:
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (!__OFADD__(*&v13, 1))
    {
      *(a2 + 24) = type metadata accessor for PowerZoneAlert();
      *(a2 + 32) = lazy protocol witness table accessor for type PowerRangeAlert and conformance PowerRangeAlert(&lazy protocol witness table cache variable for type PowerZoneAlert and conformance PowerZoneAlert, MEMORY[0x277CE4048]);
      __swift_allocate_boxed_opaque_existential_1(a2);
      return static WorkoutAlert<>.power(zone:)();
    }

    __break(1u);
    goto LABEL_22;
  }

  if (v15 != 2)
  {
    goto LABEL_12;
  }

  v20 = v14 & 0x3F;
  v21 = *v11;
  v22 = *(v11 + 8);
  if (v20 != 5)
  {
    if (v20 != 6)
    {
      goto LABEL_12;
    }

    if (v13 > v12)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v18 = [objc_opt_self() watts];
    v23 = MEMORY[0x277CE3F48];
LABEL_19:
    (*(v6 + 104))(v9, *v23, v5);
    *(a2 + 24) = type metadata accessor for PowerRangeAlert();
    *(a2 + 32) = lazy protocol witness table accessor for type PowerRangeAlert and conformance PowerRangeAlert(&lazy protocol witness table cache variable for type PowerRangeAlert and conformance PowerRangeAlert, MEMORY[0x277CE4058]);
    __swift_allocate_boxed_opaque_existential_1(a2);
    static WorkoutAlert<>.power(_:unit:metric:)();
    goto LABEL_20;
  }

  if (v13 <= v12)
  {
    v18 = [objc_opt_self() watts];
    v23 = MEMORY[0x277CE3F50];
    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type PowerRangeAlert and conformance PowerRangeAlert(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Apple_Workout_Core_WorkoutStatePublisher.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v2) = static Apple_Workout_Core_WorkoutStatePublisher._StorageClass.defaultInstance;
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.workoutStarted.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 16) = a1 & 1;
  return result;
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.workoutStartDateReferenceTime.setter(double a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  v4 = *(v1 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    v6 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v6);
    *(v1 + v3) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 24) = a1;
  *(v6 + 32) = 0;
  return result;
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.workoutActive.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 33) = a1 & 1;
  return result;
}

uint64_t Apple_Workout_Core_DateInterval.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Apple_Workout_Core_DateInterval(0);
  *a1 = 0;
  a1[1] = 0;
  v3 = a1 + *(v2 + 24);
  return UnknownStorage.init()();
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.pauseTimes.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 40);
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.pauseTimes.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(v2 + v4) = v7;
  }

  swift_beginAccess();
  v11 = *(v7 + 40);
  *(v7 + 40) = a1;
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.lastUnbalancedPauseStartReferenceTime.setter(double a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  v4 = *(v1 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    v6 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v6);
    *(v1 + v3) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 48) = a1;
  *(v6 + 56) = 0;
  return result;
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.gpsLock.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 57) = a1 & 1;
  return result;
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.gpsUnavailable.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 58) = a1 & 1;
  return result;
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.showGymKitConnectionStatus.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 59) = a1 & 1;
  return result;
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.checkingGpsLock.setter(char a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v9);
    *(v4 + v6) = v9;
  }

  v13 = *a2;
  result = swift_beginAccess();
  *(v9 + v13) = a1 & 1;
  return result;
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.lowPowerModeAnimationSuspended.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 60) = a1 & 1;
  return result;
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.activityType.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v11);
    *(v2 + v8) = v11;
  }

  outlined init with take of Apple_Workout_Core_Activity(a1, v7);
  v15 = type metadata accessor for Apple_Workout_Core_Activity(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_Activity?(v7, v11 + v16);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.mirrorModeEnabled.setter(char a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v9);
    *(v4 + v6) = v9;
  }

  v13 = *a2;
  result = swift_beginAccess();
  *(v9 + v13) = a1 & 1;
  return result;
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.segmentIndex.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(v2 + v4) = v7;
  }

  v11 = v7 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__segmentIndex;
  result = swift_beginAccess();
  *v11 = a1;
  *(v11 + 4) = 0;
  return result;
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.pausedReasons.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  v2 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__pausedReasons;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.pausedReasons.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(v2 + v4) = v7;
  }

  v11 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__pausedReasons;
  swift_beginAccess();
  v12 = *(v7 + v11);
  *(v7 + v11) = a1;
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.workoutStarted.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  swift_beginAccess();
  return *(v1 + 16);
}

BOOL Apple_Workout_Core_WorkoutStatePublisher.hasWorkoutStartDateReferenceTime.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  swift_beginAccess();
  return (*(v1 + 32) & 1) == 0;
}

double Apple_Workout_Core_WorkoutStatePublisher.workoutStartDateReferenceTime.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  swift_beginAccess();
  result = *(v1 + 24);
  if (*(v1 + 32))
  {
    return 0.0;
  }

  return result;
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.workoutActive.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  swift_beginAccess();
  return *(v1 + 33);
}

BOOL Apple_Workout_Core_WorkoutStatePublisher.hasLastUnbalancedPauseStartReferenceTime.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  swift_beginAccess();
  return (*(v1 + 56) & 1) == 0;
}

double Apple_Workout_Core_WorkoutStatePublisher.lastUnbalancedPauseStartReferenceTime.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  swift_beginAccess();
  result = *(v1 + 48);
  if (*(v1 + 56))
  {
    return 0.0;
  }

  return result;
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.gpsLock.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  swift_beginAccess();
  return *(v1 + 57);
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.gpsUnavailable.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  swift_beginAccess();
  return *(v1 + 58);
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.showGymKitConnectionStatus.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  swift_beginAccess();
  return *(v1 + 59);
}

BOOL Apple_Workout_Core_WorkoutStatePublisher.hasCheckingGpsLock.getter(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4) != 2;
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.checkingGpsLock.getter(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4) & 1;
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.lowPowerModeAnimationSuspended.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  swift_beginAccess();
  return *(v1 + 60);
}

BOOL Apple_Workout_Core_WorkoutStatePublisher.hasActivityType.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  v6 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_Activity?(v5 + v6, v4);
  v7 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_1(v4, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  return v8;
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.activityType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_Activity?(v7 + v8, v6);
  v9 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Activity(v6, a1);
  }

  *(a1 + 8) = 0;
  *a1 = 0;
  *(a1 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v11 = a1 + *(v9 + 36);
  UnknownStorage.init()();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_1(v6, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  }

  return result;
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.mirrorModeEnabled.getter(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4);
}

BOOL Apple_Workout_Core_WorkoutStatePublisher.hasSegmentIndex.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__segmentIndex;
  swift_beginAccess();
  return (*(v1 + 4) & 1) == 0;
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.segmentIndex.getter()
{
  v1 = (*(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__segmentIndex);
  swift_beginAccess();
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t key path setter for Apple_Workout_Core_WorkoutStatePublisher.workoutStarted : Apple_Workout_Core_WorkoutStatePublisher(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(a2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 16) = v3;
  return result;
}

void (*Apple_Workout_Core_WorkoutStatePublisher.workoutStarted.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 16);
  return Apple_Workout_Core_WorkoutStatePublisher.workoutStarted.modify;
}

void Apple_Workout_Core_WorkoutStatePublisher.workoutStarted.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 16) = v4;

  free(v1);
}

uint64_t key path setter for Apple_Workout_Core_WorkoutStatePublisher.workoutStartDateReferenceTime : Apple_Workout_Core_WorkoutStatePublisher(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(a2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 24) = v3;
  *(v7 + 32) = 0;
  return result;
}

void (*Apple_Workout_Core_WorkoutStatePublisher.workoutStartDateReferenceTime.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  if (*(v6 + 32))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Apple_Workout_Core_WorkoutStatePublisher.workoutStartDateReferenceTime.modify;
}

void Apple_Workout_Core_WorkoutStatePublisher.workoutStartDateReferenceTime.modify(uint64_t *a1)
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
    v10 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 24) = v2;
  *(v7 + 32) = 0;

  free(v1);
}

Swift::Void __swiftcall Apple_Workout_Core_WorkoutStatePublisher.clearWorkoutStartDateReferenceTime()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  v2 = *(v0 + v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v4 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v4);
    *(v0 + v1) = v4;
  }

  swift_beginAccess();
  *(v4 + 24) = 0;
  *(v4 + 32) = 1;
}

uint64_t key path setter for Apple_Workout_Core_WorkoutStatePublisher.workoutActive : Apple_Workout_Core_WorkoutStatePublisher(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(a2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 33) = v3;
  return result;
}

void (*Apple_Workout_Core_WorkoutStatePublisher.workoutActive.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 33);
  return Apple_Workout_Core_WorkoutStatePublisher.workoutActive.modify;
}

void Apple_Workout_Core_WorkoutStatePublisher.workoutActive.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 33) = v4;

  free(v1);
}

uint64_t key path getter for Apple_Workout_Core_WorkoutStatePublisher.pauseTimes : Apple_Workout_Core_WorkoutStatePublisher@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t key path setter for Apple_Workout_Core_WorkoutStatePublisher.pauseTimes : Apple_Workout_Core_WorkoutStatePublisher(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);

  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(a2 + v4) = v7;
  }

  swift_beginAccess();
  v11 = *(v7 + 40);
  *(v7 + 40) = v3;
}

void (*Apple_Workout_Core_WorkoutStatePublisher.pauseTimes.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 40);

  return Apple_Workout_Core_WorkoutStatePublisher.pauseTimes.modify;
}

void Apple_Workout_Core_WorkoutStatePublisher.pauseTimes.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 72);
  v3 = *v4;
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  if (a2)
  {
    v7 = *(*a1 + 72);

    v8 = *(v6 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 88);
      v12 = *(v2 + 80);
      v13 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v10 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v10);
      *(v12 + v11) = v10;
    }

    swift_beginAccess();
    v16 = *(v10 + 40);
    *(v10 + 40) = v3;

    v17 = *v4;
  }

  else
  {
    v18 = *(v6 + v5);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v6 + v5);
    if ((v19 & 1) == 0)
    {
      v21 = *(v2 + 88);
      v22 = *(v2 + 80);
      v23 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      v20 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v20);
      *(v22 + v21) = v20;
    }

    swift_beginAccess();
    v26 = *(v20 + 40);
    *(v20 + 40) = v3;
  }

  free(v2);
}

uint64_t key path setter for Apple_Workout_Core_WorkoutStatePublisher.lastUnbalancedPauseStartReferenceTime : Apple_Workout_Core_WorkoutStatePublisher(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(a2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 48) = v3;
  *(v7 + 56) = 0;
  return result;
}

void (*Apple_Workout_Core_WorkoutStatePublisher.lastUnbalancedPauseStartReferenceTime.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 48);
  if (*(v6 + 56))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Apple_Workout_Core_WorkoutStatePublisher.lastUnbalancedPauseStartReferenceTime.modify;
}

void Apple_Workout_Core_WorkoutStatePublisher.lastUnbalancedPauseStartReferenceTime.modify(uint64_t *a1)
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
    v10 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 48) = v2;
  *(v7 + 56) = 0;

  free(v1);
}

Swift::Void __swiftcall Apple_Workout_Core_WorkoutStatePublisher.clearLastUnbalancedPauseStartReferenceTime()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  v2 = *(v0 + v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v4 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v4);
    *(v0 + v1) = v4;
  }

  swift_beginAccess();
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
}

uint64_t key path setter for Apple_Workout_Core_WorkoutStatePublisher.gpsLock : Apple_Workout_Core_WorkoutStatePublisher(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(a2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 57) = v3;
  return result;
}

void (*Apple_Workout_Core_WorkoutStatePublisher.gpsLock.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 57);
  return Apple_Workout_Core_WorkoutStatePublisher.gpsLock.modify;
}

void Apple_Workout_Core_WorkoutStatePublisher.gpsLock.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 57) = v4;

  free(v1);
}

uint64_t key path setter for Apple_Workout_Core_WorkoutStatePublisher.gpsUnavailable : Apple_Workout_Core_WorkoutStatePublisher(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(a2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 58) = v3;
  return result;
}

void (*Apple_Workout_Core_WorkoutStatePublisher.gpsUnavailable.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 58);
  return Apple_Workout_Core_WorkoutStatePublisher.gpsUnavailable.modify;
}

void Apple_Workout_Core_WorkoutStatePublisher.gpsUnavailable.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 58) = v4;

  free(v1);
}

uint64_t key path setter for Apple_Workout_Core_WorkoutStatePublisher.showGymKitConnectionStatus : Apple_Workout_Core_WorkoutStatePublisher(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(a2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 59) = v3;
  return result;
}

void (*Apple_Workout_Core_WorkoutStatePublisher.showGymKitConnectionStatus.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 59);
  return Apple_Workout_Core_WorkoutStatePublisher.showGymKitConnectionStatus.modify;
}

void Apple_Workout_Core_WorkoutStatePublisher.showGymKitConnectionStatus.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 59) = v4;

  free(v1);
}

uint64_t key path setter for Apple_Workout_Core_WorkoutStatePublisher.lowPowerModeAnimationSuspended : Apple_Workout_Core_WorkoutStatePublisher(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(a2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 60) = v3;
  return result;
}

void (*Apple_Workout_Core_WorkoutStatePublisher.lowPowerModeAnimationSuspended.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 60);
  return Apple_Workout_Core_WorkoutStatePublisher.lowPowerModeAnimationSuspended.modify;
}

void Apple_Workout_Core_WorkoutStatePublisher.lowPowerModeAnimationSuspended.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 60) = v4;

  free(v1);
}

uint64_t key path setter for Apple_Workout_Core_WorkoutStatePublisher.activityType : Apple_Workout_Core_WorkoutStatePublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_Activity(a1, v12);
  v13 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v16);
    *(a2 + v13) = v16;
  }

  outlined init with take of Apple_Workout_Core_Activity(v12, v7);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_Activity?(v7, v16 + v20);
  return swift_endAccess();
}

void (*Apple_Workout_Core_WorkoutStatePublisher.activityType.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v15 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType;
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
      _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Activity(v8, v14);
  }

  return Apple_Workout_Core_WorkoutStatePublisher.activityType.modify;
}

void Apple_Workout_Core_WorkoutStatePublisher.activityType.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Apple_Workout_Core_Activity(*(v2 + 120), *(v2 + 112));
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    outlined init with take of Apple_Workout_Core_Activity(v14, v18);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_Activity?(v18, v7 + v19);
    swift_endAccess();
    outlined destroy of Apple_Workout_Core_Activity(v13);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    outlined init with take of Apple_Workout_Core_Activity(v13, v18);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_Activity?(v18, v23 + v31);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

Swift::Void __swiftcall Apple_Workout_Core_WorkoutStatePublisher.clearActivityType()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v6 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v9);
    *(v1 + v6) = v9;
  }

  v13 = type metadata accessor for Apple_Workout_Core_Activity(0);
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_Activity?(v5, v9 + v14);
  swift_endAccess();
}

void (*Apple_Workout_Core_WorkoutStatePublisher.mirroringToCompanion.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirroringToCompanion;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7);
  return Apple_Workout_Core_WorkoutStatePublisher.mirroringToCompanion.modify;
}

uint64_t key path setter for Apple_Workout_Core_WorkoutStatePublisher.mirroringToCompanion : Apple_Workout_Core_WorkoutStatePublisher(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  v9 = *(a2 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v11);
    *(a2 + v8) = v11;
  }

  v15 = *a5;
  result = swift_beginAccess();
  *(v11 + v15) = v7;
  return result;
}

void (*Apple_Workout_Core_WorkoutStatePublisher.mirrorModeEnabled.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirrorModeEnabled;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7);
  return Apple_Workout_Core_WorkoutStatePublisher.mirrorModeEnabled.modify;
}

void Apple_Workout_Core_WorkoutStatePublisher.mirroringToCompanion.modify(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 72);
  v7 = *(*a1 + 84);
  v8 = *(v6 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 80);
    v12 = *(v4 + 72);
    v13 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v10 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v10);
    *(v12 + v11) = v10;
  }

  v16 = *a3;
  swift_beginAccess();
  *(v10 + v16) = v7;

  free(v4);
}

void (*Apple_Workout_Core_WorkoutStatePublisher.isGymKit.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__isGymKit;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return Apple_Workout_Core_WorkoutStatePublisher.isGymKit.modify;
}

uint64_t key path setter for Apple_Workout_Core_WorkoutStatePublisher.isGymKit : Apple_Workout_Core_WorkoutStatePublisher(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  v9 = *(a2 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v11);
    *(a2 + v8) = v11;
  }

  v15 = *a5;
  result = swift_beginAccess();
  *(v11 + v15) = v7;
  return result;
}

void (*Apple_Workout_Core_WorkoutStatePublisher.multisportWorkoutInAutoMode.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__multisportWorkoutInAutoMode;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return Apple_Workout_Core_WorkoutStatePublisher.multisportWorkoutInAutoMode.modify;
}

void Apple_Workout_Core_WorkoutStatePublisher.isGymKit.modify(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 72);
  v7 = *(*a1 + 84);
  v8 = *(v6 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 80);
    v12 = *(v4 + 72);
    v13 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v10 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v10);
    *(v12 + v11) = v10;
  }

  v16 = *a3;
  swift_beginAccess();
  *(v10 + v16) = v7;

  free(v4);
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.clearIsGymKit()(uint64_t *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(v3 + v4) = v7;
  }

  v11 = *a1;
  result = swift_beginAccess();
  *(v7 + v11) = 2;
  return result;
}

uint64_t key path getter for Apple_Workout_Core_WorkoutStatePublisher.segmentIndex : Apple_Workout_Core_WorkoutStatePublisher@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__segmentIndex;
  result = swift_beginAccess();
  v5 = *v3;
  if (*(v3 + 4))
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t key path setter for Apple_Workout_Core_WorkoutStatePublisher.segmentIndex : Apple_Workout_Core_WorkoutStatePublisher(int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(a2 + v4) = v7;
  }

  v11 = v7 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__segmentIndex;
  result = swift_beginAccess();
  *v11 = v3;
  *(v11 + 4) = 0;
  return result;
}

void (*Apple_Workout_Core_WorkoutStatePublisher.segmentIndex.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__segmentIndex;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Apple_Workout_Core_WorkoutStatePublisher.segmentIndex.modify;
}

void Apple_Workout_Core_WorkoutStatePublisher.segmentIndex.modify(uint64_t *a1)
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
    v10 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  v13 = v7 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__segmentIndex;
  swift_beginAccess();
  *v13 = v2;
  *(v13 + 4) = 0;

  free(v1);
}

Swift::Void __swiftcall Apple_Workout_Core_WorkoutStatePublisher.clearSegmentIndex()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v5 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v5);
    *(v1 + v2) = v5;
  }

  v9 = v5 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__segmentIndex;
  swift_beginAccess();
  *v9 = 0;
  *(v9 + 4) = 1;
}

void (*Apple_Workout_Core_WorkoutStatePublisher.speedSensor.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__speedSensor;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return Apple_Workout_Core_WorkoutStatePublisher.speedSensor.modify;
}

void (*Apple_Workout_Core_WorkoutStatePublisher.cadenceSensor.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__cadenceSensor;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return Apple_Workout_Core_WorkoutStatePublisher.cadenceSensor.modify;
}

void (*Apple_Workout_Core_WorkoutStatePublisher.powerSensor.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__powerSensor;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return Apple_Workout_Core_WorkoutStatePublisher.powerSensor.modify;
}

void (*Apple_Workout_Core_WorkoutStatePublisher.checkingGpsLock.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__checkingGpsLock;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return Apple_Workout_Core_WorkoutStatePublisher.checkingGpsLock.modify;
}

uint64_t key path getter for Apple_Workout_Core_WorkoutStatePublisher.pausedReasons : Apple_Workout_Core_WorkoutStatePublisher@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  v4 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__pausedReasons;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t key path setter for Apple_Workout_Core_WorkoutStatePublisher.pausedReasons : Apple_Workout_Core_WorkoutStatePublisher(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);

  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v7);
    *(a2 + v4) = v7;
  }

  v11 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__pausedReasons;
  swift_beginAccess();
  v12 = *(v7 + v11);
  *(v7 + v11) = v3;
}

void (*Apple_Workout_Core_WorkoutStatePublisher.pausedReasons.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__pausedReasons;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return Apple_Workout_Core_WorkoutStatePublisher.pausedReasons.modify;
}

void Apple_Workout_Core_WorkoutStatePublisher.pausedReasons.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 72);
  v3 = *v4;
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  if (a2)
  {
    v7 = *(*a1 + 72);

    v8 = *(v6 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 88);
      v12 = *(v2 + 80);
      v13 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v10 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v10);
      *(v12 + v11) = v10;
    }

    v16 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__pausedReasons;
    swift_beginAccess();
    v17 = *(v10 + v16);
    *(v10 + v16) = v3;

    v18 = *v4;
  }

  else
  {
    v19 = *(v6 + v5);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v5);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 88);
      v23 = *(v2 + 80);
      v24 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v21 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v21);
      *(v23 + v22) = v21;
    }

    v27 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__pausedReasons;
    swift_beginAccess();
    v28 = *(v21 + v27);
    *(v21 + v27) = v3;
  }

  free(v2);
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

unint64_t Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason and conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Apple_Workout_Core_DateInterval.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_DateInterval(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_DateInterval.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_DateInterval(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 40) = MEMORY[0x277D84F90];
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  *(v0 + 57) = 0;
  v2 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType;
  v3 = type metadata accessor for Apple_Workout_Core_Activity(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirroringToCompanion) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirrorModeEnabled) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__isGymKit) = 2;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__multisportWorkoutInAutoMode) = 2;
  v4 = v0 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__segmentIndex;
  *v4 = 0;
  *(v4 + 4) = 1;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__speedSensor) = 2;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__cadenceSensor) = 2;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__powerSensor) = 2;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__checkingGpsLock) = 2;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__pausedReasons) = v1;
  return v0;
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = &v41 - v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  *(v1 + 40) = MEMORY[0x277D84F90];
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  *(v1 + 57) = 0;
  v6 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType;
  v41 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType;
  v7 = type metadata accessor for Apple_Workout_Core_Activity(0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v42 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirroringToCompanion;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirroringToCompanion) = 0;
  v44 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirrorModeEnabled;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirrorModeEnabled) = 0;
  v45 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__isGymKit;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__isGymKit) = 2;
  v46 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__multisportWorkoutInAutoMode;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__multisportWorkoutInAutoMode) = 2;
  v8 = v1 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__segmentIndex;
  v47 = v1 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__segmentIndex;
  *v8 = 0;
  *(v8 + 4) = 1;
  v48 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__speedSensor;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__speedSensor) = 2;
  v49 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__cadenceSensor;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__cadenceSensor) = 2;
  v50 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__powerSensor;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__powerSensor) = 2;
  v9 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__checkingGpsLock;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__checkingGpsLock) = 2;
  v51 = v9;
  v52 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__pausedReasons;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__pausedReasons) = MEMORY[0x277D84F90];
  swift_beginAccess();
  v10 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v10;
  swift_beginAccess();
  v11 = *(a1 + 24);
  LOBYTE(v6) = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v11;
  *(v1 + 32) = v6;
  swift_beginAccess();
  LOBYTE(v11) = *(a1 + 33);
  swift_beginAccess();
  *(v1 + 33) = v11;
  swift_beginAccess();
  v12 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 40) = v12;
  swift_beginAccess();
  v13 = *(a1 + 48);
  LOBYTE(v6) = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 48) = v13;
  *(v1 + 56) = v6;
  swift_beginAccess();
  LOBYTE(v13) = *(a1 + 57);
  swift_beginAccess();
  *(v1 + 57) = v13;
  swift_beginAccess();
  LOBYTE(v13) = *(a1 + 58);
  swift_beginAccess();
  *(v1 + 58) = v13;
  swift_beginAccess();
  LOBYTE(v13) = *(a1 + 59);
  swift_beginAccess();
  *(v1 + 59) = v13;
  swift_beginAccess();
  LOBYTE(v13) = *(a1 + 60);
  swift_beginAccess();
  *(v1 + 60) = v13;
  v14 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType;
  swift_beginAccess();
  v15 = a1 + v14;
  v16 = v43;
  outlined init with copy of Apple_Workout_Core_Activity?(v15, v43);
  v17 = v41;
  swift_beginAccess();

  outlined assign with take of Apple_Workout_Core_Activity?(v16, v1 + v17);
  swift_endAccess();
  v18 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirroringToCompanion;
  swift_beginAccess();
  LOBYTE(v18) = *(a1 + v18);
  v19 = v42;
  swift_beginAccess();
  *(v1 + v19) = v18;
  v20 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirrorModeEnabled;
  swift_beginAccess();
  LOBYTE(v20) = *(a1 + v20);
  v21 = v44;
  swift_beginAccess();
  *(v1 + v21) = v20;
  v22 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__isGymKit;
  swift_beginAccess();
  LOBYTE(v22) = *(a1 + v22);
  v23 = v45;
  swift_beginAccess();
  *(v1 + v23) = v22;
  v24 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__multisportWorkoutInAutoMode;
  swift_beginAccess();
  LOBYTE(v24) = *(a1 + v24);
  v25 = v46;
  swift_beginAccess();
  *(v1 + v25) = v24;
  v26 = a1 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__segmentIndex;
  swift_beginAccess();
  LODWORD(v24) = *v26;
  LOBYTE(v26) = *(v26 + 4);
  v27 = v47;
  swift_beginAccess();
  *v27 = v24;
  *(v27 + 4) = v26;
  v28 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__speedSensor;
  swift_beginAccess();
  LOBYTE(v28) = *(a1 + v28);
  v29 = v48;
  swift_beginAccess();
  *(v1 + v29) = v28;
  v30 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__cadenceSensor;
  swift_beginAccess();
  LOBYTE(v30) = *(a1 + v30);
  v31 = v49;
  swift_beginAccess();
  *(v1 + v31) = v30;
  v32 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__powerSensor;
  swift_beginAccess();
  LOBYTE(v32) = *(a1 + v32);
  v33 = v50;
  swift_beginAccess();
  *(v1 + v33) = v32;
  v34 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__checkingGpsLock;
  swift_beginAccess();
  LOBYTE(v34) = *(a1 + v34);
  v35 = v51;
  swift_beginAccess();
  *(v1 + v35) = v34;
  v36 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__pausedReasons;
  swift_beginAccess();
  v37 = *(a1 + v36);

  v38 = v52;
  swift_beginAccess();
  v39 = *(v1 + v38);
  *(v1 + v38) = v37;

  return v1;
}

uint64_t type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher._StorageClass.__deallocating_deinit()
{
  v1 = v0[5];

  _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_1(v0 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v2 = *(v0 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__pausedReasons);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v3 + v8);
    v13 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v12);
    *(v4 + v8) = v11;
  }

  return closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)(v11, a1, a2, a3);
}

uint64_t closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          closure #1 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)();
          break;
        case 2:
          closure #2 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)();
          break;
        case 3:
          closure #3 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)();
          break;
        case 4:
          closure #4 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)();
          break;
        case 5:
          closure #5 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)();
          break;
        case 6:
          closure #6 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)();
          break;
        case 7:
          closure #7 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)();
          break;
        case 8:
          closure #8 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)();
          break;
        case 9:
          closure #9 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)();
          break;
        case 10:
          closure #10 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)();
          break;
        case 11:
          v11 = MEMORY[0x277D21730];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirroringToCompanion;
          goto LABEL_5;
        case 12:
          v11 = MEMORY[0x277D21730];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirrorModeEnabled;
          goto LABEL_5;
        case 13:
          v11 = MEMORY[0x277D21728];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__isGymKit;
          goto LABEL_5;
        case 14:
          v11 = MEMORY[0x277D21728];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__multisportWorkoutInAutoMode;
          goto LABEL_5;
        case 15:
          closure #15 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)();
          break;
        case 16:
          v11 = MEMORY[0x277D21728];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__speedSensor;
          goto LABEL_5;
        case 17:
          v11 = MEMORY[0x277D21728];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__cadenceSensor;
          goto LABEL_5;
        case 18:
          v11 = MEMORY[0x277D21728];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__powerSensor;
          goto LABEL_5;
        case 19:
          v11 = MEMORY[0x277D21728];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__checkingGpsLock;
LABEL_5:
          closure #11 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)(v12, v13, v14, v15, v16, v11);
          break;
        case 20:
          closure #20 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return swift_endAccess();
}

uint64_t closure #2 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
  return swift_endAccess();
}

uint64_t closure #3 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return swift_endAccess();
}

uint64_t closure #4 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_DateInterval(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_DateInterval and conformance Apple_Workout_Core_DateInterval, type metadata accessor for Apple_Workout_Core_DateInterval);
  dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #5 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
  return swift_endAccess();
}

uint64_t closure #6 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return swift_endAccess();
}

uint64_t closure #7 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return swift_endAccess();
}

uint64_t closure #8 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return swift_endAccess();
}

uint64_t closure #9 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return swift_endAccess();
}

uint64_t closure #10 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_Activity(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_Activity and conformance Apple_Workout_Core_Activity, type metadata accessor for Apple_Workout_Core_Activity);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #15 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
  return swift_endAccess();
}

uint64_t closure #11 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t closure #20 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason and conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason();
  dispatch thunk of Decoder.decodeRepeatedEnumField<A>(value:)();
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  result = closure #1 in Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (*(a1 + 16) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(a1);
    if (!v4)
    {
      swift_beginAccess();
      if (*(a1 + 33) == 1)
      {
        dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
      }

      swift_beginAccess();
      if (*(*(a1 + 40) + 16))
      {
        type metadata accessor for Apple_Workout_Core_DateInterval(0);
        lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_DateInterval and conformance Apple_Workout_Core_DateInterval, type metadata accessor for Apple_Workout_Core_DateInterval);

        dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      }

      closure #2 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(a1);
      swift_beginAccess();
      if (*(a1 + 57) == 1)
      {
        dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
      }

      swift_beginAccess();
      if (*(a1 + 58) == 1)
      {
        dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
      }

      swift_beginAccess();
      if (*(a1 + 59) == 1)
      {
        dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
      }

      swift_beginAccess();
      if (*(a1 + 60) == 1)
      {
        dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
      }

      closure #3 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
      v10 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirroringToCompanion;
      swift_beginAccess();
      if (*(a1 + v10) == 1)
      {
        dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
      }

      v11 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirrorModeEnabled;
      swift_beginAccess();
      if (*(a1 + v11) == 1)
      {
        dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
      }

      closure #4 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__isGymKit);
      closure #4 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__multisportWorkoutInAutoMode);
      closure #6 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(a1);
      closure #4 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__speedSensor);
      closure #4 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__cadenceSensor);
      closure #4 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__powerSensor);
      closure #4 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__checkingGpsLock);
      v12 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__pausedReasons;
      result = swift_beginAccess();
      if (*(*(a1 + v12) + 16))
      {
        lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason and conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason();

        dispatch thunk of Visitor.visitPackedEnumField<A>(value:fieldNumber:)();
      }
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 32) & 1) == 0)
  {
    v3 = *(a1 + 24);
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 56) & 1) == 0)
  {
    v3 = *(a1 + 48);
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_Activity?(a1 + v14, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  }

  outlined init with take of Apple_Workout_Core_Activity(v8, v13);
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_Activity and conformance Apple_Workout_Core_Activity, type metadata accessor for Apple_Workout_Core_Activity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_Activity(v13);
}

uint64_t closure #6 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__segmentIndex);
  result = swift_beginAccess();
  if ((v1[1] & 1) == 0)
  {
    v3 = *v1;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in closure #1 in Apple_Workout_Core_WorkoutStatePublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v6) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #1 in static Apple_Workout_Core_WorkoutStatePublisher.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v81 = *(v4 - 8);
  v5 = *(v81 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v79 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v79 - v17;
  swift_beginAccess();
  v19 = *(a1 + 16);
  swift_beginAccess();
  if (v19 != *(a2 + 16))
  {
    goto LABEL_2;
  }

  swift_beginAccess();
  v22 = *(a1 + 24);
  v23 = *(a1 + 32);
  swift_beginAccess();
  v24 = *(a2 + 32);
  if (v23)
  {
    if (!*(a2 + 32))
    {
      goto LABEL_2;
    }
  }

  else
  {
    if (v22 != *(a2 + 24))
    {
      v24 = 1;
    }

    if (v24)
    {
      goto LABEL_2;
    }
  }

  swift_beginAccess();
  v25 = *(a1 + 33);
  swift_beginAccess();
  if (v25 == *(a2 + 33))
  {
    v79 = v11;
    v80 = v4;
    swift_beginAccess();
    v26 = *(a1 + 40);
    swift_beginAccess();
    v27 = *(a2 + 40);

    v28 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C13_DateIntervalV_Tt1g5(v26, v27);

    if ((v28 & 1) == 0)
    {
      goto LABEL_31;
    }

    swift_beginAccess();
    v29 = *(a1 + 48);
    v30 = *(a1 + 56);
    swift_beginAccess();
    v31 = *(a2 + 56);
    if (v30)
    {
      v32 = v80;
      if (!*(a2 + 56))
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v29 != *(a2 + 48))
      {
        v31 = 1;
      }

      v32 = v80;
      if (v31)
      {
        goto LABEL_31;
      }
    }

    swift_beginAccess();
    v33 = *(a1 + 57);
    swift_beginAccess();
    if (v33 != *(a2 + 57))
    {
      goto LABEL_31;
    }

    swift_beginAccess();
    v34 = *(a1 + 58);
    swift_beginAccess();
    if (v34 != *(a2 + 58))
    {
      goto LABEL_31;
    }

    swift_beginAccess();
    v35 = *(a1 + 59);
    swift_beginAccess();
    if (v35 != *(a2 + 59))
    {
      goto LABEL_31;
    }

    swift_beginAccess();
    v36 = *(a1 + 60);
    swift_beginAccess();
    if (v36 != *(a2 + 60))
    {
      goto LABEL_31;
    }

    v37 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType;
    swift_beginAccess();
    outlined init with copy of Apple_Workout_Core_Activity?(a1 + v37, v18);
    v38 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType;
    swift_beginAccess();
    v39 = *(v8 + 48);
    v40 = v79;
    outlined init with copy of Apple_Workout_Core_Activity?(v18, v79);
    v80 = v39;
    outlined init with copy of Apple_Workout_Core_Activity?(a2 + v38, v40 + v39);
    v41 = *(v81 + 48);
    if (v41(v40, 1, v32) == 1)
    {
      _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_1(v18, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
      if (v41(v40 + v80, 1, v32) == 1)
      {
        _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_1(v40, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
LABEL_29:
        v43 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirroringToCompanion;
        swift_beginAccess();
        LODWORD(v43) = *(a1 + v43);
        v44 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirroringToCompanion;
        swift_beginAccess();
        if (v43 != *(a2 + v44))
        {
          goto LABEL_31;
        }

        v45 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirrorModeEnabled;
        swift_beginAccess();
        LODWORD(v45) = *(a1 + v45);
        v46 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirrorModeEnabled;
        swift_beginAccess();
        if (v45 != *(a2 + v46))
        {
          goto LABEL_31;
        }

        v47 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__isGymKit;
        swift_beginAccess();
        v48 = *(a1 + v47);
        v49 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__isGymKit;
        swift_beginAccess();
        v50 = *(a2 + v49);
        if (v48 == 2)
        {
          if (v50 != 2)
          {
            goto LABEL_31;
          }
        }

        else if (v50 == 2 || ((v48 ^ v50) & 1) != 0)
        {
          goto LABEL_31;
        }

        v51 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__multisportWorkoutInAutoMode;
        swift_beginAccess();
        v52 = *(a1 + v51);
        v53 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__multisportWorkoutInAutoMode;
        swift_beginAccess();
        v54 = *(a2 + v53);
        if (v52 == 2)
        {
          if (v54 != 2)
          {
            goto LABEL_31;
          }
        }

        else if (v54 == 2 || ((v52 ^ v54) & 1) != 0)
        {
          goto LABEL_31;
        }

        v55 = (a1 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__segmentIndex);
        swift_beginAccess();
        v56 = *v55;
        v57 = *(v55 + 4);
        v58 = a2 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__segmentIndex;
        swift_beginAccess();
        v59 = *(v58 + 4);
        if (v57)
        {
          if (!*(v58 + 4))
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v56 != *v58)
          {
            v59 = 1;
          }

          if (v59)
          {
            goto LABEL_31;
          }
        }

        v60 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__speedSensor;
        swift_beginAccess();
        v61 = *(a1 + v60);
        v62 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__speedSensor;
        swift_beginAccess();
        v63 = *(a2 + v62);
        if (v61 == 2)
        {
          if (v63 != 2)
          {
            goto LABEL_31;
          }
        }

        else if (v63 == 2 || ((v61 ^ v63) & 1) != 0)
        {
          goto LABEL_31;
        }

        v64 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__cadenceSensor;
        swift_beginAccess();
        v65 = *(a1 + v64);
        v66 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__cadenceSensor;
        swift_beginAccess();
        v67 = *(a2 + v66);
        if (v65 == 2)
        {
          if (v67 != 2)
          {
            goto LABEL_31;
          }
        }

        else if (v67 == 2 || ((v65 ^ v67) & 1) != 0)
        {
          goto LABEL_31;
        }

        v68 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__powerSensor;
        swift_beginAccess();
        v69 = *(a1 + v68);
        v70 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__powerSensor;
        swift_beginAccess();
        v71 = *(a2 + v70);
        if (v69 == 2)
        {
          if (v71 != 2)
          {
            goto LABEL_31;
          }
        }

        else if (v71 == 2 || ((v69 ^ v71) & 1) != 0)
        {
          goto LABEL_31;
        }

        v72 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__checkingGpsLock;
        swift_beginAccess();
        v73 = *(a1 + v72);
        v74 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__checkingGpsLock;
        swift_beginAccess();
        v75 = *(a2 + v74);
        if (v73 != 2)
        {
          if (v75 == 2 || ((v73 ^ v75) & 1) != 0)
          {
            goto LABEL_31;
          }

LABEL_69:
          v76 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__pausedReasons;
          swift_beginAccess();
          v77 = *(a1 + v76);
          v78 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__pausedReasons;
          swift_beginAccess();
          v20 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_c1_B14StatePublisherV0B12PausedReasonO_Tt1g5(v77, *(a2 + v78));
          goto LABEL_32;
        }

        if (v75 == 2)
        {
          goto LABEL_69;
        }

LABEL_31:
        v20 = 0;
LABEL_32:

        return v20 & 1;
      }
    }

    else
    {
      outlined init with copy of Apple_Workout_Core_Activity?(v40, v16);
      if (v41(v40 + v80, 1, v32) != 1)
      {
        outlined init with take of Apple_Workout_Core_Activity(v40 + v80, v7);
        v42 = static Apple_Workout_Core_Activity.== infix(_:_:)(v16, v7);
        outlined destroy of Apple_Workout_Core_Activity(v7);
        _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_1(v18, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
        outlined destroy of Apple_Workout_Core_Activity(v16);
        _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_1(v40, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
        if ((v42 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_29;
      }

      _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_1(v18, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
      outlined destroy of Apple_Workout_Core_Activity(v16);
    }

    _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_1(v40, &_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMR);
    goto LABEL_31;
  }

LABEL_2:
  v20 = 0;
  return v20 & 1;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_WorkoutStatePublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v4) = static Apple_Workout_Core_WorkoutStatePublisher._StorageClass.defaultInstance;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_WorkoutStatePublisher@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_WorkoutStatePublisher(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_WorkoutStatePublisher(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_WorkoutStatePublisher(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_WorkoutStatePublisher()
{
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);

  return Message.hash(into:)();
}

uint64_t static Apple_Workout_Core_WorkoutStatePublisher._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

uint64_t Apple_Workout_Core_DateInterval.decodeMessage<A>(decoder:)()
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

uint64_t Apple_Workout_Core_DateInterval.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v1))
  {
    if (!v0[1] || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Apple_Workout_Core_DateInterval(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t static Apple_Workout_Core_DateInterval.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v2 = *(type metadata accessor for Apple_Workout_Core_DateInterval(0) + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

Swift::Int Apple_Workout_Core_WorkoutStatePublisher.hashValue.getter(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_DateInterval@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_DateInterval@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_DateInterval(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_DateInterval(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_DateInterval;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_DateInterval(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_DateInterval and conformance Apple_Workout_Core_DateInterval, type metadata accessor for Apple_Workout_Core_DateInterval);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_WorkoutStatePublisher@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
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

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_DateInterval(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_DateInterval and conformance Apple_Workout_Core_DateInterval, type metadata accessor for Apple_Workout_Core_DateInterval);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_WorkoutStatePublisher()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_DateInterval()
{
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_DateInterval and conformance Apple_Workout_Core_DateInterval, type metadata accessor for Apple_Workout_Core_DateInterval);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_WorkoutStatePublisher()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_DateInterval(double *a1, double *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v3 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Apple_Workout_Core_WorkoutStatePublisher.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = closure #1 in static Apple_Workout_Core_WorkoutStatePublisher.== infix(_:_:)(v5, v6);

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason and conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason and conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason and conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason and conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason and conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason and conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason and conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason and conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason and conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason and conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason and conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason and conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason and conformance Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore06Apple_a1_b1_A14StatePublisherV0A12PausedReasonOGMd, &_sSay11WorkoutCore06Apple_a1_b1_A14StatePublisherV0A12PausedReasonOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason] and conformance [A]);
  }

  return result;
}

uint64_t keypath_get_34Tm_1@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t keypath_get_38Tm@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6) & 1;
  return result;
}

uint64_t type metadata completion function for Apple_Workout_Core_WorkoutStatePublisher()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason(uint64_t result, int a2, int a3)
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

uint64_t getEnumTag for Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason(uint64_t a1)
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

uint64_t destructiveInjectEnumTag for Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason(uint64_t result, int a2)
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

uint64_t type metadata completion function for Apple_Workout_Core_DateInterval()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for Apple_Workout_Core_WorkoutStatePublisher._StorageClass()
{
  type metadata accessor for Apple_Workout_Core_Activity?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t _s11WorkoutCore06Apple_a1_B9_ActivityVSgWOhTm_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id specialized static FitnessBridgeAppSettingsNavigator.openSettings()()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  URL.init(string:)();
  outlined init with copy of URL?(v14, v12);
  if ((*(v1 + 48))(v12, 1, v0) == 1)
  {
    outlined destroy of URL?(v12);
    if (one-time initialization token for activityPicker != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static WOLog.activityPicker);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20AEA4000, v16, v17, "Failed to create URL for fitness bridge app deeplink", v18, 2u);
      MEMORY[0x20F2E9420](v18, -1, -1);
    }

    return outlined destroy of URL?(v14);
  }

  (*(v1 + 32))(v7, v12, v0);
  if (one-time initialization token for activityPicker != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static WOLog.activityPicker);
  (*(v1 + 16))(v5, v7, v0);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v40 = v1;
    v23 = v22;
    v24 = swift_slowAlloc();
    v39 = v7;
    v25 = v24;
    v41 = v24;
    *v23 = 136315138;
    v26 = URL.absoluteString.getter();
    v28 = v27;
    v29 = *(v40 + 8);
    v29(v5, v0);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v41);

    *(v23 + 4) = v30;
    _os_log_impl(&dword_20AEA4000, v20, v21, "Opening deeplink to bridge app. url=%s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v31 = v25;
    v7 = v39;
    MEMORY[0x20F2E9420](v31, -1, -1);
    MEMORY[0x20F2E9420](v23, -1, -1);
  }

  else
  {

    v29 = *(v1 + 8);
    v29(v5, v0);
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v34 = result;
    URL._bridgeToObjectiveC()(v33);
    v36 = v35;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v34 openSensitiveURL:v36 withOptions:isa];

    v29(v7, v0);
    return outlined destroy of URL?(v14);
  }

  __break(1u);
  return result;
}

uint64_t LapsMetricsPublisher.laps.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void (*LapsMetricsPublisher.laps.modify(uint64_t *a1))(void *a1)
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
  return LapsMetricsPublisher.laps.modify;
}

void LapsMetricsPublisher.laps.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t LapsMetricsPublisher.laps.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path getter for LapsMetricsPublisher.laps : LapsMetricsPublisher@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for LapsMetricsPublisher.laps : LapsMetricsPublisher(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t LapsMetricsPublisher.$laps.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySuGMd, &_s7Combine9PublishedVySuGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for LapsMetricsPublisher.$laps : LapsMetricsPublisher(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySuGMd, &_s7Combine9PublishedVySuGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for LapsMetricsPublisher.$laps : LapsMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySu_GMd, &_s7Combine9PublishedV9PublisherVySu_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySuGMd, &_s7Combine9PublishedVySuGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t LapsMetricsPublisher.$laps.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySu_GMd, &_s7Combine9PublishedV9PublisherVySu_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySuGMd, &_s7Combine9PublishedVySuGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*LapsMetricsPublisher.$laps.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySu_GMd, &_s7Combine9PublishedV9PublisherVySu_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore20LapsMetricsPublisher__laps;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySuGMd, &_s7Combine9PublishedVySuGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return LapsMetricsPublisher.$laps.modify;
}

void LapsMetricsPublisher.$laps.modify(uint64_t a1, char a2)
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

uint64_t LapsMetricsPublisher.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  Published.init(initialValue:)();
  return v3;
}

uint64_t LapsMetricsPublisher.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySuGMd, &_s7Combine9PublishedVySuGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v8 - v4;
  v6 = OBJC_IVAR____TtC11WorkoutCore20LapsMetricsPublisher__laps;
  v8[1] = 0;
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v6, v5, v1);
  return v0;
}

uint64_t LapsMetricsPublisher.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore20LapsMetricsPublisher__laps;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySuGMd, &_s7Combine9PublishedVySuGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LapsMetricsPublisher.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore20LapsMetricsPublisher__laps;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySuGMd, &_s7Combine9PublishedVySuGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance LapsMetricsPublisher@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t LapsMetricsPublisher.wireData()()
{
  v0 = type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher();
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = v4 + *(v2 + 20);
  UnknownStorage.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (HIDWORD(v9))
  {
    __break(1u);
  }

  else
  {
    *v4 = v9;
    lazy protocol witness table accessor for type Apple_Workout_Core_LapsMetricsPublisher and conformance Apple_Workout_Core_LapsMetricsPublisher();
    v7 = Message.serializedData(partial:)();
    outlined destroy of Apple_Workout_Core_LapsMetricsPublisher(v4);
    return v7;
  }

  return result;
}

uint64_t LapsMetricsPublisher.protobuf.getter@<X0>(_DWORD *a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher() + 20);
  UnknownStorage.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (HIDWORD(v4))
  {
    __break(1u);
  }

  else
  {
    *a1 = v4;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_LapsMetricsPublisher and conformance Apple_Workout_Core_LapsMetricsPublisher()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_LapsMetricsPublisher and conformance Apple_Workout_Core_LapsMetricsPublisher;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_LapsMetricsPublisher and conformance Apple_Workout_Core_LapsMetricsPublisher)
  {
    type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_LapsMetricsPublisher and conformance Apple_Workout_Core_LapsMetricsPublisher);
  }

  return result;
}

uint64_t outlined destroy of Apple_Workout_Core_LapsMetricsPublisher(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LapsMetricsPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized static LapsMetricsPublisher.decodeProto(serializedData:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

uint64_t protocol witness for Protable.protobuf.getter in conformance LapsMetricsPublisher@<X0>(_DWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = a1 + *(type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher() + 20);
  UnknownStorage.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (HIDWORD(v6))
  {
    __break(1u);
  }

  else
  {
    *a1 = v6;
  }

  return result;
}

uint64_t protocol witness for static ProDatable.decodeProto(serializedData:) in conformance LapsMetricsPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized static LapsMetricsPublisher.decodeProto(serializedData:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t protocol witness for ProDatable.init(serializedData:) in conformance LapsMetricsPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = specialized static LapsMetricsPublisher.decodeProto(serializedData:)(a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t specialized static LapsMetricsPublisher.decodeProto(serializedData:)(uint64_t a1, unint64_t a2)
{
  v23 = a2;
  v3 = type metadata accessor for BinaryDecodingOptions();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySuGMd, &_s7Combine9PublishedVySuGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v14 = type metadata accessor for LapsMetricsPublisher();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = OBJC_IVAR____TtC11WorkoutCore20LapsMetricsPublisher__laps;
  *&v24 = 0;
  Published.init(initialValue:)();
  (*(v10 + 32))(v17 + v18, v13, v9);
  v27 = a1;
  v28 = v23;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  outlined copy of Data._Representation(a1, v23);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_LapsMetricsPublisher and conformance Apple_Workout_Core_LapsMetricsPublisher();
  v19 = v29;
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v19)
  {
  }

  else
  {
    v20 = *v8;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v24 = v20;

    static Published.subscript.setter();
    outlined destroy of Apple_Workout_Core_LapsMetricsPublisher(v8);
  }

  return v17;
}

uint64_t type metadata accessor for LapsMetricsPublisher()
{
  result = type metadata singleton initialization cache for LapsMetricsPublisher;
  if (!type metadata singleton initialization cache for LapsMetricsPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for LapsMetricsPublisher()
{
  type metadata accessor for Published<UInt>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<UInt>()
{
  if (!lazy cache variable for type metadata for Published<UInt>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<UInt>);
    }
  }
}

void MetricsPublisher.dataProvider(_:didUpdate:)(void *a1, uint64_t a2)
{
  swift_getObjectType();
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v170 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v170 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v170 - v15;
  switch(a2)
  {
    case 0:
    case 6:
    case 20:
    case 34:
    case 41:
    case 42:
    case 46:
    case 50:
      return;
    case 1:
      [objc_msgSend(a1 distanceProvider)];
      v49 = v111;
      swift_unknownObjectRelease();
      swift_getKeyPath();
      goto LABEL_118;
    case 2:
      v79 = *&v2[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_energyMetricsPublisher];
      [objc_msgSend(a1 energyBurnProvider)];
      v81 = v80;
      swift_unknownObjectRelease();
      swift_getKeyPath();
      swift_getKeyPath();
      v170 = v81;
      goto LABEL_56;
    case 3:
      [objc_msgSend(a1 elapsedTimeProvider)];
      v62 = v61;
      swift_unknownObjectRelease();
      v63 = *&v2[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_elapsedTimeMetricsPublisher];
      swift_getKeyPath();
      swift_getKeyPath();
      v170 = v62;

      static Published.subscript.setter();
      v64 = [a1 elapsedTimeProvider];
      objc_opt_self();
      v65 = swift_dynamicCastObjCClass();
      if (!v65)
      {
        goto LABEL_124;
      }

      v66 = v65;
      [v65 adjustedTime];
      v67 = OBJC_IVAR____TtC11WorkoutCore27ElapsedTimeMetricsPublisher_adjustedTime;
      if (v68 == *(v63 + OBJC_IVAR____TtC11WorkoutCore27ElapsedTimeMetricsPublisher_adjustedTime))
      {
        goto LABEL_124;
      }

      [v66 adjustedTime];
      *(v63 + v67) = v69;
      v70 = *&v2[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutStatePublisher];
      static Date.now.getter();
      Date.addingTimeInterval(_:)();
      (*(v6 + 8))(v9, v5);
      (*(v6 + 56))(v16, 0, 1, v5);
      swift_getKeyPath();
      swift_getKeyPath();
      outlined init with copy of Date?(v16, v14);

      static Published.subscript.setter();
      swift_unknownObjectRelease();
      outlined destroy of GroundContactTimeProvider?(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      return;
    case 4:
      v117 = [a1 paceProvider];
      if (v117)
      {
        [v117 currentPaceInMetersPerSecond];
        v49 = v118;
        swift_unknownObjectRelease();
      }

      else
      {
        v49 = 0.0;
      }

      goto LABEL_117;
    case 5:
      [objc_msgSend(a1 heartRateProvider)];
      v84 = v170;
      v85 = v171;
      swift_unknownObjectRelease();
      v86 = *&v2[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_heartRateMetricsPublisher];
      if (v84 > 0.0)
      {
        v87 = v84;
      }

      else
      {
        v87 = 0.0;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v170 = v87;
      LOBYTE(v171) = v84 <= 0.0;

      static Published.subscript.setter();
      if (one-time initialization token for app != -1)
      {
        swift_once();
      }

      v88 = type metadata accessor for Logger();
      __swift_project_value_buffer(v88, static WOLog.app);
      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&dword_20AEA4000, v89, v90, "MetricsPublisher updated heart rate metric", v91, 2u);
        MEMORY[0x20F2E9420](v91, -1, -1);
      }

      if (v85 > 1)
      {
        goto LABEL_125;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v170) = v85;

      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v170) = 0;

      static Published.subscript.setter();
      lazy protocol witness table accessor for type MetricsPublisher and conformance MetricsPublisher();
      ObservableObject<>.objectWillChange.getter();
      ObservableObjectPublisher.send()();

      return;
    case 7:
      [objc_msgSend(a1 energyBurnProvider)];
      v57 = v56;
      swift_unknownObjectRelease();
      [objc_msgSend(a1 energyBurnProvider)];
      v59 = v58;
      swift_unknownObjectRelease();
      v60 = *&v2[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_energyMetricsPublisher];
      swift_getKeyPath();
      swift_getKeyPath();
      v170 = v57 + v59;
      goto LABEL_56;
    case 8:
      v100 = [a1 paceProvider];
      if (v100)
      {
        [v100 averagePaceInMetersPerSecond];
        v49 = v101;
        swift_unknownObjectRelease();
      }

      else
      {
        v49 = 0.0;
      }

      goto LABEL_117;
    case 9:
      v76 = *&v2[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_lapsMetricsPublisher];
      v77 = COERCE_DOUBLE([objc_msgSend(a1 lapsProvider)]);
      swift_unknownObjectRelease();
      swift_getKeyPath();
      swift_getKeyPath();
      v170 = v77;

      goto LABEL_120;
    case 10:
      v120 = [a1 elevationProvider];
      if (!v120)
      {
        return;
      }

      v121 = v120;
      v122 = [v120 elevationGain];
      if (v122)
      {
        v123 = v122;
        v124 = [objc_opt_self() meterUnit];
        [v123 doubleValueForUnit_];
        v126 = v125;
      }

      else
      {
        v126 = 0.0;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v170 = v126;
      LOBYTE(v171) = 0;
      v163 = v2;
      static Published.subscript.setter();
      v164 = [v121 chartDataElements];
      type metadata accessor for WorkoutChartDataElement();
      *&v165 = COERCE_DOUBLE(static Array._unconditionallyBridgeFromObjectiveC(_:)());

      swift_getKeyPath();
      swift_getKeyPath();
      v170 = *&v165;
      v166 = v163;
      static Published.subscript.setter();
      v167 = COERCE_DOUBLE([v121 chartUnit]);
      swift_getKeyPath();
      swift_getKeyPath();
      v170 = v167;
      v168 = v166;
      v169 = *&v167;
      static Published.subscript.setter();

      goto LABEL_124;
    case 11:
      v103 = [a1 powerProvider];
      if (!v103)
      {
        return;
      }

      v104 = v103;
      v105 = *&v2[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_powerMetricsPublisher];
      v106 = [v103 instantaneousPowerStale];
      v107 = 0.0;
      if ((v106 & 1) == 0)
      {
        [v104 instantaneousPower];
        v107 = v108;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v170 = v107;
      LOBYTE(v171) = v106;

      static Published.subscript.setter();
      v109 = [v104 chartDataElements];
      type metadata accessor for WorkoutChartDataElement();
      *&v110 = COERCE_DOUBLE(static Array._unconditionallyBridgeFromObjectiveC(_:)());

      swift_getKeyPath();
      swift_getKeyPath();
      v170 = *&v110;

      goto LABEL_81;
    case 12:
      v114 = *&v2[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_powerMetricsPublisher];
      v115 = [a1 powerProvider];
      if (v115)
      {
        [v115 averagePower];
        v46 = v116;
        swift_unknownObjectRelease();
      }

      else
      {
        v46 = 0.0;
      }

      goto LABEL_110;
    case 13:
      [objc_msgSend(a1 flightsClimbedProvider)];
      v49 = v48;
      swift_unknownObjectRelease();
      swift_getKeyPath();
      goto LABEL_118;
    case 14:
      [objc_msgSend(a1 rollingPaceProvider)];
      v49 = v127;
      swift_unknownObjectRelease();
      swift_getKeyPath();
      goto LABEL_118;
    case 15:
      v128 = [a1 cadenceProvider];
      if (v128)
      {
        v129 = v128;
        v130 = [v128 currentCadenceStale];
        v131 = 0.0;
        if ((v130 & 1) == 0)
        {
          [v129 currentCadence];
          v131 = v132;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        v170 = v131;
        LOBYTE(v171) = v130;
LABEL_80:
        v136 = v2;
LABEL_81:
        static Published.subscript.setter();
LABEL_124:
        swift_unknownObjectRelease();
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v170 = 0.0;
        LOBYTE(v171) = 1;
LABEL_119:
        v162 = v2;
LABEL_120:
        static Published.subscript.setter();
      }

      return;
    case 16:
      v52 = [a1 cadenceProvider];
      v53 = v52;
      if (v52)
      {
        [v52 averageCadence];
        v55 = v54;
        swift_unknownObjectRelease();
      }

      else
      {
        v55 = 0.0;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v170 = v55;
      LOBYTE(v171) = v53 == 0;
      goto LABEL_119;
    case 17:
      v71 = [a1 elevationProvider];
      v72 = 0.0;
      if (v71)
      {
        v73 = [v71 currentAltitude];
        swift_unknownObjectRelease();
        if (v73)
        {
          v74 = [objc_opt_self() meterUnit];
          [v73 doubleValueForUnit_];
          v72 = v75;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v170 = v72;
      LOBYTE(v171) = 0;
      goto LABEL_119;
    case 18:
      [objc_msgSend(a1 ghostPacerProvider)];
      v49 = v133;
      swift_unknownObjectRelease();
      swift_getKeyPath();
      goto LABEL_118;
    case 19:
      [objc_msgSend(a1 ghostPacerProvider)];
      v49 = v140;
      swift_unknownObjectRelease();
      swift_getKeyPath();
      goto LABEL_118;
    case 21:
      [objc_msgSend(a1 segmentProvider)];
      v93 = v92;
      swift_unknownObjectRelease();
      swift_getKeyPath();
      swift_getKeyPath();
      v170 = v93;
      v94 = v2;
      static Published.subscript.setter();
      v95 = COERCE_DOUBLE([objc_msgSend(a1 segmentProvider)]);
      swift_unknownObjectRelease();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (*&v95 != *&v170)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v170 = v95;
        v96 = v94;
        static Published.subscript.setter();
      }

      v97 = *&v94[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutStatePublisher];
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (*&v95 == *&v170)
      {
        return;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v170 = v95;

      goto LABEL_120;
    case 22:
      [objc_msgSend(a1 segmentProvider)];
      v49 = v119;
      swift_unknownObjectRelease();
      swift_getKeyPath();
      goto LABEL_118;
    case 23:
      [objc_msgSend(a1 segmentProvider)];
      v49 = v82;
      swift_unknownObjectRelease();
      swift_getKeyPath();
      goto LABEL_118;
    case 24:
      [objc_msgSend(a1 segmentProvider)];
      v49 = v83;
      swift_unknownObjectRelease();
      swift_getKeyPath();
      goto LABEL_118;
    case 25:
      [objc_msgSend(a1 segmentProvider)];
      v49 = v50;
      swift_unknownObjectRelease();
      swift_getKeyPath();
      goto LABEL_118;
    case 26:
      v47 = [a1 strideLengthProvider];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore20StrideLengthProvider_pMd, &_s11WorkoutCore20StrideLengthProvider_pMR);
      if (swift_dynamicCast())
      {
        goto LABEL_97;
      }

      goto LABEL_21;
    case 27:
      v51 = [a1 strideLengthProvider];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore20StrideLengthProvider_pMd, &_s11WorkoutCore20StrideLengthProvider_pMR);
      if (swift_dynamicCast())
      {
        goto LABEL_92;
      }

LABEL_21:
      v177 = 0;
      v175 = 0u;
      v176 = 0u;
      v41 = &_s11WorkoutCore20StrideLengthProvider_pSgMd;
      v42 = &_s11WorkoutCore20StrideLengthProvider_pSgMR;
      goto LABEL_101;
    case 28:
      v155 = [a1 verticalOscillationProvider];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27VerticalOscillationProvider_pMd, &_s11WorkoutCore27VerticalOscillationProvider_pMR);
      if (swift_dynamicCast())
      {
        goto LABEL_97;
      }

      goto LABEL_100;
    case 29:
      v145 = [a1 verticalOscillationProvider];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27VerticalOscillationProvider_pMd, &_s11WorkoutCore27VerticalOscillationProvider_pMR);
      if (swift_dynamicCast())
      {
        goto LABEL_92;
      }

LABEL_100:
      v177 = 0;
      v175 = 0u;
      v176 = 0u;
      v41 = &_s11WorkoutCore27VerticalOscillationProvider_pSgMd;
      v42 = &_s11WorkoutCore27VerticalOscillationProvider_pSgMR;
      goto LABEL_101;
    case 30:
      v139 = [a1 groundContactTimeProvider];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore25GroundContactTimeProvider_pMd, &_s11WorkoutCore25GroundContactTimeProvider_pMR);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_93;
      }

LABEL_97:
      sub_20AEE2CE0(&v175, &v170);
      v156 = v173;
      v157 = v174;
      __swift_project_boxed_opaque_existential_1(&v170, v173);
      v149 = v2;
      v150 = (*(*&v157 + 8))(v156, COERCE_DOUBLE(*&v157));
      v152 = v158;
      swift_getKeyPath();
      goto LABEL_98;
    case 31:
      v146 = [a1 groundContactTimeProvider];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore25GroundContactTimeProvider_pMd, &_s11WorkoutCore25GroundContactTimeProvider_pMR);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_93:
        v177 = 0;
        v175 = 0u;
        v176 = 0u;
        v41 = &_s11WorkoutCore25GroundContactTimeProvider_pSgMd;
        v42 = &_s11WorkoutCore25GroundContactTimeProvider_pSgMR;
        goto LABEL_101;
      }

LABEL_92:
      sub_20AEE2CE0(&v175, &v170);
      v147 = v173;
      v148 = v174;
      __swift_project_boxed_opaque_existential_1(&v170, v173);
      v149 = v2;
      v150 = (*(*&v148 + 16))(v147, COERCE_DOUBLE(*&v148));
      v152 = v151;
      swift_getKeyPath();
LABEL_98:
      swift_getKeyPath();
      *&v175 = v150;
      BYTE8(v175) = v152 & 1;
      v159 = v149;
      goto LABEL_99;
    case 35:
      v153 = [a1 splitProvider];
      if (v153)
      {
        [v153 splitDistance];
        v49 = v154;
        swift_unknownObjectRelease();
      }

      else
      {
        v49 = 0.0;
      }

      goto LABEL_117;
    case 36:
      v112 = [a1 splitProvider];
      if (v112)
      {
        [v112 splitPace];
        v49 = v113;
        swift_unknownObjectRelease();
      }

      else
      {
        v49 = 0.0;
      }

      goto LABEL_117;
    case 37:
      [objc_msgSend(a1 heartRateProvider)];
      v98 = v174;
      swift_unknownObjectRelease();
      v102 = *&v2[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_heartRateMetricsPublisher];
      swift_getKeyPath();
      goto LABEL_55;
    case 38:
    case 39:
      v17 = [a1 heartRateZonesProvider];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore22HeartRateZonesProvider_pMd, &_s11WorkoutCore22HeartRateZonesProvider_pMR);
      if (swift_dynamicCast())
      {
        sub_20AEE2CE0(&v175, &v170);
        v18 = *&v2[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_heartRateMetricsPublisher];
        v19 = v173;
        v20 = v174;
        __swift_project_boxed_opaque_existential_1(&v170, v173);
        v21 = (*(*&v20 + 8))(v19, COERCE_DOUBLE(*&v20));
        swift_getKeyPath();
        goto LABEL_6;
      }

      v177 = 0;
      v175 = 0u;
      v176 = 0u;
      v41 = &_s11WorkoutCore22HeartRateZonesProvider_pSgMd;
      v42 = &_s11WorkoutCore22HeartRateZonesProvider_pSgMR;
      goto LABEL_101;
    case 40:
      [objc_msgSend(a1 heartRateProvider)];
      v98 = v172;
      swift_unknownObjectRelease();
      v99 = *&v2[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_heartRateMetricsPublisher];
      swift_getKeyPath();
LABEL_55:
      swift_getKeyPath();
      v170 = v98;
      LOBYTE(v171) = 0;
      goto LABEL_56;
    case 43:
    case 47:
      v22 = [a1 powerZonesProvider];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18PowerZonesProvider_pMd, &_s11WorkoutCore18PowerZonesProvider_pMR);
      if (swift_dynamicCast())
      {
        sub_20AEE2CE0(&v175, &v170);
        v23 = *&v2[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_powerMetricsPublisher];
        v24 = v173;
        v25 = v174;
        __swift_project_boxed_opaque_existential_1(&v170, v173);
        v21 = (*(*&v25 + 8))(v24, COERCE_DOUBLE(*&v25));
        swift_getKeyPath();
LABEL_6:
        swift_getKeyPath();
        *&v175 = v21;

LABEL_99:
        static Published.subscript.setter();
        __swift_destroy_boxed_opaque_existential_1(&v170);
      }

      else
      {
        v177 = 0;
        v175 = 0u;
        v176 = 0u;
        v41 = &_s11WorkoutCore18PowerZonesProvider_pSgMd;
        v42 = &_s11WorkoutCore18PowerZonesProvider_pSgMR;
LABEL_101:
        outlined destroy of GroundContactTimeProvider?(&v175, v41, v42);
      }

      return;
    case 44:
      [objc_msgSend(a1 segmentProvider)];
      v49 = v78;
      swift_unknownObjectRelease();
      swift_getKeyPath();
      goto LABEL_118;
    case 45:
      v137 = [a1 splitProvider];
      if (v137)
      {
        [v137 splitAveragePower];
        v49 = v138;
        swift_unknownObjectRelease();
      }

      else
      {
        v49 = 0.0;
      }

      goto LABEL_117;
    case 48:
      v160 = [a1 paceProvider];
      if (v160)
      {
        [v160 fastestPaceInMetersPerSecond];
        v49 = v161;
        swift_unknownObjectRelease();
      }

      else
      {
        v49 = 0.0;
      }

LABEL_117:
      swift_getKeyPath();
LABEL_118:
      swift_getKeyPath();
      v170 = v49;
      goto LABEL_119;
    case 49:
      v43 = *&v2[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_powerMetricsPublisher];
      v44 = [a1 powerProvider];
      if (v44)
      {
        [v44 thirtySecondAveragePower];
        v46 = v45;
        swift_unknownObjectRelease();
      }

      else
      {
        v46 = 0.0;
      }

LABEL_110:
      swift_getKeyPath();
      swift_getKeyPath();
      v170 = v46;
      LOBYTE(v171) = 0;
LABEL_56:

      goto LABEL_120;
    case 51:
    case 52:
      v26 = [a1 waterTemperatureProvider];
      if (!v26)
      {
        return;
      }

      v27 = v26;
      v28 = [v26 currentWaterTemperature];
      if (v28)
      {
        v29 = v28;
        v30 = *&v2[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_waterTemperatureMetricsPublisher];
        v31 = [objc_opt_self() degreeCelsiusUnit];
        [v29 doubleValueForUnit_];
        v33 = v32;

        swift_getKeyPath();
        swift_getKeyPath();
        v170 = v33;
        LOBYTE(v171) = 0;

        static Published.subscript.setter();
      }

      v34 = *&v2[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_waterTemperatureMetricsPublisher];
      v35 = [v27 currentWaterTemperatureStale];
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v170) = v35;

      static Published.subscript.setter();
      v36 = [v27 averageWaterTemperature];
      if (!v36)
      {
        goto LABEL_124;
      }

      v37 = v36;
      v38 = [objc_opt_self() degreeCelsiusUnit];
      [v37 doubleValueForUnit_];
      v40 = v39;

      swift_getKeyPath();
      swift_getKeyPath();
      v170 = v40;
      LOBYTE(v171) = 0;

      static Published.subscript.setter();
      swift_unknownObjectRelease();

      return;
    case 53:
      v141 = [a1 descentProvider];
      if (!v141)
      {
        return;
      }

      [v141 descent];
      v143 = v142;
      swift_getKeyPath();
      swift_getKeyPath();
      v170 = v143;
      LOBYTE(v171) = 0;
      v144 = v2;
      static Published.subscript.setter();
      goto LABEL_124;
    case 54:
      v134 = [a1 downhillRunCountProvider];
      if (!v134)
      {
        return;
      }

      v135 = COERCE_DOUBLE([v134 downhillRunCount]);
      swift_getKeyPath();
      swift_getKeyPath();
      v170 = v135;
      LOBYTE(v171) = 0;
      goto LABEL_80;
    default:
      while (1)
      {
LABEL_125:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
  }
}

uint64_t MetricsPublisher.dataProvider(_:didUpdate:)(uint64_t a1, unint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_locationPositionPublisher);
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = static Published.subscript.modify();
  specialized Array.append<A>(contentsOf:)(a2);
  v5(&v7, 0);
}

uint64_t MetricsPublisher.dataProvider(_:didUpdateRoutePosition:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_locationPositionPublisher);
  v4 = *(a2 + OBJC_IVAR___WORacePosition_racePosition);
  v5 = *(a2 + OBJC_IVAR___WORacePosition_racePosition + 8);
  v6 = *(a2 + OBJC_IVAR___WORacePosition_racePosition + 12);
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

Swift::Void __swiftcall MetricsPublisher.pacerDistanceGoalComplete(in:)(Swift::Double in)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.setter();
}

void @objc MetricsPublisher.dataProvider(_:didReceive:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t))
{
  swift_unknownObjectRetain();
  v9 = a4;
  v10 = a1;
  a5(a3);
  swift_unknownObjectRelease();
}

uint64_t MetricsPublisher.dataProvider(_:didUpdateIsGPSAvailable:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutStatePublisher);
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t MetricsPublisher.activityHeartRateDidBecomeStale(_:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_heartRateMetricsPublisher);
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void MetricsPublisher.dataProvider(_:didChangeActivityTypeTo:)(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = [a1 splitProvider];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 splitIndex];
    swift_getKeyPath();
    swift_getKeyPath();
    v23 = v14;
    v15 = v2;
    static Published.subscript.setter();
    v16 = [v13 splitStartDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = type metadata accessor for Date();
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    swift_getKeyPath();
    swift_getKeyPath();
    outlined init with copy of Date?(v11, v9);
    v18 = v15;
    static Published.subscript.setter();
    swift_unknownObjectRelease();
    outlined destroy of GroundContactTimeProvider?(v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  v19 = *&v2[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutStatePublisher];
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = a2;
  v20 = a2;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v21 = v23;
  [v23 identifier];
}

unint64_t lazy protocol witness table accessor for type MetricsPublisher and conformance MetricsPublisher()
{
  result = lazy protocol witness table cache variable for type MetricsPublisher and conformance MetricsPublisher;
  if (!lazy protocol witness table cache variable for type MetricsPublisher and conformance MetricsPublisher)
  {
    type metadata accessor for MetricsPublisher();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricsPublisher and conformance MetricsPublisher);
  }

  return result;
}

uint64_t outlined destroy of GroundContactTimeProvider?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t specialized MetricsPublisher.dataProvider(_:didReceive:)(void *a1)
{
  v2 = [objc_msgSend(a1 segmentProvider)];
  swift_unknownObjectRelease();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v2 != v6)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = v2;
    v3 = v1;
    static Published.subscript.setter();
  }

  v4 = *&v1[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutStatePublisher];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v2 != v6)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  return result;
}

id specialized MetricsPublisher.dataProvider(_:splitComplete:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - v8;
  result = [a1 splitProvider];
  if (result)
  {
    v11 = result;
    v12 = [result splitIndex];
    swift_getKeyPath();
    swift_getKeyPath();
    v17[1] = v12;
    v13 = v1;
    static Published.subscript.setter();
    v14 = [v11 splitStartDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = type metadata accessor for Date();
    (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
    swift_getKeyPath();
    swift_getKeyPath();
    outlined init with copy of Date?(v9, v7);
    v16 = v13;
    static Published.subscript.setter();
    swift_unknownObjectRelease();
    return outlined destroy of GroundContactTimeProvider?(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  return result;
}

unint64_t type metadata accessor for CLLocation()
{
  result = lazy cache variable for type metadata for CLLocation;
  if (!lazy cache variable for type metadata for CLLocation)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CLLocation);
  }

  return result;
}

uint64_t MirroredStartHelper.__allocating_init()()
{
  v0 = swift_allocObject();
  MirroredStartHelper.init()();
  return v0;
}

uint64_t MirroredStartHelper.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - v5;
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v7 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
  }

  *(v0 + 16) = v7;
  *(v0 + 24) = 0;
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static WOLog.dataLink);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_20AEA4000, v9, v10, "MirroredStartHelper: start observing device changes for prewarmWorkoutWatchApp", v11, 2u);
    MEMORY[0x20F2E9420](v11, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type Published<[WorkoutDevice]>.Publisher and conformance Published<A>.Publisher();
  Publisher<>.sink(receiveValue:)();

  (*(v3 + 8))(v6, v2);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v1;
}

uint64_t closure #1 in MirroredStartHelper.init()(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27 - v4;
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = *(v6 + 16) + 1;
    v10 = 64;
    do
    {
      if (!--v9)
      {
        break;
      }

      v11 = *(v6 + v10);
      v10 += 80;
    }

    while (v11);
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static WOLog.dataLink);
    swift_retain_n();

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v28 = v5;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29 = v16;
      *v15 = 136315650;
      v17 = MEMORY[0x20F2E6F70](v6, &type metadata for WorkoutDevice);
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v29);

      *(v15 + 4) = v19;
      *(v15 + 12) = 1024;
      *(v15 + 14) = v9 != 0;
      *(v15 + 18) = 1024;
      v20 = *(v8 + 24);

      *(v15 + 20) = v20;
      v5 = v28;

      _os_log_impl(&dword_20AEA4000, v13, v14, "MirroredStartHelper: observed device change devices=%s, watchAvailable (%{BOOL}d, previous state: %{BOOL}d)", v15, 0x18u);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x20F2E9420](v16, -1, -1);
      MEMORY[0x20F2E9420](v15, -1, -1);

      if (!v9)
      {
        goto LABEL_15;
      }
    }

    else
    {

      if (!v9)
      {
LABEL_15:
        *(v8 + 24) = v9 != 0;
      }
    }

    if ((*(v8 + 24) & 1) == 0)
    {
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_20AEA4000, v21, v22, "MirroredStartHelper: observed device watch become available to start workout, submit prewarmWorkoutWatchApp task", v23, 2u);
        MEMORY[0x20F2E9420](v23, -1, -1);
      }

      v24 = type metadata accessor for TaskPriority();
      (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
      v25 = swift_allocObject();
      swift_weakInit();
      v26 = swift_allocObject();
      v26[2] = 0;
      v26[3] = 0;
      v26[4] = v25;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #2 in closure #1 in MirroredStartHelper.init(), v26);
    }

    goto LABEL_15;
  }

  return result;
}

uint64_t closure #2 in closure #1 in MirroredStartHelper.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](closure #2 in closure #1 in MirroredStartHelper.init(), 0, 0);
}

uint64_t closure #2 in closure #1 in MirroredStartHelper.init()()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = closure #2 in closure #1 in MirroredStartHelper.init();

    return specialized MirroredStartHelper.prewarmWorkoutWatchApp()();
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](closure #2 in closure #1 in MirroredStartHelper.init(), 0, 0);
}

{
  **(v0 + 40) = *(v0 + 56) == 0;
  return (*(v0 + 8))();
}

uint64_t MirroredStartHelper.prewarmWorkoutWatchApp()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = MirroredStartHelper.prewarmWorkoutWatchApp();

  return specialized MirroredStartHelper.prewarmWorkoutWatchApp()();
}

{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void closure #1 in MirroredStartHelper.prewarmWorkoutWatchApp()(char a1, void *a2, double a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = mach_absolute_time();
  info = 0;
  mach_timebase_info(&info);
  numer = info.numer;
  if (is_mul_ok(v7, info.numer))
  {
    denom = info.denom;
    if (info.denom)
    {
      if (one-time initialization token for dataLink == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_9:
  swift_once();
LABEL_4:
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static WOLog.dataLink);
  v10 = a2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = (v7 * numer / denom) / 1000000000.0 - a3;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    info = v15;
    *v14 = 134218498;
    *(v14 + 4) = v13;
    *(v14 + 12) = 1024;
    *(v14 + 14) = a1 & 1;
    *(v14 + 18) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
    v16 = Optional.description.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &info);

    *(v14 + 20) = v18;
    _os_log_impl(&dword_20AEA4000, v11, v12, "MirroredStartHelper: prewarmWorkoutWatchApp completion with roundtripTime: %f (success: %{BOOL}d, error: %s)", v14, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x20F2E9420](v15, -1, -1);
    MEMORY[0x20F2E9420](v14, -1, -1);
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t MirroredStartHelper.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t MirroredStartHelper.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t specialized MirroredStartHelper.prewarmWorkoutWatchApp()()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](specialized MirroredStartHelper.prewarmWorkoutWatchApp(), 0, 0);
}

{
  v30 = *MEMORY[0x277D85DE8];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v29 = static WorkoutDevicesProvider.shared;
  v1 = static WorkoutDevicesProvider.shared;
  v2 = WorkoutReadinessChecker.supportsPairedWatchFeatures()();

  if (v2)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (one-time initialization token for healthStore != -1)
    {
      swift_once();
    }

    v3 = (v0 + 16);
    v4 = static WorkoutCoreInjector.healthStore;
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static WOLog.dataLink);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20AEA4000, v6, v7, "MirroredStartHelper: prewarmWorkoutWatchApp", v8, 2u);
      MEMORY[0x20F2E9420](v8, -1, -1);
    }

    v9 = mach_absolute_time();
    *v3 = 0;
    mach_timebase_info((v0 + 16));
    v10 = *v3;
    if (is_mul_ok(v9, v10))
    {
      v11 = *(v0 + 20);
      if (!v11)
      {
        __break(1u);
      }

      v28 = v4;
      v12 = type metadata accessor for JSONEncoder();
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      swift_allocObject();
      JSONEncoder.init()();
      *(v0 + 16) = 1;
      *(v0 + 24) = xmmword_20B42FB30;
      *(v0 + 40) = 19;
      lazy protocol witness table accessor for type MirroredStart and conformance MirroredStart();
      v15 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v17 = v16;

      v21.super.isa = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data._Representation(v15, v17);
      v22 = swift_allocObject();
      *(v22 + 16) = (v9 * v10 / v11) / 1000000000.0;
      *(v0 + 48) = partial apply for closure #1 in MirroredStartHelper.prewarmWorkoutWatchApp();
      *(v0 + 56) = v22;
      *(v0 + 16) = MEMORY[0x277D85DD0];
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      *(v0 + 40) = &block_descriptor_92;
      v23 = _Block_copy((v0 + 16));
      v24 = *(v0 + 56);

      [v28 _startWatchAppWithMirroredStartData_completion_];
      outlined consume of Data._Representation(0, 0xC000000000000000);
      _Block_release(v23);
      goto LABEL_18;
    }

    __break(1u);
  }

  else if (one-time initialization token for dataLink == -1)
  {
    goto LABEL_16;
  }

  swift_once();
LABEL_16:
  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static WOLog.dataLink);
  v21.super.isa = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21.super.isa, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_20AEA4000, v21.super.isa, v19, "MirroredStartHelper: prewarmWorkoutWatchApp skipped because watch is not available to start workout", v20, 2u);
    MEMORY[0x20F2E9420](v20, -1, -1);
  }

LABEL_18:

  v25 = *(v0 + 8);
  v26 = *MEMORY[0x277D85DE8];

  return v25();
}

uint64_t dispatch thunk of MirroredStartHelper.prewarmWorkoutWatchApp()()
{
  v2 = *(*v0 + 152);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of MirroredStartHelper.prewarmWorkoutWatchApp();

  return v6();
}

{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t partial apply for closure #2 in closure #1 in MirroredStartHelper.init()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #2 in closure #1 in MirroredStartHelper.init();

  return closure #2 in closure #1 in MirroredStartHelper.init()(a1, v4, v5, v6);
}

uint64_t FIUIWorkoutActivityType.protobuf.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v112 = &v103 - v6;
  v111 = type metadata accessor for Date();
  v7 = *(v111 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v111);
  v109 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v10 = *(*(v115 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v115);
  v114 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v113 = &v103 - v13;
  v122 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue(0);
  v14 = *(v122 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v122);
  v125 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = (&v103 - v18);
  v20 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v25 = &v24[*(v21 + 44)];
  UnknownStorage.init()();
  v26 = [v2 identifier];
  if (v26 >> 31)
  {
    goto LABEL_50;
  }

  *v24 = v26;
  v27 = [v2 auxiliaryTypeIdentifier];
  if (!(v27 >> 31))
  {
    v105 = a1;
    *(v24 + 1) = v27;
    v24[8] = [v2 isIndoor];
    v28 = [v2 isPartOfMultiSport];
    v104 = v24;
    v24[9] = v28;
    v29 = [v2 metadata];
    v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = 0;
    v34 = v30 + 64;
    v33 = *(v30 + 64);
    v118 = v30;
    v35 = 1 << *(v30 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & v33;
    v38 = (v35 + 63) >> 6;
    v110 = (v7 + 56);
    v108 = (v7 + 32);
    v107 = (v7 + 8);
    v39 = MEMORY[0x277D84F98];
    *&v31 = 136315138;
    v103 = v31;
    v123 = v19;
    v120 = v38;
    v117 = v14;
    v121 = v30 + 64;
    while (1)
    {
      if (!v37)
      {
        if (v38 <= v32 + 1)
        {
          v42 = v32 + 1;
        }

        else
        {
          v42 = v38;
        }

        v43 = v42 - 1;
        while (1)
        {
          v41 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          if (v41 >= v38)
          {
            v37 = 0;
            v130 = 0u;
            v131 = 0u;
            v32 = v43;
            v129 = 0u;
            goto LABEL_19;
          }

          v37 = *(v34 + 8 * v41);
          ++v32;
          if (v37)
          {
            v32 = v41;
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v41 = v32;
LABEL_18:
      v44 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v45 = v44 | (v41 << 6);
      v46 = (*(v118 + 48) + 16 * v45);
      v47 = *v46;
      v48 = v46[1];
      outlined init with copy of Any(*(v118 + 56) + 32 * v45, &v128);
      *&v129 = v47;
      *(&v129 + 1) = v48;
      outlined init with take of Any(&v128, &v130);

LABEL_19:
      v132 = v129;
      v133[0] = v130;
      v133[1] = v131;
      v49 = *(&v129 + 1);
      if (!*(&v129 + 1))
      {

        v101 = v104;
        *(v104 + 2) = v39;
        outlined init with copy of Apple_Workout_Core_ActivityMetadataValue(v101, v105, type metadata accessor for Apple_Workout_Core_Activity);
        return _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWOhTm_0(v101, type metadata accessor for Apple_Workout_Core_Activity);
      }

      v124 = v132;
      outlined init with take of Any(v133, &v129);
      v50 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
      v51 = *(v50 - 8);
      v52 = *(v51 + 56);
      v53 = v51 + 56;
      v52(v19, 1, 1, v50);
      v54 = v19 + *(v122 + 20);
      UnknownStorage.init()();
      outlined init with copy of Any(&v129, &v128);
      if (swift_dynamicCast())
      {
        v55 = v126[0];
        v119 = v39;
        v56 = v52;
        v57 = v126[1];
        _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgWOhTm_0(v19, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
        *v19 = v55;
        v19[1] = v57;
        swift_storeEnumTagMultiPayload();
        v56(v19, 0, 1, v50);
        v39 = v119;
        goto LABEL_31;
      }

      v119 = v52;
      outlined init with copy of Any(&v129, &v128);
      type metadata accessor for HKQuantity();
      if (swift_dynamicCast())
      {
        break;
      }

      outlined init with copy of Any(&v129, &v128);
      if (swift_dynamicCast())
      {
        v70 = v126[0];
        _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgWOhTm_0(v19, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
        *v19 = v70;
        goto LABEL_29;
      }

      outlined init with copy of Any(&v129, &v128);
      v71 = v112;
      v72 = v111;
      v73 = swift_dynamicCast();
      v74 = *v110;
      if (v73)
      {
        v74(v71, 0, 1, v72);
        v75 = v109;
        (*v108)(v109, v71, v72);
        Date.timeIntervalSinceReferenceDate.getter();
        v77 = v76;
        (*v107)(v75, v72);
        _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgWOhTm_0(v19, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
        *v19 = v77;
LABEL_29:
        swift_storeEnumTagMultiPayload();
        (v119)(v19, 0, 1, v50);
LABEL_30:
        v14 = v117;
        goto LABEL_31;
      }

      v74(v71, 1, 1, v72);
      _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgWOhTm_0(v71, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      v91 = type metadata accessor for Logger();
      __swift_project_value_buffer(v91, static WOLog.core);
      outlined init with copy of Any(&v129, &v128);
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v127 = v95;
        *v94 = v103;
        outlined init with copy of Any(&v128, v126);
        v96 = String.init<A>(describing:)();
        v98 = v97;
        __swift_destroy_boxed_opaque_existential_0(&v128);
        v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v98, &v127);

        *(v94 + 4) = v99;
        _os_log_impl(&dword_20AEA4000, v92, v93, "Unhandled metadata value %s", v94, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v95);
        MEMORY[0x20F2E9420](v95, -1, -1);
        MEMORY[0x20F2E9420](v94, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(&v128);
      }

      v14 = v117;
      v19 = v123;
LABEL_31:
      v78 = v124;
      outlined init with copy of Apple_Workout_Core_ActivityMetadataValue(v19, v125, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v128 = v39;
      v80 = specialized __RawDictionaryStorage.find<A>(_:)(v78, v49);
      v82 = v39[2];
      v83 = (v81 & 1) == 0;
      v84 = __OFADD__(v82, v83);
      v85 = v82 + v83;
      if (v84)
      {
        goto LABEL_48;
      }

      v86 = v81;
      if (v39[3] >= v85)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v100 = v80;
          specialized _NativeDictionary.copy()();
          v80 = v100;
          v78 = v124;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v85, isUniquelyReferenced_nonNull_native);
        v80 = specialized __RawDictionaryStorage.find<A>(_:)(v78, v49);
        if ((v86 & 1) != (v87 & 1))
        {
          goto LABEL_52;
        }
      }

      v34 = v121;
      if (v86)
      {
        v40 = v80;

        v39 = v128;
        outlined assign with take of Apple_Workout_Core_ActivityMetadataValue(v125, *(v128 + 56) + *(v14 + 72) * v40);
        __swift_destroy_boxed_opaque_existential_0(&v129);
      }

      else
      {
        v39 = v128;
        *(v128 + 8 * (v80 >> 6) + 64) |= 1 << v80;
        v88 = (v39[6] + 16 * v80);
        *v88 = v78;
        v88[1] = v49;
        _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWObTm_0(v125, v39[7] + *(v14 + 72) * v80, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);
        __swift_destroy_boxed_opaque_existential_0(&v129);
        v89 = v39[2];
        v84 = __OFADD__(v89, 1);
        v90 = v89 + 1;
        if (v84)
        {
          goto LABEL_49;
        }

        v39[2] = v90;
      }

      v19 = v123;
      _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWOhTm_0(v123, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);
      v38 = v120;
    }

    v58 = v126[0];
    v59 = *(v115 + 24);
    v116 = v53;
    v60 = v113;
    UnknownStorage.init()();
    v61 = [v58 _unit];
    v62 = [v61 unitString];

    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    v60[1] = v63;
    v60[2] = v65;
    v19 = v123;
    v66 = [v58 _unit];
    [v58 doubleValueForUnit_];
    v68 = v67;

    *v60 = v68;
    v69 = v114;
    outlined init with copy of Apple_Workout_Core_ActivityMetadataValue(v60, v114, type metadata accessor for Apple_Workout_Core_HKQuantity);
    _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgWOhTm_0(v19, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWObTm_0(v69, v19, type metadata accessor for Apple_Workout_Core_HKQuantity);
    swift_storeEnumTagMultiPayload();
    (v119)(v19, 0, 1, v50);
    _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWOhTm_0(v60, type metadata accessor for Apple_Workout_Core_HKQuantity);
    goto LABEL_30;
  }

LABEL_51:
  __break(1u);
LABEL_52:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t Apple_Workout_Core_Activity.decoded.getter()
{
  v1 = type metadata accessor for Apple_Workout_Core_HKQuantity();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v115 = (&v112 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v112 - v6;
  v129 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  v8 = *(v129 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v129);
  v120 = (&v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v119 = &v112 - v12;
  v13 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue(0);
  v126 = *(v13 - 8);
  v14 = *(v126 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v125 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueV5valuetSgMd, &_sSS3key_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueV5valuetSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = (&v112 - v21);
  v23 = *v0;
  if ((v23 & 0x80000000) != 0)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if ((v0[1] & 0x80000000) != 0)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v116 = v0[1];
  v117 = v23;
  v121 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v118 = v0;
  v24 = *(v0 + 2);
  v27 = *(v24 + 64);
  v26 = v24 + 64;
  v25 = v27;
  v28 = 1 << *(*(v0 + 2) + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v25;
  v31 = (v28 + 63) >> 6;
  v127 = *(v0 + 2);
  v128 = (v8 + 48);

  v32 = 0;
  v123 = v20;
  v124 = v7;
  v122 = v22;
  while (1)
  {
    v33 = v32;
    if (!v30)
    {
LABEL_8:
      if (v31 <= v33 + 1)
      {
        v35 = v33 + 1;
      }

      else
      {
        v35 = v31;
      }

      v32 = v35 - 1;
      while (1)
      {
        v34 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v34 >= v31)
        {
          v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueV5valuetMd, &_sSS3key_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueV5valuetMR);
          (*(*(v48 - 8) + 56))(v20, 1, 1, v48);
          v30 = 0;
          goto LABEL_16;
        }

        v30 = *(v26 + 8 * v34);
        ++v33;
        if (v30)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_73;
    }

    while (1)
    {
      v34 = v33;
LABEL_15:
      v36 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v37 = v36 | (v34 << 6);
      v38 = (*(v127 + 48) + 16 * v37);
      v40 = *v38;
      v39 = v38[1];
      v41 = v125;
      outlined init with copy of Apple_Workout_Core_ActivityMetadataValue(*(v127 + 56) + *(v126 + 72) * v37, v125, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueV5valuetMd, &_sSS3key_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueV5valuetMR);
      v43 = *(v42 + 48);
      v20 = v123;
      *v123 = v40;
      *(v20 + 1) = v39;
      _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWObTm_0(v41, &v20[v43], type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);
      (*(*(v42 - 8) + 56))(v20, 0, 1, v42);

      v32 = v34;
      v7 = v124;
      v22 = v122;
LABEL_16:
      outlined init with take of (key: String, value: Apple_Workout_Core_ActivityMetadataValue)?(v20, v22);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueV5valuetMd, &_sSS3key_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueV5valuetMR);
      if ((*(*(v44 - 8) + 48))(v22, 1, v44) == 1)
      {

        v106 = *(v118 + 8);
        v107 = *(v118 + 9);
        v108 = objc_allocWithZone(MEMORY[0x277D0A810]);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v110 = [v108 initWithActivityTypeIdentifier:v117 isIndoor:v106 isPartOfMultiSport:v107 metadata:isa auxiliaryTypeIdentifier:v116];

        return v110;
      }

      v45 = *v22;
      v46 = v22[1];
      v47 = *(v44 + 48);
      outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v22 + v47, v7);
      _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWOhTm_0(v22 + v47, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);
      if ((*v128)(v7, 1, v129) != 1)
      {
        break;
      }

      _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
      v33 = v32;
      if (!v30)
      {
        goto LABEL_8;
      }
    }

    v49 = v119;
    _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWObTm_0(v7, v119, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
    outlined init with copy of Apple_Workout_Core_ActivityMetadataValue(v49, v120, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      break;
    }

    if (EnumCaseMultiPayload)
    {
      v69 = v115;
      _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWObTm_0(v120, v115, type metadata accessor for Apple_Workout_Core_HKQuantity);
      v114 = MEMORY[0x20F2E6C00](*(v69 + 1), *(v69 + 2));
      v113 = [objc_opt_self() unitFromString_];

      v70 = *v69;
      v71 = objc_opt_self();
      v72 = v113;
      v114 = [v71 quantityWithUnit:v113 doubleValue:v70];

      v133 = type metadata accessor for HKQuantity();
      *&v132 = v114;
      outlined init with take of Any(&v132, v131);
      v73 = v121;
      LODWORD(v114) = swift_isUniquelyReferenced_nonNull_native();
      v130 = v73;
      v75 = specialized __RawDictionaryStorage.find<A>(_:)(v45, v46);
      v76 = *(v73 + 16);
      v77 = (v74 & 1) == 0;
      v78 = v76 + v77;
      if (__OFADD__(v76, v77))
      {
        goto LABEL_77;
      }

      if (*(v73 + 24) < v78)
      {
        LODWORD(v121) = v74;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v78, v114);
        v79 = specialized __RawDictionaryStorage.find<A>(_:)(v45, v46);
        if ((v121 & 1) != (v80 & 1))
        {
          goto LABEL_83;
        }

        v75 = v79;
        if ((v121 & 1) == 0)
        {
          goto LABEL_65;
        }

LABEL_56:
        v96 = v75;

        v121 = v130;
        v97 = (v130[7] + 32 * v96);
        __swift_destroy_boxed_opaque_existential_0(v97);
        outlined init with take of Any(v131, v97);
        _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWOhTm_0(v119, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
        goto LABEL_67;
      }

      if (v114)
      {
        if (v74)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v114 = v75;
        LODWORD(v121) = v74;
        specialized _NativeDictionary.copy()();
        v75 = v114;
        if (v121)
        {
          goto LABEL_56;
        }
      }

LABEL_65:
      v100 = v130;
      v130[(v75 >> 6) + 8] |= 1 << v75;
      v101 = (v100[6] + 16 * v75);
      *v101 = v45;
      v101[1] = v46;
      outlined init with take of Any(v131, (v100[7] + 32 * v75));
      _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWOhTm_0(v119, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
      v102 = v100[2];
      v92 = __OFADD__(v102, 1);
      v103 = v102 + 1;
      if (v92)
      {
        goto LABEL_82;
      }

      v121 = v100;
      v100[2] = v103;
LABEL_67:
      _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWOhTm_0(v115, type metadata accessor for Apple_Workout_Core_HKQuantity);
      continue;
    }

    v51 = *v120;
    v52 = v120[1];
    v133 = MEMORY[0x277D837D0];
    *&v132 = v51;
    *(&v132 + 1) = v52;
    outlined init with take of Any(&v132, v131);
    v53 = v121;
    LODWORD(v114) = swift_isUniquelyReferenced_nonNull_native();
    v130 = v53;
    v55 = specialized __RawDictionaryStorage.find<A>(_:)(v45, v46);
    v56 = *(v53 + 16);
    v57 = (v54 & 1) == 0;
    v58 = v56 + v57;
    if (__OFADD__(v56, v57))
    {
      goto LABEL_78;
    }

    if (*(v53 + 24) >= v58)
    {
      if (v114)
      {
        if ((v54 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v114 = v55;
        LODWORD(v121) = v54;
        specialized _NativeDictionary.copy()();
        v55 = v114;
        if ((v121 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

LABEL_59:
      v98 = v55;

      v121 = v130;
      v99 = (v130[7] + 32 * v98);
      __swift_destroy_boxed_opaque_existential_0(v99);
      outlined init with take of Any(v131, v99);
      _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWOhTm_0(v119, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
      continue;
    }

    LODWORD(v121) = v54;
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v58, v114);
    v59 = specialized __RawDictionaryStorage.find<A>(_:)(v45, v46);
    if ((v121 & 1) != (v60 & 1))
    {
      goto LABEL_83;
    }

    v55 = v59;
    if (v121)
    {
      goto LABEL_59;
    }

LABEL_46:
    v89 = v130;
    v130[(v55 >> 6) + 8] |= 1 << v55;
    v90 = (v89[6] + 16 * v55);
    *v90 = v45;
    v90[1] = v46;
    outlined init with take of Any(v131, (v89[7] + 32 * v55));
    _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWOhTm_0(v119, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
    v91 = v89[2];
    v92 = __OFADD__(v91, 1);
    v93 = v91 + 1;
    if (v92)
    {
      goto LABEL_80;
    }

LABEL_70:
    v121 = v89;
    v89[2] = v93;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v61 = *v120;
    v133 = MEMORY[0x277D839F8];
    *&v132 = v61;
    outlined init with take of Any(&v132, v131);
    v62 = v121;
    LODWORD(v114) = swift_isUniquelyReferenced_nonNull_native();
    v130 = v62;
    v55 = specialized __RawDictionaryStorage.find<A>(_:)(v45, v46);
    v64 = *(v62 + 16);
    v65 = (v63 & 1) == 0;
    v66 = v64 + v65;
    if (__OFADD__(v64, v65))
    {
      goto LABEL_76;
    }

    if (*(v62 + 24) >= v66)
    {
      if (v114)
      {
        if (v63)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v114 = v55;
        LODWORD(v121) = v63;
        specialized _NativeDictionary.copy()();
        v55 = v114;
        if (v121)
        {
          goto LABEL_59;
        }
      }
    }

    else
    {
      LODWORD(v121) = v63;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v66, v114);
      v67 = specialized __RawDictionaryStorage.find<A>(_:)(v45, v46);
      if ((v121 & 1) != (v68 & 1))
      {
        goto LABEL_83;
      }

      v55 = v67;
      if (v121)
      {
        goto LABEL_59;
      }
    }

    v89 = v130;
    v130[(v55 >> 6) + 8] |= 1 << v55;
    v94 = (v89[6] + 16 * v55);
    *v94 = v45;
    v94[1] = v46;
    outlined init with take of Any(v131, (v89[7] + 32 * v55));
    _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWOhTm_0(v119, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
    v95 = v89[2];
    v92 = __OFADD__(v95, 1);
    v93 = v95 + 1;
    if (v92)
    {
      goto LABEL_79;
    }

    goto LABEL_70;
  }

  v81 = *v120;
  v133 = type metadata accessor for Date();
  __swift_allocate_boxed_opaque_existential_0(&v132);
  Date.init(timeIntervalSinceReferenceDate:)();
  outlined init with take of Any(&v132, v131);
  v82 = v121;
  LODWORD(v114) = swift_isUniquelyReferenced_nonNull_native();
  v130 = v82;
  v55 = specialized __RawDictionaryStorage.find<A>(_:)(v45, v46);
  v84 = *(v82 + 16);
  v85 = (v83 & 1) == 0;
  v86 = v84 + v85;
  if (__OFADD__(v84, v85))
  {
    goto LABEL_75;
  }

  if (*(v82 + 24) >= v86)
  {
    if (v114)
    {
      if (v83)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v114 = v55;
      LODWORD(v121) = v83;
      specialized _NativeDictionary.copy()();
      v55 = v114;
      if (v121)
      {
        goto LABEL_59;
      }
    }
  }

  else
  {
    LODWORD(v121) = v83;
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v86, v114);
    v87 = specialized __RawDictionaryStorage.find<A>(_:)(v45, v46);
    if ((v121 & 1) != (v88 & 1))
    {
      goto LABEL_83;
    }

    v55 = v87;
    if (v121)
    {
      goto LABEL_59;
    }
  }

  v89 = v130;
  v130[(v55 >> 6) + 8] |= 1 << v55;
  v104 = (v89[6] + 16 * v55);
  *v104 = v45;
  v104[1] = v46;
  outlined init with take of Any(v131, (v89[7] + 32 * v55));
  _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWOhTm_0(v119, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
  v105 = v89[2];
  v92 = __OFADD__(v105, 1);
  v93 = v105 + 1;
  if (!v92)
  {
    goto LABEL_70;
  }

LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v36 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 8 * v22);
      v25 = *(v23 + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v26 = *(v23 + 8 * v22);
      }

      if (v24 == 0.0)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = v24;
      }

      result = MEMORY[0x20F2E7FD0](*(v10 + 40), *&v27);
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v24;
      *(*(v10 + 56) + 8 * v18) = v25;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v7 + 32);
      if (v35 >= 64)
      {
        bzero((v7 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v12 = -1 << v35;
      }

      *(v7 + 16) = 0;
    }

    v5 = v36;
  }

  else
  {
  }

  *v5 = v10;
  return result;
}

{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v34 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((v35 & 1) == 0)
      {
      }

      v25 = *(v10 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x20F2E7FF0](v23);
      result = Hasher._finalize()();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v5 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v7 + 32);
    v5 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t))
{
  v6 = v5;
  v8 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v9 = *(*v5 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v34 = v6;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = v20 | (v12 << 6);
      v37 = *(*(v8 + 48) + 16 * v23);
      v24 = *(*(v8 + 56) + 8 * v23);
      if ((v36 & 1) == 0)
      {
        result = v24;
      }

      v25 = *(v11 + 40);
      a5(result);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v11 + 48) + 16 * v19) = v37;
      *(*(v11 + 56) + 8 * v19) = v24;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v6 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v8 + 32);
    v6 = v34;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_35:
  *v6 = v11;
  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, MEMORY[0x277CC9578]);
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for Station.Mood();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for Date();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, MEMORY[0x277D2B280]);
}

{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, MEMORY[0x277CC95F0]);
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a2;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Date();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for Station.Mood();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v34 = type metadata accessor for Date();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DateV11WorkoutCore0E10DataBucketCGMd, &_ss18_DictionaryStorageCy10Foundation4DateV11WorkoutCore0E10DataBucketCGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  v36 = type metadata accessor for Date();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DateVGMd, &_ss18_DictionaryStorageCySS10Foundation4DateVGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  v43 = type metadata accessor for Date();
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Station.Mood();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy8MusicKit7StationV0cD8InternalE4MoodO10Foundation4DateVGMd, &_ss18_DictionaryStorageCy8MusicKit7StationV0cD8InternalE4MoodO10Foundation4DateVGMR);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

{
  v1 = v0;
  v36 = type metadata accessor for Station.Mood();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy8MusicKit7StationV0cD8InternalE4MoodOSSGMd, &_ss18_DictionaryStorageCy8MusicKit7StationV0cD8InternalE4MoodOSSGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    v34 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v38;
        v21 = *(v38 + 72) * v19;
        v22 = v35;
        v23 = v36;
        (*(v38 + 16))(v35, *(v4 + 48) + v21, v36);
        v24 = 16 * v19;
        v25 = (*(v4 + 56) + 16 * v19);
        v26 = *v25;
        v27 = v25[1];
        v28 = v37;
        (*(v20 + 32))(*(v37 + 48) + v21, v22, v23);
        v29 = (*(v28 + 56) + v24);
        *v29 = v26;
        v29[1] = v27;
        v4 = v34;

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v31 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  v34 = type metadata accessor for Station.Mood();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy8MusicKit7StationV0cD8InternalE4MoodOScTySSSgs5NeverOGGMd, &_ss18_DictionaryStorageCy8MusicKit7StationV0cD8InternalE4MoodOScTySSSgs5NeverOGGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id specialized _NativeDictionary.copy()()
{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy11WorkoutCore0C23VoiceMuteAnalyticsEventV0G3Key33_4127D63F4DC680E88BE216D6EBFE3D5FLLOSo8NSObjectCGMd, &_ss18_DictionaryStorageCy11WorkoutCore0C23VoiceMuteAnalyticsEventV0G3Key33_4127D63F4DC680E88BE216D6EBFE3D5FLLOSo8NSObjectCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy11WorkoutCore0C25VoiceMomentAnalyticsEventV0G3Key33_8527EA2E8BFC8B0F8968C39360BA77E2LLOSo8NSObjectCGMd, &_ss18_DictionaryStorageCy11WorkoutCore0C25VoiceMomentAnalyticsEventV0G3Key33_8527EA2E8BFC8B0F8968C39360BA77E2LLOSo8NSObjectCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSo8NSNumberCGMd, &_ss18_DictionaryStorageCySSSo8NSNumberCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDV11WorkoutCore0E13ConfigurationCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV11WorkoutCore0E13ConfigurationCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy11WorkoutCore28DataLinkMirroredHostExpectedOSo7NSTimerCGMd, &_ss18_DictionaryStorageCy11WorkoutCore28DataLinkMirroredHostExpectedOSo7NSTimerCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS11WorkoutCore26CompoundActivityPickerItemCGMd, &_ss18_DictionaryStorageCySS11WorkoutCore26CompoundActivityPickerItemCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDVSo28NLSessionBackgroundAssertionCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo28NLSessionBackgroundAssertionCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy11WorkoutCore30DataLinkMirroredClientExpectedOSo7NSTimerCGMd, &_ss18_DictionaryStorageCy11WorkoutCore30DataLinkMirroredClientExpectedOSo7NSTimerCGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8NSNumberC11WorkoutCore0D9AlertZoneCGMd, &_ss18_DictionaryStorageCySo8NSNumberC11WorkoutCore0D9AlertZoneCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDVSo32HKDatabaseAccessibilityAssertionCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo32HKDatabaseAccessibilityAssertionCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS11WorkoutCore30MediaPlaybackConfigurationItemCGMd, &_ss18_DictionaryStorageCySS11WorkoutCore30MediaPlaybackConfigurationItemCGMR);
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSdGMd, &_ss18_DictionaryStorageCySiSdGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVGMd, &_ss18_DictionaryStorageCySS11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        outlined init with copy of Apple_Workout_Core_ActivityMetadataValue(*(v5 + 56) + v27, v31, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWObTm_0(v26, *(v28 + 56) + v27, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys5Int32VSdGMd, &_ss18_DictionaryStorageCys5Int32VSdGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS7Combine14AnyCancellableCGMd, &_ss18_DictionaryStorageCySS7Combine14AnyCancellableCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11WorkoutCore15KnownPublishersOs6UInt32VGMd, &_ss18_DictionaryStorageCy11WorkoutCore15KnownPublishersOs6UInt32VGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd, &_ss18_DictionaryStorageCySSSbGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy11WorkoutCore21CyclingPowerZonesSizeOSayAC0eF4ZoneCGGMd, &_ss18_DictionaryStorageCy11WorkoutCore21CyclingPowerZonesSizeOSayAC0eF4ZoneCGGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySd11WorkoutCore26MeanDistributionByPositionC6BucketCGMd, &_ss18_DictionaryStorageCySd11WorkoutCore26MeanDistributionByPositionC6BucketCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySo31NLCompoundActivityPickerSectionVSay11WorkoutCore08CompounddE12ItemProtocol_pGGMd, &_ss18_DictionaryStorageCySo31NLCompoundActivityPickerSectionVSay11WorkoutCore08CompounddE12ItemProtocol_pGGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy11WorkoutCore0C8SignpostOSayAC0c8IntervalE0CGGMd, &_ss18_DictionaryStorageCy11WorkoutCore0C8SignpostOSayAC0c8IntervalE0CGGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySd11WorkoutCore0C10DataBucketCGMd, &_ss18_DictionaryStorageCySd11WorkoutCore0C10DataBucketCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy11WorkoutCore16ExternalProviderCSayAC0C13ConfigurationCGGMd, &_ss18_DictionaryStorageCy11WorkoutCore16ExternalProviderCSayAC0C13ConfigurationCGGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySo21HKWorkoutActivityTypeVSaySdGGMd, &_ss18_DictionaryStorageCySo21HKWorkoutActivityTypeVSaySdGGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd, &_ss18_DictionaryStorageCySS10Foundation4DataVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = outlined copy of Data._Representation(v22, *(&v22 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy11WorkoutCore23BackgroundAssertionTypeOSDy10Foundation4UUIDVSo09NLSessioneF0CGGMd, &_ss18_DictionaryStorageCy11WorkoutCore23BackgroundAssertionTypeOSDy10Foundation4UUIDVSo09NLSessioneF0CGGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8NSNumberC11WorkoutCore10TargetZoneCGMd, &_ss18_DictionaryStorageCySo8NSNumberC11WorkoutCore10TargetZoneCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSayyycGGMd, &_ss18_DictionaryStorageCySSSayyycGGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy11WorkoutCore23QueriedExternalProviderCSayAC0C13ConfigurationCGGMd, &_ss18_DictionaryStorageCy11WorkoutCore23QueriedExternalProviderCSayAC0C13ConfigurationCGGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSay11WorkoutCore08Standardc3AddC3RowCGGMd, &_ss18_DictionaryStorageCySSSay11WorkoutCore08Standardc3AddC3RowCGGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11WorkoutCore06Apple_c1_D13_PublisherKeyOs6UInt32VGMd, &_ss18_DictionaryStorageCy11WorkoutCore06Apple_c1_D13_PublisherKeyOs6UInt32VGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 48) + 16 * v14;
      v18 = *v17;
      LOBYTE(v17) = *(v17 + 8);
      v19 = *(*(v2 + 56) + 4 * v14);
      v20 = *(v4 + 48) + 16 * v14;
      *v20 = v18;
      *(v20 + 8) = v17;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + v19) = *(*(v4 + 48) + v19);
        *(*(v6 + 56) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 16 * v19) = *(*(v4 + 48) + 16 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

{
  v5 = v2;
  v36 = type metadata accessor for UUID();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    v20 = v10;
    if (v18)
    {
      do
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v24 = v21 | (v14 << 6);
        v25 = v38;
        v26 = *(v38 + 72) * v24;
        v28 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v26, v36);
        v29 = *(*(v8 + 56) + 8 * v24);
        (*(v25 + 32))(*(v20 + 48) + v26, v28, v27);
        *(*(v20 + 56) + 8 * v24) = v29;
        result = v29;
        v18 = v39;
      }

      while (v39);
    }

    v22 = v14;
    while (1)
    {
      v14 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v23 = *(v32 + v14);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v39 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + v19) = *(*(v4 + 48) + v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Station.Mood and conformance Station.Mood(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined assign with take of Apple_Workout_Core_ActivityMetadataValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_Core_ActivityMetadataValue(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double MetricsPublisher.currentPace.getter()
{
  return MetricsPublisher.currentPace.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t MetricsPublisher.currentCadence.getter()
{
  return MetricsPublisher.currentCadence.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t MetricsPublisher.splitStartDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  _s10Foundation4DateVSgWOcTm_11(a1, v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = v1;
  static Published.subscript.setter();
  return _s10Foundation4DateVSgWOhTm_17(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t MetricsPublisher.splitIndex.setter()
{
  return MetricsPublisher.splitIndex.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t MetricsPublisher.timerRemainingTime.setter()
{
  return MetricsPublisher.timerRemainingTime.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*MetricsPublisher.segmentDuration.modify(uint64_t *a1))()
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
  return MetricsPublisher.segmentDuration.modify;
}

uint64_t (*MetricsPublisher.splitDuration.modify(uint64_t *a1))()
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
  return MetricsPublisher.splitDuration.modify;
}

uint64_t (*MetricsPublisher.distance.modify(uint64_t *a1))()
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
  return MetricsPublisher.distance.modify;
}

uint64_t MetricsPublisher.currentElevation.setter()
{
  return MetricsPublisher.currentElevation.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*MetricsPublisher.segmentDistance.modify(uint64_t *a1))()
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
  return MetricsPublisher.segmentDistance.modify;
}

uint64_t (*MetricsPublisher.segmentActiveEnergy.modify(uint64_t *a1))()
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
  return MetricsPublisher.segmentActiveEnergy.modify;
}

uint64_t (*MetricsPublisher.segmentTotalEnergy.modify(uint64_t *a1))()
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
  return MetricsPublisher.segmentTotalEnergy.modify;
}

uint64_t (*MetricsPublisher.splitDistance.modify(uint64_t *a1))()
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
  return MetricsPublisher.splitDistance.modify;
}

uint64_t (*MetricsPublisher.descent.modify(uint64_t *a1))()
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
  return MetricsPublisher.descent.modify;
}

uint64_t (*MetricsPublisher.flightsClimbed.modify(uint64_t *a1))()
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
  return MetricsPublisher.flightsClimbed.modify;
}

uint64_t (*MetricsPublisher.downhillRunCount.modify(uint64_t *a1))()
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
  return MetricsPublisher.downhillRunCount.modify;
}

uint64_t (*MetricsPublisher.timerRemainingTime.modify(uint64_t *a1))()
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
  return MetricsPublisher.timerRemainingTime.modify;
}

id MetricsPublisher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t MetricsPublisher.elevationChartData.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t MetricsPublisher.protobuf.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v729 = &v722 - v6;
  v7 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher();
  v727 = *(v7 - 8);
  v728 = v7;
  v8 = *(v727 + 64);
  MEMORY[0x28223BE20](v7);
  v726 = &v722 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v725 = &v722 - v12;
  v732 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher();
  v724 = *(v732 - 8);
  v13 = *(v724 + 64);
  MEMORY[0x28223BE20](v732);
  v731 = &v722 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v730 = &v722 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v764 = &v722 - v20;
  v21 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher();
  v762 = *(v21 - 8);
  v763 = v21;
  v22 = *(v762 + 64);
  MEMORY[0x28223BE20](v21);
  v761 = &v722 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v760 = &v722 - v26;
  v27 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  v758 = *(v27 - 8);
  v759 = v27;
  v28 = *(v758 + 64);
  MEMORY[0x28223BE20](v27);
  v757 = &v722 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v756 = &v722 - v32;
  v33 = type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
  v754 = *(v33 - 8);
  v755 = v33;
  v34 = *(v754 + 64);
  MEMORY[0x28223BE20](v33);
  v753 = &v722 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v752 = &v722 - v38;
  v39 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  v750 = *(v39 - 8);
  v751 = v39;
  v40 = *(v750 + 64);
  MEMORY[0x28223BE20](v39);
  v749 = &v722 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v748 = &v722 - v44;
  v45 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  v746 = *(v45 - 8);
  v747 = v45;
  v46 = *(v746 + 64);
  MEMORY[0x28223BE20](v45);
  v745 = &v722 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48 - 8);
  v744 = &v722 - v50;
  v51 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  v742 = *(v51 - 8);
  v743 = v51;
  v52 = *(v742 + 64);
  MEMORY[0x28223BE20](v51);
  v741 = &v722 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54 - 8);
  v740 = &v722 - v56;
  v57 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher();
  v738 = *(v57 - 8);
  v739 = v57;
  v58 = *(v738 + 64);
  MEMORY[0x28223BE20](v57);
  v737 = &v722 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  v61 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60 - 8);
  v736 = &v722 - v62;
  v63 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher();
  v734 = *(v63 - 8);
  v735 = v63;
  v64 = *(v734 + 64);
  MEMORY[0x28223BE20](v63);
  v733 = &v722 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v801 = type metadata accessor for Date();
  v790 = *(v801 - 8);
  v66 = *(v790 + 64);
  v67 = MEMORY[0x28223BE20](v801);
  v723 = &v722 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v799 = &v722 - v69;
  v798 = type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement();
  v797 = *(v798 - 8);
  v70 = *(v797 + 64);
  v71 = MEMORY[0x28223BE20](v798);
  v804 = &v722 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x28223BE20](v71);
  v805 = (&v722 - v74);
  MEMORY[0x28223BE20](v73);
  v803 = &v722 - v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  v77 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76 - 8);
  v773 = &v722 - v78;
  v79 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  v771 = *(v79 - 8);
  v772 = v79;
  v80 = *(v771 + 64);
  MEMORY[0x28223BE20](v79);
  v789 = &v722 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  v83 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82 - 8);
  v770 = &v722 - v84;
  v85 = type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  v768 = *(v85 - 8);
  v769 = v85;
  v86 = *(v768 + 64);
  MEMORY[0x28223BE20](v85);
  v767 = (&v722 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  v89 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88 - 8);
  v766 = &v722 - v90;
  v791 = type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher();
  v765 = *(v791 - 8);
  v91 = *(v765 + 64);
  MEMORY[0x28223BE20](v791);
  v788 = &v722 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  v94 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93 - 8);
  v787 = &v722 - v95;
  v800 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher();
  v786 = *(v800 - 8);
  v96 = *(v786 + 64);
  MEMORY[0x28223BE20](v800);
  v796 = (&v722 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  v99 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98 - 8);
  v785 = &v722 - v100;
  v101 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  v783 = *(v101 - 8);
  v784 = v101;
  v102 = *(v783 + 64);
  MEMORY[0x28223BE20](v101);
  v795 = (&v722 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0));
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  v105 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v104 - 8);
  v782 = &v722 - v106;
  v107 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  v779 = *(v107 - 8);
  v780 = v107;
  v108 = *(v779 + 64);
  MEMORY[0x28223BE20](v107);
  v778 = &v722 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  v794 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  v781 = *(v794 - 8);
  v110 = *(v781 + 64);
  MEMORY[0x28223BE20](v794);
  v774 = &v722 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  v113 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112 - 8);
  v777 = &v722 - v114;
  v115 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher();
  v775 = *(v115 - 8);
  v776 = v115;
  v116 = *(v775 + 64);
  MEMORY[0x28223BE20](v115);
  v792 = (&v722 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0));
  v118 = type metadata accessor for UUID();
  v119 = *(v118 - 1);
  v120 = *(v119 + 8);
  MEMORY[0x28223BE20](v118);
  v122 = &v722 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownStorage.init()();
  v123 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    goto LABEL_79;
  }

  while (1)
  {
    *(a1 + v123) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
    v124 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_isFaked;
    swift_beginAccess();
    v793 = v2;
    v125 = *(v2 + v124);

    v126 = *(a1 + v123);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v128 = *(a1 + v123);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v129 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v130 = *(v129 + 48);
      v131 = *(v129 + 52);
      swift_allocObject();
      v128 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v128);
      *(a1 + v123) = v128;
    }

    swift_beginAccess();
    *(v128 + 16) = v125;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v132 = UUID.woData.getter();
    v134 = v133;
    (*(v119 + 1))(v122, v118);
    v135 = *(a1 + v123);
    v136 = swift_isUniquelyReferenced_nonNull_native();
    v137 = *(a1 + v123);
    if ((v136 & 1) == 0)
    {
      v138 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v139 = *(v138 + 48);
      v140 = *(v138 + 52);
      swift_allocObject();
      v137 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v137);
      *(a1 + v123) = v137;
    }

    v141 = (v137 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes);
    swift_beginAccess();
    v142 = *v141;
    v143 = v141[1];
    *v141 = v132;
    v141[1] = v134;
    outlined consume of Data?(v142, v143);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v144 = v836;
    v145 = *(a1 + v123);
    v146 = swift_isUniquelyReferenced_nonNull_native();
    v147 = *(a1 + v123);
    if ((v146 & 1) == 0)
    {
      v148 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v149 = *(v148 + 48);
      v150 = *(v148 + 52);
      swift_allocObject();
      v147 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v147);
      *(a1 + v123) = v147;
    }

    v151 = v776;
    swift_beginAccess();
    *(v147 + 40) = v144;
    *(v147 + 48) = 1;
    swift_getKeyPath();
    swift_getKeyPath();
    v152 = v793;
    static Published.subscript.getter();

    v153 = v836;
    v154 = *(a1 + v123);
    v155 = swift_isUniquelyReferenced_nonNull_native();
    v156 = *(a1 + v123);
    if ((v155 & 1) == 0)
    {
      v157 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v158 = *(v157 + 48);
      v159 = *(v157 + 52);
      swift_allocObject();
      v156 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v156);
      *(a1 + v123) = v156;
    }

    v160 = v777;
    swift_beginAccess();
    *(v156 + 49) = v153;
    v161 = *(v152 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_elapsedTimeMetricsPublisher);
    v162 = v792;
    v163 = v792 + *(v151 + 20);
    UnknownStorage.init()();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *v162 = v835;
    v164 = *(a1 + v123);
    v165 = swift_isUniquelyReferenced_nonNull_native();
    v166 = *(a1 + v123);
    v802 = a1;
    if ((v165 & 1) == 0)
    {
      v167 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v168 = *(v167 + 48);
      v169 = *(v167 + 52);
      swift_allocObject();
      v166 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v166);
      *(a1 + v123) = v166;
    }

    v171 = v774;
    v170 = v775;
    _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v792, v160, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
    (*(v170 + 56))(v160, 0, 1, v151);
    v172 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elapsedTimeMetricsPublisher;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(v160, v166 + v172, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
    swift_endAccess();
    v173 = *(v152 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_activitySummaryMetricsPublisher);
    *v171 = 0;
    v174 = v794;
    v175 = &v171[*(v794 + 20)];
    UnknownStorage.init()();
    v176 = *(v174 + 24);
    v177 = v171;
    v178 = v780;
    v180 = v779 + 56;
    v179 = *(v779 + 56);
    v179(&v171[v176], 1, 1, v780);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v181 = v835;
    v182 = v778;
    HKActivitySummary.protobuf.getter(v778);

    _s10Foundation4DateVSgWOhTm_17(&v177[v176], &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
    _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v182, &v177[v176], type metadata accessor for Apple_Workout_Core_HKActivitySummary);
    v179(&v177[v176], 0, 1, v178);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *v177 = v835;
    v183 = v802;
    v184 = *(v802 + v123);
    v185 = swift_isUniquelyReferenced_nonNull_native();
    v186 = *(v183 + v123);
    v187 = v123;
    if ((v185 & 1) == 0)
    {
      v188 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v189 = *(v188 + 48);
      v190 = *(v188 + 52);
      swift_allocObject();
      v186 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v186);
      *(v183 + v123) = v186;
    }

    v191 = v787;
    v192 = v177;
    v193 = v781;
    v194 = v782;
    _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v192, v782, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
    (*(v193 + 56))(v194, 0, 1, v794);
    v195 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__activitySummaryMetricsPublisher;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(v194, v186 + v195, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
    swift_endAccess();
    v196 = v793;
    v197 = *(v793 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_heartRateMetricsPublisher);
    HeartRateMetricsPublisher.protobuf.getter(v795);
    v198 = *(v183 + v123);
    v199 = swift_isUniquelyReferenced_nonNull_native();
    v200 = *(v183 + v123);
    if ((v199 & 1) == 0)
    {
      v201 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v202 = *(v201 + 48);
      v203 = *(v201 + 52);
      swift_allocObject();
      v200 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v200);
      *(v183 + v123) = v200;
    }

    v204 = v784;
    v205 = v785;
    _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v795, v785, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
    (*(v783 + 56))(v205, 0, 1, v204);
    v206 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__heartRateMetricsPublisher;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(v205, v200 + v206, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
    swift_endAccess();
    v207 = *(v196 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_energyMetricsPublisher);
    v208 = v796;
    v209 = v796 + *(v800 + 24);
    UnknownStorage.init()();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *v208 = v835;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v208[1] = v835;
    v210 = *(v183 + v187);
    v211 = swift_isUniquelyReferenced_nonNull_native();
    v212 = *(v183 + v187);
    if ((v211 & 1) == 0)
    {
      v213 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v214 = *(v213 + 48);
      v215 = *(v213 + 52);
      swift_allocObject();
      v212 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v212);
      *(v183 + v187) = v212;
    }

    v216 = v788;
    v217 = v786;
    _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v796, v191, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
    (*(v217 + 56))(v191, 0, 1, v800);
    v218 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__energyMetricsPublisher;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(v191, v212 + v218, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
    swift_endAccess();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v219 = v835;
    v220 = *(v183 + v187);
    v221 = swift_isUniquelyReferenced_nonNull_native();
    v222 = *(v183 + v187);
    v223 = v789;
    if ((v221 & 1) == 0)
    {
      v224 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v225 = *(v224 + 48);
      v226 = *(v224 + 52);
      swift_allocObject();
      v222 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v222);
      *(v183 + v187) = v222;
    }

    v227 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distance;
    swift_beginAccess();
    *(v222 + v227) = v219;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v228 = v834;
    v229 = *(v183 + v187);
    v230 = swift_isUniquelyReferenced_nonNull_native();
    v231 = *(v183 + v187);
    if ((v230 & 1) == 0)
    {
      v232 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v233 = *(v232 + 48);
      v234 = *(v232 + 52);
      swift_allocObject();
      v231 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v231);
      *(v183 + v187) = v231;
    }

    v235 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__secondsAheadOfPacer;
    swift_beginAccess();
    *(v231 + v235) = v228;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v236 = v833;
    v237 = *(v183 + v187);
    v238 = swift_isUniquelyReferenced_nonNull_native();
    v239 = *(v183 + v187);
    if ((v238 & 1) == 0)
    {
      v240 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v241 = *(v240 + 48);
      v242 = *(v240 + 52);
      swift_allocObject();
      v239 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v239);
      *(v183 + v187) = v239;
    }

    v243 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentPace;
    swift_beginAccess();
    *(v239 + v243) = v236;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v244 = v832;
    v245 = *(v183 + v187);
    v246 = swift_isUniquelyReferenced_nonNull_native();
    v247 = *(v183 + v187);
    if ((v246 & 1) == 0)
    {
      v248 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v249 = *(v248 + 48);
      v250 = *(v248 + 52);
      swift_allocObject();
      v247 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v247);
      *(v183 + v187) = v247;
    }

    v251 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averagePace;
    swift_beginAccess();
    *(v247 + v251) = v244;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v252 = v831;
    v253 = *(v183 + v187);
    v254 = swift_isUniquelyReferenced_nonNull_native();
    v255 = *(v183 + v187);
    if ((v254 & 1) == 0)
    {
      v256 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v257 = *(v256 + 48);
      v258 = *(v256 + 52);
      swift_allocObject();
      v255 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v255);
      *(v183 + v187) = v255;
    }

    v259 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__rollingPace;
    swift_beginAccess();
    *(v255 + v259) = v252;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v260 = v830;
    v261 = *(v183 + v187);
    v262 = swift_isUniquelyReferenced_nonNull_native();
    v263 = *(v183 + v187);
    if ((v262 & 1) == 0)
    {
      v264 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v265 = *(v264 + 48);
      v266 = *(v264 + 52);
      swift_allocObject();
      v263 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v263);
      *(v183 + v187) = v263;
    }

    v267 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__requiredPace;
    swift_beginAccess();
    *(v263 + v267) = v260;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v268 = v829;
    v269 = *(v183 + v187);
    v270 = swift_isUniquelyReferenced_nonNull_native();
    v271 = *(v183 + v187);
    if ((v270 & 1) == 0)
    {
      v272 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v273 = *(v272 + 48);
      v274 = *(v272 + 52);
      swift_allocObject();
      v271 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v271);
      *(v183 + v187) = v271;
    }

    v275 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__fastestPace;
    swift_beginAccess();
    *(v271 + v275) = v268;
    v276 = *(v196 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_lapsMetricsPublisher);
    v277 = v216 + *(v791 + 20);
    UnknownStorage.init()();
    swift_getKeyPath();
    swift_getKeyPath();
    v278 = v216;
    static Published.subscript.getter();

    if (HIDWORD(v827))
    {
      __break(1u);
    }

    else
    {
      *v216 = v827;
      v279 = *(v183 + v187);
      v280 = swift_isUniquelyReferenced_nonNull_native();
      v281 = *(v183 + v187);
      if ((v280 & 1) == 0)
      {
        v282 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
        v283 = *(v282 + 48);
        v284 = *(v282 + 52);
        swift_allocObject();
        v281 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v281);
        *(v183 + v187) = v281;
      }

      v285 = v766;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v278, v766, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
      (*(v765 + 56))(v285, 0, 1, v791);
      v286 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__lapsMetricsPublisher;
      swift_beginAccess();
      outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(v285, v281 + v286, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
      swift_endAccess();
      v287 = *(v196 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_platterPublisher);
      v288 = v767;
      PlatterPublisher.protobuf.getter(v767);
      v289 = *(v183 + v187);
      v290 = swift_isUniquelyReferenced_nonNull_native();
      v291 = *(v183 + v187);
      if ((v290 & 1) == 0)
      {
        v292 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
        v293 = *(v292 + 48);
        v294 = *(v292 + 52);
        swift_allocObject();
        v291 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v291);
        *(v183 + v187) = v291;
      }

      v295 = v770;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v288, v770, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
      (*(v768 + 56))(v295, 0, 1, v769);
      v296 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__platterPublisher;
      swift_beginAccess();
      outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(v295, v291 + v296, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
      swift_endAccess();
      v297 = *(v196 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_goalPublisher);
      *v223 = 0;
      *(v223 + 8) = 1;
      v298 = v772;
      v299 = v223 + *(v772 + 24);
      UnknownStorage.init()();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v300 = 0;
      if (v827 <= 3)
      {
        v300 = qword_20B451AD0[v827];
      }

      *v223 = v300;
      *(v223 + 8) = 1;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      *(v223 + 12) = v827;
      v301 = *(v183 + v187);
      v302 = swift_isUniquelyReferenced_nonNull_native();
      v303 = *(v183 + v187);
      if ((v302 & 1) == 0)
      {
        v304 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
        v305 = *(v304 + 48);
        v306 = *(v304 + 52);
        swift_allocObject();
        v303 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v303);
        *(v183 + v187) = v303;
      }

      v307 = v773;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v223, v773, type metadata accessor for Apple_Workout_Core_GoalPublisher);
      (*(v771 + 56))(v307, 0, 1, v298);
      v308 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__goalPublisher;
      swift_beginAccess();
      v180 = v303;
      outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(v307, v303 + v308, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
      swift_endAccess();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if ((v828 & 1) == 0)
      {
        v309 = v827;
        v310 = *(v183 + v187);
        v311 = swift_isUniquelyReferenced_nonNull_native();
        v312 = *(v183 + v187);
        if ((v311 & 1) == 0)
        {
          v313 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          v314 = *(v313 + 48);
          v315 = *(v313 + 52);
          swift_allocObject();
          v312 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v312);
          *(v183 + v187) = v312;
        }

        v180 = v312;
        v316 = v312 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationGain;
        swift_beginAccess();
        *v316 = v309;
        *(v316 + 8) = 0;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if ((v828 & 1) == 0)
      {
        v317 = v827;
        v318 = *(v183 + v187);
        v319 = swift_isUniquelyReferenced_nonNull_native();
        v320 = *(v183 + v187);
        if ((v319 & 1) == 0)
        {
          v321 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          v322 = *(v321 + 48);
          v323 = *(v321 + 52);
          swift_allocObject();
          v320 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v320);
          *(v183 + v187) = v320;
        }

        v180 = v320;
        v324 = v320 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentElevation;
        swift_beginAccess();
        *v324 = v317;
        *(v324 + 8) = 0;
      }

      v800 = v187;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v187 = v827;
      if (!(v827 >> 62))
      {
        v326 = *((v827 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v122 = v801;
        if (!v326)
        {
          break;
        }

        goto LABEL_51;
      }
    }

    result = __CocoaSet.count.getter();
    v326 = result;
    v122 = v801;
    if (!result)
    {
      break;
    }

LABEL_51:
    if (v326 < 1)
    {
      goto LABEL_196;
    }

    a1 = 0;
    v327 = v187 & 0xC000000000000001;
    v796 = (v790 + 16);
    v795 = (v790 + 8);
    v794 = v187 & 0xC000000000000001;
    while (1)
    {
      if (v327)
      {
        v328 = MEMORY[0x20F2E7A20](a1, v187);
      }

      else
      {
        v328 = *(v187 + 8 * a1 + 32);
      }

      v118 = v328;
      v2 = OBJC_IVAR___WOWorkoutChartDataElement_value;
      swift_beginAccess();
      if ((~*(v118 + v2) & 0x7FF0000000000000) == 0)
      {

        goto LABEL_54;
      }

      v329 = v187;
      v123 = v326;
      v330 = v798;
      v331 = v805;
      v332 = v805 + *(v798 + 24);
      UnknownStorage.init()();
      v333 = v331 + *(v330 + 28);
      *v333 = 0;
      v333[8] = 1;
      v334 = v331 + *(v330 + 32);
      *v334 = 0;
      v334[8] = 1;
      v335 = OBJC_IVAR___WOWorkoutChartDataElement_date;
      swift_beginAccess();
      v119 = v799;
      (*v796)(v799, v118 + v335, v122);
      Date.timeIntervalSinceReferenceDate.getter();
      v337 = v336;
      v338 = v336;
      (*v795)(v119, v122);
      if ((*&v338 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v337 <= -2147483650.0)
      {
        goto LABEL_74;
      }

      if (v337 >= 2147483650.0)
      {
        goto LABEL_75;
      }

      *v805 = v337;
      v339 = *(v118 + v2) * 100.0;
      if (COERCE__INT64(fabs(v339)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_76;
      }

      if (v339 <= -2147483650.0)
      {
        goto LABEL_77;
      }

      if (v339 >= 2147483650.0)
      {
        goto LABEL_78;
      }

      v340 = v805;
      v805[1] = v339;
      v341 = v803;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v340, v803, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement);
      outlined init with copy of Apple_Workout_Core_WorkoutChartDataElement(v341, v804);
      v342 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartData;
      swift_beginAccess();
      v343 = *(v180 + v342);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v343 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v343[2] + 1, 1, v343);
      }

      v345 = v343[2];
      v344 = v343[3];
      if (v345 >= v344 >> 1)
      {
        v343 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v344 > 1, v345 + 1, 1, v343);
      }

      v343[2] = v345 + 1;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v804, v343 + ((*(v797 + 80) + 32) & ~*(v797 + 80)) + *(v797 + 72) * v345, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement);
      v346 = v802;
      v347 = v800;
      v348 = *(v802 + v800);
      if (swift_isUniquelyReferenced_nonNull_native())
      {

        outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v803, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement);
        v349 = *(v346 + v347);
      }

      else
      {
        v350 = *(v346 + v347);
        v351 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
        v352 = *(v351 + 48);
        v353 = *(v351 + 52);
        swift_allocObject();

        v355 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v354);

        outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v803, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement);

        *(v346 + v347) = v355;
        v349 = v355;
      }

      v356 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartData;
      swift_beginAccess();
      v357 = *(v349 + v356);
      v180 = v349;
      *(v349 + v356) = v343;

      v122 = v801;
      v326 = v123;
      v187 = v329;
      v327 = v794;
LABEL_54:
      if (v326 == ++a1)
      {
        goto LABEL_82;
      }
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    swift_once();
  }

LABEL_82:

  swift_getKeyPath();
  swift_getKeyPath();
  v358 = v793;
  static Published.subscript.getter();

  v359 = v826;
  v360 = [v826 unitString];

  v361 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v363 = v362;

  v364 = v802;
  v365 = v800;
  v366 = *(v802 + v800);
  v367 = swift_isUniquelyReferenced_nonNull_native();
  v368 = *(v364 + v365);
  if ((v367 & 1) == 0)
  {
    v369 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v370 = *(v369 + 48);
    v371 = *(v369 + 52);
    swift_allocObject();
    v368 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v368);
    *(v364 + v365) = v368;
  }

  v372 = v737;
  v373 = v733;
  v374 = (v368 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartUnit);
  swift_beginAccess();
  v375 = v374[1];
  *v374 = v361;
  v374[1] = v363;

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v376 = v741;
  if ((v825 & 1) == 0)
  {
    v377 = v824;
    v378 = *(v364 + v365);
    v379 = swift_isUniquelyReferenced_nonNull_native();
    v380 = *(v364 + v365);
    if ((v379 & 1) == 0)
    {
      v381 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v382 = *(v381 + 48);
      v383 = *(v381 + 52);
      swift_allocObject();
      v380 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v380);
      *(v364 + v365) = v380;
    }

    v384 = v380 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentCadence;
    swift_beginAccess();
    *v384 = v377;
    *(v384 + 8) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v825 & 1) == 0)
  {
    v385 = v824;
    v386 = *(v364 + v365);
    v387 = swift_isUniquelyReferenced_nonNull_native();
    v388 = *(v364 + v365);
    if ((v387 & 1) == 0)
    {
      v389 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v390 = *(v389 + 48);
      v391 = *(v389 + 52);
      swift_allocObject();
      v388 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v388);
      *(v364 + v365) = v388;
    }

    v392 = v388 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageCadence;
    swift_beginAccess();
    *v392 = v385;
    *(v392 + 8) = 0;
  }

  v393 = *(v358 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_powerMetricsPublisher);
  PowerMetricsPublisher.protobuf.getter(v373);
  v394 = *(v364 + v365);
  v395 = swift_isUniquelyReferenced_nonNull_native();
  v396 = *(v364 + v365);
  if ((v395 & 1) == 0)
  {
    v397 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v398 = *(v397 + 48);
    v399 = *(v397 + 52);
    swift_allocObject();
    v396 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v396);
    *(v364 + v365) = v396;
  }

  v400 = v373;
  v401 = v735;
  v402 = v736;
  _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v400, v736, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
  (*(v734 + 56))(v402, 0, 1, v401);
  v403 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__powerMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(v402, v396 + v403, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  swift_endAccess();
  v404 = *(v358 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_waterTemperatureMetricsPublisher);
  WaterTemperatureMetricsPublisher.protobuf.getter(v372);
  v405 = *(v364 + v365);
  v406 = swift_isUniquelyReferenced_nonNull_native();
  v407 = *(v364 + v365);
  if ((v406 & 1) == 0)
  {
    v408 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v409 = *(v408 + 48);
    v410 = *(v408 + 52);
    swift_allocObject();
    v407 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v407);
    *(v364 + v365) = v407;
  }

  v411 = v745;
  v412 = v372;
  v413 = v739;
  v414 = v740;
  _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v412, v740, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
  (*(v738 + 56))(v414, 0, 1, v413);
  v415 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__waterTemperatureMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(v414, v407 + v415, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v416 = v824;
  v417 = *(v364 + v365);
  v418 = swift_isUniquelyReferenced_nonNull_native();
  v419 = *(v364 + v365);
  if ((v418 & 1) == 0)
  {
    v420 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v421 = *(v420 + 48);
    v422 = *(v420 + 52);
    swift_allocObject();
    v419 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v419);
    *(v364 + v365) = v419;
  }

  v423 = v749;
  v424 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__flightsClimbed;
  swift_beginAccess();
  *(v419 + v424) = v416;
  v425 = *(v358 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutStatePublisher);
  WorkoutStatePublisher.protobuf.getter(v376);
  v426 = *(v364 + v365);
  v427 = swift_isUniquelyReferenced_nonNull_native();
  v428 = *(v364 + v365);
  if ((v427 & 1) == 0)
  {
    v429 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v430 = *(v429 + 48);
    v431 = *(v429 + 52);
    swift_allocObject();
    v428 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v428);
    *(v364 + v365) = v428;
  }

  v432 = v376;
  v433 = v743;
  v434 = v744;
  _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v432, v744, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  (*(v742 + 56))(v434, 0, 1, v433);
  v435 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutStatePublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(v434, v428 + v435, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  swift_endAccess();
  v436 = *(v358 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_intervalsMetricsPublisher);
  IntervalsMetricsPublisher.protobuf.getter(v411);
  v437 = *(v364 + v365);
  v438 = swift_isUniquelyReferenced_nonNull_native();
  v439 = *(v364 + v365);
  if ((v438 & 1) == 0)
  {
    v440 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v441 = *(v440 + 48);
    v442 = *(v440 + 52);
    swift_allocObject();
    v439 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v439);
    *(v364 + v365) = v439;
  }

  v443 = v753;
  v444 = v411;
  v445 = v747;
  v446 = v748;
  _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v444, v748, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
  (*(v746 + 56))(v446, 0, 1, v445);
  v447 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__intervalsMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(v446, v439 + v447, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  swift_endAccess();
  v448 = *(v358 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_multisportMetricsPublisher);
  MultisportMetricsPublisher.protobuf.getter(v423);
  v449 = *(v364 + v365);
  v450 = swift_isUniquelyReferenced_nonNull_native();
  v451 = *(v364 + v365);
  if ((v450 & 1) == 0)
  {
    v452 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v453 = *(v452 + 48);
    v454 = *(v452 + 52);
    swift_allocObject();
    v451 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v451);
    *(v364 + v365) = v451;
  }

  v455 = v761;
  v456 = v423;
  v457 = v751;
  v458 = v752;
  _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v456, v752, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
  (*(v750 + 56))(v458, 0, 1, v457);
  v459 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__multisportMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(v458, v451 + v459, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  swift_endAccess();
  v460 = *(v358 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_raceInformationPublisher);
  RaceInformationPublisher.protobuf.getter(v443);
  v461 = *(v364 + v365);
  v462 = swift_isUniquelyReferenced_nonNull_native();
  v463 = *(v364 + v365);
  if ((v462 & 1) == 0)
  {
    v464 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v465 = *(v464 + 48);
    v466 = *(v464 + 52);
    swift_allocObject();
    v463 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v463);
    *(v364 + v365) = v463;
  }

  v467 = v757;
  v468 = v443;
  v469 = v755;
  v470 = v756;
  _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v468, v756, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
  (*(v754 + 56))(v470, 0, 1, v469);
  v471 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__raceInformationPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(v470, v463 + v471, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  swift_endAccess();
  v472 = *(v358 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_racePositionStatePublisher);
  RacePositionStatePublisher.protobuf.getter(v467);
  v473 = *(v364 + v365);
  v474 = swift_isUniquelyReferenced_nonNull_native();
  v475 = *(v364 + v365);
  if ((v474 & 1) == 0)
  {
    v476 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v477 = *(v476 + 48);
    v478 = *(v476 + 52);
    swift_allocObject();
    v475 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v475);
    *(v364 + v365) = v475;
  }

  v479 = v764;
  v480 = v467;
  v481 = v759;
  v482 = v760;
  _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v480, v760, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
  (*(v758 + 56))(v482, 0, 1, v481);
  v483 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__racePositionStatePublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(v482, v475 + v483, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  swift_endAccess();
  v484 = *(v358 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_locationPositionPublisher);
  LocationPositionPublisher.protobuf.getter(v455);
  v485 = *(v364 + v365);
  v486 = swift_isUniquelyReferenced_nonNull_native();
  v487 = *(v364 + v365);
  if ((v486 & 1) == 0)
  {
    v488 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v489 = *(v488 + 48);
    v490 = *(v488 + 52);
    swift_allocObject();
    v487 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v487);
    *(v364 + v365) = v487;
  }

  v491 = v763;
  v492 = v790;
  _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v455, v479, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  (*(v762 + 56))(v479, 0, 1, v491);
  v493 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__locationPositionPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(v479, v487 + v493, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v823 & 1) == 0)
  {
    v494 = v822;
    v495 = *(v364 + v365);
    v496 = swift_isUniquelyReferenced_nonNull_native();
    v497 = *(v364 + v365);
    if ((v496 & 1) == 0)
    {
      v498 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v499 = *(v498 + 48);
      v500 = *(v498 + 52);
      swift_allocObject();
      v497 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v497);
      *(v364 + v365) = v497;
    }

    v501 = v497 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distanceGoalFinishTime;
    swift_beginAccess();
    *v501 = v494;
    *(v501 + 8) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v502 = v822;
  if (v822 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_193;
  }

  if (v822 > 0x7FFFFFFF)
  {
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    __break(1u);
    goto LABEL_197;
  }

  v503 = *(v364 + v365);
  v504 = swift_isUniquelyReferenced_nonNull_native();
  v505 = *(v364 + v365);
  if ((v504 & 1) == 0)
  {
    v506 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v507 = *(v506 + 48);
    v508 = *(v506 + 52);
    swift_allocObject();
    v505 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v505);
    *(v364 + v365) = v505;
  }

  v509 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentIndex;
  swift_beginAccess();
  *(v505 + v509) = v502;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v510 = v821;
  v511 = *(v364 + v365);
  v512 = swift_isUniquelyReferenced_nonNull_native();
  v513 = *(v364 + v365);
  if ((v512 & 1) == 0)
  {
    v514 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v515 = *(v514 + 48);
    v516 = *(v514 + 52);
    swift_allocObject();
    v513 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v513);
    *(v364 + v365) = v513;
  }

  v517 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDuration;
  swift_beginAccess();
  *(v513 + v517) = v510;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v518 = v820;
  v519 = *(v364 + v365);
  v520 = swift_isUniquelyReferenced_nonNull_native();
  v521 = *(v364 + v365);
  if ((v520 & 1) == 0)
  {
    v522 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v523 = *(v522 + 48);
    v524 = *(v522 + 52);
    swift_allocObject();
    v521 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v521);
    *(v364 + v365) = v521;
  }

  v525 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDistance;
  swift_beginAccess();
  *(v521 + v525) = v518;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v526 = v819;
  v527 = *(v364 + v365);
  v528 = swift_isUniquelyReferenced_nonNull_native();
  v529 = *(v364 + v365);
  if ((v528 & 1) == 0)
  {
    v530 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v531 = *(v530 + 48);
    v532 = *(v530 + 52);
    swift_allocObject();
    v529 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v529);
    *(v364 + v365) = v529;
  }

  v533 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentPace;
  swift_beginAccess();
  *(v529 + v533) = v526;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v534 = v818;
  v535 = *(v364 + v365);
  v536 = swift_isUniquelyReferenced_nonNull_native();
  v537 = *(v364 + v365);
  if ((v536 & 1) == 0)
  {
    v538 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v539 = *(v538 + 48);
    v540 = *(v538 + 52);
    swift_allocObject();
    v537 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v537);
    *(v364 + v365) = v537;
  }

  v541 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentActiveEnergy;
  swift_beginAccess();
  *(v537 + v541) = v534;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v542 = v817;
  v543 = *(v364 + v365);
  v544 = swift_isUniquelyReferenced_nonNull_native();
  v545 = *(v364 + v365);
  if ((v544 & 1) == 0)
  {
    v546 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v547 = *(v546 + 48);
    v548 = *(v546 + 52);
    swift_allocObject();
    v545 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v545);
    *(v364 + v365) = v545;
  }

  v549 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentTotalEnergy;
  swift_beginAccess();
  *(v545 + v549) = v542;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v550 = v816;
  v551 = *(v364 + v365);
  v552 = swift_isUniquelyReferenced_nonNull_native();
  v553 = *(v364 + v365);
  if ((v552 & 1) == 0)
  {
    v554 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v555 = *(v554 + 48);
    v556 = *(v554 + 52);
    swift_allocObject();
    v553 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v553);
    *(v364 + v365) = v553;
  }

  v557 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentAveragePower;
  swift_beginAccess();
  *(v553 + v557) = v550;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v558 = v815;
  if (v815 < 0xFFFFFFFF80000000)
  {
    goto LABEL_194;
  }

  if (v815 > 0x7FFFFFFF)
  {
    goto LABEL_195;
  }

  v559 = *(v364 + v365);
  v560 = swift_isUniquelyReferenced_nonNull_native();
  v561 = *(v364 + v365);
  if ((v560 & 1) == 0)
  {
    v562 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v563 = *(v562 + 48);
    v564 = *(v562 + 52);
    swift_allocObject();
    v561 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v561);
    *(v364 + v365) = v561;
  }

  v565 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitIndex;
  swift_beginAccess();
  *(v561 + v565) = v558;
  swift_getKeyPath();
  swift_getKeyPath();
  v566 = v730;
  static Published.subscript.getter();

  if ((*(v492 + 48))(v566, 1, v122) == 1)
  {
    _s10Foundation4DateVSgWOhTm_17(v566, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v567 = v731;
  }

  else
  {
    v568 = v723;
    (*(v492 + 32))(v723, v566, v122);
    Date.timeIntervalSinceReferenceDate.getter();
    v570 = v569;
    v571 = *(v364 + v365);
    v572 = swift_isUniquelyReferenced_nonNull_native();
    v567 = v731;
    if (v572)
    {
      (*(v492 + 8))(v568, v122);
      v573 = *(v364 + v365);
    }

    else
    {
      v574 = v568;
      v575 = *(v364 + v365);
      v576 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v577 = *(v576 + 48);
      v578 = *(v576 + 52);
      swift_allocObject();

      v573 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v579);
      (*(v492 + 8))(v574, v122);

      *(v364 + v365) = v573;
    }

    v580 = v573 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitStartDate;
    swift_beginAccess();
    *v580 = v570;
    *(v580 + 8) = 0;
  }

  v581 = v732;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v582 = v814;
  v583 = *(v364 + v365);
  v584 = swift_isUniquelyReferenced_nonNull_native();
  v585 = *(v364 + v365);
  if ((v584 & 1) == 0)
  {
    v586 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v587 = *(v586 + 48);
    v588 = *(v586 + 52);
    swift_allocObject();
    v585 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v585);
    *(v364 + v365) = v585;
  }

  v589 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDuration;
  swift_beginAccess();
  *(v585 + v589) = v582;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v590 = v813;
  v591 = *(v364 + v365);
  v592 = swift_isUniquelyReferenced_nonNull_native();
  v593 = *(v364 + v365);
  if ((v592 & 1) == 0)
  {
    v594 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v595 = *(v594 + 48);
    v596 = *(v594 + 52);
    swift_allocObject();
    v593 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v593);
    *(v364 + v365) = v593;
  }

  v597 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDistance;
  swift_beginAccess();
  *(v593 + v597) = v590;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v598 = v812;
  v599 = *(v364 + v365);
  v600 = swift_isUniquelyReferenced_nonNull_native();
  v601 = *(v364 + v365);
  if ((v600 & 1) == 0)
  {
    v602 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v603 = *(v602 + 48);
    v604 = *(v602 + 52);
    swift_allocObject();
    v601 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v601);
    *(v364 + v365) = v601;
  }

  v605 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitPace;
  swift_beginAccess();
  *(v601 + v605) = v598;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v606 = v811;
  v607 = *(v364 + v365);
  v608 = swift_isUniquelyReferenced_nonNull_native();
  v609 = *(v364 + v365);
  if ((v608 & 1) == 0)
  {
    v610 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v611 = *(v610 + 48);
    v612 = *(v610 + 52);
    swift_allocObject();
    v609 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v609);
    *(v364 + v365) = v609;
  }

  v613 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitAveragePower;
  swift_beginAccess();
  *(v609 + v613) = v606;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v614 = v810;
  v615 = *(v364 + v365);
  v616 = swift_isUniquelyReferenced_nonNull_native();
  v617 = *(v364 + v365);
  if ((v616 & 1) == 0)
  {
    v618 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v619 = *(v618 + 48);
    v620 = *(v618 + 52);
    swift_allocObject();
    v617 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v617);
    *(v364 + v365) = v617;
  }

  v621 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTime;
  swift_beginAccess();
  *(v617 + v621) = v614;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v622 = v809;
  v623 = *(v364 + v365);
  v624 = swift_isUniquelyReferenced_nonNull_native();
  v625 = *(v364 + v365);
  if ((v624 & 1) == 0)
  {
    v626 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v627 = *(v626 + 48);
    v628 = *(v626 + 52);
    swift_allocObject();
    v625 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v625);
    *(v364 + v365) = v625;
  }

  v629 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTimeWithOffset;
  swift_beginAccess();
  *(v625 + v629) = v622;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v630 = v808;
  v631 = *(v364 + v365);
  v632 = swift_isUniquelyReferenced_nonNull_native();
  v633 = *(v364 + v365);
  if ((v632 & 1) == 0)
  {
    v634 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v635 = *(v634 + 48);
    v636 = *(v634 + 52);
    swift_allocObject();
    v633 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v633);
    *(v364 + v365) = v633;
  }

  v637 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerDuration;
  swift_beginAccess();
  *(v633 + v637) = v630;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v807 & 1) == 0)
  {
    v638 = v806;
    v639 = *(v364 + v365);
    v640 = swift_isUniquelyReferenced_nonNull_native();
    v641 = *(v364 + v365);
    if ((v640 & 1) == 0)
    {
      v642 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v643 = *(v642 + 48);
      v644 = *(v642 + 52);
      swift_allocObject();
      v641 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v641);
      *(v364 + v365) = v641;
    }

    v645 = v641 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentStrideLength;
    swift_beginAccess();
    *v645 = v638;
    *(v645 + 8) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v807 & 1) == 0)
  {
    v646 = v806;
    v647 = *(v364 + v365);
    v648 = swift_isUniquelyReferenced_nonNull_native();
    v649 = *(v364 + v365);
    if ((v648 & 1) == 0)
    {
      v650 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v651 = *(v650 + 48);
      v652 = *(v650 + 52);
      swift_allocObject();
      v649 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v649);
      *(v364 + v365) = v649;
    }

    v653 = v649 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageStrideLength;
    swift_beginAccess();
    *v653 = v646;
    *(v653 + 8) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v807 & 1) == 0)
  {
    v654 = v806;
    v655 = *(v364 + v365);
    v656 = swift_isUniquelyReferenced_nonNull_native();
    v657 = *(v364 + v365);
    if ((v656 & 1) == 0)
    {
      v658 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v659 = *(v658 + 48);
      v660 = *(v658 + 52);
      swift_allocObject();
      v657 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v657);
      *(v364 + v365) = v657;
    }

    v661 = v657 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentVerticalOscillation;
    swift_beginAccess();
    *v661 = v654;
    *(v661 + 8) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v807 & 1) == 0)
  {
    v662 = v806;
    v663 = *(v364 + v365);
    v664 = swift_isUniquelyReferenced_nonNull_native();
    v665 = *(v364 + v365);
    if ((v664 & 1) == 0)
    {
      v666 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v667 = *(v666 + 48);
      v668 = *(v666 + 52);
      swift_allocObject();
      v665 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v665);
      *(v364 + v365) = v665;
    }

    v669 = v665 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageVerticalOscillation;
    swift_beginAccess();
    *v669 = v662;
    *(v669 + 8) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v807 & 1) == 0)
  {
    v670 = v806;
    v671 = *(v364 + v365);
    v672 = swift_isUniquelyReferenced_nonNull_native();
    v673 = *(v364 + v365);
    if ((v672 & 1) == 0)
    {
      v674 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v675 = *(v674 + 48);
      v676 = *(v674 + 52);
      swift_allocObject();
      v673 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v673);
      *(v364 + v365) = v673;
    }

    v677 = v673 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentGroundContactTime;
    swift_beginAccess();
    *v677 = v670;
    *(v677 + 8) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v807 & 1) == 0)
  {
    v678 = v806;
    v679 = *(v364 + v365);
    v680 = swift_isUniquelyReferenced_nonNull_native();
    v681 = *(v364 + v365);
    if ((v680 & 1) == 0)
    {
      v682 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v683 = *(v682 + 48);
      v684 = *(v682 + 52);
      swift_allocObject();
      v681 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v681);
      *(v364 + v365) = v681;
    }

    v685 = v681 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageGroundContactTime;
    swift_beginAccess();
    *v685 = v678;
    *(v685 + 8) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v807 & 1) == 0)
  {
    v686 = v806;
    v687 = *(v364 + v365);
    v688 = swift_isUniquelyReferenced_nonNull_native();
    v689 = *(v364 + v365);
    if ((v688 & 1) == 0)
    {
      v690 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v691 = *(v690 + 48);
      v692 = *(v690 + 52);
      swift_allocObject();
      v689 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v689);
      *(v364 + v365) = v689;
    }

    v693 = v689 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__descent;
    swift_beginAccess();
    *v693 = v686;
    *(v693 + 8) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v807)
  {
    goto LABEL_187;
  }

  v694 = v806;
  if (HIDWORD(v806))
  {
LABEL_197:
    __break(1u);
    return result;
  }

  v695 = *(v364 + v365);
  v696 = swift_isUniquelyReferenced_nonNull_native();
  v697 = *(v364 + v365);
  if ((v696 & 1) == 0)
  {
    v698 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v699 = *(v698 + 48);
    v700 = *(v698 + 52);
    swift_allocObject();
    v697 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v697);
    *(v364 + v365) = v697;
  }

  v701 = v697 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__downhillRunCount;
  swift_beginAccess();
  *v701 = v694;
  *(v701 + 4) = 0;
LABEL_187:
  v702 = *(v358 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_trackRunningMetricsPublisher);
  _s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  static Message.with(_:)();
  v703 = *(v364 + v365);
  v704 = swift_isUniquelyReferenced_nonNull_native();
  v705 = *(v364 + v365);
  if ((v704 & 1) == 0)
  {
    v706 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v707 = *(v706 + 48);
    v708 = *(v706 + 52);
    swift_allocObject();
    v705 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v705);
    *(v364 + v365) = v705;
  }

  v709 = v567;
  v710 = v725;
  _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v709, v725, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  (*(v724 + 56))(v710, 0, 1, v581);
  v711 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__trackRunningMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(v710, v705 + v711, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  swift_endAccess();
  v712 = *(v358 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutBuddyStatePublisher);
  v713 = v726;
  WorkoutBuddyStatePublisher.protobuf.getter(v726);
  v714 = *(v364 + v365);
  v715 = swift_isUniquelyReferenced_nonNull_native();
  v716 = *(v364 + v365);
  if ((v715 & 1) == 0)
  {
    v717 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v718 = *(v717 + 48);
    v719 = *(v717 + 52);
    swift_allocObject();
    v716 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v716);
    *(v364 + v365) = v716;
  }

  v720 = v729;
  _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v713, v729, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
  (*(v727 + 56))(v720, 0, 1, v728);
  v721 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutBuddyStatePublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(v720, v716 + v721, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  return swift_endAccess();
}

uint64_t key path getter for GoalPublisher.goal : GoalPublisher@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for GoalPublisher.goal : GoalPublisher(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path getter for GoalPublisher.progress : GoalPublisher@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for GoalPublisher.progress : GoalPublisher(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t Apple_Workout_Core_MetricsPublisher.decodeInto(publisher:)(char *a1)
{
  v2 = v1;
  v627 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher();
  v626 = *(v627 - 8);
  v4 = *(v626 + 64);
  MEMORY[0x28223BE20](v627);
  v571 = &v539 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v570 = &v539 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v625 = &v539 - v10;
  v624 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher();
  v623 = *(v624 - 8);
  v11 = *(v623 + 64);
  MEMORY[0x28223BE20](v624);
  v569 = &v539 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v574 = &v539 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v622 = &v539 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v619 = &v539 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v618 = &v539 - v22;
  v616 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher();
  v615 = *(v616 - 8);
  v23 = *(v615 + 64);
  MEMORY[0x28223BE20](v616);
  v568 = &v539 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v567 = &v539 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v614 = &v539 - v29;
  v613 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  v612 = *(v613 - 8);
  v30 = *(v612 + 64);
  MEMORY[0x28223BE20](v613);
  v566 = (&v539 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v565 = &v539 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v611 = &v539 - v36;
  v610 = type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
  v609 = *(v610 - 8);
  v37 = *(v609 + 64);
  MEMORY[0x28223BE20](v610);
  v564 = (&v539 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39 - 8);
  v562 = &v539 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v608 = &v539 - v43;
  v607 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  v606 = *(v607 - 8);
  v44 = *(v606 + 64);
  MEMORY[0x28223BE20](v607);
  v561 = &v539 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v46 - 8);
  v573 = &v539 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v605 = &v539 - v50;
  v604 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  v603 = *(v604 - 8);
  v51 = *(v603 + 64);
  MEMORY[0x28223BE20](v604);
  v560 = (&v539 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v602 = &v539 - v55;
  v56 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  v600 = *(v56 - 8);
  v601 = v56;
  v57 = *(v600 + 64);
  MEMORY[0x28223BE20](v56);
  v559 = &v539 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  v60 = *(*(v59 - 8) + 64);
  v61 = MEMORY[0x28223BE20](v59 - 8);
  v558 = &v539 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v599 = &v539 - v63;
  v64 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher();
  v597 = *(v64 - 8);
  v598 = v64;
  v65 = *(v597 + 64);
  MEMORY[0x28223BE20](v64);
  v557 = &v539 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  v68 = *(*(v67 - 8) + 64);
  v69 = MEMORY[0x28223BE20](v67 - 8);
  v556 = &v539 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v69);
  v596 = &v539 - v71;
  v72 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher();
  v594 = *(v72 - 8);
  v595 = v72;
  v73 = *(v594 + 64);
  MEMORY[0x28223BE20](v72);
  v555 = &v539 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  v76 = *(*(v75 - 8) + 64);
  v77 = MEMORY[0x28223BE20](v75 - 8);
  v554 = &v539 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v77);
  v593 = &v539 - v79;
  v638 = type metadata accessor for Date();
  v628 = *(v638 - 8);
  v80 = *(v628 + 64);
  v81 = MEMORY[0x28223BE20](v638);
  v635 = &v539 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v81);
  v634 = &v539 - v83;
  v633 = type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement();
  v572 = *(v633 - 8);
  v84 = *(v572 + 64);
  MEMORY[0x28223BE20](v633);
  v636 = (&v539 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0));
  v632 = type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher();
  v631 = *(v632 - 8);
  v86 = *(v631 + 64);
  MEMORY[0x28223BE20](v632);
  v553 = (&v539 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  v89 = *(*(v88 - 8) + 64);
  v90 = MEMORY[0x28223BE20](v88 - 8);
  v552 = &v539 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v90);
  v630 = (&v539 - v92);
  v93 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  v591 = *(v93 - 8);
  v592 = v93;
  v94 = *(v591 + 64);
  MEMORY[0x28223BE20](v93);
  v551 = (&v539 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0));
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  v97 = *(*(v96 - 8) + 64);
  v98 = MEMORY[0x28223BE20](v96 - 8);
  v550 = &v539 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v98);
  v590 = &v539 - v100;
  v101 = type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  v588 = *(v101 - 8);
  v589 = v101;
  v102 = *(v588 + 64);
  MEMORY[0x28223BE20](v101);
  v549 = (&v539 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0));
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  v105 = *(*(v104 - 8) + 64);
  v106 = MEMORY[0x28223BE20](v104 - 8);
  v548 = &v539 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v106);
  v587 = &v539 - v108;
  v109 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher();
  v585 = *(v109 - 8);
  v586 = v109;
  v110 = *(v585 + 64);
  MEMORY[0x28223BE20](v109);
  v547 = (&v539 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  v113 = *(*(v112 - 8) + 64);
  v114 = MEMORY[0x28223BE20](v112 - 8);
  v546 = &v539 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v114);
  v584 = &v539 - v116;
  v117 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  v582 = *(v117 - 8);
  v583 = v117;
  v118 = *(v582 + 64);
  MEMORY[0x28223BE20](v117);
  v545 = (&v539 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0));
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  v121 = *(*(v120 - 8) + 64);
  v122 = MEMORY[0x28223BE20](v120 - 8);
  v544 = &v539 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v122);
  v581 = &v539 - v124;
  v125 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  v579 = *(v125 - 8);
  v580 = v125;
  v126 = *(v579 + 64);
  MEMORY[0x28223BE20](v125);
  v543 = &v539 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  v129 = *(*(v128 - 8) + 64);
  v130 = MEMORY[0x28223BE20](v128 - 8);
  v542 = &v539 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v130);
  v578 = &v539 - v132;
  v133 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher();
  v576 = *(v133 - 8);
  v577 = v133;
  v134 = *(v576 + 64);
  MEMORY[0x28223BE20](v133);
  v541 = (&v539 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0));
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  v137 = *(*(v136 - 8) + 64);
  v138 = MEMORY[0x28223BE20](v136 - 8);
  v540 = &v539 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v138);
  v575 = &v539 - v140;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v142 = *(*(v141 - 8) + 64);
  v143 = MEMORY[0x28223BE20](v141 - 8);
  v145 = &v539 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v143);
  v147 = &v539 - v146;
  v148 = type metadata accessor for UUID();
  v149 = *(v148 - 8);
  v150 = *(v149 + 64);
  v151 = MEMORY[0x28223BE20](v148);
  v621 = &v539 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = MEMORY[0x28223BE20](v151);
  v155 = &v539 - v154;
  MEMORY[0x28223BE20](v153);
  v629 = &v539 - v156;
  v157 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v563 = v2;
  v158 = *(v2 + v157);
  swift_beginAccess();
  LOBYTE(v2) = *(v158 + 16);
  v159 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_isFaked;
  swift_beginAccess();
  v637 = a1;
  a1[v159] = v2;
  v160 = (v158 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes);
  swift_beginAccess();
  v161 = v160[1];
  v639 = v158;
  if (v161 >> 60 == 15)
  {
    swift_beginAccess();
    v162 = *(v158 + 24);
    v163 = *(v158 + 32);

    UUID.init(uuidString:)();

    if ((*(v149 + 48))(v145, 1, v148) == 1)
    {
      _s10Foundation4DateVSgWOhTm_17(v145, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      v164 = type metadata accessor for Logger();
      __swift_project_value_buffer(v164, static WOLog.core);
      v165 = Logger.logObject.getter();
      v166 = static os_log_type_t.error.getter();
      v167 = os_log_type_enabled(v165, v166);
      v168 = v637;
      if (!v167)
      {
        goto LABEL_13;
      }

      v169 = swift_slowAlloc();
      *v169 = 0;
      v170 = "Unable to decode provided UUID for workoutIdentifierDeprecated, generating new UUID";
LABEL_12:
      _os_log_impl(&dword_20AEA4000, v165, v166, v170, v169, 2u);
      MEMORY[0x20F2E9420](v169, -1, -1);
LABEL_13:

      v174 = v629;
      UUID.init()();
      goto LABEL_17;
    }

    v174 = v629;
    (*(v149 + 32))(v629, v145, v148);
  }

  else
  {
    v171 = *v160;
    outlined copy of Data?(*v160, v161);
    UUID.init(woData:)(v171, v161, v147);
    if ((*(v149 + 48))(v147, 1, v148) == 1)
    {
      _s10Foundation4DateVSgWOhTm_17(v147, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      v172 = type metadata accessor for Logger();
      __swift_project_value_buffer(v172, static WOLog.core);
      v165 = Logger.logObject.getter();
      v166 = static os_log_type_t.error.getter();
      v173 = os_log_type_enabled(v165, v166);
      v168 = v637;
      if (!v173)
      {
        goto LABEL_13;
      }

      v169 = swift_slowAlloc();
      *v169 = 0;
      v170 = "Unable to decode provided UUID for workoutIdentifierBytes, generating new UUID";
      goto LABEL_12;
    }

    v174 = v629;
    (*(v149 + 32))(v629, v147, v148);
  }

  v168 = v637;
LABEL_17:
  v175 = *(v149 + 16);
  v175(v155, v174, v148);
  swift_getKeyPath();
  swift_getKeyPath();
  v175(v621, v155, v148);
  v176 = v168;
  static Published.subscript.setter();
  v177 = *(v149 + 8);
  v621 = v148;
  v620 = v149 + 8;
  v617 = v177;
  v177(v155, v148);
  v178 = v639;
  swift_beginAccess();
  v179 = *(v178 + 48);
  v683 = *(v178 + 40);
  v684 = v179;
  Apple_Workout_Core_ConfigurationType.decoded.getter(&v688);
  v180 = v688;
  swift_getKeyPath();
  swift_getKeyPath();
  v687 = v180;
  v181 = v176;
  static Published.subscript.setter();
  swift_beginAccess();
  v182 = *(v178 + 49);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v683) = v182;
  v637 = v181;
  static Published.subscript.setter();
  v183 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elapsedTimeMetricsPublisher;
  swift_beginAccess();
  v184 = v575;
  _s10Foundation4DateVSgWOcTm_11(v178 + v183, v575, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  v185 = v577;
  v186 = *(v576 + 48);
  v187 = v186(v184, 1, v577);
  _s10Foundation4DateVSgWOhTm_17(v184, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  if (v187 != 1)
  {
    v188 = v540;
    _s10Foundation4DateVSgWOcTm_11(v178 + v183, v540, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
    if (v186(v188, 1, v185) == 1)
    {
      v189 = v541;
      *v541 = 0;
      v190 = v189 + *(v185 + 20);
      UnknownStorage.init()();
      if (v186(v188, 1, v185) != 1)
      {
        _s10Foundation4DateVSgWOhTm_17(v188, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
      }
    }

    else
    {
      v189 = v541;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v188, v541, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
    }

    v191 = *&v637[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_elapsedTimeMetricsPublisher];
    v192 = *v189;
    swift_getKeyPath();
    swift_getKeyPath();
    v683 = v192;

    static Published.subscript.setter();
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v189, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
  }

  v193 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__activitySummaryMetricsPublisher;
  swift_beginAccess();
  v194 = v578;
  _s10Foundation4DateVSgWOcTm_11(v178 + v193, v578, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  v195 = v580;
  v196 = *(v579 + 48);
  v197 = v196(v194, 1, v580);
  _s10Foundation4DateVSgWOhTm_17(v194, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  v198 = v197 == 1;
  v199 = v582;
  v200 = v583;
  if (!v198)
  {
    v201 = v178 + v193;
    v202 = v542;
    _s10Foundation4DateVSgWOcTm_11(v201, v542, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
    if (v196(v202, 1, v195) == 1)
    {
      v203 = v543;
      *v543 = 0;
      v204 = &v203[*(v195 + 20)];
      UnknownStorage.init()();
      v205 = *(v195 + 24);
      v206 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
      (*(*(v206 - 8) + 56))(&v203[v205], 1, 1, v206);
      if (v196(v202, 1, v195) != 1)
      {
        _s10Foundation4DateVSgWOhTm_17(v202, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
      }
    }

    else
    {
      v203 = v543;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v202, v543, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
    }

    v207 = *&v637[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_activitySummaryMetricsPublisher];
    Apple_Workout_Core_ActivitySummaryMetricsPublisher.decodeInto(publisher:)();
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v203, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
    v178 = v639;
  }

  v208 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__heartRateMetricsPublisher;
  swift_beginAccess();
  v209 = v581;
  _s10Foundation4DateVSgWOcTm_11(v178 + v208, v581, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  v210 = *(v199 + 48);
  v211 = v210(v209, 1, v200);
  _s10Foundation4DateVSgWOhTm_17(v209, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  v212 = v178;
  if (v211 != 1)
  {
    v213 = v178 + v208;
    v214 = v544;
    _s10Foundation4DateVSgWOcTm_11(v213, v544, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
    if (v210(v214, 1, v200) == 1)
    {
      v215 = v545;
      *v545 = 0;
      *(v215 + 4) = 1;
      v216 = v215 + v200[6];
      UnknownStorage.init()();
      v217 = v215 + v200[7];
      *v217 = 0;
      v217[8] = 1;
      v218 = v215 + v200[8];
      *v218 = 0;
      v218[8] = 1;
      v219 = v215 + v200[9];
      *v219 = 0;
      v219[8] = 1;
      v220 = v200[10];
      v221 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
      (*(*(v221 - 8) + 56))(v215 + v220, 1, 1, v221);
      if (v210(v214, 1, v200) != 1)
      {
        _s10Foundation4DateVSgWOhTm_17(v214, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
      }
    }

    else
    {
      v215 = v545;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v214, v545, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
    }

    v222 = *&v637[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_heartRateMetricsPublisher];
    Apple_Workout_Core_HeartRateMetricsPublisher.decodeInto(publisher:)();
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v215, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
  }

  v223 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__energyMetricsPublisher;
  swift_beginAccess();
  v224 = v584;
  _s10Foundation4DateVSgWOcTm_11(v212 + v223, v584, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  v225 = v586;
  v226 = *(v585 + 48);
  v227 = v226(v224, 1, v586);
  _s10Foundation4DateVSgWOhTm_17(v224, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  if (v227 != 1)
  {
    v228 = v546;
    _s10Foundation4DateVSgWOcTm_11(v212 + v223, v546, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
    if (v226(v228, 1, v225) == 1)
    {
      v229 = v547;
      *v547 = 0;
      v229[1] = 0;
      v230 = v229 + *(v225 + 24);
      UnknownStorage.init()();
      if (v226(v228, 1, v225) != 1)
      {
        _s10Foundation4DateVSgWOhTm_17(v228, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
      }
    }

    else
    {
      v229 = v547;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v228, v547, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
    }

    v231 = *&v637[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_energyMetricsPublisher];
    v232 = *v229;
    swift_getKeyPath();
    swift_getKeyPath();
    v683 = v232;

    static Published.subscript.setter();
    v233 = v229[1];
    swift_getKeyPath();
    swift_getKeyPath();
    v683 = v233;

    static Published.subscript.setter();
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v229, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
  }

  v234 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__platterPublisher;
  swift_beginAccess();
  v235 = v587;
  _s10Foundation4DateVSgWOcTm_11(v212 + v234, v587, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  v236 = v589;
  v237 = *(v588 + 48);
  v238 = v237(v235, 1, v589);
  _s10Foundation4DateVSgWOhTm_17(v235, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  if (v238 != 1)
  {
    v239 = v548;
    _s10Foundation4DateVSgWOcTm_11(v212 + v234, v548, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
    if (v237(v239, 1, v236) == 1)
    {
      v240 = v549;
      *v549 = MEMORY[0x277D84F90];
      v241 = v240 + *(v236 + 20);
      UnknownStorage.init()();
      if (v237(v239, 1, v236) != 1)
      {
        _s10Foundation4DateVSgWOhTm_17(v239, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
      }
    }

    else
    {
      v240 = v549;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v239, v549, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
    }

    Apple_Workout_Core_PlatterPublisher.decodeInto(publisher:)(*&v637[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_platterPublisher]);
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v240, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
  }

  v242 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__goalPublisher;
  swift_beginAccess();
  v243 = v590;
  _s10Foundation4DateVSgWOcTm_11(v212 + v242, v590, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  v244 = v592;
  v245 = *(v591 + 48);
  v246 = v245(v243, 1, v592);
  _s10Foundation4DateVSgWOhTm_17(v243, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  if (v246 != 1)
  {
    v247 = v550;
    _s10Foundation4DateVSgWOcTm_11(v212 + v242, v550, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
    if (v245(v247, 1, v244) == 1)
    {
      v248 = v551;
      *v551 = 0;
      *(v248 + 8) = 1;
      *(v248 + 3) = 0;
      v249 = v248 + *(v244 + 24);
      UnknownStorage.init()();
      if (v245(v247, 1, v244) != 1)
      {
        _s10Foundation4DateVSgWOhTm_17(v247, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
      }
    }

    else
    {
      v248 = v551;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v247, v551, type metadata accessor for Apple_Workout_Core_GoalPublisher);
    }

    v250 = *&v637[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_goalPublisher];
    v251 = *(v248 + 8);
    v683 = *v248;
    v684 = v251;
    v252 = Apple_Workout_Core_GoalType.decoded.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    v686 = v252;

    static Published.subscript.setter();
    v253 = *(v248 + 3);
    swift_getKeyPath();
    swift_getKeyPath();
    LODWORD(v683) = v253;

    static Published.subscript.setter();
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v248, type metadata accessor for Apple_Workout_Core_GoalPublisher);
  }

  v254 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distance;
  swift_beginAccess();
  v255 = *(v212 + v254);
  swift_getKeyPath();
  swift_getKeyPath();
  v683 = v255;
  v256 = v637;
  static Published.subscript.setter();
  v257 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__secondsAheadOfPacer;
  swift_beginAccess();
  v258 = *(v212 + v257);
  swift_getKeyPath();
  swift_getKeyPath();
  v683 = v258;
  v259 = v256;
  static Published.subscript.setter();
  v260 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentPace;
  swift_beginAccess();
  v261 = *(v212 + v260);
  swift_getKeyPath();
  swift_getKeyPath();
  v683 = v261;
  v262 = v259;
  static Published.subscript.setter();
  v263 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averagePace;
  swift_beginAccess();
  v264 = *(v212 + v263);
  swift_getKeyPath();
  swift_getKeyPath();
  v683 = v264;
  v265 = v262;
  static Published.subscript.setter();
  v266 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__rollingPace;
  swift_beginAccess();
  v267 = *(v212 + v266);
  swift_getKeyPath();
  swift_getKeyPath();
  v683 = v267;
  v268 = v265;
  static Published.subscript.setter();
  v269 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__requiredPace;
  swift_beginAccess();
  v270 = *(v212 + v269);
  swift_getKeyPath();
  swift_getKeyPath();
  v683 = v270;
  v271 = v268;
  static Published.subscript.setter();
  v272 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__fastestPace;
  swift_beginAccess();
  v273 = *(v212 + v272);
  swift_getKeyPath();
  swift_getKeyPath();
  v683 = v273;
  v637 = v271;
  static Published.subscript.setter();
  v274 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__lapsMetricsPublisher;
  swift_beginAccess();
  v275 = v630;
  _s10Foundation4DateVSgWOcTm_11(v212 + v274, v630, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  v276 = *(v631 + 48);
  v277 = v632;
  v278 = v276(v275, 1, v632);
  _s10Foundation4DateVSgWOhTm_17(v275, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  if (v278 != 1)
  {
    v279 = v552;
    _s10Foundation4DateVSgWOcTm_11(v212 + v274, v552, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
    if (v276(v279, 1, v277) == 1)
    {
      v280 = v553;
      *v553 = 0;
      v281 = v280 + *(v277 + 20);
      UnknownStorage.init()();
      if (v276(v279, 1, v277) != 1)
      {
        _s10Foundation4DateVSgWOhTm_17(v279, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
      }
    }

    else
    {
      v280 = v553;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v279, v553, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
    }

    v282 = *&v637[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_lapsMetricsPublisher];
    v283 = *v280;
    swift_getKeyPath();
    swift_getKeyPath();
    v683 = v283;

    static Published.subscript.setter();
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v280, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
  }

  v284 = (v212 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationGain);
  swift_beginAccess();
  v285 = *v284;
  v286 = *(v284 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v683 = v285;
  v684 = (v286 & 1) != 0;
  v287 = v637;
  static Published.subscript.setter();
  v288 = (v212 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentElevation);
  swift_beginAccess();
  v289 = *v288;
  v290 = *(v288 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v683 = v289;
  v684 = (v290 & 1) != 0;
  v291 = v637;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v683 = MEMORY[0x277D84F90];
  v637 = v637;
  static Published.subscript.setter();
  v292 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartData;
  swift_beginAccess();
  v293 = *(v212 + v292);
  v294 = *(v293 + 16);
  if (v294)
  {
    v295 = v293 + ((*(v572 + 80) + 32) & ~*(v572 + 80));
    v632 = *(v572 + 72);
    v631 = v628 + 16;
    v630 = (v628 + 8);
    v592 = v293;

    v296 = v636;
    do
    {
      outlined init with copy of Apple_Workout_Core_WorkoutChartDataElement(v295, v296);
      v297 = v633;
      v298 = v296 + *(v633 + 28);
      if (v298[8])
      {
        v299 = *v296;
        v300 = v634;
        Date.init(timeIntervalSinceReferenceDate:)();
        v301 = v296[1] / 100.0;
      }

      else
      {
        v302 = *v298;
        v300 = v634;
        Date.init(timeIntervalSinceReferenceDate:)();
        v303 = (v296 + *(v297 + 32));
        v301 = 0.0;
        if ((v303[1] & 1) == 0)
        {
          v301 = *v303;
        }
      }

      v304 = *v631;
      v305 = v635;
      v306 = v638;
      (*v631)(v635, v300, v638);
      v307 = type metadata accessor for WorkoutChartDataElement();
      v308 = objc_allocWithZone(v307);
      v304(&v308[OBJC_IVAR___WOWorkoutChartDataElement_date], v305, v306);
      *&v308[OBJC_IVAR___WOWorkoutChartDataElement_value] = v301;
      v685.receiver = v308;
      v685.super_class = v307;
      objc_msgSendSuper2(&v685, sel_init);
      v309 = *v630;
      (*v630)(v305, v306);
      v309(v300, v306);
      swift_getKeyPath();
      swift_getKeyPath();
      v310 = static Published.subscript.modify();
      v312 = v311;
      MEMORY[0x20F2E6F30]();
      if (*((*v312 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v312 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v310(&v683, 0);

      v296 = v636;
      outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v636, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement);
      v295 += v632;
      --v294;
      v212 = v639;
    }

    while (v294);
  }

  v313 = (v212 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartUnit);
  swift_beginAccess();
  v315 = *v313;
  v314 = v313[1];

  v316 = MEMORY[0x20F2E6C00](v315, v314);

  v317 = [objc_opt_self() unitFromString_];

  swift_getKeyPath();
  swift_getKeyPath();
  v682 = v317;
  v318 = v637;
  static Published.subscript.setter();
  v319 = (v212 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentCadence);
  swift_beginAccess();
  v320 = *v319;
  v321 = *(v319 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v680 = v320;
  v681 = (v321 & 1) != 0;
  v322 = v318;
  static Published.subscript.setter();
  v324 = v594;
  v323 = v595;
  v325 = (v212 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageCadence);
  swift_beginAccess();
  v326 = *v325;
  v327 = *(v325 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v637 = v318;
  v678 = v326;
  v679 = (v327 & 1) != 0;
  v328 = v318;
  static Published.subscript.setter();
  v329 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__powerMetricsPublisher;
  swift_beginAccess();
  v330 = v593;
  _s10Foundation4DateVSgWOcTm_11(v212 + v329, v593, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  v331 = *(v324 + 48);
  LODWORD(v326) = v331(v330, 1, v323);
  _s10Foundation4DateVSgWOhTm_17(v330, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  v198 = v326 == 1;
  v332 = v597;
  if (!v198)
  {
    v333 = v212 + v329;
    v334 = v554;
    _s10Foundation4DateVSgWOcTm_11(v333, v554, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
    if (v331(v334, 1, v323) == 1)
    {
      v335 = v323;
      v336 = v555;
      *v555 = 0;
      v337 = MEMORY[0x277D84F90];
      *(v336 + 1) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs5Int32V_SdTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      *(v336 + 2) = v337;
      v338 = &v336[v335[7]];
      UnknownStorage.init()();
      v339 = &v336[v335[8]];
      *v339 = 0;
      v339[8] = 1;
      v340 = &v336[v335[9]];
      *v340 = 0;
      v340[8] = 1;
      v341 = &v336[v335[10]];
      *v341 = 0;
      v341[8] = 1;
      v342 = v335[11];
      v343 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
      (*(*(v343 - 8) + 56))(&v336[v342], 1, 1, v343);
      if (v331(v334, 1, v335) != 1)
      {
        _s10Foundation4DateVSgWOhTm_17(v334, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
      }
    }

    else
    {
      v336 = v555;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v334, v555, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
    }

    Apple_Workout_Core_PowerMetricsPublisher.decodeInto(publisher:)(*&v637[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_powerMetricsPublisher]);
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v336, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
  }

  v344 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__waterTemperatureMetricsPublisher;
  swift_beginAccess();
  v345 = v596;
  _s10Foundation4DateVSgWOcTm_11(v212 + v344, v596, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  v346 = *(v332 + 48);
  v347 = v598;
  v348 = v346(v345, 1, v598);
  _s10Foundation4DateVSgWOhTm_17(v345, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  if (v348 != 1)
  {
    v349 = v556;
    _s10Foundation4DateVSgWOcTm_11(v212 + v344, v556, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
    if (v346(v349, 1, v347) == 1)
    {
      v350 = v557;
      *v557 = 0;
      v351 = &v350[v347[5]];
      UnknownStorage.init()();
      v352 = &v350[v347[6]];
      *v352 = 0;
      v352[8] = 1;
      v353 = &v350[v347[7]];
      *v353 = 0;
      v353[8] = 1;
      v354 = v346(v349, 1, v347);
      v355 = v637;
      if (v354 != 1)
      {
        _s10Foundation4DateVSgWOhTm_17(v349, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
      }
    }

    else
    {
      v350 = v557;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v349, v557, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
      v355 = v637;
    }

    v356 = *&v355[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_waterTemperatureMetricsPublisher];
    Apple_Workout_Core_WaterTemperatureMetricsPublisher.decodeInto(publisher:)();
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v350, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
  }

  v357 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__flightsClimbed;
  swift_beginAccess();
  v358 = *(v212 + v357);
  swift_getKeyPath();
  swift_getKeyPath();
  v677 = v358;
  v637 = v637;
  static Published.subscript.setter();
  v359 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutStatePublisher;
  swift_beginAccess();
  v360 = v599;
  _s10Foundation4DateVSgWOcTm_11(v212 + v359, v599, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  v361 = v601;
  v362 = *(v600 + 48);
  v363 = v362(v360, 1, v601);
  _s10Foundation4DateVSgWOhTm_17(v360, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  v364 = v607;
  if (v363 != 1)
  {
    v365 = v212 + v359;
    v366 = v558;
    _s10Foundation4DateVSgWOcTm_11(v365, v558, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
    if (v362(v366, 1, v361) == 1)
    {
      v367 = v559;
      UnknownStorage.init()();
      v368 = *(v361 + 20);
      if (one-time initialization token for defaultInstance != -1)
      {
        swift_once();
      }

      *(v367 + v368) = static Apple_Workout_Core_WorkoutStatePublisher._StorageClass.defaultInstance;
      v369 = v362(v366, 1, v361);

      if (v369 != 1)
      {
        _s10Foundation4DateVSgWOhTm_17(v366, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
      }
    }

    else
    {
      v367 = v559;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v366, v559, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
    }

    Apple_Workout_Core_WorkoutStatePublisher.decodeInto(publisher:)(*&v637[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutStatePublisher]);
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v367, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  }

  v370 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__intervalsMetricsPublisher;
  swift_beginAccess();
  v371 = v602;
  _s10Foundation4DateVSgWOcTm_11(v212 + v370, v602, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  LODWORD(v370) = (*(v603 + 48))(v371, 1, v604);
  _s10Foundation4DateVSgWOhTm_17(v371, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  if (v370 != 1)
  {
    v372 = v560;
    Apple_Workout_Core_MetricsPublisher.intervalsMetricsPublisher.getter(v560);
    v373 = *&v637[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_intervalsMetricsPublisher];
    Apple_Workout_Core_IntervalsMetricsPublisher.decodeInto(publisher:)();
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v372, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
  }

  v374 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__multisportMetricsPublisher;
  swift_beginAccess();
  v375 = v605;
  _s10Foundation4DateVSgWOcTm_11(v212 + v374, v605, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  v376 = *(v606 + 48);
  v377 = v376(v375, 1, v364);
  _s10Foundation4DateVSgWOhTm_17(v375, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  v198 = v377 == 1;
  v378 = v609;
  if (!v198)
  {
    v379 = v573;
    _s10Foundation4DateVSgWOcTm_11(v212 + v374, v573, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
    if (v376(v379, 1, v364) == 1)
    {
      v380 = v364;
      v381 = v561;
      UnknownStorage.init()();
      v382 = *(v380 + 20);
      if (one-time initialization token for defaultInstance != -1)
      {
        swift_once();
      }

      *(v381 + v382) = static Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.defaultInstance;
      v383 = v573;
      v384 = v376(v573, 1, v380);

      if (v384 != 1)
      {
        _s10Foundation4DateVSgWOhTm_17(v383, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
      }
    }

    else
    {
      v381 = v561;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v379, v561, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
    }

    v385 = *&v637[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_multisportMetricsPublisher];
    Apple_Workout_Core_MultiSportMetricsPublisher.decodeInto(publisher:)();
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v381, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
  }

  v386 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__raceInformationPublisher;
  swift_beginAccess();
  v387 = v608;
  _s10Foundation4DateVSgWOcTm_11(v212 + v386, v608, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  v388 = *(v378 + 48);
  v389 = v610;
  v390 = v388(v387, 1, v610);
  _s10Foundation4DateVSgWOhTm_17(v387, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  v391 = v612;
  if (v390 != 1)
  {
    v392 = v562;
    _s10Foundation4DateVSgWOcTm_11(v212 + v386, v562, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
    if (v388(v392, 1, v389) == 1)
    {
      v393 = v564;
      *v564 = MEMORY[0x277D84F90];
      v393[1] = 0;
      *(v393 + 16) = 1;
      v393[3] = 0;
      v393[4] = 0;
      v394 = v393 + *(v389 + 32);
      UnknownStorage.init()();
      if (v388(v392, 1, v389) != 1)
      {
        _s10Foundation4DateVSgWOhTm_17(v392, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
      }
    }

    else
    {
      v393 = v564;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v392, v564, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
    }

    Apple_Workout_Core_RaceInformationPublisher.decodeInto(publisher:)(*&v637[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_raceInformationPublisher]);
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v393, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
  }

  v395 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__racePositionStatePublisher;
  swift_beginAccess();
  v396 = v611;
  _s10Foundation4DateVSgWOcTm_11(v212 + v395, v611, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  v397 = *(v391 + 48);
  v398 = v613;
  v399 = v397(v396, 1, v613);
  _s10Foundation4DateVSgWOhTm_17(v396, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  v400 = v615;
  if (v399 != 1)
  {
    v401 = v212 + v395;
    v402 = v565;
    _s10Foundation4DateVSgWOcTm_11(v401, v565, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
    if (v397(v402, 1, v398) == 1)
    {
      v403 = v566;
      *v566 = 0;
      *(v403 + 8) = 1;
      v403[6] = 0;
      *(v403 + 1) = 0u;
      *(v403 + 2) = 0u;
      v404 = v403 + *(v398 + 40);
      UnknownStorage.init()();
      v405 = *(v398 + 44);
      v406 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
      (*(*(v406 - 8) + 56))(v403 + v405, 1, 1, v406);
      if (v397(v402, 1, v398) != 1)
      {
        _s10Foundation4DateVSgWOhTm_17(v402, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
      }
    }

    else
    {
      v403 = v566;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v402, v566, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
    }

    v407 = *&v637[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_racePositionStatePublisher];
    Apple_Workout_Core_RacePositionStatePublisher.decodeInto(publisher:)();
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v403, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
  }

  v408 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__locationPositionPublisher;
  swift_beginAccess();
  v409 = v614;
  _s10Foundation4DateVSgWOcTm_11(v212 + v408, v614, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  v410 = *(v400 + 48);
  v411 = v616;
  v412 = v410(v409, 1, v616);
  _s10Foundation4DateVSgWOhTm_17(v409, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  v413 = v637;
  if (v412 != 1)
  {
    v414 = v212 + v408;
    v415 = v567;
    _s10Foundation4DateVSgWOcTm_11(v414, v567, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
    if (v410(v415, 1, v411) == 1)
    {
      v416 = v568;
      v417 = MEMORY[0x277D84F90];
      *v568 = MEMORY[0x277D84F90];
      *(v416 + 1) = v417;
      v418 = &v416[*(v411 + 24)];
      UnknownStorage.init()();
      v419 = *(v411 + 28);
      v420 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
      (*(*(v420 - 8) + 56))(&v416[v419], 1, 1, v420);
      if (v410(v415, 1, v411) != 1)
      {
        _s10Foundation4DateVSgWOhTm_17(v415, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
      }
    }

    else
    {
      v416 = v568;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v415, v568, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
    }

    Apple_Workout_Core_LocationPositionPublisher.decodeInto(publisher:)(*&v413[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_locationPositionPublisher]);
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v416, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  }

  v421 = (v212 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distanceGoalFinishTime);
  swift_beginAccess();
  v422 = *v421;
  v423 = *(v421 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v675 = v422;
  v676 = (v423 & 1) != 0;
  v424 = v413;
  static Published.subscript.setter();
  v425 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentIndex;
  swift_beginAccess();
  v426 = *(v212 + v425);
  swift_getKeyPath();
  swift_getKeyPath();
  v674 = v426;
  v427 = v413;
  static Published.subscript.setter();
  v428 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDuration;
  swift_beginAccess();
  v429 = *(v212 + v428);
  swift_getKeyPath();
  swift_getKeyPath();
  v673 = v429;
  v430 = v427;
  static Published.subscript.setter();
  v431 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDistance;
  swift_beginAccess();
  v432 = *(v212 + v431);
  swift_getKeyPath();
  swift_getKeyPath();
  v672 = v432;
  v433 = v430;
  static Published.subscript.setter();
  v434 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentPace;
  swift_beginAccess();
  v435 = *(v212 + v434);
  swift_getKeyPath();
  swift_getKeyPath();
  v671 = v435;
  v436 = v433;
  static Published.subscript.setter();
  v437 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentActiveEnergy;
  swift_beginAccess();
  v438 = *(v212 + v437);
  swift_getKeyPath();
  swift_getKeyPath();
  v670 = v438;
  v439 = v436;
  static Published.subscript.setter();
  v440 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentTotalEnergy;
  swift_beginAccess();
  v441 = *(v212 + v440);
  swift_getKeyPath();
  swift_getKeyPath();
  v669 = v441;
  v442 = v439;
  static Published.subscript.setter();
  v443 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentAveragePower;
  swift_beginAccess();
  v444 = *(v212 + v443);
  swift_getKeyPath();
  swift_getKeyPath();
  v668 = v444;
  v445 = v442;
  static Published.subscript.setter();
  v446 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitIndex;
  swift_beginAccess();
  v447 = *(v212 + v446);
  swift_getKeyPath();
  swift_getKeyPath();
  v667 = v447;
  v448 = v445;
  static Published.subscript.setter();
  v449 = (v212 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitStartDate);
  swift_beginAccess();
  if (v449[1])
  {
    v450 = 1;
    v451 = v618;
  }

  else
  {
    v452 = *v449;
    v451 = v618;
    Date.init(timeIntervalSinceReferenceDate:)();
    v450 = 0;
  }

  (*(v628 + 56))(v451, v450, 1, v638);
  swift_getKeyPath();
  swift_getKeyPath();
  _s10Foundation4DateVSgWOcTm_11(v451, v619, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v453 = v448;
  static Published.subscript.setter();
  _s10Foundation4DateVSgWOhTm_17(v451, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v454 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDuration;
  swift_beginAccess();
  v455 = *(v212 + v454);
  swift_getKeyPath();
  swift_getKeyPath();
  v666 = v455;
  v456 = v453;
  static Published.subscript.setter();
  v457 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDistance;
  swift_beginAccess();
  v458 = *(v212 + v457);
  swift_getKeyPath();
  swift_getKeyPath();
  v665 = v458;
  v459 = v456;
  static Published.subscript.setter();
  v460 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitPace;
  swift_beginAccess();
  v461 = *(v212 + v460);
  swift_getKeyPath();
  swift_getKeyPath();
  v664 = v461;
  v462 = v459;
  static Published.subscript.setter();
  v463 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitAveragePower;
  swift_beginAccess();
  v464 = *(v212 + v463);
  swift_getKeyPath();
  swift_getKeyPath();
  v663 = v464;
  v465 = v462;
  static Published.subscript.setter();
  v466 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTime;
  swift_beginAccess();
  v467 = *(v212 + v466);
  swift_getKeyPath();
  swift_getKeyPath();
  v662 = v467;
  v468 = v465;
  static Published.subscript.setter();
  v469 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTimeWithOffset;
  swift_beginAccess();
  v470 = *(v212 + v469);
  swift_getKeyPath();
  swift_getKeyPath();
  v661 = v470;
  v471 = v468;
  static Published.subscript.setter();
  v472 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerDuration;
  swift_beginAccess();
  v473 = *(v212 + v472);
  swift_getKeyPath();
  swift_getKeyPath();
  v660 = v473;
  v474 = v471;
  static Published.subscript.setter();
  v475 = (v212 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentStrideLength);
  swift_beginAccess();
  v476 = *v475;
  v477 = *(v475 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v658 = v476;
  v659 = (v477 & 1) != 0;
  v478 = v474;
  static Published.subscript.setter();
  v479 = (v212 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageStrideLength);
  swift_beginAccess();
  v480 = *v479;
  v481 = *(v479 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v656 = v480;
  v657 = (v481 & 1) != 0;
  v482 = v474;
  static Published.subscript.setter();
  v483 = (v212 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentVerticalOscillation);
  swift_beginAccess();
  v484 = *v483;
  v485 = *(v483 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v654 = v484;
  v655 = (v485 & 1) != 0;
  v486 = v474;
  static Published.subscript.setter();
  v487 = (v212 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageVerticalOscillation);
  swift_beginAccess();
  v488 = *v487;
  v489 = *(v487 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v652 = v488;
  v653 = (v489 & 1) != 0;
  v490 = v474;
  static Published.subscript.setter();
  v491 = (v212 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentGroundContactTime);
  swift_beginAccess();
  v492 = *v491;
  v493 = *(v491 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v650 = v492;
  v651 = (v493 & 1) != 0;
  v494 = v474;
  static Published.subscript.setter();
  v495 = (v212 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageGroundContactTime);
  swift_beginAccess();
  v496 = *v495;
  v497 = *(v495 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v648 = v496;
  v649 = (v497 & 1) != 0;
  v498 = v474;
  static Published.subscript.setter();
  v499 = (v212 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__descent);
  swift_beginAccess();
  v500 = *v499;
  v501 = *(v499 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v646 = v500;
  v647 = (v501 & 1) != 0;
  v502 = v474;
  static Published.subscript.setter();
  v503 = (v212 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__downhillRunCount);
  swift_beginAccess();
  v504 = *(v503 + 4);
  v638 = v474;
  if (v504)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v644 = 0;
    v645 = 1;
  }

  else
  {
    v505 = *v503;
    swift_getKeyPath();
    swift_getKeyPath();
    v644 = v505;
    v645 = 0;
  }

  v506 = v474;
  static Published.subscript.setter();
  v507 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__trackRunningMetricsPublisher;
  swift_beginAccess();
  v508 = v622;
  _s10Foundation4DateVSgWOcTm_11(v212 + v507, v622, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  v509 = v212;
  v510 = *(v623 + 48);
  v511 = v624;
  v512 = v510(v508, 1, v624);
  _s10Foundation4DateVSgWOhTm_17(v508, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  v513 = v626;
  if (v512 != 1)
  {
    v514 = v574;
    _s10Foundation4DateVSgWOcTm_11(v212 + v507, v574, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
    if (v510(v514, 1, v511) == 1)
    {
      v515 = v569;
      UnknownStorage.init()();
      v516 = *(v511 + 20);
      v517 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo();
      (*(*(v517 - 8) + 56))(v515 + v516, 1, 1, v517);
      v518 = *(v511 + 24);
      v519 = type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator();
      v520 = v515 + v518;
      v521 = v574;
      (*(*(v519 - 8) + 56))(v520, 1, 1, v519);
      v522 = v510(v521, 1, v511);
      v523 = v638;
      if (v522 != 1)
      {
        _s10Foundation4DateVSgWOhTm_17(v521, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
      }
    }

    else
    {
      v515 = v569;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v514, v569, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
      v523 = v638;
    }

    Apple_Workout_Core_TrackRunningMetricsPublisher.decodeInto(publisher:)(*(v523 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_trackRunningMetricsPublisher));
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v515, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
    v509 = v639;
  }

  v524 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutBuddyStatePublisher;
  swift_beginAccess();
  v525 = v625;
  _s10Foundation4DateVSgWOcTm_11(v509 + v524, v625, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  v526 = *(v513 + 48);
  v527 = v627;
  if (v526(v525, 1, v627) == 1)
  {
    v617(v629, v621);
    return _s10Foundation4DateVSgWOhTm_17(v525, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  }

  else
  {
    _s10Foundation4DateVSgWOhTm_17(v525, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
    v529 = v570;
    _s10Foundation4DateVSgWOcTm_11(v509 + v524, v570, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
    if (v526(v529, 1, v527) == 1)
    {
      v530 = v571;
      *v571 = 0;
      *(v530 + 1) = 0;
      v530[16] = 1;
      v531 = &v530[*(v527 + 24)];
      UnknownStorage.init()();
      v532 = v526(v529, 1, v527);
      v533 = v617;
      v534 = v638;
      if (v532 != 1)
      {
        _s10Foundation4DateVSgWOhTm_17(v529, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
      }
    }

    else
    {
      v530 = v571;
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v529, v571, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
      v533 = v617;
      v534 = v638;
    }

    v535 = *(v534 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutBuddyStatePublisher);
    v536 = *v530;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v642) = v536;

    static Published.subscript.setter();
    v537 = v530[16];
    v642 = *(v530 + 1);
    v643 = v537;
    Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState.decoded.getter(&v641);
    v538 = v641;
    swift_getKeyPath();
    swift_getKeyPath();
    v640 = v538;

    static Published.subscript.setter();
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v530, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
    return v533(v629, v621);
  }
}

uint64_t MetricsPublisher.elevationChartUnit.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t MetricsPublisher.segmentIndex.getter()
{
  return MetricsPublisher.segmentIndex.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t MetricsPublisher.isFaked.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_isFaked;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MetricsPublisher.isFaked.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_isFaked;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MetricsPublisher.workoutIdentifier.getter()
{
  return MetricsPublisher.workoutIdentifier.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path getter for MetricsPublisher.workoutIdentifier : MetricsPublisher(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path setter for MetricsPublisher.workoutIdentifier : MetricsPublisher(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v12 = *(v5 + 16);
  v12(&v16 - v10, a1, v4);
  v13 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v12(v9, v11, v4);
  v14 = v13;
  static Published.subscript.setter();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MetricsPublisher.workoutIdentifier.setter(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v4 + 16))(v7, a1, v3);
  v8 = v1;
  static Published.subscript.setter();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*MetricsPublisher.workoutIdentifier.modify(uint64_t *a1))()
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
  return MetricsPublisher.workoutIdentifier.modify;
}

uint64_t key path setter for MetricsPublisher.$workoutIdentifier : MetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4UUIDV_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4UUIDV_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4UUIDVGMd, &_s7Combine9PublishedVy10Foundation4UUIDVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MetricsPublisher.$workoutIdentifier.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4UUIDV_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4UUIDV_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4UUIDVGMd, &_s7Combine9PublishedVy10Foundation4UUIDVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$workoutIdentifier.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4UUIDV_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4UUIDV_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__workoutIdentifier;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4UUIDVGMd, &_s7Combine9PublishedVy10Foundation4UUIDVGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$workoutIdentifier.modify;
}

uint64_t MetricsPublisher.workoutConfigurationType.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path getter for MetricsPublisher.workoutConfigurationType : MetricsPublisher@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for MetricsPublisher.workoutConfigurationType : MetricsPublisher(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t MetricsPublisher.workoutConfigurationType.setter(char *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  return static Published.subscript.setter();
}

uint64_t (*MetricsPublisher.workoutConfigurationType.modify(uint64_t *a1))()
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
  return MetricsPublisher.workoutConfigurationType.modify;
}

uint64_t key path setter for MetricsPublisher.$workoutConfigurationType : MetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore17ConfigurationTypeO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore17ConfigurationTypeO_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore17ConfigurationTypeOGMd, &_s7Combine9PublishedVy11WorkoutCore17ConfigurationTypeOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MetricsPublisher.$workoutConfigurationType.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore17ConfigurationTypeO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore17ConfigurationTypeO_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore17ConfigurationTypeOGMd, &_s7Combine9PublishedVy11WorkoutCore17ConfigurationTypeOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$workoutConfigurationType.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore17ConfigurationTypeO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore17ConfigurationTypeO_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__workoutConfigurationType;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore17ConfigurationTypeOGMd, &_s7Combine9PublishedVy11WorkoutCore17ConfigurationTypeOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$workoutConfigurationType.modify;
}

uint64_t MetricsPublisher.multisportWorkoutInAutoMode.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for MetricsPublisher.multisportWorkoutInAutoMode : MetricsPublisher@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for MetricsPublisher.multisportWorkoutInAutoMode : MetricsPublisher(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t MetricsPublisher.multisportWorkoutInAutoMode.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*MetricsPublisher.multisportWorkoutInAutoMode.modify(uint64_t *a1))()
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
  return MetricsPublisher.multisportWorkoutInAutoMode.modify;
}

uint64_t key path setter for MetricsPublisher.$multisportWorkoutInAutoMode : MetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t MetricsPublisher.$multisportWorkoutInAutoMode.setter(uint64_t a1)
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

uint64_t (*MetricsPublisher.$multisportWorkoutInAutoMode.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__multisportWorkoutInAutoMode;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$multisportWorkoutInAutoMode.modify;
}

uint64_t MetricsPublisher.videoTimeProvider.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  return swift_unknownObjectRetain();
}

uint64_t MetricsPublisher.videoTimeProvider.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  *v6 = a1;
  v6[1] = a2;
  return swift_unknownObjectRelease();
}

double key path getter for MetricsPublisher.distance : MetricsPublisher@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  return key path getter for MetricsPublisher.distance : MetricsPublisher(a1, a2);
}

{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t key path setter for MetricsPublisher.distance : MetricsPublisher(uint64_t *a1, void **a2)
{
  return key path setter for MetricsPublisher.distance : MetricsPublisher(a1, a2);
}

{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t key path setter for MetricsPublisher.$distance : MetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t MetricsPublisher.$distance.setter(uint64_t a1)
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

uint64_t (*MetricsPublisher.$distance.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__distance;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$distance.modify;
}

uint64_t (*MetricsPublisher.secondsAheadOfPacer.modify(uint64_t *a1))()
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
  return MetricsPublisher.secondsAheadOfPacer.modify;
}

uint64_t key path setter for MetricsPublisher.$secondsAheadOfPacer : MetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t MetricsPublisher.$secondsAheadOfPacer.setter(uint64_t a1)
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

uint64_t (*MetricsPublisher.$secondsAheadOfPacer.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__secondsAheadOfPacer;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$secondsAheadOfPacer.modify;
}

uint64_t (*MetricsPublisher.currentPace.modify(uint64_t *a1))()
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
  return MetricsPublisher.currentPace.modify;
}

uint64_t key path setter for MetricsPublisher.$currentPace : MetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t MetricsPublisher.$currentPace.setter(uint64_t a1)
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

uint64_t (*MetricsPublisher.$currentPace.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__currentPace;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$currentPace.modify;
}

uint64_t (*MetricsPublisher.averagePace.modify(uint64_t *a1))()
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
  return MetricsPublisher.averagePace.modify;
}

uint64_t key path setter for MetricsPublisher.$averagePace : MetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t MetricsPublisher.$averagePace.setter(uint64_t a1)
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

uint64_t (*MetricsPublisher.$averagePace.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__averagePace;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$averagePace.modify;
}

uint64_t (*MetricsPublisher.rollingPace.modify(uint64_t *a1))()
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
  return MetricsPublisher.rollingPace.modify;
}

uint64_t key path setter for MetricsPublisher.$rollingPace : MetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t MetricsPublisher.$rollingPace.setter(uint64_t a1)
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

uint64_t (*MetricsPublisher.$rollingPace.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__rollingPace;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$rollingPace.modify;
}

uint64_t (*MetricsPublisher.requiredPace.modify(uint64_t *a1))()
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
  return MetricsPublisher.requiredPace.modify;
}

uint64_t key path setter for MetricsPublisher.$requiredPace : MetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t MetricsPublisher.$requiredPace.setter(uint64_t a1)
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

uint64_t (*MetricsPublisher.$requiredPace.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__requiredPace;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$requiredPace.modify;
}

uint64_t (*MetricsPublisher.fastestPace.modify(uint64_t *a1))()
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
  return MetricsPublisher.fastestPace.modify;
}

uint64_t key path setter for MetricsPublisher.$fastestPace : MetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t MetricsPublisher.$fastestPace.setter(uint64_t a1)
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

uint64_t (*MetricsPublisher.$fastestPace.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__fastestPace;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$fastestPace.modify;
}

uint64_t key path getter for MetricsPublisher.elevationGain : MetricsPublisher@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  return key path getter for MetricsPublisher.elevationGain : MetricsPublisher(a1, a2);
}

{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t key path setter for MetricsPublisher.elevationGain : MetricsPublisher(uint64_t *a1, void **a2)
{
  return key path setter for MetricsPublisher.elevationGain : MetricsPublisher(a1, a2);
}

{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  return static Published.subscript.setter();
}

uint64_t (*MetricsPublisher.elevationGain.modify(uint64_t *a1))()
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
  return MetricsPublisher.elevationGain.modify;
}

uint64_t key path setter for MetricsPublisher.$elevationGain : MetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MetricsPublisher.$elevationGain.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$elevationGain.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__elevationGain;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$elevationGain.modify;
}

uint64_t (*MetricsPublisher.currentElevation.modify(uint64_t *a1))()
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
  return MetricsPublisher.currentElevation.modify;
}

uint64_t key path setter for MetricsPublisher.$currentElevation : MetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MetricsPublisher.$currentElevation.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$currentElevation.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__currentElevation;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$currentElevation.modify;
}

uint64_t MetricsPublisher.elevationChartData.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t (*MetricsPublisher.elevationChartData.modify(uint64_t *a1))()
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
  return MetricsPublisher.elevationChartData.modify;
}

uint64_t key path setter for MetricsPublisher.$elevationChartData : MetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D16ChartDataElementCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D16ChartDataElementCG_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MetricsPublisher.$elevationChartData.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D16ChartDataElementCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D16ChartDataElementCG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$elevationChartData.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D16ChartDataElementCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D16ChartDataElementCG_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__elevationChartData;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$elevationChartData.modify;
}

uint64_t MetricsPublisher.elevationChartUnit.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for MetricsPublisher.elevationChartUnit : MetricsPublisher@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for MetricsPublisher.elevationChartUnit : MetricsPublisher(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return static Published.subscript.setter();
}

uint64_t (*MetricsPublisher.elevationChartUnit.modify(uint64_t *a1))()
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
  return MetricsPublisher.elevationChartUnit.modify;
}

uint64_t key path setter for MetricsPublisher.$elevationChartUnit : MetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo6HKUnitC_GMd, &_s7Combine9PublishedV9PublisherVySo6HKUnitC_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo6HKUnitCGMd, &_s7Combine9PublishedVySo6HKUnitCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MetricsPublisher.$elevationChartUnit.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo6HKUnitC_GMd, &_s7Combine9PublishedV9PublisherVySo6HKUnitC_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo6HKUnitCGMd, &_s7Combine9PublishedVySo6HKUnitCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$elevationChartUnit.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo6HKUnitC_GMd, &_s7Combine9PublishedV9PublisherVySo6HKUnitC_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__elevationChartUnit;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo6HKUnitCGMd, &_s7Combine9PublishedVySo6HKUnitCGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$elevationChartUnit.modify;
}

uint64_t (*MetricsPublisher.currentCadence.modify(uint64_t *a1))()
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
  return MetricsPublisher.currentCadence.modify;
}

uint64_t key path setter for MetricsPublisher.$currentCadence : MetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MetricsPublisher.$currentCadence.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$currentCadence.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__currentCadence;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$currentCadence.modify;
}

uint64_t (*MetricsPublisher.averageCadence.modify(uint64_t *a1))()
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
  return MetricsPublisher.averageCadence.modify;
}

uint64_t key path setter for MetricsPublisher.$averageCadence : MetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MetricsPublisher.$averageCadence.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$averageCadence.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__averageCadence;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$averageCadence.modify;
}

uint64_t key path setter for MetricsPublisher.$flightsClimbed : MetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t MetricsPublisher.$flightsClimbed.setter(uint64_t a1)
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

uint64_t (*MetricsPublisher.$flightsClimbed.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__flightsClimbed;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$flightsClimbed.modify;
}

uint64_t (*MetricsPublisher.distanceGoalFinishTime.modify(uint64_t *a1))()
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
  return MetricsPublisher.distanceGoalFinishTime.modify;
}

uint64_t key path setter for MetricsPublisher.$distanceGoalFinishTime : MetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MetricsPublisher.$distanceGoalFinishTime.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$distanceGoalFinishTime.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__distanceGoalFinishTime;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$distanceGoalFinishTime.modify;
}

uint64_t key path getter for MetricsPublisher.segmentIndex : MetricsPublisher@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for MetricsPublisher.segmentIndex : MetricsPublisher(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t (*MetricsPublisher.segmentIndex.modify(uint64_t *a1))()
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
  return MetricsPublisher.segmentIndex.modify;
}

uint64_t key path setter for MetricsPublisher.$segmentIndex : MetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t MetricsPublisher.$segmentIndex.setter(uint64_t a1)
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

uint64_t (*MetricsPublisher.$segmentIndex.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__segmentIndex;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$segmentIndex.modify;
}

uint64_t key path setter for MetricsPublisher.$segmentDuration : MetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t MetricsPublisher.$segmentDuration.setter(uint64_t a1)
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

uint64_t (*MetricsPublisher.$segmentDuration.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__segmentDuration;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$segmentDuration.modify;
}

uint64_t key path setter for MetricsPublisher.$segmentDistance : MetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t MetricsPublisher.$segmentDistance.setter(uint64_t a1)
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

uint64_t (*MetricsPublisher.$segmentDistance.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__segmentDistance;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$segmentDistance.modify;
}

uint64_t (*MetricsPublisher.segmentPace.modify(uint64_t *a1))()
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
  return MetricsPublisher.segmentPace.modify;
}

uint64_t key path setter for MetricsPublisher.$segmentPace : MetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t MetricsPublisher.$segmentPace.setter(uint64_t a1)
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

uint64_t (*MetricsPublisher.$segmentPace.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__segmentPace;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$segmentPace.modify;
}

uint64_t key path setter for MetricsPublisher.$segmentActiveEnergy : MetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t MetricsPublisher.$segmentActiveEnergy.setter(uint64_t a1)
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

uint64_t (*MetricsPublisher.$segmentActiveEnergy.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__segmentActiveEnergy;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$segmentActiveEnergy.modify;
}

uint64_t key path setter for MetricsPublisher.$segmentTotalEnergy : MetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t MetricsPublisher.$segmentTotalEnergy.setter(uint64_t a1)
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

uint64_t (*MetricsPublisher.$segmentTotalEnergy.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__segmentTotalEnergy;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$segmentTotalEnergy.modify;
}

uint64_t (*MetricsPublisher.segmentAveragePower.modify(uint64_t *a1))()
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
  return MetricsPublisher.segmentAveragePower.modify;
}

uint64_t key path setter for MetricsPublisher.$segmentAveragePower : MetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t MetricsPublisher.$segmentAveragePower.setter(uint64_t a1)
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

uint64_t (*MetricsPublisher.$segmentAveragePower.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__segmentAveragePower;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$segmentAveragePower.modify;
}

uint64_t (*MetricsPublisher.splitIndex.modify(uint64_t *a1))()
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
  return MetricsPublisher.splitIndex.modify;
}

uint64_t key path setter for MetricsPublisher.$splitIndex : MetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t MetricsPublisher.$splitIndex.setter(uint64_t a1)
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

uint64_t (*MetricsPublisher.$splitIndex.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__splitIndex;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$splitIndex.modify;
}

uint64_t (*MetricsPublisher.splitStartDate.modify(uint64_t *a1))()
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
  return MetricsPublisher.splitStartDate.modify;
}

uint64_t key path setter for MetricsPublisher.$splitStartDate : MetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t MetricsPublisher.$splitStartDate.setter(uint64_t a1)
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

uint64_t (*MetricsPublisher.$splitStartDate.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__splitStartDate;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$splitStartDate.modify;
}

uint64_t key path setter for MetricsPublisher.$splitDuration : MetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t MetricsPublisher.$splitDuration.setter(uint64_t a1)
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

uint64_t (*MetricsPublisher.$splitDuration.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__splitDuration;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$splitDuration.modify;
}

uint64_t key path setter for MetricsPublisher.$splitDistance : MetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t MetricsPublisher.$splitDistance.setter(uint64_t a1)
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

uint64_t (*MetricsPublisher.$splitDistance.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__splitDistance;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$splitDistance.modify;
}

uint64_t (*MetricsPublisher.splitPace.modify(uint64_t *a1))()
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
  return MetricsPublisher.splitPace.modify;
}

uint64_t key path setter for MetricsPublisher.$splitPace : MetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t MetricsPublisher.$splitPace.setter(uint64_t a1)
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

uint64_t (*MetricsPublisher.$splitPace.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__splitPace;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$splitPace.modify;
}

uint64_t (*MetricsPublisher.splitAveragePower.modify(uint64_t *a1))()
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
  return MetricsPublisher.splitAveragePower.modify;
}

uint64_t key path setter for MetricsPublisher.$splitAveragePower : MetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t MetricsPublisher.$splitAveragePower.setter(uint64_t a1)
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

uint64_t (*MetricsPublisher.$splitAveragePower.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__splitAveragePower;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$splitAveragePower.modify;
}

uint64_t key path setter for MetricsPublisher.$timerRemainingTime : MetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t MetricsPublisher.$timerRemainingTime.setter(uint64_t a1)
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

uint64_t (*MetricsPublisher.$timerRemainingTime.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__timerRemainingTime;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$timerRemainingTime.modify;
}

uint64_t (*MetricsPublisher.timerRemainingTimeWithOffset.modify(uint64_t *a1))()
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
  return MetricsPublisher.timerRemainingTimeWithOffset.modify;
}

uint64_t key path setter for MetricsPublisher.$timerRemainingTimeWithOffset : MetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t MetricsPublisher.$timerRemainingTimeWithOffset.setter(uint64_t a1)
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

uint64_t (*MetricsPublisher.$timerRemainingTimeWithOffset.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__timerRemainingTimeWithOffset;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$timerRemainingTimeWithOffset.modify;
}

uint64_t (*MetricsPublisher.timerDuration.modify(uint64_t *a1))()
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
  return MetricsPublisher.timerDuration.modify;
}

uint64_t key path setter for MetricsPublisher.$timerDuration : MetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t MetricsPublisher.$timerDuration.setter(uint64_t a1)
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

uint64_t (*MetricsPublisher.$timerDuration.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__timerDuration;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$timerDuration.modify;
}

uint64_t (*MetricsPublisher.currentStrideLength.modify(uint64_t *a1))()
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
  return MetricsPublisher.currentStrideLength.modify;
}

uint64_t key path setter for MetricsPublisher.$currentStrideLength : MetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MetricsPublisher.$currentStrideLength.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$currentStrideLength.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__currentStrideLength;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$currentStrideLength.modify;
}

uint64_t (*MetricsPublisher.averageStrideLength.modify(uint64_t *a1))()
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
  return MetricsPublisher.averageStrideLength.modify;
}

uint64_t key path setter for MetricsPublisher.$averageStrideLength : MetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MetricsPublisher.$averageStrideLength.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$averageStrideLength.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__averageStrideLength;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$averageStrideLength.modify;
}

uint64_t (*MetricsPublisher.currentVerticalOscillation.modify(uint64_t *a1))()
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
  return MetricsPublisher.currentVerticalOscillation.modify;
}

uint64_t key path setter for MetricsPublisher.$currentVerticalOscillation : MetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MetricsPublisher.$currentVerticalOscillation.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$currentVerticalOscillation.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__currentVerticalOscillation;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$currentVerticalOscillation.modify;
}

uint64_t (*MetricsPublisher.averageVerticalOscillation.modify(uint64_t *a1))()
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
  return MetricsPublisher.averageVerticalOscillation.modify;
}

uint64_t key path setter for MetricsPublisher.$averageVerticalOscillation : MetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MetricsPublisher.$averageVerticalOscillation.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$averageVerticalOscillation.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__averageVerticalOscillation;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$averageVerticalOscillation.modify;
}

uint64_t (*MetricsPublisher.currentGroundContactTime.modify(uint64_t *a1))()
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
  return MetricsPublisher.currentGroundContactTime.modify;
}

uint64_t key path setter for MetricsPublisher.$currentGroundContactTime : MetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MetricsPublisher.$currentGroundContactTime.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$currentGroundContactTime.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__currentGroundContactTime;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$currentGroundContactTime.modify;
}

uint64_t (*MetricsPublisher.averageGroundContactTime.modify(uint64_t *a1))()
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
  return MetricsPublisher.averageGroundContactTime.modify;
}

void MetricsPublisher.segmentDuration.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path setter for MetricsPublisher.$averageGroundContactTime : MetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MetricsPublisher.$averageGroundContactTime.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$averageGroundContactTime.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__averageGroundContactTime;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$averageGroundContactTime.modify;
}

uint64_t key path setter for MetricsPublisher.$descent : MetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MetricsPublisher.$descent.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$descent.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__descent;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$descent.modify;
}

uint64_t MetricsPublisher.$workoutIdentifier.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for MetricsPublisher.$workoutIdentifier : MetricsPublisher(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for MetricsPublisher.$downhillRunCount : MetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySuSg_GMd, &_s7Combine9PublishedV9PublisherVySuSg_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySuSgGMd, &_s7Combine9PublishedVySuSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MetricsPublisher.$downhillRunCount.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySuSg_GMd, &_s7Combine9PublishedV9PublisherVySuSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySuSgGMd, &_s7Combine9PublishedVySuSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MetricsPublisher.$downhillRunCount.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySuSg_GMd, &_s7Combine9PublishedV9PublisherVySuSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__downhillRunCount;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySuSgGMd, &_s7Combine9PublishedVySuSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MetricsPublisher.$downhillRunCount.modify;
}

void MetricsPublisher.$workoutIdentifier.modify(uint64_t a1, char a2)
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

id MetricsPublisher.init()()
{
  ObjectType = swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMd, &_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMR);
  v263 = *(v1 - 8);
  v264 = v1;
  v2 = *(v263 + 64);
  MEMORY[0x28223BE20](v1);
  v262 = &v220 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySuGMd, &_s7Combine9PublishedVySuGMR);
  v260 = *(v4 - 8);
  v261 = v4;
  v5 = *(v260 + 64);
  MEMORY[0x28223BE20](v4);
  v259 = &v220 - v6;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17HKActivitySummaryCGMd, &_s7Combine9PublishedVySo17HKActivitySummaryCGMR);
  v257 = *(v258 - 8);
  v7 = *(v257 + 64);
  MEMORY[0x28223BE20](v258);
  v256 = &v220 - v8;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySuSgGMd, &_s7Combine9PublishedVySuSgGMR);
  v254 = *(v255 - 8);
  v9 = *(v254 + 64);
  MEMORY[0x28223BE20](v255);
  v253 = &v220 - v10;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  v250 = *(v251 - 8);
  v11 = *(v250 + 64);
  MEMORY[0x28223BE20](v251);
  v249 = &v220 - v12;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v13 = *(*(v248 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v248);
  v247 = &v220 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v246 = &v220 - v16;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v244 = *(v245 - 8);
  v17 = *(v244 + 64);
  MEMORY[0x28223BE20](v245);
  v243 = &v220 - v18;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo6HKUnitCGMd, &_s7Combine9PublishedVySo6HKUnitCGMR);
  v241 = *(v242 - 8);
  v19 = *(v241 + 64);
  MEMORY[0x28223BE20](v242);
  v240 = &v220 - v20;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  v238 = *(v239 - 8);
  v21 = *(v238 + 64);
  MEMORY[0x28223BE20](v239);
  v237 = &v220 - v22;
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  v270 = *(v267 - 8);
  v23 = *(v270 + 64);
  MEMORY[0x28223BE20](v267);
  v266 = &v220 - v24;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v274 = *(v272 - 8);
  v25 = *(v274 + 64);
  MEMORY[0x28223BE20](v272);
  v27 = &v220 - v26;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt32VGMd, &_s7Combine9PublishedVys6UInt32VGMR);
  v236 = *(v269 - 1);
  v28 = v236[8];
  MEMORY[0x28223BE20](v269);
  v235 = &v220 - v29;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMd, &_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMR);
  v233 = *(v234 - 8);
  v30 = *(v233 + 64);
  MEMORY[0x28223BE20](v234);
  v232 = &v220 - v31;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMd, &_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMR);
  v230 = *(v231 - 8);
  v32 = *(v230 + 64);
  MEMORY[0x28223BE20](v231);
  v229 = &v220 - v33;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMd, &_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMR);
  v227 = *(v228 - 8);
  v34 = *(v227 + 64);
  MEMORY[0x28223BE20](v228);
  v226 = &v220 - v35;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMd, &_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMR);
  v224 = *(v225 - 8);
  v36 = *(v224 + 64);
  MEMORY[0x28223BE20](v225);
  v223 = &v220 - v37;
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v273 = *(v271 - 8);
  v38 = *(v273 + 64);
  MEMORY[0x28223BE20](v271);
  v268 = &v220 - v39;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore17ConfigurationTypeOGMd, &_s7Combine9PublishedVy11WorkoutCore17ConfigurationTypeOGMR);
  v222 = *(v252 - 1);
  v40 = *(v222 + 64);
  MEMORY[0x28223BE20](v252);
  v42 = &v220 - v41;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4UUIDVGMd, &_s7Combine9PublishedVy10Foundation4UUIDVGMR);
  v43 = *(v221 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v221);
  v46 = &v220 - v45;
  v47 = type metadata accessor for UUID();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  v50 = MEMORY[0x28223BE20](v47);
  v52 = &v220 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v54 = &v220 - v53;
  v0[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_isFaked] = 0;
  v55 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__workoutIdentifier;
  UUID.init()();
  (*(v48 + 16))(v52, v54, v47);
  Published.init(initialValue:)();
  (*(v48 + 8))(v54, v47);
  v56 = v0;
  (*(v43 + 32))(&v0[v55], v46, v221);
  v57 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__workoutConfigurationType;
  LOBYTE(v276) = 0;
  Published.init(initialValue:)();
  (*(v222 + 32))(&v56[v57], v42, v252);
  v58 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__multisportWorkoutInAutoMode;
  LOBYTE(v276) = 1;
  v59 = v268;
  Published.init(initialValue:)();
  v60 = *(v273 + 32);
  v273 += 32;
  v252 = v60;
  (v60)(&v56[v58], v59, v271);
  v61 = &v56[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_videoTimeProvider];
  *v61 = 0;
  *(v61 + 1) = 0;
  v62 = v56;
  v63 = &v56[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_gymKitTimeProvider];
  *v63 = 0;
  *(v63 + 1) = 0;
  v64 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_trackRunningMetricsPublisher;
  v65 = type metadata accessor for TrackRunningMetricsPublisher();
  v66 = *(v65 + 48);
  v67 = *(v65 + 52);
  v68 = swift_allocObject();
  v69 = OBJC_IVAR____TtC11WorkoutCore28TrackRunningMetricsPublisher__trackInfo;
  v276 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore16RunningTrackInfoCSgMd, &_s11WorkoutCore16RunningTrackInfoCSgMR);
  v70 = v223;
  Published.init(initialValue:)();
  (*(v224 + 32))(v68 + v69, v70, v225);
  v71 = OBJC_IVAR____TtC11WorkoutCore28TrackRunningMetricsPublisher__trackRunningCoordinator;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v72 = static TrackRunningCoordinator.shared;
  v276 = static TrackRunningCoordinator.shared;
  type metadata accessor for TrackRunningCoordinator();
  v73 = v72;
  v74 = v226;
  Published.init(initialValue:)();
  (*(v227 + 32))(v68 + v71, v74, v228);
  *&v62[v64] = v68;
  v75 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_platterPublisher;
  v76 = type metadata accessor for PlatterPublisher();
  v77 = *(v76 + 48);
  v78 = *(v76 + 52);
  v79 = swift_allocObject();
  v80 = OBJC_IVAR____TtC11WorkoutCore16PlatterPublisher__metricPlatters;
  v276 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore13MetricPlatterVGMd, &_sSay11WorkoutCore13MetricPlatterVGMR);
  v81 = v229;
  Published.init(initialValue:)();
  (*(v230 + 32))(v79 + v80, v81, v231);
  *&v62[v75] = v79;
  v82 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_goalPublisher;
  v83 = type metadata accessor for GoalPublisher();
  v84 = *(v83 + 48);
  v85 = *(v83 + 52);
  v86 = swift_allocObject();
  v87 = OBJC_IVAR____TtC11WorkoutCore13GoalPublisher__goal;
  v276 = 0;
  type metadata accessor for _HKWorkoutGoalType(0);
  v88 = v232;
  Published.init(initialValue:)();
  (*(v233 + 32))(v86 + v87, v88, v234);
  v89 = OBJC_IVAR____TtC11WorkoutCore13GoalPublisher__progress;
  LODWORD(v276) = 0;
  v90 = v235;
  Published.init(initialValue:)();
  (v236[4])(v86 + v89, v90, v269);
  *&v62[v82] = v86;
  v91 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__distance;
  v276 = 0;
  Published.init(initialValue:)();
  v93 = v274 + 32;
  v92 = *(v274 + 32);
  v94 = v272;
  v92(&v62[v91], v27, v272);
  v95 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__secondsAheadOfPacer;
  v276 = 0;
  Published.init(initialValue:)();
  v92(&v62[v95], v27, v94);
  v96 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__currentPace;
  v276 = 0;
  Published.init(initialValue:)();
  v92(&v62[v96], v27, v94);
  v97 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__averagePace;
  v276 = 0;
  Published.init(initialValue:)();
  v92(&v62[v97], v27, v94);
  v98 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__rollingPace;
  v276 = 0;
  Published.init(initialValue:)();
  v92(&v62[v98], v27, v94);
  v99 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__requiredPace;
  v276 = 0;
  Published.init(initialValue:)();
  v92(&v62[v99], v27, v94);
  v269 = v92;
  v274 = v93;
  v100 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__fastestPace;
  v276 = 0;
  Published.init(initialValue:)();
  v92(&v62[v100], v27, v94);
  v101 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__elevationGain;
  v276 = 0;
  v277 = 1;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
  v234 = v27;
  v103 = v266;
  Published.init(initialValue:)();
  v104 = v270 + 32;
  v105 = *(v270 + 32);
  v106 = v267;
  v105(&v62[v101], v103, v267);
  v107 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__currentElevation;
  v276 = 0;
  v277 = 1;
  Published.init(initialValue:)();
  v105(&v62[v107], v103, v106);
  v108 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__elevationChartData;
  v276 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A16ChartDataElementCGMd, &_sSay11WorkoutCore0A16ChartDataElementCGMR);
  v109 = v237;
  Published.init(initialValue:)();
  (*(v238 + 32))(&v62[v108], v109, v239);
  v110 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__elevationChartUnit;
  v276 = [objc_opt_self() meterUnit];
  type metadata accessor for HKUnit(0, &lazy cache variable for type metadata for HKUnit, 0x277CCDAB0);
  v111 = v240;
  Published.init(initialValue:)();
  (*(v241 + 32))(&v62[v110], v111, v242);
  v112 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__currentCadence;
  v276 = 0;
  v277 = 1;
  Published.init(initialValue:)();
  v105(&v62[v112], v103, v106);
  v113 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__averageCadence;
  v276 = 0;
  v277 = 1;
  v235 = v102;
  Published.init(initialValue:)();
  v105(&v62[v113], v103, v106);
  v270 = v104;
  v236 = v105;
  v114 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__flightsClimbed;
  v276 = 0;
  v115 = v234;
  Published.init(initialValue:)();
  v269(&v62[v114], v115, v272);
  v116 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__distanceGoalFinishTime;
  v276 = 0;
  v277 = 1;
  Published.init(initialValue:)();
  v105(&v62[v116], v103, v106);
  v117 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__segmentIndex;
  v276 = 1;
  v118 = v243;
  Published.init(initialValue:)();
  v244 = *(v244 + 32);
  v119 = v245;
  (v244)(&v62[v117], v118, v245);
  v120 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__segmentDuration;
  v276 = 0;
  Published.init(initialValue:)();
  v121 = v115;
  v122 = v115;
  v123 = v272;
  v124 = v62;
  v125 = v269;
  v269(&v62[v120], v121, v272);
  v126 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__segmentDistance;
  v276 = 0;
  Published.init(initialValue:)();
  v125(&v62[v126], v122, v123);
  v127 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__segmentPace;
  v276 = 0;
  Published.init(initialValue:)();
  v125(&v62[v127], v122, v123);
  v128 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__segmentActiveEnergy;
  v276 = 0;
  Published.init(initialValue:)();
  v125(&v62[v128], v122, v123);
  v129 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__segmentTotalEnergy;
  v276 = 0;
  Published.init(initialValue:)();
  v125(&v62[v129], v122, v123);
  v130 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__segmentAveragePower;
  v276 = 0;
  Published.init(initialValue:)();
  v125(&v62[v130], v122, v123);
  v131 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__splitIndex;
  v276 = 1;
  Published.init(initialValue:)();
  (v244)(&v62[v131], v118, v119);
  v132 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__splitStartDate;
  v133 = type metadata accessor for Date();
  v134 = v246;
  (*(*(v133 - 8) + 56))(v246, 1, 1, v133);
  _s10Foundation4DateVSgWOcTm_11(v134, v247, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v135 = v249;
  Published.init(initialValue:)();
  _s10Foundation4DateVSgWOhTm_17(v134, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(v250 + 32))(&v62[v132], v135, v251);
  v136 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__splitDuration;
  v276 = 0;
  Published.init(initialValue:)();
  v137 = v123;
  v138 = v123;
  v139 = v269;
  v269(&v62[v136], v122, v138);
  v140 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__splitDistance;
  v276 = 0;
  Published.init(initialValue:)();
  v139(&v62[v140], v122, v137);
  v141 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__splitPace;
  v276 = 0;
  Published.init(initialValue:)();
  v139(&v62[v141], v122, v137);
  v142 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__splitAveragePower;
  v276 = 0;
  Published.init(initialValue:)();
  v139(&v62[v142], v122, v137);
  v143 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__timerRemainingTime;
  v276 = 0;
  Published.init(initialValue:)();
  v139(&v62[v143], v122, v137);
  v144 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__timerRemainingTimeWithOffset;
  v276 = 0;
  Published.init(initialValue:)();
  v139(&v62[v144], v122, v137);
  v145 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__timerDuration;
  v276 = 0;
  Published.init(initialValue:)();
  v139(&v62[v145], v122, v137);
  v146 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__currentStrideLength;
  v276 = 0;
  v277 = 1;
  v147 = v266;
  Published.init(initialValue:)();
  v148 = v267;
  v149 = v236;
  (v236)(&v124[v146], v147, v267);
  v150 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__averageStrideLength;
  v276 = 0;
  v277 = 1;
  Published.init(initialValue:)();
  v149(&v124[v150], v147, v148);
  v151 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__currentVerticalOscillation;
  v276 = 0;
  v277 = 1;
  Published.init(initialValue:)();
  v149(&v124[v151], v147, v148);
  v152 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__averageVerticalOscillation;
  v276 = 0;
  v277 = 1;
  Published.init(initialValue:)();
  v149(&v124[v152], v147, v148);
  v153 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__currentGroundContactTime;
  v276 = 0;
  v277 = 1;
  Published.init(initialValue:)();
  v149(&v124[v153], v147, v148);
  v154 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__averageGroundContactTime;
  v276 = 0;
  v277 = 1;
  Published.init(initialValue:)();
  v149(&v124[v154], v147, v148);
  v155 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__descent;
  v276 = 0;
  v277 = 1;
  Published.init(initialValue:)();
  v149(&v124[v155], v147, v148);
  v156 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher__downhillRunCount;
  v276 = 0;
  v277 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSuSgMd, &_sSuSgMR);
  v157 = v253;
  Published.init(initialValue:)();
  (*(v254 + 32))(&v124[v156], v157, v255);
  v158 = type metadata accessor for ElapsedTimeMetricsPublisher();
  v159 = *(v158 + 48);
  v160 = *(v158 + 52);
  v161 = swift_allocObject();
  v162 = OBJC_IVAR____TtC11WorkoutCore27ElapsedTimeMetricsPublisher__elapsedTime;
  v276 = 0;
  Published.init(initialValue:)();
  v163 = v272;
  v139((v161 + v162), v122, v272);
  *(v161 + OBJC_IVAR____TtC11WorkoutCore27ElapsedTimeMetricsPublisher_adjustedTime) = 0;
  *&v124[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_elapsedTimeMetricsPublisher] = v161;
  v164 = type metadata accessor for ActivitySummaryMetricsPublisher();
  v165 = *(v164 + 48);
  v166 = *(v164 + 52);
  v167 = swift_allocObject();
  v168 = OBJC_IVAR____TtC11WorkoutCore31ActivitySummaryMetricsPublisher__activitySummary;
  v276 = closure #1 in variable initialization expression of ActivitySummaryMetricsPublisher._activitySummary();
  type metadata accessor for HKUnit(0, &lazy cache variable for type metadata for HKActivitySummary, 0x277CCCFB0);
  v169 = v256;
  Published.init(initialValue:)();
  (*(v257 + 32))(v167 + v168, v169, v258);
  v170 = OBJC_IVAR____TtC11WorkoutCore31ActivitySummaryMetricsPublisher__isWheelchairUser;
  LOBYTE(v276) = 0;
  v171 = v268;
  Published.init(initialValue:)();
  v172 = v252;
  (v252)(v167 + v170, v171, v271);
  *&v124[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_activitySummaryMetricsPublisher] = v167;
  v173 = type metadata accessor for HeartRateMetricsPublisher();
  v174 = *(v173 + 48);
  v175 = *(v173 + 52);
  swift_allocObject();
  *&v124[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_heartRateMetricsPublisher] = HeartRateMetricsPublisher.init()();
  v176 = type metadata accessor for EnergyMetricsPublisher();
  v177 = *(v176 + 48);
  v178 = *(v176 + 52);
  v179 = swift_allocObject();
  v180 = OBJC_IVAR____TtC11WorkoutCore22EnergyMetricsPublisher__activeEnergy;
  v276 = 0;
  Published.init(initialValue:)();
  v139((v179 + v180), v122, v163);
  v181 = OBJC_IVAR____TtC11WorkoutCore22EnergyMetricsPublisher__totalEnergy;
  v276 = 0;
  Published.init(initialValue:)();
  v139((v179 + v181), v122, v163);
  *&v124[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_energyMetricsPublisher] = v179;
  v182 = type metadata accessor for LapsMetricsPublisher();
  v183 = *(v182 + 48);
  v184 = *(v182 + 52);
  v185 = swift_allocObject();
  v186 = OBJC_IVAR____TtC11WorkoutCore20LapsMetricsPublisher__laps;
  v276 = 0;
  v187 = v259;
  Published.init(initialValue:)();
  (*(v260 + 32))(v185 + v186, v187, v261);
  *&v124[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_lapsMetricsPublisher] = v185;
  v188 = type metadata accessor for PowerMetricsPublisher();
  v189 = *(v188 + 48);
  v190 = *(v188 + 52);
  swift_allocObject();
  *&v124[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_powerMetricsPublisher] = PowerMetricsPublisher.init()();
  v191 = type metadata accessor for WaterTemperatureMetricsPublisher();
  v192 = *(v191 + 48);
  v193 = *(v191 + 52);
  swift_allocObject();
  *&v124[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_waterTemperatureMetricsPublisher] = WaterTemperatureMetricsPublisher.init()();
  v194 = type metadata accessor for WorkoutStatePublisher();
  v195 = *(v194 + 48);
  v196 = *(v194 + 52);
  swift_allocObject();
  *&v124[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutStatePublisher] = WorkoutStatePublisher.init()();
  v197 = type metadata accessor for IntervalsMetricsPublisher();
  v198 = *(v197 + 48);
  v199 = *(v197 + 52);
  swift_allocObject();
  *&v124[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_intervalsMetricsPublisher] = IntervalsMetricsPublisher.init()();
  v200 = type metadata accessor for MultisportMetricsPublisher();
  v201 = *(v200 + 48);
  v202 = *(v200 + 52);
  swift_allocObject();
  *&v124[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_multisportMetricsPublisher] = MultisportMetricsPublisher.init()();
  v203 = type metadata accessor for RaceInformationPublisher();
  v204 = *(v203 + 48);
  v205 = *(v203 + 52);
  swift_allocObject();
  *&v124[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_raceInformationPublisher] = RaceInformationPublisher.init()();
  v206 = type metadata accessor for RacePositionStatePublisher();
  v207 = *(v206 + 48);
  v208 = *(v206 + 52);
  swift_allocObject();
  *&v124[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_racePositionStatePublisher] = RacePositionStatePublisher.init()();
  v209 = type metadata accessor for LocationPositionPublisher();
  v210 = *(v209 + 48);
  v211 = *(v209 + 52);
  swift_allocObject();
  *&v124[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_locationPositionPublisher] = LocationPositionPublisher.init()();
  v212 = type metadata accessor for WorkoutBuddyStatePublisher();
  v213 = *(v212 + 48);
  v214 = *(v212 + 52);
  v215 = swift_allocObject();
  v216 = OBJC_IVAR____TtC11WorkoutCore26WorkoutBuddyStatePublisher__supportsWorkoutBuddy;
  LOBYTE(v276) = 0;
  Published.init(initialValue:)();
  v172(v215 + v216, v171, v271);
  v217 = OBJC_IVAR____TtC11WorkoutCore26WorkoutBuddyStatePublisher__state;
  LOBYTE(v276) = 3;
  v218 = v262;
  Published.init(initialValue:)();
  (*(v263 + 32))(v215 + v217, v218, v264);
  *&v124[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutBuddyStatePublisher] = v215;
  v275.receiver = v124;
  v275.super_class = ObjectType;
  return objc_msgSendSuper2(&v275, sel_init);
}

uint64_t MetricsPublisher.retrieveInfo(from:workoutVoiceAvailabilityProvider:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v29 - v7;
  v9 = *(a1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  v10 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  LOBYTE(v10) = v9[v10];
  swift_getKeyPath();
  swift_getKeyPath();
  v31 = v10;
  v11 = v2;
  static Published.subscript.setter();
  v12 = *&v11[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_locationPositionPublisher];
  v13 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  swift_beginAccess();
  _s10Foundation4DateVSgWOcTm_11(&v9[v13], v8, &_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
  v14 = type metadata accessor for WorkoutPlan.Route();
  if ((*(*(v14 - 8) + 48))(v8, 1, v14))
  {
    v15 = MEMORY[0x277D84F90];
  }

  else
  {
    v15 = WorkoutPlan.Route.points.getter();
  }

  _s10Foundation4DateVSgWOhTm_17(v8, &_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
  swift_getKeyPath();
  swift_getKeyPath();
  v30 = v15;

  static Published.subscript.setter();
  type metadata accessor for RaceWorkoutConfiguration();
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    v18 = *&v11[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_raceInformationPublisher];
    v19 = v9;
    RaceInformationPublisher.setRaceInfo(from:)(v17);
  }

  else
  {
    type metadata accessor for MultiSportWorkoutConfiguration();
    if (swift_dynamicCastClass())
    {
      v20 = specialized static MultisportTransitionsStore.read()();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v21 = v30;
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v30) = v21;
      v22 = v11;
      static Published.subscript.setter();
      v23 = *&v22[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutStatePublisher];
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v30) = v21;

      static Published.subscript.setter();
    }
  }

  v24 = *&v11[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutBuddyStatePublisher];
  v25 = LiveWorkoutConfiguration.configureWithWorkoutVoiceMotivation(shouldLog:)(0);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v30) = v25;

  static Published.subscript.setter();
  swift_getKeyPath();
  v30 = a2;
  _s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v26 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__availabilityState;
  swift_beginAccess();
  v27 = *(a2 + v26);
  swift_getKeyPath();
  swift_getKeyPath();
  if (v27 == 1)
  {
    HIBYTE(v29) = 0;
  }

  else
  {
    HIBYTE(v29) = 3;
  }

  return static Published.subscript.setter();
}

uint64_t MetricsPublisher.updatePlaceholderValues(from:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v109 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v104 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v107 = &v94 - v10;
  v110 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  v101 = *(v110 - 8);
  v11 = *(v101 + 64);
  v12 = MEMORY[0x28223BE20](v110);
  v105 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v103 = &v94 - v14;
  v102 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  v15 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v108 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v99 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = (&v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v100 = (&v94 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v38 = (&v94 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = a1;
  v40 = *(a1 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_platterPublisher);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v41 = *(v113 + 16);

  if (v41 < 3)
  {
    return result;
  }

  PlatterPublisher.protobuf.getter(v38);
  v43 = v111;
  Apple_Workout_Core_PlatterPublisher.decodeInto(publisher:)(*(v111 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_platterPublisher));
  outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v38, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
  swift_getKeyPath();
  swift_getKeyPath();
  v106 = v39;
  static Published.subscript.getter();

  if (v115 <= 1u)
  {
    if (!v115)
    {
      v49 = *(v106 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_goalPublisher);
      v50 = v100;
      *v100 = 0;
      *(v50 + 8) = 1;
      v51 = v50 + *(v32 + 24);
      UnknownStorage.init()();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v52 = 0;
      if (v113 <= 3)
      {
        v52 = qword_20B451AD0[v113];
      }

      *v50 = v52;
      *(v50 + 8) = 1;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v53 = v113;
      *(v50 + 12) = v113;
      v54 = *(v43 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_goalPublisher);
      v55 = *(v50 + 8);
      v113 = *v50;
      v114 = v55;
      v56 = Apple_Workout_Core_GoalType.decoded.getter();
      swift_getKeyPath();
      swift_getKeyPath();
      v112 = v56;

      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      LODWORD(v113) = v53;

      static Published.subscript.setter();
      outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v50, type metadata accessor for Apple_Workout_Core_GoalPublisher);
      v44 = v106;
      goto LABEL_13;
    }

    v44 = v106;
    v61 = *(v106 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_intervalsMetricsPublisher);
    IntervalsMetricsPublisher.protobuf.getter(v31);
    v62 = *(v43 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_intervalsMetricsPublisher);
    Apple_Workout_Core_IntervalsMetricsPublisher.decodeInto(publisher:)();
    v47 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher;
    v48 = v31;
    goto LABEL_12;
  }

  if (v115 == 2)
  {
    v44 = v106;
    v57 = *(v106 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_raceInformationPublisher);
    RaceInformationPublisher.protobuf.getter(v23);
    Apple_Workout_Core_RaceInformationPublisher.decodeInto(publisher:)(*(v43 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_raceInformationPublisher));
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v23, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
    v58 = *(v44 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_racePositionStatePublisher);
    v59 = v99;
    RacePositionStatePublisher.protobuf.getter(v99);
    v60 = *(v43 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_racePositionStatePublisher);
    Apple_Workout_Core_RacePositionStatePublisher.decodeInto(publisher:)();
    v47 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher;
    v48 = v59;
    goto LABEL_12;
  }

  v44 = v106;
  if (v115 != 3)
  {
    v45 = *(v106 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_multisportMetricsPublisher);
    MultisportMetricsPublisher.protobuf.getter(v27);
    v46 = *(v111 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_multisportMetricsPublisher);
    Apple_Workout_Core_MultiSportMetricsPublisher.decodeInto(publisher:)();
    v47 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher;
    v48 = v27;
LABEL_12:
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v48, v47);
  }

LABEL_13:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v63 = v113;
  v64 = *(v113 + 16);
  if (v64)
  {
    v65 = 0;
    v66 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_powerMetricsPublisher;
    v95 = (v101 + 56);
    v96 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_heartRateMetricsPublisher;
    v100 = (v101 + 48);
    v101 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_activitySummaryMetricsPublisher;
    v67 = (v113 + 40);
    v97 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_powerMetricsPublisher;
    v94 = v64;
    while (1)
    {
      if (v65 >= *(v63 + 16))
      {
        __break(1u);
        return result;
      }

      v68 = *v67;
      v69 = *(v67 - 8);
      if (v69 > 0xF)
      {
        break;
      }

      if (((1 << v69) & 0xCB00) == 0)
      {
        if (((1 << v69) & 0x3000) != 0)
        {
          v70 = *(v44 + v66);
          v71 = *v67;

          v72 = v109;
          PowerMetricsPublisher.protobuf.getter(v109);
          Apple_Workout_Core_PowerMetricsPublisher.decodeInto(publisher:)(*(v111 + v66));

          v73 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher;
        }

        else
        {
          if (v69 != 10)
          {
            break;
          }

          v74 = v96;
          v75 = *(v44 + v96);
          v76 = *v67;

          v72 = v104;
          HeartRateMetricsPublisher.protobuf.getter(v104);
          v77 = *(v111 + v74);
          Apple_Workout_Core_HeartRateMetricsPublisher.decodeInto(publisher:)();

          v73 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher;
        }

        result = outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v72, v73);
      }

LABEL_16:
      ++v65;
      v67 += 2;
      if (v64 == v65)
      {
      }
    }

    if (v69 >= 7)
    {
      v78 = v102;
      v99 = *(v44 + v101);
      v79 = v108;
      *v108 = 0;
      v80 = *(v78 + 20);

      UnknownStorage.init()();
      v81 = *(v78 + 24);
      v98 = *v95;
      v98(&v79[v81], 1, 1, v110);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v82 = v113;
      v83 = v103;
      HKActivitySummary.protobuf.getter(v103);

      _s10Foundation4DateVSgWOhTm_17(&v79[v81], &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
      _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v83, &v79[v81], type metadata accessor for Apple_Workout_Core_HKActivitySummary);
      v84 = v110;
      v98(&v79[v81], 0, 1, v110);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      LODWORD(v98) = v113;
      *v79 = v113;
      v85 = *(v111 + v101);
      v86 = v107;
      _s10Foundation4DateVSgWOcTm_11(&v79[v81], v107, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
      v87 = *v100;
      v88 = (*v100)(v86, 1, v84);
      v99 = v85;
      if (v88 == 1)
      {
        v89 = v105;
        UnknownStorage.init()();
        v90 = *(v84 + 20);
        if (one-time initialization token for defaultInstance != -1)
        {
          swift_once();
          v84 = v110;
        }

        *(v89 + v90) = static Apple_Workout_Core_HKActivitySummary._StorageClass.defaultInstance;
        v91 = v107;
        v92 = v87(v107, 1, v84);

        v66 = v97;
        v64 = v94;
        if (v92 != 1)
        {
          _s10Foundation4DateVSgWOhTm_17(v91, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
        }
      }

      else
      {
        v89 = v105;
        _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(v86, v105, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
        v66 = v97;
        v64 = v94;
      }

      v93 = Apple_Workout_Core_HKActivitySummary.decoded.getter();
      outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v89, type metadata accessor for Apple_Workout_Core_HKActivitySummary);
      swift_getKeyPath();
      swift_getKeyPath();
      v113 = v93;

      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v113) = v98;

      static Published.subscript.setter();

      result = outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v108, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
      v44 = v106;
    }

    goto LABEL_16;
  }
}

id MetricsPublisher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance MetricsPublisher@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t UUID.woData.getter()
{
  v0 = UUID.uuid.getter();
  v1 = v0;
  v3 = v2;
  v4 = v0 >> 8;
  v5 = v0 >> 16;
  v6 = v0 >> 24;
  v7 = HIDWORD(v0);
  v8 = v0 >> 40;
  v9 = HIWORD(v0);
  v10 = HIBYTE(v0);
  v14 = v2 >> 8;
  v15 = v2 >> 16;
  v16 = v2 >> 24;
  v17 = HIDWORD(v2);
  v18 = v2 >> 40;
  v19 = HIWORD(v2);
  v20 = HIBYTE(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_20B426280;
  *(v11 + 32) = v1;
  *(v11 + 33) = v4;
  *(v11 + 34) = v5;
  *(v11 + 35) = v6;
  *(v11 + 36) = v7;
  *(v11 + 37) = v8;
  *(v11 + 38) = v9;
  *(v11 + 39) = v10;
  *(v11 + 40) = v3;
  *(v11 + 41) = v14;
  *(v11 + 42) = v15;
  *(v11 + 43) = v16;
  *(v11 + 44) = v17;
  *(v11 + 45) = v18;
  *(v11 + 46) = v19;
  *(v11 + 47) = v20;
  v12 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v11);

  return v12;
}

uint64_t UUID.init(woData:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_11;
    }

    v8 = *(result + 16);
    v7 = *(result + 24);
    v9 = __OFSUB__(v7, v8);
    v10 = v7 - v8;
    if (!v9)
    {
      if (v10 == 16)
      {
        goto LABEL_8;
      }

LABEL_11:
      v11 = 1;
      goto LABEL_12;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  if (v6)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 16)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    goto LABEL_16;
  }

  if (BYTE6(a2) != 16)
  {
    goto LABEL_11;
  }

LABEL_8:
  Data._Representation.subscript.getter();
  Data._Representation.subscript.getter();
  Data._Representation.subscript.getter();
  Data._Representation.subscript.getter();
  Data._Representation.subscript.getter();
  Data._Representation.subscript.getter();
  Data._Representation.subscript.getter();
  Data._Representation.subscript.getter();
  Data._Representation.subscript.getter();
  Data._Representation.subscript.getter();
  Data._Representation.subscript.getter();
  Data._Representation.subscript.getter();
  Data._Representation.subscript.getter();
  Data._Representation.subscript.getter();
  Data._Representation.subscript.getter();
  Data._Representation.subscript.getter();
  UUID.init(uuid:)();
  v11 = 0;
LABEL_12:
  outlined consume of Data._Representation(v4, a2);
  v12 = type metadata accessor for UUID();
  v13 = *(*(v12 - 8) + 56);

  return v13(a3, v11, 1, v12);
}

uint64_t MetricsPublisher.wireData()()
{
  v0 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MetricsPublisher.protobuf.getter(v3);
  _s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v3, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  return v4;
}

id static MetricsPublisher.decodeProto(serializedData:)(uint64_t a1, unint64_t a2)
{
  v6 = type metadata accessor for BinaryDecodingOptions();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(v2) init];
  v16 = a1;
  v17 = a2;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  _s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v3)
  {
  }

  else
  {
    Apple_Workout_Core_MetricsPublisher.decodeInto(publisher:)(v12);
    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v11, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  }

  return v12;
}

char *MetricsPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized MetricsPublisher.__allocating_init(serializedData:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

uint64_t protocol witness for ProDatable.wireData() in conformance MetricsPublisher()
{
  v1 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  MetricsPublisher.protobuf.getter(v4);
  _s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  v6 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v4, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  return v6;
}

id protocol witness for static ProDatable.decodeProto(serializedData:) in conformance MetricsPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = static MetricsPublisher.decodeProto(serializedData:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t protocol witness for ProDatable.init(serializedData:) in conformance MetricsPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char **a3@<X8>)
{
  v7 = specialized MetricsPublisher.__allocating_init(serializedData:)(a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void Apple_Workout_Core_ConfigurationType.decoded.getter(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if ((v1[1] & 1) == 0)
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.core);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v3;
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    LOBYTE(v3) = 0;
  }

  *a1 = v3;
}

uint64_t outlined assign with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t _s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_Core_WorkoutChartDataElement(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for HKUnit(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVAC21InternalSwiftProtobuf7MessageAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

char *specialized MetricsPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for BinaryDecodingOptions();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  v17 = a2;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  _s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (!v3)
  {
    v4 = [objc_allocWithZone(v2) init];
    Apple_Workout_Core_MetricsPublisher.decodeInto(publisher:)(v4);

    outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(v12, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  }

  return v4;
}

uint64_t type metadata accessor for MetricsPublisher()
{
  result = type metadata singleton initialization cache for MetricsPublisher;
  if (!type metadata singleton initialization cache for MetricsPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MetricsPublisher()
{
  type metadata accessor for Published<UUID>();
  if (v1 <= 0x3F)
  {
    v22 = *(v0 - 8) + 64;
    type metadata accessor for Published<ConfigurationType>(319, &lazy cache variable for type metadata for Published<ConfigurationType>);
    if (v3 <= 0x3F)
    {
      v23 = *(v2 - 8) + 64;
      type metadata accessor for Published<ConfigurationType>(319, &lazy cache variable for type metadata for Published<Bool>);
      if (v5 <= 0x3F)
      {
        v24 = *(v4 - 8) + 64;
        type metadata accessor for Published<ConfigurationType>(319, &lazy cache variable for type metadata for Published<Double>);
        if (v7 <= 0x3F)
        {
          v8 = *(v6 - 8) + 64;
          _s7Combine9PublishedVySdSgGMaTm_1(319, &lazy cache variable for type metadata for Published<Double?>, &_sSdSgMd, &_sSdSgMR);
          if (v10 <= 0x3F)
          {
            v11 = *(v9 - 8) + 64;
            _s7Combine9PublishedVySdSgGMaTm_1(319, &lazy cache variable for type metadata for Published<[WorkoutChartDataElement]>, &_sSay11WorkoutCore0A16ChartDataElementCGMd, &_sSay11WorkoutCore0A16ChartDataElementCGMR);
            if (v13 <= 0x3F)
            {
              v25 = *(v12 - 8) + 64;
              type metadata accessor for Published<HKUnit>();
              if (v15 <= 0x3F)
              {
                v26 = *(v14 - 8) + 64;
                type metadata accessor for Published<ConfigurationType>(319, &lazy cache variable for type metadata for Published<Int>);
                if (v17 <= 0x3F)
                {
                  v27 = *(v16 - 8) + 64;
                  _s7Combine9PublishedVySdSgGMaTm_1(319, &lazy cache variable for type metadata for Published<Date?>, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                  if (v19 <= 0x3F)
                  {
                    v28 = *(v18 - 8) + 64;
                    _s7Combine9PublishedVySdSgGMaTm_1(319, &lazy cache variable for type metadata for Published<UInt?>, &_sSuSgMd, &_sSuSgMR);
                    if (v21 <= 0x3F)
                    {
                      v29 = *(v20 - 8) + 64;
                      swift_updateClassMetadata2();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for Published<UUID>()
{
  if (!lazy cache variable for type metadata for Published<UUID>)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<UUID>);
    }
  }
}

void type metadata accessor for Published<HKUnit>()
{
  if (!lazy cache variable for type metadata for Published<HKUnit>)
  {
    type metadata accessor for HKUnit(255, &lazy cache variable for type metadata for HKUnit, 0x277CCDAB0);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<HKUnit>);
    }
  }
}

void type metadata accessor for Published<ConfigurationType>(uint64_t a1, unint64_t *a2)
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

void _s7Combine9PublishedVySdSgGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
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

uint64_t _s10Foundation4DateVSgWOcTm_11(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10Foundation4DateVSgWOhTm_17(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of Apple_Workout_Core_WorkoutChartDataElement(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id static IntervalWorkout.supportedGoalTypes(for:activityMoveMode:)(uint64_t a1, uint64_t a2)
{
  result = [objc_allocWithZone(MEMORY[0x277D0A828]) initWithWorkoutActivityType:a1 activityMoveMode:a2];
  if (result)
  {
    v3 = result;
    specialized static IntervalWorkout.supportedGoalTypes(for:)(result);
    v5 = v4;

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized static IntervalWorkout.supportedGoalTypes(for:)(uint64_t a1)
{
  v1 = [objc_opt_self() fiui:a1 supportedGoalTypesForWorkoutSettingsManager:?];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  type metadata accessor for NSNumber();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = __CocoaSet.count.getter();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_19:

    return;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x20F2E7A20](v5, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = [v7 unsignedIntegerValue];
      if (v9 == 3)
      {
      }

      else
      {
        v10 = v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
        }

        v12 = *(v6 + 2);
        v11 = *(v6 + 3);
        if (v12 >= v11 >> 1)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v6);
        }

        *(v6 + 2) = v12 + 1;
        *&v6[8 * v12 + 32] = v10;
      }

      ++v5;
    }

    while (v4 != v5);
    goto LABEL_19;
  }

  __break(1u);
}

id ActivityPausedRingsObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

NSObject *ActivityPausedRingsObserver.__allocating_init(isPaused:)()
{
  v1 = [objc_allocWithZone(v0) init];
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.setter();
  if (one-time initialization token for activityRings != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.activityRings);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *(v7 + 4) = v9;

    _os_log_impl(&dword_20AEA4000, v5, v6, "[ActivityPausedRingsObserver] updating paused state: isPaused=%{BOOL}d", v7, 8u);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  else
  {

    v5 = v4;
  }

  return v4;
}

NSObject *ActivityPausedRingsObserver.init(isPaused:)()
{
  v1 = [v0 init];
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.setter();
  if (one-time initialization token for activityRings != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.activityRings);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *(v7 + 4) = v9;

    _os_log_impl(&dword_20AEA4000, v5, v6, "[ActivityPausedRingsObserver] updating paused state: isPaused=%{BOOL}d", v7, 8u);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  else
  {

    v5 = v4;
  }

  return v4;
}

uint64_t ActivityPausedRingsObserver.isPaused.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void ActivityPausedRingsObserver.isPaused.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  static Published.subscript.setter();
  if (one-time initialization token for activityRings != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.activityRings);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *(v6 + 4) = v7;

    _os_log_impl(&dword_20AEA4000, v4, v5, "[ActivityPausedRingsObserver] updating paused state: isPaused=%{BOOL}d", v6, 8u);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  else
  {

    v4 = v3;
  }
}

void ActivityPausedRingsObserver.isPaused.didset()
{
  if (one-time initialization token for activityRings != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static WOLog.activityRings);
  v5 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *(v4 + 4) = v6;

    _os_log_impl(&dword_20AEA4000, v2, v3, "[ActivityPausedRingsObserver] updating paused state: isPaused=%{BOOL}d", v4, 8u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  else
  {
  }
}

void (*ActivityPausedRingsObserver.isPaused.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(a1 + 8) = *(a1 + 9);
  return ActivityPausedRingsObserver.isPaused.modify;
}

void ActivityPausedRingsObserver.isPaused.modify(uint64_t a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 9) = v2;
  v3 = *a1;
  static Published.subscript.setter();
  if (one-time initialization token for activityRings != -1)
  {
    swift_once();
  }

  v4 = *a1;
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static WOLog.activityRings);
  v6 = v4;
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = *a1;
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *(v9 + 4) = *(a1 + 9);

    _os_log_impl(&dword_20AEA4000, oslog, v7, "[ActivityPausedRingsObserver] updating paused state: isPaused=%{BOOL}d", v9, 8u);
    MEMORY[0x20F2E9420](v9, -1, -1);
    v10 = oslog;
  }

  else
  {

    v10 = *a1;
  }
}

uint64_t key path getter for ActivityPausedRingsObserver.$isPaused : ActivityPausedRingsObserver(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for ActivityPausedRingsObserver.$isPaused : ActivityPausedRingsObserver(uint64_t a1, uint64_t *a2)
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

uint64_t ActivityPausedRingsObserver.$isPaused.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t ActivityPausedRingsObserver.$isPaused.setter(uint64_t a1)
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

void (*ActivityPausedRingsObserver.$isPaused.modify(uint64_t *a1))(uint64_t a1, char a2)
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

  v10 = OBJC_IVAR___WOActivityPausedRingsObserver__isPaused;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return ActivityPausedRingsObserver.$isPaused.modify;
}

void ActivityPausedRingsObserver.$isPaused.modify(uint64_t a1, char a2)
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

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ActivityPausedRingsObserver.State(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      type metadata accessor for NSObject();
      return static NSObject.== infix(_:_:)() & 1;
    }

    return 0;
  }

  return !v2;
}

Swift::Void __swiftcall ActivityPausedRingsObserver.beginObserving()()
{
  v1 = OBJC_IVAR___WOActivityPausedRingsObserver_state;
  if (!*(v0 + OBJC_IVAR___WOActivityPausedRingsObserver_state))
  {
    v2 = [objc_opt_self() fiui_sharedHealthStoreForCarousel];
    if (v2)
    {
      v3 = v2;
      v4 = [objc_allocWithZone(MEMORY[0x277D095A8]) initWithHealthStore_];

      v5 = *(v0 + v1);
      *(v0 + v1) = v4;
      v21 = v4;

      v6 = objc_opt_self();
      v7 = [v6 defaultCenter];
      v8 = objc_opt_self();
      v9 = [v8 initialPauseStateLoadedNotification];
      v10 = objc_opt_self();
      v11 = [v10 mainQueue];
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = partial apply for closure #1 in ActivityPausedRingsObserver.beginObserving();
      v27 = v12;
      aBlock = MEMORY[0x277D85DD0];
      v23 = 1107296256;
      v24 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
      v25 = &block_descriptor_93;
      v13 = _Block_copy(&aBlock);

      v14 = [v7 addObserverForName:v9 object:0 queue:v11 usingBlock:v13];
      _Block_release(v13);
      swift_unknownObjectRelease();

      v15 = [v6 defaultCenter];
      v16 = [v8 didUpdatePauseStateNotification];
      v17 = [v10 mainQueue];
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = partial apply for closure #2 in ActivityPausedRingsObserver.beginObserving();
      v27 = v18;
      aBlock = MEMORY[0x277D85DD0];
      v23 = 1107296256;
      v24 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
      v25 = &block_descriptor_6_10;
      v19 = _Block_copy(&aBlock);

      v20 = [v15 addObserverForName:v16 object:0 queue:v17 usingBlock:v19];
      _Block_release(v19);

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

void closure #1 in ActivityPausedRingsObserver.beginObserving()(uint64_t a1, uint64_t a2, const char *a3)
{
  if (one-time initialization token for activityRings != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.activityRings);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20AEA4000, v5, v6, a3, v7, 2u);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR___WOActivityPausedRingsObserver_state);
    if (v10)
    {
      v11 = v10;
      v12 = [v11 isPaused];
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v12 == v17)
      {
        v14 = v11;
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v18 = v12;
        v13 = v9;
        static Published.subscript.setter();
        v14 = v13;
        v9 = Logger.logObject.getter();
        v15 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v9, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 67109120;
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          *(v16 + 4) = v18;

          _os_log_impl(&dword_20AEA4000, v9, v15, "[ActivityPausedRingsObserver] updating paused state: isPaused=%{BOOL}d", v16, 8u);
          MEMORY[0x20F2E9420](v16, -1, -1);
        }

        else
        {

          v11 = v9;
          v9 = v14;
        }
      }
    }
  }
}

id ActivityPausedRingsObserver.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - v4;
  v6 = OBJC_IVAR___WOActivityPausedRingsObserver__isPaused;
  v11 = 0;
  Published.init(initialValue:)();
  (*(v2 + 32))(&v0[v6], v5, v1);
  *&v0[OBJC_IVAR___WOActivityPausedRingsObserver_state] = 0;
  v7 = type metadata accessor for ActivityPausedRingsObserver();
  v10.receiver = v0;
  v10.super_class = v7;
  return objc_msgSendSuper2(&v10, sel_init);
}

id ActivityPausedRingsObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityPausedRingsObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance ActivityPausedRingsObserver@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActivityPausedRingsObserver();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ActivityPausedRingsObserver.State(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for ActivityPausedRingsObserver.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for ActivityPausedRingsObserver.State(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for ActivityPausedRingsObserver.State(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t TimeBucketedData.__allocating_init(bucketDuration:maxBucketCount:startDate:)(uint64_t a1, char a2, uint64_t a3, double a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  TimeBucketedData.init(bucketDuration:maxBucketCount:startDate:)(a1, a2 & 1, a3, a4);
  return v11;
}

uint64_t TimeBucketedData.Bucket.deinit()
{
  v1 = *(v0 + 32);
  *(v0 + 32) = 0;

  if (v1)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v2 = *(v1 + 32);
      swift_retain_n();

      v1 = v2;
    }

    while (v2);
  }

  return v0;
}

uint64_t TimeBucketedData.Bucket.__deallocating_deinit()
{
  TimeBucketedData.Bucket.deinit();

  return swift_deallocClassInstance();
}

uint64_t TimeBucketedData.init(bucketDuration:maxBucketCount:startDate:)(uint64_t a1, int a2, uint64_t a3, double a4)
{
  v5 = v4;
  v36 = a3;
  v30 = a2;
  v31 = a1;
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = type metadata accessor for OS_dispatch_queue();
  v32 = &unk_20B451C00;
  v33 = v15;
  static DispatchQoS.unspecified.getter();
  v37 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_8(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_7(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v34 + 104))(v10, *MEMORY[0x277D85260], v35);
  *(v4 + 40) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v4 + OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_tail) = 0;
  if (a4 <= 0.0)
  {
    v18 = "0@0:8B16";
    v19 = 0xD00000000000002FLL;
  }

  else
  {
    v16 = v30;
    v17 = v31;
    if ((v30 & 1) != 0 || v31 > 0)
    {
      *(v4 + 16) = a4;
      *(v4 + 24) = v17;
      *(v4 + 32) = v16 & 1;
      v26 = OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_startDate;
      v27 = type metadata accessor for Date();
      (*(*(v27 - 8) + 32))(v5 + v26, v36, v27);
      return v5;
    }

    v18 = "e a positive non-zero duration.";
    v19 = 0xD00000000000003ELL;
  }

  v20 = v18 | 0x8000000000000000;
  lazy protocol witness table accessor for type TimeBucketedData.TimeBucketedDataErrors and conformance TimeBucketedData.TimeBucketedDataErrors();
  swift_allocError();
  *v21 = v19;
  v21[1] = v20;
  swift_willThrow();
  v22 = type metadata accessor for Date();
  (*(*(v22 - 8) + 8))(v36, v22);

  v23 = *(v4 + OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_tail);

  type metadata accessor for TimeBucketedData();
  v24 = *(*v4 + 48);
  v25 = *(*v4 + 52);
  swift_deallocPartialClassInstance();
  return v5;
}

unint64_t lazy protocol witness table accessor for type TimeBucketedData.TimeBucketedDataErrors and conformance TimeBucketedData.TimeBucketedDataErrors()
{
  result = lazy protocol witness table cache variable for type TimeBucketedData.TimeBucketedDataErrors and conformance TimeBucketedData.TimeBucketedDataErrors;
  if (!lazy protocol witness table cache variable for type TimeBucketedData.TimeBucketedDataErrors and conformance TimeBucketedData.TimeBucketedDataErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeBucketedData.TimeBucketedDataErrors and conformance TimeBucketedData.TimeBucketedDataErrors);
  }

  return result;
}

uint64_t type metadata accessor for TimeBucketedData()
{
  result = type metadata singleton initialization cache for TimeBucketedData;
  if (!type metadata singleton initialization cache for TimeBucketedData)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double TimeBucketedData.sum(since:)(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 40);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D851F0], v3);
  v9 = v8;
  v10 = _dispatchPreconditionTest(_:)();
  v11 = (*(v4 + 8))(v7, v3);
  if (v10)
  {
    v22 = 0.0;
    MEMORY[0x28223BE20](v11);
    *(&v21 - 4) = &v22;
    *(&v21 - 3) = v1;
    *(&v21 - 2) = a1;
    OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    __break(1u);
    swift_once();
    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static WOLog.dataLink);
    v13 = v9;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v9;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_20AEA4000, v14, v15, "Unable to calculate sum: %@", v16, 0xCu);
      _sSo8NSObjectCSgWOhTm_20(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v17, -1, -1);
      MEMORY[0x20F2E9420](v16, -1, -1);
    }

    else
    {
    }
  }

  return v22;
}

uint64_t closure #1 in TimeBucketedData.sum(since:)(double *a1, uint64_t a2, uint64_t a3)
{
  v55 = a3;
  v54 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v52 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v52 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v53 = &v52 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v52 - v16;
  MEMORY[0x28223BE20](v15);
  v57 = &v52 - v18;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (&v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(a2 + 40);
  *v23 = v24;
  (*(v20 + 104))(v23, *MEMORY[0x277D85200], v19);
  v25 = v24;
  v26 = _dispatchPreconditionTest(_:)();
  (*(v20 + 8))(v23, v19);
  if (v26)
  {
    outlined init with copy of Date?(v55, v7);
    v27 = *(v9 + 48);
    if (v27(v7, 1, v8) == 1)
    {
      v28 = OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_startDate;
      swift_beginAccess();
      v29 = a2 + v28;
      v30 = v57;
      (*(v9 + 16))(v57, v29, v8);
      v31 = v30;
      if (v27(v7, 1, v8) != 1)
      {
        _sSo8NSObjectCSgWOhTm_20(v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    else
    {
      v31 = v57;
      (*(v9 + 32))(v57, v7, v8);
    }

    v32 = *(a2 + OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_tail);
    v33 = OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_startDate;
    swift_beginAccess();
    (*(v9 + 16))(v17, a2 + v33, v8);
    v34 = *(a2 + 16);

    v35 = v56;
    v36 = specialized static TimeBucketedData.indexForDate(_:startDate:duration:)(v34);
    if (v35)
    {

      v37 = *(v9 + 8);
      v37(v17, v8);
      return (v37)(v31, v8);
    }

    v39 = v36;
    v40 = v17;
    v41 = *(v9 + 8);
    v41(v40, v8);
    v42 = 0.0;
    if (v32)
    {
      while (1)
      {
        v43 = *(v32 + 24);
        if (v39 >= v43)
        {
          break;
        }

        v42 = v42 + *(v32 + 16);
        v44 = *(v32 + 32);

        v32 = v44;
        if (!v44)
        {
          goto LABEL_11;
        }
      }

      if (v43 == v39)
      {

        v45 = v52;
        TimeBucketedData._queueDateForIndex(_:)(v39, v52);

        v46 = v53;
        (*(v9 + 32))(v53, v45, v8);
        v47 = v57;
        Date.timeIntervalSince(_:)();
        v49 = v48;
        v41(v46, v8);
        v41(v47, v8);
        v50 = 1.0 - v49 / v34;
        v51 = *(v32 + 16);

        *v54 = v42 + v50 * v51;
        return result;
      }

      v41(v57, v8);
    }

    else
    {
LABEL_11:
      result = (v41)(v57, v8);
    }

    *v54 = v42;
    return result;
  }

  __break(1u);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t TimeBucketedData.average(since:until:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + 40);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x277D851F0], v5);
  v10;
  v11 = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v9, v5);
  if (v11)
  {
    MEMORY[0x28223BE20](result);
    *(&v13 - 4) = a1;
    *(&v13 - 3) = v2;
    *(&v13 - 2) = a2;
    return OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in TimeBucketedData.average(since:until:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>)
{
  v92 = a3;
  v83 = a4;
  v6 = type metadata accessor for DispatchPredicate();
  v87 = *(v6 - 8);
  v88 = v6;
  v7 = *(v87 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v91 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v90 = &v78 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v78 - v16;
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v81 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v82 = &v78 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v85 = &v78 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v89 = &v78 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v78 - v29;
  outlined init with copy of Date?(a1, v17);
  v31 = *(v19 + 48);
  v32 = v31(v17, 1, v18);
  v93 = a2;
  if (v32 == 1)
  {
    v33 = OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_startDate;
    swift_beginAccess();
    (*(v19 + 16))(v30, a2 + v33, v18);
    if (v31(v17, 1, v18) != 1)
    {
      _sSo8NSObjectCSgWOhTm_20(v17, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(v19 + 32))(v30, v17, v18);
  }

  if (static Date.> infix(_:_:)())
  {
    v79 = v31;
    v34 = *(v19 + 16);
    v35 = v30;
    v36 = v90;
    v80 = v35;
    v84 = v34;
    (v34)(v90);
    (*(v19 + 56))(v36, 0, 1, v18);
    v37 = *(v93 + 40);
    v38 = v9;
    *v9 = v37;
    v39 = v87;
    v40 = v88;
    (*(v87 + 104))(v38, *MEMORY[0x277D85200], v88);
    v41 = v37;
    LOBYTE(v37) = _dispatchPreconditionTest(_:)();
    v43 = *(v39 + 8);
    v42 = (v39 + 8);
    v43(v38, v40);
    if (v37)
    {
      v44 = v91;
      outlined init with copy of Date?(v36, v91);
      v45 = v79;
      if (v79(v44, 1, v18) == 1)
      {
        v46 = OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_startDate;
        v47 = v93;
        swift_beginAccess();
        v48 = v47 + v46;
        v49 = v91;
        v50 = v89;
        v84(v89, v48, v18);
        v51 = v50;
        if (v45(v49, 1, v18) != 1)
        {
          _sSo8NSObjectCSgWOhTm_20(v49, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        }
      }

      else
      {
        v51 = v89;
        (*(v19 + 32))(v89, v44, v18);
      }

      v54 = v93;
      v55 = *(v93 + OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_tail);
      v56 = OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_startDate;
      swift_beginAccess();
      v57 = v54 + v56;
      v58 = v85;
      v84(v85, v57, v18);
      v59 = *(v54 + 16);

      v60 = v86;
      v61 = specialized static TimeBucketedData.indexForDate(_:startDate:duration:)(v59);
      if (v60)
      {

        v62 = *(v19 + 8);
        v62(v58, v18);
        v62(v51, v18);
        _sSo8NSObjectCSgWOhTm_20(v36, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        return (v62)(v80, v18);
      }

      else
      {
        v63 = v61;
        v64 = *(v19 + 8);
        v64(v58, v18);
        v65 = 0.0;
        if (v55)
        {
          while (1)
          {
            v66 = *(v55 + 24);
            if (v63 >= v66)
            {
              break;
            }

            v65 = v65 + *(v55 + 16);
            v67 = *(v55 + 32);

            v55 = v67;
            if (!v67)
            {
              goto LABEL_17;
            }
          }

          if (v66 == v63)
          {

            v71 = v81;
            TimeBucketedData._queueDateForIndex(_:)(v63, v81);

            v72 = v82;
            (*(v19 + 32))(v82, v71, v18);
            v73 = v89;
            Date.timeIntervalSince(_:)();
            v75 = v74;
            v64(v72, v18);
            v64(v73, v18);
            v76 = 1.0 - v75 / v59;
            v77 = *(v55 + 16);

            v65 = v65 + v76 * v77;
          }

          else
          {
            v64(v89, v18);
          }
        }

        else
        {
LABEL_17:
          v64(v89, v18);
        }

        _sSo8NSObjectCSgWOhTm_20(v90, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v68 = v80;
        Date.timeIntervalSince(_:)();
        v70 = v69;
        result = (v64)(v68, v18);
        *v83 = v65 / v70;
      }
    }

    else
    {
      __break(1u);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {
    lazy protocol witness table accessor for type TimeBucketedData.TimeBucketedDataErrors and conformance TimeBucketedData.TimeBucketedDataErrors();
    swift_allocError();
    *v52 = 0xD00000000000002FLL;
    v52[1] = 0x800000020B46E8B0;
    swift_willThrow();
    return (*(v19 + 8))(v30, v18);
  }

  return result;
}

uint64_t TimeBucketedData.reset(newStartDate:)(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v1 + 40);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x277D851F0], v6);
  v19 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  (*(v4 + 16))(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v13 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  (*(v4 + 32))(v14 + v13, &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for closure #1 in TimeBucketedData.reset(newStartDate:);
  *(v15 + 24) = v14;
  aBlock[4] = _sIg_Ieg_TRTA_8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_94;
  v16 = _Block_copy(aBlock);

  dispatch_sync(v19, v16);
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in TimeBucketedData.reset(newStartDate:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_tail);
  *(a1 + OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_tail) = 0;

  (*(v5 + 16))(v8, a2, v4);
  v10 = OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_startDate;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t TimeBucketedData._queueDateForIndex(_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v2 + 40);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      lazy protocol witness table accessor for type TimeBucketedData.TimeBucketedDataErrors and conformance TimeBucketedData.TimeBucketedDataErrors();
      swift_allocError();
      *v19 = 0xD00000000000001CLL;
      v19[1] = 0x800000020B46E890;
      return swift_willThrow();
    }

    else
    {
      v17 = *(v2 + 16) * a1;
      v18 = OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_startDate;
      swift_beginAccess();
      (*(v5 + 16))(v8, v2 + v18, v4);
      Date.addingTimeInterval(_:)();
      return (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TimeBucketedData.addSample(_:date:)(uint64_t a1, double a2)
{
  v27 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v28 = *(v30 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v2 + 40);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D851F0], v13);
  v26 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  result = (*(v14 + 8))(v17, v13);
  if (v18)
  {
    v20 = swift_allocObject();
    swift_weakInit();
    (*(v11 + 16))(&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v10);
    v21 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = a2;
    (*(v11 + 32))(v22 + v21, &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    aBlock[4] = partial apply for closure #1 in TimeBucketedData.addSample(_:date:);
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_12_5;
    v23 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v33 = MEMORY[0x277D84F90];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_8(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_7(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v24 = v29;
    v25 = v32;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v9, v24, v23);
    _Block_release(v23);
    (*(v31 + 8))(v24, v25);
    (*(v28 + 8))(v9, v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in TimeBucketedData.addSample(_:date:)(double a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    TimeBucketedData._queueAddSample(_:date:)(a1);
  }

  return result;
}

uint64_t TimeBucketedData._queueAddSample(_:date:)(double a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v1 + 40);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v12, v8);
  if (v13)
  {
    v16 = OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_startDate;
    swift_beginAccess();
    (*(v4 + 16))(v7, v1 + v16, v3);
    v17 = v31[5];
    v18 = specialized static TimeBucketedData.indexForDate(_:startDate:duration:)(*(v1 + 16));
    if (v17)
    {
      return (*(v4 + 8))(v7, v3);
    }

    else
    {
      v19 = v18;
      (*(v4 + 8))(v7, v3);
      v20 = OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_tail;
      v21 = *(v1 + OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_tail);
      if (v21)
      {
        v22 = 0;
        while (1)
        {
          v23 = v21;
          v24 = *(v21 + 24);
          if (v19 >= v24)
          {
            break;
          }

          v21 = *(v23 + 32);
          v22 = v23;
          if (!v21)
          {
            goto LABEL_10;
          }
        }

        if (v24 == v19)
        {
          *(v23 + 16) = *(v23 + 16) + a1;
        }

        else
        {
          type metadata accessor for TimeBucketedData.Bucket();
          v28 = swift_allocObject();
          *(v28 + 16) = a1;
          *(v28 + 24) = v19;
          *(v28 + 32) = v23;
          if (v22)
          {
            v29 = *(v22 + 32);
            *(v22 + 32) = v28;
          }

          else
          {
            v30 = *(v1 + v20);
            *(v1 + v20) = v28;
          }

          swift_retain_n();
        }
      }

      else
      {
        v23 = 0;
LABEL_10:
        type metadata accessor for TimeBucketedData.Bucket();
        v25 = swift_allocObject();
        *(v25 + 16) = a1;
        *(v25 + 24) = v19;
        *(v25 + 32) = 0;
        if (v23)
        {
          v26 = *(v23 + 32);
          *(v23 + 32) = v25;
        }

        else
        {
          v27 = *(v1 + v20);
          *(v1 + v20) = v25;
        }
      }

      TimeBucketedData._queueCullBucketsAsNecessary()();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TimeBucketedData._queueCullBucketsAsNecessary()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 40);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if ((*(v0 + 32) & 1) == 0)
  {
    v9 = *(v0 + 24);
    v10 = *(v0 + OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_tail);

    if (v10)
    {
      for (i = 0; !__OFADD__(i, 1); ++i)
      {
        if (i + 1 >= v9)
        {
          v13 = *(v10 + 32);
          *(v10 + 32) = 0;
        }

        v12 = *(v10 + 32);

        v10 = v12;
        if (!v12)
        {
          return result;
        }
      }

      __break(1u);
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t TimeBucketedData.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_startDate;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_tail);

  return v0;
}

uint64_t TimeBucketedData.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_startDate;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11WorkoutCore16TimeBucketedData_tail);

  v4 = *(*v0 + 12);
  v5 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in TimeBucketedData.reset(newStartDate:)()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return closure #1 in TimeBucketedData.reset(newStartDate:)(v2, v3);
}

uint64_t partial apply for closure #1 in TimeBucketedData.addSample(_:date:)()
{
  v1 = *(*(type metadata accessor for Date() - 8) + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return closure #1 in TimeBucketedData.addSample(_:date:)(v3);
}

uint64_t type metadata completion function for TimeBucketedData()
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

uint64_t getEnumTagSinglePayload for TimeBucketedData.TimeBucketedDataErrors(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TimeBucketedData.TimeBucketedDataErrors(uint64_t result, int a2, int a3)
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

uint64_t specialized static TimeBucketedData.indexForDate(_:startDate:duration:)(double a1)
{
  type metadata accessor for Date();
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_8(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    lazy protocol witness table accessor for type TimeBucketedData.TimeBucketedDataErrors and conformance TimeBucketedData.TimeBucketedDataErrors();
    swift_allocError();
    *v2 = 0xD000000000000038;
    v2[1] = 0x800000020B46E850;
    return swift_willThrow();
  }

  result = Date.timeIntervalSince(_:)();
  v5 = floor(v4 / a1);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 < 9.22337204e18)
  {
    return v5;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t Measurement<>.hkQuantity.getter()
{
  return MEMORY[0x282136770]();
}

{
  return MEMORY[0x282136778]();
}

{
  return MEMORY[0x282136780]();
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = MEMORY[0x28211C320](_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = MEMORY[0x28211D318](options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t type metadata accessor for WeatherCondition()
{
  return MEMORY[0x282135680]();
}

{
  return MEMORY[0x282160B88]();
}

uint64_t static WorkoutAlert<>.power(_:unit:metric:)()
{
  return MEMORY[0x282136940]();
}

{
  return MEMORY[0x282136968]();
}

uint64_t static WorkoutAlert<>.speed(_:unit:metric:)()
{
  return MEMORY[0x282136948]();
}

{
  return MEMORY[0x282136970]();
}

uint64_t static WorkoutAlert<>.cadence(_:unit:)()
{
  return MEMORY[0x282136950]();
}

{
  return MEMORY[0x282136978]();
}

uint64_t static PortableEnum<>.== infix(_:_:)()
{
  return MEMORY[0x2821B05D8]();
}

{
  return MEMORY[0x2821B05E0]();
}

uint64_t type metadata accessor for Artwork()
{
  return MEMORY[0x2821B4880]();
}

{
  return MEMORY[0x282124F10]();
}

Swift::String __swiftcall MediaSuggesterService.hello()()
{
  v0 = MEMORY[0x28217DF08]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)()
{
  return MEMORY[0x28217E248]();
}

{
  return MEMORY[0x28217E250]();
}

uint64_t dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)()
{
  return MEMORY[0x28217E290]();
}

{
  return MEMORY[0x28217E298]();
}

uint64_t dispatch thunk of Decoder.decodeSingularInt32Field(value:)()
{
  return MEMORY[0x28217E2E0]();
}

{
  return MEMORY[0x28217E2E8]();
}

uint64_t dispatch thunk of Decoder.decodeSingularDoubleField(value:)()
{
  return MEMORY[0x28217E320]();
}

{
  return MEMORY[0x28217E328]();
}

uint64_t dispatch thunk of Decoder.decodeSingularStringField(value:)()
{
  return MEMORY[0x28217E338]();
}

{
  return MEMORY[0x28217E340]();
}

uint64_t dispatch thunk of Decoder.decodeSingularUInt32Field(value:)()
{
  return MEMORY[0x28217E348]();
}

{
  return MEMORY[0x28217E350]();
}

uint64_t dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)()
{
  return MEMORY[0x28217E468]();
}

{
  return MEMORY[0x28217E470]();
}

Swift::String __swiftcall BinaryFloatingPoint.formatted()()
{
  v0 = MEMORY[0x28211E6C8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = MEMORY[0x2821FBCE0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.firstLetterCapitalized()()
{
  v0 = MEMORY[0x282169278]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return MEMORY[0x2821FBF68]();
}

{
  return MEMORY[0x2821FBFB0]();
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return MEMORY[0x2821FC138]();
}

{
  return MEMORY[0x2821FC150]();
}

{
  return MEMORY[0x2821FC158]();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return MEMORY[0x2821FC1B8]();
}

{
  return MEMORY[0x2821FC1D0]();
}

{
  return MEMORY[0x2821FC1D8]();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FD988]();
}

{
  return MEMORY[0x2821FD998]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA00]();
}

{
  return MEMORY[0x2821FDA08]();
}

{
  return MEMORY[0x2821FDA10]();
}

{
  return MEMORY[0x2821FDA18]();
}

{
  return MEMORY[0x2821FDA20]();
}

{
  return MEMORY[0x2821FDA40]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB40]();
}

{
  return MEMORY[0x2821FDB48]();
}

{
  return MEMORY[0x2821FDB50]();
}

{
  return MEMORY[0x2821FDB58]();
}

{
  return MEMORY[0x2821FDB60]();
}

{
  return MEMORY[0x2821FDB80]();
}