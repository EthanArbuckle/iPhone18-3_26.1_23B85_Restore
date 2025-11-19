void type metadata accessor for Published<RunningTrackInfo?>()
{
  if (!lazy cache variable for type metadata for Published<RunningTrackInfo?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11WorkoutCore16RunningTrackInfoCSgMd, &_s11WorkoutCore16RunningTrackInfoCSgMR);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<RunningTrackInfo?>);
    }
  }
}

void type metadata accessor for Published<TrackRunningCoordinator>()
{
  if (!lazy cache variable for type metadata for Published<TrackRunningCoordinator>)
  {
    type metadata accessor for TrackRunningCoordinator();
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<TrackRunningCoordinator>);
    }
  }
}

uint64_t _s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of Apple_Workout_Core_TrackRunningMetricsPublisher(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_Core_TrackRunningCoordinator(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t closure #1 in TrackRunningMetricsPublisher.protobuf.getterpartial apply(uint64_t a1)
{
  return partial apply for closure #1 in TrackRunningMetricsPublisher.protobuf.getter(a1);
}

{
  return partial apply for closure #1 in TrackRunningMetricsPublisher.protobuf.getter(a1);
}

{
  return partial apply for closure #1 in TrackRunningMetricsPublisher.protobuf.getter(a1);
}

void *specialized Dictionary.subscript.getter(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaDictionary.lookup(_:)();

    if (v4)
    {
      type metadata accessor for WorkoutAlertZone();
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    outlined init with take of Any(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = outlined init with take of Any(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
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
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 8 * v15);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSs11AnyHashableVGMd, &_sSDySSs11AnyHashableVGMR);
        swift_dynamicCast();
        outlined init with take of Any(&v25, v27);
        outlined init with take of Any(v27, v28);
        outlined init with take of Any(v28, &v26);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = outlined init with take of Any(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = outlined init with take of Any(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
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
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + v15);

        swift_dynamicCast();
        outlined init with take of Any(&v25, v27);
        outlined init with take of Any(v27, v28);
        outlined init with take of Any(v28, &v26);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = outlined init with take of Any(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = outlined init with take of Any(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo12HKSampleTypeCSaySo0C0CGGMd, &_ss18_DictionaryStorageCySo12HKSampleTypeCSaySo0C0CGGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = _sSo12HKSampleTypeCMaTm_0(0, &lazy cache variable for type metadata for HKSampleType, 0x277CCD8D8);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = v5 + 63;
  if (v3 == MEMORY[0x277D837D0])
  {
    v24 = v8 >> 6;

    v25 = 0;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_29:
    while (1)
    {
      v31 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v31 >= v24)
      {
LABEL_36:

        return v2;
      }

      v7 = *(v4 + 8 * v31);
      ++v25;
      if (v7)
      {
        while (1)
        {
          v32 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v33 = (v31 << 9) | (8 * v32);
          v38 = *(*(a1 + 56) + v33);
          v34 = *(*(a1 + 48) + v33);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16HKQuantitySampleCGMd, &_sSaySo16HKQuantitySampleCGMR);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8HKSampleCGMd, &_sSaySo8HKSampleCGMR);
          swift_dynamicCast();
          result = specialized __RawDictionaryStorage.find<A>(_:)(v34);
          if (v35)
          {
            v26 = *(v2 + 48);
            v27 = *(v26 + 8 * result);
            *(v26 + 8 * result) = v34;
            v28 = result;

            v29 = *(v2 + 56);
            v30 = *(v29 + 8 * v28);
            *(v29 + 8 * v28) = v39;

            v25 = v31;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v36 = *(v2 + 16);
            if (v36 >= *(v2 + 24))
            {
              goto LABEL_40;
            }

            *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
            *(*(v2 + 48) + 8 * result) = v34;
            *(*(v2 + 56) + 8 * result) = v39;
            *(v2 + 16) = v36 + 1;
            v25 = v31;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          v31 = v25;
        }
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 64;

    v12 = 0;
    while (v7)
    {
LABEL_16:
      v15 = (v12 << 9) | (8 * __clz(__rbit64(v7)));
      v37 = *(*(a1 + 56) + v15);
      v16 = *(*(a1 + 48) + v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16HKQuantitySampleCGMd, &_sSaySo16HKQuantitySampleCGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8HKSampleCGMd, &_sSaySo8HKSampleCGMR);
      swift_dynamicCast();
      result = NSObject._rawHashValue(seed:)(*(v2 + 40));
      v17 = -1 << *(v2 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v10 + 8 * v19);
          if (v23 != -1)
          {
            v13 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v13 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v10 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v2 + 48) + 8 * v13) = v16;
      *(*(v2 + 56) + 8 * v13) = v39;
      ++*(v2 + 16);
    }

    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v9)
      {
        goto LABEL_36;
      }

      v7 = *(v4 + 8 * v14);
      ++v12;
      if (v7)
      {
        v12 = v14;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t key path setter for ZoneTracker.targetZoneTemplates : ZoneTracker(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLWorkoutZoneTracker_targetZoneTemplates;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t ZoneTracker.targetZoneTemplates.getter()
{
  v1 = OBJC_IVAR___NLWorkoutZoneTracker_targetZoneTemplates;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

id ZoneTracker.activityType.getter()
{
  v1 = OBJC_IVAR___NLWorkoutZoneTracker_activityType;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void key path setter for ZoneTracker.activityType : ZoneTracker(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLWorkoutZoneTracker_activityType;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t ZoneTracker.alertDelegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ZoneTracker.alertDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___NLWorkoutZoneTracker_alertDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return ZoneTracker.alertDelegate.modify;
}

void ZoneTracker.alertDelegate.modify(uint64_t a1, char a2)
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

uint64_t ZoneTracker.zoneTrackerDelegate.getter()
{
  v1 = v0 + OBJC_IVAR___NLWorkoutZoneTracker_zoneTrackerDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t ZoneTracker.zoneTrackerDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR___NLWorkoutZoneTracker_zoneTrackerDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ZoneTracker.zoneTrackerDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___NLWorkoutZoneTracker_zoneTrackerDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return ZoneTracker.zoneTrackerDelegate.modify;
}

void ZoneTracker.zoneTrackerDelegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
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

uint64_t ZoneTracker.enforceDelayBetweenAlerts.getter()
{
  v1 = OBJC_IVAR___NLWorkoutZoneTracker_enforceDelayBetweenAlerts;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ZoneTracker.enforceDelayBetweenAlerts.setter(char a1)
{
  v3 = OBJC_IVAR___NLWorkoutZoneTracker_enforceDelayBetweenAlerts;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double ZoneTracker.minTimeBetweenAlerts.getter()
{
  v1 = OBJC_IVAR___NLWorkoutZoneTracker_minTimeBetweenAlerts;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ZoneTracker.minTimeBetweenAlerts.setter(double a1)
{
  v3 = OBJC_IVAR___NLWorkoutZoneTracker_minTimeBetweenAlerts;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *ZoneTracker.currentDistance.getter()
{
  v1 = OBJC_IVAR___NLWorkoutZoneTracker_currentDistance;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ZoneTracker.currentDistance.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___NLWorkoutZoneTracker_currentDistance;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void key path setter for ZoneTracker.currentDistance : ZoneTracker(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLWorkoutZoneTracker_currentDistance;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

double ZoneTracker.currentDuration.getter()
{
  v1 = OBJC_IVAR___NLWorkoutZoneTracker_currentDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ZoneTracker.currentDuration.setter(double a1)
{
  v3 = OBJC_IVAR___NLWorkoutZoneTracker_currentDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

_BYTE *ZoneTracker.__allocating_init(activityType:targetZones:distanceUnit:metadataSavingDelegate:)(void *a1, unint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v19 = OBJC_IVAR___NLWorkoutZoneTracker_alertDelegate;
  swift_unknownObjectWeakInit();
  v8 = &v7[OBJC_IVAR___NLWorkoutZoneTracker_zoneTrackerDelegate];
  *&v7[OBJC_IVAR___NLWorkoutZoneTracker_zoneTrackerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR___NLWorkoutZoneTracker_currentDistance;
  *&v7[OBJC_IVAR___NLWorkoutZoneTracker_currentDistance] = 0;
  *&v7[OBJC_IVAR___NLWorkoutZoneTracker_currentDuration] = 0;
  v10 = OBJC_IVAR___NLWorkoutZoneTracker_lastPresentedAlertsByType;
  *&v7[v10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8NSNumberC_11WorkoutCore0D9AlertZoneCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v11 = OBJC_IVAR___NLWorkoutZoneTracker_metadataSavingDelegate;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR___NLWorkoutZoneTracker_activityType;
  *&v7[OBJC_IVAR___NLWorkoutZoneTracker_activityType] = a1;
  v13 = a1;
  v14 = specialized static ZoneTracker.targetZoneDictionary(from:)(a2);
  if (v4)
  {

    swift_unknownObjectRelease();

    sub_20AED5124(&v7[v19]);
    sub_20AED5124(v8);

    v15 = *&v7[v10];

    sub_20AED5124(&v7[v11]);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = v14;

    *&v7[OBJC_IVAR___NLWorkoutZoneTracker_targetZoneTemplates] = v16;
    *&v7[OBJC_IVAR___NLWorkoutZoneTracker_distanceUnit] = a3;
    v7[OBJC_IVAR___NLWorkoutZoneTracker_enforceDelayBetweenAlerts] = 1;
    *&v7[OBJC_IVAR___NLWorkoutZoneTracker_minTimeBetweenAlerts] = 0x402E000000000000;
    *&v7[OBJC_IVAR___NLWorkoutZoneTracker_alertsHoldoffTime] = 0x404E000000000000;
    swift_unknownObjectWeakAssign();
    v21.receiver = v7;
    v21.super_class = v22;
    v17 = a3;
    v7 = objc_msgSendSuper2(&v21, sel_init);

    swift_unknownObjectRelease();
  }

  return v7;
}

_BYTE *ZoneTracker.init(activityType:targetZones:distanceUnit:metadataSavingDelegate:)(void *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v22 = a4;
  v18 = OBJC_IVAR___NLWorkoutZoneTracker_alertDelegate;
  swift_unknownObjectWeakInit();
  v8 = &v4[OBJC_IVAR___NLWorkoutZoneTracker_zoneTrackerDelegate];
  *&v4[OBJC_IVAR___NLWorkoutZoneTracker_zoneTrackerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR___NLWorkoutZoneTracker_currentDistance;
  *&v4[OBJC_IVAR___NLWorkoutZoneTracker_currentDistance] = 0;
  *&v4[OBJC_IVAR___NLWorkoutZoneTracker_currentDuration] = 0;
  v10 = OBJC_IVAR___NLWorkoutZoneTracker_lastPresentedAlertsByType;
  *&v4[v10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8NSNumberC_11WorkoutCore0D9AlertZoneCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v19 = OBJC_IVAR___NLWorkoutZoneTracker_metadataSavingDelegate;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR___NLWorkoutZoneTracker_activityType;
  *&v4[OBJC_IVAR___NLWorkoutZoneTracker_activityType] = a1;
  v12 = a1;
  v13 = specialized static ZoneTracker.targetZoneDictionary(from:)(a2);
  if (v5)
  {

    swift_unknownObjectRelease();

    sub_20AED5124(&v4[v18]);
    sub_20AED5124(v8);

    v14 = *&v4[v10];

    sub_20AED5124(&v4[v19]);
    type metadata accessor for ZoneTracker();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = v13;

    *&v4[OBJC_IVAR___NLWorkoutZoneTracker_targetZoneTemplates] = v15;
    *&v4[OBJC_IVAR___NLWorkoutZoneTracker_distanceUnit] = a3;
    v4[OBJC_IVAR___NLWorkoutZoneTracker_enforceDelayBetweenAlerts] = 1;
    *&v4[OBJC_IVAR___NLWorkoutZoneTracker_minTimeBetweenAlerts] = 0x402E000000000000;
    *&v4[OBJC_IVAR___NLWorkoutZoneTracker_alertsHoldoffTime] = 0x404E000000000000;
    swift_unknownObjectWeakAssign();
    v21.receiver = v4;
    v21.super_class = type metadata accessor for ZoneTracker();
    v16 = a3;
    v4 = objc_msgSendSuper2(&v21, sel_init);

    swift_unknownObjectRelease();
  }

  return v4;
}

Swift::Void __swiftcall ZoneTracker.updateTargetZones(_:)(Swift::OpaquePointer a1)
{
  v2 = specialized static ZoneTracker.targetZoneDictionary(from:)(a1._rawValue);
  v3 = OBJC_IVAR___NLWorkoutZoneTracker_targetZoneTemplates;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
}

uint64_t ZoneTracker.updateTargetZones(from:)()
{
  v0 = LiveWorkoutConfiguration.currentTargetZones.getter();
  ZoneTracker.updateTargetZones(_:)(v0);
}

void *ZoneTracker.lastAlert(for:)(char *a1)
{
  v2 = qword_20B43D6E0[*a1];
  v3 = ZoneTracker.targetZoneTemplate(for:)(v2);
  if (v3)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    v5 = OBJC_IVAR___NLWorkoutZoneTracker_lastPresentedAlertsByType;
    swift_beginAccess();
    v6 = *(v1 + v5);

    v7 = specialized Dictionary.subscript.getter(v4, v6);
  }

  else
  {
    if (one-time initialization token for zones != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static WOLog.zones);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315138;
      v13 = WOTargetZoneTypeString(v2);
      if (v13)
      {
        v14 = v13;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v15 = Optional.description.getter();
      v17 = v16;

      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v20);

      *(v11 + 4) = v18;
      _os_log_impl(&dword_20AEA4000, v9, v10, "Nil targetZoneTemplate for type: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x20F2E9420](v12, -1, -1);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    return 0;
  }

  return v7;
}

BOOL ZoneTracker.passedMinimumDistance(for:)(_BYTE *a1)
{
  if (*a1 - 1 >= 6)
  {
    if (*a1)
    {
LABEL_11:
      if (one-time initialization token for zones != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static WOLog.zones);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_20AEA4000, v19, v20, "minimumDistanceBeforeAlerting unexpectedly has no value, passedMinimumDistance returning true", v21, 2u);
        MEMORY[0x20F2E9420](v21, -1, -1);
      }

      return 1;
    }

    v6 = ZoneTracker.readMinimumDistanceBeforeAlerting()();
  }

  else
  {
    v2 = [*(v1 + OBJC_IVAR___NLWorkoutZoneTracker_distanceUnit) _isMetricDistance];
    v3 = objc_opt_self();
    if (v2)
    {
      v4 = [v3 meterUnitWithMetricPrefix_];
    }

    else
    {
      v4 = [v3 mileUnit];
    }

    v5 = v4;
    v6 = [objc_opt_self() quantityWithUnit:v5 doubleValue:0.0];

    if (!v6)
    {
      goto LABEL_11;
    }
  }

  v7 = OBJC_IVAR___NLWorkoutZoneTracker_currentDistance;
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (v8)
  {
    v9 = objc_opt_self();
    v10 = v8;
    v11 = [v9 meterUnit];
    [v10 doubleValueForUnit_];
    v13 = v12;

    v14 = [v9 meterUnit];
    [v6 doubleValueForUnit_];
    v16 = v15;

    return v16 <= v13;
  }

  else
  {
    if (one-time initialization token for zones != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static WOLog.zones);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_20AEA4000, v23, v24, "currentDistance unexpectedly has no value, passedMinimumDistance returning false", v25, 2u);
      MEMORY[0x20F2E9420](v25, -1, -1);
    }

    return 0;
  }
}

id ZoneTracker.readMinimumDistanceBeforeAlerting()()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = MEMORY[0x20F2E6C00](0xD000000000000021, 0x800000020B4618B0);
  v3 = [v1 objectForKey_];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    if (swift_dynamicCast())
    {
      v4 = [objc_opt_self() meterUnit];
      v5 = [objc_opt_self() quantityWithUnit:v4 doubleValue:v8];

      return v5;
    }
  }

  else
  {
    _sSo8NSObjectCSgWOhTm_8(v11, &_sypSgMd, &_sypSgMR);
  }

  v7 = *(v0 + OBJC_IVAR___NLWorkoutZoneTracker_distanceUnit);
  result = FIStandardDistanceQuantity();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t ZoneTracker.trackTargetZone(for:value:)(_BYTE *a1, Swift::Double a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v91 - v10;
  MEMORY[0x28223BE20](v9);
  v15 = v91 - v14;
  v16 = 0;
  if (a2 <= 0.0)
  {
    return v16;
  }

  v92 = v13;
  v94 = v12;
  LODWORD(v17) = *a1;
  LOBYTE(v102[0]) = *a1;
  v18 = ZoneTracker.targetZoneTemplate(for:)(v102);
  if (!v18)
  {
    goto LABEL_65;
  }

  v19 = v18;
  LOBYTE(v102[0]) = *(v18 + 16);

  v20 = ZoneTracker.lastAlert(for:)(v102);
  v95 = v6;
  if (v20 && (v21 = OBJC_IVAR___NLWorkoutZoneTracker_enforceDelayBetweenAlerts, swift_beginAccess(), *(v3 + v21) == 1))
  {
    v22 = v20;
    Date.init()();
    v23 = [v22 eventDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSince(_:)();
    v25 = v24;

    v26 = *(v94 + 8);
    v27 = v95;
    v26(v11, v95);
    v26(v15, v27);
    v28 = OBJC_IVAR___NLWorkoutZoneTracker_minTimeBetweenAlerts;
    swift_beginAccess();
    v29 = *(v3 + v28) < v25;
  }

  else
  {
    v29 = 1;
  }

  v97 = v29;
  LOBYTE(v102[0]) = v17;
  v96 = ZoneTracker.passedMinimumDistance(for:)(v102);
  v30 = OBJC_IVAR___NLWorkoutZoneTracker_currentDuration;
  swift_beginAccess();
  v31 = *(v3 + v30);
  v101 = v17;
  v32 = ZoneTracker.minimumHoldoffTime(for:)(&v101);
  if (v20)
  {
    v33 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone;
    swift_beginAccess();
    v34 = *&v20[v33];
    v35 = *(v3 + OBJC_IVAR___NLWorkoutZoneTracker_distanceUnit);
    v36 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_alertValue;
    swift_beginAccess();
    v37 = *&v20[v36];

    v38 = v35;
    TargetZone.state(forDistanceUnit:currentValue:)(v38, v37);

    v39 = v101;
  }

  else
  {
    v39 = 0;
  }

  v40 = OBJC_IVAR___NLWorkoutZoneTracker_distanceUnit;
  v41 = *(v3 + OBJC_IVAR___NLWorkoutZoneTracker_distanceUnit);
  TargetZone.state(forDistanceUnit:currentValue:)(v41, a2);

  v42 = v101;
  swift_beginAccess();
  v43 = *(v19 + 24);
  swift_beginAccess();
  v45 = (v43 != *(v19 + 32) || v42 != 2) && v42 != 0;
  v46 = v39 != v42 && v45;
  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  v91[1] = __swift_project_value_buffer(v47, static WOLog.zones);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v91[0] = v40;
    v93 = v20;
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v100 = v51;
    v52 = 0x5F676E696C6C6F72;
    v53 = 0xED00007265776F70;
    *v50 = 134219266;
    *(v50 + 4) = a2;
    *(v50 + 12) = 2080;
    v54 = 1701736302;
    if (v17 == 6)
    {
      v54 = 0x5F65676172657661;
    }

    else
    {
      v53 = 0xE400000000000000;
    }

    v55 = 0xEF65636E65646163;
    v56 = 0x5F65676172657661;
    if (v17 != 4)
    {
      v56 = 0xD000000000000013;
      v55 = 0x800000020B4544E0;
    }

    if (v17 <= 5)
    {
      v54 = v56;
      v53 = v55;
    }

    v57 = 0xD000000000000012;
    v58 = 0x800000020B454490;
    if (v17 != 2)
    {
      v57 = 0xD000000000000015;
      v58 = 0x800000020B4544B0;
    }

    if (v17)
    {
      v52 = 0x5F65676172657661;
    }

    if (v17 <= 1)
    {
      v59 = 0xEC00000065636170;
    }

    else
    {
      v52 = v57;
      v59 = v58;
    }

    if (v17 <= 3)
    {
      v60 = v52;
    }

    else
    {
      v60 = v54;
    }

    if (v17 <= 3)
    {
      v61 = v59;
    }

    else
    {
      v61 = v53;
    }

    v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, &v100);

    *(v50 + 14) = v62;
    *(v50 + 22) = 1024;
    *(v50 + 24) = v46;
    *(v50 + 28) = 1024;
    LODWORD(v62) = v97;
    *(v50 + 30) = v97;
    *(v50 + 34) = 1024;
    *(v50 + 36) = v96;
    *(v50 + 40) = 1024;
    *(v50 + 42) = v32 <= v31;
    _os_log_impl(&dword_20AEA4000, v48, v49, "[targetzones] value:%f type:%s didChangeZoneState:%{BOOL}d\nenoughTimePassedBetweenAlerts:%{BOOL}d passedMinimumDistance:%{BOOL}d\npassedMinimumHoldoffTime:%{BOOL}d", v50, 0x2Eu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x20F2E9420](v51, -1, -1);
    MEMORY[0x20F2E9420](v50, -1, -1);

    v20 = v93;
    v40 = v91[0];
    if (!v62)
    {
      goto LABEL_50;
    }
  }

  else
  {

    if (!v97)
    {
LABEL_50:

      v16 = 0;
LABEL_51:

      return v16;
    }
  }

  if (!v46 || !v96 || v32 > v31)
  {
    goto LABEL_50;
  }

  v93 = v20;
  v63 = *(v3 + v40);
  TargetZone.state(forDistanceUnit:currentValue:)(v63, a2);

  v64 = qword_20B43D6B0[v100];

  Date.init()();
  v65 = OBJC_IVAR___NLWorkoutZoneTracker_activityType;
  swift_beginAccess();
  v66 = *(v3 + v65);
  v67 = type metadata accessor for WorkoutAlertZone();
  v17 = objc_allocWithZone(v67);
  *(v17 + OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone) = v19;
  *(v17 + OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_alertValue) = a2;
  *(v17 + OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_activityType) = v66;
  v68 = v66;

  v69 = v68;
  *(v17 + OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_distanceType) = FIUIDistanceTypeForActivityType();
  v99.receiver = v17;
  v99.super_class = v67;
  v70 = objc_msgSendSuper2(&v99, sel_init);
  isa = Date._bridgeToObjectiveC()().super.isa;
  [v70 setEventDate_];

  [v70 setType_];
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v72, v73))
  {
    v17 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 1) = v70;
    *v74 = v70;
    v75 = v70;
    _os_log_impl(&dword_20AEA4000, v72, v73, "Created zone alert: %@", v17, 0xCu);
    _sSo8NSObjectCSgWOhTm_8(v74, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v74, -1, -1);
    MEMORY[0x20F2E9420](v17, -1, -1);
  }

  else
  {
  }

  (*(v94 + 8))(v92, v95);
  v16 = v70;
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.default.getter();

  v79 = os_log_type_enabled(v77, v78);
  v20 = v93;
  if (v79)
  {
    v17 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 1) = v16;
    *v80 = v16;
    v81 = v16;
    _os_log_impl(&dword_20AEA4000, v77, v78, "[targetzones] Zone event reached. Registering event: %@", v17, 0xCu);
    _sSo8NSObjectCSgWOhTm_8(v80, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v80, -1, -1);
    MEMORY[0x20F2E9420](v17, -1, -1);
  }

  v82 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  v83 = OBJC_IVAR___NLWorkoutZoneTracker_lastPresentedAlertsByType;
  swift_beginAccess();
  v84 = *(v3 + v83);
  if ((v84 & 0xC000000000000001) == 0)
  {
    v88 = *(v3 + v83);
    v89 = v16;
    goto LABEL_63;
  }

  if (v84 < 0)
  {
    v85 = *(v3 + v83);
  }

  else
  {
    v85 = v84 & 0xFFFFFFFFFFFFFF8;
  }

  v86 = v16;
  v87 = __CocoaSet.count.getter();
  if (!__OFADD__(v87, 1))
  {
    *(v3 + v83) = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo8NSNumberC_11WorkoutCore10TargetZoneCTt1g5Tm(v85, v87 + 1, &_ss18_DictionaryStorageCySo8NSNumberC11WorkoutCore0D9AlertZoneCGMd, &_ss18_DictionaryStorageCySo8NSNumberC11WorkoutCore0D9AlertZoneCGMR, type metadata accessor for WorkoutAlertZone, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
LABEL_63:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98 = *(v3 + v83);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, v82, isUniquelyReferenced_nonNull_native);
    *(v3 + v83) = v98;

    swift_endAccess();
    ZoneTracker.persistRecoveryData()();

    goto LABEL_51;
  }

  __break(1u);
LABEL_65:
  v102[0] = 0;
  v102[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  MEMORY[0x20F2E6D80](0xD000000000000021, 0x800000020B461610);
  v101 = v17;
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Void __swiftcall ZoneTracker.recoverState(from:)(HKLiveWorkoutBuilder from)
{
  v1 = [(objc_class *)from.super.super.isa metadata];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4.value._rawValue = v2;
  ZoneTracker.recover(from:)(v4);
}

Swift::Void __swiftcall ZoneTracker.recover(from:)(Swift::OpaquePointer_optional from)
{
  v2 = v1;
  rawValue = from.value._rawValue;
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8NSNumberC_11WorkoutCore0D9AlertZoneCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v5 = OBJC_IVAR___NLWorkoutZoneTracker_lastPresentedAlertsByType;
  swift_beginAccess();
  v6 = *(v2 + v5);
  *(v2 + v5) = v4;

  if (rawValue)
  {
    if (rawValue[2])
    {
      v7 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002ELL, 0x800000020B461640);
      if (v8)
      {
        outlined init with copy of Any(rawValue[7] + 32 * v7, v56);
        if (swift_dynamicCast())
        {
          v9 = type metadata accessor for JSONDecoder();
          v10 = *(v9 + 48);
          v11 = *(v9 + 52);
          swift_allocObject();
          JSONDecoder.init()();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A9AlertZoneCGMd, _sSay11WorkoutCore0A9AlertZoneCGMR);
          lazy protocol witness table accessor for type [WorkoutAlertZone] and conformance <A> [A](&lazy protocol witness table cache variable for type [WorkoutAlertZone] and conformance <A> [A], &lazy protocol witness table cache variable for type WorkoutAlertZone and conformance WorkoutAlertZone);
          v49 = v54;
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();

          v21 = v56[0];
          if (v56[0] >> 62)
          {
            v22 = __CocoaSet.count.getter();
            if (v22)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v22 = *((v56[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v22)
            {
LABEL_10:
              v48 = v55;
              if (v22 < 1)
              {
                __break(1u);
                return;
              }

              v23 = 0;
              v52 = v21 & 0xC000000000000001;
              v50 = v22;
              v51 = v21;
              while (1)
              {
                if (v52)
                {
                  v27 = MEMORY[0x20F2E7A20](v23, v21);
                }

                else
                {
                  v27 = *(v21 + 8 * v23 + 32);
                }

                v28 = v27;
                v29 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone;
                swift_beginAccess();
                LOBYTE(v54) = *(*&v28[v29] + 16);
                v30 = ZoneTracker.targetZoneTemplate(for:)(&v54);
                if (v30)
                {
                  v31 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
                  swift_beginAccess();
                  v32 = *(v2 + v5);
                  if ((v32 & 0xC000000000000001) != 0)
                  {
                    if (v32 < 0)
                    {
                      v33 = *(v2 + v5);
                    }

                    else
                    {
                      v33 = v32 & 0xFFFFFFFFFFFFFF8;
                    }

                    v34 = v28;
                    v35 = __CocoaSet.count.getter();
                    if (__OFADD__(v35, 1))
                    {
                      __break(1u);
                      swift_once();
                      v12 = type metadata accessor for Logger();
                      __swift_project_value_buffer(v12, static WOLog.zones);
                      v13 = v21;
                      v14 = Logger.logObject.getter();
                      v15 = static os_log_type_t.error.getter();

                      if (os_log_type_enabled(v14, v15))
                      {
                        v16 = swift_slowAlloc();
                        v17 = swift_slowAlloc();
                        v56[0] = v17;
                        *v16 = 136315138;
                        swift_getErrorValue();
                        v18 = Error.localizedDescription.getter();
                        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v56);

                        *(v16 + 4) = v20;
                        _os_log_impl(&dword_20AEA4000, v14, v15, "Error decoding recovery data: %s", v16, 0xCu);
                        __swift_destroy_boxed_opaque_existential_0(v17);
                        MEMORY[0x20F2E9420](v17, -1, -1);
                        MEMORY[0x20F2E9420](v16, -1, -1);
                        outlined consume of Data._Representation(v49, v28);
                      }

                      else
                      {
                        outlined consume of Data._Representation(v49, v28);
                      }

                      return;
                    }

                    *(v2 + v5) = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo8NSNumberC_11WorkoutCore10TargetZoneCTt1g5Tm(v33, v35 + 1, &_ss18_DictionaryStorageCySo8NSNumberC11WorkoutCore0D9AlertZoneCGMd, &_ss18_DictionaryStorageCySo8NSNumberC11WorkoutCore0D9AlertZoneCGMR, type metadata accessor for WorkoutAlertZone, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
                  }

                  else
                  {
                    v24 = *(v2 + v5);
                    v25 = v28;
                  }

                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v53 = *(v2 + v5);
                  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, v31, isUniquelyReferenced_nonNull_native);
                  *(v2 + v5) = v53;

                  swift_endAccess();
                }

                else
                {
                  if (one-time initialization token for zones != -1)
                  {
                    swift_once();
                  }

                  v36 = type metadata accessor for Logger();
                  __swift_project_value_buffer(v36, static WOLog.zones);
                  v37 = v28;
                  v38 = Logger.logObject.getter();
                  v39 = static os_log_type_t.error.getter();

                  if (os_log_type_enabled(v38, v39))
                  {
                    v40 = swift_slowAlloc();
                    v41 = swift_slowAlloc();
                    v54 = v41;
                    *v40 = 136315138;
                    v42 = *(*&v28[v29] + 16);
                    if (v42 > 3)
                    {
                      if (*(*&v28[v29] + 16) > 5u)
                      {
                        if (v42 == 6)
                        {
                          v43 = 0x5F65676172657661;
                          v44 = 0xED00007265776F70;
                        }

                        else
                        {
                          v44 = 0xE400000000000000;
                          v43 = 1701736302;
                        }
                      }

                      else if (v42 == 4)
                      {
                        v43 = 0x5F65676172657661;
                        v44 = 0xEF65636E65646163;
                      }

                      else
                      {
                        v43 = 0xD000000000000013;
                        v44 = 0x800000020B4544E0;
                      }
                    }

                    else if (*(*&v28[v29] + 16) > 1u)
                    {
                      if (v42 == 2)
                      {
                        v43 = 0xD000000000000012;
                        v44 = 0x800000020B454490;
                      }

                      else
                      {
                        v43 = 0xD000000000000015;
                        v44 = 0x800000020B4544B0;
                      }
                    }

                    else
                    {
                      if (*(*&v28[v29] + 16))
                      {
                        v43 = 0x5F65676172657661;
                      }

                      else
                      {
                        v43 = 0x5F676E696C6C6F72;
                      }

                      v44 = 0xEC00000065636170;
                    }

                    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v54);

                    *(v40 + 4) = v45;
                    _os_log_impl(&dword_20AEA4000, v38, v39, "No matching targetZoneTemplate for type: %s. Skipping recovery for this zone.", v40, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0(v41);
                    MEMORY[0x20F2E9420](v41, -1, -1);
                    MEMORY[0x20F2E9420](v40, -1, -1);
                  }

                  v22 = v50;
                  v21 = v51;
                }

                if (v22 == ++v23)
                {

                  v46 = v49;
                  v47 = v48;
                  goto LABEL_51;
                }
              }
            }
          }

          v46 = v54;
          v47 = v55;
LABEL_51:
          outlined consume of Data._Representation(v46, v47);
        }
      }
    }
  }
}

uint64_t ZoneTracker.persistRecoveryData()()
{
  v1 = v0;
  v2 = OBJC_IVAR___NLWorkoutZoneTracker_lastPresentedAlertsByType;
  swift_beginAccess();
  v3 = *(v1 + v2);

  v5 = specialized _copyCollectionToContiguousArray<A>(_:)(v4);

  v6 = type metadata accessor for JSONEncoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v17 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A9AlertZoneCGMd, _sSay11WorkoutCore0A9AlertZoneCGMR);
  lazy protocol witness table accessor for type [WorkoutAlertZone] and conformance <A> [A](&lazy protocol witness table cache variable for type [WorkoutAlertZone] and conformance <A> [A], &lazy protocol witness table cache variable for type WorkoutAlertZone and conformance WorkoutAlertZone);
  v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v11 = v10;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return outlined consume of Data._Representation(v9, v11);
  }

  v13 = Strong;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  *(inited + 32) = 0xD00000000000002ELL;
  *(inited + 72) = MEMORY[0x277CC9318];
  *(inited + 40) = 0x800000020B461640;
  *(inited + 48) = v9;
  *(inited + 56) = v11;
  outlined copy of Data._Representation(v9, v11);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  _sSo8NSObjectCSgWOhTm_8(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v13 insertOrUpdateMetadata:isa forceTopLevel:1];
  outlined consume of Data._Representation(v9, v11);

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall ZoneTracker.clearRecoveryData()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = MEMORY[0x20F2E6C00](0xD00000000000002ELL, 0x800000020B461640);
    [v1 removeMetadata:v2 forceTopLevel:1];

    swift_unknownObjectRelease();
  }
}

void ZoneTracker.update(with:metricType:)(void *a1, uint64_t a2)
{
  if ([a1 sessionIsActive])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = [Strong canTriggerAlerts];
      swift_unknownObjectRelease();
      if (v6)
      {
        static ZoneTracker.targetZoneType(for:)(a2, &v13);
        v7 = v13;
        specialized static ZoneTracker.value(for:dataProvider:)(a2, a1);
        v9 = v8;
        v13 = v7;
        if (ZoneTracker.targetZoneTemplate(for:)(&v13))
        {

          v13 = v7;
          v10 = ZoneTracker.trackTargetZone(for:value:)(&v13, v9);
          if (v10)
          {
            v11 = v10;
            v12 = swift_unknownObjectWeakLoadStrong();
            if (v12)
            {
              [v12 alertSource:v2 didTriggerAlert:v11];
              swift_unknownObjectRelease();
            }
          }
        }
      }
    }
  }
}

uint64_t static ZoneTracker.targetZoneType(for:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = result - 4;
  if (result - 4) < 0xD && ((0x1D91u >> v2))
  {
    *a2 = byte_20B43D6D0[v2];
  }

  else
  {
    _StringGuts.grow(_:)(53);
    MEMORY[0x20F2E6D80](0xD000000000000033, 0x800000020B461870);
    type metadata accessor for HKWorkoutMetricType(0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t ZoneTracker.targetZoneTemplate(for:)(uint64_t a1)
{
  v3 = OBJC_IVAR___NLWorkoutZoneTracker_targetZoneTemplates;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v6 = ~v9;
    v5 = v4 + 64;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(v4 + 64);
    v8 = v4;
  }

  result = swift_bridgeObjectRetain_n();
  v13 = 0;
  v14 = (v6 + 64) >> 6;
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v15 = v13;
  v16 = v7;
  v17 = v13;
  if (v7)
  {
LABEL_12:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v8 + 56) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

    if (v19)
    {
      do
      {
        if (qword_20B43D6E0[*(v19 + 16)] == a1)
        {
          break;
        }

        v13 = v17;
        v7 = v18;
        if ((v8 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaDictionary.Iterator.next()())
        {
          goto LABEL_19;
        }

        swift_unknownObjectRelease();
        type metadata accessor for TargetZone();
        swift_dynamicCast();
        v19 = v20;
        v17 = v13;
        v18 = v7;
      }

      while (v20);
    }

LABEL_20:
    outlined consume of [NSNumber : TargetZone].Iterator._Variant();

    return v19;
  }

  else
  {
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
LABEL_19:
        v19 = 0;
        goto LABEL_20;
      }

      v16 = *(v5 + 8 * v17);
      ++v15;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t ZoneTracker.targetZoneTemplate(for:)(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___NLWorkoutZoneTracker_targetZoneTemplates;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v6 = ~v9;
    v5 = v4 + 64;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(v4 + 64);
    v8 = v4;
  }

  result = swift_bridgeObjectRetain_n();
  v13 = 0;
  v14 = (v6 + 64) >> 6;
  v33 = v5;
  v32 = v14;
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v15 = v13;
  v16 = v7;
  v17 = v13;
  if (v7)
  {
LABEL_12:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v8 + 56) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v19)
    {
LABEL_65:
      outlined consume of [NSNumber : TargetZone].Iterator._Variant();

      return v19;
    }

    while (1)
    {
      v20 = *(v19 + 16);
      if (v20 > 3)
      {
        if (*(v19 + 16) > 5u)
        {
          if (v20 == 6)
          {
            v21 = 0x5F65676172657661;
            v22 = 0xED00007265776F70;
          }

          else
          {
            v22 = 0xE400000000000000;
            v21 = 1701736302;
          }
        }

        else if (v20 == 4)
        {
          v21 = 0x5F65676172657661;
          v22 = 0xEF65636E65646163;
        }

        else
        {
          v21 = 0xD000000000000013;
          v22 = 0x800000020B4544E0;
        }
      }

      else if (*(v19 + 16) > 1u)
      {
        if (v20 == 2)
        {
          v21 = 0xD000000000000012;
          v22 = 0x800000020B454490;
        }

        else
        {
          v21 = 0xD000000000000015;
          v22 = 0x800000020B4544B0;
        }
      }

      else
      {
        v21 = 0x5F676E696C6C6F72;
        v22 = 0xEC00000065636170;
        if (*(v19 + 16))
        {
          v21 = 0x5F65676172657661;
        }
      }

      v23 = v18;
      if (v2 > 3)
      {
        v26 = 1701736302;
        if (v2 == 6)
        {
          v26 = 0x5F65676172657661;
        }

        v27 = 0xED00007265776F70;
        if (v2 != 6)
        {
          v27 = 0xE400000000000000;
        }

        if (v2 == 4)
        {
          v28 = 0x5F65676172657661;
        }

        else
        {
          v28 = 0xD000000000000013;
        }

        v29 = 0x800000020B4544E0;
        if (v2 == 4)
        {
          v29 = 0xEF65636E65646163;
        }

        if (v2 <= 5)
        {
          v24 = v28;
        }

        else
        {
          v24 = v26;
        }

        if (v2 <= 5)
        {
          v25 = v29;
        }

        else
        {
          v25 = v27;
        }
      }

      else
      {
        if (v2 > 1)
        {
          if (v2 == 2)
          {
            v31 = 0xD000000000000012;
          }

          else
          {
            v31 = 0xD000000000000015;
          }

          if (v2 == 2)
          {
            v25 = 0x800000020B454490;
          }

          else
          {
            v25 = 0x800000020B4544B0;
          }

          if (v21 != v31)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        }

        v24 = 0x5F676E696C6C6F72;
        v25 = 0xEC00000065636170;
        if (v2)
        {
          if (v21 != 0x5F65676172657661)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        }
      }

      if (v21 != v24)
      {
        goto LABEL_52;
      }

LABEL_51:
      if (v22 == v25)
      {

        goto LABEL_65;
      }

LABEL_52:
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v30)
      {
        goto LABEL_65;
      }

      v13 = v17;
      v7 = v23;
      v5 = v33;
      v14 = v32;
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (!__CocoaDictionary.Iterator.next()())
      {
        v19 = 0;
        goto LABEL_65;
      }

      swift_unknownObjectRelease();
      type metadata accessor for TargetZone();
      swift_dynamicCast();
      v19 = v34;
      v17 = v13;
      v18 = v7;
      if (!v34)
      {
        goto LABEL_65;
      }
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      v19 = 0;
      goto LABEL_65;
    }

    v16 = *(v5 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall ZoneTracker.saveTargetZonesMetadata()()
{
  v1 = OBJC_IVAR___NLWorkoutZoneTracker_targetZoneTemplates;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v4 = ~v7;
    v3 = v2 + 64;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v5 = v9 & *(v2 + 64);
    v6 = v2;
  }

  swift_bridgeObjectRetain_n();
  v10 = 0;
  v11 = (v4 + 64) >> 6;
  while ((v6 & 0x8000000000000000) != 0)
  {
    if (!__CocoaDictionary.Iterator.next()() || (swift_unknownObjectRelease(), type metadata accessor for TargetZone(), swift_dynamicCast(), v14 = v10, v15 = v5, !v21))
    {
LABEL_20:
      outlined consume of [NSNumber : TargetZone].Iterator._Variant();

      return;
    }

LABEL_18:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      v19 = TargetZone.metadata.getter();
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v19);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v18 insertOrUpdateMetadata:isa forceTopLevel:0];

      swift_unknownObjectRelease();
    }

    v10 = v14;
    v5 = v15;
  }

  v12 = v10;
  v13 = v5;
  v14 = v10;
  if (v5)
  {
LABEL_14:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v6 + 56) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v16)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_20;
    }

    v13 = *(v3 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

id ZoneTracker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ZoneTracker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ZoneTracker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void ZoneTracker.dataProvider(_:didUpdate:)(void *a1, unint64_t a2)
{
  if (a2 > 0x10)
  {
    return;
  }

  if (((1 << a2) & 0x1D910) == 0)
  {
    if (a2 == 1)
    {
      v7 = [objc_opt_self() meterUnit];
      if (a1)
      {
        v8 = v7;
        [objc_msgSend(a1 distanceProvider)];
        v10 = v9;
        swift_unknownObjectRelease();
        v11 = [objc_opt_self() quantityWithUnit:v8 doubleValue:v10];

        v12 = OBJC_IVAR___NLWorkoutZoneTracker_currentDistance;
        swift_beginAccess();
        v13 = *(v2 + v12);
        *(v2 + v12) = v11;

        return;
      }

LABEL_16:
      __break(1u);
      return;
    }

    if (a2 != 3)
    {
      return;
    }

    if (a1)
    {
      [a1 duration];
      v4 = v3;
      v5 = OBJC_IVAR___NLWorkoutZoneTracker_currentDuration;
      swift_beginAccess();
      *(v2 + v5) = v4;
      return;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_15;
  }

  ZoneTracker.update(with:metricType:)(a1, a2);
}

Swift::Void __swiftcall ZoneTracker.updateDistanceUnit(_:)(HKUnit_optional a1)
{
  if (a1.value.super.isa)
  {
    v3 = *(v1 + OBJC_IVAR___NLWorkoutZoneTracker_distanceUnit);
    *(v1 + OBJC_IVAR___NLWorkoutZoneTracker_distanceUnit) = a1.value.super.isa;
    v2 = a1.value.super.isa;
  }

  else
  {
    __break(1u);
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ZoneTrackerError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ZoneTrackerError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo8NSNumberC_11WorkoutCore10TargetZoneCTt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void), void (*a6)(unint64_t, uint64_t))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = static _DictionaryStorage.convert(_:capacity:)();
    v25 = v8;
    __CocoaDictionary.makeIterator()();
    v9 = __CocoaDictionary.Iterator.next()();
    if (v9)
    {
      v10 = v9;
      _sSo12HKSampleTypeCMaTm_0(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      v11 = v10;
      do
      {
        v23 = v11;
        swift_dynamicCast();
        a5(0);
        swift_dynamicCast();
        v18 = *(v8 + 16);
        if (*(v8 + 24) <= v18)
        {
          a6(v18 + 1, 1);
        }

        v8 = v25;
        result = NSObject._rawHashValue(seed:)(*(v25 + 40));
        v13 = v25 + 64;
        v14 = -1 << *(v25 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v25 + 64 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v25 + 64 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v25 + 48) + 8 * v17) = v24;
        *(*(v25 + 56) + 8 * v17) = v23;
        ++*(v25 + 16);
        v11 = __CocoaDictionary.Iterator.next()();
      }

      while (v11);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v8;
}

uint64_t specialized static ZoneTracker.targetZoneDictionary(from:)(unint64_t isUniquelyReferenced_nonNull_native)
{
  v2 = v1;
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8NSNumberC_11WorkoutCore10TargetZoneCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_71;
  }

  v5 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    return v4;
  }

LABEL_3:
  v6 = 0;
  v43 = v5;
  v44 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v41 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v42 = isUniquelyReferenced_nonNull_native;
  v40 = v2;
  while (1)
  {
    if (v44)
    {
      v7 = MEMORY[0x20F2E7A20](v6, isUniquelyReferenced_nonNull_native);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (v6 >= *(v41 + 16))
      {
        goto LABEL_68;
      }

      v7 = *(isUniquelyReferenced_nonNull_native + 8 * v6 + 32);

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
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
        v5 = __CocoaSet.count.getter();
        if (!v5)
        {
          return v4;
        }

        goto LABEL_3;
      }
    }

    v9 = [v7 primaryType];
    v10 = v7[16];
    if (v10 > 3)
    {
      if (v7[16] > 5u)
      {
        if (v10 != 6)
        {

LABEL_58:
          if (one-time initialization token for zones != -1)
          {
            swift_once();
          }

          v36 = type metadata accessor for Logger();
          __swift_project_value_buffer(v36, static WOLog.zones);
          v32 = Logger.logObject.getter();
          v37 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v32, v37))
          {
            v35 = 0;
            goto LABEL_64;
          }

          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_20AEA4000, v32, v37, "Unsupported target zone type: WOTargetZoneTypeNone", v34, 2u);
          v35 = 0;
          goto LABEL_62;
        }

        v2 = 0xED00007265776F70;
      }

      else
      {
        v2 = (v10 == 4 ? 0xEF65636E65646163 : 0x800000020B4544E0);
      }
    }

    else
    {
      v11 = 0x800000020B4544B0;
      if (v10 == 2)
      {
        v11 = 0x800000020B454490;
      }

      v7[16];
      v2 = (v7[16] <= 1u ? 0xEC00000065636170 : v11);
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      goto LABEL_58;
    }

    v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    v14 = v13;
    if ((v4 & 0xC000000000000001) == 0)
    {
      if (!*(v4 + 16) || (v2 = v4, v15 = specialized __RawDictionaryStorage.find<A>(_:)(v13), (v16 & 1) == 0))
      {
LABEL_33:

        goto LABEL_34;
      }

      v2 = *(*(v4 + 56) + 8 * v15);

      if (!v2)
      {
        goto LABEL_34;
      }

LABEL_52:

      if (one-time initialization token for zones != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, static WOLog.zones);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v32, v33))
      {
        v35 = 1;
LABEL_64:

        lazy protocol witness table accessor for type ZoneTrackerError and conformance ZoneTrackerError();
        swift_allocError();
        *v38 = v35;
        swift_willThrow();

        return v4;
      }

      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_20AEA4000, v32, v33, "Unsupported duplicate target zone primary type in NLWorkoutZoneTracker", v34, 2u);
      v35 = 1;
LABEL_62:
      MEMORY[0x20F2E9420](v34, -1, -1);
      goto LABEL_64;
    }

    if (!__CocoaDictionary.lookup(_:)())
    {
      goto LABEL_33;
    }

    type metadata accessor for TargetZone();
    swift_dynamicCast();
    v2 = v45;

    if (v2)
    {
      goto LABEL_52;
    }

LABEL_34:
    swift_beginAccess();
    if (v7[40] != 1)
    {
      goto LABEL_4;
    }

    v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    if ((v4 & 0xC000000000000001) != 0)
    {
      if (v4 >= 0)
      {
        v4 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v18 = __CocoaSet.count.getter();
      if (__OFADD__(v18, 1))
      {
        goto LABEL_69;
      }

      v4 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo8NSNumberC_11WorkoutCore10TargetZoneCTt1g5Tm(v4, v18 + 1, &_ss18_DictionaryStorageCySo8NSNumberC11WorkoutCore10TargetZoneCGMd, &_ss18_DictionaryStorageCySo8NSNumberC11WorkoutCore10TargetZoneCGMR, type metadata accessor for TargetZone, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
    }

    else
    {
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v4;
    v2 = v4;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
    v21 = *(v4 + 16);
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_67;
    }

    v24 = v19;
    if (*(v4 + 24) < v23)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = &v45;
      specialized _NativeDictionary.copy()();
    }

LABEL_47:
    isUniquelyReferenced_nonNull_native = v42;
    v4 = v45;
    if (v24)
    {
      v27 = v45[7];
      v2 = *(v27 + 8 * v20);
      *(v27 + 8 * v20) = v7;

LABEL_4:

      goto LABEL_5;
    }

    v45[(v20 >> 6) + 8] |= 1 << v20;
    *(*(v4 + 48) + 8 * v20) = v17;
    *(*(v4 + 56) + 8 * v20) = v7;

    v28 = *(v4 + 16);
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_70;
    }

    *(v4 + 16) = v30;
LABEL_5:
    ++v6;
    if (v8 == v43)
    {
      return v4;
    }
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native);
  v2 = v45;
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    goto LABEL_47;
  }

  _sSo12HKSampleTypeCMaTm_0(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

double keypath_get_10Tm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

uint64_t keypath_set_11Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t specialized static ZoneTracker.value(for:dataProvider:)(uint64_t result, id a2)
{
  if (result <= 11)
  {
    switch(result)
    {
      case 4:
        result = [a2 paceProvider];
        if (!result)
        {
          return result;
        }

        [result currentPaceInMetersPerSecond];
        return swift_unknownObjectRelease();
      case 8:
        result = [a2 paceProvider];
        if (!result)
        {
          return result;
        }

        [result averagePaceInMetersPerSecond];
        return swift_unknownObjectRelease();
      case 11:
        result = [a2 powerProvider];
        if (result)
        {
          [result instantaneousPower];
          return swift_unknownObjectRelease();
        }

        break;
    }
  }

  else
  {
    if (result <= 14)
    {
      if (result == 12)
      {
        result = [a2 powerProvider];
        if (!result)
        {
          return result;
        }

        [result averagePower];
      }

      else
      {
        if (result != 14)
        {
          return result;
        }

        [objc_msgSend(a2 rollingPaceProvider)];
      }

      return swift_unknownObjectRelease();
    }

    if (result == 15)
    {
      result = [a2 cadenceProvider];
      if (!result)
      {
        return result;
      }

      [result currentCadence];
      return swift_unknownObjectRelease();
    }

    if (result == 16)
    {
      result = [a2 cadenceProvider];
      if (result)
      {
        [result averageCadence];
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [WorkoutAlertZone] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A9AlertZoneCGMd, _sSay11WorkoutCore0A9AlertZoneCGMR);
    lazy protocol witness table accessor for type WorkoutAlertZone and conformance WorkoutAlertZone(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type WorkoutAlertZone and conformance WorkoutAlertZone(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutAlertZone();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSo12HKSampleTypeCMaTm_0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t lazy protocol witness table accessor for type ZoneTrackerError and conformance ZoneTrackerError()
{
  result = lazy protocol witness table cache variable for type ZoneTrackerError and conformance ZoneTrackerError;
  if (!lazy protocol witness table cache variable for type ZoneTrackerError and conformance ZoneTrackerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ZoneTrackerError and conformance ZoneTrackerError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ZoneTrackerError and conformance ZoneTrackerError;
  if (!lazy protocol witness table cache variable for type ZoneTrackerError and conformance ZoneTrackerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ZoneTrackerError and conformance ZoneTrackerError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ZoneTrackerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ZoneTrackerError(uint64_t result, unsigned int a2, unsigned int a3)
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

id PacerDistanceGoalProgressAccumulator.__allocating_init(builder:workoutConfiguration:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = specialized PacerDistanceGoalProgressAccumulator.init(builder:workoutConfiguration:)(a1, a2);

  return v6;
}

uint64_t (*PacerDistanceGoalProgressAccumulator.workoutAlertDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_workoutAlertDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return PacerDistanceGoalProgressAccumulator.workoutAlertDelegate.modify;
}

uint64_t PacerDistanceGoalProgressAccumulator.goalCompletionTimeNumber.getter()
{
  if (*(v0 + OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_goalCompletionTime + 8))
  {
    return 0;
  }

  else
  {
    return MEMORY[0x20F2E7210](*(v0 + OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_goalCompletionTime));
  }
}

id @objc PacerDistanceGoalProgressAccumulator.workoutAlertDelegate.getter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t PacerDistanceGoalProgressAccumulator.workoutAlertDelegate.getter(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t @objc PacerDistanceGoalProgressAccumulator.workoutAlertDelegate.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t PacerDistanceGoalProgressAccumulator.workoutAlertDelegate.setter(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*PacerDistanceGoalProgressAccumulator.eventPersistenceDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_eventPersistenceDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return PacerDistanceGoalProgressAccumulator.eventPersistenceDelegate.modify;
}

void PacerDistanceGoalProgressAccumulator.workoutAlertDelegate.modify(uint64_t a1, char a2)
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

id PacerDistanceGoalProgressAccumulator.init(builder:workoutConfiguration:)(void *a1, void *a2)
{
  v4 = specialized PacerDistanceGoalProgressAccumulator.init(builder:workoutConfiguration:)(a1, a2);

  return v4;
}

Swift::Void __swiftcall PacerDistanceGoalProgressAccumulator.updateProgress(statistics:elapsedTime:)(HKStatistics statistics, Swift::Double elapsedTime)
{
  v5 = type metadata accessor for DateInterval();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v2 isAccumulating])
  {
    return;
  }

  v10 = *&v2[OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_activityType];
  [v10 effectiveTypeIdentifier];
  v11 = _HKWorkoutDistanceTypeForActivityType();
  if (!v11)
  {
    return;
  }

  v12 = v2;
  v39 = v11;
  _sSo8NSObjectCMaTm_0(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  v13 = [(objc_class *)statistics.super.isa quantityType];
  v14 = static NSObject.== infix(_:_:)();

  if ((v14 & 1) != 0 && (v15 = [(objc_class *)statistics.super.isa sumQuantity]) != 0)
  {
    v38 = v15;
    v16 = objc_opt_self();
    v17 = [v16 meterUnit];
    [v38 doubleValueForUnit_];
    v19 = v18;

    v20 = *&v12[OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_goalDistanceInMeters];
    if (v20 <= v19 && (v12[OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_goalCompletionTime + 8] & 1) != 0)
    {
      v37 = &v12[OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_goalCompletionTime];
      v21 = [(objc_class *)statistics.super.isa mostRecentQuantity];
      if (v21)
      {
        v22 = v21;
        v23 = [v16 meterUnit];
        [v22 doubleValueForUnit_];
        v25 = v24;

        v26 = [(objc_class *)statistics.super.isa mostRecentQuantityDateInterval];
        if (v26)
        {
          v27 = v26;
          static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

          DateInterval.duration.getter();
          v29 = elapsedTime - (v19 - v20) / v25 * v28;
          v30 = v37;
          *v37 = v29;
          *(v30 + 8) = 0;
          v31 = type metadata accessor for WorkoutAlertPacer();
          v32 = objc_allocWithZone(v31);
          *&v32[OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_activityType] = v10;
          *&v32[OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_finishTime] = v29;
          *&v32[OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_distanceGoalInMeters] = v20;
          v40.receiver = v32;
          v40.super_class = v31;
          v33 = v10;
          v34 = objc_msgSendSuper2(&v40, sel_init);
          [v34 setType_];
          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            [Strong alertSource:v12 didTriggerAlert:v34];
            swift_unknownObjectRelease();
          }

          PacerDistanceGoalProgressAccumulator.addDistanceGoalCompletionEvent(surplusSampleTime:sampleDateInterval:)();

          (*(v6 + 8))(v9, v5);
          return;
        }
      }
    }

    v36 = v38;
  }

  else
  {
    v36 = v39;
  }
}

void PacerDistanceGoalProgressAccumulator.addDistanceGoalCompletionEvent(surplusSampleTime:sampleDateInterval:)()
{
  v1 = v0;
  v2 = type metadata accessor for DateInterval();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v72 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for Date();
  v6 = *(v73 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v73);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v65 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v71 = &v65 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v65 - v16;
  v18 = [v0 builder];
  v19 = [v18 startDate];

  if (v19)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    if (v0[OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_goalCompletionTime + 8])
    {
      (*(v6 + 8))(v17, v73);
    }

    else
    {
      v69 = v3;
      v70 = v2;
      v65 = &v0[OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_goalCompletionTime];
      v20 = *&v0[OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_goalCompletionTime];
      DateInterval.end.getter();
      v21 = v71;
      Date.addingTimeInterval(_:)();
      v22 = *(v6 + 8);
      v23 = v73;
      v67 = v6 + 8;
      v66 = v22;
      v22(v13, v73);
      v24 = *(v6 + 16);
      v68 = v17;
      v24(v13, v17, v23);
      v24(v10, v21, v23);
      DateInterval.init(start:end:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20B423A20;
      v26 = *MEMORY[0x277D0A738];
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 72) = MEMORY[0x277D83B88];
      *(inited + 40) = v27;
      *(inited + 48) = 2;
      v28 = *MEMORY[0x277D0A760];
      *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 88) = v29;
      v30 = objc_opt_self();
      v31 = [v30 meterUnit];
      v32 = *&v1[OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_goalDistanceInMeters];
      v33 = objc_opt_self();
      v34 = [v33 quantityWithUnit:v31 doubleValue:v32];

      v35 = _sSo8NSObjectCMaTm_0(0, &lazy cache variable for type metadata for HKQuantity, 0x277CCD7E8);
      *(inited + 120) = v35;
      *(inited + 96) = v34;
      v36 = *MEMORY[0x277D0A750];
      *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 136) = v37;
      v38 = [v30 secondUnit];
      v39 = [v33 quantityWithUnit:v38 doubleValue:v20];

      *(inited + 168) = v35;
      *(inited + 144) = v39;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      isa = DateInterval._bridgeToObjectiveC()().super.isa;
      v41 = Dictionary._bridgeToObjectiveC()().super.isa;

      v42 = [objc_opt_self() workoutEventWithType:7 dateInterval:isa metadata:v41];

      if (one-time initialization token for app != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static WOLog.app);
      v44 = v1;
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v74[0] = v48;
        *v47 = 134218242;
        *(v47 + 4) = v32;
        *(v47 + 12) = 2080;
        v49 = v65[8];
        v74[1] = *v65;
        v75 = v49;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
        v50 = Optional.description.getter();
        v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, v74);

        *(v47 + 14) = v52;
        _os_log_impl(&dword_20AEA4000, v45, v46, "[Pacer] - completed goalDistance=%f in goalCompletionTime activeDuration=%s", v47, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v48);
        MEMORY[0x20F2E9420](v48, -1, -1);
        MEMORY[0x20F2E9420](v47, -1, -1);
      }

      v53 = v70;
      v54 = v69;
      v55 = v68;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v57 = Strong;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_20B425990;
        *(v58 + 32) = v42;
        _sSo8NSObjectCMaTm_0(0, &lazy cache variable for type metadata for HKWorkoutEvent, 0x277CCDC68);
        v59 = v42;
        v60 = Array._bridgeToObjectiveC()().super.isa;

        [v57 addWorkoutEvents_];

        swift_unknownObjectRelease();
      }

      v61 = [v44 updateHandler];
      if (v61)
      {
        v62 = v61;
        (*(v61 + 2))();
        _Block_release(v62);
      }

      (*(v54 + 8))(v72, v53);
      v63 = v73;
      v64 = v66;
      v66(v71, v73);
      v64(v55, v63);
    }
  }
}

Swift::Void __swiftcall PacerDistanceGoalProgressAccumulator.recoverFrom(_:)(Swift::OpaquePointer a1)
{
  v27[0] = MEMORY[0x277D84F90];
  if (a1._rawValue >> 62)
  {
LABEL_17:
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1._rawValue & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x20F2E7A20](v3, a1._rawValue);
        }

        else
        {
          if (v3 >= *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v4 = *(a1._rawValue + v3 + 4);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if ([v4 fiui_isDistanceGoalCompleteEvent])
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v7 = *(v27[0] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v3;
      }

      while (v6 != v2);
      v8 = v27[0];
      if ((v27[0] & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v2 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v8 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_34;
  }

LABEL_19:
  if ((v8 & 0x4000000000000000) != 0)
  {
LABEL_34:
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_35;
    }

    goto LABEL_21;
  }

  if (!*(v8 + 16))
  {
LABEL_35:

    return;
  }

LABEL_21:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x20F2E7A20](0, v8);
  }

  else
  {
    if (!*(v8 + 16))
    {
      __break(1u);
      return;
    }

    v9 = *(v8 + 32);
  }

  v10 = v9;

  v11 = [v10 metadata];

  if (v11)
  {
    v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = *MEMORY[0x277D0A750];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v12 + 16))
    {
      v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
      v18 = v17;

      if (v18)
      {
        outlined init with copy of Any(*(v12 + 56) + 32 * v16, v27);

        _sSo8NSObjectCMaTm_0(0, &lazy cache variable for type metadata for HKQuantity, 0x277CCD7E8);
        if (swift_dynamicCast())
        {
          v19 = [objc_opt_self() secondUnit];
          [v26 doubleValueForUnit_];
          v21 = v20;

          v22 = &v25[OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_goalCompletionTime];
          *v22 = v21;
          v22[8] = 0;
          v23 = [v25 updateHandler];
          if (v23)
          {
            v24 = v23;
            (*(v23 + 2))();
            _Block_release(v24);
          }
        }

        return;
      }
    }

    else
    {
    }
  }
}

id PacerDistanceGoalProgressAccumulator.__allocating_init(builder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBuilder_];

  return v3;
}

id PacerDistanceGoalProgressAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PacerDistanceGoalProgressAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized PacerDistanceGoalProgressAccumulator.init(builder:workoutConfiguration:)(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_goalCompletionTime];
  *v5 = 0;
  v5[8] = 1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v7 = *(a2 + v6);
  *&v2[OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_activityType] = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v7;
  static Published.subscript.getter();

  [v13 doubleValue];
  v10 = v9;

  *&v2[OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_goalDistanceInMeters] = v10;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for PacerDistanceGoalProgressAccumulator();
  return objc_msgSendSuper2(&v12, sel_initWithBuilder_, a1);
}

uint64_t keypath_getTm_3@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a3 = result;
  return result;
}

uint64_t keypath_setTm_4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t _sSo8NSObjectCMaTm_0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void *CompoundActivityTypeProvider.__allocating_init(occurrenceStore:domainAccessor:deprecatedSmartGoalStore:)(void *a1, uint64_t a2, void *a3)
{
  swift_allocObject();
  v6 = specialized CompoundActivityTypeProvider.init(occurrenceStore:domainAccessor:deprecatedSmartGoalStore:)(a1, a2, a3);

  swift_unknownObjectRelease();
  return v6;
}

void *CompoundActivityTypeProvider.init(occurrenceStore:domainAccessor:deprecatedSmartGoalStore:)(void *a1, uint64_t a2, void *a3)
{
  v5 = specialized CompoundActivityTypeProvider.init(occurrenceStore:domainAccessor:deprecatedSmartGoalStore:)(a1, a2, a3);

  swift_unknownObjectRelease();
  return v5;
}

void CompoundActivityTypeProvider.migrateActivityTypesFromDeprecatedStore()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v106 = &v102 - v8;
  MEMORY[0x28223BE20](v7);
  *&v120 = &v102 - v9;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v117 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v118 = &v102 - v15;
  v16 = *(v0 + 4);
  if (v16)
  {
    v103 = v6;
    v17 = one-time initialization token for activityPicker;
    v109 = v16;
    if (v17 != -1)
    {
      goto LABEL_55;
    }

    while (1)
    {
      v18 = type metadata accessor for Logger();
      v19 = __swift_project_value_buffer(v18, static WOLog.activityPicker);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_20AEA4000, v20, v21, "Migrating activity types from NLSmartGoalStore.", v22, 2u);
        MEMORY[0x20F2E9420](v22, -1, -1);
      }

      isa = [objc_opt_self() defaultActivityTypesWithIsWheelchairUser:0 isSwimmingSupported:1 activityMoveMode:1];
      if (!isa)
      {
        _sSo8NSObjectCMaTm_1(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
        static Array._unconditionallyBridgeFromObjectiveC(_:)();
        isa = Array._bridgeToObjectiveC()().super.isa;
      }

      _sSo8NSObjectCMaTm_1(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
      v24 = MEMORY[0x277D84F90];
      v25 = Array._bridgeToObjectiveC()().super.isa;
      v26 = [v109 workoutActivityTypesInFrequencyOrderDescendingWithDefaultActivities:isa unsupportedActivities:v25];

      v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      v30 = os_log_type_enabled(v28, v29);
      v31 = v27 >> 62;
      v111 = v27;
      if (v30)
      {
        v32 = swift_slowAlloc();
        *v32 = 134217984;
        v33 = v31 ? __CocoaSet.count.getter() : *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v32 + 4) = v33;

        _os_log_impl(&dword_20AEA4000, v28, v29, "Migrated %ld activity types.", v32, 0xCu);
        MEMORY[0x20F2E9420](v32, -1, -1);
      }

      else
      {
      }

      Date.init()();
      v38 = v31 ? __CocoaSet.count.getter() : *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v108 = v10;
      v105 = v1;
      v107 = v11;
      v104 = v19;
      if (!v38)
      {
        break;
      }

      v121 = v24;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v38 < 0)
      {
        __break(1u);
        goto LABEL_58;
      }

      v39 = v111;
      v110 = v111 & 0xFFFFFFFFFFFFFF8;
      if (v31)
      {
        v40 = __CocoaSet.count.getter();
      }

      else
      {
        v40 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v108;
      v42 = 0;
      v43 = 0;
      v115 = v39 & 0xC000000000000001;
      v114 = (v11 + 56);
      v113 = (v11 + 48);
      v119 = (v11 + 32);
      v116 = -(v40 & ~(v40 >> 63));
      v112 = -v38;
      v11 = v106;
      while (v116 != v42)
      {
        if (v115)
        {
          v46 = MEMORY[0x20F2E7A20](v43, v39);
        }

        else
        {
          if (v43 >= *(v110 + 16))
          {
            goto LABEL_54;
          }

          v46 = *(v39 + 8 * v43 + 32);
        }

        v47 = v46;
        v48 = v120;
        Date.addingTimeInterval(_:)();
        (*v114)(v48, 0, 1, v10);
        v49 = type metadata accessor for ActivityTypeListItem();
        v50 = objc_allocWithZone(v49);
        *&v50[OBJC_IVAR____TtC11WorkoutCore20ActivityTypeListItem_activityType] = v47;
        outlined init with copy of Date?(v48, v11);
        v51 = *v113;
        if ((*v113)(v11, 1, v10) == 1)
        {
          v52 = v47;
          v53 = v117;
          static Date.now.getter();
          v54 = v51(v11, 1, v10);
          v1 = v53;
          v39 = v111;
          if (v54 != 1)
          {
            _s10Foundation4DateVSgWOhTm_9(v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          }
        }

        else
        {
          v1 = v117;
          (*v119)(v117, v11, v10);
          v44 = v47;
        }

        ++v43;
        (*v119)(&v50[OBJC_IVAR____TtC11WorkoutCore20ActivityTypeListItem_orderDate], v1, v10);
        v122.receiver = v50;
        v122.super_class = v49;
        objc_msgSendSuper2(&v122, sel_init);

        _s10Foundation4DateVSgWOhTm_9(v120, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v45 = v121[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v112 == --v42)
        {

          v41 = v121;
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      swift_once();
    }

    v41 = MEMORY[0x277D84F90];
LABEL_38:
    v123 = v41;
    v55 = MEMORY[0x20F2E5300](1);
    v57 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    v120 = xmmword_20B423A90;
    *(inited + 16) = xmmword_20B423A90;
    *(inited + 32) = static HealthDataConstants.mediaTypeProperty.getter();
    v59 = MEMORY[0x277D837D0];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v60;
    *(inited + 48) = v55;
    *(inited + 56) = v57;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    _s10Foundation4DateVSgWOhTm_9(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
    v61 = objc_allocWithZone(MEMORY[0x277D0A810]);
    v62 = Dictionary._bridgeToObjectiveC()().super.isa;

    v63 = [v61 initWithActivityTypeIdentifier:52 isIndoor:0 metadata:v62];

    if ([v109 isHiddenActivityType_])
    {
    }

    else
    {
      v64 = v63;
      v65 = v103;
      Date.init()();
      (*(v107 + 56))(v65, 0, 1, v108);
      v66 = objc_allocWithZone(type metadata accessor for ActivityTypeListItem());
      specialized ActivityTypeListItem.init(activityType:orderDate:)(v64, v65);

      MEMORY[0x20F2E6F30]();
      if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v100 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v67 = MEMORY[0x20F2E5300](0);
    v69 = v68;
    v70 = swift_initStackObject();
    *(v70 + 16) = v120;
    *(v70 + 32) = static HealthDataConstants.mediaTypeProperty.getter();
    *(v70 + 72) = v59;
    *(v70 + 40) = v71;
    *(v70 + 48) = v67;
    *(v70 + 56) = v69;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v70);
    swift_setDeallocating();
    _s10Foundation4DateVSgWOhTm_9(v70 + 32, &_sSS_yptMd, &_sSS_yptMR);
    v72 = objc_allocWithZone(MEMORY[0x277D0A810]);
    v73 = Dictionary._bridgeToObjectiveC()().super.isa;

    v74 = [v72 initWithActivityTypeIdentifier:37 isIndoor:0 metadata:v73];

    if ([v109 isHiddenActivityType_])
    {

      v75 = v105;
      v76 = v107;
    }

    else
    {
      v77 = v74;
      v78 = v103;
      Date.init()();
      v76 = v107;
      (*(v107 + 56))(v78, 0, 1, v108);
      v79 = objc_allocWithZone(type metadata accessor for ActivityTypeListItem());
      specialized ActivityTypeListItem.init(activityType:orderDate:)(v77, v78);

      MEMORY[0x20F2E6F30]();
      v75 = v105;
      if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v101 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v80 = v75[2];
    v81 = type metadata accessor for JSONEncoder();
    v82 = *(v81 + 48);
    v83 = *(v81 + 52);
    swift_allocObject();
    JSONEncoder.init()();

    v85 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11WorkoutCore20ActivityTypeListItemC_SayAFGTt0g5Tf4g_n(v84);

    v86 = specialized _copyCollectionToContiguousArray<A>(_:)(v85);

    v121 = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore20ActivityTypeListItemCGMd, &_sSay11WorkoutCore20ActivityTypeListItemCGMR);
    lazy protocol witness table accessor for type [ActivityTypeListItem] and conformance <A> [A]();
    v87 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v89 = v88;

    v90 = v80[2];
    v91 = MEMORY[0x20F2E6C00](v80[3], v80[4]);
    v92 = Data._bridgeToObjectiveC()().super.isa;
    [v90 writeDataPerGizmoDomainAndKey:v91 data:v92];

    outlined consume of Data._Representation(v87, v89);

    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_20AEA4000, v93, v94, "Successfully wrote migrated activity types to ActivityPickerListStore.", v95, 2u);
      MEMORY[0x20F2E9420](v95, -1, -1);
    }

    v96 = v108;
    swift_beginAccess();
    v97 = v75[7];
    if (v97)
    {
      v98 = v75[8];

      v97(v99);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v97);
    }

    (*(v76 + 8))(v118, v96);
  }

  else
  {
    if (one-time initialization token for activityPicker != -1)
    {
LABEL_58:
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static WOLog.activityPicker);
    *&v120 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v120, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_20AEA4000, v120, v35, "deprecatedSmartGoalStore is nil. Should not happen in normal usage.", v36, 2u);
      MEMORY[0x20F2E9420](v36, -1, -1);
    }

    v37 = v120;
  }
}

void CompoundActivityTypeProvider.performMigrationIfNeeded()()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = ActivityPickerListStore.fetchActivityTypesData()();
  v5 = v4 >> 60;
  if (v4 >> 60 != 15)
  {
    outlined consume of Data?(v3, v4);
  }

  if (one-time initialization token for activityPicker != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.activityPicker);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v5 > 0xE;
    _os_log_impl(&dword_20AEA4000, v7, v8, "ActivityPickerListStore is empty: %{BOOL}d", v9, 8u);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  if (v5 < 0xF)
  {
    oslog = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_20AEA4000, oslog, v22, "ActivityPickerListStore is not empty, skipping migration.", v23, 2u);
      MEMORY[0x20F2E9420](v23, -1, -1);
    }
  }

  else
  {
    v10 = *(v1 + 32);
    if (v10)
    {
      goto LABEL_16;
    }

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_20AEA4000, v11, v12, "Creating NLSmartGoalStore instance for migration.", v13, 2u);
      MEMORY[0x20F2E9420](v13, -1, -1);
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (one-time initialization token for healthStore != -1)
    {
      swift_once();
    }

    v14 = [objc_allocWithZone(NLSmartGoalStore) initWithHealthStore_];
    v15 = *(v1 + 32);
    *(v1 + 32) = v14;

    v10 = *(v1 + 32);
    if (v10)
    {
LABEL_16:
      v16 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = partial apply for closure #1 in CompoundActivityTypeProvider.performMigrationIfNeeded();
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_45;
      v17 = _Block_copy(aBlock);
      v18 = v10;

      [v18 setDidPopulateBlock_];
      _Block_release(v17);
    }

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_20AEA4000, v19, v20, "Initiating migration from NLSmartGoalStore.", v21, 2u);
      MEMORY[0x20F2E9420](v21, -1, -1);
    }

    CompoundActivityTypeProvider.migrateActivityTypesFromDeprecatedStore()();
  }
}

uint64_t closure #1 in CompoundActivityTypeProvider.performMigrationIfNeeded()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    CompoundActivityTypeProvider.migrateActivityTypesFromDeprecatedStore()();
  }

  return result;
}

Swift::Void __swiftcall CompoundActivityTypeProvider.setActivityPickerWheelchairMode(wheelchairMode:)(Swift::Bool wheelchairMode)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v26 - v5;
  v7 = [objc_opt_self() wheelchairActivityTypes];
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = specialized _arrayConditionalCast<A, B>(_:)(v8);

  if (!v9)
  {
    goto LABEL_38;
  }

  v28 = v9;
  v10 = *(v1 + 16);
  if ([*(v10 + 16) isWorkoutPickerWheelchairModeEnabled] != wheelchairMode)
  {
    v11 = *(v10 + 16);
    if (wheelchairMode)
    {
      [v11 setWorkoutPickerWheelchairModeEnabled_];
      specialized MutableCollection<>.reverse()();
      v12 = v28;
      if (v28 >> 62)
      {
        v13 = __CocoaSet.count.getter();
        if (v13)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v13 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v13)
        {
LABEL_6:
          if (v13 >= 1)
          {
            for (i = 0; i != v13; ++i)
            {
              if ((v12 & 0xC000000000000001) != 0)
              {
                v15 = MEMORY[0x20F2E7A20](i, v12);
              }

              else
              {
                v15 = *(v12 + 8 * i + 32);
              }

              v16 = v15;
              static Date.now.getter();
              v17 = type metadata accessor for Date();
              (*(*(v17 - 8) + 56))(v6, 0, 1, v17);
              ActivityPickerListStore.addActivityType(_:date:)(v16, v6);
              _s10Foundation4DateVSgWOhTm_9(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            }

LABEL_35:

            return;
          }

          __break(1u);
          goto LABEL_37;
        }
      }
    }

    else
    {
      [v11 setWorkoutPickerWheelchairModeEnabled_];
      if (v9 >> 62)
      {
        v22 = __CocoaSet.count.getter();
        if (!v22)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v22 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v22)
        {
          goto LABEL_33;
        }
      }

      if (v22 < 1)
      {
LABEL_37:
        __break(1u);
LABEL_38:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }

      for (j = 0; j != v22; ++j)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x20F2E7A20](j, v9);
        }

        else
        {
          v24 = *(v9 + 8 * j + 32);
        }

        v25 = v24;
        ActivityPickerListStore.removeActivityType(_:)(v24);
      }
    }

LABEL_33:

    goto LABEL_35;
  }

  if (one-time initialization token for activityPicker != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static WOLog.activityPicker);
  v27 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 67109120;
    *(v20 + 4) = wheelchairMode;
    _os_log_impl(&dword_20AEA4000, v27, v19, "Activity Picker wheelchair: %{BOOL}d is already set. Not modifying activity types.", v20, 8u);
    MEMORY[0x20F2E9420](v20, -1, -1);
  }

  v21 = v27;
}

void specialized MutableCollection<>.reverse()()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    goto LABEL_27;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    v3 = v2 - 1;
    while (!__OFSUB__(v2, 1))
    {
      if (v3 < 1)
      {
        return;
      }

      v4 = 0;
      v5 = v2 + 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v6 = v2 - 1;
        if ((v1 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x20F2E7A20](v4, v1);
          v10 = MEMORY[0x20F2E7A20](v2 - 1, v1);
          goto LABEL_10;
        }

        v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4 >= v7)
        {
          break;
        }

        if (v6 >= v7)
        {
          goto LABEL_25;
        }

        v8 = *(v1 + 8 * v2 + 24);
        v9 = *(v1 + 8 * v4 + 32);
        v10 = v8;
LABEL_10:
        v11 = v10;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
          v12 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v12) = 0;
        }

        v13 = v1 & 0xFFFFFFFFFFFFFF8;
        v14 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v11;

        if ((v1 & 0x8000000000000000) != 0 || v12)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
          v13 = v1 & 0xFFFFFFFFFFFFFF8;
        }

        if (v6 >= *(v13 + 16))
        {
          goto LABEL_24;
        }

        v15 = v13 + 8 * v2;
        v16 = *(v15 + 24);
        *(v15 + 24) = v9;

        *v0 = v1;
        if (v5 == v4)
        {
          goto LABEL_26;
        }

        ++v4;
        v17 = v2 - 2;
        --v2;
        if (v4 >= v17)
        {
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      if (!__CocoaSet.count.getter())
      {
        return;
      }

      v2 = __CocoaSet.count.getter();
      v3 = v2 - 1;
    }

    __break(1u);
  }
}

void CompoundActivityTypeProvider.setActivityPickerActivityMoveMode(_:defaultActivityTypes:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 1);
  isa = v6[8].isa;
  MEMORY[0x28223BE20](v5);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v69 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v59 - v14;
  v16 = *(v2 + 16);
  if ((a1 == 2) != [*(v16 + 16) isWorkoutPickerFitnessJrModeEnabled])
  {
    [*(v16 + 16) setWorkoutPickerFitnessJrModeEnabled_];
    if (a1 != 2)
    {
      return;
    }

    v60 = v16;
    if (a2 >> 62)
    {
      v58 = __CocoaSet.count.getter();
      if (v58)
      {
        a1 = v58;
        v61 = a2 & 0xFFFFFFFFFFFFFF8;
        v72 = MEMORY[0x277D84F90];
        specialized ContiguousArray.reserveCapacity(_:)();
        v17 = __CocoaSet.count.getter();
        if (a1 < 0)
        {
          __break(1u);
          swift_once();
          v44 = type metadata accessor for Logger();
          __swift_project_value_buffer(v44, static WOLog.activityPicker);
          v45 = v5;
          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            *v48 = 138412290;
            v50 = v5;
            v51 = _swift_stdlib_bridgeErrorToNSError();
            *(v48 + 4) = v51;
            *v49 = v51;
            _os_log_impl(&dword_20AEA4000, v46, v47, "Failed to write activity types: %@", v48, 0xCu);
            _s10Foundation4DateVSgWOhTm_9(v49, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            MEMORY[0x20F2E9420](v49, -1, -1);
            MEMORY[0x20F2E9420](v48, -1, -1);
          }

          else
          {
          }

          return;
        }

        goto LABEL_6;
      }
    }

    else
    {
      a1 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a1)
      {
        v72 = MEMORY[0x277D84F90];
        specialized ContiguousArray.reserveCapacity(_:)();
        v61 = a2 & 0xFFFFFFFFFFFFFF8;
        v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
        v65 = a1;
        v66 = v9;
        v18 = 0;
        v19 = a2;
        v67 = a2;
        v68 = a2 & 0xC000000000000001;
        v62 = &v6[6];
        v63 = &v6[7];
        v70 = v6 + 4;
        v20 = v17 + 3;
        v21 = v69;
        v64 = v17;
        while ((v17 ^ v18) != 0x8000000000000000)
        {
          v25 = v20 - 4;
          if (v68)
          {
            v26 = MEMORY[0x20F2E7A20](v25, v19);
          }

          else
          {
            if ((v25 & 0x8000000000000000) != 0)
            {
              goto LABEL_30;
            }

            if (v25 >= *(v61 + 16))
            {
              goto LABEL_31;
            }

            v26 = *(v19 + 8 * v20);
          }

          v27 = v26;
          (*v63)(v15, 1, 1, v5);
          v28 = type metadata accessor for ActivityTypeListItem();
          v29 = objc_allocWithZone(v28);
          *&v29[OBJC_IVAR____TtC11WorkoutCore20ActivityTypeListItem_activityType] = v27;
          a1 = v15;
          outlined init with copy of Date?(v15, v21);
          v30 = *v62;
          if ((*v62)(v21, 1, v5) == 1)
          {
            v31 = v27;
            v32 = v66;
            static Date.now.getter();
            v33 = v30(v69, 1, v5);
            v22 = v32;
            v21 = v69;
            if (v33 != 1)
            {
              _s10Foundation4DateVSgWOhTm_9(v69, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            }
          }

          else
          {
            v22 = v66;
            (v70->isa)(v66, v21, v5);
            v23 = v27;
          }

          ++v18;
          (v70->isa)(&v29[OBJC_IVAR____TtC11WorkoutCore20ActivityTypeListItem_orderDate], v22, v5);
          v71.receiver = v29;
          v71.super_class = v28;
          objc_msgSendSuper2(&v71, sel_init);

          v15 = a1;
          _s10Foundation4DateVSgWOhTm_9(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v24 = v72[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v20;
          v17 = v64;
          v19 = v67;
          if (v65 == v18)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }
    }

LABEL_24:
    v38 = type metadata accessor for JSONEncoder();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    JSONEncoder.init()();

    v42 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11WorkoutCore20ActivityTypeListItemC_SayAFGTt0g5Tf4g_n(v41);

    v43 = specialized _copyCollectionToContiguousArray<A>(_:)(v42);

    v72 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore20ActivityTypeListItemCGMd, &_sSay11WorkoutCore20ActivityTypeListItemCGMR);
    lazy protocol witness table accessor for type [ActivityTypeListItem] and conformance <A> [A]();
    v52 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v54 = v53;

    v55 = v60[2];
    v56 = MEMORY[0x20F2E6C00](v60[3], v60[4]);
    v57 = Data._bridgeToObjectiveC()().super.isa;
    [v55 writeDataPerGizmoDomainAndKey:v56 data:v57];

    outlined consume of Data._Representation(v52, v54);

    return;
  }

  if (one-time initialization token for activityPicker != -1)
  {
LABEL_32:
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static WOLog.activityPicker);
  v70 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v70, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 67109120;
    *(v36 + 4) = a1 == 2;
    _os_log_impl(&dword_20AEA4000, v70, v35, "Activity picker tinker mode: %{BOOL}d is already set. Not modifying activity types.", v36, 8u);
    MEMORY[0x20F2E9420](v36, -1, -1);
  }

  v37 = v70;
}

uint64_t CompoundActivityTypeProvider.didPopulateBlock.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_20AED5538(v1);
  return v1;
}

uint64_t CompoundActivityTypeProvider.didPopulateBlock.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  v6 = *(v2 + 64);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v5);
}

uint64_t key path getter for CompoundActivityTypeProvider.didPopulateBlock : CompoundActivityTypeProvider@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
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
    v7 = _sIeg_ytIegr_TRTA_3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20AED5538(v4);
}

uint64_t key path setter for CompoundActivityTypeProvider.didPopulateBlock : CompoundActivityTypeProvider(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _sytIegr_Ieg_TRTA_3;
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
  sub_20AED5538(v3);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
}

uint64_t CompoundActivityTypeProvider.isHidden(activityType:)(void *a1)
{
  v3 = *(*(v1 + 16) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore20ActivityTypeListItemCGMd, &_sSay11WorkoutCore20ActivityTypeListItemCGMR);
  OS_dispatch_queue.sync<A>(execute:)();
  v4 = v20;
  if (v20 >> 62)
  {
    goto LABEL_24;
  }

  v5 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_25;
  }

LABEL_3:
  v21 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x20F2E7A20](v7, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      v10 = *&v8[OBJC_IVAR____TtC11WorkoutCore20ActivityTypeListItem_activityType];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v11 = *(v21 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v5 != v7);

    v4 = v21;
    if (v21 >> 62)
    {
      while (1)
      {
        v12 = __CocoaSet.count.getter();
        if (!v12)
        {
          break;
        }

LABEL_11:
        _sSo8NSObjectCMaTm_1(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
        v13 = 0;
        while (1)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x20F2E7A20](v13, v4);
          }

          else
          {
            if (v13 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_23;
            }

            v14 = *(v4 + 8 * v13 + 32);
          }

          v15 = v14;
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
            v17 = [a1 isStandard];
            v18 = [v15 isStandard];

            if (v17 == v18)
            {
              v19 = 0;
              goto LABEL_28;
            }
          }

          else
          {
          }

          ++v13;
          if (v16 == v12)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        v5 = __CocoaSet.count.getter();
        if (v5)
        {
          goto LABEL_3;
        }

LABEL_25:

        v4 = MEMORY[0x277D84F90];
        if (!(MEMORY[0x277D84F90] >> 62))
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        goto LABEL_11;
      }
    }

LABEL_27:
    v19 = 1;
LABEL_28:

    return v19;
  }

  return result;
}

void CompoundActivityTypeProvider.hide(activityType:)(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  ActivityPickerListStore.removeActivityType(_:)(a1);
  if (one-time initialization token for activityPicker != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static WOLog.activityPicker);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22[0] = v11;
    *v9 = 138412546;
    *(v9 + 4) = v6;
    *v10 = v6;
    *(v9 + 12) = 2080;
    v12 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v13 = Optional.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v22);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_20AEA4000, v7, v8, "[CompoundActivityTypeProvider] Hiding %@. ActivityPickerListStore's removeActivityType return with result %s", v9, 0x16u);
    _s10Foundation4DateVSgWOhTm_9(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x20F2E9420](v11, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  v16 = [objc_opt_self() defaultCenter];
  v17 = *(v2 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  v22[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22[1] = v19;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = _sSo8NSObjectCMaTm_1(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
  *(inited + 72) = v6;
  v20 = v6;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  _s10Foundation4DateVSgWOhTm_9(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v16 postNotificationName:v17 object:0 userInfo:isa];
}

void CompoundActivityTypeProvider.show(activityType:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v16 - v6;
  v8 = *(v1 + 16);
  static Date.now.getter();
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  ActivityPickerListStore.addActivityType(_:date:)(a1, v7);
  _s10Foundation4DateVSgWOhTm_9(v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = [objc_opt_self() defaultCenter];
  v11 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  v16[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16[1] = v13;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = _sSo8NSObjectCMaTm_1(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
  *(inited + 72) = a1;
  v14 = a1;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  _s10Foundation4DateVSgWOhTm_9(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v10 postNotificationName:v11 object:0 userInfo:isa];
}

uint64_t @objc CompoundActivityTypeProvider.hide(activityType:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v5 = a3;

  a4(v5);
}

uint64_t CompoundActivityTypeProvider.mostRecentOccurrenceDate(for:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = WorkoutConfigurationOccurrenceStore.recentWorkoutConfiguration(for:)(a1);
  if (v5)
  {
    v6 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    v7 = v5;
    swift_beginAccess();
    v8 = *&v7[v6];

    v9 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
    swift_beginAccess();
    v10 = type metadata accessor for Date();
    v11 = *(v10 - 8);
    (*(v11 + 16))(a2, &v8[v9], v10);

    return (*(v11 + 56))(a2, 0, 1, v10);
  }

  else
  {
    v13 = type metadata accessor for Date();
    v14 = *(*(v13 - 8) + 56);

    return v14(a2, 1, 1, v13);
  }
}

uint64_t CompoundActivityTypeProvider.registerWorkoutOccurrence(with:goal:date:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  result = [objc_opt_self() isRunningInStoreDemoMode];
  if ((result & 1) == 0)
  {
    v11 = *(v3 + 16);
    v12 = type metadata accessor for Date();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v9, a3, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    ActivityPickerListStore.addActivityType(_:date:)(a1, v9);
    return _s10Foundation4DateVSgWOhTm_9(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  return result;
}

uint64_t CompoundActivityTypeProvider.numberOfCompletedActivities(for:)(void *a1)
{
  v2 = *(v1 + 24);
  v3 = WorkoutConfigurationOccurrenceStore.configurations(for:)(a1);
  v4 = v3;
  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_17:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v8 = 0;
  while (v6 != v7)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x20F2E7A20](v7, v4);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_15;
      }

      v9 = *(v4 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v11 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    swift_beginAccess();
    v12 = *&v10[v11];

    v13 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
    swift_beginAccess();
    v14 = *&v12[v13];

    ++v7;
    v15 = __OFADD__(v8, v14);
    v8 += v14;
    if (v15)
    {
      goto LABEL_16;
    }
  }

  return v8;
}

uint64_t CompoundActivityTypeProvider.inferLocationType(for:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:a1 isIndoor:1];
  v30 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:a1 isIndoor:0];
  v4 = *(v1 + 24);
  v5 = WorkoutConfigurationOccurrenceStore.configurations(for:)(v3);
  v6 = v5;
  v29 = v3;
  v7 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
LABEL_41:
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v10 = 0;
  while (v8 != v9)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x20F2E7A20](v9, v6);
    }

    else
    {
      if (v9 >= *(v7 + 16))
      {
        goto LABEL_36;
      }

      v11 = *(v6 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v13 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    swift_beginAccess();
    v14 = *&v12[v13];

    v15 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
    swift_beginAccess();
    v16 = *&v14[v15];

    ++v9;
    v17 = __OFADD__(v10, v16);
    v10 += v16;
    if (v17)
    {
      goto LABEL_37;
    }
  }

  v18 = WorkoutConfigurationOccurrenceStore.configurations(for:)(v30);
  v19 = v18;
  v7 = v18 & 0xFFFFFFFFFFFFFF8;
  if (v18 >> 62)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = 0;
  v21 = 0;
  while (v6 != v20)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x20F2E7A20](v20, v19);
    }

    else
    {
      if (v20 >= *(v7 + 16))
      {
        goto LABEL_39;
      }

      v22 = *(v19 + 8 * v20 + 32);
    }

    v23 = v22;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_38;
    }

    v24 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    swift_beginAccess();
    v25 = *&v23[v24];

    v26 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
    swift_beginAccess();
    v27 = *&v25[v26];

    ++v20;
    v17 = __OFADD__(v21, v27);
    v21 += v27;
    if (v17)
    {
      goto LABEL_40;
    }
  }

  if (__OFADD__(v10, v21))
  {
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    return result;
  }

  if (v10 + v21 < 1)
  {
    return 1;
  }

  if ((v21 * 3) >> 64 != (3 * v21) >> 63)
  {
    goto LABEL_44;
  }

  if (v10 >= 3 * v21)
  {
    return 2;
  }

  if ((v10 * 3) >> 64 != (3 * v10) >> 63)
  {
    goto LABEL_45;
  }

  if (v21 < 3 * v10)
  {
    return 1;
  }

  return 3;
}

uint64_t CompoundActivityTypeProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 64);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 56));
  return v0;
}

uint64_t CompoundActivityTypeProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 64);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 56));

  return swift_deallocClassInstance();
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_89:
    v11 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    }

    v90 = *(v9 + 2);
    if (v90 >= 2)
    {
      do
      {
        v91 = *v6;
        if (!*v6)
        {
          goto LABEL_125;
        }

        v6 = (v90 - 1);
        v92 = *&v9[16 * v90];
        v93 = *&v9[16 * v90 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((v91 + 8 * v92), (v91 + 8 * *&v9[16 * v90 + 16]), (v91 + 8 * v93), v11);
        if (v5)
        {
          break;
        }

        if (v93 < v92)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v90 - 2 >= *(v9 + 2))
        {
          goto LABEL_115;
        }

        v94 = &v9[16 * v90];
        *v94 = v92;
        *(v94 + 1) = v93;
        specialized Array.remove(at:)(v90 - 1);
        v90 = *(v9 + 2);
        v6 = a3;
      }

      while (v90 > 1);
    }

LABEL_99:

    return;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    v11 = (v8 + 1);
    if (v8 + 1 < v7)
    {
      v103 = v7;
      v97 = v9;
      v12 = *v6;
      v13 = *(*v6 + 8 * v11);
      v6 = (8 * v10);
      v14 = v10;
      v15 = (v12 + 8 * v10);
      v17 = *v15;
      v16 = v15 + 2;
      v18 = v13;
      v19 = v17;
      v105 = static Date.> infix(_:_:)();

      v9 = v14;
      v20 = (v14 + 2);
      while (1)
      {
        v11 = v103;
        if (v103 == v20)
        {
          break;
        }

        v21 = *(v16 - 1);
        v22 = *v16;
        v23 = v21;
        LODWORD(v21) = static Date.> infix(_:_:)() & 1;

        v20 = (v20 + 1);
        ++v16;
        if ((v105 & 1) != v21)
        {
          v11 = (v20 - 1);
          break;
        }
      }

      v10 = v9;
      if ((v105 & 1) == 0)
      {
        goto LABEL_18;
      }

      if (v11 < v9)
      {
        goto LABEL_118;
      }

      if (v9 < v11)
      {
        v24 = 8 * v11 - 8;
        v25 = v11;
        v26 = v9;
        v9 = v97;
        do
        {
          v25 = (v25 - 1);
          if (v26 != v25)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_124;
            }

            v27 = *(v6 + v28);
            *(v6 + v28) = *(v28 + v24);
            *(v28 + v24) = v27;
          }

          ++v26;
          v24 -= 8;
          ++v6;
        }

        while (v26 < v25);
        v6 = a3;
      }

      else
      {
LABEL_18:
        v6 = a3;
        v9 = v97;
      }
    }

    v29 = v6[1];
    if (v11 < v29)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_117;
      }

      if (v11 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_119;
        }

        if (&v10[a4] >= v29)
        {
          v30 = v6[1];
        }

        else
        {
          v30 = &v10[a4];
        }

        if (v30 < v10)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v11 != v30)
        {
          break;
        }
      }
    }

LABEL_38:
    if (v11 < v10)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v45 = *(v9 + 2);
    v44 = *(v9 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v9);
    }

    *(v9 + 2) = v46;
    v47 = &v9[16 * v45];
    *(v47 + 4) = v10;
    *(v47 + 5) = v11;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v107 = v11;
    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v9 + 4);
          v51 = *(v9 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_58:
          if (v53)
          {
            goto LABEL_105;
          }

          v66 = &v9[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_108;
          }

          v72 = &v9[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_112;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        v76 = &v9[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_72:
        if (v71)
        {
          goto LABEL_107;
        }

        v79 = &v9[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_110;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_79:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*v6)
        {
          goto LABEL_123;
        }

        v88 = *&v9[16 * v87 + 32];
        v11 = *&v9[16 * v49 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 8 * v88), (*v6 + 8 * *&v9[16 * v49 + 32]), (*v6 + 8 * v11), v48);
        if (v5)
        {
          goto LABEL_99;
        }

        if (v11 < v88)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v87 >= *(v9 + 2))
        {
          goto LABEL_102;
        }

        v89 = &v9[16 * v87];
        *(v89 + 4) = v88;
        *(v89 + 5) = v11;
        specialized Array.remove(at:)(v49);
        v46 = *(v9 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v9[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_103;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_104;
      }

      v61 = &v9[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_106;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_109;
      }

      if (v65 >= v57)
      {
        v83 = &v9[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_113;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

LABEL_3:
    v7 = v6[1];
    v8 = v107;
    if (v107 >= v7)
    {
      goto LABEL_89;
    }
  }

  v98 = v9;
  v99 = v5;
  v31 = v10;
  v32 = *v6;
  v33 = *v6 + 8 * v11 - 8;
  v95 = v31;
  v34 = v31 - v11;
  v101 = v30;
LABEL_31:
  v104 = v33;
  v106 = v11;
  v35 = *(v32 + 8 * v11);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    v38 = *v37;
    v39 = v35;
    v40 = v38;
    v41 = static Date.> infix(_:_:)();

    if ((v41 & 1) == 0)
    {
LABEL_30:
      v11 = (v106 + 1);
      v33 = v104 + 8;
      --v34;
      if ((v106 + 1) != v101)
      {
        goto LABEL_31;
      }

      v11 = v101;
      v9 = v98;
      v5 = v99;
      v6 = a3;
      v10 = v95;
      goto LABEL_38;
    }

    if (!v32)
    {
      break;
    }

    v42 = *v37;
    v35 = *(v37 + 8);
    *v37 = v35;
    *(v37 + 8) = v42;
    v37 -= 8;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_30;
    }
  }

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
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v15 = a4;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v37 = &v15[v12];
    if (v10 >= 8 && v5 > v6)
    {
      v35 = v6;
LABEL_27:
      v24 = v5 - 1;
      v25 = v4 - 1;
      v26 = v37;
      do
      {
        v27 = v25;
        v28 = v25 + 1;
        v29 = *--v26;
        v30 = v24;
        v31 = *v24;
        v36 = v29;
        v32 = v31;
        v33 = static Date.> infix(_:_:)();

        if (v33)
        {
          v4 = v27;
          if (v28 != v5)
          {
            *v27 = *v30;
          }

          if (v37 <= v15 || (v5 = v30, v30 <= v35))
          {
            v5 = v30;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v28 != v37)
        {
          *v27 = *v26;
        }

        v25 = v27 - 1;
        v37 = v26;
        v24 = v30;
      }

      while (v26 > v15);
      v37 = v26;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      v14 = a4;
      memmove(a4, __dst, 8 * v9);
      a4 = v14;
      v5 = __src;
    }

    v37 = &a4[v9];
    v15 = a4;
    if (v7 >= 8 && v5 < v4)
    {
      while (1)
      {
        v16 = v4;
        v17 = v6;
        v18 = *v15;
        v19 = *v5;
        v20 = v18;
        LOBYTE(v18) = static Date.> infix(_:_:)();

        if ((v18 & 1) == 0)
        {
          break;
        }

        v21 = v5;
        v22 = v17;
        v23 = v17 == v5++;
        if (!v23)
        {
          goto LABEL_16;
        }

LABEL_17:
        v6 = v22 + 1;
        if (v15 < v37)
        {
          v4 = v16;
          if (v5 < v16)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      v21 = v15;
      v22 = v17;
      v23 = v17 == v15++;
      if (v23)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v22 = *v21;
      goto LABEL_17;
    }

LABEL_19:
    v5 = v6;
  }

LABEL_38:
  if (v5 != v15 || v5 >= (v15 + ((v37 - v15 + (v37 - v15 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v15, 8 * ((v37 - v15) / 8));
  }

  return 1;
}

void *specialized CompoundActivityTypeProvider.init(occurrenceStore:domainAccessor:deprecatedSmartGoalStore:)(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v3[4] = 0;
  v3[5] = MEMORY[0x20F2E6C00](0xD000000000000023, 0x800000020B461C20);
  v3[6] = MEMORY[0x20F2E6C00](0xD000000000000023, 0x800000020B461C50);
  type metadata accessor for ActivityPickerListStore();
  v3[7] = 0;
  v3[8] = 0;
  swift_allocObject();
  v7 = swift_unknownObjectRetain();
  v3[2] = ActivityPickerListStore.init(domainAccessor:)(v7);
  v3[3] = a1;
  v8 = v3[4];
  v4[4] = a3;
  v9 = a1;
  v10 = a3;

  v11 = [objc_opt_self() defaultCenter];
  [v11 addObserver:v4 selector:sel_handleDomainAccessorRefresh name:@"WONPSDomainAccessorDidRefreshNotification" object:0];

  CompoundActivityTypeProvider.performMigrationIfNeeded()();
  return v4;
}

unint64_t lazy protocol witness table accessor for type [ActivityTypeListItem] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [ActivityTypeListItem] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ActivityTypeListItem] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore20ActivityTypeListItemCGMd, &_sSay11WorkoutCore20ActivityTypeListItemCGMR);
    lazy protocol witness table accessor for type ActivityTypeListItem and conformance ActivityTypeListItem();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ActivityTypeListItem] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ActivityTypeListItem and conformance ActivityTypeListItem()
{
  result = lazy protocol witness table cache variable for type ActivityTypeListItem and conformance ActivityTypeListItem;
  if (!lazy protocol witness table cache variable for type ActivityTypeListItem and conformance ActivityTypeListItem)
  {
    type metadata accessor for ActivityTypeListItem();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivityTypeListItem and conformance ActivityTypeListItem);
  }

  return result;
}

void specialized CompoundActivityTypeProvider.handleDomainAccessorRefresh()()
{
  if (one-time initialization token for activityPicker != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static WOLog.activityPicker);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_20AEA4000, v1, v2, "WONPSDomainAccessor refreshed, posting ActivityPickerListStore sync notification", v3, 2u);
    MEMORY[0x20F2E9420](v3, -1, -1);
  }

  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  v5 = *MEMORY[0x277CBECE8];
  v6 = kCFStringEncodingASCII.getter();
  v7 = String.utf8CString.getter();
  name = CFStringCreateWithCString(v5, (v7 + 32), v6);

  if (name)
  {
    CFNotificationCenterPostNotification(v4, name, 0, 0, 1u);
  }

  else
  {
    __break(1u);
  }
}

uint64_t _sSo8NSObjectCMaTm_1(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _s10Foundation4DateVSgWOhTm_9(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sytIegr_Ieg_TRTA_3()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id GCDTimer.init(timeInterval:queue:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v55 = a2;
  v56 = a3;
  v62 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v60 = *(v4 - 8);
  v61 = v4;
  v5 = *(v60 + 64);
  MEMORY[0x28223BE20](v4);
  v57 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v58 = *(v7 - 8);
  v59 = v7;
  v8 = *(v58 + 64);
  MEMORY[0x28223BE20](v7);
  v54 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTimeInterval();
  v52 = *(v10 - 8);
  v53 = v10;
  v11 = *(v52 + 64);
  MEMORY[0x28223BE20](v10);
  v51 = (&v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = type metadata accessor for DispatchTime();
  v49 = *(v50 - 8);
  v13 = *(v49 + 64);
  v14 = MEMORY[0x28223BE20](v50);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v48 = &v46 - v17;
  v18 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC11WorkoutCore8GCDTimer_source;
  *(v3 + OBJC_IVAR____TtC11WorkoutCore8GCDTimer_source) = 0;
  type metadata accessor for OS_dispatch_source();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags(&lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags, MEMORY[0x277D85278]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, _sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_source.TimerFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_source.TimerFlags] and conformance [A], &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, _sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v19 + 8))(v22, v18);
  v25 = v47;
  v26 = *&v47[v23];
  *&v47[v23] = v24;
  v27 = v25;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v28 = type metadata accessor for GCDTimer();
  v64.receiver = v27;
  v64.super_class = v28;
  v29 = objc_msgSendSuper2(&v64, sel_init);
  ObjectType = swift_getObjectType();
  v31 = v29;
  static DispatchTime.now()();
  v32 = v48;
  + infix(_:_:)();
  v33 = *(v49 + 8);
  v34 = v50;
  v33(v16, v50);
  v35 = v51;
  *v51 = 50;
  v37 = v52;
  v36 = v53;
  (*(v52 + 104))(v35, *MEMORY[0x277D85178], v53);
  MEMORY[0x20F2E76A0](v32, v35, ObjectType, INFINITY);
  (*(v37 + 8))(v35, v36);
  v33(v32, v34);
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = swift_allocObject();
  v40 = v55;
  v41 = v56;
  v39[2] = v38;
  v39[3] = v40;
  v39[4] = v41;
  aBlock[4] = partial apply for closure #1 in GCDTimer.init(timeInterval:queue:completion:);
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_46;
  v42 = _Block_copy(aBlock);

  v43 = v54;
  static DispatchQoS.unspecified.getter();
  v44 = v57;
  default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v42);

  swift_unknownObjectRelease();

  (*(v60 + 8))(v44, v61);
  (*(v58 + 8))(v43, v59);

  return v31;
}

void closure #1 in GCDTimer.init(timeInterval:queue:completion:)(uint64_t a1, void (*a2)(char *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC11WorkoutCore8GCDTimer_source;
    if (*(Strong + OBJC_IVAR____TtC11WorkoutCore8GCDTimer_source))
    {
      v6 = *(Strong + OBJC_IVAR____TtC11WorkoutCore8GCDTimer_source);
      swift_getObjectType();
      swift_unknownObjectRetain();
      OS_dispatch_source.cancel()();
      swift_unknownObjectRelease();
      v7 = *&v4[v5];
      *&v4[v5] = 0;
      swift_unknownObjectRelease();
    }

    a2(v4);
  }
}

uint64_t default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)()
{
  type metadata accessor for DispatchWorkItemFlags();
  lazy protocol witness table accessor for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_source.TimerFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

id GCDTimer.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore8GCDTimer_source;
  if (*&v0[OBJC_IVAR____TtC11WorkoutCore8GCDTimer_source])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
    v2 = *&v0[v1];
    *&v0[v1] = 0;
    swift_unknownObjectRelease();
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for GCDTimer();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t type metadata accessor for OS_dispatch_source()
{
  result = lazy cache variable for type metadata for OS_dispatch_source;
  if (!lazy cache variable for type metadata for OS_dispatch_source)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_source);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type [OS_dispatch_source.TimerFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for RaceLocation(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RaceLocation(uint64_t result, int a2, int a3)
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

uint64_t key path getter for MachineElapsedTimeAccumulator.timelineStartDate : MachineElapsedTimeAccumulator(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path setter for MachineElapsedTimeAccumulator.timelineStartDate : MachineElapsedTimeAccumulator(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for Date();
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

uint64_t MachineElapsedTimeAccumulator.timelineStartDate.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t MachineElapsedTimeAccumulator.timelineStartDate.setter(uint64_t a1)
{
  v3 = type metadata accessor for Date();
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

void (*MachineElapsedTimeAccumulator.timelineStartDate.modify(uint64_t *a1))(void *a1)
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
  return MachineElapsedTimeAccumulator.timelineStartDate.modify;
}

void MachineElapsedTimeAccumulator.timelineStartDate.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path getter for MachineElapsedTimeAccumulator.$timelineStartDate : MachineElapsedTimeAccumulator(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVGMd, &_s7Combine9PublishedVy10Foundation4DateVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for MachineElapsedTimeAccumulator.$timelineStartDate : MachineElapsedTimeAccumulator(uint64_t a1, uint64_t *a2)
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

uint64_t MachineElapsedTimeAccumulator.$timelineStartDate.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVGMd, &_s7Combine9PublishedVy10Foundation4DateVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t MachineElapsedTimeAccumulator.$timelineStartDate.setter(uint64_t a1)
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

void (*MachineElapsedTimeAccumulator.$timelineStartDate.modify(uint64_t *a1))(uint64_t a1, char a2)
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

  v10 = OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator__timelineStartDate;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVGMd, &_s7Combine9PublishedVy10Foundation4DateVGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MachineElapsedTimeAccumulator.$timelineStartDate.modify;
}

void MachineElapsedTimeAccumulator.$timelineStartDate.modify(uint64_t a1, char a2)
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

Swift::Void __swiftcall MachineElapsedTimeAccumulator.setElapsedTime(_:)(Swift::Double a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v18 - v10;
  v12 = OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator__elapsedTime;
  if (*&v1[OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator__elapsedTime] != a1)
  {
    *&v1[OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator__elapsedTime] = a1;
    v13 = OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator_timelineInvalidated;
    if (v1[OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator_timelineInvalidated] == 1)
    {
      v14 = v9;
      Date.init()();
      swift_getKeyPath();
      swift_getKeyPath();
      (*(v4 + 16))(v8, v11, v14);
      v15 = v1;
      static Published.subscript.setter();
      (*(v4 + 8))(v11, v14);
      *&v15[OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator_elapsedTimeAtTimelineStartDate] = *&v1[v12];
      v1[v13] = 0;
    }

    v16 = [v1 updateHandler];
    if (v16)
    {
      v17 = v16;
      (*(v16 + 2))();
      _Block_release(v17);
    }
  }
}

uint64_t MachineElapsedTimeAccumulator.elapsedTime(at:)()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = MEMORY[0x28223BE20](v1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator_workoutStarted) == 1 && (*(v0 + OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator_workoutPaused) & 1) == 0)
  {
    v8 = *(v0 + OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator_elapsedTimeAtTimelineStartDate);
    v9 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    Date.timeIntervalSince(_:)();
    return (*(v2 + 8))(v6, v9);
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator__elapsedTime);
  }

  return result;
}

id MachineElapsedTimeAccumulator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MachineElapsedTimeAccumulator.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVGMd, &_s7Combine9PublishedVy10Foundation4DateVGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  *&v0[OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator_elapsedTimeAtTimelineStartDate] = 0;
  *&v0[OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator__elapsedTime] = 0;
  v0[OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator_timelineInvalidated] = 1;
  v14 = OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator__timelineStartDate;
  Date.init()();
  (*(v7 + 16))(v11, v13, v6);
  Published.init(initialValue:)();
  (*(v7 + 8))(v13, v6);
  (*(v2 + 32))(&v0[v14], v5, v1);
  v0[OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator_workoutPaused] = 0;
  v0[OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator_workoutStarted] = 0;
  v15 = type metadata accessor for MachineElapsedTimeAccumulator();
  v17.receiver = v0;
  v17.super_class = v15;
  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t type metadata accessor for MachineElapsedTimeAccumulator()
{
  result = type metadata singleton initialization cache for MachineElapsedTimeAccumulator;
  if (!type metadata singleton initialization cache for MachineElapsedTimeAccumulator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id MachineElapsedTimeAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MachineElapsedTimeAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for TimeProviding.timelineStartDate.getter in conformance MachineElapsedTimeAccumulator()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance MachineElapsedTimeAccumulator@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MachineElapsedTimeAccumulator();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t specialized MachineElapsedTimeAccumulator.sessionActivity(_:didChangeFrom:to:)(unint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v17 - v12;
  if (a2 <= 9)
  {
    if (((1 << a2) & 0x338) != 0)
    {
      v14 = &OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator_workoutPaused;
LABEL_4:
      v2[*v14] = 1;
      return result;
    }

    if (a2 == 6)
    {
      v15 = result;
      if (a1 <= 2)
      {
        v2[OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator_workoutStarted] = 1;
      }

      v2[OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator_workoutPaused] = 0;
      Date.init()();
      swift_getKeyPath();
      swift_getKeyPath();
      (*(v6 + 16))(v10, v13, v15);
      v16 = v2;
      static Published.subscript.setter();
      result = (*(v6 + 8))(v13, v15);
      *&v16[OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator_elapsedTimeAtTimelineStartDate] = *&v16[OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator__elapsedTime];
      v14 = &OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator_timelineInvalidated;
      goto LABEL_4;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for MachineElapsedTimeAccumulator(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MachineElapsedTimeAccumulator and conformance MachineElapsedTimeAccumulator();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MachineElapsedTimeAccumulator and conformance MachineElapsedTimeAccumulator()
{
  result = lazy protocol witness table cache variable for type MachineElapsedTimeAccumulator and conformance MachineElapsedTimeAccumulator;
  if (!lazy protocol witness table cache variable for type MachineElapsedTimeAccumulator and conformance MachineElapsedTimeAccumulator)
  {
    type metadata accessor for MachineElapsedTimeAccumulator();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MachineElapsedTimeAccumulator and conformance MachineElapsedTimeAccumulator);
  }

  return result;
}

void type metadata completion function for MachineElapsedTimeAccumulator()
{
  type metadata accessor for Published<Date>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<Date>()
{
  if (!lazy cache variable for type metadata for Published<Date>)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Date>);
    }
  }
}

unint64_t WorkoutDeviceType.defaultSystemImage.getter()
{
  v1 = 0x7073646F70726961;
  v2 = 0x69662E7472616568;
  if (*v0 != 2)
  {
    v2 = 0x656E6F687069;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000015;
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

Swift::Int WorkoutDeviceType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutDeviceType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutDeviceType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

unint64_t WorkoutDeviceType.description.getter()
{
  v1 = 0x6863746177;
  v2 = 0x656E6F6870;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000016;
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

unint64_t lazy protocol witness table accessor for type WorkoutDeviceType and conformance WorkoutDeviceType()
{
  result = lazy protocol witness table cache variable for type WorkoutDeviceType and conformance WorkoutDeviceType;
  if (!lazy protocol witness table cache variable for type WorkoutDeviceType and conformance WorkoutDeviceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutDeviceType and conformance WorkoutDeviceType);
  }

  return result;
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkoutDeviceType()
{
  v1 = 0x6863746177;
  v2 = 0x656E6F6870;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000016;
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

uint64_t getEnumTagSinglePayload for WorkoutDeviceType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutDeviceType(uint64_t result, unsigned int a2, unsigned int a3)
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

WorkoutCore::RaceChartPoint __swiftcall RaceChartPoint.init(odometer_m:altitude_m:)(Swift::Double odometer_m, Swift::Double altitude_m)
{
  *v2 = odometer_m;
  v2[1] = altitude_m;
  result.altitude_m = altitude_m;
  result.odometer_m = odometer_m;
  return result;
}

Swift::Int RaceChartPoint.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x20F2E8020](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x20F2E8020](*&v4);
  return Hasher._finalize()();
}

uint64_t RaceChartPoint.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x20F2E8020](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x20F2E8020](*&v3);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RaceChartPoint.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RaceChartPoint.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance RaceChartPoint.CodingKeys()
{
  if (*v0)
  {
    return 0x6564757469746C61;
  }

  else
  {
    return 0x726574656D6F646FLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RaceChartPoint.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726574656D6F646FLL && a2 == 0xEA00000000006D5FLL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6564757469746C61 && a2 == 0xEA00000000006D5FLL)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RaceChartPoint.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RaceChartPoint.CodingKeys and conformance RaceChartPoint.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RaceChartPoint.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RaceChartPoint.CodingKeys and conformance RaceChartPoint.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RaceChartPoint.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore14RaceChartPointV10CodingKeys33_CE97703FA320D003D66F4F0F1F3EABECLLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore14RaceChartPointV10CodingKeys33_CE97703FA320D003D66F4F0F1F3EABECLLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  v10 = *v1;
  v9 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RaceChartPoint.CodingKeys and conformance RaceChartPoint.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t RaceChartPoint.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore14RaceChartPointV10CodingKeys33_CE97703FA320D003D66F4F0F1F3EABECLLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore14RaceChartPointV10CodingKeys33_CE97703FA320D003D66F4F0F1F3EABECLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RaceChartPoint.CodingKeys and conformance RaceChartPoint.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v11;
    v17 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v14 = v13;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RaceChartPoint()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x20F2E8020](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x20F2E8020](*&v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Identifiable.id.getter in conformance RaceChartPoint@<X0>(Swift::Int *a1@<X8>)
{
  v4 = *v1;
  result = RaceChartPoint.hashValue.getter();
  *a1 = result;
  return result;
}

uint64_t RaceChartPoint.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(28);
  MEMORY[0x20F2E6D80](0x726574656D6F646FLL, 0xEB000000003D6D5FLL);
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0x757469746C61202CLL, 0xED00003D6D5F6564);
  Double.write<A>(to:)();
  return 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RaceChartPoint()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(28);
  MEMORY[0x20F2E6D80](0x726574656D6F646FLL, 0xEB000000003D6D5FLL);
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0x757469746C61202CLL, 0xED00003D6D5F6564);
  Double.write<A>(to:)();
  return 0;
}

int64_t specialized static RaceChartPoint.canonicalRoutePoints.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v0 = swift_allocObject();
  result = _swift_stdlib_malloc_size_5(v0);
  v2 = 0;
  v3 = result - 32;
  if (result < 32)
  {
    v3 = result - 25;
  }

  v0[2] = 1001;
  v0[3] = 2 * (v3 >> 3);
  v4 = 4;
  while (1)
  {
    if (v2 == 1000)
    {
      v5 = 0;
    }

    else
    {
      v5 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        return result;
      }
    }

    v0[v4] = v2;
    if (v4 == 1004)
    {
      break;
    }

    ++v4;
    v6 = v2 == 1000;
    v2 = v5;
    if (v6)
    {
      __break(1u);
      break;
    }
  }

  v7 = v0[2];
  if (v7)
  {
    v13 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v8 = 4;
    do
    {
      [objc_allocWithZone(MEMORY[0x277CBFC78]) initWithLatitude:1 longitude:32.0 altitude:32.0 odometer:(sin(v0[v8] / 20.0) * 5.0 + 200.0) timestamp:v0[v8] * 5.0 signalEnvironmentType:v0[v8] * 2.5];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v9 = *(v13 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v8;
      --v7;
    }

    while (v7);

    v10 = v13;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  v11 = specialized _arrayForceCast<A, B>(_:)(v10);

  type metadata accessor for RaceElevationChartPointProvider();
  swift_allocObject();
  v12 = *(RaceElevationChartPointProvider.init(_:numberOfPoints:)(v11, 0, 1) + 16);

  return v12;
}

unint64_t lazy protocol witness table accessor for type RaceChartPoint.CodingKeys and conformance RaceChartPoint.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RaceChartPoint.CodingKeys and conformance RaceChartPoint.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaceChartPoint.CodingKeys and conformance RaceChartPoint.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceChartPoint.CodingKeys and conformance RaceChartPoint.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RaceChartPoint.CodingKeys and conformance RaceChartPoint.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaceChartPoint.CodingKeys and conformance RaceChartPoint.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceChartPoint.CodingKeys and conformance RaceChartPoint.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RaceChartPoint.CodingKeys and conformance RaceChartPoint.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaceChartPoint.CodingKeys and conformance RaceChartPoint.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceChartPoint.CodingKeys and conformance RaceChartPoint.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RaceChartPoint.CodingKeys and conformance RaceChartPoint.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaceChartPoint.CodingKeys and conformance RaceChartPoint.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceChartPoint.CodingKeys and conformance RaceChartPoint.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RaceChartPoint and conformance RaceChartPoint()
{
  result = lazy protocol witness table cache variable for type RaceChartPoint and conformance RaceChartPoint;
  if (!lazy protocol witness table cache variable for type RaceChartPoint and conformance RaceChartPoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceChartPoint and conformance RaceChartPoint);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RaceChartPoint(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RaceChartPoint(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for RaceChartPoint.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RaceChartPoint.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t Apple_Workout_Core_WorkoutNotification.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = 0;
  v2 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  v3 = a1 + *(v2 + 28);
  result = UnknownStorage.init()();
  v5 = a1 + *(v2 + 32);
  *v5 = 0;
  *(v5 + 8) = 1;
  return result;
}

uint64_t Apple_Workout_Core_WorkoutNotification.createdAtSinceReferenceDate.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

double Apple_Workout_Core_WorkoutNotification.createdAtSinceReferenceDate.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutNotification(0) + 32);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Apple_Workout_Core_DataLinkMessage.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = a1 + *(type metadata accessor for Apple_Workout_Core_DataLinkMessage(0) + 20);
  return UnknownStorage.init()();
}

uint64_t Apple_Workout_Core_WorkoutNotificationUnit.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
  v3 = a1 + v2[5];
  UnknownStorage.init()();
  v4 = (a1 + v2[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = a1 + v2[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v2[8];
  v7 = type metadata accessor for Apple_Workout_Core_Activity(0);
  result = (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  v9 = (a1 + v2[9]);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t Apple_Workout_Core_WorkoutNotificationUnit.key.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Apple_Workout_Core_WorkoutNotificationUnit.value.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t Apple_Workout_Core_WorkoutNotificationUnit.stringLiteral.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Apple_Workout_Core_WorkoutNotificationUnit.activityType.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 32);
  outlined destroy of Apple_Workout_Core_Activity?(v1 + v3, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  outlined init with take of Apple_Workout_Core_Activity(a1, v1 + v3, type metadata accessor for Apple_Workout_Core_Activity);
  v4 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Workout_Core_WorkoutNotificationUnit.key.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 24));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

double Apple_Workout_Core_WorkoutNotificationUnit.value.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 28);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Apple_Workout_Core_WorkoutNotificationUnit.stringLiteral.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 36));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL Apple_Workout_Core_WorkoutNotificationUnit.hasActivityType.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
  outlined init with copy of Apple_Workout_Core_Activity?(v0 + *(v5 + 32), v4, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v6 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Apple_Workout_Core_Activity?(v4, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  return v7;
}

uint64_t Apple_Workout_Core_WorkoutNotificationUnit.activityType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
  outlined init with copy of Apple_Workout_Core_Activity?(v1 + *(v7 + 32), v6, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Activity(v6, a1, type metadata accessor for Apple_Workout_Core_Activity);
  }

  *(a1 + 8) = 0;
  *a1 = 0;
  *(a1 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v10 = a1 + *(v8 + 36);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_Activity?(v6, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  }

  return result;
}

uint64_t Apple_Workout_Core_PublisherSequence.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 12) = 0;
  v1 = a1 + *(type metadata accessor for Apple_Workout_Core_PublisherSequence(0) + 24);
  return UnknownStorage.init()();
}

uint64_t Apple_Workout_Core_DataLinkMessage.deltaUpdate.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  outlined init with copy of Apple_Workout_Core_Activity?(v2, &v14 - v6, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v7, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return outlined init with take of Apple_Workout_Core_Activity(v7, a1, type metadata accessor for Apple_Workout_Core_MetricsDelta);
    }

    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  }

  *a1 = MEMORY[0x277D84F90];
  v10 = type metadata accessor for Apple_Workout_Core_MetricsDelta(0);
  v11 = &a1[*(v10 + 20)];
  UnknownStorage.init()();
  v12 = *(v10 + 24);
  v13 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  return (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
}

uint64_t Apple_Workout_Core_NotificationUpdate.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Apple_Workout_Core_NotificationUpdate(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 24);
  v6 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t Apple_Workout_Core_NotificationUpdate.notification.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_NotificationUpdate(0) + 20);
  outlined destroy of Apple_Workout_Core_Activity?(v1 + v3, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  outlined init with take of Apple_Workout_Core_Activity(a1, v1 + v3, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
  v4 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

unint64_t Apple_Workout_Core_Command.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 9;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_Command(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_Command and conformance Apple_Workout_Core_Command();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t Apple_Workout_Core_PublisherKey.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x13;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_PublisherKey(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t Apple_Workout_Core_NotificationType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 8;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_NotificationType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_NotificationType and conformance Apple_Workout_Core_NotificationType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t Apple_Workout_Core_NotificationUnitType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x11;
  *(a2 + 9) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_Command()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_NotificationUnitType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_NotificationUnitType and conformance Apple_Workout_Core_NotificationUnitType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_Command()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Apple_Workout_Core_DataLinkMessage.publisherUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of Apple_Workout_Core_Activity?(v2, &v11 - v6, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v7, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return outlined init with take of Apple_Workout_Core_Activity(v7, a1, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
    }

    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  }

  UnknownStorage.init()();
  v9 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v9) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
}

void (*Apple_Workout_Core_DataLinkMessage.publisherUpdate.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of Apple_Workout_Core_Activity?(v2, v9, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v14 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v9, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of Apple_Workout_Core_Activity(v9, v13, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
      return Apple_Workout_Core_DataLinkMessage.publisherUpdate.modify;
    }

    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v9, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  }

  UnknownStorage.init()();
  v16 = *(v10 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(v13 + v16) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;

  return Apple_Workout_Core_DataLinkMessage.publisherUpdate.modify;
}

uint64_t Apple_Workout_Core_DataLinkMessage.notificationUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  outlined init with copy of Apple_Workout_Core_Activity?(v2, &v15 - v6, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v7, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of Apple_Workout_Core_Activity(v7, a1, type metadata accessor for Apple_Workout_Core_NotificationUpdate);
    }

    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  }

  UnknownStorage.init()();
  v10 = type metadata accessor for Apple_Workout_Core_NotificationUpdate(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  return (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
}

uint64_t key path getter for Apple_Workout_Core_DataLinkMessage.notificationUpdate : Apple_Workout_Core_DataLinkMessage@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  outlined init with copy of Apple_Workout_Core_Activity?(a1, &v15 - v6, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v7, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of Apple_Workout_Core_Activity(v7, a2, type metadata accessor for Apple_Workout_Core_NotificationUpdate);
    }

    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  }

  UnknownStorage.init()();
  v10 = type metadata accessor for Apple_Workout_Core_NotificationUpdate(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  return (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
}

void (*Apple_Workout_Core_DataLinkMessage.notificationUpdate.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Apple_Workout_Core_NotificationUpdate(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of Apple_Workout_Core_Activity?(v2, v9, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v14 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v9, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
LABEL_15:
    UnknownStorage.init()();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    v18 = *(v10 + 24);
    v19 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    return Apple_Workout_Core_DataLinkMessage.notificationUpdate.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v9, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    goto LABEL_15;
  }

  outlined init with take of Apple_Workout_Core_Activity(v9, v13, type metadata accessor for Apple_Workout_Core_NotificationUpdate);
  return Apple_Workout_Core_DataLinkMessage.notificationUpdate.modify;
}

uint64_t Apple_Workout_Core_DataLinkMessage.command.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  outlined init with copy of Apple_Workout_Core_Activity?(v2, &v12 - v6, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    result = outlined destroy of Apple_Workout_Core_Activity?(v7, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
LABEL_6:
    v10 = 0;
    v11 = 1;
    goto LABEL_7;
  }

  result = swift_getEnumCaseMultiPayload();
  if (result != 2)
  {
    result = outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    goto LABEL_6;
  }

  v10 = *v7;
  v11 = v7[8];
LABEL_7:
  *a1 = v10;
  *(a1 + 8) = v11;
  return result;
}

uint64_t key path getter for Apple_Workout_Core_DataLinkMessage.command : Apple_Workout_Core_DataLinkMessage@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  outlined init with copy of Apple_Workout_Core_Activity?(a1, &v12 - v6, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    result = outlined destroy of Apple_Workout_Core_Activity?(v7, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
LABEL_6:
    v10 = 0;
    v11 = 1;
    goto LABEL_7;
  }

  result = swift_getEnumCaseMultiPayload();
  if (result != 2)
  {
    result = outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    goto LABEL_6;
  }

  v10 = *v7;
  v11 = v7[8];
LABEL_7:
  *a2 = v10;
  *(a2 + 8) = v11;
  return result;
}

uint64_t key path setter for Apple_Workout_Core_DataLinkMessage.command : Apple_Workout_Core_DataLinkMessage(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  outlined destroy of Apple_Workout_Core_Activity?(a2, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  *a2 = v3;
  *(a2 + 8) = v4;
  v5 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 0, 1, v5);
}

uint64_t Apple_Workout_Core_DataLinkMessage.command.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  outlined destroy of Apple_Workout_Core_Activity?(v1, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  *v1 = v2;
  *(v1 + 8) = v3;
  v4 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  swift_storeEnumTagMultiPayload();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1, 0, 1, v4);
}

void (*Apple_Workout_Core_DataLinkMessage.command.modify(uint64_t *a1))(uint64_t **a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 16) = v2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v6 + 24) = v8;
  outlined init with copy of Apple_Workout_Core_Activity?(v2, v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  *(v6 + 32) = v10;
  v11 = *(v10 - 8);
  *(v6 + 40) = v11;
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v9, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
LABEL_12:
    v12 = 0;
    v13 = 1;
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v9, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    goto LABEL_12;
  }

  v12 = *v9;
  v13 = *(v9 + 8);
LABEL_13:
  *v6 = v12;
  *(v6 + 8) = v13;
  return Apple_Workout_Core_DataLinkMessage.command.modify;
}

void Apple_Workout_Core_DataLinkMessage.command.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[4];
  v3 = (*a1)[5];
  v5 = (*a1)[2];
  v4 = (*a1)[3];
  v6 = **a1;
  v7 = *(*a1 + 8);
  outlined destroy of Apple_Workout_Core_Activity?(v5, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  *v5 = v6;
  *(v5 + 8) = v7;
  swift_storeEnumTagMultiPayload();
  (*(v3 + 56))(v5, 0, 1, v2);
  free(v4);

  free(v1);
}

uint64_t key path getter for Apple_Workout_Core_DataLinkMessage.deltaUpdate : Apple_Workout_Core_DataLinkMessage@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  outlined init with copy of Apple_Workout_Core_Activity?(a1, &v14 - v6, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v7, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return outlined init with take of Apple_Workout_Core_Activity(v7, a2, type metadata accessor for Apple_Workout_Core_MetricsDelta);
    }

    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  }

  *a2 = MEMORY[0x277D84F90];
  v10 = type metadata accessor for Apple_Workout_Core_MetricsDelta(0);
  v11 = &a2[*(v10 + 20)];
  UnknownStorage.init()();
  v12 = *(v10 + 24);
  v13 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  return (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
}

uint64_t Apple_Workout_Core_MetricsDelta.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Apple_Workout_Core_MetricsDelta(0);
  v3 = &a1[*(v2 + 20)];
  UnknownStorage.init()();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

void (*Apple_Workout_Core_DataLinkMessage.deltaUpdate.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_MetricsDelta(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of Apple_Workout_Core_Activity?(v1, v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
LABEL_15:
    *v12 = MEMORY[0x277D84F90];
    v15 = &v12[*(v9 + 20)];
    UnknownStorage.init()();
    v16 = *(v9 + 24);
    v17 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
    (*(*(v17 - 8) + 56))(&v12[v16], 1, 1, v17);
    return Apple_Workout_Core_DataLinkMessage.deltaUpdate.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    goto LABEL_15;
  }

  outlined init with take of Apple_Workout_Core_Activity(v8, v12, type metadata accessor for Apple_Workout_Core_MetricsDelta);
  return Apple_Workout_Core_DataLinkMessage.deltaUpdate.modify;
}

uint64_t Apple_Workout_Core_DataLinkMessage.sequenceReset.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of Apple_Workout_Core_Activity?(v2, &v11 - v6, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v7, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return outlined init with take of Apple_Workout_Core_Activity(v7, a1, type metadata accessor for Apple_Workout_Core_SequenceReset);
    }

    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  }

  *a1 = MEMORY[0x277D84F90];
  v10 = a1 + *(type metadata accessor for Apple_Workout_Core_SequenceReset(0) + 20);
  return UnknownStorage.init()();
}

uint64_t key path getter for Apple_Workout_Core_DataLinkMessage.sequenceReset : Apple_Workout_Core_DataLinkMessage@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of Apple_Workout_Core_Activity?(a1, &v11 - v6, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v7, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return outlined init with take of Apple_Workout_Core_Activity(v7, a2, type metadata accessor for Apple_Workout_Core_SequenceReset);
    }

    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  }

  *a2 = MEMORY[0x277D84F90];
  v10 = a2 + *(type metadata accessor for Apple_Workout_Core_SequenceReset(0) + 20);
  return UnknownStorage.init()();
}

uint64_t Apple_Workout_Core_SequenceReset.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for Apple_Workout_Core_SequenceReset(0) + 20);
  return UnknownStorage.init()();
}

void (*Apple_Workout_Core_DataLinkMessage.sequenceReset.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_SequenceReset(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of Apple_Workout_Core_Activity?(v1, v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
LABEL_15:
    *v12 = MEMORY[0x277D84F90];
    v15 = v12 + *(v9 + 20);
    UnknownStorage.init()();
    return Apple_Workout_Core_DataLinkMessage.sequenceReset.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    goto LABEL_15;
  }

  outlined init with take of Apple_Workout_Core_Activity(v8, v12, type metadata accessor for Apple_Workout_Core_SequenceReset);
  return Apple_Workout_Core_DataLinkMessage.sequenceReset.modify;
}

uint64_t Apple_Workout_Core_DataLinkMessage.mirroredHostMessage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  outlined init with copy of Apple_Workout_Core_Activity?(v2, &v12 - v6, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v7, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return outlined init with take of Apple_Workout_Core_Activity(v7, a1, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
    }

    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  }

  v10 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  v11 = a1 + *(type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0) + 20);
  return UnknownStorage.init()();
}

uint64_t key path getter for Apple_Workout_Core_DataLinkMessage.mirroredHostMessage : Apple_Workout_Core_DataLinkMessage@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  outlined init with copy of Apple_Workout_Core_Activity?(a1, &v12 - v6, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v7, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return outlined init with take of Apple_Workout_Core_Activity(v7, a2, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
    }

    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  }

  v10 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  v11 = a2 + *(type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0) + 20);
  return UnknownStorage.init()();
}

void (*Apple_Workout_Core_DataLinkMessage.mirroredHostMessage.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of Apple_Workout_Core_Activity?(v2, v9, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v14 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v9, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
LABEL_15:
    v16 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    v17 = v13 + *(v10 + 20);
    UnknownStorage.init()();
    return Apple_Workout_Core_DataLinkMessage.mirroredHostMessage.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v9, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    goto LABEL_15;
  }

  outlined init with take of Apple_Workout_Core_Activity(v9, v13, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
  return Apple_Workout_Core_DataLinkMessage.mirroredHostMessage.modify;
}

uint64_t Apple_Workout_Core_DataLinkMessage.mirroredClientMessage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  outlined init with copy of Apple_Workout_Core_Activity?(v2, &v12 - v6, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v7, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      return outlined init with take of Apple_Workout_Core_Activity(v7, a1, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
    }

    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  }

  v10 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  v11 = a1 + *(type metadata accessor for Apple_Workout_Core_MirroredClientMessage(0) + 20);
  return UnknownStorage.init()();
}

uint64_t key path getter for Apple_Workout_Core_DataLinkMessage.mirroredClientMessage : Apple_Workout_Core_DataLinkMessage@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  outlined init with copy of Apple_Workout_Core_Activity?(a1, &v12 - v6, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v7, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      return outlined init with take of Apple_Workout_Core_Activity(v7, a2, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
    }

    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  }

  v10 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  v11 = a2 + *(type metadata accessor for Apple_Workout_Core_MirroredClientMessage(0) + 20);
  return UnknownStorage.init()();
}

uint64_t key path setter for Apple_Workout_Core_DataLinkMessage.publisherUpdate : Apple_Workout_Core_DataLinkMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v11 = a5(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v17 - v13;
  outlined init with copy of Apple_Workout_Core_MetricsPublisher(a1, &v17 - v13, a6);
  outlined destroy of Apple_Workout_Core_Activity?(a2, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_Activity(v14, a2, a7);
  v15 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
}

uint64_t Apple_Workout_Core_DataLinkMessage.deltaUpdate.setter(uint64_t a1, uint64_t (*a2)(void))
{
  outlined destroy of Apple_Workout_Core_Activity?(v2, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_Activity(a1, v2, a2);
  v5 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v2, 0, 1, v5);
}

void (*Apple_Workout_Core_DataLinkMessage.mirroredClientMessage.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of Apple_Workout_Core_Activity?(v2, v9, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v14 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v9, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
LABEL_15:
    v16 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    v17 = v13 + *(v10 + 20);
    UnknownStorage.init()();
    return Apple_Workout_Core_DataLinkMessage.mirroredClientMessage.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 6)
  {
    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v9, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    goto LABEL_15;
  }

  outlined init with take of Apple_Workout_Core_Activity(v9, v13, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
  return Apple_Workout_Core_DataLinkMessage.mirroredClientMessage.modify;
}

void Apple_Workout_Core_DataLinkMessage.publisherUpdate.modify(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of Apple_Workout_Core_MetricsPublisher((*a1)[3], v10, a5);
    outlined destroy of Apple_Workout_Core_Activity?(v13, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_Activity(v10, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v11, a6);
  }

  else
  {
    outlined destroy of Apple_Workout_Core_Activity?(**a1, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_Activity(v11, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v7);
}

uint64_t static Apple_Workout_Core_SequenceReset.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C18_PublisherSequenceV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Apple_Workout_Core_SequenceReset(0) + 20);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t Apple_Workout_Core_MetricsDelta.sequences.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t (*Apple_Workout_Core_MetricsDelta.deltaPublisher.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_MetricsDelta(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of Apple_Workout_Core_Activity?(v1 + v15, v8, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v17) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
    v18 = v16(v8, 1, v9);

    if (v18 != 1)
    {
      outlined destroy of Apple_Workout_Core_Activity?(v8, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Activity(v8, v14, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  }

  return Apple_Workout_Core_MetricsDelta.deltaPublisher.modify;
}

uint64_t Apple_Workout_Core_DataLinkMessage.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Apple_Workout_Core_DataLinkMessage.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

void Apple_Workout_Core_PublisherSequence.key.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Workout_Core_PublisherSequence.key.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Workout_Core_PublisherSequence.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_PublisherSequence(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_PublisherSequence.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_PublisherSequence(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_NotificationUpdate.notification.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_NotificationUpdate(0);
  outlined init with copy of Apple_Workout_Core_Activity?(v1 + *(v7 + 20), v6, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Activity(v6, a1, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = 0;
  v10 = a1 + *(v8 + 28);
  UnknownStorage.init()();
  v11 = a1 + *(v8 + 32);
  *v11 = 0;
  *(v11 + 8) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_Activity?(v6, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_NotificationUpdate.notification : Apple_Workout_Core_NotificationUpdate@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_NotificationUpdate(0);
  outlined init with copy of Apple_Workout_Core_Activity?(a1 + *(v8 + 20), v7, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Activity(v7, a2, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = MEMORY[0x277D84F90];
  *(a2 + 24) = 0;
  v11 = a2 + *(v9 + 28);
  UnknownStorage.init()();
  v12 = a2 + *(v9 + 32);
  *v12 = 0;
  *(v12 + 8) = 1;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_Activity?(v7, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_NotificationUpdate.notification : Apple_Workout_Core_NotificationUpdate(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_MetricsPublisher(a1, v8, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
  v9 = *(type metadata accessor for Apple_Workout_Core_NotificationUpdate(0) + 20);
  outlined destroy of Apple_Workout_Core_Activity?(a2 + v9, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  outlined init with take of Apple_Workout_Core_Activity(v8, a2 + v9, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Apple_Workout_Core_NotificationUpdate.notification.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_NotificationUpdate(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of Apple_Workout_Core_Activity?(v1 + v15, v8, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 16) = MEMORY[0x277D84F90];
    *(v14 + 24) = 0;
    v17 = v14 + *(v9 + 28);
    UnknownStorage.init()();
    v18 = v14 + *(v9 + 32);
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_Activity?(v8, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Activity(v8, v14, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
  }

  return Apple_Workout_Core_NotificationUpdate.notification.modify;
}

void Apple_Workout_Core_NotificationUpdate.notification.modify(uint64_t **a1, char a2)
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
    outlined init with copy of Apple_Workout_Core_MetricsPublisher((*a1)[5], v4, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
    outlined destroy of Apple_Workout_Core_Activity?(v9 + v3, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
    outlined init with take of Apple_Workout_Core_Activity(v4, v9 + v3, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v5, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
  }

  else
  {
    outlined destroy of Apple_Workout_Core_Activity?(v9 + v3, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
    outlined init with take of Apple_Workout_Core_Activity(v5, v9 + v3, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Apple_Workout_Core_NotificationUpdate.hasNotification.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_NotificationUpdate(0);
  outlined init with copy of Apple_Workout_Core_Activity?(v0 + *(v5 + 20), v4, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  v6 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Apple_Workout_Core_Activity?(v4, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  return v7;
}

Swift::Void __swiftcall Apple_Workout_Core_NotificationUpdate.clearNotification()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_NotificationUpdate(0) + 20);
  outlined destroy of Apple_Workout_Core_Activity?(v0 + v1, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Workout_Core_MetricsDelta.deltaPublisher.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = a1(0);
  outlined init with copy of Apple_Workout_Core_Activity?(v2 + *(v9 + 24), v8, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Activity(v8, a2, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  }

  UnknownStorage.init()();
  v12 = *(v10 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v12) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
  v13 = v11(v8, 1, v10);

  if (v13 != 1)
  {
    return outlined destroy of Apple_Workout_Core_Activity?(v8, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_MetricsDelta.deltaPublisher : Apple_Workout_Core_MetricsDelta@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = a2(0);
  outlined init with copy of Apple_Workout_Core_Activity?(a1 + *(v10 + 24), v9, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  v11 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Activity(v9, a3, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  }

  UnknownStorage.init()();
  v13 = *(v11 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a3 + v13) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
  v14 = v12(v9, 1, v11);

  if (v14 != 1)
  {
    return outlined destroy of Apple_Workout_Core_Activity?(v9, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsDelta.deltaPublisher : Apple_Workout_Core_MetricsDelta(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_MetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  v13 = *(a5(0) + 24);
  outlined destroy of Apple_Workout_Core_Activity?(a2 + v13, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  outlined init with take of Apple_Workout_Core_Activity(v12, a2 + v13, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  return (*(v9 + 56))(a2 + v13, 0, 1, v8);
}

uint64_t Apple_Workout_Core_MetricsDelta.deltaPublisher.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  outlined destroy of Apple_Workout_Core_Activity?(v2 + v4, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  outlined init with take of Apple_Workout_Core_Activity(a1, v2 + v4, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  v5 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t (*Apple_Workout_Core_NotificationUpdate.publisherUpdate.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_NotificationUpdate(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of Apple_Workout_Core_Activity?(v1 + v15, v8, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v17) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
    v18 = v16(v8, 1, v9);

    if (v18 != 1)
    {
      outlined destroy of Apple_Workout_Core_Activity?(v8, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Activity(v8, v14, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  }

  return Apple_Workout_Core_NotificationUpdate.publisherUpdate.modify;
}

void Apple_Workout_Core_MetricsDelta.deltaPublisher.modify(uint64_t **a1, char a2)
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
    outlined init with copy of Apple_Workout_Core_MetricsPublisher((*a1)[5], v4, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
    outlined destroy of Apple_Workout_Core_Activity?(v9 + v3, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
    outlined init with take of Apple_Workout_Core_Activity(v4, v9 + v3, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v5, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  }

  else
  {
    outlined destroy of Apple_Workout_Core_Activity?(v9 + v3, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
    outlined init with take of Apple_Workout_Core_Activity(v5, v9 + v3, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Apple_Workout_Core_MetricsDelta.hasDeltaPublisher.getter(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = a1(0);
  outlined init with copy of Apple_Workout_Core_Activity?(v1 + *(v7 + 24), v6, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v9 = (*(*(v8 - 8) + 48))(v6, 1, v8) != 1;
  outlined destroy of Apple_Workout_Core_Activity?(v6, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  return v9;
}

uint64_t Apple_Workout_Core_MetricsDelta.clearDeltaPublisher()(uint64_t (*a1)(void))
{
  v2 = *(a1(0) + 24);
  outlined destroy of Apple_Workout_Core_Activity?(v1 + v2, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  v3 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v1 + v2, 1, 1, v3);
}

uint64_t Apple_Workout_Core_NotificationUpdate.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}