void WorkoutSessionDeviceObserver.recordWorkoutDevices(_:)(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutDevice();
  v3 = *(v2 - 8);
  v4.n128_f64[0] = MEMORY[0x28223BE20](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v9 = *(v3 + 16);
    v8 = v3 + 16;
    v10 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v22 = *(v8 + 56);
    v23 = v9;
    v11 = (v8 - 8);
    v12 = MEMORY[0x277D84F90];
    v21[1] = v8;
    v9(v6, v10, v2, v4);
    while (1)
    {
      v14 = WorkoutDevice.productModel.getter();
      v16 = v15;
      (*v11)(v6, v2);
      if (v16)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
        }

        v18 = *(v12 + 2);
        v17 = *(v12 + 3);
        if (v18 >= v17 >> 1)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v12);
        }

        *(v12 + 2) = v18 + 1;
        v13 = &v12[16 * v18];
        *(v13 + 4) = v14;
        *(v13 + 5) = v16;
      }

      v10 += v22;
      if (!--v7)
      {
        break;
      }

      v23(v6, v10, v2, v4);
    }
  }

  v19 = [*(v21[0] + 16) analyticsEventBuilder];
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v19 recordSensorTypes_];
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue)
  {
    _sSo17OS_dispatch_queueCMaTm_3(255, &lazy cache variable for type metadata for OS_dispatch_queue);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue);
  }

  return result;
}

uint64_t outlined destroy of OS_dispatch_queue.SchedulerOptions?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_3(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

id specialized WorkoutSessionDeviceObserver.init(workout:sessionControls:sessionViewModel:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v36 = *(v11 - 8);
  v37 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v15 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  *(v3 + 72) = v15;
  type metadata accessor for WorkoutDevicesProvider();
  v16 = static WorkoutDevicesProvider.shared.getter();
  *(v4 + 80) = v16;
  *(v4 + 16) = a1;
  outlined init with copy of SessionControls(a2, v4 + 24);
  *(v4 + 64) = a3;
  v17 = objc_opt_self();
  v39 = a2;
  v18 = v17;
  v19 = v16;
  v20 = a1;

  result = [v18 sharedConnection];
  if (result)
  {
    v22 = result;
    v41 = _sSo17OS_dispatch_queueCMaTm_3(0, &lazy cache variable for type metadata for MCProfileConnection);
    v42 = MEMORY[0x277D7E770];
    aBlock[0] = v22;
    v23 = type metadata accessor for CoreAnalyticsReporter();
    swift_allocObject();
    v24 = CoreAnalyticsReporter.init()();
    v45 = v23;
    v46 = MEMORY[0x277D7DDF8];
    v44 = v24;
    type metadata accessor for SessionSensorUnavailableEvaluator();
    swift_allocObject();
    v25 = v20;
    *(v4 + 88) = SessionSensorUnavailableEvaluator.init(workout:devicesProvider:healthDataSubmissionAllowedProvider:coreAnalyticsReporter:)();
    _sSo17OS_dispatch_queueCMaTm_3(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v26 = static OS_dispatch_queue.main.getter();
    v27 = swift_allocObject();
    *(v27 + 16) = v25;
    *(v27 + 24) = v4;
    v42 = partial apply for closure #1 in WorkoutSessionDeviceObserver.init(workout:sessionControls:sessionViewModel:);
    v43 = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    v41 = &block_descriptor_28;
    v28 = _Block_copy(aBlock);
    v29 = v25;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = v14;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type Published<[WorkoutDevice]>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F30C1F0](0, v13, v10, v28);
    _Block_release(v28);

    (*(v38 + 8))(v10, v8);
    (*(v36 + 8))(v13, v37);
    v30 = dispatch thunk of WorkoutDevicesProvider.devices.getter();
    WorkoutSessionDeviceObserver.evaluateShowingHeartRate(for:)(v30);

    v31 = dispatch thunk of WorkoutDevicesProvider.devices.getter();
    WorkoutSessionDeviceObserver.evaluateShowingPedometerMetrics(for:)(v31);

    LOBYTE(v25) = dispatch thunk of WorkoutDevicesProvider.pairedWatchNearby.getter();
    LOBYTE(v22) = dispatch thunk of WorkoutDevicesProvider.pairedWatchUnlockedAndOnWrist.getter();
    v32 = [*(v4 + 16) analyticsEventBuilder];
    [v32 recordPairedWatchNearby_];

    v33 = [*(v4 + 16) analyticsEventBuilder];
    [v33 recordPairedWatchUnlockedAndOnWrist_];

    v34 = dispatch thunk of WorkoutDevicesProvider.devices.getter();
    WorkoutSessionDeviceObserver.recordWorkoutDevices(_:)(v34);

    WorkoutSessionDeviceObserver.startObserving()();
    __swift_destroy_boxed_opaque_existential_0Tm_3(v39);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _sSo17OS_dispatch_queueCMaTm_3(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type Published<[WorkoutDevice]>.Publisher and conformance Published<A>.Publisher(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Int SessionPauseResumeAction.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SessionPauseResumeAction()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SessionPauseResumeAction()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type SessionPauseResumeAction and conformance SessionPauseResumeAction()
{
  result = lazy protocol witness table cache variable for type SessionPauseResumeAction and conformance SessionPauseResumeAction;
  if (!lazy protocol witness table cache variable for type SessionPauseResumeAction and conformance SessionPauseResumeAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SessionPauseResumeAction and conformance SessionPauseResumeAction);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionPauseResumeAction(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SessionPauseResumeAction(uint64_t result, unsigned int a2, unsigned int a3)
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

double Font.Weight.uiFontWeight.getter()
{
  static Font.Weight.ultraLight.getter();
  if (static Font.Weight.== infix(_:_:)())
  {
    v0 = MEMORY[0x277D74438];
  }

  else
  {
    static Font.Weight.thin.getter();
    if (static Font.Weight.== infix(_:_:)())
    {
      v0 = MEMORY[0x277D74428];
    }

    else
    {
      static Font.Weight.light.getter();
      if (static Font.Weight.== infix(_:_:)())
      {
        v0 = MEMORY[0x277D74408];
      }

      else
      {
        static Font.Weight.regular.getter();
        v1 = static Font.Weight.== infix(_:_:)();
        v0 = MEMORY[0x277D74418];
        if ((v1 & 1) == 0)
        {
          static Font.Weight.medium.getter();
          if (static Font.Weight.== infix(_:_:)())
          {
            v0 = MEMORY[0x277D74410];
          }

          else
          {
            static Font.Weight.semibold.getter();
            if (static Font.Weight.== infix(_:_:)())
            {
              v0 = MEMORY[0x277D74420];
            }

            else
            {
              static Font.Weight.bold.getter();
              if (static Font.Weight.== infix(_:_:)())
              {
                v0 = MEMORY[0x277D743F8];
              }

              else
              {
                static Font.Weight.heavy.getter();
                if (static Font.Weight.== infix(_:_:)())
                {
                  v0 = MEMORY[0x277D74400];
                }

                else
                {
                  static Font.Weight.black.getter();
                  if (static Font.Weight.== infix(_:_:)())
                  {
                    v0 = MEMORY[0x277D743E8];
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return *v0;
}

uint64_t TargetZone.ZoneType.stepperText(activityType:)(void *a1)
{
  v3 = type metadata accessor for TargetZone.ZoneType();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x277D7DE48] || v8 == *MEMORY[0x277D7DE40] || v8 == *MEMORY[0x277D7DE60])
  {
    goto LABEL_30;
  }

  if (v8 == *MEMORY[0x277D7DE70] || v8 == *MEMORY[0x277D7DE58])
  {
    if ([a1 effectiveTypeIdentifier] == 13)
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v12 = WorkoutUIBundle.super.isa;
      v22 = 0xE000000000000000;
      v13 = 0xD000000000000024;
      v14 = 0x800000020CBA0640;
    }

    else
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v12 = WorkoutUIBundle.super.isa;
      v22 = 0xE000000000000000;
      v14 = 0x800000020CBA0620;
      v13 = 0xD00000000000001CLL;
    }

    v16 = 0x617A696C61636F4CLL;
    v17 = 0xEB00000000656C62;
  }

  else
  {
    if (v8 != *MEMORY[0x277D7DE68] && v8 != *MEMORY[0x277D7DE50])
    {
      while (1)
      {
LABEL_30:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }

    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v12 = WorkoutUIBundle.super.isa;
    v22 = 0xE000000000000000;
    v16 = 0x617A696C61636F4CLL;
    v17 = 0xEB00000000656C62;
    v13 = 0xD00000000000001FLL;
    v14 = 0x800000020CBA0600;
  }

  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v19 = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v13, *&v16, v12, v18, *(&v22 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t TargetZone.ZoneType.stepperColor.getter()
{
  v1 = type metadata accessor for TargetZone.ZoneType();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1, v3);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == *MEMORY[0x277D7DE48] || v6 == *MEMORY[0x277D7DE40] || v6 == *MEMORY[0x277D7DE60])
  {
    goto LABEL_20;
  }

  if (v6 == *MEMORY[0x277D7DE70] || v6 == *MEMORY[0x277D7DE58])
  {
    return static Color.white.getter();
  }

  if (v6 != *MEMORY[0x277D7DE68] && v6 != *MEMORY[0x277D7DE50])
  {
    while (1)
    {
LABEL_20:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return static Color.blue.getter();
}

id TargetZone.ZoneType.minimumPaceRangeValue(activityType:userDistanceUnit:)(void *a1, uint64_t a2)
{
  if (a2 == 3 || a2 == 2)
  {
    return [a1 effectiveTypeIdentifier];
  }

  _StringGuts.grow(_:)(36);
  MEMORY[0x20F30BC00](0xD000000000000014, 0x800000020CBA0830);
  type metadata accessor for FIUIDistanceUnit(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x20F30BC00](0x70757320746F6E20, 0xEE00646574726F70);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id TargetZone.ZoneType.maximumPaceRangeValue(activityType:userDistanceUnit:)(void *a1, uint64_t a2)
{
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    result = [a1 effectiveTypeIdentifier];
    if (result != 13)
    {
      result = [a1 effectiveTypeIdentifier];
      if (result == 37)
      {
        return [a1 isIndoor];
      }
    }
  }

  else
  {
    _StringGuts.grow(_:)(36);
    MEMORY[0x20F30BC00](0xD000000000000014, 0x800000020CBA0830);
    type metadata accessor for FIUIDistanceUnit(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F30BC00](0x70757320746F6E20, 0xEE00646574726F70);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id TargetZone.ZoneType.minimumRangeValue(activityType:userDistanceUnit:)(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for TargetZone.ZoneType();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v2, v5, v7);
  result = (*(v6 + 88))(v9, v5);
  if (result == *MEMORY[0x277D7DE48] || result == *MEMORY[0x277D7DE40] || result == *MEMORY[0x277D7DE60])
  {
    return TargetZone.ZoneType.minimumPaceRangeValue(activityType:userDistanceUnit:)(a1, a2);
  }

  if (result == *MEMORY[0x277D7DE70] || result == *MEMORY[0x277D7DE58])
  {
    return [a1 effectiveTypeIdentifier];
  }

  v14 = result == *MEMORY[0x277D7DE68] || result == *MEMORY[0x277D7DE50];
  if (!v14 && result != *MEMORY[0x277D7DE78])
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

double TargetZone.ZoneType.pickerStepInUserUnit(activityType:)(void *a1)
{
  v2 = type metadata accessor for TargetZone.PrimaryType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v14 - v7;
  TargetZone.ZoneType.primaryType.getter();
  (*(v3 + 104))(v5, *MEMORY[0x277D7DEC0], v2);
  lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v14[2] == v14[0] && v14[3] == v14[1])
  {
    v9 = *(v3 + 8);
    v9(v5, v2);
    v9(v8, v2);
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v12 = *(v3 + 8);
    v12(v5, v2);
    v12(v8, v2);

    result = 5.0;
    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  v13 = [a1 effectiveTypeIdentifier];
  result = 10.0;
  if (v13 == 13)
  {
    return 1.0;
  }

  return result;
}

id TargetZone.ZoneType.maximumRangeValue(activityType:userDistanceUnit:)(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for TargetZone.ZoneType();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v2, v5, v7);
  result = (*(v6 + 88))(v9, v5);
  if (result == *MEMORY[0x277D7DE48] || result == *MEMORY[0x277D7DE40] || result == *MEMORY[0x277D7DE60])
  {
    return TargetZone.ZoneType.maximumPaceRangeValue(activityType:userDistanceUnit:)(a1, a2);
  }

  if (result != *MEMORY[0x277D7DE70] && result != *MEMORY[0x277D7DE58])
  {
    v14 = result == *MEMORY[0x277D7DE68] || result == *MEMORY[0x277D7DE50];
    if (!v14 && result != *MEMORY[0x277D7DE78])
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t TargetZone.ZoneType.headerTextLow(activityType:)()
{
  v1 = type metadata accessor for TargetZone.ZoneType();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TargetZone.PrimaryType();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  TargetZone.ZoneType.primaryType.getter();
  if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D7DEC0])
  {
    v9 = FIUIDistanceTypeForActivityType();
    if (MEMORY[0x20F30D340](v9) != 4)
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v10 = WorkoutUIBundle.super.isa;
      v21._object = 0xE000000000000000;
      v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v11.value._object = 0xEB00000000656C62;
      v12._countAndFlagsBits = 0xD000000000000016;
      v12._object = 0x800000020CBA07F0;
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      v21._countAndFlagsBits = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v11, v10, v13, v21)._countAndFlagsBits;

      return countAndFlagsBits;
    }
  }

  else
  {
    (*(v6 + 8))(v8, v5);
  }

  (*(v2 + 16))(v4, v0, v1);
  if ((*(v2 + 88))(v4, v1) == *MEMORY[0x277D7DE78])
  {
    return 0;
  }

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = WorkoutUIBundle.super.isa;
  v22._object = 0xE000000000000000;
  v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v16.value._object = 0xEB00000000656C62;
  v17._object = 0x800000020CB945C0;
  v17._countAndFlagsBits = 0xD000000000000011;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v16, v15, v18, v22)._countAndFlagsBits;

  (*(v2 + 8))(v4, v1);
  return countAndFlagsBits;
}

uint64_t TargetZone.ZoneType.headerTextHigh(activityType:)()
{
  v1 = type metadata accessor for TargetZone.ZoneType();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TargetZone.PrimaryType();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  TargetZone.ZoneType.primaryType.getter();
  if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D7DEC0])
  {
    v9 = FIUIDistanceTypeForActivityType();
    if (MEMORY[0x20F30D340](v9) != 4)
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v10 = WorkoutUIBundle.super.isa;
      v21._object = 0xE000000000000000;
      v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v11.value._object = 0xEB00000000656C62;
      v12._countAndFlagsBits = 0xD000000000000016;
      v12._object = 0x800000020CBA0810;
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      v21._countAndFlagsBits = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v11, v10, v13, v21)._countAndFlagsBits;

      return countAndFlagsBits;
    }
  }

  else
  {
    (*(v6 + 8))(v8, v5);
  }

  (*(v2 + 16))(v4, v0, v1);
  if ((*(v2 + 88))(v4, v1) == *MEMORY[0x277D7DE78])
  {
    return 0;
  }

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = WorkoutUIBundle.super.isa;
  v22._object = 0xE000000000000000;
  v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v16.value._object = 0xEB00000000656C62;
  v17._object = 0x800000020CB945E0;
  v17._countAndFlagsBits = 0xD000000000000011;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v16, v15, v18, v22)._countAndFlagsBits;

  (*(v2 + 8))(v4, v1);
  return countAndFlagsBits;
}

unint64_t lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType()
{
  result = lazy protocol witness table cache variable for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType;
  if (!lazy protocol witness table cache variable for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType)
  {
    type metadata accessor for TargetZone.PrimaryType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType);
  }

  return result;
}

uint64_t SeymourDataSource.__allocating_init(seymourSampleContentProvider:seymourSubscriptionProvider:seymourAvailabilityProvider:externalSeymourSessionStatusProvider:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v10 = a1[3];
  v9 = a1[4];
  v11 = a1[5];
  v12 = __swift_mutable_project_boxed_opaque_existential_2(a1, v10);
  ObjectType = swift_getObjectType();
  v14 = swift_getObjectType();
  *&v17 = swift_getObjectType();
  *(&v17 + 1) = v9;
  v15 = specialized SeymourDataSource.__allocating_init(seymourSampleContentProvider:seymourSubscriptionProvider:seymourAvailabilityProvider:externalSeymourSessionStatusProvider:)(v12, a2, a3, a4, v19, v10, v14, ObjectType, v17, v11, a5);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_2(a1);
  return v15;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_2(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t key path getter for SeymourDataSource.isAvailable : SeymourDataSource@<X0>(_BYTE *a1@<X8>)
{
  return key path getter for SeymourDataSource.isAvailable : SeymourDataSource(a1);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for SeymourDataSource.isAvailable : SeymourDataSource()
{
  return key path setter for SeymourDataSource.isAvailable : SeymourDataSource();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t SeymourDataSource.isAvailable.getter()
{
  return SeymourDataSource.isAvailable.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for SeymourDataSource.subscriptionStatus : SeymourDataSource@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for SeymourDataSource.subscriptionStatus : SeymourDataSource()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t SeymourDataSource.subscriptionStatus.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path setter for SeymourDataSource.$subscriptionStatus : SeymourDataSource(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9WorkoutUI25SeymourSubscriptionStatusO_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI25SeymourSubscriptionStatusOGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t key path getter for SeymourDataSource.$isAvailable : SeymourDataSource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for SeymourDataSource.$isAvailable : SeymourDataSource(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t SeymourDataSource.$isAvailable.getter(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t SeymourDataSource.init(seymourSampleContentProvider:seymourSubscriptionProvider:seymourAvailabilityProvider:externalSeymourSessionStatusProvider:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v22[0] = a5;
  v10 = a1[3];
  v9 = a1[4];
  v11 = a1[5];
  v12 = __swift_mutable_project_boxed_opaque_existential_2(a1, v10);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v13);
  ObjectType = swift_getObjectType();
  v18 = swift_getObjectType();
  v19 = swift_getObjectType();
  v20 = specialized SeymourDataSource.init(seymourSampleContentProvider:seymourSubscriptionProvider:seymourAvailabilityProvider:externalSeymourSessionStatusProvider:)(v15, a2, a3, a4, v22[1], v10, v18, ObjectType, v19, v9, v11, v22[0]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_2(a1);
  return v20;
}

Swift::Void __swiftcall SeymourDataSource.hideSampleContent()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource_seymourSampleContentProvider + 24);
  v2 = *(v0 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource_seymourSampleContentProvider + 40);
  __swift_project_boxed_opaque_existential_2((v0 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource_seymourSampleContentProvider), v1);
  (*(v2 + 16))(v1, v2);
}

Swift::Void __swiftcall SeymourDataSource.showSampleContent()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource_seymourSampleContentProvider + 24);
  v2 = *(v0 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource_seymourSampleContentProvider + 40);
  __swift_project_boxed_opaque_existential_2((v0 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource_seymourSampleContentProvider), v1);
  (*(v2 + 24))(v1, v2);
}

uint64_t SeymourDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource__isAvailable;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource__subscriptionStatus;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI25SeymourSubscriptionStatusOGMd);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource__isSampleContentHidden, v2);
  v3(v0 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource__isExternalSessionActive, v2);
  __swift_destroy_boxed_opaque_existential_2(v0 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource_seymourSampleContentProvider);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t SeymourDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource__isAvailable;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource__subscriptionStatus;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI25SeymourSubscriptionStatusOGMd);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource__isSampleContentHidden, v2);
  v3(v0 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource__isExternalSessionActive, v2);
  __swift_destroy_boxed_opaque_existential_2(v0 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource_seymourSampleContentProvider);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance SeymourDataSource@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SeymourDataSource();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t SeymourDataSource.subscriptionDidUpdate(with:)()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t SeymourDataSource.availabilityDidUpdate(with:)()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t SeymourDataSource.isHiddenDidUpdate(with:)()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t @objc SeymourDataSource.isHiddenDidUpdate(with:)()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t specialized SeymourDataSource.init(seymourSampleContentProvider:seymourSubscriptionProvider:seymourAvailabilityProvider:externalSeymourSessionStatusProvider:)(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v24[3] = a6;
  v24[4] = a10;
  v24[5] = a11;
  __swift_allocate_boxed_opaque_existential_2(v24);
  (*(*(a6 - 8) + 32))();
  outlined init with copy of SeymourSampleContentObservable & SeymourSampleContentProviding(v24, a5 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource_seymourSampleContentProvider);
  *(a5 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource_seymourSubscriptionProvider) = a2;
  *(a5 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource_seymourAvailabilityProvider) = a3;
  v17 = (a5 + OBJC_IVAR____TtC9WorkoutUI17SeymourDataSource_externalSeymourSessionStatusProvider);
  *v17 = a4;
  v17[1] = a12;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  [a3 availability];
  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  [a2 subscriptionStatus];
  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  (*(a11 + 8))(a6, a11);
  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  ObjectType = swift_getObjectType();
  [a4 externalSessionActive];
  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  v18 = *(a10 + 8);

  v18(v19, a6, a10);

  [a2 addObserver_];

  swift_unknownObjectRelease();

  [a3 addObserver_];

  swift_unknownObjectRelease();
  v20 = *(a12 + 16);

  v20(v21, ObjectType, a12);

  __swift_destroy_boxed_opaque_existential_2(v24);
  return a5;
}

uint64_t specialized SeymourDataSource.__allocating_init(seymourSampleContentProvider:seymourSubscriptionProvider:seymourAvailabilityProvider:externalSeymourSessionStatusProvider:)(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v22 = a7;
  v23 = a8;
  v21 = a9;
  v16 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SeymourDataSource();
  v19 = swift_allocObject();
  (*(v16 + 16))(v18, a1, a6);
  return specialized SeymourDataSource.init(seymourSampleContentProvider:seymourSubscriptionProvider:seymourAvailabilityProvider:externalSeymourSessionStatusProvider:)(v18, a2, a3, a4, v19, a6, v22, v23, v21, *(&v21 + 1), a10, a11);
}

uint64_t __swift_destroy_boxed_opaque_existential_2(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t type metadata accessor for SeymourDataSource()
{
  result = type metadata singleton initialization cache for SeymourDataSource;
  if (!type metadata singleton initialization cache for SeymourDataSource)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SeymourDataSource()
{
  _s7Combine9PublishedVySbGMaTm_0(319, &lazy cache variable for type metadata for Published<Bool>);
  if (v0 <= 0x3F)
  {
    _s7Combine9PublishedVySbGMaTm_0(319, &lazy cache variable for type metadata for Published<SeymourSubscriptionStatus>);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void _s7Combine9PublishedVySbGMaTm_0(uint64_t a1, unint64_t *a2)
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

uint64_t *__swift_allocate_boxed_opaque_existential_2(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  ViewModel = type metadata accessor for TrainingLoadViewModel(0);
  v8 = *(ViewModel - 8);
  MEMORY[0x28223BE20](ViewModel);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      outlined init with copy of TrainingLoadViewModel(v12, v10);
      v14 = a1(v10);
      if (v3)
      {
        return outlined destroy of TrainingLoadViewModel(v10);
      }

      if (v14)
      {
        break;
      }

      outlined destroy of TrainingLoadViewModel(v10);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, ViewModel);
      }
    }

    a3 = v18;
    outlined init with take of TrainingLoadViewModel(v10, v18);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, ViewModel);
}

uint64_t specialized Sequence.first(where:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 8;
  }

  v6 = (a3 + 32);
  while (1)
  {
    v8 = *v6++;
    v7 = v8;
    v11 = v8;
    v9 = a1(&v11);
    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (!--v4)
    {
      return 8;
    }
  }

  return v7;
}

uint64_t specialized Sequence.first(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = __CocoaSet.count.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x20F30C990](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v61 = a1;
  v62 = a2;
  v57 = a3;
  v5 = type metadata accessor for DayIndex();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v72 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = &v57 - v9;
  MEMORY[0x28223BE20](v10);
  v58 = &v57 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_G_AHtMd);
  MEMORY[0x28223BE20](v68);
  v66 = &v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
  MEMORY[0x28223BE20](v13 - 8);
  v63 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v64 = &v57 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v57 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v57 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit8DayIndexVSgMd);
  MEMORY[0x28223BE20](v23 - 8);
  v74 = &v57 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySNy9HealthKit8DayIndexVGGMd);
  v26 = v25 - 8;
  MEMORY[0x28223BE20](v25);
  v28 = &v57 - v27;
  outlined init with copy of (lower: DayIndex, upper: DayIndex)(v4, &v57 - v27, &_sSNy9HealthKit8DayIndexVGMd);
  v29 = *(v26 + 44);
  (*(v6 + 16))(&v28[v29], v4, v5);
  v31 = *(v6 + 56);
  v6 += 56;
  v30 = v31;
  v31(&v28[v29], 0, 1, v5);
  v69 = v22;
  v70 = (v6 - 8);
  v76 = (v6 - 24);
  v77 = (v6 - 48);
  v67 = v19;
  v71 = v6;
  v65 = v31;
  v73 = v29;
  while (1)
  {
    v30(v22, 1, 1, v5);
    v32 = *(v68 + 48);
    v33 = v28;
    v34 = v66;
    outlined init with copy of (lower: DayIndex, upper: DayIndex)(&v28[v29], v66, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
    outlined init with copy of (lower: DayIndex, upper: DayIndex)(v22, v34 + v32, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
    v35 = *v70;
    if ((*v70)(v34, 1, v5) == 1)
    {
      _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v22, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
      v36 = v28;
      if (v35(v34 + v32, 1, v5) == 1)
      {
        _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v34, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
LABEL_19:
        _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v36, &_ss16IndexingIteratorVySNy9HealthKit8DayIndexVGGMd);
        v56 = 1;
        v30 = v65;
        v65(v74, 1, 1, v5);
        v55 = v57;
        return (v30)(v55, v56, 1, v5);
      }

      goto LABEL_7;
    }

    v37 = v67;
    outlined init with copy of (lower: DayIndex, upper: DayIndex)(v34, v67, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
    if (v35(v34 + v32, 1, v5) == 1)
    {
      _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v69, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
      (*v77)(v37, v5);
      v36 = v28;
LABEL_7:
      _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v34, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_G_AHtMd);
      goto LABEL_9;
    }

    v38 = v58;
    (*v76)(v58, v34 + v32, v5);
    lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6A8]);
    v59 = dispatch thunk of static Equatable.== infix(_:_:)();
    v39 = *v77;
    (*v77)(v38, v5);
    _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v69, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
    v39(v67, v5);
    _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v34, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
    v36 = v33;
    if (v59)
    {
      goto LABEL_19;
    }

LABEL_9:
    v40 = v73;
    v41 = v64;
    outlined init with copy of (lower: DayIndex, upper: DayIndex)(v36 + v73, v64, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
    result = (v35)(v41, 1, v5);
    if (result == 1)
    {
      goto LABEL_23;
    }

    v43 = *v76;
    (*v76)(v74, v41, v5);
    v44 = v63;
    outlined init with take of (lower: DayIndex, upper: DayIndex)(v36 + v40, v63, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
    result = (v35)(v44, 1, v5);
    if (result == 1)
    {
      break;
    }

    v45 = v60;
    v43(v60, v44, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy9HealthKit8DayIndexVGMd);
    lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6A8]);
    v46 = dispatch thunk of static Equatable.== infix(_:_:)();
    v30 = v65;
    v28 = v36;
    if (v46)
    {
      v47 = v45;
      v48 = *v77;
      (*v77)(v47, v5);
      v49 = 1;
      v29 = v73;
    }

    else
    {
      v78 = 1;
      lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6A8]);
      v29 = v73;
      dispatch thunk of Strideable.advanced(by:)();
      v50 = v45;
      v48 = *v77;
      (*v77)(v50, v5);
      v49 = 0;
    }

    v30((v36 + v29), v49, 1, v5);
    v51 = v74;
    v30(v74, 0, 1, v5);
    v52 = v72;
    v43(v72, v51, v5);
    v53 = v75;
    v54 = v61(v52);
    v75 = v53;
    if (v53)
    {
      v48(v72, v5);
      return _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v36, &_ss16IndexingIteratorVySNy9HealthKit8DayIndexVGGMd);
    }

    if (v54)
    {
      _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v36, &_ss16IndexingIteratorVySNy9HealthKit8DayIndexVGGMd);
      v55 = v57;
      v43(v57, v72, v5);
      v56 = 0;
      return (v30)(v55, v56, 1, v5);
    }

    v48(v72, v5);
    v22 = v69;
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t static TrainingLoadViewModelProvider.createDayRange(now:days:gregorianCalendar:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a2;
  v49 = a3;
  v46 = a4;
  v47 = a1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit8DayIndexV5lower_AC5uppertMd);
  MEMORY[0x28223BE20](v44);
  v39 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v41 = &v36 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy9HealthKit8DayIndexVGMd);
  MEMORY[0x28223BE20](v45);
  v42 = &v36 - v7;
  v8 = type metadata accessor for Calendar();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DayIndex();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v36 - v22;
  (*(v13 + 16))(v15, v47, v12, v21);
  v24 = *(v9 + 16);
  v47 = v8;
  v43 = v9 + 16;
  v24(v11, v49, v8);
  v40 = v11;
  DayIndex.init(date:calendar:)();
  static DayIndex.- infix(_:_:)();
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6A8]);
  v25 = v23;
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v48 = v24;
    v27 = v17[2];
    v28 = v41;
    v38 = v19;
    v27(v41, v19, v16);
    v29 = v39;
    v30 = v44;
    v31 = v28 + *(v44 + 48);
    v37 = v25;
    v27(v31, v25, v16);
    outlined init with copy of (lower: DayIndex, upper: DayIndex)(v28, v29, &_s9HealthKit8DayIndexV5lower_AC5uppertMd);
    v32 = *(v30 + 48);
    v33 = v17[4];
    v34 = v42;
    v33(v42, v29, v16);
    v35 = v17[1];
    v35(v29 + v32, v16);
    outlined init with take of (lower: DayIndex, upper: DayIndex)(v28, v29, &_s9HealthKit8DayIndexV5lower_AC5uppertMd);
    v33(&v34[*(v45 + 36)], v29 + *(v30 + 48), v16);
    v35(v29, v16);
    v48(v40, v49, v47);
    GregorianDayRange.init(dayIndexRange:gregorianCalendar:)();
    v35(v38, v16);
    return (v35)(v37, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance TrainingLoadViewModelProviderOptions(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance TrainingLoadViewModelProviderOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance TrainingLoadViewModelProviderOptions@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance TrainingLoadViewModelProviderOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TrainingLoadViewModelProvider.TaskType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TrainingLoadViewModelProvider.TaskType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

uint64_t closure #1 in TrainingLoadViewModelProvider.TaskHolder.workoutsTaskFinished.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 24) = a2 & 1;
  }

  return result;
}

uint64_t TrainingLoadViewModelProvider.TaskHolder.workoutsTaskFinished.setter(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v11 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v4 + 16);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a4;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_2(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F30C1F0](0, v13, v10, v16);
  _Block_release(v16);
  (*(v20 + 8))(v10, v8);
  (*(v11 + 8))(v13, v19);
}

uint64_t closure #1 in TrainingLoadViewModelProvider.TaskHolder.workoutsByActivityTaskFinished.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 25) = a2 & 1;
  }

  return result;
}

uint64_t closure #1 in TrainingLoadViewModelProvider.TaskHolder.allDayTaskFinished.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 26) = a2 & 1;
  }

  return result;
}

uint64_t TrainingLoadViewModelProvider.TaskHolder.cancelAll()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.trainingLoad.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136446210;
    v10 = _typeName(_:qualified:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, aBlock);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20C66F000, v6, v7, "[%{public}s] Canceling All Tasks", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F30E080](v9, -1, -1);
    MEMORY[0x20F30E080](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v13 = *(v1 + 16);
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in TrainingLoadViewModelProvider.TaskHolder.cancelAll();
  *(v14 + 24) = v1;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_172_0;
  v15 = _Block_copy(aBlock);

  dispatch_sync(v13, v15);
  _Block_release(v15);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in TrainingLoadViewModelProvider.TaskHolder.cancelAll()(uint64_t result)
{
  v1 = result;
  v2 = MEMORY[0x277D84F78];
  if (*(result + 32))
  {

    MEMORY[0x20F30BE00](v3, v2 + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  }

  if (v1[5])
  {

    MEMORY[0x20F30BE00](v4, v2 + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  }

  if (v1[6])
  {

    MEMORY[0x20F30BE00](v5, v2 + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  }

  if (v1[8])
  {

    MEMORY[0x20F30BE00](v6, v2 + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  }

  return result;
}

uint64_t closure #1 in TrainingLoadViewModelProvider.TaskHolder.add(task:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t (*)(), uint64_t), uint64_t a4)
{
  v24[1] = a4;
  v25 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v24 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v24 - v14;
  UUID.init()();
  v24[0] = *(v10 + 16);
  (v24[0])(v8, v15, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v8, a2);
  swift_endAccess();
  if (a2)
  {
    if (a2 == 1)
    {
      if (*(a1 + 48))
      {

        MEMORY[0x20F30BE00](v16, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
      }

      *(a1 + 26) = 0;
    }

    else
    {
      if (*(a1 + 40))
      {

        MEMORY[0x20F30BE00](v18, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
      }

      *(a1 + 25) = 0;
    }
  }

  else
  {
    if (*(a1 + 32))
    {

      MEMORY[0x20F30BE00](v17, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    }

    *(a1 + 24) = 0;
  }

  v19 = swift_allocObject();
  swift_weakInit();
  (v24[0])(v12, v15, v9);
  v20 = (*(v10 + 80) + 25) & ~*(v10 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = a2;
  (*(v10 + 32))(v21 + v20, v12, v9);

  v22 = v25(partial apply for closure #1 in closure #1 in TrainingLoadViewModelProvider.TaskHolder.add(task:_:), v21);

  (*(v10 + 8))(v15, v9);

  *(a1 + qword_20CB82D98[a2]) = v22;
}

uint64_t closure #1 in closure #1 in TrainingLoadViewModelProvider.TaskHolder.add(task:_:)(uint64_t a1, int a2, uint64_t a3)
{
  v23 = a3;
  v24 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = *(result + 16);
    v22 = v7;
    v21 = v15;

    v16 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    (*(v11 + 16))(&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v10);
    v17 = (*(v11 + 80) + 25) & ~*(v11 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v24;
    (*(v11 + 32))(v18 + v17, v13, v10);
    aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in TrainingLoadViewModelProvider.TaskHolder.add(task:_:);
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_102;
    v19 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v26 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_2(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v20 = v21;
    MEMORY[0x20F30C1F0](0, v9, v6, v19);
    _Block_release(v19);

    (*(v4 + 8))(v6, v3);
    (*(v25 + 8))(v9, v22);
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in TrainingLoadViewModelProvider.TaskHolder.add(task:_:)(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v46 = a3;
  v47 = a2;
  v3 = type metadata accessor for Logger();
  v45 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v44 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v21 = result;
  swift_beginAccess();
  v22 = *(v21 + 56);
  v23 = *(v22 + 16);
  v42 = v3;
  if (v23 && (v24 = specialized __RawDictionaryStorage.find<A>(_:)(v47), (v25 & 1) != 0))
  {
    (*(v6 + 16))(v19, *(v22 + 56) + *(v6 + 72) * v24, v5);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = *(v6 + 56);
  v27(v19, v26, 1, v5);
  swift_endAccess();
  (*(v6 + 16))(v16, v46, v5);
  v27(v16, 0, 1, v5);
  v28 = *(v8 + 48);
  outlined init with copy of (lower: DayIndex, upper: DayIndex)(v16, v10, &_s10Foundation4UUIDVSgMd);
  outlined init with copy of (lower: DayIndex, upper: DayIndex)(v19, &v10[v28], &_s10Foundation4UUIDVSgMd);
  v29 = *(v6 + 48);
  if (v29(v10, 1, v5) == 1)
  {
    _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v16, &_s10Foundation4UUIDVSgMd);
    if (v29(&v10[v28], 1, v5) == 1)
    {
      _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v10, &_s10Foundation4UUIDVSgMd);
LABEL_16:
      _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v19, &_s10Foundation4UUIDVSgMd);
      if (v47)
      {
        if (v47 == 1)
        {
          *(v21 + 26) = 1;
        }

        else
        {
          *(v21 + 25) = 1;
        }
      }

      else
      {
        *(v21 + 24) = 1;
      }
    }

    goto LABEL_11;
  }

  outlined init with copy of (lower: DayIndex, upper: DayIndex)(v10, v13, &_s10Foundation4UUIDVSgMd);
  if (v29(&v10[v28], 1, v5) == 1)
  {
    _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v16, &_s10Foundation4UUIDVSgMd);
    (*(v6 + 8))(v13, v5);
LABEL_11:
    _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v10, &_s10Foundation4UUIDVSg_ADtMd);
    goto LABEL_12;
  }

  v38 = &v10[v28];
  v39 = v43;
  (*(v6 + 32))(v43, v38, v5);
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v40 = dispatch thunk of static Equatable.== infix(_:_:)();
  v41 = *(v6 + 8);
  v41(v39, v5);
  _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v16, &_s10Foundation4UUIDVSgMd);
  v41(v13, v5);
  _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v10, &_s10Foundation4UUIDVSgMd);
  if (v40)
  {
    goto LABEL_16;
  }

LABEL_12:
  v30 = v44;
  static WOLog.trainingLoad.getter();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v49[0] = v34;
    *v33 = 136315138;
    v48 = v47;
    v35 = String.init<A>(reflecting:)();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v49);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_20C66F000, v31, v32, "Stale task %s requested finish, but a newer task is running. Ignoring.", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x20F30E080](v34, -1, -1);
    MEMORY[0x20F30E080](v33, -1, -1);
  }

  (*(v45 + 8))(v30, v42);
  return _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v19, &_s10Foundation4UUIDVSgMd);
}

uint64_t TrainingLoadViewModelProvider.TaskHolder.deinit()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.trainingLoad.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20C66F000, v6, v7, "Canceling our model queries in deinit of the TaskHolder.", v8, 2u);
    MEMORY[0x20F30E080](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  TrainingLoadViewModelProvider.TaskHolder.cancelAll()();

  return v1;
}

uint64_t TrainingLoadViewModelProvider.TaskHolder.__deallocating_deinit()
{
  TrainingLoadViewModelProvider.TaskHolder.deinit();

  return swift_deallocClassInstance();
}

uint64_t TrainingLoadViewModelProvider.TaskHolder.init()()
{
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v4);
  v5 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v5 - 8);
  v8[1] = type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.unspecified.getter();
  v10 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_2(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v9);
  *(v0 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 24) = 0;
  *(v0 + 26) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  v6 = MEMORY[0x277D84F98];
  *(v0 + 48) = 0;
  *(v0 + 56) = v6;
  *(v0 + 64) = 0;
  return v0;
}

uint64_t TrainingLoadViewModelProvider.isFaking.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 24);
}

uint64_t key path getter for TrainingLoadViewModelProvider.isFaking : TrainingLoadViewModelProvider@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t TrainingLoadViewModelProvider.isFaking.setter(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void TrainingLoadViewModelProvider._dayRange.didset(uint64_t a1)
{
  v2 = v1;
  v45 = *v1;
  v4 = type metadata accessor for GregorianDayRange();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v41[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v41[-v9];
  v11 = type metadata accessor for Logger();
  v51 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static WOLog.trainingLoad.getter();
  v14 = *(v5 + 16);
  v48 = v10;
  v14(v10, a1, v4);

  v50 = v13;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v49 = v15;
  v17 = os_log_type_enabled(v15, v16);
  v46 = v14;
  v47 = v5 + 16;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v44 = a1;
    v19 = v18;
    v43 = swift_slowAlloc();
    v54[0] = v43;
    *v19 = 136446722;
    v20 = _typeName(_:qualified:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v54);
    v45 = v11;
    v23 = v22;

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    swift_getKeyPath();
    v53 = v2;
    lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v24 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
    swift_beginAccess();
    v14(v7, v2 + v24, v4);
    lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type GregorianDayRange and conformance GregorianDayRange, MEMORY[0x277D0FEB8]);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v7;
    v28 = v27;
    v42 = v16;
    v29 = *(v5 + 8);
    v29(v26, v4);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v28, v54);

    *(v19 + 14) = v30;
    *(v19 + 22) = 2080;
    v31 = v48;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    v29(v31, v4);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, v54);

    *(v19 + 24) = v35;
    v36 = v49;
    _os_log_impl(&dword_20C66F000, v49, v42, "[%{public}s] Updating Day Range to %s oldValue %s", v19, 0x20u);
    v37 = v43;
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v37, -1, -1);
    MEMORY[0x20F30E080](v19, -1, -1);

    (*(v51 + 8))(v50, v45);
  }

  else
  {

    v29 = *(v5 + 8);
    v29(v48, v4);
    (*(v51 + 8))(v50, v11);
    v26 = v7;
  }

  swift_getKeyPath();
  v54[0] = v2;
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v38 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
  swift_beginAccess();
  v46(v26, v2 + v38, v4);
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type GregorianDayRange and conformance GregorianDayRange, MEMORY[0x277D0FEB8]);
  LOBYTE(v38) = dispatch thunk of static Equatable.== infix(_:_:)();
  v29(v26, v4);
  if ((v38 & 1) == 0)
  {
    v39 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__isFetchingDataForNewDateRange;
    swift_beginAccess();
    if (*(v2 + v39) == 1)
    {
      *(v2 + v39) = 1;
      TrainingLoadViewModelProvider._isFetchingDataForNewDateRange.didset(&unk_20CB82910, &OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__isFetchingDataForNewDateRange, "[%{public}s] isFetchingDataForNewDateRange: %{BOOL}d");
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *&v41[-16] = v2;
      v41[-8] = 1;
      v52 = v2;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    TrainingLoadViewModelProvider.startQuery(isFaking:)(0);
  }
}

void (*TrainingLoadViewModelProvider._dayRange.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x90uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = type metadata accessor for GregorianDayRange();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[11] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v12 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
  v5[14] = v10;
  v5[15] = v12;
  swift_beginAccess();
  v13 = *(v8 + 16);
  v5[16] = v13;
  v5[17] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v11, v1 + v12, v6);
  return TrainingLoadViewModelProvider._dayRange.modify;
}

void TrainingLoadViewModelProvider._dayRange.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  v4 = *(*a1 + 112);
  v5 = *(*a1 + 120);
  v6 = *(*a1 + 96);
  v7 = *(*a1 + 104);
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 88);
  v10 = *(*a1 + 72);
  if (a2)
  {
    v3(*(*a1 + 104), v4, v8);
    v3(v6, (v10 + v5), v8);
    swift_beginAccess();
    (*(v9 + 24))(v10 + v5, v7, v8);
    swift_endAccess();
    TrainingLoadViewModelProvider._dayRange.didset(v6);
    v11 = *(v9 + 8);
    v11(v6, v8);
  }

  else
  {
    v3(*(*a1 + 104), (v10 + v5), v8);
    swift_beginAccess();
    (*(v9 + 24))(v10 + v5, v4, v8);
    swift_endAccess();
    TrainingLoadViewModelProvider._dayRange.didset(v7);
    v11 = *(v9 + 8);
  }

  v11(v7, v8);
  v11(v4, v8);
  free(v4);
  free(v7);
  free(v6);

  free(v2);
}

uint64_t key path getter for TrainingLoadViewModelProvider.dayRange : TrainingLoadViewModelProvider@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
  swift_beginAccess();
  v5 = type metadata accessor for GregorianDayRange();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t key path setter for TrainingLoadViewModelProvider.dayRange : TrainingLoadViewModelProvider(uint64_t a1)
{
  v2 = type metadata accessor for GregorianDayRange();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return TrainingLoadViewModelProvider.dayRange.setter(v5);
}

uint64_t TrainingLoadViewModelProvider.dayRange.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
  swift_beginAccess();
  v4 = type metadata accessor for GregorianDayRange();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t type metadata accessor for TrainingLoadViewModelProvider()
{
  result = type metadata singleton initialization cache for TrainingLoadViewModelProvider;
  if (!type metadata singleton initialization cache for TrainingLoadViewModelProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TrainingLoadViewModelProvider.dayRange.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for GregorianDayRange();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  v11 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v2 + v11, v4);
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type GregorianDayRange and conformance GregorianDayRange, MEMORY[0x277D0FEB8]);
  v19 = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v5 + 8);
  v18(v10, v4);
  if (a1)
  {
    v12(v10, v19, v4);
    v12(v7, v2 + v11, v4);
    swift_beginAccess();
    (*(v5 + 24))(v2 + v11, v10, v4);
    swift_endAccess();
    TrainingLoadViewModelProvider._dayRange.didset(v7);
    v13 = v18;
    v18(v7, v4);
    v13(v10, v4);
    return (v13)(v19, v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v16 = v19;
    *(&v17 - 2) = v2;
    *(&v17 - 1) = v16;
    v20 = v2;
    lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return (v18)(v19, v4);
  }
}

uint64_t closure #1 in TrainingLoadViewModelProvider.dayRange.setter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GregorianDayRange();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v16[-v10];
  v12 = *(v5 + 16);
  v12(&v16[-v10], a2, v4, v9);
  v13 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
  swift_beginAccess();
  (v12)(v7, a1 + v13, v4);
  swift_beginAccess();
  (*(v5 + 24))(a1 + v13, v11, v4);
  swift_endAccess();
  TrainingLoadViewModelProvider._dayRange.didset(v7);
  v14 = *(v5 + 8);
  v14(v7, v4);
  return (v14)(v11, v4);
}

void (*TrainingLoadViewModelProvider.dayRange.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = TrainingLoadViewModelProvider._dayRange.modify(v4);
  return TrainingLoadViewModelProvider.dayRange.modify;
}

void TrainingLoadViewModelProvider.dayRange.modify(void *a1)
{
  TrainingLoadViewModelProvider.dayRange.modify(a1);
}

{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t TrainingLoadViewModelProvider._viewModels.setter(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__viewModels;
  swift_beginAccess();
  *(v2 + v4) = a1;

  swift_getKeyPath();
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v2 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__unitTest_updatedViewModels);
  swift_getKeyPath();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5(v6);
}

void (*TrainingLoadViewModelProvider._viewModels.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__viewModels;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return TrainingLoadViewModelProvider._viewModels.modify;
}

void TrainingLoadViewModelProvider._viewModels.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    swift_getKeyPath();
    *v3 = v4;
    lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = *(v4 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__unitTest_updatedViewModels);
    swift_getKeyPath();
    *v3 = v4;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5(v6);
  }

  free(v3);
}

uint64_t key path getter for TrainingLoadViewModelProvider.viewModels : TrainingLoadViewModelProvider@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__viewModels;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t TrainingLoadViewModelProvider.viewModels.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t TrainingLoadViewModelProvider.viewModels.setter(uint64_t a1)
{
  swift_beginAccess();

  ViewModelV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ9WorkoutUI21TrainingLoadViewModelV_Tt1g5(v2, a1);

  if (ViewModelV_Tt1g5)
  {
    return TrainingLoadViewModelProvider._viewModels.setter(a1);
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t partial apply for closure #1 in TrainingLoadViewModelProvider.viewModels.setter()
{
  return partial apply for closure #1 in TrainingLoadViewModelProvider.viewModels.setter();
}

{

  return TrainingLoadViewModelProvider._viewModels.setter(v0);
}

void (*TrainingLoadViewModelProvider.viewModels.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = TrainingLoadViewModelProvider._viewModels.modify(v4);
  return TrainingLoadViewModelProvider.viewModels.modify;
}

uint64_t (*TrainingLoadViewModelProvider._isFetchingDataForNewDateRange.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return TrainingLoadViewModelProvider._isFetchingDataForNewDateRange.modify;
}

void (*TrainingLoadViewModelProvider.isFetchingDataForNewDateRange.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = TrainingLoadViewModelProvider._isFetchingDataForNewDateRange.modify(v4);
  return TrainingLoadViewModelProvider.isFetchingDataForNewDateRange.modify;
}

uint64_t TrainingLoadViewModelProvider._isFetchingDataForNewDateRange.didset(uint64_t a1, uint64_t *a2, const char *a3)
{
  v25 = a1;
  v6 = v3;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.trainingLoad.getter();
  swift_retain_n();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v24 = a3;
    v16 = v15;
    v27 = v15;
    *v14 = 136446466;
    v17 = _typeName(_:qualified:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v27);

    *(v14 + 4) = v19;
    *(v14 + 12) = 1024;
    swift_getKeyPath();
    v26 = v3;
    lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v20 = *v23;
    swift_beginAccess();
    LODWORD(v20) = *(v6 + v20);

    *(v14 + 14) = v20;

    _os_log_impl(&dword_20C66F000, v11, v12, v24, v14, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x20F30E080](v16, -1, -1);
    MEMORY[0x20F30E080](v14, -1, -1);
  }

  else
  {
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t (*TrainingLoadViewModelProvider._isLoadingWorkoutViewModelForTheFirstTime.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return TrainingLoadViewModelProvider._isLoadingWorkoutViewModelForTheFirstTime.modify;
}

uint64_t TrainingLoadViewModelProvider._isFetchingDataForNewDateRange.modify(uint64_t a1, char a2, uint64_t a3, uint64_t *a4, const char *a5)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return TrainingLoadViewModelProvider._isFetchingDataForNewDateRange.didset(a3, a4, a5);
  }

  return result;
}

uint64_t key path getter for TrainingLoadViewModelProvider.isFetchingDataForNewDateRange : TrainingLoadViewModelProvider@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t TrainingLoadViewModelProvider.isFetchingDataForNewDateRange.getter(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t TrainingLoadViewModelProvider.isFetchingDataForNewDateRange.setter(char a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v9 = a1 & 1;
  v10 = *a2;
  swift_beginAccess();
  if (*(v5 + v10) == v9)
  {
    *(v5 + v10) = v9;
    return TrainingLoadViewModelProvider._isFetchingDataForNewDateRange.didset(a3, a2, a5);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void (*TrainingLoadViewModelProvider.isLoadingWorkoutViewModelForTheFirstTime.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = TrainingLoadViewModelProvider._isLoadingWorkoutViewModelForTheFirstTime.modify(v4);
  return TrainingLoadViewModelProvider.isLoadingWorkoutViewModelForTheFirstTime.modify;
}

uint64_t TrainingLoadViewModelProvider.__allocating_init(dayRange:healthStore:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for GregorianDayRange();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v12 = 7;
  v9 = specialized TrainingLoadViewModelProvider.__allocating_init(dayRange:healthStore:options:)(v8, a2, &v12);

  (*(v5 + 8))(a1, v4);
  return v9;
}

uint64_t TrainingLoadViewModelProvider.__allocating_init(dayRange:healthStore:options:)(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = specialized TrainingLoadViewModelProvider.__allocating_init(dayRange:healthStore:options:)(a1, a2, a3);

  return v4;
}

uint64_t closure #1 in TrainingLoadViewModelProvider.init(dayRange:healthStore:options:)@<X0>(uint64_t a1@<X1>, unsigned int *a2@<X2>, uint64_t a3@<X8>)
{
  v15[0] = a3;
  v15[1] = a1;
  DataType = type metadata accessor for TrainingLoadDataType();
  v5 = *(DataType - 8);
  MEMORY[0x28223BE20](DataType);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Calendar();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy9HealthKit8DayIndexVGMd);
  MEMORY[0x28223BE20](v9 - 8);
  SummaryQueryDescriptor = type metadata accessor for TrainingLoadSummaryQueryDescriptor();
  v11 = *(SummaryQueryDescriptor - 8);
  MEMORY[0x28223BE20](SummaryQueryDescriptor);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  GregorianDayRange.dayIndexRange.getter();
  GregorianDayRange.gregorianCalendar.getter();
  (*(v5 + 104))(v7, *a2, DataType);
  TrainingLoadSummaryQueryDescriptor.init(morningIndexRange:gregorianCalendar:typeOfLoad:)();
  TrainingLoadSummaryQueryDescriptor.currentAndUpdatingDaySummaryCollections(for:)();
  return (*(v11 + 8))(v13, SummaryQueryDescriptor);
}

uint64_t closure #3 in TrainingLoadViewModelProvider.init(dayRange:healthStore:options:)(uint64_t a1, uint64_t a2)
{
  v13[1] = a2;
  DataType = type metadata accessor for TrainingLoadDataType();
  v3 = *(DataType - 8);
  MEMORY[0x28223BE20](DataType);
  v5 = (v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Calendar();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy9HealthKit8DayIndexVGMd);
  MEMORY[0x28223BE20](v7 - 8);
  SummaryQueryDescriptor = type metadata accessor for TrainingLoadSummaryQueryDescriptor();
  v9 = *(SummaryQueryDescriptor - 8);
  MEMORY[0x28223BE20](SummaryQueryDescriptor);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  GregorianDayRange.dayIndexRange.getter();
  GregorianDayRange.gregorianCalendar.getter();
  *v5 = 13;
  (*(v3 + 104))(v5, *MEMORY[0x277D0FED8], DataType);
  TrainingLoadSummaryQueryDescriptor.init(morningIndexRange:gregorianCalendar:typeOfLoad:)();
  TrainingLoadSummaryQueryDescriptor.currentAndUpdatingDaySummaryCollections(for:)();
  return (*(v9 + 8))(v11, SummaryQueryDescriptor);
}

uint64_t TrainingLoadViewModelProvider.viewModel(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  v5 = type metadata accessor for GregorianDayRange();
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  DataType = type metadata accessor for TrainingLoadDataType();
  v21 = *(DataType - 8);
  v22 = DataType;
  MEMORY[0x28223BE20](DataType);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI21TrainingLoadViewModelVSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  TrainingLoadViewModelProvider.ensureQueriesAreRunning()();
  swift_getKeyPath();
  v29 = v2;
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__viewModels;
  swift_beginAccess();
  v14 = *(v3 + v13);
  v27 = a1;

  specialized Sequence.first(where:)(partial apply for closure #1 in TrainingLoadViewModelProvider.viewModel(for:), v14, v12);

  ViewModel = type metadata accessor for TrainingLoadViewModel(0);
  v16 = *(*(ViewModel - 8) + 48);
  if (v16(v12, 1, ViewModel) != 1)
  {
    return outlined init with take of TrainingLoadViewModel(v12, v26);
  }

  (*(v21 + 16))(v9, a1, v22);
  swift_getKeyPath();
  v28 = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
  swift_beginAccess();
  v18 = v3 + v17;
  v19 = v23;
  (*(v24 + 16))(v23, v18, v25);
  TrainingLoadViewModel.init(dataType:dayRange:chronologicalTrainingLoadDaySummaries:)(v9, v19, MEMORY[0x277D84F90], v26);
  result = (v16)(v12, 1, ViewModel);
  if (result != 1)
  {
    return _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v12, &_s9WorkoutUI21TrainingLoadViewModelVSgMd);
  }

  return result;
}

uint64_t TrainingLoadViewModelProvider.ensureQueriesAreRunning()()
{
  OS_dispatch_queue.sync<A>(execute:)();
  if (v3 == 1)
  {
    TrainingLoadViewModelProvider.startWorkoutsQuery()();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  if (v2 == 1)
  {
    TrainingLoadViewModelProvider.startAllDayQuery()();
  }

  result = OS_dispatch_queue.sync<A>(execute:)();
  if (v1 == 1)
  {
    return TrainingLoadViewModelProvider.startWorkoutsByActivityTypeQuery(useFakeData:)(0);
  }

  return result;
}

uint64_t TrainingLoadViewModelProvider.startWorkoutsQuery()()
{
  v1 = v0;
  v2 = *v0;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_pGMd);
  v3 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v77 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v70 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy9HealthKit8DayIndexVGMd);
  MEMORY[0x28223BE20](v8 - 8);
  v82 = &v70 - v9;
  SampleDaySummaryCollection = type metadata accessor for TrainingLoadSampleDaySummaryCollection();
  v85 = *(SampleDaySummaryCollection - 8);
  v86 = SampleDaySummaryCollection;
  MEMORY[0x28223BE20](SampleDaySummaryCollection);
  v84 = (&v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  DataType = type metadata accessor for TrainingLoadDataType();
  v89 = *(DataType - 8);
  MEMORY[0x28223BE20](DataType);
  v88 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for GregorianDayRange();
  v91 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v90 = (&v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.trainingLoad.getter();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v80 = v3;
  v79 = v7;
  v78 = v2;
  v83 = DataType;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v22 = 136446210;
    v24 = _typeName(_:qualified:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, aBlock);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_20C66F000, v19, v20, "[%{public}s] Spinning up startWorkoutsQuery", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v27 = v23;
    DataType = v83;
    MEMORY[0x20F30E080](v27, -1, -1);
    MEMORY[0x20F30E080](v22, -1, -1);
  }

  (*(v16 + 8))(v18, v15);
  swift_getKeyPath();
  v28 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider___observationRegistrar;
  aBlock[0] = v1;
  v29 = lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = *(v1 + 24);
  swift_getKeyPath();
  v32 = v90;
  v31 = v91;
  v33 = v91 + 2;
  if (v30)
  {
    aBlock[0] = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v34 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
    swift_beginAccess();
    v35 = v87;
    (v31[2])(v32, v1 + v34, v87);
    v36 = v82;
    GregorianDayRange.dayIndexRange.getter();
    (v31[1])(v32, v35);
    v37 = v84;
    static TrainingLoadSampleDaySummaryCollection.fake(inDayRange:separateByActivityType:)();
    _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v36, &_sSNy9HealthKit8DayIndexVGMd);
    v39 = v88;
    v38 = v89;
    (*(v89 + 104))(v88, *MEMORY[0x277D0FEE8], DataType);
    TrainingLoadViewModelProvider.update(for:dataType:)(v37, v39);
    (*(v38 + 8))(v39, DataType);
    (*(v85 + 8))(v37, v86);
    TrainingLoadViewModelProvider.TaskHolder.workoutsTaskFinished.setter(0, &unk_28239FA80, partial apply for closure #1 in TrainingLoadViewModelProvider.TaskHolder.workoutsTaskFinished.setter, &block_descriptor_165);
    return 1;
  }

  aBlock[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v75 = v28;
  v40 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
  swift_beginAccess();
  v41 = v87;
  v76 = v31[2];
  v76(v32, v1 + v40, v87);
  v42 = *MEMORY[0x277D0FEE8];
  v43 = v89;
  v74 = v33;
  v44 = *(v89 + 104);
  v45 = v88;
  v72 = v42;
  v71 = v44;
  v44(v88);
  v46 = specialized static DemoUtilities.fetchTrainingLoadSampleDaySummary(dayRange:dataType:)(v32, v45);
  v73 = v29;
  v47 = v46;
  v89 = *(v43 + 8);
  (v89)(v45, DataType);
  v50 = v31[1];
  v48 = v31 + 1;
  v49 = v50;
  v50(v32, v41);
  v70 = v47;
  if (v47)
  {
    swift_getKeyPath();
    v91 = v48;
    aBlock[0] = v1;
    v51 = v45;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v76(v32, v1 + v40, v41);
    GregorianDayRange.dayIndexRange.getter();
    v49(v32, v41);
    v52 = v84;
    TrainingLoadSampleDaySummaryCollection.init(morningIndexRange:daySummaries:)();
    v53 = v83;
    v71(v51, v72, v83);
    TrainingLoadViewModelProvider.update(for:dataType:)(v52, v51);
    (v89)(v51, v53);
    TrainingLoadViewModelProvider.TaskHolder.workoutsTaskFinished.setter(0, &unk_28239FA80, partial apply for closure #1 in TrainingLoadViewModelProvider.TaskHolder.workoutsTaskFinished.setter, &block_descriptor_165);
    (*(v85 + 8))(v52, v86);
    return 1;
  }

  v91 = v49;
  v55 = v76;
  v56 = *(v1 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider_makeWorkoutLoadSummaryCollectionSequence);
  if (v56)
  {
    v89 = *(v1 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider_makeWorkoutLoadSummaryCollectionSequence + 8);
    swift_getKeyPath();
    v57 = v41;
    aBlock[0] = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v58 = v90;
    v55(v90, v1 + v40, v57);
    v59 = v77;
    v56(v58);
    (v91)(v58, v57);
    v61 = v80;
    v60 = v81;
    v62 = v79;
    (*(v80 + 32))(v79, v59, v81);
    v63 = *(v1 + 16);
    v64 = swift_allocObject();
    v65 = swift_weakInit();
    v91 = &v70;
    MEMORY[0x28223BE20](v65);
    *(&v70 - 4) = v64;
    *(&v70 - 3) = v62;
    *(&v70 - 2) = v78;
    v66 = *(v63 + 16);
    v67 = swift_allocObject();
    *(v67 + 16) = v63;
    *(v67 + 24) = 0;
    *(v67 + 32) = partial apply for closure #1 in TrainingLoadViewModelProvider.startWorkoutsQuery();
    *(v67 + 40) = &v70 - 6;
    v68 = swift_allocObject();
    *(v68 + 16) = closure #1 in TrainingLoadViewModelProvider.TaskHolder.add(task:_:)partial apply;
    *(v68 + 24) = v67;
    aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
    aBlock[5] = v68;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_152;
    v69 = _Block_copy(aBlock);

    dispatch_sync(v66, v69);
    _Block_release(v69);
    LOBYTE(v63) = swift_isEscapingClosureAtFileLocation();

    if (v63)
    {
      __break(1u);
    }

    else
    {
      (*(v61 + 8))(v62, v60);
      return 0;
    }
  }

  else
  {
    TrainingLoadViewModelProvider.TaskHolder.workoutsTaskFinished.setter(1, &unk_28239FA80, partial apply for closure #1 in TrainingLoadViewModelProvider.TaskHolder.workoutsTaskFinished.setter, &block_descriptor_165);
    return 2;
  }

  return result;
}

uint64_t closure #1 in closure #1 in TrainingLoadViewModelProvider.startWorkoutsQuery()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  DataType = type metadata accessor for TrainingLoadDataType();
  v8[12] = DataType;
  v8[13] = *(DataType - 8);
  v8[14] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v8[15] = v10;
  v8[16] = *(v10 - 8);
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  SampleDaySummaryCollection = type metadata accessor for TrainingLoadSampleDaySummaryCollection();
  v8[19] = SampleDaySummaryCollection;
  v8[20] = *(SampleDaySummaryCollection - 8);
  v8[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13HealthBalance38TrainingLoadSampleDaySummaryCollectionVSgMd);
  v8[22] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs8IteratorVy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_p_GMd);
  v8[23] = v12;
  v8[24] = *(v12 - 8);
  v8[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in TrainingLoadViewModelProvider.startWorkoutsQuery(), 0, 0);
}

uint64_t closure #1 in closure #1 in TrainingLoadViewModelProvider.startWorkoutsQuery()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_pGMd);
  MEMORY[0x20F30BE10](v1);
  swift_beginAccess();
  *(v0 + 232) = *MEMORY[0x277D0FEE8];
  v2 = swift_task_alloc();
  *(v0 + 208) = v2;
  *v2 = v0;
  v2[1] = closure #1 in closure #1 in TrainingLoadViewModelProvider.startWorkoutsQuery();
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);

  return MEMORY[0x2822005A8](v3, 0, 0, v4, v0 + 40);
}

{

  if (v0)
  {
    v1 = closure #1 in closure #1 in TrainingLoadViewModelProvider.startWorkoutsQuery();
  }

  else
  {
    v1 = closure #1 in closure #1 in TrainingLoadViewModelProvider.startWorkoutsQuery();
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

{
  v25 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    (*(v0 + 72))(v4);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    (*(v3 + 32))(*(v0 + 168), v1, v2);
    static WOLog.trainingLoad.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 144);
    v11 = *(v0 + 120);
    v12 = *(v0 + 128);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136446210;
      v15 = _typeName(_:qualified:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v24);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_20C66F000, v7, v8, "[%{public}s] Received Workout load day summaries", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x20F30E080](v14, -1, -1);
      MEMORY[0x20F30E080](v13, -1, -1);
    }

    (*(v12 + 8))(v10, v11);
    Strong = swift_weakLoadStrong();
    *(v0 + 216) = Strong;
    if (Strong)
    {
      (*(*(v0 + 104) + 104))(*(v0 + 112), *(v0 + 232), *(v0 + 96));
      type metadata accessor for MainActor();
      *(v0 + 224) = static MainActor.shared.getter();
      v20 = dispatch thunk of Actor.unownedExecutor.getter();

      return MEMORY[0x2822009F8](closure #1 in closure #1 in TrainingLoadViewModelProvider.startWorkoutsQuery(), v20, v19);
    }

    else
    {
      (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
      v21 = swift_task_alloc();
      *(v0 + 208) = v21;
      *v21 = v0;
      v21[1] = closure #1 in closure #1 in TrainingLoadViewModelProvider.startWorkoutsQuery();
      v22 = *(v0 + 176);
      v23 = *(v0 + 184);

      return MEMORY[0x2822005A8](v22, 0, 0, v23, v0 + 40);
    }
  }
}

{
  v1 = v0[21];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];

  TrainingLoadViewModelProvider.update(for:dataType:)(v1, v2);

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](closure #1 in closure #1 in TrainingLoadViewModelProvider.startWorkoutsQuery(), 0, 0);
}

{
  (*(v0[20] + 8))(v0[21], v0[19]);
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #1 in TrainingLoadViewModelProvider.startWorkoutsQuery();
  v2 = v0[22];
  v3 = v0[23];

  return MEMORY[0x2822005A8](v2, 0, 0, v3, v0 + 5);
}

{
  v24 = v0;
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
  v1 = *(v0 + 40);
  static WOLog.trainingLoad.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 128);
    v22 = *(v0 + 136);
    v6 = *(v0 + 120);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136446466;
    v9 = _typeName(_:qualified:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v23);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v0 + 48) = v1;
    v12 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v13 = String.init<A>(reflecting:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v23);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_20C66F000, v3, v4, "[%{public}s] Received error for Workout load summary query: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v8, -1, -1);
    MEMORY[0x20F30E080](v7, -1, -1);

    v16 = (*(v5 + 8))(v22, v6);
  }

  else
  {
    v18 = *(v0 + 128);
    v17 = *(v0 + 136);
    v19 = *(v0 + 120);

    v16 = (*(v18 + 8))(v17, v19);
  }

  (*(v0 + 72))(v16);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of (lower: DayIndex, upper: DayIndex)(a3, v25 - v10, &_sScPSgMd);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v11, &_sScPSgMd);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
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

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

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

uint64_t TrainingLoadViewModelProvider.startAllDayQuery()()
{
  v1 = v0;
  v2 = *v0;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_pGMd);
  v3 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v77 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v70 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy9HealthKit8DayIndexVGMd);
  MEMORY[0x28223BE20](v8 - 8);
  v82 = &v70 - v9;
  SampleDaySummaryCollection = type metadata accessor for TrainingLoadSampleDaySummaryCollection();
  v85 = *(SampleDaySummaryCollection - 8);
  v86 = SampleDaySummaryCollection;
  MEMORY[0x28223BE20](SampleDaySummaryCollection);
  v84 = (&v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  DataType = type metadata accessor for TrainingLoadDataType();
  v89 = *(DataType - 8);
  MEMORY[0x28223BE20](DataType);
  v88 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for GregorianDayRange();
  v91 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v90 = (&v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.trainingLoad.getter();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v80 = v3;
  v79 = v7;
  v78 = v2;
  v83 = DataType;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v22 = 136446210;
    v24 = _typeName(_:qualified:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, aBlock);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_20C66F000, v19, v20, "[%{public}s] Spinning up allDayQuery", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v27 = v23;
    DataType = v83;
    MEMORY[0x20F30E080](v27, -1, -1);
    MEMORY[0x20F30E080](v22, -1, -1);
  }

  (*(v16 + 8))(v18, v15);
  swift_getKeyPath();
  v28 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider___observationRegistrar;
  aBlock[0] = v1;
  v29 = lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = *(v1 + 24);
  swift_getKeyPath();
  v32 = v90;
  v31 = v91;
  v33 = v91 + 2;
  if (v30)
  {
    aBlock[0] = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v34 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
    swift_beginAccess();
    v35 = v87;
    (v31[2])(v32, v1 + v34, v87);
    v36 = v82;
    GregorianDayRange.dayIndexRange.getter();
    (v31[1])(v32, v35);
    v37 = v84;
    static TrainingLoadSampleDaySummaryCollection.fake(inDayRange:separateByActivityType:)();
    _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v36, &_sSNy9HealthKit8DayIndexVGMd);
    v39 = v88;
    v38 = v89;
    (*(v89 + 104))(v88, *MEMORY[0x277D0FEE0], DataType);
    TrainingLoadViewModelProvider.update(for:dataType:)(v37, v39);
    (*(v38 + 8))(v39, DataType);
    (*(v85 + 8))(v37, v86);
    TrainingLoadViewModelProvider.TaskHolder.workoutsTaskFinished.setter(0, &unk_28239F990, partial apply for closure #1 in TrainingLoadViewModelProvider.TaskHolder.allDayTaskFinished.setter, &block_descriptor_140_0);
    return 1;
  }

  aBlock[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v75 = v28;
  v40 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
  swift_beginAccess();
  v41 = v87;
  v76 = v31[2];
  v76(v32, v1 + v40, v87);
  v42 = *MEMORY[0x277D0FEE0];
  v43 = v89;
  v74 = v33;
  v44 = *(v89 + 104);
  v45 = v88;
  v72 = v42;
  v71 = v44;
  v44(v88);
  v46 = specialized static DemoUtilities.fetchTrainingLoadSampleDaySummary(dayRange:dataType:)(v32, v45);
  v73 = v29;
  v47 = v46;
  v89 = *(v43 + 8);
  (v89)(v45, DataType);
  v50 = v31[1];
  v48 = v31 + 1;
  v49 = v50;
  v50(v32, v41);
  v70 = v47;
  if (v47)
  {
    swift_getKeyPath();
    v91 = v48;
    aBlock[0] = v1;
    v51 = v45;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v76(v32, v1 + v40, v41);
    GregorianDayRange.dayIndexRange.getter();
    v49(v32, v41);
    v52 = v84;
    TrainingLoadSampleDaySummaryCollection.init(morningIndexRange:daySummaries:)();
    v53 = v83;
    v71(v51, v72, v83);
    TrainingLoadViewModelProvider.update(for:dataType:)(v52, v51);
    (v89)(v51, v53);
    TrainingLoadViewModelProvider.TaskHolder.workoutsTaskFinished.setter(0, &unk_28239F990, partial apply for closure #1 in TrainingLoadViewModelProvider.TaskHolder.allDayTaskFinished.setter, &block_descriptor_140_0);
    (*(v85 + 8))(v52, v86);
    return 1;
  }

  v91 = v49;
  v55 = v76;
  v56 = *(v1 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider_makeAllDayLoadSummaryCollectionSequence);
  if (v56)
  {
    v89 = *(v1 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider_makeAllDayLoadSummaryCollectionSequence + 8);
    swift_getKeyPath();
    v57 = v41;
    aBlock[0] = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v58 = v90;
    v55(v90, v1 + v40, v57);
    v59 = v77;
    v56(v58);
    (v91)(v58, v57);
    v61 = v80;
    v60 = v81;
    v62 = v79;
    (*(v80 + 32))(v79, v59, v81);
    v63 = *(v1 + 16);
    v64 = swift_allocObject();
    v65 = swift_weakInit();
    v91 = &v70;
    MEMORY[0x28223BE20](v65);
    *(&v70 - 4) = v64;
    *(&v70 - 3) = v62;
    *(&v70 - 2) = v78;
    v66 = *(v63 + 16);
    v67 = swift_allocObject();
    *(v67 + 16) = v63;
    *(v67 + 24) = 1;
    *(v67 + 32) = partial apply for closure #1 in TrainingLoadViewModelProvider.startAllDayQuery();
    *(v67 + 40) = &v70 - 6;
    v68 = swift_allocObject();
    *(v68 + 16) = closure #1 in TrainingLoadViewModelProvider.TaskHolder.add(task:_:)partial apply;
    *(v68 + 24) = v67;
    aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
    aBlock[5] = v68;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_127;
    v69 = _Block_copy(aBlock);

    dispatch_sync(v66, v69);
    _Block_release(v69);
    LOBYTE(v63) = swift_isEscapingClosureAtFileLocation();

    if (v63)
    {
      __break(1u);
    }

    else
    {
      (*(v61 + 8))(v62, v60);
      return 0;
    }
  }

  else
  {
    TrainingLoadViewModelProvider.TaskHolder.workoutsTaskFinished.setter(1, &unk_28239F990, partial apply for closure #1 in TrainingLoadViewModelProvider.TaskHolder.allDayTaskFinished.setter, &block_descriptor_140_0);
    return 2;
  }

  return result;
}

uint64_t closure #1 in TrainingLoadViewModelProvider.startWorkoutsQuery()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a5;
  v30 = a7;
  v26 = a6;
  v27 = a1;
  v28 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_pGMd);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v26 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  (*(v9 + 16))(v12, a4, v8);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  (*(v9 + 32))(v21 + v18, v12, v8);
  *(v21 + v19) = v17;
  v22 = (v21 + v20);
  v23 = v28;
  *v22 = v27;
  v22[1] = v23;
  *(v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8)) = v29;

  v24 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v15, v30, v21);
  _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v15, &_sScPSgMd);
  return v24;
}

uint64_t closure #1 in closure #1 in TrainingLoadViewModelProvider.startAllDayQuery()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  DataType = type metadata accessor for TrainingLoadDataType();
  v8[12] = DataType;
  v8[13] = *(DataType - 8);
  v8[14] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v8[15] = v10;
  v8[16] = *(v10 - 8);
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  SampleDaySummaryCollection = type metadata accessor for TrainingLoadSampleDaySummaryCollection();
  v8[19] = SampleDaySummaryCollection;
  v8[20] = *(SampleDaySummaryCollection - 8);
  v8[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13HealthBalance38TrainingLoadSampleDaySummaryCollectionVSgMd);
  v8[22] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs8IteratorVy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_p_GMd);
  v8[23] = v12;
  v8[24] = *(v12 - 8);
  v8[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in TrainingLoadViewModelProvider.startAllDayQuery(), 0, 0);
}

uint64_t closure #1 in closure #1 in TrainingLoadViewModelProvider.startAllDayQuery()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_pGMd);
  MEMORY[0x20F30BE10](v1);
  swift_beginAccess();
  *(v0 + 232) = *MEMORY[0x277D0FEE0];
  v2 = swift_task_alloc();
  *(v0 + 208) = v2;
  *v2 = v0;
  v2[1] = closure #1 in closure #1 in TrainingLoadViewModelProvider.startAllDayQuery();
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);

  return MEMORY[0x2822005A8](v3, 0, 0, v4, v0 + 40);
}

{

  if (v0)
  {
    v1 = closure #1 in closure #1 in TrainingLoadViewModelProvider.startAllDayQuery();
  }

  else
  {
    v1 = closure #1 in closure #1 in TrainingLoadViewModelProvider.startAllDayQuery();
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

{
  v25 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    (*(v0 + 72))(v4);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    (*(v3 + 32))(*(v0 + 168), v1, v2);
    static WOLog.trainingLoad.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 144);
    v11 = *(v0 + 120);
    v12 = *(v0 + 128);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136446210;
      v15 = _typeName(_:qualified:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v24);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_20C66F000, v7, v8, "[%{public}s] Received All day load day summaries", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x20F30E080](v14, -1, -1);
      MEMORY[0x20F30E080](v13, -1, -1);
    }

    (*(v12 + 8))(v10, v11);
    Strong = swift_weakLoadStrong();
    *(v0 + 216) = Strong;
    if (Strong)
    {
      (*(*(v0 + 104) + 104))(*(v0 + 112), *(v0 + 232), *(v0 + 96));
      type metadata accessor for MainActor();
      *(v0 + 224) = static MainActor.shared.getter();
      v20 = dispatch thunk of Actor.unownedExecutor.getter();

      return MEMORY[0x2822009F8](closure #1 in closure #1 in TrainingLoadViewModelProvider.startAllDayQuery(), v20, v19);
    }

    else
    {
      (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
      v21 = swift_task_alloc();
      *(v0 + 208) = v21;
      *v21 = v0;
      v21[1] = closure #1 in closure #1 in TrainingLoadViewModelProvider.startAllDayQuery();
      v22 = *(v0 + 176);
      v23 = *(v0 + 184);

      return MEMORY[0x2822005A8](v22, 0, 0, v23, v0 + 40);
    }
  }
}

{
  v1 = v0[21];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];

  TrainingLoadViewModelProvider.update(for:dataType:)(v1, v2);

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](closure #1 in closure #1 in TrainingLoadViewModelProvider.startAllDayQuery(), 0, 0);
}

{
  (*(v0[20] + 8))(v0[21], v0[19]);
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #1 in TrainingLoadViewModelProvider.startAllDayQuery();
  v2 = v0[22];
  v3 = v0[23];

  return MEMORY[0x2822005A8](v2, 0, 0, v3, v0 + 5);
}

{
  v24 = v0;
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
  v1 = *(v0 + 40);
  static WOLog.trainingLoad.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 128);
    v22 = *(v0 + 136);
    v6 = *(v0 + 120);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136446466;
    v9 = _typeName(_:qualified:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v23);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v0 + 48) = v1;
    v12 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v13 = String.init<A>(reflecting:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v23);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_20C66F000, v3, v4, "[%{public}s] Received error for all day summary query: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v8, -1, -1);
    MEMORY[0x20F30E080](v7, -1, -1);

    v16 = (*(v5 + 8))(v22, v6);
  }

  else
  {
    v18 = *(v0 + 128);
    v17 = *(v0 + 136);
    v19 = *(v0 + 120);

    v16 = (*(v18 + 8))(v17, v19);
  }

  (*(v0 + 72))(v16);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t TrainingLoadViewModelProvider.startWorkoutsByActivityTypeQuery(useFakeData:)(int a1)
{
  v2 = v1;
  LODWORD(v98) = a1;
  v99 = *v1;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_pGMd);
  v3 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v84 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy9HealthKit8DayIndexVGMd);
  MEMORY[0x28223BE20](v8 - 8);
  v86 = &v84 - v9;
  SampleDaySummaryCollection = type metadata accessor for TrainingLoadSampleDaySummaryCollection();
  v11 = *(SampleDaySummaryCollection - 8);
  MEMORY[0x28223BE20](SampleDaySummaryCollection);
  v13 = (&v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  DataType = type metadata accessor for TrainingLoadDataType();
  v88 = *(DataType - 8);
  MEMORY[0x28223BE20](DataType);
  v101 = (&v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v104 = type metadata accessor for GregorianDayRange();
  v89 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v103 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for Logger();
  v16 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v18 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.trainingLoad.getter();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v87 = v13;
  v96 = v7;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v85 = SampleDaySummaryCollection;
    v23 = v22;
    v24 = swift_slowAlloc();
    v94 = v3;
    v25 = v24;
    aBlock[0] = v24;
    *v23 = 136446210;
    v26 = _typeName(_:qualified:)();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, aBlock);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_20C66F000, v19, v20, "[%{public}s] Spinning up workoutsByActivityTypeQuery", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v29 = v25;
    v3 = v94;
    MEMORY[0x20F30E080](v29, -1, -1);
    v30 = v23;
    SampleDaySummaryCollection = v85;
    MEMORY[0x20F30E080](v30, -1, -1);
  }

  (*(v16 + 8))(v18, v100);
  swift_getKeyPath();
  v31 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider___observationRegistrar;
  aBlock[0] = v2;
  v32 = lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + 24))
  {
    swift_getKeyPath();
    aBlock[0] = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v33 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
    swift_beginAccess();
    v34 = v89;
    v35 = v2 + v33;
    v37 = v103;
    v36 = v104;
    (*(v89 + 16))(v103, v35, v104);
    v38 = v86;
    GregorianDayRange.dayIndexRange.getter();
    (*(v34 + 8))(v37, v36);
    v39 = 1;
    v40 = v87;
    static TrainingLoadSampleDaySummaryCollection.fake(inDayRange:separateByActivityType:)();
    _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v38, &_sSNy9HealthKit8DayIndexVGMd);
    v42 = v101;
    v41 = DataType;
    *v101 = 13;
    v43 = v88;
    (*(v88 + 104))(v42, *MEMORY[0x277D0FED8], v41);
    TrainingLoadViewModelProvider.update(for:dataType:)(v40, v42);
    (*(v43 + 8))(v42, v41);
    (*(v11 + 8))(v40, SampleDaySummaryCollection);
    TrainingLoadViewModelProvider.TaskHolder.workoutsTaskFinished.setter(0, &unk_28239F8A0, partial apply for closure #1 in TrainingLoadViewModelProvider.TaskHolder.workoutsByActivityTaskFinished.setter, &block_descriptor_115);
    return v39;
  }

  if (v98)
  {
    v105 = MEMORY[0x277D84F90];
    result = [objc_opt_self() _allWorkoutActivityTypes];
    if (result)
    {
      v45 = result;
      v98 = v32;
      v99 = v31;
      v84 = v11;
      type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber);
      v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v85 = SampleDaySummaryCollection;
      if (v46 >> 62)
      {
        goto LABEL_29;
      }

      for (i = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
      {
        v48 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;

        v100 = v2;
        v97 = v48;
        swift_beginAccess();
        if (!i)
        {
          break;
        }

        v49 = 0;
        v95 = (v46 & 0xFFFFFFFFFFFFFF8);
        v96 = v46 & 0xC000000000000001;
        v94 = (v89 + 16);
        v93 = *MEMORY[0x277D0FED8];
        v92 = (v88 + 104);
        v91 = (v88 + 8);
        v90 = (v89 + 8);
        while (1)
        {
          if (v96)
          {
            v50 = MEMORY[0x20F30C990](v49, v46);
          }

          else
          {
            if (v49 >= *(v95 + 2))
            {
              goto LABEL_28;
            }

            v50 = *(v46 + 8 * v49 + 32);
          }

          v51 = v50;
          v52 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            break;
          }

          v53 = [v50 unsignedIntegerValue];
          swift_getKeyPath();
          v54 = v100;
          v107 = v100;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v55 = v54 + v97;
          v56 = v103;
          v2 = v104;
          (*v94)(v103, v55, v104);
          v58 = v101;
          v57 = DataType;
          *v101 = v53;
          (*v92)(v58, v93, v57);
          v59 = specialized static DemoUtilities.fetchTrainingLoadSampleDaySummary(dayRange:dataType:)(v56, v58);
          (*v91)(v58, v57);
          (*v90)(v56, v2);
          if (v59)
          {
            specialized Array.append<A>(contentsOf:)(v59);
          }

          ++v49;
          if (v52 == i)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        ;
      }

LABEL_22:

      v74 = v100;

      if (*(v105 + 16))
      {
        swift_getKeyPath();
        v107 = v74;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v75 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
        swift_beginAccess();
        v76 = v89;
        v77 = v74 + v75;
        v79 = v103;
        v78 = v104;
        (*(v89 + 16))(v103, v77, v104);
        GregorianDayRange.dayIndexRange.getter();
        (*(v76 + 8))(v79, v78);

        v80 = v87;
        TrainingLoadSampleDaySummaryCollection.init(morningIndexRange:daySummaries:)();
        v82 = v101;
        v81 = DataType;
        *v101 = 13;
        v83 = v88;
        (*(v88 + 104))(v82, *MEMORY[0x277D0FED8], v81);
        TrainingLoadViewModelProvider.update(for:dataType:)(v80, v82);
        (*(v83 + 8))(v82, v81);
        (*(v84 + 8))(v80, v85);
      }

      TrainingLoadViewModelProvider.TaskHolder.workoutsTaskFinished.setter(0, &unk_28239F8A0, partial apply for closure #1 in TrainingLoadViewModelProvider.TaskHolder.workoutsByActivityTaskFinished.setter, &block_descriptor_115);

      return 1;
    }
  }

  else
  {
    v60 = *(v2 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider_makeWorkoutLoadByActivityTypeSummaryCollectionSequence);
    if (!v60)
    {
      TrainingLoadViewModelProvider.TaskHolder.workoutsTaskFinished.setter(1, &unk_28239F8A0, partial apply for closure #1 in TrainingLoadViewModelProvider.TaskHolder.workoutsByActivityTaskFinished.setter, &block_descriptor_115);
      return 2;
    }

    swift_getKeyPath();
    aBlock[0] = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v61 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
    swift_beginAccess();
    v62 = v89;
    v64 = v103;
    v63 = v104;
    (*(v89 + 16))(v103, v2 + v61, v104);
    v65 = v95;
    v60(v64);
    (*(v62 + 8))(v64, v63);
    v66 = v96;
    v3[4](v96, v65, v97);
    v67 = *(v2 + 16);
    TrainingLoadViewModelProvider.TaskHolder.workoutsTaskFinished.setter(0, &unk_28239F8A0, partial apply for closure #1 in TrainingLoadViewModelProvider.TaskHolder.workoutsByActivityTaskFinished.setter, &block_descriptor_115);
    v68 = swift_allocObject();
    v69 = swift_weakInit();
    MEMORY[0x28223BE20](v69);
    *(&v84 - 4) = v68;
    *(&v84 - 3) = v66;
    *(&v84 - 2) = v99;
    v70 = *(v67 + 16);
    v71 = swift_allocObject();
    *(v71 + 16) = v67;
    *(v71 + 24) = 2;
    *(v71 + 32) = partial apply for closure #2 in TrainingLoadViewModelProvider.startWorkoutsByActivityTypeQuery(useFakeData:);
    *(v71 + 40) = &v84 - 6;
    v72 = swift_allocObject();
    *(v72 + 16) = partial apply for closure #1 in TrainingLoadViewModelProvider.TaskHolder.add(task:_:);
    *(v72 + 24) = v71;
    aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
    aBlock[5] = v72;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_29;
    v73 = _Block_copy(aBlock);

    dispatch_sync(v70, v73);
    _Block_release(v73);
    LOBYTE(v67) = swift_isEscapingClosureAtFileLocation();

    if ((v67 & 1) == 0)
    {
      (v3[1])(v66, v97);
      return 0;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #2 in TrainingLoadViewModelProvider.startWorkoutsByActivityTypeQuery(useFakeData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  DataType = type metadata accessor for TrainingLoadDataType();
  v8[12] = DataType;
  v8[13] = *(DataType - 8);
  v8[14] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v8[15] = v10;
  v8[16] = *(v10 - 8);
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  SampleDaySummaryCollection = type metadata accessor for TrainingLoadSampleDaySummaryCollection();
  v8[19] = SampleDaySummaryCollection;
  v8[20] = *(SampleDaySummaryCollection - 8);
  v8[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13HealthBalance38TrainingLoadSampleDaySummaryCollectionVSgMd);
  v8[22] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs8IteratorVy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_p_GMd);
  v8[23] = v12;
  v8[24] = *(v12 - 8);
  v8[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #2 in TrainingLoadViewModelProvider.startWorkoutsByActivityTypeQuery(useFakeData:), 0, 0);
}

Swift::Void __swiftcall TrainingLoadViewModelProvider.startQuery(isFaking:)(Swift::Bool isFaking)
{
  v2 = v1;
  v3 = isFaking;
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v20 - v6;
  v8 = MEMORY[0x277D84F78];
  if (*(v2 + 24) == v3)
  {
    *(v2 + 24) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v20[-2] = v2;
    LOBYTE(v20[-1]) = v3;
    v20[1] = v2;
    lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v10 = v2[2];
  TrainingLoadViewModelProvider.TaskHolder.cancelAll()();
  ViewModel = TrainingLoadViewModelProvider.startWorkoutsQuery()();
  v12 = TrainingLoadViewModelProvider.startAllDayQuery()();
  v14 = ViewModel == 1 || v12 == 1;
  TrainingLoadViewModelProvider.startWorkoutsByActivityTypeQuery(useFakeData:)(v14);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v16;
  v17[5] = v4;
  v18 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in TrainingLoadViewModelProvider.startQuery(isFaking:), v17);
  _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v7, &_sScPSgMd);
  v19 = *(v10 + 64);
  *(v10 + 64) = v18;
  if (v19)
  {

    MEMORY[0x20F30BE00](v19, v8 + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  }
}

uint64_t closure #1 in TrainingLoadViewModelProvider.startQuery(isFaking:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = type metadata accessor for Logger();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12NotificationVSgMd);
  v5[12] = swift_task_alloc();
  v7 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in TrainingLoadViewModelProvider.startQuery(isFaking:), 0, 0);
}

uint64_t closure #1 in TrainingLoadViewModelProvider.startQuery(isFaking:)()
{
  v1 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  swift_beginAccess();
  v2 = lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type NSNotificationCenter.Notifications.Iterator and conformance NSNotificationCenter.Notifications.Iterator, MEMORY[0x277CC9D68]);
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = closure #1 in TrainingLoadViewModelProvider.startQuery(isFaking:);
  v4 = v0[12];
  v5 = v0[13];

  return MEMORY[0x282200308](v4, v5, v2);
}

{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = closure #1 in TrainingLoadViewModelProvider.startQuery(isFaking:);
  }

  else
  {
    v2 = closure #1 in TrainingLoadViewModelProvider.startQuery(isFaking:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  return MEMORY[0x2822009F8](closure #1 in TrainingLoadViewModelProvider.startQuery(isFaking:), 0, 0);
}

{
  v37 = v0;
  v1 = v0[12];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[14] + 8))(v0[15], v0[13]);
LABEL_13:

    v31 = v0[1];

    return v31();
  }

  static WOLog.trainingLoad.getter();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v36 = v10;
    *v9 = 136446210;
    v11 = _typeName(_:qualified:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v36);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_20C66F000, v3, v4, "[%{public}s] did receive significantTimeChangeNotification notification", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x20F30E080](v10, -1, -1);
    MEMORY[0x20F30E080](v9, -1, -1);
  }

  v14 = *(v8 + 8);
  v14(v6, v7);
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (!Strong)
  {
    static WOLog.trainingLoad.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[14];
    v22 = v0[15];
    v23 = v0[13];
    v24 = v0[10];
    v25 = v0[8];
    if (v20)
    {
      v35 = v0[13];
      v34 = v0[15];
      v26 = swift_slowAlloc();
      v33 = v24;
      v27 = swift_slowAlloc();
      v36 = v27;
      *v26 = 136446210;
      v28 = _typeName(_:qualified:)();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v36);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_20C66F000, v18, v19, "[%{public}s] Self is nil so canceling the significant time change observation", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x20F30E080](v27, -1, -1);
      MEMORY[0x20F30E080](v26, -1, -1);

      v14(v33, v25);
      (*(v21 + 8))(v34, v35);
    }

    else
    {

      v14(v24, v25);
      (*(v21 + 8))(v22, v23);
    }

    _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v0[12], &_s10Foundation12NotificationVSgMd);
    goto LABEL_13;
  }

  type metadata accessor for MainActor();
  v0[19] = static MainActor.shared.getter();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in TrainingLoadViewModelProvider.startQuery(isFaking:), v17, v16);
}

{
  *(v0 + 40) = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

{

  TrainingLoadViewModelProvider.refreshDayRange()();

  return MEMORY[0x2822009F8](closure #1 in TrainingLoadViewModelProvider.startQuery(isFaking:), 0, 0);
}

{
  v1 = v0[12];

  _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v1, &_s10Foundation12NotificationVSgMd);
  v2 = lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type NSNotificationCenter.Notifications.Iterator and conformance NSNotificationCenter.Notifications.Iterator, MEMORY[0x277CC9D68]);
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = closure #1 in TrainingLoadViewModelProvider.startQuery(isFaking:);
  v4 = v0[12];
  v5 = v0[13];

  return MEMORY[0x282200308](v4, v5, v2);
}

uint64_t TrainingLoadViewModelProvider.refreshDayRange()()
{
  v1 = v0;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit8DayIndexV5lower_AC5uppertMd);
  MEMORY[0x28223BE20](v62);
  v61 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v60 = &v58 - v4;
  v5 = type metadata accessor for DayIndex();
  v75 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v76 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v77 = &v58 - v8;
  v9 = type metadata accessor for Calendar.Identifier();
  v66 = *(v9 - 8);
  v67 = v9;
  MEMORY[0x28223BE20](v9);
  v65 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Calendar();
  v73 = *(v11 - 8);
  v74 = v11;
  MEMORY[0x28223BE20](v11);
  v69 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v71 = &v58 - v14;
  v72 = type metadata accessor for Date();
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v64 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v68 = &v58 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v58 - v22;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy9HealthKit8DayIndexVGMd);
  MEMORY[0x28223BE20](v58);
  v25 = &v58 - v24;
  v26 = type metadata accessor for GregorianDayRange();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v59 = &v58 - v31;
  swift_getKeyPath();
  v78 = v0;
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v32 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
  swift_beginAccess();
  v33 = *(v27 + 16);
  v63 = v1;
  v33(v29, v1 + v32, v26);
  GregorianDayRange.dayIndexRange.getter();
  (*(v27 + 8))(v29, v26);
  v34 = v75;
  v35 = *(v75 + 16);
  v35(v23, v25, v5);
  v36 = *(v34 + 56);
  v36(v23, 0, 1, v5);
  v36(v20, 1, 1, v5);
  v37 = specialized ClosedRange<>.distance(from:to:)(v23, v20);
  _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v20, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
  _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v23, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
  v38 = v25;
  result = _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v25, &_sSNy9HealthKit8DayIndexVGMd);
  if (__OFSUB__(v37, 1))
  {
    __break(1u);
  }

  else
  {
    v40 = v68;
    static Date.now.getter();
    v42 = v65;
    v41 = v66;
    v43 = v67;
    (*(v66 + 104))(v65, *MEMORY[0x277CC9830], v67);
    v44 = v71;
    Calendar.init(identifier:)();
    (*(v41 + 8))(v42, v43);
    (*(v70 + 16))(v64, v40, v72);
    v45 = v73 + 16;
    v67 = *(v73 + 16);
    v67(v69, v44, v74);
    v46 = v5;
    DayIndex.init(date:calendar:)();
    static DayIndex.- infix(_:_:)();
    lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6A8]);
    v47 = v5;
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v48 = v60;
      v35(v60, v76, v46);
      v49 = v61;
      v50 = v62;
      v35((v48 + *(v62 + 48)), v77, v46);
      outlined init with copy of (lower: DayIndex, upper: DayIndex)(v48, v49, &_s9HealthKit8DayIndexV5lower_AC5uppertMd);
      v51 = *(v50 + 48);
      v52 = v75;
      v53 = *(v75 + 32);
      v66 = v45;
      v53(v38, v49, v47);
      v54 = *(v52 + 8);
      v54(v49 + v51, v47);
      outlined init with take of (lower: DayIndex, upper: DayIndex)(v48, v49, &_s9HealthKit8DayIndexV5lower_AC5uppertMd);
      v53(&v38[*(v58 + 36)], v49 + *(v50 + 48), v47);
      v54(v49, v47);
      v55 = v71;
      v56 = v74;
      v67(v69, v71, v74);
      v57 = v59;
      GregorianDayRange.init(dayIndexRange:gregorianCalendar:)();
      v54(v76, v47);
      v54(v77, v47);
      (*(v73 + 8))(v55, v56);
      (*(v70 + 8))(v68, v72);
      return TrainingLoadViewModelProvider.dayRange.setter(v57);
    }
  }

  __break(1u);
  return result;
}

uint64_t TrainingLoadViewModelProvider.update(for:dataType:)(void (**a1)(char *, uint64_t, uint64_t), uint64_t a2)
{
  v3 = v2;
  v108 = a1;
  v100 = type metadata accessor for GregorianDayRange();
  v5 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v99 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ViewModel = type metadata accessor for TrainingLoadViewModel(0);
  v109 = *(ViewModel - 8);
  MEMORY[0x28223BE20](ViewModel - 8);
  v111 = (&v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v102 = &v92 - v10;
  MEMORY[0x28223BE20](v11);
  v101 = &v92 - v12;
  MEMORY[0x28223BE20](v13);
  v112 = &v92 - v14;
  MEMORY[0x28223BE20](v15);
  v94 = &v92 - v16;
  DataType = type metadata accessor for TrainingLoadDataType();
  v18 = *(DataType - 8);
  MEMORY[0x28223BE20](DataType);
  v20 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v92 - v23;
  v25 = *(v18 + 16);
  v25(&v92 - v23, a2, DataType, v22);
  v26 = (*(v18 + 88))(v24, DataType);
  v27 = *MEMORY[0x277D0FED8];
  v98 = v26;
  v113 = v20;
  v114 = DataType;
  v95 = v18;
  if (v26 == v27)
  {
    v92 = a2;
    swift_getKeyPath();
    v28 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider___observationRegistrar;
    v120 = v3;
    v29 = lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
    v97 = v28;
    v96 = v29;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v30 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__viewModels;
    swift_beginAccess();
    v93 = v3;
    v31 = *(v3 + v30);
    v32 = *(v31 + 16);

    v106 = v32;
    if (v32)
    {
      v33 = 0;
      v104 = *MEMORY[0x277D0FEE8];
      v111 = (v18 + 104);
      v110 = (v18 + 8);
      v103 = *MEMORY[0x277D0FEE0];
      v55 = MEMORY[0x277D84F90];
      v34 = v94;
      v107 = v5;
      v105 = v31;
      while (v33 < *(v31 + 16))
      {
        v18 = v55;
        v35 = (*(v109 + 80) + 32) & ~*(v109 + 80);
        v36 = *(v109 + 72);
        outlined init with copy of TrainingLoadViewModel(v31 + v35 + v36 * v33, v34);
        v37 = *v111;
        v38 = v113;
        v39 = v34;
        v40 = v114;
        (*v111)(v113, v104, v114);
        v41 = static TrainingLoadDataType.== infix(_:_:)();
        v42 = *v110;
        (*v110)(v38, v40);
        if (v41 & 1) != 0 || (v43 = v113, v44 = v114, v37(v113, v103, v114), v45 = static TrainingLoadDataType.== infix(_:_:)(), v42(v43, v44), (v45))
        {
          outlined init with take of TrainingLoadViewModel(v39, v112);
          v55 = v18;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v119 = v18;
          v34 = v39;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1);
            v55 = v119;
          }

          v31 = v105;
          v48 = v55[2];
          v47 = v55[3];
          if (v48 >= v47 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v47 > 1, v48 + 1, 1);
            v55 = v119;
          }

          v55[2] = v48 + 1;
          outlined init with take of TrainingLoadViewModel(v112, v55 + v35 + v48 * v36);
        }

        else
        {
          outlined destroy of TrainingLoadViewModel(v39);
          v55 = v18;
          v34 = v39;
          v31 = v105;
        }

        ++v33;
        v5 = v107;
        if (v106 == v33)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      v55 = MEMORY[0x277D84F90];
LABEL_20:

      SampleDaySummary = TrainingLoadSampleDaySummaryCollection.daySummaries.getter();
      SampleDaySummaryVGTt1g5014_s9WorkoutUI29ij78ViewModelProviderC6update33_D5277829893C0F285DEBDE28ED765EEDLL3for8dataTypey13g12Balance0cD26klm32CollectionV_AH0cd4DataQ0OtFSo017dE19Q0VAH0cdtuV0VXEfU0_Tf1nc_nTf4g_n = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSo21HKWorkoutActivityTypeV_Say13HealthBalance28TrainingLoadSampleDaySummaryVGTt1g5014_s9WorkoutUI29ij78ViewModelProviderC6update33_D5277829893C0F285DEBDE28ED765EEDLL3for8dataTypey13g12Balance0cD26klm32CollectionV_AH0cd4DataQ0OtFSo017dE19Q0VAH0cdtuV0VXEfU0_Tf1nc_nTf4g_n(SampleDaySummary);
      v106 = 0;

      v67 = SampleDaySummaryVGTt1g5014_s9WorkoutUI29ij78ViewModelProviderC6update33_D5277829893C0F285DEBDE28ED765EEDLL3for8dataTypey13g12Balance0cD26klm32CollectionV_AH0cd4DataQ0OtFSo017dE19Q0VAH0cdtuV0VXEfU0_Tf1nc_nTf4g_n + 64;
      v66 = *(SampleDaySummaryVGTt1g5014_s9WorkoutUI29ij78ViewModelProviderC6update33_D5277829893C0F285DEBDE28ED765EEDLL3for8dataTypey13g12Balance0cD26klm32CollectionV_AH0cd4DataQ0OtFSo017dE19Q0VAH0cdtuV0VXEfU0_Tf1nc_nTf4g_n + 64);
      v112 = SampleDaySummaryVGTt1g5014_s9WorkoutUI29ij78ViewModelProviderC6update33_D5277829893C0F285DEBDE28ED765EEDLL3for8dataTypey13g12Balance0cD26klm32CollectionV_AH0cd4DataQ0OtFSo017dE19Q0VAH0cdtuV0VXEfU0_Tf1nc_nTf4g_n;
      v68 = 1 << *(SampleDaySummaryVGTt1g5014_s9WorkoutUI29ij78ViewModelProviderC6update33_D5277829893C0F285DEBDE28ED765EEDLL3for8dataTypey13g12Balance0cD26klm32CollectionV_AH0cd4DataQ0OtFSo017dE19Q0VAH0cdtuV0VXEfU0_Tf1nc_nTf4g_n + 32);
      v69 = -1;
      if (v68 < 64)
      {
        v69 = ~(-1 << v68);
      }

      v18 = v69 & v66;
      v33 = v93;
      v111 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
      swift_beginAccess();
      v70 = 0;
      v71 = (v68 + 63) >> 6;
      v110 = (v95 + 104);
      v108 = (v5 + 16);
      if (v18)
      {
        goto LABEL_27;
      }

      while (1)
      {
        v72 = v70 + 1;
        if (__OFADD__(v70, 1))
        {
          break;
        }

        if (v72 >= v71)
        {

          v18 = v106;
          goto LABEL_34;
        }

        v18 = *(v67 + 8 * v72);
        ++v70;
        if (v18)
        {
          v70 = v72;
          do
          {
LABEL_27:
            v73 = (v70 << 9) | (8 * __clz(__rbit64(v18)));
            v5 = v113;
            v74 = *(*(v112 + 56) + v73);
            *v113 = *(*(v112 + 48) + v73);
            (*v110)(v5, v98, v114);
            swift_getKeyPath();
            v118 = v33;

            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v75 = v99;
            (*v108)(v99, v111 + v33, v100);
            v76 = v101;
            TrainingLoadViewModel.init(dataType:dayRange:chronologicalTrainingLoadDaySummaries:)(v5, v75, v74, v101);
            outlined init with copy of TrainingLoadViewModel(v76, v102);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55[2] + 1, 1, v55);
            }

            v78 = v55[2];
            v77 = v55[3];
            if (v78 >= v77 >> 1)
            {
              v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v77 > 1, v78 + 1, 1, v55);
            }

            v18 &= v18 - 1;
            outlined destroy of TrainingLoadViewModel(v101);
            v55[2] = v78 + 1;
            outlined init with take of TrainingLoadViewModel(v102, v55 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v78);
          }

          while (v18);
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    (*(v18 + 8))(v24, DataType);
    swift_getKeyPath();
    v107 = v5;
    v112 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider___observationRegistrar;
    v120 = v3;
    lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
    v49 = a2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v50 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__viewModels;
    v51 = swift_beginAccess();
    v52 = *(v3 + v50);
    MEMORY[0x28223BE20](v51);
    *(&v92 - 2) = v49;

    v18 = 0;
    specialized _ArrayProtocol.filter(_:)(partial apply for closure #3 in TrainingLoadViewModelProvider.update(for:dataType:), (&v92 - 4), v52);
    v53 = DataType;
    v55 = v54;
    (v25)(v20, v49, v53);
    swift_getKeyPath();
    v119 = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v56 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
    swift_beginAccess();
    v57 = v3 + v56;
    v58 = v99;
    (*(v107 + 16))(v99, v57, v100);
    v59 = TrainingLoadSampleDaySummaryCollection.daySummaries.getter();
    v60 = v111;
    TrainingLoadViewModel.init(dataType:dayRange:chronologicalTrainingLoadDaySummaries:)(v20, v58, v59, v111);
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v33 = v3;
    v5 = v60;
    if (v61)
    {
      goto LABEL_16;
    }
  }

  v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55[2] + 1, 1, v55);
LABEL_16:
  v63 = v55[2];
  v62 = v55[3];
  if (v63 >= v62 >> 1)
  {
    v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v62 > 1, v63 + 1, 1, v55);
  }

  v55[2] = v63 + 1;
  outlined init with take of TrainingLoadViewModel(v5, v55 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v63);
LABEL_34:
  v118 = v55;

  specialized MutableCollection<>.sort(by:)(&v118);
  if (v18)
  {

    __break(1u);
  }

  else
  {

    v79 = v118;
    swift_beginAccess();

    ViewModelV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ9WorkoutUI21TrainingLoadViewModelV_Tt1g5(v80, v79);

    if (ViewModelV_Tt1g5)
    {
      TrainingLoadViewModelProvider._viewModels.setter(v79);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v92 - 2) = v33;
      *(&v92 - 1) = v79;
      v117 = v33;
      lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v84 = v113;
    v83 = v114;
    v85 = v95;
    (*(v95 + 104))(v113, *MEMORY[0x277D0FEE8], v114);
    v86 = static TrainingLoadDataType.== infix(_:_:)();
    result = (*(v85 + 8))(v84, v83);
    if (v86)
    {
      v88 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__isLoadingWorkoutViewModelForTheFirstTime;
      swift_beginAccess();
      if (*(v33 + v88))
      {
        v89 = swift_getKeyPath();
        MEMORY[0x28223BE20](v89);
        *(&v92 - 2) = v33;
        *(&v92 - 8) = 0;
        v116 = v33;
        lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      else
      {
        *(v33 + v88) = 0;
        TrainingLoadViewModelProvider._isFetchingDataForNewDateRange.didset(&unk_20CB82938, &OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__isLoadingWorkoutViewModelForTheFirstTime, "[%{public}s] isLoadingWorkoutViewModelForTheFirstTime: %{BOOL}d");
      }

      v90 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__isFetchingDataForNewDateRange;
      swift_beginAccess();
      if (*(v33 + v90))
      {
        v91 = swift_getKeyPath();
        MEMORY[0x28223BE20](v91);
        *(&v92 - 2) = v33;
        *(&v92 - 8) = 0;
        v115 = v33;
        lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      else
      {
        *(v33 + v90) = 0;
        return TrainingLoadViewModelProvider._isFetchingDataForNewDateRange.didset(&unk_20CB82910, &OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__isFetchingDataForNewDateRange, "[%{public}s] isFetchingDataForNewDateRange: %{BOOL}d");
      }
    }
  }

  return result;
}

BOOL closure #3 in TrainingLoadViewModelProvider.update(for:dataType:)()
{
  type metadata accessor for TrainingLoadDataType();
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadDataType and conformance TrainingLoadDataType, MEMORY[0x277D0FEF0]);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

BOOL closure #4 in TrainingLoadViewModelProvider.update(for:dataType:)(_BYTE *a1, uint64_t a2)
{
  DataType = type metadata accessor for TrainingLoadDataType();
  v5 = *(DataType - 8);
  MEMORY[0x28223BE20](DataType);
  v34 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v35 = &v32 - v8;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  v13 = *MEMORY[0x277D0FEE8];
  v14 = v5[13];
  v14(&v32 - v11, v13, DataType, v10);
  v37 = a1;
  v15 = static TrainingLoadDataType.== infix(_:_:)();
  v36 = v5;
  v16 = v5[1];
  v16(v12, DataType);
  if (v15)
  {
    return 1;
  }

  (v14)(v12, v13, DataType);
  v18 = static TrainingLoadDataType.== infix(_:_:)();
  v16(v12, DataType);
  if (v18)
  {
    return 0;
  }

  v33 = a2;
  v19 = *MEMORY[0x277D0FEE0];
  (v14)(v12, v19, DataType);
  v20 = static TrainingLoadDataType.== infix(_:_:)();
  v16(v12, DataType);
  if (v20)
  {
    return 0;
  }

  (v14)(v12, v19, DataType);
  v21 = v33;
  v22 = static TrainingLoadDataType.== infix(_:_:)();
  v16(v12, DataType);
  if (v22)
  {
    return 1;
  }

  v23 = *(type metadata accessor for TrainingLoadViewModel(0) + 36);
  v24 = *&v37[v23];
  if (v37[v23 + 8])
  {
    v24 = 0.0;
  }

  v25 = v21 + v23;
  if (*(v25 + 8) == 1)
  {
    v27 = v35;
    v26 = v36;
    if (v24 <= 0.0)
    {
      if (v24 >= 0.0)
      {
        goto LABEL_15;
      }

      return 0;
    }

    return 1;
  }

  v27 = v35;
  v26 = v36;
  if (*v25 < v24)
  {
    return 1;
  }

  if (v24 < *v25)
  {
    return 0;
  }

LABEL_15:
  v28 = v37;
  v37 = v26[2];
  (v37)(v27, v28, DataType);
  v29 = v26[11];
  v30 = v29(v27, DataType);
  if (v30 != *MEMORY[0x277D0FED8] || (v31 = v30, v36 = v26[12], (v36)(v27, DataType), v35 = *v27, v27 = v34, (v37)(v34, v33, DataType), v29(v27, DataType) != v31))
  {
    v16(v27, DataType);
    return 1;
  }

  (v36)(v27, DataType);
  return v35 < *v27;
}

uint64_t TrainingLoadViewModelProvider.unitTest_updatedViewModels.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__unitTest_updatedViewModels);

  return v1;
}

uint64_t key path getter for TrainingLoadViewModelProvider.unitTest_updatedViewModels : TrainingLoadViewModelProvider@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__unitTest_updatedViewModels);
  v4 = *(v3 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__unitTest_updatedViewModels + 8);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed [TrainingLoadViewModel]) -> ();
  a2[1] = v6;
}

uint64_t key path setter for TrainingLoadViewModelProvider.unitTest_updatedViewModels : TrainingLoadViewModelProvider(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t TrainingLoadViewModelProvider.deinit()
{

  v1 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
  v2 = type metadata accessor for GregorianDayRange();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed GregorianDayRange) -> (@out AsyncThrowingStream<TrainingLoadSampleDaySummaryCollection, Error>))?(*(v0 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider_makeAllDayLoadSummaryCollectionSequence));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed GregorianDayRange) -> (@out AsyncThrowingStream<TrainingLoadSampleDaySummaryCollection, Error>))?(*(v0 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider_makeWorkoutLoadSummaryCollectionSequence));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed GregorianDayRange) -> (@out AsyncThrowingStream<TrainingLoadSampleDaySummaryCollection, Error>))?(*(v0 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider_makeWorkoutLoadByActivityTypeSummaryCollectionSequence));

  v3 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t TrainingLoadViewModelProvider.__deallocating_deinit()
{
  TrainingLoadViewModelProvider.deinit();

  return swift_deallocClassInstance();
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v170 = a1;
  DataType = type metadata accessor for TrainingLoadDataType();
  v6 = *(DataType - 8);
  MEMORY[0x28223BE20](DataType);
  v177 = &v164 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v185 = &v164 - v9;
  MEMORY[0x28223BE20](v10);
  v165 = (&v164 - v11);
  MEMORY[0x28223BE20](v12);
  v166 = (&v164 - v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v164 - v15;
  ViewModel = type metadata accessor for TrainingLoadViewModel(0);
  v182 = *(ViewModel - 8);
  MEMORY[0x28223BE20](ViewModel);
  v173 = &v164 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v194 = &v164 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v164 - v21;
  MEMORY[0x28223BE20](v23);
  v202 = &v164 - v24;
  MEMORY[0x28223BE20](v25);
  v189 = &v164 - v26;
  MEMORY[0x28223BE20](v27);
  v191 = &v164 - v28;
  MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v187 = a3;
  v33 = *(a3 + 8);
  if (v33 < 1)
  {
    v37 = MEMORY[0x277D84F90];
LABEL_140:
    v36 = *v170;
    if (!*v170)
    {
      goto LABEL_180;
    }

    a3 = v37;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v190;
    if (isUniquelyReferenced_nonNull_native)
    {
      v159 = a3;
      goto LABEL_143;
    }

LABEL_174:
    v159 = specialized _ArrayBuffer._consumeAndCreateNew()(a3);
LABEL_143:
    v204 = v159;
    a3 = *(v159 + 2);
    if (a3 >= 2)
    {
      while (*v187)
      {
        v160 = *&v159[16 * a3];
        v161 = v159;
        v162 = *&v159[16 * a3 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v187 + *(v182 + 72) * v160, *v187 + *(v182 + 72) * *&v159[16 * a3 + 16], *v187 + *(v182 + 72) * v162, v36);
        if (v34)
        {
          goto LABEL_151;
        }

        if (v162 < v160)
        {
          goto LABEL_167;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v161 = specialized _ArrayBuffer._consumeAndCreateNew()(v161);
        }

        if (a3 - 2 >= *(v161 + 2))
        {
          goto LABEL_168;
        }

        v163 = &v161[16 * a3];
        *v163 = v160;
        *(v163 + 1) = v162;
        v204 = v161;
        specialized Array.remove(at:)(a3 - 1);
        v159 = v204;
        a3 = *(v204 + 2);
        if (a3 <= 1)
        {
          goto LABEL_151;
        }
      }

      goto LABEL_178;
    }

    goto LABEL_151;
  }

  v167 = &v164 - v31;
  v168 = v32;
  v34 = *MEMORY[0x277D0FEE8];
  v199 = (v6 + 104);
  v200 = (v6 + 8);
  v195 = *MEMORY[0x277D0FEE0];
  v186 = (v6 + 16);
  v184 = (v6 + 88);
  v183 = *MEMORY[0x277D0FED8];
  v35 = (v6 + 96);
  v36 = 0;
  v176 = v35;
  v37 = MEMORY[0x277D84F90];
  v169 = a4;
  v196 = v22;
  v198 = v34;
  while (1)
  {
    v174 = v37;
    v171 = v36;
    if ((v36 + 1) >= v33)
    {
      v33 = v36 + 1;
      goto LABEL_46;
    }

    v38 = *v187;
    v39 = *(v182 + 72);
    v201 = *v187 + v39 * (v36 + 1);
    v40 = v167;
    outlined init with copy of TrainingLoadViewModel(v201, v167);
    a3 = v168;
    outlined init with copy of TrainingLoadViewModel(v38 + v39 * v36, v168);
    v41 = v190;
    LODWORD(v180) = closure #4 in TrainingLoadViewModelProvider.update(for:dataType:)(v40, a3);
    v190 = v41;
    if (v41)
    {
      outlined destroy of TrainingLoadViewModel(a3);
      outlined destroy of TrainingLoadViewModel(v40);
LABEL_151:

      return;
    }

    outlined destroy of TrainingLoadViewModel(a3);
    outlined destroy of TrainingLoadViewModel(v40);
    v42 = v36 + 2;
    v43 = v38 + v39 * (v36 + 2);
    v44 = v39;
    v181 = v39;
    v36 = v201;
    v188 = v33;
    while (v33 != v42)
    {
      v192 = v43;
      v193 = v42;
      outlined init with copy of TrainingLoadViewModel(v43, v191);
      v201 = v36;
      v46 = v200;
      outlined init with copy of TrainingLoadViewModel(v36, v189);
      a3 = v199;
      v47 = *v199;
      v48 = v34;
      v49 = v34;
      v50 = DataType;
      (*v199)(v16, v48, DataType);
      v51 = static TrainingLoadDataType.== infix(_:_:)();
      v52 = *v46;
      (*v46)(v16, v50);
      if (v51)
      {
        v45 = 1;
        v22 = v196;
        v34 = v49;
      }

      else
      {
        v53 = DataType;
        v47(v16, v49, DataType);
        v54 = static TrainingLoadDataType.== infix(_:_:)();
        v52(v16, v53);
        if (v54 & 1) != 0 || (v55 = v195, v56 = DataType, v47(v16, v195, DataType), v57 = static TrainingLoadDataType.== infix(_:_:)(), v52(v16, v56), v58 = v186, (v57))
        {
          v45 = 0;
        }

        else
        {
          v59 = DataType;
          v47(v16, v55, DataType);
          v60 = v189;
          v61 = static TrainingLoadDataType.== infix(_:_:)();
          v52(v16, v59);
          if (v61)
          {
            v45 = 1;
          }

          else
          {
            v62 = *(ViewModel + 36);
            v63 = *(v191 + v62);
            if (*(v191 + v62 + 8))
            {
              v63 = 0.0;
            }

            v64 = v60 + v62;
            if (*(v64 + 8))
            {
              v22 = v196;
              v34 = v198;
              if (v63 > 0.0)
              {
                goto LABEL_26;
              }

              if (v63 < 0.0)
              {
                goto LABEL_28;
              }
            }

            else
            {
              v22 = v196;
              v34 = v198;
              if (*v64 < v63)
              {
LABEL_26:
                v45 = 1;
                goto LABEL_8;
              }

              if (v63 < *v64)
              {
LABEL_28:
                v45 = 0;
                goto LABEL_8;
              }
            }

            v65 = *v58;
            v66 = v166;
            v67 = DataType;
            (*v58)(v166, v191, DataType);
            v68 = *v184;
            v69 = (*v184)(v66, v67);
            a3 = v183;
            if (v69 == v183 && (v70 = DataType, v179 = *v176, v179(v66, DataType), v178 = *v66, v66 = v165, v65(v165, v189, v70), v68(v66, v70) == a3))
            {
              v179(v66, DataType);
              v45 = v178 < *v66;
            }

            else
            {
              v52(v66, DataType);
              v45 = 1;
            }
          }
        }

        v22 = v196;
        v34 = v198;
      }

LABEL_8:
      v33 = v188;
      outlined destroy of TrainingLoadViewModel(v189);
      outlined destroy of TrainingLoadViewModel(v191);
      v42 = v193 + 1;
      v44 = v181;
      v43 = v192 + v181;
      v36 = v201 + v181;
      if ((v180 ^ v45))
      {
        v33 = v193;
        break;
      }
    }

    a4 = v169;
    if ((v180 & 1) == 0)
    {
      goto LABEL_46;
    }

    if (v33 < v171)
    {
      goto LABEL_173;
    }

    if (v171 < v33)
    {
      a3 = v44 * (v33 - 1);
      v71 = v33 * v44;
      v188 = v33;
      v72 = v171;
      v73 = v171 * v44;
      do
      {
        if (v72 != --v33)
        {
          v74 = *v187;
          if (!*v187)
          {
            goto LABEL_177;
          }

          v36 = v74 + v73;
          outlined init with take of TrainingLoadViewModel(v74 + v73, v173);
          if (v73 < a3 || v36 >= v74 + v71)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != a3)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          outlined init with take of TrainingLoadViewModel(v173, v74 + a3);
          v44 = v181;
        }

        ++v72;
        a3 -= v44;
        v71 -= v44;
        v73 += v44;
      }

      while (v72 < v33);
      a4 = v169;
      v22 = v196;
      v33 = v188;
    }

LABEL_46:
    v75 = v187[1];
    if (v33 < v75)
    {
      if (__OFSUB__(v33, v171))
      {
        goto LABEL_170;
      }

      if (v33 - v171 < a4)
      {
        break;
      }
    }

    v36 = v33;
LABEL_57:
    v77 = v171;
LABEL_58:
    if (v36 < v77)
    {
      goto LABEL_169;
    }

    v78 = swift_isUniquelyReferenced_nonNull_native();
    v178 = v36;
    if (v78)
    {
      v37 = v174;
    }

    else
    {
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v174 + 2) + 1, 1, v174);
    }

    a3 = *(v37 + 2);
    v79 = *(v37 + 3);
    v36 = a3 + 1;
    if (a3 >= v79 >> 1)
    {
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), a3 + 1, 1, v37);
    }

    *(v37 + 2) = v36;
    v80 = &v37[16 * a3];
    v81 = v178;
    *(v80 + 4) = v77;
    *(v80 + 5) = v81;
    if (!*v170)
    {
      goto LABEL_179;
    }

    if (a3)
    {
      v82 = *v170;
      while (1)
      {
        v83 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v84 = *(v37 + 4);
          v85 = *(v37 + 5);
          v94 = __OFSUB__(v85, v84);
          v86 = v85 - v84;
          v87 = v94;
LABEL_79:
          if (v87)
          {
            goto LABEL_158;
          }

          v100 = &v37[16 * v36];
          v102 = *v100;
          v101 = *(v100 + 1);
          v103 = __OFSUB__(v101, v102);
          v104 = v101 - v102;
          v105 = v103;
          if (v103)
          {
            goto LABEL_161;
          }

          v106 = &v37[16 * v83 + 32];
          v108 = *v106;
          v107 = *(v106 + 1);
          v94 = __OFSUB__(v107, v108);
          v109 = v107 - v108;
          if (v94)
          {
            goto LABEL_164;
          }

          if (__OFADD__(v104, v109))
          {
            goto LABEL_165;
          }

          if (v104 + v109 >= v86)
          {
            if (v86 < v109)
            {
              v83 = v36 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        v110 = &v37[16 * v36];
        v112 = *v110;
        v111 = *(v110 + 1);
        v94 = __OFSUB__(v111, v112);
        v104 = v111 - v112;
        v105 = v94;
LABEL_93:
        if (v105)
        {
          goto LABEL_160;
        }

        v113 = &v37[16 * v83];
        v115 = *(v113 + 4);
        v114 = *(v113 + 5);
        v94 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v94)
        {
          goto LABEL_163;
        }

        if (v116 < v104)
        {
          goto LABEL_3;
        }

LABEL_100:
        a3 = v83 - 1;
        if (v83 - 1 >= v36)
        {
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
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
          goto LABEL_172;
        }

        if (!*v187)
        {
          goto LABEL_176;
        }

        v121 = v37;
        v36 = *&v37[16 * a3 + 32];
        v122 = *&v37[16 * v83 + 40];
        v123 = v190;
        specialized _merge<A>(low:mid:high:buffer:by:)(*v187 + *(v182 + 72) * v36, *v187 + *(v182 + 72) * *&v37[16 * v83 + 32], *v187 + *(v182 + 72) * v122, v82);
        v190 = v123;
        if (v123)
        {
          goto LABEL_151;
        }

        if (v122 < v36)
        {
          goto LABEL_154;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v121 = specialized _ArrayBuffer._consumeAndCreateNew()(v121);
        }

        if (a3 >= *(v121 + 2))
        {
          goto LABEL_155;
        }

        v124 = &v121[16 * a3];
        *(v124 + 4) = v36;
        *(v124 + 5) = v122;
        v204 = v121;
        a3 = &v204;
        specialized Array.remove(at:)(v83);
        v37 = v204;
        v36 = *(v204 + 2);
        if (v36 <= 1)
        {
          goto LABEL_3;
        }
      }

      v88 = &v37[16 * v36 + 32];
      v89 = *(v88 - 64);
      v90 = *(v88 - 56);
      v94 = __OFSUB__(v90, v89);
      v91 = v90 - v89;
      if (v94)
      {
        goto LABEL_156;
      }

      v93 = *(v88 - 48);
      v92 = *(v88 - 40);
      v94 = __OFSUB__(v92, v93);
      v86 = v92 - v93;
      v87 = v94;
      if (v94)
      {
        goto LABEL_157;
      }

      v95 = &v37[16 * v36];
      v97 = *v95;
      v96 = *(v95 + 1);
      v94 = __OFSUB__(v96, v97);
      v98 = v96 - v97;
      if (v94)
      {
        goto LABEL_159;
      }

      v94 = __OFADD__(v86, v98);
      v99 = v86 + v98;
      if (v94)
      {
        goto LABEL_162;
      }

      if (v99 >= v91)
      {
        v117 = &v37[16 * v83 + 32];
        v119 = *v117;
        v118 = *(v117 + 1);
        v94 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v94)
        {
          goto LABEL_166;
        }

        if (v86 < v120)
        {
          v83 = v36 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

LABEL_3:
    v33 = v187[1];
    v36 = v178;
    a4 = v169;
    if (v178 >= v33)
    {
      goto LABEL_140;
    }
  }

  v76 = v171 + a4;
  if (__OFADD__(v171, a4))
  {
    goto LABEL_171;
  }

  v77 = v171;
  if (v76 >= v75)
  {
    v36 = v187[1];
  }

  else
  {
    v36 = v76;
  }

  if (v36 < v171)
  {
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  if (v33 == v36)
  {
    v36 = v33;
    goto LABEL_58;
  }

  v125 = *v187;
  v126 = *(v182 + 72);
  v127 = *v187 + v126 * (v33 - 1);
  v192 = -v126;
  v193 = v125;
  v128 = v171 - v33;
  v172 = v126;
  v129 = (v125 + v33 * v126);
  v178 = v36;
  while (2)
  {
    v188 = v33;
    v179 = v129;
    v130 = v129;
    v180 = v128;
    a3 = v128;
    v181 = v127;
    v131 = v127;
LABEL_114:
    v201 = a3;
    outlined init with copy of TrainingLoadViewModel(v130, v202);
    outlined init with copy of TrainingLoadViewModel(v131, v22);
    v132 = *v199;
    v133 = DataType;
    (*v199)(v16, v34, DataType);
    v134 = static TrainingLoadDataType.== infix(_:_:)();
    v135 = *v200;
    (*v200)(v16, v133);
    if (v134)
    {
      goto LABEL_131;
    }

    a3 = DataType;
    v132(v16, v198, DataType);
    v136 = static TrainingLoadDataType.== infix(_:_:)();
    v135(v16, a3);
    if (v136 & 1) != 0 || (a3 = DataType, v132(v16, v195, DataType), v137 = static TrainingLoadDataType.== infix(_:_:)(), v135(v16, a3), (v137))
    {
LABEL_110:
      v22 = v196;
      outlined destroy of TrainingLoadViewModel(v196);
      outlined destroy of TrainingLoadViewModel(v202);
LABEL_111:
      v34 = v198;
LABEL_112:
      v33 = v188 + 1;
      v127 = v181 + v172;
      v128 = v180 - 1;
      v129 = v179 + v172;
      v36 = v178;
      if (v188 + 1 == v178)
      {
        goto LABEL_57;
      }

      continue;
    }

    break;
  }

  a3 = DataType;
  v132(v16, v195, DataType);
  v22 = v196;
  v138 = static TrainingLoadDataType.== infix(_:_:)();
  v135(v16, a3);
  if (v138)
  {
    goto LABEL_131;
  }

  v139 = *(ViewModel + 36);
  v140 = *(v202 + v139);
  if (*(v202 + v139 + 8))
  {
    v140 = 0.0;
  }

  v141 = &v22[v139];
  if (v141[8])
  {
    v22 = v196;
    if (v140 <= 0.0)
    {
      if (v140 < 0.0)
      {
        goto LABEL_110;
      }

      goto LABEL_126;
    }

LABEL_131:
    outlined destroy of TrainingLoadViewModel(v22);
    outlined destroy of TrainingLoadViewModel(v202);
  }

  else
  {
    v22 = v196;
    if (*v141 < v140)
    {
      goto LABEL_131;
    }

    if (v140 < *v141)
    {
      goto LABEL_110;
    }

LABEL_126:
    v142 = v135;
    v143 = v185;
    v144 = *v186;
    v145 = DataType;
    (*v186)(v185, v202, DataType);
    v146 = *v184;
    v147 = (*v184)(v143, v145);
    if (v147 != v183 || (v148 = v185, a3 = DataType, v149 = *v176, (*v176)(v185, DataType), v175 = *v148, v150 = v144, v151 = v177, v150(v177, v196, a3), v152 = v146(v151, a3), v143 = v151, v152 != v183))
    {
      v142(v143, DataType);
      v22 = v196;
      goto LABEL_131;
    }

    v153 = v177;
    v149(v177, DataType);
    v154 = *v153;
    v22 = v196;
    outlined destroy of TrainingLoadViewModel(v196);
    outlined destroy of TrainingLoadViewModel(v202);
    if (v175 >= v154)
    {
      goto LABEL_111;
    }
  }

  v34 = v198;
  v155 = v201;
  if (v193)
  {
    v156 = v194;
    outlined init with take of TrainingLoadViewModel(v130, v194);
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of TrainingLoadViewModel(v156, v131);
    v131 += v192;
    v130 += v192;
    v157 = __CFADD__(v155, 1);
    a3 = v155 + 1;
    if (v157)
    {
      goto LABEL_112;
    }

    goto LABEL_114;
  }

  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
}

uint64_t specialized ClosedRange<>.distance(from:to:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DayIndex();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_G_AHtMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v15 = *(v14 + 56);
  outlined init with copy of (lower: DayIndex, upper: DayIndex)(a1, &v23 - v12, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
  outlined init with copy of (lower: DayIndex, upper: DayIndex)(a2, &v13[v15], &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd);
  v16 = v5[6];
  LODWORD(a1) = v16(v13, 1, v4);
  v17 = v16(&v13[v15], 1, v4);
  v18 = v17;
  if (a1 == 1)
  {
    if (v17 == 1)
    {
      return 0;
    }
  }

  else
  {
    v16 = v5[4];
    v16(v10, v13, v4);
    if (v18 != 1)
    {
LABEL_11:
      v16(v7, &v13[v15], v4);
      lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6A8]);
      dispatch thunk of Strideable.distance(to:)();
      v22 = v5[1];
      v22(v7, v4);
      v22(v10, v4);
      return v24;
    }

    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy9HealthKit8DayIndexVGMd) + 36);
    lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6A8]);
    dispatch thunk of Strideable.distance(to:)();
    v20 = v5[1];
    ++v5;
    v20(v10, v4);
    result = v24 + 1;
    if (!__OFADD__(v24, 1))
    {
      return result;
    }

    __break(1u);
  }

  (v5[4])(v10, &v13[v15], v4);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy9HealthKit8DayIndexVGMd) + 36);
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6A8]);
  v7 = (v23 + v15);
  dispatch thunk of Strideable.distance(to:)();
  v21 = v5[1];
  ++v5;
  v21(v10, v4);
  result = v24 - 1;
  if (__OFSUB__(v24, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSo21HKWorkoutActivityTypeV_Say13HealthBalance28TrainingLoadSampleDaySummaryVGTt1g5014_s9WorkoutUI29ij78ViewModelProviderC6update33_D5277829893C0F285DEBDE28ED765EEDLL3for8dataTypey13g12Balance0cD26klm32CollectionV_AH0cd4DataQ0OtFSo017dE19Q0VAH0cdtuV0VXEfU0_Tf1nc_nTf4g_n(uint64_t a1)
{
  SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary();
  v3 = *(SampleDaySummary - 8);
  MEMORY[0x28223BE20](SampleDaySummary);
  v50 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v53 = &v43 - v6;
  v7 = MEMORY[0x277D84F98];
  v54 = MEMORY[0x277D84F98];
  v8 = *(a1 + 16);
  if (!v8)
  {
    return v7;
  }

  v10 = *(v3 + 16);
  v9 = v3 + 16;
  v45 = *(v9 + 64);
  v11 = *(v9 + 56);
  v48 = (v45 + 32) & ~v45;
  v49 = v10;
  v12 = a1 + v48;
  v52 = (v9 + 16);
  v44 = xmmword_20CB5DA70;
  v46 = SampleDaySummary;
  v47 = v9;
  v51 = v11;
  while (1)
  {
    v16 = SampleDaySummary;
    v17 = SampleDaySummary;
    v18 = v9;
    v49(v53, v12, v17);
    SampleDay = TrainingLoadSampleDaySummary.activityType.getter();
    v21 = (v20 & 1) != 0 ? 3000 : SampleDay;
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(v21);
    v24 = v7[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      break;
    }

    v27 = v22;
    if (v7[3] < v26)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, 1);
      v7 = v54;
      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v21);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_22;
      }

      v23 = v28;
    }

    if (v27)
    {
      v30 = v7[7];
      v31 = v16;
      v32 = *v52;
      (*v52)(v50, v53, v31);
      v33 = *(v30 + 8 * v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v30 + 8 * v23) = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33[2] + 1, 1, v33);
        *(v30 + 8 * v23) = v33;
      }

      v36 = v33[2];
      v35 = v33[3];
      if (v36 >= v35 >> 1)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1, v33);
        *(v30 + 8 * v23) = v33;
      }

      v9 = v47;
      v13 = v48;
      v33[2] = v36 + 1;
      v14 = v51;
      v15 = v33 + v13 + v36 * v51;
      SampleDaySummary = v46;
      v32(v15, v50, v46);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13HealthBalance28TrainingLoadSampleDaySummaryVGMd);
      v37 = v48;
      v38 = swift_allocObject();
      *(v38 + 16) = v44;
      (*v52)((v38 + v37), v53, v16);
      v7[(v23 >> 6) + 8] |= 1 << v23;
      *(v7[6] + 8 * v23) = v21;
      *(v7[7] + 8 * v23) = v38;
      v39 = v7[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_21;
      }

      v7[2] = v41;
      v14 = v51;
      v9 = v18;
      SampleDaySummary = v16;
    }

    v12 += v14;
    if (!--v8)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  type metadata accessor for HKWorkoutActivityType(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized TrainingLoadViewModelProvider.init(dayRange:makeAllDayLoadSummaryCollectionSequence:makeWorkoutLoadSummaryCollectionSequence:makeWorkoutLoadByActivityTypeSummaryCollectionSequence:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v43 = a6;
  v44 = a7;
  v48 = a1;
  v13 = type metadata accessor for GregorianDayRange();
  v47 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v42 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  DataType = type metadata accessor for TrainingLoadDataType();
  v16 = *(DataType - 8);
  MEMORY[0x28223BE20](DataType);
  v40 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  ViewModel = type metadata accessor for TrainingLoadViewModel(0);
  v45 = *(ViewModel - 8);
  MEMORY[0x28223BE20](ViewModel - 8);
  v39 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TrainingLoadViewModelProvider.TaskHolder();
  swift_allocObject();
  *(v7 + 16) = TrainingLoadViewModelProvider.TaskHolder.init()();
  *(v7 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__viewModels) = MEMORY[0x277D84F90];
  *(v7 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__isFetchingDataForNewDateRange) = 0;
  *(v7 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__isLoadingWorkoutViewModelForTheFirstTime) = 1;
  v20 = (v7 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__unitTest_updatedViewModels);
  *v20 = closure #1 in variable initialization expression of TrainingLoadViewModelProvider.unitTest_updatedViewModels;
  v20[1] = 0;
  ObservationRegistrar.init()();
  v46 = v14;
  v38 = *(v14 + 16);
  v38(v7 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange, v48, v13);
  v21 = (v7 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider_makeAllDayLoadSummaryCollectionSequence);
  *v21 = a2;
  v21[1] = a3;
  v22 = (v7 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider_makeWorkoutLoadSummaryCollectionSequence);
  *v22 = a4;
  v22[1] = a5;
  v23 = (v7 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider_makeWorkoutLoadByActivityTypeSummaryCollectionSequence);
  v24 = v43;
  v25 = v44;
  *v23 = v43;
  v23[1] = v25;
  *(v7 + 24) = 0;
  v26 = *(v16 + 104);
  v27 = v40;
  v26(v40, *MEMORY[0x277D0FEE8], DataType);
  v28 = v42;
  v38(v42, v48, v47);
  v29 = v39;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed GregorianDayRange) -> (@out AsyncThrowingStream<TrainingLoadSampleDaySummaryCollection, Error>))?(a2);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed GregorianDayRange) -> (@out AsyncThrowingStream<TrainingLoadSampleDaySummaryCollection, Error>))?(a4);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed GregorianDayRange) -> (@out AsyncThrowingStream<TrainingLoadSampleDaySummaryCollection, Error>))?(v24);
  TrainingLoadViewModel.init(dataType:dayRange:chronologicalTrainingLoadDaySummaries:)(v27, v28, MEMORY[0x277D84F90], v29);
  swift_getKeyPath();
  v49 = v7;
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v49 = v7;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v30 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__viewModels;
  swift_beginAccess();
  v31 = *(v7 + v30);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v8 + v30) = v31;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
    *(v8 + v30) = v31;
  }

  v34 = v31[2];
  v33 = v31[3];
  if (v34 >= v33 >> 1)
  {
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v33 > 1, v34 + 1, 1, v31);
  }

  v31[2] = v34 + 1;
  outlined init with take of TrainingLoadViewModel(v29, v31 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v34);
  *(v8 + v30) = v31;
  swift_endAccess();
  swift_getKeyPath();
  v49 = v8;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v35 = *(v8 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__unitTest_updatedViewModels);
  swift_getKeyPath();
  v49 = v8;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v35(v36);

  v49 = v8;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  (*(v46 + 8))(v48, v47);
  return v8;
}

uint64_t specialized TrainingLoadViewModelProvider.__allocating_init(dayRange:healthStore:options:)(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = type metadata accessor for GregorianDayRange();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a3;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  v27 = v7;
  v28 = v6;
  v14 = *(v7 + 16);
  v25 = v9;
  v29 = a1;
  v14(v9, a1, v6);
  v15 = 0;
  v16 = 0;
  if ((v10 & 4) != 0)
  {

    v15 = partial apply for closure #1 in TrainingLoadViewModelProvider.init(dayRange:healthStore:options:);
    v16 = v11;
  }

  v26 = v11;
  if (v10)
  {

    v17 = partial apply for closure #2 in TrainingLoadViewModelProvider.init(dayRange:healthStore:options:);
    v18 = v12;
    if ((v10 & 2) != 0)
    {
      goto LABEL_5;
    }

LABEL_7:
    v19 = 0;
    v20 = 0;
    goto LABEL_8;
  }

  v17 = 0;
  v18 = 0;
  if ((v10 & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_5:

  v19 = partial apply for closure #3 in TrainingLoadViewModelProvider.init(dayRange:healthStore:options:);
  v20 = v13;
LABEL_8:
  type metadata accessor for TrainingLoadViewModelProvider();
  swift_allocObject();
  v21 = a2;
  v22 = specialized TrainingLoadViewModelProvider.init(dayRange:makeAllDayLoadSummaryCollectionSequence:makeWorkoutLoadSummaryCollectionSequence:makeWorkoutLoadByActivityTypeSummaryCollectionSequence:)(v25, v15, v16, v17, v18, v19, v20);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed GregorianDayRange) -> (@out AsyncThrowingStream<TrainingLoadSampleDaySummaryCollection, Error>))?(v19);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed GregorianDayRange) -> (@out AsyncThrowingStream<TrainingLoadSampleDaySummaryCollection, Error>))?(v17);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed GregorianDayRange) -> (@out AsyncThrowingStream<TrainingLoadSampleDaySummaryCollection, Error>))?(v15);

  (*(v27 + 8))(v29, v28);
  return v22;
}

uint64_t outlined init with take of TrainingLoadViewModel(uint64_t a1, uint64_t a2)
{
  ViewModel = type metadata accessor for TrainingLoadViewModel(0);
  (*(*(ViewModel - 8) + 32))(a2, a1, ViewModel);
  return a2;
}

uint64_t partial apply for closure #1 in TrainingLoadViewModelProvider.startQuery(isFaking:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in TrainingLoadViewModelProvider.startQuery(isFaking:);

  return closure #1 in TrainingLoadViewModelProvider.startQuery(isFaking:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in TrainingLoadViewModelProvider.startQuery(isFaking:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@in_guaranteed GregorianDayRange) -> (@out AsyncThrowingStream<TrainingLoadSampleDaySummaryCollection, Error>))?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TrainingLoadViewModelProviderOptions and conformance TrainingLoadViewModelProviderOptions()
{
  result = lazy protocol witness table cache variable for type TrainingLoadViewModelProviderOptions and conformance TrainingLoadViewModelProviderOptions;
  if (!lazy protocol witness table cache variable for type TrainingLoadViewModelProviderOptions and conformance TrainingLoadViewModelProviderOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrainingLoadViewModelProviderOptions and conformance TrainingLoadViewModelProviderOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TrainingLoadViewModelProviderOptions and conformance TrainingLoadViewModelProviderOptions;
  if (!lazy protocol witness table cache variable for type TrainingLoadViewModelProviderOptions and conformance TrainingLoadViewModelProviderOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrainingLoadViewModelProviderOptions and conformance TrainingLoadViewModelProviderOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TrainingLoadViewModelProviderOptions and conformance TrainingLoadViewModelProviderOptions;
  if (!lazy protocol witness table cache variable for type TrainingLoadViewModelProviderOptions and conformance TrainingLoadViewModelProviderOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrainingLoadViewModelProviderOptions and conformance TrainingLoadViewModelProviderOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TrainingLoadViewModelProviderOptions and conformance TrainingLoadViewModelProviderOptions;
  if (!lazy protocol witness table cache variable for type TrainingLoadViewModelProviderOptions and conformance TrainingLoadViewModelProviderOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrainingLoadViewModelProviderOptions and conformance TrainingLoadViewModelProviderOptions);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrainingLoadViewModelProviderOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TrainingLoadViewModelProviderOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t type metadata completion function for TrainingLoadViewModelProvider()
{
  result = type metadata accessor for GregorianDayRange();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrainingLoadViewModelProvider.TaskType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TrainingLoadViewModelProvider.TaskType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type TrainingLoadViewModelProvider.TaskType and conformance TrainingLoadViewModelProvider.TaskType()
{
  result = lazy protocol witness table cache variable for type TrainingLoadViewModelProvider.TaskType and conformance TrainingLoadViewModelProvider.TaskType;
  if (!lazy protocol witness table cache variable for type TrainingLoadViewModelProvider.TaskType and conformance TrainingLoadViewModelProvider.TaskType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrainingLoadViewModelProvider.TaskType and conformance TrainingLoadViewModelProvider.TaskType);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed [TrainingLoadViewModel]) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t partial apply for closure #1 in TrainingLoadViewModelProvider.unitTest_updatedViewModels.setter()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__unitTest_updatedViewModels);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t outlined init with copy of TrainingLoadViewModel(uint64_t a1, uint64_t a2)
{
  ViewModel = type metadata accessor for TrainingLoadViewModel(0);
  (*(*(ViewModel - 8) + 16))(a2, a1, ViewModel);
  return a2;
}

uint64_t outlined destroy of TrainingLoadViewModel(uint64_t a1)
{
  ViewModel = type metadata accessor for TrainingLoadViewModel(0);
  (*(*(ViewModel - 8) + 8))(a1, ViewModel);
  return a1;
}

uint64_t outlined init with take of (lower: DayIndex, upper: DayIndex)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_80TQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_80TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_94Tm()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 25) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in TrainingLoadViewModelProvider.TaskHolder.add(task:_:)(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 25) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

uint64_t outlined init with copy of (lower: DayIndex, upper: DayIndex)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in closure #2 in TrainingLoadViewModelProvider.startWorkoutsByActivityTypeQuery(useFakeData:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_pGMd) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = partial apply for closure #1 in closure #2 in TrainingLoadViewModelProvider.startWorkoutsByActivityTypeQuery(useFakeData:);

  return closure #1 in closure #2 in TrainingLoadViewModelProvider.startWorkoutsByActivityTypeQuery(useFakeData:)(a1, v9, v10, v1 + v6, v11, v12, v13, v14);
}

uint64_t partial apply for closure #1 in closure #1 in TrainingLoadViewModelProvider.startAllDayQuery()(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_pGMd) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = partial apply for closure #1 in closure #1 in TrainingLoadViewModelProvider.startAllDayQuery();

  return closure #1 in closure #1 in TrainingLoadViewModelProvider.startAllDayQuery()(a1, v9, v10, v1 + v6, v11, v12, v13, v14);
}

uint64_t objectdestroy_105Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_pGMd);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in TrainingLoadViewModelProvider.startWorkoutsQuery()(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_pGMd) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = partial apply for closure #1 in closure #1 in TrainingLoadViewModelProvider.startWorkoutsQuery();

  return closure #1 in closure #1 in TrainingLoadViewModelProvider.startWorkoutsQuery()(a1, v9, v10, v1 + v6, v11, v12, v13, v14);
}

uint64_t outlined copy of (@escaping @callee_guaranteed (@in_guaranteed GregorianDayRange) -> (@out AsyncThrowingStream<TrainingLoadSampleDaySummaryCollection, Error>))?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for NSNumber(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_2(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in TrainingLoadViewModelProvider.isFetchingDataForNewDateRange.setter(uint64_t *a1, uint64_t a2, const char *a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *a1;
  swift_beginAccess();
  *(v7 + v9) = v8;
  return TrainingLoadViewModelProvider._isFetchingDataForNewDateRange.didset(a2, a1, a3);
}

uint64_t lazy protocol witness table accessor for type DayIndex and conformance DayIndex(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t closure #1 in TrainingLoadViewModelProvider.isFetchingDataForNewDateRange.setterpartial apply()
{
  return partial apply for closure #1 in TrainingLoadViewModelProvider.isFetchingDataForNewDateRange.setter();
}

{
  return partial apply for closure #1 in TrainingLoadViewModelProvider.isFetchingDataForNewDateRange.setter();
}

double CGFloat.pixelsToPoints()(double a1)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 scale];
  v4 = v3;

  return a1 / v4;
}

uint64_t PrecisionStartStatusView.init(currentActivityType:configuration:remainingMultisportLegCount:useSmallerIcon:workoutStatePublisher:diameter:mirroredHostPublisherMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>)
{
  LODWORD(v9) = a8;
  v49 = a7;
  v47 = a5;
  v48 = a6;
  v46 = a4;
  v44 = a2;
  v45 = a3;
  v43 = a1;
  v11 = type metadata accessor for Logger();
  v41 = *(v11 - 8);
  v42 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v39[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v39[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v20 = &v39[-v19];
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  *(a9 + 72) = implicit closure #2 in implicit closure #1 in variable initialization expression of PrecisionStartStatusView._gpsLockProvider;
  *(a9 + 80) = 0;
  *(a9 + 88) = 0;
  LOBYTE(v50) = 0;
  State.init(wrappedValue:)();
  v21 = v53;
  *(a9 + 96) = v52;
  *(a9 + 104) = v21;
  LOBYTE(v50) = 0;
  State.init(wrappedValue:)();
  v22 = v53;
  *(a9 + 112) = v52;
  *(a9 + 120) = v22;
  started = type metadata accessor for PrecisionStartStatusView();
  Date.init()();
  (*(v15 + 16))(v17, v20, v14);
  State.init(wrappedValue:)();
  (*(v15 + 8))(v20, v14);
  v24 = type metadata accessor for ReminderHaptic();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR___WOReminderHaptic_count] = 0;
  *&v25[OBJC_IVAR___WOReminderHaptic_timer] = 0;
  static WOLog.app.getter();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v40 = v9;
    v9 = v28;
    v29 = swift_slowAlloc();
    v52 = v29;
    *v9 = 136446210;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x800000020CB82DD0, &v52);
    _os_log_impl(&dword_20C66F000, v26, v27, "Creating reminder haptic for identifier=%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x20F30E080](v29, -1, -1);
    v30 = v9;
    LOBYTE(v9) = v40;
    MEMORY[0x20F30E080](v30, -1, -1);
  }

  (*(v41 + 8))(v13, v42);
  v31 = (a9 + *(started + 64));
  *&v25[OBJC_IVAR___WOReminderHaptic_timeInterval] = 0x4066800000000000;
  *&v25[OBJC_IVAR___WOReminderHaptic_systemSoundID] = 1540;
  *&v25[OBJC_IVAR___WOReminderHaptic_maximumReminders] = 10;
  v32 = &v25[OBJC_IVAR___WOReminderHaptic_identifier];
  *v32 = 0xD000000000000018;
  *(v32 + 1) = 0x800000020CB82DD0;
  v51.receiver = v25;
  v51.super_class = v24;
  v50 = objc_msgSendSuper2(&v51, sel_init);
  State.init(wrappedValue:)();
  v33 = v53;
  *v31 = v52;
  v31[1] = v33;
  v34 = a9 + *(started + 68);
  LOBYTE(v50) = 0;
  State.init(wrappedValue:)();
  v35 = v53;
  *v34 = v52;
  *(v34 + 8) = v35;
  v36 = v44;
  *(a9 + 16) = v43;
  *(a9 + 24) = v36;
  *(a9 + 32) = v45;
  *(a9 + 50) = v46 & 1;
  type metadata accessor for WorkoutStatePublisher();
  _s11WorkoutCore0A14StatePublisherCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type WorkoutStatePublisher and conformance WorkoutStatePublisher, MEMORY[0x277D7DA88]);
  result = ObservedObject.init(wrappedValue:)();
  *(a9 + 56) = result;
  *(a9 + 64) = v38;
  *(a9 + 40) = v48;
  *(a9 + 48) = v49 & 1;
  *(a9 + 49) = v9 & 1;
  return result;
}

uint64_t PrecisionStartStatusView.isLuminanceReduced.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

id implicit closure #2 in implicit closure #1 in variable initialization expression of PrecisionStartStatusView._gpsLockProvider()
{
  v0 = objc_allocWithZone(type metadata accessor for GPSLockProvider());

  return [v0 init];
}

uint64_t PrecisionStartStatusView.isRouteable.getter()
{
  v1 = *(v0 + 24);
  type metadata accessor for MultiSportWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    v2 = v1;
    v3 = MultiSportWorkoutConfiguration.subConfigs.getter();
    v4 = v3;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x20F30C990](0, v3);
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_23;
      }

      v5 = *(v3 + 32);
    }

    v6 = v5;

    v7 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  }

  else
  {
    v7 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  }

  [v7 effectiveTypeIdentifier];

  if (swift_dynamicCastClass())
  {
    v8 = v1;
    result = MultiSportWorkoutConfiguration.subConfigs.getter();
    if ((result & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x20F30C990](0, result);
    }

    else
    {
      if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_25;
      }

      v10 = *(result + 32);
    }

    v11 = v10;

    v12 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  }

  else
  {
    v12 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  }

  [v12 isIndoor];

  if (!swift_dynamicCastClass())
  {
    v15 = dispatch thunk of WorkoutConfiguration.activityType.getter();
    goto LABEL_19;
  }

  v1 = v1;
  result = MultiSportWorkoutConfiguration.subConfigs.getter();
  v4 = result;
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_23:
    v13 = MEMORY[0x20F30C990](0, v4);
    goto LABEL_17;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(result + 32);
LABEL_17:
    v14 = v13;

    v15 = dispatch thunk of WorkoutConfiguration.activityType.getter();

LABEL_19:
    [v15 swimmingLocationType];

    return _HKWorkoutActivityTypeIsRouteable();
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t PrecisionStartStatusView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  started = type metadata accessor for PrecisionStartStatusView();
  v36 = *(started - 8);
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](started - 8);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GAEyAkEyAkEyAkEyAkA6ZStackVyAA012_ConditionalD0VyAA08TimelineF0VyAA08PeriodicL8ScheduleVAMyAA05TupleF0VyACyACyACyACyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationV0VySbGG_ACyACyACyACyACy07WorkoutB0018TransitionThinkingF0VA4_GAA08_PaddingR0VGAYGA7_GA11_GACyACyACyA5_AA06_ScaleY0VGA7_GA11_GACyACyAA5ImageVA0_yAA4FontVSgGGAA016_ForegroundStyleV0VyA2_GGtGGGA13_013CountdownIconF0VGGGGGGGAA017_AppearanceActionV0VGMd);
  MEMORY[0x28223BE20](v37);
  v6 = (v32 - v5);
  *v6 = static Alignment.center.getter();
  v6[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA19_ConditionalContentVyAA08TimelineD0VyAA08PeriodicJ8ScheduleVAA0F0VyAA05TupleD0VyAA08ModifiedI0VyASyASyASyAA6CircleVAA06_FrameG0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationT0VySbGG_ASyASyASyASyASy07WorkoutB0018TransitionThinkingD0VA2_GAA08_PaddingG0VGAWGA5_GA9_GASyASyASyA3_AA06_ScaleW0VGA5_GA9_GASyASyAA5ImageVAZyAA4FontVSgGGAA016_ForegroundStyleT0VyA0_GGtGGGA11_013CountdownIconD0VGGMd);
  closure #1 in PrecisionStartStatusView.body.getter(v1, v6 + *(v8 + 44));
  v9 = *(v1 + 72);
  v34 = *(v2 + 80);
  v35 = v9;
  v33 = *(v2 + 88);
  v32[1] = type metadata accessor for GPSLockProvider();
  _s11WorkoutCore0A14StatePublisherCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type GPSLockProvider and conformance GPSLockProvider, MEMORY[0x277D7E060]);
  v10 = StateObject.wrappedValue.getter();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GAA6ZStackVyAA19_ConditionalContentVyAA08TimelineD0VyAA08PeriodicK8ScheduleVAKyAA05TupleD0VyAA08ModifiedJ0VyAUyAUyAUyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationV0VySbGG_AUyAUyAUyAUyAUy07WorkoutB0018TransitionThinkingD0VA4_GAA08_PaddingR0VGAYGA7_GA11_GAUyAUyAUyA5_AA06_ScaleY0VGA7_GA11_GAUyAUyAA5ImageVA0_yAA4FontVSgGGAA016_ForegroundStyleV0VyA2_GGtGGGA13_013CountdownIconD0VGGGMd);
  dispatch thunk of GPSLockProvider.$gpsLock.getter();

  outlined init with copy of PrecisionStartStatusView(v2, v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v13 = swift_allocObject();
  outlined init with take of PrecisionStartStatusView(v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  v14 = (v6 + *(v11 + 56));
  *v14 = partial apply for closure #2 in PrecisionStartStatusView.body.getter;
  v14[1] = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GACyAiA6ZStackVyAA19_ConditionalContentVyAA08TimelineD0VyAA08PeriodicK8ScheduleVAKyAA05TupleD0VyAA08ModifiedJ0VyAUyAUyAUyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationV0VySbGG_AUyAUyAUyAUyAUy07WorkoutB0018TransitionThinkingD0VA4_GAA08_PaddingR0VGAYGA7_GA11_GAUyAUyAUyA5_AA06_ScaleY0VGA7_GA11_GAUyAUyAA5ImageVA0_yAA4FontVSgGGAA016_ForegroundStyleV0VyA2_GGtGGGA13_013CountdownIconD0VGGGGMd);
  WorkoutStatePublisher.$gpsLock.getter();
  outlined init with copy of PrecisionStartStatusView(v2, v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = swift_allocObject();
  outlined init with take of PrecisionStartStatusView(v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v12);
  v17 = (v6 + *(v15 + 56));
  *v17 = partial apply for closure #3 in PrecisionStartStatusView.body.getter;
  v17[1] = v16;
  v18 = StateObject.wrappedValue.getter();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GACyAiCyAiA6ZStackVyAA19_ConditionalContentVyAA08TimelineD0VyAA08PeriodicK8ScheduleVAKyAA05TupleD0VyAA08ModifiedJ0VyAUyAUyAUyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationV0VySbGG_AUyAUyAUyAUyAUy07WorkoutB0018TransitionThinkingD0VA4_GAA08_PaddingR0VGAYGA7_GA11_GAUyAUyAUyA5_AA06_ScaleY0VGA7_GA11_GAUyAUyAA5ImageVA0_yAA4FontVSgGGAA016_ForegroundStyleV0VyA2_GGtGGGA13_013CountdownIconD0VGGGGGMd);
  dispatch thunk of GPSLockProvider.$checkingGPSLock.getter();

  outlined init with copy of PrecisionStartStatusView(v2, v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = swift_allocObject();
  outlined init with take of PrecisionStartStatusView(v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v12);
  v21 = (v6 + *(v19 + 56));
  *v21 = partial apply for closure #4 in PrecisionStartStatusView.body.getter;
  v21[1] = v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GACyAiCyAiCyAiA6ZStackVyAA19_ConditionalContentVyAA08TimelineD0VyAA08PeriodicK8ScheduleVAKyAA05TupleD0VyAA08ModifiedJ0VyAUyAUyAUyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationV0VySbGG_AUyAUyAUyAUyAUy07WorkoutB0018TransitionThinkingD0VA4_GAA08_PaddingR0VGAYGA7_GA11_GAUyAUyAUyA5_AA06_ScaleY0VGA7_GA11_GAUyAUyAA5ImageVA0_yAA4FontVSgGGAA016_ForegroundStyleV0VyA2_GGtGGGA13_013CountdownIconD0VGGGGGGMd);
  WorkoutStatePublisher.$checkingGPSLock.getter();
  outlined init with copy of PrecisionStartStatusView(v2, v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = swift_allocObject();
  outlined init with take of PrecisionStartStatusView(v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v12);
  v24 = (v6 + *(v22 + 56));
  *v24 = partial apply for closure #5 in PrecisionStartStatusView.body.getter;
  v24[1] = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GACyAiCyAiCyAiCyAiA6ZStackVyAA19_ConditionalContentVyAA08TimelineD0VyAA08PeriodicK8ScheduleVAKyAA05TupleD0VyAA08ModifiedJ0VyAUyAUyAUyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationV0VySbGG_AUyAUyAUyAUyAUy07WorkoutB0018TransitionThinkingD0VA4_GAA08_PaddingR0VGAYGA7_GA11_GAUyAUyAUyA5_AA06_ScaleY0VGA7_GA11_GAUyAUyAA5ImageVA0_yAA4FontVSgGGAA016_ForegroundStyleV0VyA2_GGtGGGA13_013CountdownIconD0VGGGGGGGMd);
  WorkoutStatePublisher.$workoutStarted.getter();
  outlined init with copy of PrecisionStartStatusView(v2, v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = swift_allocObject();
  outlined init with take of PrecisionStartStatusView(v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v12);
  v27 = (v6 + *(v25 + 56));
  *v27 = partial apply for closure #6 in PrecisionStartStatusView.body.getter;
  v27[1] = v26;
  outlined init with copy of PrecisionStartStatusView(v2, v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = swift_allocObject();
  outlined init with take of PrecisionStartStatusView(v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v12);
  v29 = (v6 + *(v37 + 36));
  *v29 = partial apply for closure #7 in PrecisionStartStatusView.body.getter;
  v29[1] = v28;
  v29[2] = 0;
  v29[3] = 0;
  outlined init with copy of PrecisionStartStatusView(v2, v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = swift_allocObject();
  outlined init with take of PrecisionStartStatusView(v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v12);
  lazy protocol witness table accessor for type ModifiedContent<SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, ZStack<_ConditionalContent<TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWriting();
  View.onTapGesture(count:perform:)();

  return outlined destroy of ModifiedContent<SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, ZStack<_ConditionalContent<TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _Foregro(v6, &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GAEyAkEyAkEyAkEyAkA6ZStackVyAA012_ConditionalD0VyAA08TimelineF0VyAA08PeriodicL8ScheduleVAMyAA05TupleF0VyACyACyACyACyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationV0VySbGG_ACyACyACyACyACy07WorkoutB0018TransitionThinkingF0VA4_GAA08_PaddingR0VGAYGA7_GA11_GACyACyACyA5_AA06_ScaleY0VGA7_GA11_GACyACyAA5ImageVA0_yAA4FontVSgGGAA016_ForegroundStyleV0VyA2_GGtGGGA13_013CountdownIconF0VGGGGGGGAA017_AppearanceActionV0VGMd);
}

uint64_t closure #1 in PrecisionStartStatusView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA12TimelineViewVyAA08PeriodicF8ScheduleVAA6ZStackVyAA05TupleG0VyAA08ModifiedD0VyAOyAOyAOyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationS0VySbGG_AOyAOyAOyAOyAOy07WorkoutB0018TransitionThinkingG0VAZGAA08_PaddingO0VGASGA1_GA5_GAOyAOyAOyA_AA06_ScaleV0VGA1_GA5_GAOyAOyAA5ImageVAVyAA4FontVSgGGAA016_ForegroundStyleS0VyAXGGtGGGA7_013CountdownIconG0V_GMd);
  MEMORY[0x28223BE20](v51);
  v4 = &v43 - v3;
  started = type metadata accessor for PrecisionStartStatusView();
  v43 = *(started - 8);
  v6 = *(v43 + 64);
  MEMORY[0x28223BE20](started);
  v44 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v14 = type metadata accessor for PeriodicTimelineSchedule();
  v47 = *(v14 - 8);
  v48 = v14;
  MEMORY[0x28223BE20](v14);
  v45 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewVyAA08PeriodicC8ScheduleVAA6ZStackVyAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationQ0VySbGG_AKyAKyAKyAKyAKy07WorkoutB0018TransitionThinkingD0VAVGAA08_PaddingM0VGAOGAYGA1_GAKyAKyAKyAwA06_ScaleT0VGAYGA1_GAKyAKyAA5ImageVARyAA4FontVSgGGAA016_ForegroundStyleQ0VyATGGtGGGMd);
  v49 = *(v19 - 8);
  v50 = v19;
  MEMORY[0x28223BE20](v19);
  v46 = &v43 - v20;
  if (PrecisionStartStatusView.isRouteable.getter())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy10Foundation4DateVGMd);
    State.wrappedValue.getter();
    (*(v8 + 16))(v10, v13, v7);
    PeriodicTimelineSchedule.init(from:by:)();
    (*(v8 + 8))(v13, v7);
    v21 = v44;
    outlined init with copy of PrecisionStartStatusView(a1, v44);
    v22 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v23 = swift_allocObject();
    outlined init with take of PrecisionStartStatusView(v21, v23 + v22);
    v25 = v47;
    v24 = v48;
    (*(v47 + 16))(v45, v18, v48);
    v26 = swift_allocObject();
    *(v26 + 16) = partial apply for closure #1 in closure #1 in PrecisionStartStatusView.body.getter;
    *(v26 + 24) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationN0VySbGG_AGyAGyAGyAGyAGy07WorkoutB0018TransitionThinkingE0VARGAA08_PaddingJ0VGAKGAUGAYGAGyAGyAGyAsA06_ScaleQ0VGAUGAYGAGyAGyAA5ImageVANyAA4FontVSgGGAA016_ForegroundStyleN0VyAPGGtGGMd);
    _s11WorkoutCore0A14StatePublisherCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type PeriodicTimelineSchedule and conformance PeriodicTimelineSchedule, MEMORY[0x277CE06F0]);
    lazy protocol witness table accessor for type SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, ZStack<_ConditionalContent<TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationN0VySbGG_AGyAGyAGyAGyAGy07WorkoutB0018TransitionThinkingE0VARGAA08_PaddingJ0VGAKGAUGAYGAGyAGyAGyAsA06_ScaleQ0VGAUGAYGAGyAGyAA5ImageVANyAA4FontVSgGGAA016_ForegroundStyleN0VyAPGGtGGMd);
    v27 = v46;
    TimelineView<>.init(_:content:)();
    (*(v25 + 8))(v18, v24);
    v29 = v49;
    v28 = v50;
    (*(v49 + 16))(v4, v27, v50);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>)>>> and conformance <> TimelineView<A, B>();
    lazy protocol witness table accessor for type CountdownIconView and conformance CountdownIconView();
    _ConditionalContent<>.init(storage:)();
    return (*(v29 + 8))(v27, v28);
  }

  else
  {
    v31 = *(a1 + 16);
    v32 = *(a1 + 24);
    v33 = *(a1 + 32);
    v34 = *(a1 + 50);
    v35 = objc_opt_self();
    v36 = v31;
    v37 = v32;
    v38 = [v35 currentDevice];
    v39 = specialized UIDevice.screenType.getter();

    v40 = qword_20CB82F88[v39];
    v41 = [v35 currentDevice];
    LOBYTE(v38) = specialized UIDevice.screenType.getter();

    v42 = qword_20CB82FE0[v38];
    *v4 = v36;
    *(v4 + 1) = v37;
    *(v4 + 2) = v33;
    v4[24] = v34;
    v4[25] = 0;
    *(v4 + 4) = v40;
    *(v4 + 5) = v42;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>)>>> and conformance <> TimelineView<A, B>();
    lazy protocol witness table accessor for type CountdownIconView and conformance CountdownIconView();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t closure #1 in closure #1 in PrecisionStartStatusView.body.getter@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = static Alignment.center.getter();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA6CircleVAA06_FrameG0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationP0VySbGG_AKyAKyAKyAKyAKy07WorkoutB0018TransitionThinkingD0VAVGAA08_PaddingG0VGAOGAYGA1_GAKyAKyAKyAwA06_ScaleS0VGAYGA1_GAKyAKyAA5ImageVARyAA4FontVSgGGAA016_ForegroundStyleP0VyATGGtGGMd);
  return closure #1 in closure #1 in closure #1 in PrecisionStartStatusView.body.getter(a1, (a2 + *(v5 + 44)));
}

uint64_t closure #1 in closure #1 in closure #1 in PrecisionStartStatusView.body.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v104 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v103 = &v96[-v4];
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMd);
  MEMORY[0x28223BE20](v98);
  v107 = &v96[-v5];
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA06_FrameO0VGMd);
  MEMORY[0x28223BE20](v99);
  v101 = &v96[-v6];
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA06_FrameO0VGAA14_OpacityEffectVGMd);
  MEMORY[0x28223BE20](v100);
  v109 = &v96[-v7];
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA06_FrameO0VGAA14_OpacityEffectVGAA010_AnimationL0VySbGGMd);
  MEMORY[0x28223BE20](v106);
  v120 = &v96[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v105 = &v96[-v10];
  MEMORY[0x28223BE20](v11);
  v121 = &v96[-v12];
  v108 = *(a1 + 48);
  if (v108 == 1)
  {
    v13 = *(a1 + 50);
    v14 = type metadata accessor for MetricsViewLayout();
    v15 = objc_allocWithZone(v14);
    v16 = MetricsViewLayout.init(compressedLayout:)(v13);
    MetricsViewLayout.ringDiameter.getter();

    v17 = objc_allocWithZone(v14);
    v18 = MetricsViewLayout.init(compressedLayout:)(v13);
    MetricsViewLayout.ringDiameter.getter();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v114 = v172;
  v19 = v173;
  v116 = v174;
  v20 = v175;
  v118 = v177;
  v119 = v176;
  static Color.white.getter();
  *(&v113 + 1) = Color.opacity(_:)();

  *&v113 = swift_getKeyPath();
  v115 = v19;
  v171 = v19;
  v117 = v20;
  v170 = v20;
  v21 = *(a1 + 96);
  v22 = *(a1 + 104);
  LOBYTE(v136) = v21;
  v137 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  LODWORD(v102) = v128;
  if (PrecisionStartStatusView.isLuminanceReduced.getter())
  {
    v112 = 0;
  }

  else
  {
    v112 = static Animation.easeInOut(duration:)();
  }

  LOBYTE(v136) = v21;
  v137 = v22;
  State.wrappedValue.getter();
  v111 = v128;
  LODWORD(v110) = *(a1 + 50);
  specialized PrecisionStartStatusView.Layout.init(compressedLayout:)(v110);
  v24 = v23;
  type metadata accessor for PrecisionStartStatusView();
  v25 = type metadata accessor for TransitionThinkingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy10Foundation4DateVGMd);
  v26 = v107;
  State.wrappedValue.getter();
  started = PrecisionStartStatusView.isLuminanceReduced.getter();
  *v26 = v24;
  *(v26 + *(v25 + 24)) = (started & 1) == 0;
  *(v26 + *(v25 + 28)) = 16;
  v28 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v30 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd) + 36));
  *v30 = KeyPath;
  v30[1] = v28;
  LOBYTE(v28) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v31 = v26 + *(v98 + 36);
  *v31 = v28;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  if (v108)
  {
    v36 = type metadata accessor for MetricsViewLayout();
    v37 = objc_allocWithZone(v36);
    v38 = v21;
    v39 = v22;
    v40 = v110;
    v41 = MetricsViewLayout.init(compressedLayout:)(v110);
    MetricsViewLayout.ringDiameter.getter();

    v42 = objc_allocWithZone(v36);
    LOBYTE(v42) = v40;
    v22 = v39;
    v21 = v38;
    v43 = MetricsViewLayout.init(compressedLayout:)(v42);
    MetricsViewLayout.ringDiameter.getter();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v44 = v101;
  outlined init with take of ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>(v107, v101, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMd);
  v45 = &v44[*(v99 + 36)];
  v46 = v179;
  *v45 = v178;
  v45[1] = v46;
  v45[2] = v180;
  v47 = *(a1 + 120);
  LOBYTE(v136) = *(a1 + 112);
  v137 = v47;
  State.wrappedValue.getter();
  v48 = 0.0;
  if (v128 == 1)
  {
    LOBYTE(v136) = v21;
    v137 = v22;
    State.wrappedValue.getter();
    if (v128)
    {
      v48 = 0.0;
    }

    else
    {
      v48 = 1.0;
    }
  }

  v49 = v109;
  outlined init with take of ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>(v44, v109, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA06_FrameO0VGMd);
  *&v49[*(v100 + 36)] = v48;
  if (PrecisionStartStatusView.isLuminanceReduced.getter())
  {
    v50 = 0;
  }

  else
  {
    v50 = static Animation.easeInOut(duration:)();
  }

  LOBYTE(v136) = v21;
  v137 = v22;
  State.wrappedValue.getter();
  v51 = v128;
  v52 = v105;
  outlined init with take of ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>(v109, v105, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA06_FrameO0VGAA14_OpacityEffectVGMd);
  v53 = &v52[*(v106 + 36)];
  *v53 = v50;
  v53[8] = v51;
  outlined init with take of ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>(v52, v121, &_s7SwiftUI15ModifiedContentVyACyACyACyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA06_FrameO0VGAA14_OpacityEffectVGAA010_AnimationL0VySbGGMd);
  if (v108)
  {
    v54 = type metadata accessor for MetricsViewLayout();
    v55 = objc_allocWithZone(v54);
    v56 = v22;
    v57 = v110;
    v58 = MetricsViewLayout.init(compressedLayout:)(v110);
    MetricsViewLayout.ringDiameter.getter();

    v59 = objc_allocWithZone(v54);
    LOBYTE(v59) = v57;
    v22 = v56;
    v60 = MetricsViewLayout.init(compressedLayout:)(v59);
    MetricsViewLayout.ringDiameter.getter();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v107 = v181;
  v61 = v182;
  v99 = v183;
  v62 = v184;
  v109 = v185;
  v101 = v186;
  v100 = static Color.blue.getter();
  v106 = swift_getKeyPath();
  v108 = v61;
  v167 = v61;
  v165 = v62;
  LOBYTE(v136) = v21;
  v137 = v22;
  State.wrappedValue.getter();
  v63 = v128;
  static UnitPoint.center.getter();
  v65 = v64;
  v67 = v66;
  LOBYTE(v136) = v21;
  v137 = v22;
  State.wrappedValue.getter();
  v68 = v128;
  if (PrecisionStartStatusView.isLuminanceReduced.getter())
  {
    v105 = 0;
  }

  else
  {
    v105 = MEMORY[0x20F30B4C0](0.35, 0.45, 0.0);
  }

  if (v68)
  {
    v69 = 1.0;
  }

  else
  {
    v69 = 0.0;
  }

  if (v63)
  {
    v70 = 1.0;
  }

  else
  {
    v70 = 0.8;
  }

  if (v102)
  {
    v71 = 0.0;
  }

  else
  {
    v71 = 1.0;
  }

  LOBYTE(v136) = v21;
  v137 = v22;
  State.wrappedValue.getter();
  v72 = v128;
  v102 = Image.init(systemName:)();
  specialized PrecisionStartStatusView.Layout.init(compressedLayout:)(v110);
  v73 = type metadata accessor for Font.Design();
  v74 = v103;
  (*(*(v73 - 8) + 56))(v103, 1, 1, v73);
  v110 = static Font.system(size:weight:design:)();
  outlined destroy of ModifiedContent<SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, ZStack<_ConditionalContent<TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _Foregro(v74, &_s7SwiftUI4FontV6DesignOSgMd);
  v103 = swift_getKeyPath();
  v75 = static Color.white.getter();
  v76 = v120;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>(v121, v120, &_s7SwiftUI15ModifiedContentVyACyACyACyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA06_FrameO0VGAA14_OpacityEffectVGAA010_AnimationL0VySbGGMd);
  *&v122 = v114;
  BYTE8(v122) = v115;
  HIDWORD(v122) = *&v169[3];
  *(&v122 + 9) = *v169;
  *&v123 = v116;
  BYTE8(v123) = v117;
  HIDWORD(v123) = *&v168[3];
  *(&v123 + 9) = *v168;
  *&v124 = v119;
  *(&v124 + 1) = v118;
  v125 = v113;
  *&v126 = v71;
  *(&v126 + 1) = v112;
  v77 = v111;
  v127 = v111;
  v78 = v123;
  v79 = v104;
  *v104 = v122;
  v79[1] = v78;
  v80 = v124;
  v81 = v125;
  v82 = v126;
  *(v79 + 80) = v77;
  v79[3] = v81;
  v79[4] = v82;
  v79[2] = v80;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationK0VySbGG_ACyACyACyACyACy07WorkoutB022TransitionThinkingViewVANGAA08_PaddingG0VGAGGAQGAUGACyACyACyAoA06_ScaleN0VGAQGAUGACyACyAA5ImageVAJyAA4FontVSgGGAA016_ForegroundStyleK0VyALGGtMd);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>(v76, v79 + v83[12], &_s7SwiftUI15ModifiedContentVyACyACyACyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA06_FrameO0VGAA14_OpacityEffectVGAA010_AnimationL0VySbGGMd);
  v84 = v79 + v83[16];
  *&v128 = v107;
  BYTE8(v128) = v108;
  *(&v128 + 9) = *v166;
  HIDWORD(v128) = *&v166[3];
  v85 = v99;
  *&v129 = v99;
  BYTE8(v129) = v62;
  HIDWORD(v129) = *&v164[3];
  *(&v129 + 9) = *v164;
  v86 = v101;
  *&v130 = v109;
  *(&v130 + 1) = v101;
  v97 = v62;
  LODWORD(v98) = v72;
  v87 = v100;
  *&v131 = v106;
  *(&v131 + 1) = v100;
  *&v132 = v70;
  *(&v132 + 1) = v70;
  *&v133 = v65;
  *(&v133 + 1) = v67;
  *&v134 = v69;
  *(&v134 + 1) = v105;
  v135 = v72;
  v84[112] = v72;
  v88 = v128;
  v89 = v129;
  v91 = v131;
  v90 = v132;
  *(v84 + 2) = v130;
  *(v84 + 3) = v91;
  *v84 = v88;
  *(v84 + 1) = v89;
  v92 = v134;
  *(v84 + 5) = v133;
  *(v84 + 6) = v92;
  *(v84 + 4) = v90;
  v93 = (v79 + v83[20]);
  v94 = v103;
  *v93 = v102;
  v93[1] = v94;
  v93[2] = v110;
  v93[3] = v75;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>(&v122, &v136, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationK0VySbGGMd);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>(&v128, &v136, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_ScaleEffectVGAA08_OpacityN0VGAA010_AnimationK0VySbGGMd);

  outlined destroy of ModifiedContent<SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, ZStack<_ConditionalContent<TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _Foregro(v121, &_s7SwiftUI15ModifiedContentVyACyACyACyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA06_FrameO0VGAA14_OpacityEffectVGAA010_AnimationL0VySbGGMd);

  v136 = v107;
  LOBYTE(v137) = v108;
  *(&v137 + 1) = *v166;
  HIDWORD(v137) = *&v166[3];
  v138 = v85;
  v139 = v97;
  *v140 = *v164;
  *&v140[3] = *&v164[3];
  v141 = v109;
  v142 = v86;
  v143 = v106;
  v144 = v87;
  v145 = v70;
  v146 = v70;
  v147 = v65;
  v148 = v67;
  v149 = v69;
  v150 = v105;
  v151 = v98;
  outlined destroy of ModifiedContent<SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, ZStack<_ConditionalContent<TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _Foregro(&v136, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_ScaleEffectVGAA08_OpacityN0VGAA010_AnimationK0VySbGGMd);
  outlined destroy of ModifiedContent<SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, ZStack<_ConditionalContent<TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _Foregro(v120, &_s7SwiftUI15ModifiedContentVyACyACyACyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA06_FrameO0VGAA14_OpacityEffectVGAA010_AnimationL0VySbGGMd);
  v152 = v114;
  v153 = v115;
  *v154 = *v169;
  *&v154[3] = *&v169[3];
  v155 = v116;
  v156 = v117;
  *v157 = *v168;
  *&v157[3] = *&v168[3];
  v158 = v119;
  v159 = v118;
  v160 = v113;
  v161 = v71;
  v162 = v112;
  v163 = v111;
  return outlined destroy of ModifiedContent<SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, ZStack<_ConditionalContent<TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _Foregro(&v152, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationK0VySbGGMd);
}

void PrecisionStartStatusView.onReceiveGPSLock(newValue:)(char a1)
{
  v2 = a1 & 1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v33 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for PrecisionStartStatusView();
  v28 = *(started - 8);
  MEMORY[0x28223BE20](started);
  v29 = v7;
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = *(v1 + 96);
  v37 = v1;
  v16 = *(v1 + 104);
  LOBYTE(aBlock) = v15;
  v39 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  if (v44 != v2)
  {
    LOBYTE(aBlock) = v15;
    v39 = v16;
    v44 = v2;
    State.wrappedValue.setter();
    Date.init()();
    (*(v9 + 16))(v11, v14, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy10Foundation4DateVGMd);
    v17 = v37;
    State.wrappedValue.setter();
    (*(v9 + 8))(v14, v8);
    LOBYTE(aBlock) = v15;
    v39 = v16;
    State.wrappedValue.getter();
    if (v44 == 1)
    {
      PrecisionStartStatusView.playGPSLockHaptic()();
    }

    if (*(v17 + 49) == 1)
    {
      _sSo23FIUIWorkoutActivityTypeCMaTm_8(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v18 = static OS_dispatch_queue.main.getter();
      v19 = v30;
      outlined init with copy of PrecisionStartStatusView(v37, v30);
      v20 = (*(v28 + 80) + 16) & ~*(v28 + 80);
      v21 = v20 + v29;
      v22 = swift_allocObject();
      outlined init with take of PrecisionStartStatusView(v19, v22 + v20);
      *(v22 + v21) = v2;
      v42 = partial apply for closure #1 in PrecisionStartStatusView.onReceiveGPSLock(newValue:);
      v43 = v22;
      aBlock = MEMORY[0x277D85DD0];
      v39 = 1107296256;
      v40 = thunk for @escaping @callee_guaranteed () -> ();
      v41 = &block_descriptor_30_0;
      v23 = _Block_copy(&aBlock);

      v24 = v31;
      static DispatchQoS.unspecified.getter();
      aBlock = MEMORY[0x277D84F90];
      _s11WorkoutCore0A14StatePublisherCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, ZStack<_ConditionalContent<TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
      v25 = v33;
      v26 = v36;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x20F30C1F0](0, v24, v25, v23);
      _Block_release(v23);

      (*(v35 + 8))(v25, v26);
      (*(v32 + 8))(v24, v34);
    }
  }
}

void closure #2 in PrecisionStartStatusView.body.getter(unsigned __int8 *a1, uint64_t a2, const char *a3)
{
  started = type metadata accessor for PrecisionStartStatusView();
  MEMORY[0x28223BE20](started - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  static WOLog.app.getter();
  outlined init with copy of PrecisionStartStatusView(a2, v11);
  outlined init with copy of PrecisionStartStatusView(a2, v8);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v23 = a3;
    v19 = v18;
    *v18 = 67109632;
    *(v18 + 4) = v24;
    *(v18 + 8) = 1024;
    v20 = *(v11 + 13);
    v26 = v11[96];
    v27 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    State.wrappedValue.getter();
    v21 = v25;
    outlined destroy of PrecisionStartStatusView(v11);
    *(v19 + 10) = v21;
    *(v19 + 14) = 1024;
    v22 = v8[49];
    outlined destroy of PrecisionStartStatusView(v8);
    *(v19 + 16) = v22;
    _os_log_impl(&dword_20C66F000, v16, v17, v23, v19, 0x14u);
    MEMORY[0x20F30E080](v19, -1, -1);
  }

  else
  {
    outlined destroy of PrecisionStartStatusView(v8);
    outlined destroy of PrecisionStartStatusView(v11);
  }

  (*(v13 + 8))(v15, v12);
  PrecisionStartStatusView.onReceiveGPSLock(newValue:)(v24);
}

uint64_t PrecisionStartStatusView.onReceiveCheckingGPSLock(newValue:)(char a1)
{
  v2 = a1 & 1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for PrecisionStartStatusView();
  v28 = *(started - 8);
  MEMORY[0x28223BE20](started);
  v29 = v7;
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = *(v1 + 112);
  v37 = v1;
  v16 = *(v1 + 120);
  LOBYTE(aBlock) = v15;
  v40 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  result = State.wrappedValue.getter();
  v38 = v2;
  if (v45 != v2)
  {
    LOBYTE(aBlock) = v15;
    v40 = v16;
    v45 = v38;
    State.wrappedValue.setter();
    Date.init()();
    (*(v9 + 16))(v11, v14, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy10Foundation4DateVGMd);
    v18 = v37;
    State.wrappedValue.setter();
    result = (*(v9 + 8))(v14, v8);
    if (*(v18 + 49) == 1)
    {
      _sSo23FIUIWorkoutActivityTypeCMaTm_8(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v19 = static OS_dispatch_queue.main.getter();
      v20 = v30;
      outlined init with copy of PrecisionStartStatusView(v37, v30);
      v21 = (*(v28 + 80) + 16) & ~*(v28 + 80);
      v22 = v21 + v29;
      v23 = swift_allocObject();
      outlined init with take of PrecisionStartStatusView(v20, v23 + v21);
      *(v23 + v22) = v38;
      v43 = partial apply for closure #1 in PrecisionStartStatusView.onReceiveCheckingGPSLock(newValue:);
      v44 = v23;
      aBlock = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = thunk for @escaping @callee_guaranteed () -> ();
      v42 = &block_descriptor_30;
      v24 = _Block_copy(&aBlock);

      v25 = v31;
      static DispatchQoS.unspecified.getter();
      aBlock = MEMORY[0x277D84F90];
      _s11WorkoutCore0A14StatePublisherCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, ZStack<_ConditionalContent<TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
      v26 = v33;
      v27 = v36;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x20F30C1F0](0, v25, v26, v24);
      _Block_release(v24);

      (*(v35 + 8))(v26, v27);
      return (*(v32 + 8))(v25, v34);
    }
  }

  return result;
}

uint64_t closure #4 in PrecisionStartStatusView.body.getter(unsigned __int8 *a1, uint64_t a2, const char *a3)
{
  started = type metadata accessor for PrecisionStartStatusView();
  MEMORY[0x28223BE20](started - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  static WOLog.app.getter();
  outlined init with copy of PrecisionStartStatusView(a2, v8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109376;
    *(v16 + 4) = v13;
    *(v16 + 8) = 1024;
    v21 = v9;
    v17 = a3;
    v18 = v8[49];
    outlined destroy of PrecisionStartStatusView(v8);
    *(v16 + 10) = v18;
    v9 = v21;
    _os_log_impl(&dword_20C66F000, v14, v15, v17, v16, 0xEu);
    MEMORY[0x20F30E080](v16, -1, -1);
  }

  else
  {
    outlined destroy of PrecisionStartStatusView(v8);
  }

  (*(v10 + 8))(v12, v9);
  return PrecisionStartStatusView.onReceiveCheckingGPSLock(newValue:)(v13);
}

void closure #6 in PrecisionStartStatusView.body.getter(unsigned __int8 *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  static WOLog.app.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v8;
    _os_log_impl(&dword_20C66F000, v9, v10, "[GPSLockProvider] PrecisionStartStatusView received workoutStarted=%{BOOL}d", v11, 8u);
    MEMORY[0x20F30E080](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v12 = (a2 + *(type metadata accessor for PrecisionStartStatusView() + 64));
    v14 = *v12;
    v13 = v12[1];
    v17[2] = v14;
    v17[3] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB014ReminderHapticCGMd);
    State.wrappedValue.getter();
    v15 = v17[1];
    ReminderHaptic.stopTimer()();

    if ((PrecisionStartStatusView.isRouteable.getter() & 1) != 0 && *(a2 + 49) == 1)
    {
      type metadata accessor for GPSLockProvider();
      _s11WorkoutCore0A14StatePublisherCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type GPSLockProvider and conformance GPSLockProvider, MEMORY[0x277D7E060]);
      v16 = StateObject.wrappedValue.getter();
      dispatch thunk of GPSLockProvider.deactivate()();
    }
  }
}

void closure #7 in PrecisionStartStatusView.body.getter(uint64_t a1)
{
  if ((WorkoutStatePublisher.workoutStarted.getter() & 1) == 0)
  {
    PrecisionStartStatusView.playInitialHaptic()();
    if ((PrecisionStartStatusView.isRouteable.getter() & 1) != 0 && *(a1 + 49) == 1)
    {
      type metadata accessor for GPSLockProvider();
      _s11WorkoutCore0A14StatePublisherCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type GPSLockProvider and conformance GPSLockProvider, MEMORY[0x277D7E060]);
      v2 = StateObject.wrappedValue.getter();
      dispatch thunk of GPSLockProvider.activate()();
    }

    type metadata accessor for PrecisionStartStatusView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB014ReminderHapticCGMd);
    State.wrappedValue.getter();
    ReminderHaptic.startTimer()();
  }
}

uint64_t PrecisionStartStatusView.playInitialHaptic()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for PrecisionStartStatusView() + 68));
  v6 = *v5;
  v7 = *(v5 + 1);
  v14 = *v5;
  v15 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  result = State.wrappedValue.getter();
  if ((v13 & 1) == 0)
  {
    static WOLog.app.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_20C66F000, v9, v10, "PrecisionStartStatusView playing initial haptic", v11, 2u);
      MEMORY[0x20F30E080](v11, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    AudioServicesPlaySystemSoundWithCompletion(0x604u, 0);
    v14 = v6;
    v15 = v7;
    v13 = 1;
    return State.wrappedValue.setter();
  }

  return result;
}

void closure #8 in PrecisionStartStatusView.body.getter()
{
  type metadata accessor for PreviewChecker();
  if (MEMORY[0x20F3051E0]())
  {
    type metadata accessor for GPSLockProvider();
    _s11WorkoutCore0A14StatePublisherCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type GPSLockProvider and conformance GPSLockProvider, MEMORY[0x277D7E060]);
    v0 = StateObject.wrappedValue.getter();
    dispatch thunk of GPSLockProvider.fakeToggleGPSLock()();
  }
}

void PrecisionStartStatusView.playGPSLockHaptic()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.app.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_20C66F000, v4, v5, "[GPSLockProvider] PrecisionStartStatusView playing gps lock haptic", v6, 2u);
    MEMORY[0x20F30E080](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  AudioServicesPlaySystemSoundWithCompletion(0x601u, 0);
}

uint64_t closure #1 in PrecisionStartStatusView.onReceiveGPSLock(newValue:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, double), const char *a4)
{
  started = type metadata accessor for PrecisionStartStatusView();
  MEMORY[0x28223BE20](started - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(a2, v13);
  static WOLog.app.getter();
  outlined init with copy of PrecisionStartStatusView(a1, v10);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109376;
    *(v18 + 4) = a2 & 1;
    *(v18 + 8) = 1024;
    v19 = v10[49];
    outlined destroy of PrecisionStartStatusView(v10);
    *(v18 + 10) = v19;
    _os_log_impl(&dword_20C66F000, v16, v17, a4, v18, 0xEu);
    MEMORY[0x20F30E080](v18, -1, -1);
  }

  else
  {
    outlined destroy of PrecisionStartStatusView(v10);
  }

  return (*(v12 + 8))(v15, v11);
}

uint64_t key path getter for EnvironmentValues.isLuminanceReduced : EnvironmentValues@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isLuminanceReduced.getter();
  *a1 = result & 1;
  return result;
}

uint64_t type metadata accessor for PrecisionStartStatusView()
{
  result = type metadata singleton initialization cache for PrecisionStartStatusView;
  if (!type metadata singleton initialization cache for PrecisionStartStatusView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of PrecisionStartStatusView(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for PrecisionStartStatusView();
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

void outlined consume of StateObject<GPSLockProvider>.Storage(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t outlined init with take of PrecisionStartStatusView(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for PrecisionStartStatusView();
  (*(*(started - 8) + 32))(a2, a1, started);
  return a2;
}

void partial apply for closure #6 in PrecisionStartStatusView.body.getter(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for PrecisionStartStatusView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  closure #6 in PrecisionStartStatusView.body.getter(a1, v4);
}

uint64_t partial apply for closure #7 in PrecisionStartStatusView.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PrecisionStartStatusView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void type metadata completion function for PrecisionStartStatusView()
{
  _s7SwiftUI11EnvironmentVySbGMaTm_0(319, &lazy cache variable for type metadata for Environment<Bool>, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    _sSo23FIUIWorkoutActivityTypeCMaTm_8(319, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
    if (v1 <= 0x3F)
    {
      type metadata accessor for WorkoutConfiguration();
      if (v2 <= 0x3F)
      {
        _s7SwiftUI11EnvironmentVySbGMaTm_0(319, &lazy cache variable for type metadata for CGFloat?, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for ObservedObject<WorkoutStatePublisher>();
          if (v4 <= 0x3F)
          {
            type metadata accessor for StateObject<GPSLockProvider>();
            if (v5 <= 0x3F)
            {
              _s7SwiftUI11EnvironmentVySbGMaTm_0(319, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                type metadata accessor for State<Date>(319, &lazy cache variable for type metadata for State<Date>, MEMORY[0x277CC9578]);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for State<Date>(319, &lazy cache variable for type metadata for State<ReminderHaptic>, type metadata accessor for ReminderHaptic);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void type metadata accessor for StateObject<GPSLockProvider>()
{
  if (!lazy cache variable for type metadata for StateObject<GPSLockProvider>)
  {
    type metadata accessor for GPSLockProvider();
    _s11WorkoutCore0A14StatePublisherCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type GPSLockProvider and conformance GPSLockProvider, MEMORY[0x277D7E060]);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StateObject<GPSLockProvider>);
    }
  }
}

void _s7SwiftUI11EnvironmentVySbGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for State<Date>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for State();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined destroy of PrecisionStartStatusView(uint64_t a1)
{
  started = type metadata accessor for PrecisionStartStatusView();
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t _sSo23FIUIWorkoutActivityTypeCMaTm_8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_23Tm_0()
{
  v1 = (type metadata accessor for PrecisionStartStatusView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  outlined consume of Environment<Bool>.Content(*v2, *(v2 + 8));

  outlined consume of StateObject<GPSLockProvider>.Storage(*(v2 + 72), *(v2 + 80), *(v2 + 88));

  v3 = v2 + v1[17];
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy10Foundation4DateVGMd);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in PrecisionStartStatusView.onReceiveCheckingGPSLock(newValue:)(void (*a1)(uint64_t, double), const char *a2)
{
  v5 = *(type metadata accessor for PrecisionStartStatusView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return closure #1 in PrecisionStartStatusView.onReceiveGPSLock(newValue:)(v2 + v6, *(v2 + v6 + *(v5 + 64)), a1, a2);
}

unint64_t lazy protocol witness table accessor for type TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>)>>> and conformance <> TimelineView<A, B>()
{
  result = lazy protocol witness table cache variable for type TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>)>>> and conformance <> TimelineView<A, B>;
  if (!lazy protocol witness table cache variable for type TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>)>>> and conformance <> TimelineView<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI12TimelineViewVyAA08PeriodicC8ScheduleVAA6ZStackVyAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationQ0VySbGG_AKyAKyAKyAKyAKy07WorkoutB0018TransitionThinkingD0VAVGAA08_PaddingM0VGAOGAYGA1_GAKyAKyAKyAwA06_ScaleT0VGAYGA1_GAKyAKyAA5ImageVARyAA4FontVSgGGAA016_ForegroundStyleQ0VyATGGtGGGMd);
    lazy protocol witness table accessor for type SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, ZStack<_ConditionalContent<TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationN0VySbGG_AGyAGyAGyAGyAGy07WorkoutB0018TransitionThinkingE0VARGAA08_PaddingJ0VGAKGAUGAYGAGyAGyAGyAsA06_ScaleQ0VGAUGAYGAGyAGyAA5ImageVANyAA4FontVSgGGAA016_ForegroundStyleN0VyAPGGtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>)>>> and conformance <> TimelineView<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CountdownIconView and conformance CountdownIconView()
{
  result = lazy protocol witness table cache variable for type CountdownIconView and conformance CountdownIconView;
  if (!lazy protocol witness table cache variable for type CountdownIconView and conformance CountdownIconView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountdownIconView and conformance CountdownIconView);
  }

  return result;
}

uint64_t objectdestroyTm_68()
{
  v1 = (type metadata accessor for PrecisionStartStatusView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  outlined consume of Environment<Bool>.Content(*v2, *(v2 + 8));

  outlined consume of StateObject<GPSLockProvider>.Storage(*(v2 + 72), *(v2 + 80), *(v2 + 88));

  v3 = v2 + v1[17];
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy10Foundation4DateVGMd);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in PrecisionStartStatusView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for PrecisionStartStatusView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in closure #1 in PrecisionStartStatusView.body.getter(v4, a1);
}

uint64_t _s11WorkoutCore0A14StatePublisherCAC7Combine16ObservableObjectAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

double specialized PrecisionStartStatusView.Layout.init(compressedLayout:)(char a1)
{
  v2 = objc_opt_self();
  v3 = [v2 currentDevice];
  v4 = specialized UIDevice.screenType.getter();

  v5 = 0.0;
  if (v4 <= 4u)
  {
    if (v4 >= 3u)
    {
      v5 = 16.0;
    }
  }

  else if (v4 > 7u)
  {
    if (v4 == 8)
    {
      v5 = 17.5;
    }

    else if (v4 == 9)
    {
      v5 = 19.5;
    }

    else if (a1)
    {
      v5 = 16.0;
    }

    else
    {
      v5 = 19.5;
    }
  }

  else if (v4 == 5 || v4 == 6)
  {
    v5 = 17.0;
  }

  v6 = objc_opt_self();
  v7 = [v6 mainScreen];
  [v7 scale];
  v9 = v8;

  v10 = [v6 mainScreen];
  [v10 nativeScale];
  v12 = v11;

  if (v9 != v12)
  {
    v13 = [v6 mainScreen];
    [v13 scale];
    v15 = v14;

    v16 = [v6 mainScreen];
    [v16 nativeScale];
    v18 = v17;

    v5 = v5 * (v15 / v18 * 0.95);
  }

  v19 = [v2 currentDevice];
  specialized UIDevice.screenType.getter();

  v20 = [v6 mainScreen];
  [v20 scale];
  v22 = v21;

  v23 = [v6 mainScreen];
  [v23 nativeScale];
  v25 = v24;

  if (v22 != v25)
  {
    v26 = [v6 mainScreen];
    [v26 scale];

    v27 = [v6 mainScreen];
    [v27 nativeScale];
  }

  return v5;
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t DistancePicker.init(activityType:formattingManager:boundGoal:minimumValues:lastWorkoutValue:color:editMode:displayImage:style:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, char a13, char *a14)
{
  v20 = *a14;
  *a9 = a1;
  *(a9 + 8) = v20;
  *(a9 + 24) = 0;
  *(a9 + 32) = 0;
  *(a9 + 16) = a8;
  *(a9 + 40) = a13;
  type metadata accessor for MainActor();

  v21 = a5;
  swift_retain_n();
  v35 = a1;
  v22 = static MainActor.shared.getter();
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = a3;
  v23[5] = a4;
  v23[6] = v21;

  v34 = v21;
  v25 = static MainActor.shared.getter();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = v24;
  v26[4] = a3;
  v26[5] = a4;
  v26[6] = v34;
  _sSo21NLSessionActivityGoalCMaTm_3(0, &lazy cache variable for type metadata for NLSessionActivityGoal);
  Binding.init(get:set:)();
  type metadata accessor for DistancePickerViewModel();
  swift_allocObject();
  v27 = a7;
  v33 = a7;

  v28 = v40;
  v29 = a2;
  DistancePickerViewModel.init(boundGoal:formattingManager:minimumValues:lastWorkoutValue:)(v38, v39, v28, v29, a6, v27);
  v30 = type metadata accessor for DistancePicker();
  _s9WorkoutUI23DistancePickerViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type DistancePickerViewModel and conformance DistancePickerViewModel, type metadata accessor for DistancePickerViewModel);
  Bindable<A>.init(wrappedValue:)();

  v32 = a9 + *(v30 + 28);
  *v32 = a10;
  *(v32 + 8) = a11;
  *(v32 + 16) = a12;
  return result;
}

uint64_t DistancePicker.init(activityType:formattingManager:boundGoal:minimumValues:lastWorkoutValue:editMode:context:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, char *a12)
{
  v19 = *a12;
  v20 = *(a12 + 3);
  v21 = a12[32];
  *a9 = a1;
  *(a9 + 8) = v19;
  *(a9 + 16) = *(a12 + 8);
  *(a9 + 32) = v20;
  *(a9 + 40) = v21;
  type metadata accessor for MainActor();

  v22 = a5;
  v36 = a1;
  v23 = static MainActor.shared.getter();
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  v24[2] = v23;
  v24[3] = v25;
  v24[4] = a3;
  v24[5] = a4;
  v24[6] = v22;

  v35 = v22;
  v26 = static MainActor.shared.getter();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = v25;
  v27[4] = a3;
  v27[5] = a4;
  v27[6] = v35;
  _sSo21NLSessionActivityGoalCMaTm_3(0, &lazy cache variable for type metadata for NLSessionActivityGoal);
  Binding.init(get:set:)();
  type metadata accessor for DistancePickerViewModel();
  swift_allocObject();
  v28 = a7;
  v34 = a7;

  v29 = v41;
  v30 = a2;
  DistancePickerViewModel.init(boundGoal:formattingManager:minimumValues:lastWorkoutValue:)(v39, v40, v29, v30, a6, v28);
  v31 = type metadata accessor for DistancePicker();
  _s9WorkoutUI23DistancePickerViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type DistancePickerViewModel and conformance DistancePickerViewModel, type metadata accessor for DistancePickerViewModel);
  Bindable<A>.init(wrappedValue:)();

  v33 = a9 + *(v31 + 28);
  *v33 = a8;
  *(v33 + 8) = a10;
  *(v33 + 16) = a11;
  return result;
}

void closure #1 in DistancePicker.init(activityType:formattingManager:boundGoal:minimumValues:lastWorkoutValue:editMode:context:)(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo21NLSessionActivityGoalCGMd);
  MEMORY[0x20F30B100](&v14);
  v9 = v14;
  v10 = [v14 goalTypeIdentifier];

  v15 = a1;
  v16 = a2;
  v17 = a3;
  if (v10 == 1)
  {
    MEMORY[0x20F30B100](v8);
  }

  else
  {
    MEMORY[0x20F30B100](&v14, v8);
    v11 = v14;
    v12 = [v14 requiredDistance];

    v13 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v12];
    *a4 = v13;
  }
}

void closure #2 in DistancePicker.init(activityType:formattingManager:boundGoal:minimumValues:lastWorkoutValue:editMode:context:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo21NLSessionActivityGoalCGMd);
  MEMORY[0x20F30B100](&v16);
  v11 = v16;
  v12 = [v16 goalTypeIdentifier];

  v17 = a4;
  v18 = a5;
  v19 = a6;
  if (v12 == 1)
  {
    v16 = v9;
    v13 = v9;
    Binding.wrappedValue.setter();
  }

  else
  {
    MEMORY[0x20F30B100](&v16, v10);
    v14 = v16;
    v15 = [v9 value];
    [v14 setRequiredDistance_];
  }
}

uint64_t type metadata accessor for DistancePicker()
{
  result = type metadata singleton initialization cache for DistancePicker;
  if (!type metadata singleton initialization cache for DistancePicker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t objectdestroyTm_69()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void DistancePicker.body.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v62 = a1;
  v3 = type metadata accessor for DistancePickerWatch();
  MEMORY[0x28223BE20](v3);
  v5 = &v49[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB019DistancePickerPhoneVAF0gH5WatchV_GMd);
  MEMORY[0x28223BE20](v6);
  v8 = &v49[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMd);
  v61 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v49[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v49[-v13];
  v63 = type metadata accessor for DistancePickerPhone();
  MEMORY[0x28223BE20](v63);
  v16 = &v49[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v19 = &v49[-v18];
  if (static Platform.current.getter())
  {
    v20 = *v2;
    type metadata accessor for DistancePicker();
    v21 = v20;
    Bindable.wrappedValue.getter();
    *v5 = v21;
    type metadata accessor for DistancePickerViewModel();
    _s9WorkoutUI23DistancePickerViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type DistancePickerViewModel and conformance DistancePickerViewModel, type metadata accessor for DistancePickerViewModel);
    Bindable<A>.init(wrappedValue:)();
    v22 = v5 + *(v3 + 24);
    LOBYTE(v64) = 0;
    State.init(wrappedValue:)();
    v23 = v68;
    *v22 = v67;
    *(v22 + 1) = v23;
    v24 = type metadata accessor for DistancePickerWatch;
    outlined init with copy of DistancePickerWatch(v5, v8, type metadata accessor for DistancePickerWatch);
    swift_storeEnumTagMultiPayload();
    _s9WorkoutUI23DistancePickerViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type DistancePickerPhone and conformance DistancePickerPhone, type metadata accessor for DistancePickerPhone);
    _s9WorkoutUI23DistancePickerViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type DistancePickerWatch and conformance DistancePickerWatch, type metadata accessor for DistancePickerWatch);
    _ConditionalContent<>.init(storage:)();
    v25 = v5;
LABEL_8:
    outlined destroy of DistancePickerWatch(v25, v24);
    return;
  }

  v56 = v19;
  v57 = v6;
  v55 = v8;
  v58 = v3;
  v26 = type metadata accessor for DistancePicker();
  Bindable.projectedValue.getter();
  v27 = (v2 + *(v26 + 28));
  v28 = *v27;
  v29 = v27[1];
  LOBYTE(v27) = *(v27 + 16);
  v67 = v28;
  v68 = v29;
  v69 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  Binding.projectedValue.getter();
  v51 = v64;
  v54 = v65;
  v30 = *(v2 + 8);
  v32 = *(v2 + 16);
  v31 = *(v2 + 24);
  v33 = *(v2 + 32);
  v52 = *(v2 + 40);
  v53 = v66;
  *(v16 + 6) = 1;
  v34 = v63;
  v35 = &v16[*(v63 + 36)];
  LOBYTE(v64) = 0;
  v59 = v33;
  v60 = v31;

  State.init(wrappedValue:)();
  v36 = v68;
  *v35 = v67;
  *(v35 + 1) = v36;
  v37 = &v16[*(v34 + 40)];
  LOBYTE(v64) = 0;
  State.init(wrappedValue:)();
  v38 = v68;
  *v37 = v67;
  *(v37 + 1) = v38;
  v39 = v61;
  (*(v61 + 16))(v11, v14, v9);
  type metadata accessor for DistancePickerViewModel();
  _s9WorkoutUI23DistancePickerViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type DistancePickerViewModel and conformance DistancePickerViewModel, type metadata accessor for DistancePickerViewModel);
  v40 = v60;
  Bindable<A>.init(projectedValue:)();
  v41 = v32;
  if (v32)
  {
LABEL_7:
    v45 = *(v39 + 8);

    v45(v14, v9);
    *v16 = v41;
    v16[8] = v30;
    *(v16 + 2) = v32;
    *(v16 + 3) = v40;
    *(v16 + 4) = v59;
    v16[40] = v52;
    v46 = &v16[*(v63 + 32)];
    v47 = v54;
    *v46 = v51;
    *(v46 + 1) = v47;
    v46[16] = v53;
    v48 = v56;
    outlined init with take of DistancePickerPhone(v16, v56);
    v24 = type metadata accessor for DistancePickerPhone;
    outlined init with copy of DistancePickerWatch(v48, v55, type metadata accessor for DistancePickerPhone);
    swift_storeEnumTagMultiPayload();
    _s9WorkoutUI23DistancePickerViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type DistancePickerPhone and conformance DistancePickerPhone, type metadata accessor for DistancePickerPhone);
    _s9WorkoutUI23DistancePickerViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type DistancePickerWatch and conformance DistancePickerWatch, type metadata accessor for DistancePickerWatch);
    _ConditionalContent<>.init(storage:)();
    v25 = v48;
    goto LABEL_8;
  }

  v50 = v30;
  v42 = [objc_opt_self() distanceColors];
  if (v42)
  {
    v43 = v42;
    v44 = [v42 nonGradientTextColor];

    if (v44)
    {
      v41 = Color.init(uiColor:)();
      LOBYTE(v30) = v50;
      v40 = v60;
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t _s9WorkoutUI23DistancePickerViewModelCAC11Observation10ObservableAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of DistancePickerWatch(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of DistancePickerWatch(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata completion function for DistancePicker()
{
  _sSo21NLSessionActivityGoalCMaTm_3(319, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Bindable<DistancePickerViewModel>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Binding<Bool>();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t _sSo21NLSessionActivityGoalCMaTm_3(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<DistancePickerPhone, DistancePickerWatch> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<DistancePickerPhone, DistancePickerWatch> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<DistancePickerPhone, DistancePickerWatch> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB019DistancePickerPhoneVAD0fG5WatchVGMd);
    _s9WorkoutUI23DistancePickerViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type DistancePickerPhone and conformance DistancePickerPhone, type metadata accessor for DistancePickerPhone);
    _s9WorkoutUI23DistancePickerViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type DistancePickerWatch and conformance DistancePickerWatch, type metadata accessor for DistancePickerWatch);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<DistancePickerPhone, DistancePickerWatch> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t type metadata accessor for WorkoutBuddyStatusView()
{
  result = type metadata singleton initialization cache for WorkoutBuddyStatusView;
  if (!type metadata singleton initialization cache for WorkoutBuddyStatusView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WorkoutBuddyStatusView()
{
  type metadata accessor for Environment<Bool>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WorkoutBuddyStatePublisher.State();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Environment<Bool>()
{
  if (!lazy cache variable for type metadata for Environment<Bool>)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<Bool>);
    }
  }
}

uint64_t WorkoutBuddyStatusView.isLuminanceReduced.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t WorkoutBuddyStatusView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v77 = a1;
  v78 = type metadata accessor for SymbolEffectOptions.RepeatBehavior();
  v73 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v72 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for SymbolEffectOptions();
  v82 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v71 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v84 = &v62 - v6;
  v83 = type metadata accessor for VariableColorSymbolEffect();
  v87 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v69 = &v62 - v9;
  MEMORY[0x28223BE20](v10);
  v68 = &v62 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v62 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19SymbolRenderingModeVSgMd);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v62 - v16;
  v18 = type metadata accessor for WorkoutBuddyStatePublisher.State();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v79 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v62 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGGAA023_IndefiniteSymbolEffectH0VGMd);
  MEMORY[0x28223BE20](v24);
  v26 = &v62 - v25;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGGAA023_IndefiniteSymbolEffectH0VGAA023AccessibilityAttachmentH0VGMd);
  MEMORY[0x28223BE20](v75);
  v76 = &v62 - v27;
  v28 = type metadata accessor for WorkoutBuddyStatusView();
  v29 = *(v19 + 16);
  v86 = *(v28 + 20);
  v29(v23, v1 + v86, v18);
  v30 = (*(v19 + 88))(v23, v18);
  v31 = *MEMORY[0x277D7DB80];
  v80 = v24;
  if (v30 != v31 && v30 != *MEMORY[0x277D7DB90])
  {
    (*(v19 + 8))(v23, v18);
  }

  Image.init(systemName:)();
  v32 = *(v19 + 104);
  v33 = v79;
  v66 = *MEMORY[0x277D7DB98];
  v65 = v19 + 104;
  v64 = v32;
  v32(v79);
  lazy protocol witness table accessor for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State(&lazy protocol witness table cache variable for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State, MEMORY[0x277D7DBB0]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v34 = *(v19 + 8);
  v70 = v19 + 8;
  v62 = v34;
  v34(v33, v18);
  v74 = v26;
  if (v89 == v88._countAndFlagsBits)
  {
    static SymbolRenderingMode.hierarchical.getter();
  }

  else
  {
    static SymbolRenderingMode.monochrome.getter();
  }

  v35 = type metadata accessor for SymbolRenderingMode();
  (*(*(v35 - 8) + 56))(v17, 0, 1, v35);
  v67 = Image.symbolRenderingMode(_:)();

  outlined destroy of SymbolRenderingMode?(v17, &_s7SwiftUI19SymbolRenderingModeVSgMd);
  WorkoutBuddyStatePublisher.State.foregroundColor.getter();
  v63 = v36;
  VariableColorSymbolEffect.init()();
  v37 = v68;
  VariableColorSymbolEffect.iterative.getter();
  v38 = v87 + 8;
  v39 = *(v87 + 8);
  v40 = v83;
  v39(v14, v83);
  v41 = v69;
  VariableColorSymbolEffect.cumulative.getter();
  v39(v37, v40);
  VariableColorSymbolEffect.hideInactiveLayers.getter();
  v87 = v38;
  v39(v41, v40);
  v42 = v72;
  static SymbolEffectOptions.RepeatBehavior.periodic(_:delay:)();
  v43 = v71;
  MEMORY[0x20F30B630](v42);
  (*(v73 + 8))(v42, v78);
  SymbolEffectOptions.speed(_:)();
  v73 = *(v82 + 8);
  (v73)(v43, v85);
  v44 = v79;
  v64(v79, v66, v18);
  v78 = v2;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v62(v44, v18);
  v45 = 0;
  if (v89 == v88._countAndFlagsBits)
  {
    v45 = WorkoutBuddyStatusView.isLuminanceReduced.getter() ^ 1;
  }

  v46 = v74;
  v47 = v74 + *(v80 + 36);
  v48 = type metadata accessor for _IndefiniteSymbolEffectModifier();
  v50 = v84;
  v49 = v85;
  (*(v82 + 16))(&v47[*(v48 + 20)], v84, v85);
  lazy protocol witness table accessor for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State(&lazy protocol witness table cache variable for type VariableColorSymbolEffect and conformance VariableColorSymbolEffect, MEMORY[0x277CE15A8]);
  v51 = v81;
  v52 = v83;
  dispatch thunk of SymbolEffect.configuration.getter();
  (v73)(v50, v49);
  v39(v51, v52);
  v47[*(v48 + 24)] = v45 & 1;
  v53 = v63;
  *v46 = v67;
  v46[1] = v53;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v54 = WorkoutUIBundle.super.isa;
  v90._object = 0xE000000000000000;
  v55.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v55.value._object = 0xEB00000000656C62;
  v56._object = 0x800000020CBA0BF0;
  v56._countAndFlagsBits = 0xD000000000000016;
  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  v90._countAndFlagsBits = 0;
  v58 = NSLocalizedString(_:tableName:bundle:value:comment:)(v56, v55, v54, v57, v90);

  v88 = v58;
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, _IndefiniteSymbolEffectModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type String and conformance String();
  v59 = v76;
  View.accessibilityLabel<A>(_:)();

  outlined destroy of SymbolRenderingMode?(v46, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGGAA023_IndefiniteSymbolEffectH0VGMd);
  v88._countAndFlagsBits = WorkoutBuddyStatePublisher.State.accessibilityDescription.getter();
  v88._object = v60;
  ModifiedContent<>.accessibilityValue<A>(_:)();

  return outlined destroy of SymbolRenderingMode?(v59, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGGAA023_IndefiniteSymbolEffectH0VGAA023AccessibilityAttachmentH0VGMd);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, _IndefiniteSymbolEffectModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, _IndefiniteSymbolEffectModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, _IndefiniteSymbolEffectModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGGAA023_IndefiniteSymbolEffectH0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State(&lazy protocol witness table cache variable for type _IndefiniteSymbolEffectModifier and conformance _IndefiniteSymbolEffectModifier, MEMORY[0x277CDE488]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, _IndefiniteSymbolEffectModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of SymbolRenderingMode?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, _IndefiniteSymbolEffectModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, _IndefiniteSymbolEffectModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, _IndefiniteSymbolEffectModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGGAA023_IndefiniteSymbolEffectH0VGAA023AccessibilityAttachmentH0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, _IndefiniteSymbolEffectModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, _IndefiniteSymbolEffectModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State(unint64_t *a1, void (*a2)(uint64_t))
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

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id ReminderHaptic.__allocating_init(timeInterval:systemSoundID:maximumReminders:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, double a5)
{
  v6 = v5;
  v29 = a1;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_allocWithZone(v6);
  *&v15[OBJC_IVAR___WOReminderHaptic_count] = 0;
  *&v15[OBJC_IVAR___WOReminderHaptic_timer] = 0;
  static WOLog.app.getter();

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28 = v6;
    v19 = a3;
    v20 = v18;
    v21 = swift_slowAlloc();
    v27 = a2;
    v22 = v21;
    v30 = v21;
    *v20 = 136446210;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, a4, &v30);
    _os_log_impl(&dword_20C66F000, v16, v17, "Creating reminder haptic for identifier=%{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v23 = v22;
    a2 = v27;
    MEMORY[0x20F30E080](v23, -1, -1);
    v24 = v20;
    a3 = v19;
    v6 = v28;
    MEMORY[0x20F30E080](v24, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  *&v15[OBJC_IVAR___WOReminderHaptic_timeInterval] = a5;
  *&v15[OBJC_IVAR___WOReminderHaptic_systemSoundID] = v29;
  *&v15[OBJC_IVAR___WOReminderHaptic_maximumReminders] = a2;
  v25 = &v15[OBJC_IVAR___WOReminderHaptic_identifier];
  *v25 = a3;
  v25[1] = a4;
  v31.receiver = v15;
  v31.super_class = v6;
  return objc_msgSendSuper2(&v31, sel_init);
}

uint64_t ReminderHaptic.identifier.getter()
{
  v1 = (v0 + OBJC_IVAR___WOReminderHaptic_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t ReminderHaptic.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___WOReminderHaptic_identifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t key path setter for ReminderHaptic.identifier : ReminderHaptic(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___WOReminderHaptic_identifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

id ReminderHaptic.init(timeInterval:systemSoundID:maximumReminders:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, double a5)
{
  v6 = v5;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6[OBJC_IVAR___WOReminderHaptic_count] = 0;
  *&v6[OBJC_IVAR___WOReminderHaptic_timer] = 0;
  static WOLog.app.getter();

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28 = a1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v29 = a2;
    v30 = v20;
    v21 = v20;
    *v19 = 136446210;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v30);
    _os_log_impl(&dword_20C66F000, v16, v17, "Creating reminder haptic for identifier=%{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    v22 = v21;
    a2 = v29;
    MEMORY[0x20F30E080](v22, -1, -1);
    v23 = v19;
    a1 = v28;
    MEMORY[0x20F30E080](v23, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  *&v6[OBJC_IVAR___WOReminderHaptic_timeInterval] = a5;
  *&v6[OBJC_IVAR___WOReminderHaptic_systemSoundID] = a1;
  *&v6[OBJC_IVAR___WOReminderHaptic_maximumReminders] = a2;
  v24 = &v6[OBJC_IVAR___WOReminderHaptic_identifier];
  *v24 = a3;
  v24[1] = a4;
  v25 = type metadata accessor for ReminderHaptic();
  v31.receiver = v6;
  v31.super_class = v25;
  return objc_msgSendSuper2(&v31, sel_init);
}

Swift::Void __swiftcall ReminderHaptic.startTimer()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  ReminderHaptic.stopTimer()();
  static WOLog.app.getter();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136446210;
    v10 = &v5[OBJC_IVAR___WOReminderHaptic_identifier];
    swift_beginAccess();
    v12 = *v10;
    v11 = v10[1];

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, aBlock);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_20C66F000, v6, v7, "Starting reminder haptic timer for identifier=%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F30E080](v9, -1, -1);
    MEMORY[0x20F30E080](v8, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  v14 = objc_opt_self();
  v15 = *&v5[OBJC_IVAR___WOReminderHaptic_timeInterval];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in ReminderHaptic.startTimer();
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
  aBlock[3] = &block_descriptor_31;
  v17 = _Block_copy(aBlock);

  v18 = [v14 scheduledTimerWithTimeInterval:1 repeats:v17 block:v15];
  _Block_release(v17);
  v19 = *&v5[OBJC_IVAR___WOReminderHaptic_timer];
  *&v5[OBJC_IVAR___WOReminderHaptic_timer] = v18;
}

void closure #1 in ReminderHaptic.startTimer()()
{
  v0 = type metadata accessor for Logger();
  v46 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v43 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v43 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v7 = Strong;
  v8 = OBJC_IVAR___WOReminderHaptic_count;
  v9 = *(Strong + OBJC_IVAR___WOReminderHaptic_count);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(Strong + OBJC_IVAR___WOReminderHaptic_count) = v11;
  static WOLog.app.getter();
  v12 = v7;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  p_class_meths = &OBJC_PROTOCOL___NLWorkoutUIDelegate.class_meths;
  if (os_log_type_enabled(v13, v14))
  {
    v16 = swift_slowAlloc();
    v45 = v2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v47[0] = v18;
    *v17 = 134349570;
    *(v17 + 4) = *&v7[v8];
    *(v17 + 12) = 2050;
    *(v17 + 14) = *&v12[OBJC_IVAR___WOReminderHaptic_maximumReminders];

    *(v17 + 22) = 2082;
    v44 = v0;
    v19 = &v12[OBJC_IVAR___WOReminderHaptic_identifier];
    swift_beginAccess();
    v20 = v8;
    v21 = *v19;
    v22 = v19[1];

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v47);
    v0 = v44;

    *(v17 + 24) = v23;
    v8 = v20;
    p_class_meths = (&OBJC_PROTOCOL___NLWorkoutUIDelegate + 32);
    _os_log_impl(&dword_20C66F000, v13, v14, "Playing reminder haptic count=%{public}ld max_count=%{public}ld identifier=%{public}s", v17, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x20F30E080](v18, -1, -1);
    v24 = v17;
    v2 = v45;
    MEMORY[0x20F30E080](v24, -1, -1);
  }

  else
  {
  }

  v25 = *(v46 + 8);
  v25(v5, v0);
  v26 = *&v12[OBJC_IVAR___WOReminderHaptic_systemSoundID];
  if ((v26 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

  if (HIDWORD(v26))
  {
LABEL_17:
    __break(1u);
    return;
  }

  AudioServicesPlaySystemSoundWithCompletion(v26, 0);
  v27 = v8;
  v28 = *&v7[v8];
  v29 = p_class_meths[85];
  if (v28 >= *(v29 + v12))
  {
    static WOLog.app.getter();
    v30 = v12;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v45 = v2;
      v34 = v33;
      v44 = swift_slowAlloc();
      v48 = v44;
      *v34 = 134349570;
      *(v34 + 4) = *&v7[v27];
      *(v34 + 12) = 2050;
      *(v34 + 14) = *(v29 + v12);

      *(v34 + 22) = 2082;
      v35 = &v30[OBJC_IVAR___WOReminderHaptic_identifier];
      swift_beginAccess();
      v36 = v0;
      v38 = *v35;
      v37 = v35[1];

      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v37, &v48);

      *(v34 + 24) = v39;
      _os_log_impl(&dword_20C66F000, v31, v32, "Max reminder haptics fired.  Stopping reminder haptic. count=%{public}ld max_count=%{public}ld identifier=%{public}s", v34, 0x20u);
      v40 = v44;
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x20F30E080](v40, -1, -1);
      MEMORY[0x20F30E080](v34, -1, -1);

      v41 = v45;
      v42 = v36;
    }

    else
    {

      v41 = v2;
      v42 = v0;
    }

    v25(v41, v42);
    ReminderHaptic.stopTimer()();
  }
}

Swift::Void __swiftcall ReminderHaptic.stopTimer()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___WOReminderHaptic_timer;
  if (*&v1[OBJC_IVAR___WOReminderHaptic_timer])
  {
    static WOLog.app.getter();
    v8 = v1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v20 = v2;
      v12 = v11;
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136446210;
      v14 = &v8[OBJC_IVAR___WOReminderHaptic_identifier];
      swift_beginAccess();
      v16 = *v14;
      v15 = v14[1];

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, &v21);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_20C66F000, v9, v10, "Stopping reminder haptic timer for identifier=%{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x20F30E080](v13, -1, -1);
      MEMORY[0x20F30E080](v12, -1, -1);

      (*(v3 + 8))(v6, v20);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }
  }

  [*&v1[v7] invalidate];
  v18 = *&v1[v7];
  *&v1[v7] = 0;

  *&v1[OBJC_IVAR___WOReminderHaptic_count] = 0;
}

id ReminderHaptic.__deallocating_deinit()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v1[OBJC_IVAR___WOReminderHaptic_identifier];
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];

  static WOLog.app.getter();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136446210;
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v16);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_20C66F000, v9, v10, "Deallocating reminder haptic for identifier=%{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x20F30E080](v12, -1, -1);
    MEMORY[0x20F30E080](v11, -1, -1);
  }

  else
  {
  }

  (*(v3 + 8))(v5, v2);
  ReminderHaptic.stopTimer()();
  v14 = type metadata accessor for ReminderHaptic();
  v17.receiver = v1;
  v17.super_class = v14;
  return objc_msgSendSuper2(&v17, sel_dealloc);
}