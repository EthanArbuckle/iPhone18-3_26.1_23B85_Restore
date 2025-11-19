unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      _s10Foundation4UUIDVSgWOcTm_1(v4, &v11, &_sSo21NSAttributedStringKeya_yptMd);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSd_11WorkoutCore0C10DataBucketCTt0g5Tf4g_n(double *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySd11WorkoutCore0C10DataBucketCGMd);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = *(a1 + 5);
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = *&v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo6HKUnitC_SdTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo6HKUnitCSdGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore23QueriedExternalProviderC_SayAC0C13ConfigurationCGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11WorkoutCore23QueriedExternalProviderCSayAC0C13ConfigurationCGGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo38UIApplicationOpenExternalURLOptionsKeya_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo38UIApplicationOpenExternalURLOptionsKeyaypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      _s10Foundation4UUIDVSgWOcTm_1(v4, &v11, &_sSo38UIApplicationOpenExternalURLOptionsKeya_yptMd);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So10HKQuantityCTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_So10HKQuantityCtMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSo10HKQuantityCGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      _s10Foundation4UUIDVSgWOcTm_1(v9, v5, &_s10Foundation4UUIDV_So10HKQuantityCtMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo17HKWorkoutActivityC_So10HKQuantityCSgTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo17HKWorkoutActivityCSo10HKQuantityCSgGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *i;
      v8 = v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      *(v3[7] + 8 * result) = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9WorkoutUI27InactiveAppearanceAnimationC_7Combine11Cancellable_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9WorkoutUI27InactiveAppearanceAnimationC7Combine11Cancellable_pGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      _s10Foundation4UUIDVSgWOcTm_1(v4, &v11, &_s9WorkoutUI27InactiveAppearanceAnimationC_7Combine11Cancellable_ptMd);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Cancellable(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v8;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
      if (v11)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v4[6] + 16 * result);
      *v12 = v6;
      v12[1] = v7;
      *(v4[7] + 8 * result) = v9;
      v13 = v4[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v4[2] = v15;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo18NLWorkoutAlertTypeV_SayAEGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for NLWorkoutAlertType(0);
  v4 = v3;
  v5 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type NLWorkoutAlertType and conformance NLWorkoutAlertType, type metadata accessor for NLWorkoutAlertType);
  result = MEMORY[0x20F30BF10](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      specialized Set._Variant.insert(_:)(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

id specialized static EffortUtilities.createRatingSample(quantity:workout:workoutActivity:)(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  if (!a3)
  {
    goto LABEL_5;
  }

  v16 = a3;
  v17 = [v16 endDate];
  if (!v17)
  {

LABEL_5:
    v20 = [a2 startDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = [a2 endDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_6;
  }

  v18 = v17;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v7 + 32))(v13, v10, v6);
  v19 = [v16 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_6:
  type metadata accessor for HKWorkoutActivity(0, &lazy cache variable for type metadata for HKQuantityType);
  v21 = MEMORY[0x20F30C0E0](*MEMORY[0x277CCCCD8]);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v23 = Date._bridgeToObjectiveC()().super.isa;
  v24 = [objc_opt_self() quantitySampleWithType:v21 quantity:a1 startDate:isa endDate:v23];

  v25 = *(v7 + 8);
  v25(v13, v6);
  v25(v15, v6);
  return v24;
}

uint64_t specialized static EffortUtilities.storePerceivedEffort(quantity:workout:workoutActivity:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  v4[23] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v4[24] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v4[25] = v5;
  v4[26] = *(v5 - 8);
  v4[27] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[28] = v6;
  v4[29] = *(v6 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized static EffortUtilities.storePerceivedEffort(quantity:workout:workoutActivity:healthStore:), 0, 0);
}

uint64_t specialized static EffortUtilities.storePerceivedEffort(quantity:workout:workoutActivity:healthStore:)()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = specialized static EffortUtilities.createRatingSample(quantity:workout:workoutActivity:)(v0[19], v3, v1);
  v0[33] = v4;
  v0[2] = v0;
  v0[7] = v0 + 35;
  v0[3] = specialized static EffortUtilities.storePerceivedEffort(quantity:workout:workoutActivity:healthStore:);
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5Error_pGMd);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool;
  v0[13] = &block_descriptor_64;
  v0[14] = v5;
  [v2 relateWorkoutEffortSample:v4 withWorkout:v3 activity:v1 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = specialized static EffortUtilities.storePerceivedEffort(quantity:workout:workoutActivity:healthStore:);
  }

  else
  {
    v2 = specialized static EffortUtilities.storePerceivedEffort(quantity:workout:workoutActivity:healthStore:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v71 = v0;
  v1 = *(v0 + 280);
  if (v1 == 1)
  {
    v3 = *(v0 + 160);
    v2 = *(v0 + 168);
    v4 = *(v0 + 152);
    static WOLog.trainingLoad.getter();
    v5 = v4;
    v6 = v3;
    v7 = v2;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 208);
      v10 = *(v0 + 216);
      v12 = *(v0 + 200);
      v13 = *(v0 + 160);
      v64 = *(v0 + 168);
      v14 = *(v0 + 152);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v70 = v67;
      *v15 = 138412802;
      *(v15 + 4) = v14;
      *v16 = v14;
      *(v15 + 12) = 2082;
      v17 = v14;
      v18 = [v13 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      (*(v11 + 8))(v10, v12);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v70);

      *(v15 + 14) = v22;
      *(v15 + 22) = 2082;
      if (v64)
      {
        v23 = [*(v0 + 168) UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v24 = 0;
      }

      else
      {
        v24 = 1;
      }

      v50 = *(v0 + 256);
      v51 = *(v0 + 232);
      v63 = *(v0 + 264);
      v66 = *(v0 + 224);
      v52 = *(v0 + 192);
      (*(*(v0 + 208) + 56))(v52, v24, 1, *(v0 + 200));
      v53 = Optional.description.getter();
      v55 = v54;
      _s10Foundation4UUIDVSgWOhTm_0(v52, &_s10Foundation4UUIDVSgMd);
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, &v70);

      *(v15 + 24) = v56;
      _os_log_impl(&dword_20C66F000, v8, v9, "Successfully stored perceived effort %@ to workout %{public}s with activity %{public}s", v15, 0x20u);
      _s10Foundation4UUIDVSgWOhTm_0(v16, &_sSo8NSObjectCSgMd);
      MEMORY[0x20F30E080](v16, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v67, -1, -1);
      MEMORY[0x20F30E080](v15, -1, -1);

      (*(v51 + 8))(v50, v66);
      v1 = 1;
    }

    else
    {
      v47 = *(v0 + 256);
      v48 = *(v0 + 224);
      v49 = *(v0 + 232);

      (*(v49 + 8))(v47, v48);
    }
  }

  else
  {
    v25 = *(v0 + 152);
    v26 = *(v0 + 160);
    static WOLog.trainingLoad.getter();
    v27 = v25;
    v28 = v26;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 248);
    v34 = *(v0 + 224);
    v33 = *(v0 + 232);
    if (v31)
    {
      v65 = *(v0 + 224);
      v68 = *(v0 + 248);
      v36 = *(v0 + 208);
      v35 = *(v0 + 216);
      v59 = *(v0 + 200);
      v37 = *(v0 + 152);
      v38 = *(v0 + 160);
      v62 = *(v0 + 264);
      v69 = v1;
      v39 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v70 = v61;
      *v39 = 138412546;
      *(v39 + 4) = v37;
      *v60 = v37;
      *(v39 + 12) = 2082;
      v40 = v37;
      v41 = [v38 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      (*(v36 + 8))(v35, v59);
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v70);

      *(v39 + 14) = v45;
      _os_log_impl(&dword_20C66F000, v29, v30, "Failed to store perceived effort %@ to workout %{public}s with no error.", v39, 0x16u);
      _s10Foundation4UUIDVSgWOhTm_0(v60, &_sSo8NSObjectCSgMd);
      MEMORY[0x20F30E080](v60, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm_2(v61);
      MEMORY[0x20F30E080](v61, -1, -1);
      v46 = v39;
      v1 = v69;
      MEMORY[0x20F30E080](v46, -1, -1);

      (*(v33 + 8))(v68, v65);
    }

    else
    {

      (*(v33 + 8))(v32, v34);
    }
  }

  v57 = *(v0 + 8);

  return v57(v1);
}

{
  v39 = v0;
  v1 = *(v0 + 272);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  swift_willThrow();
  static WOLog.trainingLoad.getter();
  v4 = v3;
  v5 = v2;
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v32 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 232);
    v9 = *(v0 + 216);
    v36 = *(v0 + 224);
    v37 = *(v0 + 240);
    v10 = *(v0 + 200);
    v11 = *(v0 + 208);
    v13 = *(v0 + 152);
    v12 = *(v0 + 160);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v38[0] = v33;
    *v14 = 138412802;
    *(v14 + 4) = v13;
    *v15 = v13;
    *(v14 + 12) = 2082;
    v16 = v13;
    v17 = [v12 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v11 + 8))(v9, v10);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v38);

    *(v14 + 14) = v21;
    *(v14 + 22) = 2082;
    *(v0 + 144) = v32;
    v22 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v23 = String.init<A>(describing:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v38);

    *(v14 + 24) = v25;
    _os_log_impl(&dword_20C66F000, v7, v8, "Failed to store effort %@ to workout %{public}s : %{public}s", v14, 0x20u);
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_sSo8NSObjectCSgMd);
    MEMORY[0x20F30E080](v15, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v33, -1, -1);
    MEMORY[0x20F30E080](v14, -1, -1);

    (*(v35 + 8))(v37, v36);
  }

  else
  {
    v26 = *(v0 + 272);
    v28 = *(v0 + 232);
    v27 = *(v0 + 240);
    v29 = *(v0 + 224);

    (*(v28 + 8))(v27, v29);
  }

  v30 = *(v0 + 8);

  return v30(0);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  result = MEMORY[0x20F30BF10](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      specialized Set._Variant.insert(_:)(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

id specialized static EffortUtilities.effortSampleCollection(for:)(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_26:
    v5 = 0;
    v24 = 0;
LABEL_27:
    v22 = type metadata accessor for EffortSampleCollection();
    v23 = objc_allocWithZone(v22);
    *&v23[OBJC_IVAR___WOEffortSampleCollection_effortSample] = v24;
    *&v23[OBJC_IVAR___WOEffortSampleCollection_estimatedEffortSample] = v5;
    v28.receiver = v23;
    v28.super_class = v22;
    return objc_msgSendSuper2(&v28, sel_init);
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_26;
  }

LABEL_3:
  type metadata accessor for HKWorkoutActivity(0, &lazy cache variable for type metadata for NSObject);
  result = type metadata accessor for HKWorkoutActivity(0, &lazy cache variable for type metadata for HKQuantityType);
  if (v2 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v24 = 0;
    v26 = v1 & 0xC000000000000001;
    v27 = *MEMORY[0x277CCCB68];
    v25 = *MEMORY[0x277CCCCD8];
    v6 = v1;
    while (1)
    {
      if (v26)
      {
        v8 = MEMORY[0x20F30C990](v4, v1);
      }

      else
      {
        v8 = *(v1 + 8 * v4 + 32);
      }

      v9 = v8;
      v10 = [v8 quantityType];
      v11 = MEMORY[0x20F30C0E0](v27);
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        [v9 _creationTimestamp];
        v14 = v13;
        if (v5)
        {
          [v5 _creationTimestamp];
          if (v15 < v14)
          {

LABEL_16:
            v5 = v9;
LABEL_6:
            v1 = v6;
            v7 = v2;
            goto LABEL_7;
          }
        }

        else if (v13 > 0.0)
        {
          goto LABEL_16;
        }
      }

      v16 = [v9 quantityType];
      v17 = MEMORY[0x20F30C0E0](v25);
      v18 = static NSObject.== infix(_:_:)();

      if ((v18 & 1) == 0)
      {

        goto LABEL_6;
      }

      [v9 _creationTimestamp];
      v20 = v19;
      v1 = v6;
      if (v24)
      {
        [v24 _creationTimestamp];
        v7 = v2;
        if (v21 >= v20)
        {

          goto LABEL_7;
        }
      }

      else
      {
        v7 = v2;
        if (v19 <= 0.0)
        {

          v24 = 0;
          goto LABEL_7;
        }
      }

      v24 = v9;
LABEL_7:
      if (v7 == ++v4)
      {
        goto LABEL_27;
      }
    }
  }

  __break(1u);
  return result;
}

id specialized static EffortUtilities.sampleCollectionForRelationships(_:activity:)(unint64_t a1, id a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  MEMORY[0x28223BE20](v56);
  v55 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  v15.n128_f64[0] = MEMORY[0x28223BE20](v14);
  v58 = &v45 - v16;
  v67 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_52;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v57 = v13;
    v18 = 0;
    v63 = a1 & 0xC000000000000001;
    v51 = a1 & 0xFFFFFFFFFFFFFF8;
    v49 = v10;
    v50 = (a1 + 32);
    v53 = (v5 + 56);
    v13 = v5 + 48;
    v46 = (v5 + 32);
    v48 = (v5 + 8);
    v10 = MEMORY[0x277D84F90];
    v59 = a2;
    v60 = i;
    v61 = a1;
    v54 = v4;
    v52 = (v5 + 48);
    while (1)
    {
      if (v63)
      {
        v20 = MEMORY[0x20F30C990](v18, a1, v15);
      }

      else
      {
        if (v18 >= *(v51 + 16))
        {
          goto LABEL_51;
        }

        v20 = *&v50[8 * v18];
      }

      v19 = v20;
      if (__OFADD__(v18++, 1))
      {
        break;
      }

      v22 = [v20 samples];
      if (!v22)
      {
        goto LABEL_8;
      }

      v23 = v22;
      v65 = v19;
      type metadata accessor for HKWorkoutActivity(0, &lazy cache variable for type metadata for HKSample);
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v66 = v10;
      if (v13 >> 62)
      {
        v5 = __CocoaSet.count.getter();
        if (!v5)
        {
LABEL_32:
          v64 = v10;
          goto LABEL_33;
        }
      }

      else
      {
        v5 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v5)
        {
          goto LABEL_32;
        }
      }

      a2 = 0;
      v64 = v10;
      do
      {
        v10 = a2;
        while (1)
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x20F30C990](v10, v13);
          }

          else
          {
            if (v10 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_49;
            }

            v24 = *(v13 + 8 * v10 + 32);
          }

          a1 = v24;
          a2 = (v10 + 1);
          if (__OFADD__(v10, 1))
          {
            __break(1u);
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }

          objc_opt_self();
          v25 = swift_dynamicCastObjCClass();
          if (v25)
          {
            break;
          }

          ++v10;
          if (a2 == v5)
          {
            goto LABEL_33;
          }
        }

        v4 = v25;
        MEMORY[0x20F30BCF0]();
        if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          a1 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v64 = v66;
      }

      while (a2 != v5);
LABEL_33:

      a2 = v59;
      if (!v59)
      {
        v5 = v65;
        v32 = [v65 activity];
        i = v60;
        a1 = v61;
        if (v32)
        {
          v19 = v32;
        }

        else
        {
          specialized Array.append<A>(contentsOf:)(v64);
          v19 = v5;
        }

        v10 = MEMORY[0x277D84F90];
        goto LABEL_8;
      }

      v26 = v59;
      v27 = [v65 activity];
      if (v27)
      {
        v28 = v27;
        v29 = [v27 UUID];

        v30 = v58;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v31 = 0;
      }

      else
      {
        v31 = 1;
        v30 = v58;
      }

      v33 = v54;
      v34 = *v53;
      (*v53)(v30, v31, 1, v54);
      v62 = v26;
      v35 = [v26 UUID];
      v36 = v57;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v34(v36, 0, 1, v33);
      v4 = v55;
      v5 = *(v56 + 48);
      _s10Foundation4UUIDVSgWOcTm_1(v30, v55, &_s10Foundation4UUIDVSgMd);
      _s10Foundation4UUIDVSgWOcTm_1(v36, v4 + v5, &_s10Foundation4UUIDVSgMd);
      a2 = v52;
      v37 = *v52;
      if ((*v52)(v4, 1, v33) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v36, &_s10Foundation4UUIDVSgMd);
        _s10Foundation4UUIDVSgWOhTm_0(v30, &_s10Foundation4UUIDVSgMd);
        v38 = v37(v4 + v5, 1, v33);
        v10 = MEMORY[0x277D84F90];
        if (v38 == 1)
        {
          _s10Foundation4UUIDVSgWOhTm_0(v4, &_s10Foundation4UUIDVSgMd);
          i = v60;
          a1 = v61;
          v13 = v65;
          v19 = v62;
LABEL_44:
          specialized Array.append<A>(contentsOf:)(v64);
          v10 = MEMORY[0x277D84F90];
          goto LABEL_7;
        }

        goto LABEL_5;
      }

      v39 = v49;
      _s10Foundation4UUIDVSgWOcTm_1(v4, v49, &_s10Foundation4UUIDVSgMd);
      if (v37(v4 + v5, 1, v33) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v57, &_s10Foundation4UUIDVSgMd);
        _s10Foundation4UUIDVSgWOhTm_0(v58, &_s10Foundation4UUIDVSgMd);
        (*v48)(v39, v33);
        v10 = MEMORY[0x277D84F90];
LABEL_5:
        _s10Foundation4UUIDVSgWOhTm_0(v4, &_s10Foundation4UUIDVSg_ADtMd);
        i = v60;
        a1 = v61;
        v13 = v65;
        v19 = v62;
        goto LABEL_6;
      }

      v40 = v47;
      (*v46)(v47, v4 + v5, v33);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v5 = dispatch thunk of static Equatable.== infix(_:_:)();
      a2 = v48;
      v41 = *v48;
      (*v48)(v40, v33);
      _s10Foundation4UUIDVSgWOhTm_0(v57, &_s10Foundation4UUIDVSgMd);
      _s10Foundation4UUIDVSgWOhTm_0(v58, &_s10Foundation4UUIDVSgMd);
      v41(v39, v33);
      _s10Foundation4UUIDVSgWOhTm_0(v4, &_s10Foundation4UUIDVSgMd);
      v10 = MEMORY[0x277D84F90];
      i = v60;
      a1 = v61;
      v13 = v65;
      v19 = v62;
      if (v5)
      {
        goto LABEL_44;
      }

LABEL_6:

LABEL_7:

LABEL_8:
      if (v18 == i)
      {
        v42 = v67;
        goto LABEL_54;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    ;
  }

  v42 = MEMORY[0x277D84F90];
LABEL_54:
  v43 = specialized static EffortUtilities.effortSampleCollection(for:)(v42);

  return v43;
}

unint64_t lazy protocol witness table accessor for type EffortUtilities.WorkoutAndActivityKey and conformance EffortUtilities.WorkoutAndActivityKey()
{
  result = lazy protocol witness table cache variable for type EffortUtilities.WorkoutAndActivityKey and conformance EffortUtilities.WorkoutAndActivityKey;
  if (!lazy protocol witness table cache variable for type EffortUtilities.WorkoutAndActivityKey and conformance EffortUtilities.WorkoutAndActivityKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EffortUtilities.WorkoutAndActivityKey and conformance EffortUtilities.WorkoutAndActivityKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EffortUtilities.WorkoutAndActivityKey and conformance EffortUtilities.WorkoutAndActivityKey;
  if (!lazy protocol witness table cache variable for type EffortUtilities.WorkoutAndActivityKey and conformance EffortUtilities.WorkoutAndActivityKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EffortUtilities.WorkoutAndActivityKey and conformance EffortUtilities.WorkoutAndActivityKey);
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x20F30BF10](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9WorkoutUI13ArtworkBridgeC_SayAFGTt0g5Tf4g_n(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v4 = type metadata accessor for ArtworkBridge();
    v5 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type ArtworkBridge and conformance NSObject, type metadata accessor for ArtworkBridge);
    result = MEMORY[0x20F30BF10](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x20F30C990](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      specialized Set._Variant.insert(_:)(&v11, v9, type metadata accessor for ArtworkBridge, &_ss11_SetStorageCy9WorkoutUI13ArtworkBridgeCGMd, &_ss11_SetStorageCy9WorkoutUI13ArtworkBridgeCGMR, type metadata accessor for ArtworkBridge);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = __CocoaSet.count.getter();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9WorkoutUI17MediaMomentBridgeC_SayAFGTt0g5Tf4g_n(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v4 = type metadata accessor for MediaMomentBridge();
    v5 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type MediaMomentBridge and conformance NSObject, type metadata accessor for MediaMomentBridge);
    result = MEMORY[0x20F30BF10](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x20F30C990](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      specialized Set._Variant.insert(_:)(&v11, v9, type metadata accessor for MediaMomentBridge, &_ss11_SetStorageCy9WorkoutUI17MediaMomentBridgeCGMd, &_ss11_SetStorageCy9WorkoutUI17MediaMomentBridgeCGMR, type metadata accessor for MediaMomentBridge);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = __CocoaSet.count.getter();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

void specialized static EffortUtilities.save(quantity:workout:workoutActivity:healthStore:completion:)(void *a1, void *a2, void *a3, void *a4, void (*a5)(void, void), uint64_t a6)
{
  v62 = a4;
  v11 = type metadata accessor for Notification();
  v64 = *(v11 - 8);
  v65 = v11;
  MEMORY[0x28223BE20](v11);
  v63 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v66 = *(v13 - 8);
  v67 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v20 = a1;
  }

  else
  {
    v59 = a3;
    v60 = a5;
    v61 = a6;
    static WOLog.trainingLoad.getter();
    v21 = a2;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v57 = v24;
      v58 = swift_slowAlloc();
      *&aBlock = v58;
      *v24 = 136446210;
      v25 = [v21 UUID];
      v56 = v22;
      v26 = v25;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v27 = v67;
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v66 + 8))(v15, v27);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &aBlock);

      v32 = v57;
      *(v57 + 1) = v31;
      v33 = v23;
      v34 = v56;
      v35 = v32;
      _os_log_impl(&dword_20C66F000, v56, v33, "Storing sentinel for skip for workout %{public}s", v32, 0xCu);
      v36 = v58;
      __swift_destroy_boxed_opaque_existential_0Tm_2(v58);
      MEMORY[0x20F30E080](v36, -1, -1);
      MEMORY[0x20F30E080](v35, -1, -1);
    }

    else
    {
    }

    (*(v17 + 8))(v19, v16);
    v37 = [objc_opt_self() appleEffortScoreUnit];
    v38 = [objc_opt_self() quantityWithUnit:v37 doubleValue:0.0];

    v20 = v38;
    a5 = v60;
    a6 = v61;
    a3 = v59;
  }

  v39 = a1;
  v40 = specialized static DemoUtilities.effortValue(for:)(a2);
  if (v40)
  {

    if (one-time initialization token for demoOverrideEffortValues != -1)
    {
      swift_once();
    }

    v41 = [a2 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    v42 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = static EffortUtilities.demoOverrideEffortValues;
    static EffortUtilities.demoOverrideEffortValues = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v42, v15, isUniquelyReferenced_nonNull_native, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo10HKQuantityCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo10HKQuantityCGMR);
    (*(v66 + 8))(v15, v67);
    static EffortUtilities.demoOverrideEffortValues = v68;
    swift_endAccess();
    if (a5)
    {
      a5(1, 0);
    }

    v44 = [objc_opt_self() defaultCenter];
    if (one-time initialization token for didUpdateDemoOverrideEffortValues != -1)
    {
      swift_once();
    }

    aBlock = 0u;
    v70 = 0u;
    v45 = static EffortUtilities.didUpdateDemoOverrideEffortValues;
    v46 = v63;
    Notification.init(name:object:userInfo:)();
    isa = Notification._bridgeToObjectiveC()().super.isa;
    (*(v64 + 8))(v46, v65);
    [v44 postNotification_];
  }

  else
  {
    v42 = specialized static EffortUtilities.createRatingSample(quantity:workout:workoutActivity:)(v20, a2, a3);
    v48 = swift_allocObject();
    v48[2] = v20;
    v48[3] = a2;
    v48[4] = a3;
    v48[5] = a5;
    v48[6] = a6;
    v71 = partial apply for closure #1 in static EffortUtilities.storePerceivedEffort(quantity:workout:workoutActivity:healthStore:completion:);
    v72 = v48;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v70 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    *(&v70 + 1) = &block_descriptor_61;
    v49 = _Block_copy(&aBlock);
    v50 = a3;
    v51 = v49;
    v52 = v50;
    v53 = a2;
    v54 = v20;
    outlined copy of (@escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ())?(a5);

    [v62 relateWorkoutEffortSample:v42 withWorkout:v53 activity:v52 completion:v51];

    _Block_release(v51);
  }
}

id specialized static EffortUtilities.fetchDemoExertion(forWorkout:)(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v40[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v40[-v7];
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = [a1 metadata];
  if (!v14)
  {
    return 0;
  }

  v46 = v3;
  v15 = v14;
  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v16 + 16) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001FLL, 0x800000020CB958C0), (v18 & 1) == 0))
  {

    return 0;
  }

  outlined init with copy of Any(*(v16 + 56) + 32 * v17, v48);

  type metadata accessor for HKWorkoutActivity(0, &lazy cache variable for type metadata for HKQuantity);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v45 = v47;
  static WOLog.trainingLoad.getter();
  v19 = a1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  v44 = v19;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v42 = v20;
    v24 = v23;
    v43 = swift_slowAlloc();
    v48[0] = v43;
    *v24 = 136315138;
    v25 = [v19 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v41 = v21;
    v29 = v46;
    (*(v46 + 8))(v8, v2);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v48);

    *(v24 + 4) = v30;
    v31 = v42;
    _os_log_impl(&dword_20C66F000, v42, v41, "Demo Data overriding effort value for workout %s", v24, 0xCu);
    v32 = v43;
    __swift_destroy_boxed_opaque_existential_0Tm_2(v43);
    MEMORY[0x20F30E080](v32, -1, -1);
    MEMORY[0x20F30E080](v24, -1, -1);

    (*(v10 + 8))(v13, v9);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
    v29 = v46;
  }

  if (one-time initialization token for demoOverrideEffortValues != -1)
  {
    swift_once();
  }

  v34 = [v44 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v35 = static EffortUtilities.demoOverrideEffortValues;
  if (*(static EffortUtilities.demoOverrideEffortValues + 2) && (v36 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v37 & 1) != 0))
  {
    v38 = *(v35[7] + 8 * v36);
    swift_endAccess();
    v39 = v38;

    (*(v29 + 8))(v5, v2);
    return v39;
  }

  else
  {
    swift_endAccess();
    (*(v29 + 8))(v5, v2);
    return v45;
  }
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void specialized static EffortUtilities.fetchExertion(forWorkout:activity:healthStore:completion:)(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  _Block_copy(a5);
  v15 = specialized static EffortUtilities.fetchDemoExertion(forWorkout:)(a1);
  if (v15)
  {
    v16 = a5[2];
    v34 = v15;
    v16(a5);

    v17 = v34;
  }

  else
  {
    v18 = swift_allocObject();
    *(v18 + 16) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned HKQuantity?) -> ();
    *(v18 + 24) = v14;

    if ([a1 workoutActivityType] != 82 || a2)
    {
      v34 = a3;
      v19 = [a1 fiui_finalWorkoutUUID];
      if (v19)
      {
        v20 = v19;
        v21 = objc_opt_self();
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*(v11 + 8))(v13, v10);
        v23 = [v21 predicateForObjectWithUUID_];

        v24 = swift_allocObject();
        v25 = v33;
        v26 = v34;
        v24[2] = v34;
        v24[3] = closure #1 in static EffortUtilities.fetchExertion(forWorkout:activity:healthStore:completion:)partial apply;
        v24[4] = v18;
        v24[5] = a1;
        v24[6] = v25;
        v24[7] = a2;
        v27 = objc_allocWithZone(MEMORY[0x277CCDC60]);
        aBlock[4] = closure #1 in static EffortUtilities.fetchExertionCollection(forWorkout:activity:healthStore:completion:)partial apply;
        aBlock[5] = v24;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKWorkoutEffortRelationshipQuery, @guaranteed [HKWorkoutEffortRelationship]?, @guaranteed HKQueryAnchor?, @guaranteed Error?) -> ();
        aBlock[3] = &block_descriptor_51_0;
        v28 = _Block_copy(aBlock);
        v29 = a2;
        v30 = v26;

        v31 = a1;
        v32 = [v27 initWithPredicate:v23 anchor:0 options:0 resultsHandler:v28];
        _Block_release(v28);

        [v30 executeQuery_];
      }

      else
      {
        _Block_release(a5);
        __break(1u);
      }
    }

    else
    {
      (a5[2])(a5, 0);
    }
  }
}

void specialized static EffortUtilities.fetchExertionCollection(forWorkout:activity:healthStore:completion:)(void *a1, void *a2, void *a3, uint64_t a4, void (**a5)(void, void))
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  _Block_copy(a5);
  if ([a1 workoutActivityType] == 82 && a2 == 0)
  {
    a5[2](a5, 0);
  }

  else
  {
    v29 = a4;
    v16 = [a1 fiui_finalWorkoutUUID];
    if (v16)
    {
      v17 = v16;
      v18 = objc_opt_self();
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v11 + 8))(v13, v10);
      v20 = [v18 predicateForObjectWithUUID_];

      v21 = swift_allocObject();
      v21[2] = a3;
      v21[3] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned EffortSampleCollection?) -> ();
      v21[4] = v14;
      v21[5] = a1;
      v21[6] = v29;
      v21[7] = a2;
      v22 = objc_allocWithZone(MEMORY[0x277CCDC60]);
      aBlock[4] = closure #1 in static EffortUtilities.fetchExertionCollection(forWorkout:activity:healthStore:completion:)partial apply;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKWorkoutEffortRelationshipQuery, @guaranteed [HKWorkoutEffortRelationship]?, @guaranteed HKQueryAnchor?, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_37;
      v23 = _Block_copy(aBlock);
      v24 = a2;
      v25 = a3;

      v26 = a1;
      v27 = [v22 initWithPredicate:v20 anchor:0 options:0 resultsHandler:v23];
      _Block_release(v23);

      [v25 executeQuery_];
    }

    else
    {
      _Block_release(a5);
      __break(1u);
    }
  }
}

uint64_t specialized static EffortUtilities.fetchExertion(forWorkout:activity:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = type metadata accessor for Logger();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = type metadata accessor for HKWorkoutEffortRelationshipQueryDescriptor.Result();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  Descriptor = type metadata accessor for HKWorkoutEffortRelationshipQueryDescriptor();
  v3[17] = Descriptor;
  v3[18] = *(Descriptor - 8);
  v3[19] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[20] = v7;
  v3[21] = *(v7 - 8);
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized static EffortUtilities.fetchExertion(forWorkout:activity:healthStore:), 0, 0);
}

uint64_t specialized static EffortUtilities.fetchExertion(forWorkout:activity:healthStore:)()
{
  v1 = *(v0 + 56);
  if ([*(v0 + 48) workoutActivityType] == 82 && v1 == 0)
  {
    static WOLog.trainingLoad.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 96);
    v19 = *(v0 + 72);
    v20 = *(v0 + 80);
    if (v17)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_20C66F000, v15, v16, "fetchEffortForWorkout was called with a multisport workout", v21, 2u);
      MEMORY[0x20F30E080](v21, -1, -1);
    }

    (*(v20 + 8))(v18, v19);
    v3 = 0;
  }

  else
  {
    v3 = specialized static EffortUtilities.fetchDemoExertion(forWorkout:)(*(v0 + 48));
    if (!v3)
    {
      v4 = [*(v0 + 48) fiui_finalWorkoutUUID];
      if (v4)
      {
        v6 = v4;
        v8 = *(v0 + 168);
        v7 = *(v0 + 176);
        v9 = *(v0 + 160);
        v10 = objc_opt_self();
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*(v8 + 8))(v7, v9);
        v12 = [v10 predicateForObjectWithUUID_];
        *(v0 + 184) = v12;

        v13 = v12;
        HKWorkoutEffortRelationshipQueryDescriptor.init(predicate:anchor:option:)();
        v14 = swift_task_alloc();
        *(v0 + 192) = v14;
        *v14 = v0;
        v14[1] = specialized static EffortUtilities.fetchExertion(forWorkout:activity:healthStore:);
        v4 = *(v0 + 128);
        v5 = *(v0 + 64);
      }

      else
      {
        __break(1u);
      }

      return MEMORY[0x282120520](v4, v5);
    }
  }

  v22 = *(v0 + 8);

  return v22(v3);
}

{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = specialized static EffortUtilities.fetchExertion(forWorkout:activity:healthStore:);
  }

  else
  {
    v2 = specialized static EffortUtilities.fetchExertion(forWorkout:activity:healthStore:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[7];
  v5 = HKWorkoutEffortRelationshipQueryDescriptor.Result.relationships.getter();
  (*(v2 + 8))(v1, v3);
  v6 = specialized static EffortUtilities.sampleCollectionForRelationships(_:activity:)(v5, v4);

  v7 = *&v6[OBJC_IVAR___WOEffortSampleCollection_effortSample];
  if (v7)
  {
    v8 = *&v6[OBJC_IVAR___WOEffortSampleCollection_effortSample];
LABEL_5:
    v10 = v7;
    v11 = [v8 quantity];

    goto LABEL_6;
  }

  v9 = *&v6[OBJC_IVAR___WOEffortSampleCollection_estimatedEffortSample];
  if (v9)
  {
    v8 = v9;
    v7 = 0;
    goto LABEL_5;
  }

  v11 = 0;
LABEL_6:
  static WOLog.trainingLoad.getter();
  v12 = v11;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138543362;
    *(v15 + 4) = v12;
    *v16 = v11;
    v17 = v12;
    _os_log_impl(&dword_20C66F000, v13, v14, "Successfully Fetched Efforts quantity for workouts %{public}@", v15, 0xCu);
    _s10Foundation4UUIDVSgWOhTm_0(v16, &_sSo8NSObjectCSgMd);
    MEMORY[0x20F30E080](v16, -1, -1);
    MEMORY[0x20F30E080](v15, -1, -1);
  }

  v18 = v0[23];
  v20 = v0[18];
  v19 = v0[19];
  v21 = v0[17];
  v22 = v0[13];
  v23 = v0[9];
  v24 = v0[10];

  (*(v24 + 8))(v22, v23);
  (*(v20 + 8))(v19, v21);

  v25 = v0[1];

  return v25(v11);
}

{
  v29 = v0;
  v1 = v0[25];
  static WOLog.trainingLoad.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[25];
    v6 = v0[18];
    v26 = v0[17];
    v27 = v0[19];
    v7 = v0[10];
    v24 = v0[23];
    v25 = v0[11];
    v23 = v0[9];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = Error.errorDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v28);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20C66F000, v3, v4, "Unable to fetch effort samples for workout: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm_2(v9);
    MEMORY[0x20F30E080](v9, -1, -1);
    MEMORY[0x20F30E080](v8, -1, -1);

    (*(v7 + 8))(v25, v23);
    (*(v6 + 8))(v27, v26);
  }

  else
  {
    v13 = v0[25];
    v14 = v0[23];
    v16 = v0[18];
    v15 = v0[19];
    v17 = v0[17];
    v19 = v0[10];
    v18 = v0[11];
    v20 = v0[9];

    (*(v19 + 8))(v18, v20);
    (*(v16 + 8))(v15, v17);
  }

  v21 = v0[1];

  return v21(0);
}

unint64_t lazy protocol witness table accessor for type HKWorkoutActivity and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type HKWorkoutActivity and conformance NSObject;
  if (!lazy protocol witness table cache variable for type HKWorkoutActivity and conformance NSObject)
  {
    type metadata accessor for HKWorkoutActivity(255, &lazy cache variable for type metadata for HKWorkoutActivity);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HKWorkoutActivity and conformance NSObject);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EffortUtilities.WorkoutAndActivityKey(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for EffortUtilities.WorkoutAndActivityKey(uint64_t result, int a2, int a3)
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

uint64_t outlined init with copy of Cancellable(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with take of Cancellable(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t objectdestroy_4Tm_0()
{

  return swift_deallocObject();
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_2(uint64_t a1)
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

uint64_t _s10Foundation4UUIDVSgWOhTm_0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined copy of (@escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t _s10Foundation4UUIDVSgWOcTm_1(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for HKWorkoutActivity(uint64_t a1, unint64_t *a2)
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

uint64_t getEnumTagSinglePayload for WorkoutNotificationRaceCompleteView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t storeEnumTagSinglePayload for WorkoutNotificationRaceCompleteView(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t WorkoutNotificationRaceCompleteView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AD15ModifiedContentVyAhD30_EnvironmentKeyWritingModifierVyAA0aE5StyleOGGAPtGSgAD7ForEachVySnySiGSiAHGSgGMd);
  MEMORY[0x28223BE20](v31);
  v3 = &v27 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB00F22NotificationResultViewVyAA05EmptyI0VAA7ForEachVySnySiGSiAF0fg4UnitI0VGSgGAHyAA05TupleI0VyAO_AA08ModifiedD0VyAoA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGA0_tGSgAQG_GMd);
  MEMORY[0x28223BE20](v4);
  v30 = &v27 - v5;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD7ForEachVySnySiGSiAA0ac4UnitE0VGSgGMd);
  MEMORY[0x28223BE20](v29);
  v7 = &v27 - v6;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v1[3];
  v52 = v1[2];
  v53 = v13;
  v14 = *(v1 + 9);
  v54 = *(v1 + 8);
  v15 = v1[1];
  v50 = *v1;
  v51 = v15;
  v16 = *(v1 + 80);
  if ((v16 & 1) == 0)
  {
    v28 = v10;
    outlined copy of Environment<WorkoutViewStyle>.Content(v14, 0);
    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v14, 0);
    (*(v9 + 8))(v12, v28);
    if (v40 != 11)
    {
      goto LABEL_3;
    }

LABEL_5:
    MetricPlatterConstants.init()(&v7[*(v29 + 56)]);
    v42 = v52;
    v43 = v53;
    v40 = v50;
    v41 = v51;
    *&v44 = v54;
    *(&v44 + 1) = v14;
    LOBYTE(v45) = v16;
    WorkoutNotificationRaceCompleteView.completionMessage.getter(v7);
    v23 = &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD7ForEachVySnySiGSiAA0ac4UnitE0VGSgGMd;
    outlined init with copy of WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>?, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?>(v7, v30, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD7ForEachVySnySiGSiAA0ac4UnitE0VGSgGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type WorkoutNotificationResultView<EmptyView, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?> and conformance WorkoutNotificationResultView<A, B>, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD7ForEachVySnySiGSiAA0ac4UnitE0VGSgGMd);
    lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>?, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?> and conformance WorkoutNotificationResultView<A, B>, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AD15ModifiedContentVyAhD30_EnvironmentKeyWritingModifierVyAA0aE5StyleOGGAPtGSgAD7ForEachVySnySiGSiAHGSgGMd);
    _ConditionalContent<>.init(storage:)();
    v24 = v7;
    return outlined destroy of WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>?, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?>(v24, v23);
  }

  if (v14 == 11)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = v31;
  MetricPlatterConstants.init()(&v3[*(v31 + 56)]);
  v35 = v52;
  v36 = v53;
  v33 = v50;
  v34 = v51;
  v37 = v54;
  v38 = v14;
  v39 = v16;
  WorkoutNotificationRaceCompleteView.resultRow.getter(&v40);
  v18 = v45;
  *(v3 + 4) = v44;
  *(v3 + 5) = v18;
  v3[144] = v49;
  v19 = v48;
  *(v3 + 7) = v47;
  *(v3 + 8) = v19;
  *(v3 + 6) = v46;
  v20 = v43;
  *(v3 + 2) = v42;
  *(v3 + 3) = v20;
  v21 = v41;
  *v3 = v40;
  *(v3 + 1) = v21;
  v22 = *(v17 + 52);
  v35 = v52;
  v36 = v53;
  v33 = v50;
  v34 = v51;
  v37 = v54;
  v38 = v14;
  v39 = v16;
  WorkoutNotificationRaceCompleteView.completionMessage.getter(&v3[v22]);
  v23 = &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AD15ModifiedContentVyAhD30_EnvironmentKeyWritingModifierVyAA0aE5StyleOGGAPtGSgAD7ForEachVySnySiGSiAHGSgGMd;
  outlined init with copy of WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>?, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?>(v3, v30, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AD15ModifiedContentVyAhD30_EnvironmentKeyWritingModifierVyAA0aE5StyleOGGAPtGSgAD7ForEachVySnySiGSiAHGSgGMd);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type WorkoutNotificationResultView<EmptyView, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?> and conformance WorkoutNotificationResultView<A, B>, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD7ForEachVySnySiGSiAA0ac4UnitE0VGSgGMd);
  lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>?, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?> and conformance WorkoutNotificationResultView<A, B>, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AD15ModifiedContentVyAhD30_EnvironmentKeyWritingModifierVyAA0aE5StyleOGGAPtGSgAD7ForEachVySnySiGSiAHGSgGMd);
  _ConditionalContent<>.init(storage:)();
  v24 = v3;
  return outlined destroy of WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>?, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?>(v24, v23);
}

uint64_t WorkoutNotificationRaceCompleteView.completionMessage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySnySiGSi07WorkoutB00E20NotificationUnitViewVGMd);
  MEMORY[0x28223BE20](v3);
  v6 = &v16[-v5 - 8];
  v7 = *(v1 + 48);
  v19[2] = *(v1 + 32);
  v19[3] = v7;
  v19[4] = *(v1 + 64);
  v20 = *(v1 + 80);
  v8 = *(v1 + 16);
  v19[0] = *v1;
  v19[1] = v8;
  if (*&v19[0] >> 62)
  {
    v15 = v4;
    v9 = __CocoaSet.count.getter();
    v4 = v15;
    if (v9 >= 4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((*&v19[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 >= 4)
    {
LABEL_3:
      v17 = 3;
      v18 = v9;
      v15 = v4;
      swift_getKeyPath();
      v10 = swift_allocObject();
      v11 = *(v1 + 48);
      *(v10 + 48) = *(v1 + 32);
      *(v10 + 64) = v11;
      *(v10 + 80) = *(v1 + 64);
      *(v10 + 96) = *(v1 + 80);
      v12 = *(v1 + 16);
      *(v10 + 16) = *v1;
      *(v10 + 32) = v12;
      outlined init with copy of WorkoutNotificationRaceCompleteView(v19, v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
      lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
      lazy protocol witness table accessor for type WorkoutNotificationUnitView and conformance WorkoutNotificationUnitView();
      ForEach<>.init(_:id:content:)();
      (*(v15 + 32))(a1, v6, v3);
      return (*(v15 + 56))(a1, 0, 1, v3);
    }
  }

  v14 = *(v4 + 56);

  return v14(a1, 1, 1, v3);
}

void WorkoutNotificationRaceCompleteView.resultRow.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  if (!(*v1 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3)
    {
      goto LABEL_3;
    }

LABEL_13:
    _s7SwiftUI9TupleViewVy07WorkoutB00e16NotificationUnitD0V_AA15ModifiedContentVyAfA30_EnvironmentKeyWritingModifierVyAD0eD5StyleOGGANtGSgWOi0_(&v35);
    goto LABEL_14;
  }

  if (__CocoaSet.count.getter() < 3)
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x20F30C990](0, v3);
    KeyPath = swift_getKeyPath();
    v24 = v4;
    v8 = MEMORY[0x20F30C990](1, v3);
    goto LABEL_7;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = *(v3 + 32);

  v6 = swift_getKeyPath();
  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  KeyPath = v6;
  v8 = *(v3 + 40);
  v9 = v4;

LABEL_7:
  v10 = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v12 = v4;
  if ((v3 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x20F30C990](2, v3);
LABEL_11:
    v14 = swift_getKeyPath();
    v15 = swift_getKeyPath();
    v16 = v12;

    v17 = v16;
    outlined copy of Environment<WorkoutViewStyle>.Content(KeyPath, 0);

    v18 = v17;
    outlined copy of Environment<WorkoutViewStyle>.Content(v10, 0);

    v19 = v18;
    outlined copy of Environment<WorkoutViewStyle>.Content(v14, 0);

    outlined consume of Environment<WorkoutViewStyle>.Content(v14, 0);

    outlined consume of Environment<WorkoutViewStyle>.Content(v10, 0);

    outlined consume of Environment<WorkoutViewStyle>.Content(KeyPath, 0);
    *&v25 = v5;
    *(&v25 + 1) = v19;
    *&v26 = 0;
    *(&v26 + 1) = KeyPath;
    LOBYTE(v27) = 0;
    *(&v27 + 1) = v8;
    v28 = v19;
    *&v29 = v10;
    BYTE8(v29) = 0;
    *&v30 = v11;
    BYTE8(v30) = 2;
    *&v31 = v13;
    *(&v31 + 1) = v19;
    *&v32 = 0;
    *(&v32 + 1) = v14;
    LOBYTE(v33) = 0;
    *(&v33 + 1) = v15;
    v34 = 2;
    _s7SwiftUI9TupleViewVy07WorkoutB00e16NotificationUnitD0V_AA15ModifiedContentVyAfA30_EnvironmentKeyWritingModifierVyAD0eD5StyleOGGANtGSgWOi_(&v25);
    v41 = v31;
    v42 = v32;
    v43 = v33;
    v44 = v34;
    v37 = v27;
    v38 = v28;
    v39 = v29;
    v40 = v30;
    v35 = v25;
    v36 = v26;
LABEL_14:
    v20 = v42;
    *(a1 + 96) = v41;
    *(a1 + 112) = v20;
    *(a1 + 128) = v43;
    *(a1 + 144) = v44;
    v21 = v38;
    *(a1 + 32) = v37;
    *(a1 + 48) = v21;
    v22 = v40;
    *(a1 + 64) = v39;
    *(a1 + 80) = v22;
    v23 = v36;
    *a1 = v35;
    *(a1 + 16) = v23;
    return;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
  {
    v13 = *(v3 + 48);

    goto LABEL_11;
  }

LABEL_18:
  __break(1u);
}

unint64_t closure #1 in WorkoutNotificationRaceCompleteView.completionMessage.getter@<X0>(id *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  v6 = *a2;
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x20F30C990](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = *(v6 + 8 * result + 32);

LABEL_5:
  v9 = a2[1];
  KeyPath = swift_getKeyPath();
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = 0;
  *(a3 + 24) = KeyPath;
  *(a3 + 32) = 0;

  return v9;
}

uint64_t lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?> and conformance WorkoutNotificationResultView<A, B>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined init with copy of WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>?, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>?, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double _s7SwiftUI9TupleViewVy07WorkoutB00e16NotificationUnitD0V_AA15ModifiedContentVyAfA30_EnvironmentKeyWritingModifierVyAD0eD5StyleOGGANtGSgWOi0_(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationResultView<EmptyView, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?>, WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>?, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationResultView<EmptyView, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?>, WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>?, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationResultView<EmptyView, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?>, WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>?, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E22NotificationResultViewVyAA05EmptyH0VAA7ForEachVySnySiGSiAD0ef4UnitH0VGSgGAFyAA05TupleH0VyAM_AA08ModifiedD0VyAmA30_EnvironmentKeyWritingModifierVyAD0eH5StyleOGGAZtGSgAOGGMd);
    lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type WorkoutNotificationResultView<EmptyView, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?> and conformance WorkoutNotificationResultView<A, B>, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD7ForEachVySnySiGSiAA0ac4UnitE0VGSgGMd);
    lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>?, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?> and conformance WorkoutNotificationResultView<A, B>, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AD15ModifiedContentVyAhD30_EnvironmentKeyWritingModifierVyAA0aE5StyleOGGAPtGSgAD7ForEachVySnySiGSiAHGSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationResultView<EmptyView, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?>, WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>?, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t specialized static _HKWorkoutGoalType.< infix(_:_:)(unint64_t a1, unint64_t a2)
{
  if (a1 < 4 && a2 < 4)
  {
    return qword_20CB7D1D0[a1] < qword_20CB7D1D0[a2];
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type _HKWorkoutGoalType and conformance _HKWorkoutGoalType()
{
  result = lazy protocol witness table cache variable for type _HKWorkoutGoalType and conformance _HKWorkoutGoalType;
  if (!lazy protocol witness table cache variable for type _HKWorkoutGoalType and conformance _HKWorkoutGoalType)
  {
    type metadata accessor for _HKWorkoutGoalType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _HKWorkoutGoalType and conformance _HKWorkoutGoalType);
  }

  return result;
}

uint64_t (*SessionControlsCanonical.closure(for:)(uint64_t a1))()
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  outlined copy of SessionControl(v1, v2, v3, v4);
  return partial apply for closure #1 in SessionControlsCanonical.closure(for:);
}

uint64_t closure #1 in SessionControlsCanonical.closure(for:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.app.getter();
  outlined copy of SessionControl(a1, a2, a3, a4);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  outlined consume of SessionControl(a1, a2, a3, a4);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21[0] = v8;
    v15 = v14;
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;
    v21[1] = a1;
    v21[2] = a2;
    v21[3] = a3;
    v22 = a4;
    outlined copy of SessionControl(a1, a2, a3, a4);
    v17 = String.init<A>(describing:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v23);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_20C66F000, v12, v13, "Executing sessionControl=%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x20F30E080](v16, -1, -1);
    MEMORY[0x20F30E080](v15, -1, -1);

    return (*(v9 + 8))(v11, v21[0]);
  }

  else
  {

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t (*protocol witness for SessionControls.closure(for:) in conformance SessionControlsCanonical(uint64_t a1))()
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  outlined copy of SessionControl(v1, v2, v3, v4);
  return closure #1 in SessionControlsCanonical.closure(for:)partial apply;
}

uint64_t objectdestroyTm_60()
{
  outlined consume of SessionControl(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for UnitSettingsEnergyUnit(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UnitSettingsEnergyUnit(uint64_t result, unsigned int a2, unsigned int a3)
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UnitSettingsEnergyUnit()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UnitSettingsEnergyUnit()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

void protocol witness for Identifiable.id.getter in conformance UnitSettingsEnergyUnit(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000029;
  v3 = "ERGY_UNITS_KILOJOULES_LABEL";
  v4 = 0xD00000000000002DLL;
  if (*v1 != 1)
  {
    v4 = 0xD00000000000002BLL;
    v3 = "SessionControlsCanonical";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "ERGY_UNITS_KILOCALORIES_LABEL";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

unint64_t lazy protocol witness table accessor for type [UnitSettingsEnergyUnit] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UnitSettingsEnergyUnit] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UnitSettingsEnergyUnit] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9WorkoutUI018UnitSettingsEnergyC0OGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UnitSettingsEnergyUnit] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnitSettingsEnergyUnit and conformance UnitSettingsEnergyUnit()
{
  result = lazy protocol witness table cache variable for type UnitSettingsEnergyUnit and conformance UnitSettingsEnergyUnit;
  if (!lazy protocol witness table cache variable for type UnitSettingsEnergyUnit and conformance UnitSettingsEnergyUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnitSettingsEnergyUnit and conformance UnitSettingsEnergyUnit);
  }

  return result;
}

uint64_t specialized static UnitSettingsEnergyUnit.makeFromHKUnit(_:)(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 largeCalorieUnit];
  type metadata accessor for HKUnit();
  v4 = static NSObject.== infix(_:_:)();

  if (v4)
  {
    return 0;
  }

  v6 = [v2 kilocalorieUnit];
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    return 1;
  }

  v8 = [v2 jouleUnitWithMetricPrefix_];
  v9 = static NSObject.== infix(_:_:)();

  if ((v9 & 1) == 0)
  {
    v10 = static os_log_type_t.error.getter();
    v11 = *MEMORY[0x277CCC270];
    if (os_log_type_enabled(*MEMORY[0x277CCC270], v10))
    {
      v12 = v11;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = a1;
      *v14 = a1;
      v15 = a1;
      _os_log_impl(&dword_20C66F000, v12, v10, "Unexpected energy units %@. Setting energy units to kilojoules", v13, 0xCu);
      outlined destroy of NSObject?(v14);
      MEMORY[0x20F30E080](v14, -1, -1);
      MEMORY[0x20F30E080](v13, -1, -1);
    }
  }

  return 2;
}

uint64_t UnitsSettingsItemView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v31 = type metadata accessor for AccessibilityTraits();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccessibilityChildBehavior();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVAGyAGyAGyAA5ImageVANyAA4FontVSgGGAA016_ForegroundStyleM0VyAA014SelectionShapeS0VGGAA023AccessibilityAttachmentM0VGSgtGGMd);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleC0VyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVAMyAMyAMyAA5ImageVATyAA4FontVSgGGAA016_ForegroundStyleS0VyAA014SelectionShapeY0VGGAA0g10AttachmentS0VGSgtGG_Qo_Md);
  v27 = *(v11 - 8);
  v28 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  *v10 = static VerticalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVAKyAKyAKyAA5ImageVARyAA4FontVSgGGAA016_ForegroundStyleP0VyAA014SelectionShapeV0VGGAA023AccessibilityAttachmentP0VGSgtGGMd);
  closure #1 in UnitsSettingsItemView.body.getter(*(a1 + 16), *(a1 + 24), &v10[*(v14 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v15 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>>, AccessibilityAttachmentModifier>?)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>>, AccessibilityAttachmentModifier>?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVAGyAGyAGyAA5ImageVANyAA4FontVSgGGAA016_ForegroundStyleM0VyAA014SelectionShapeS0VGGAA023AccessibilityAttachmentM0VGSgtGGMd);
  v26 = v8;
  v24 = v15;
  View.accessibilityElement(children:)();
  (*(v5 + 8))(v7, v4);
  outlined destroy of HStack<TupleView<(ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>>, AccessibilityAttachmentModifier>?)>>(v10, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVAGyAGyAGyAA5ImageVANyAA4FontVSgGGAA016_ForegroundStyleM0VyAA014SelectionShapeS0VGGAA023AccessibilityAttachmentM0VGSgtGGMd);
  if (UnitsSettingsItemView.isSelected.getter(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI19AccessibilityTraitsVGMd);
    v16 = v29;
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_20CB5DA70;
    static AccessibilityTraits.isSelected.getter();
    v32 = v17;
    _s7SwiftUI19AccessibilityTraitsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type AccessibilityTraits and conformance AccessibilityTraits, MEMORY[0x277CE01F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SwiftUI19AccessibilityTraitsVGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>>, AccessibilityAttachmentModifier>?)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [AccessibilityTraits] and conformance [A], &_sSay7SwiftUI19AccessibilityTraitsVGMd);
    v18 = v25;
    v19 = v31;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v20 = v16;
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
    _s7SwiftUI19AccessibilityTraitsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type AccessibilityTraits and conformance AccessibilityTraits, MEMORY[0x277CE01F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SwiftUI19AccessibilityTraitsVGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>>, AccessibilityAttachmentModifier>?)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [AccessibilityTraits] and conformance [A], &_sSay7SwiftUI19AccessibilityTraitsVGMd);
    v18 = v25;
    v19 = v31;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v20 = v29;
  }

  v32 = v26;
  v33 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v28;
  MEMORY[0x20F30A9C0](v18, v28, OpaqueTypeConformance2);
  (*(v20 + 8))(v18, v19);
  return (*(v27 + 8))(v13, v22);
}

uint64_t closure #1 in UnitsSettingsItemView.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v28[1] = a1;
  v28[2] = a2;
  v29 = a3;
  v28[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA014SelectionShapeL0VGGMd);
  MEMORY[0x28223BE20](v28[0]);
  v4 = (v28 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA014SelectionShapeL0VGGAA023AccessibilityAttachmentI0VGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA014SelectionShapeL0VGGAA023AccessibilityAttachmentI0VGSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v28 - v19;
  v21 = type metadata accessor for UnitsSettingsItemView();
  UnitsSettingsItemView.button.getter(v21, v20);
  v22 = UnitsSettingsItemView.isSelected.getter(v21);
  v23 = 1;
  if (v22)
  {
    UnitsSettingsItemView.checkmarkImageView.getter(v4);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>> and conformance <> ModifiedContent<A, B>();
    View.accessibilityHidden(_:)();
    outlined destroy of HStack<TupleView<(ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>>, AccessibilityAttachmentModifier>?)>>(v4, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA014SelectionShapeL0VGGMd);
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>>, AccessibilityAttachmentModifier>(v8, v14);
    v23 = 0;
  }

  (*(v6 + 56))(v14, v23, 1, v5);
  outlined init with copy of ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>(v20, v17, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  outlined init with copy of ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>(v14, v11, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA014SelectionShapeL0VGGAA023AccessibilityAttachmentI0VGSgMd);
  v24 = v29;
  outlined init with copy of ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>(v17, v29, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVACyACyACyAA5ImageVAJyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA014SelectionShapeP0VGGAA023AccessibilityAttachmentJ0VGSgtMd);
  v26 = v24 + *(v25 + 48);
  *v26 = 0;
  *(v26 + 8) = 1;
  outlined init with copy of ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>(v11, v24 + *(v25 + 64), &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA014SelectionShapeL0VGGAA023AccessibilityAttachmentI0VGSgMd);
  outlined destroy of HStack<TupleView<(ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>>, AccessibilityAttachmentModifier>?)>>(v14, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA014SelectionShapeL0VGGAA023AccessibilityAttachmentI0VGSgMd);
  outlined destroy of HStack<TupleView<(ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>>, AccessibilityAttachmentModifier>?)>>(v20, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  outlined destroy of HStack<TupleView<(ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>>, AccessibilityAttachmentModifier>?)>>(v11, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA014SelectionShapeL0VGGAA023AccessibilityAttachmentI0VGSgMd);
  return outlined destroy of HStack<TupleView<(ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>>, AccessibilityAttachmentModifier>?)>>(v17, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
}

uint64_t UnitsSettingsItemView.button.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = *(v6 + 16);
  v8 = *(v6 + 32);
  dispatch thunk of Identifiable.id.getter();
  v24 = LocalizedStringKey.init(stringLiteral:)();
  v10 = v9;
  v23 = v11;
  v13 = v12;
  (*(v4 + 16))(&v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v2, a1);
  v14 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v15 = swift_allocObject();
  v16 = *(a1 + 24);
  *(v15 + 2) = v7;
  *(v15 + 3) = v16;
  *(v15 + 4) = v8;
  (*(v4 + 32))(&v15[v14], &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  v17 = v25;
  v26 = v24;
  v27 = v10;
  v28 = v23 & 1;
  v29 = v13;
  Button.init(action:label:)();

  v18 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  v21 = (v17 + *(result + 36));
  *v21 = KeyPath;
  v21[1] = v18;
  return result;
}

uint64_t UnitsSettingsItemView.isSelected.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](a1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Binding();
  MEMORY[0x20F30B100](v5);
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v2 + 8))(v4, v1);
  return v6 & 1;
}

uint64_t UnitsSettingsItemView.checkmarkImageView.getter@<X0>(uint64_t *a1@<X8>)
{
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  v2 = Font.weight(_:)();

  v3 = Image.init(systemName:)();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA014SelectionShapeL0VGGMd);
  result = SelectionShapeStyle.init()();
  *a1 = v3;
  a1[1] = KeyPath;
  a1[2] = v2;
  return result;
}

uint64_t closure #2 in UnitsSettingsItemView.button.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = one-time initialization token for WorkoutUIBundle;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = WorkoutUIBundle.super.isa;
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t UnitsSettingsItemView.init(item:dataProviderBinding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = *(type metadata accessor for UnitsSettingsItemView() + 44);
  v7 = type metadata accessor for Binding();
  v8 = *(*(v7 - 8) + 32);

  return v8(a4 + v6, a2, v7);
}

uint64_t type metadata completion function for UnitsSettingsItemView()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Binding();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnitsSettingsItemView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(v4 + 80);
  v9 = v8 | 7;
  v10 = (v8 | 7) + v6;
  v11 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v12 = ((v8 + 16) & ~v8) + v6 + (v10 & ~v9);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v16 < 2)
    {
LABEL_26:
      if (v5 >= 0x7FFFFFFF)
      {
        return (*(v4 + 48))();
      }

      v18 = *((((a1 + v10) & ~v9) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_26;
  }

LABEL_15:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return v7 + (v12 | v17) + 1;
}

char *storeEnumTagSinglePayload for UnitsSettingsItemView(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = *(v5 + 80);
  v10 = (v9 | 7) + v8;
  v11 = ((v9 + 16) & ~v9) + v8 + (v10 & ~(v9 | 7));
  v12 = a3 >= v7;
  v13 = a3 - v7;
  if (v13 != 0 && v12)
  {
    if (v11 <= 3)
    {
      v18 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v18))
      {
        v14 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v14 = v19;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v7 < a2)
  {
    v15 = ~v7 + a2;
    if (v11 < 4)
    {
      v17 = (v15 >> (8 * v11)) + 1;
      if (v11)
      {
        v20 = v15 & ~(-1 << (8 * v11));
        v21 = result;
        bzero(result, v11);
        result = v21;
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *v21 = v20;
            if (v14 > 1)
            {
LABEL_47:
              if (v14 == 2)
              {
                *&result[v11] = v17;
              }

              else
              {
                *&result[v11] = v17;
              }

              return result;
            }
          }

          else
          {
            *v21 = v15;
            if (v14 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *v21 = v20;
        v21[2] = BYTE2(v20);
      }

      if (v14 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v16 = result;
      bzero(result, v11);
      result = v16;
      *v16 = v15;
      v17 = 1;
      if (v14 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v14)
    {
      result[v11] = v17;
    }

    return result;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&result[v11] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v11] = 0;
  }

  else if (v14)
  {
    result[v11] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 < 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v23 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v23 = a2 - 1;
    }

    *(((&result[v10] & ~(v9 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) = v23;
  }

  else
  {
    v22 = *(v5 + 56);

    return v22();
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA014SelectionShapeL0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>>, AccessibilityAttachmentModifier>?)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<SelectionShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA014SelectionShapeD0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>>, AccessibilityAttachmentModifier>?)>> and conformance HStack<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined destroy of HStack<TupleView<(ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>>, AccessibilityAttachmentModifier>?)>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA014SelectionShapeL0VGGAA023AccessibilityAttachmentI0VGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized UnitsSettingsItemView.dataProviderBinding.setter(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v2, v3);
  type metadata accessor for Binding();
  return Binding.wrappedValue.setter();
}

uint64_t _s7SwiftUI19AccessibilityTraitsVACs10SetAlgebraAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for UnitSettingsPoolLengthUnit(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UnitSettingsPoolLengthUnit(uint64_t result, unsigned int a2, unsigned int a3)
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UnitSettingsPoolLengthUnit()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UnitSettingsPoolLengthUnit()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

void protocol witness for Identifiable.id.getter in conformance UnitSettingsPoolLengthUnit(unint64_t *a1@<X8>)
{
  v2 = "ERGY_UNITS_CALORIES_LABEL";
  v3 = 0xD000000000000025;
  if (*v1)
  {
    v3 = 0xD000000000000026;
  }

  else
  {
    v2 = "OL_LENGTH_METERS_LABEL";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

unint64_t lazy protocol witness table accessor for type [UnitSettingsPoolLengthUnit] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UnitSettingsPoolLengthUnit] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UnitSettingsPoolLengthUnit] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9WorkoutUI022UnitSettingsPoolLengthC0OGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UnitSettingsPoolLengthUnit] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnitSettingsPoolLengthUnit and conformance UnitSettingsPoolLengthUnit()
{
  result = lazy protocol witness table cache variable for type UnitSettingsPoolLengthUnit and conformance UnitSettingsPoolLengthUnit;
  if (!lazy protocol witness table cache variable for type UnitSettingsPoolLengthUnit and conformance UnitSettingsPoolLengthUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnitSettingsPoolLengthUnit and conformance UnitSettingsPoolLengthUnit);
  }

  return result;
}

uint64_t specialized static UnitSettingsPoolLengthUnit.makeFromFIUIDistanceUnit(_:)(uint64_t result)
{
  if (result <= 2)
  {
    if (result == 1)
    {
      return result;
    }

    if (result == 2)
    {
      v6 = static os_log_type_t.error.getter();
      v7 = *MEMORY[0x277CCC270];
      if (os_log_type_enabled(*MEMORY[0x277CCC270], v6))
      {
        v8 = v7;
        v9 = swift_slowAlloc();
        *v9 = 134217984;
        *(v9 + 4) = 2;
LABEL_14:
        _os_log_impl(&dword_20C66F000, v8, v6, "Unexpected pool length units %lu. Setting pool length unit to meters", v9, 0xCu);
        MEMORY[0x20F30E080](v9, -1, -1);
      }

      return 1;
    }

LABEL_12:
    v10 = result;
    v6 = static os_log_type_t.error.getter();
    v11 = *MEMORY[0x277CCC270];
    if (os_log_type_enabled(*MEMORY[0x277CCC270], v6))
    {
      v8 = v11;
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = v10;
      goto LABEL_14;
    }

    return 1;
  }

  if (result != 5)
  {
    if (result == 4)
    {
      return 0;
    }

    if (result != 3)
    {
      goto LABEL_12;
    }
  }

  v1 = result;
  v2 = static os_log_type_t.error.getter();
  v3 = *MEMORY[0x277CCC270];
  result = os_log_type_enabled(*MEMORY[0x277CCC270], v2);
  if (result)
  {
    v4 = v3;
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_20C66F000, v4, v2, "Unexpected pool length units %lu. Setting pool length unit to yards", v5, 0xCu);
    MEMORY[0x20F30E080](v5, -1, -1);

    return 0;
  }

  return result;
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t UnitsSettingsDataProvider.isWheelchairUser.getter()
{
  return UnitsSettingsDataProvider.isWheelchairUser.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void UnitsSettingsDataProvider.energyUnit.didset()
{
  v1 = [*(v0 + 16) unitManager];
  if (v1)
  {
    v2 = v1;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v3 = objc_opt_self();
    if (v6)
    {
      if (v6 == 1)
      {
        v4 = [v3 kilocalorieUnit];
      }

      else
      {
        v4 = [v3 jouleUnitWithMetricPrefix_];
      }
    }

    else
    {
      v4 = [v3 largeCalorieUnit];
    }

    v5 = v4;
    [v2 setUserActiveEnergyBurnedUnit_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t UnitsSettingsDataProvider.energyUnit.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void UnitsSettingsDataProvider.poolLengthUnit.didset()
{
  v1 = [*(v0 + 16) unitManager];
  if (v1)
  {
    v2 = v1;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v4)
    {
      v3 = 1;
    }

    else
    {
      v3 = 4;
    }

    [v2 setUserDistanceUnit:v3 forDistanceType:3];
  }

  else
  {
    __break(1u);
  }
}

uint64_t UnitsSettingsDataProvider.poolLengthUnit.getter()
{
  return UnitsSettingsDataProvider.poolLengthUnit.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void UnitsSettingsDataProvider.cyclingWorkoutsUnit.didset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(v3 + 16) unitManager];
  if (v5)
  {
    v6 = v5;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v8)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    [v6 setUserDistanceUnit:v7 forDistanceType:a3];
  }

  else
  {
    __break(1u);
  }
}

uint64_t UnitsSettingsDataProvider.trackWorkoutsUnit.didset(char a1)
{
  v2 = v1;
  aBlock[7] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (LOBYTE(aBlock[0]) != (a1 & 1))
  {
    v23 = v5;
    v13 = v2[3];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v15 = MEMORY[0x20F30BAD0](0xD000000000000013, 0x800000020CB9DBF0);
    aBlock[0] = 0;
    v16 = [v13 setNumber:v14 forKey:v15 error:aBlock];

    if (v16)
    {
      v17 = aBlock[0];
    }

    else
    {
      v18 = aBlock[0];
      v19 = _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    type metadata accessor for OS_dispatch_queue();
    v20 = static OS_dispatch_queue.main.getter();
    aBlock[4] = partial apply for closure #1 in UnitsSettingsDataProvider.trackWorkoutsUnit.didset;
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_136;
    v21 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F30C1F0](0, v11, v7, v21);
    _Block_release(v21);

    (*(v23 + 8))(v7, v4);
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

void closure #1 in UnitsSettingsDataProvider.trackWorkoutsUnit.didset(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[4] = closure #1 in closure #1 in UnitsSettingsDataProvider.trackWorkoutsUnit.didset;
  v3[5] = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v3[3] = &block_descriptor_139;
  v2 = _Block_copy(v3);
  [v1 forceNanoSyncWithOptions:0 completion:v2];
  _Block_release(v2);
}

void closure #1 in closure #1 in UnitsSettingsDataProvider.trackWorkoutsUnit.didset(char a1, void *a2)
{
  if ((a1 & 1) == 0)
  {
    v3 = static os_log_type_t.default.getter();
    v4 = *MEMORY[0x277CCC270];
    if (os_log_type_enabled(*MEMORY[0x277CCC270], v3))
    {
      log = v4;
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      if (a2)
      {
        v7 = a2;
        v8 = _swift_stdlib_bridgeErrorToNSError();
        v9 = v8;
      }

      else
      {
        v8 = 0;
        v9 = 0;
      }

      *(v5 + 4) = v8;
      *v6 = v9;
      _os_log_impl(&dword_20C66F000, log, v3, "[UnitSettingsDataProvider] Failed to nano sync after updating track unit: %@", v5, 0xCu);
      _sypSgWOhTm_0(v6, &_sSo8NSObjectCSgMd);
      MEMORY[0x20F30E080](v6, -1, -1);
      MEMORY[0x20F30E080](v5, -1, -1);
    }
  }
}

id UnitsSettingsDataProvider.deinit()
{
  [*(v0 + 24) stopObservation_];
  v1 = *(v0 + 40);
  v2 = objc_opt_self();

  v3 = [v2 defaultCenter];
  v4 = *(v1 + 16);
  result = v3;
  v6 = result;
  if (v4)
  {
    v7 = 0;
    v8 = v1 + 32;
    while (v7 < *(v1 + 16))
    {
      outlined init with copy of Any(v8, v21);
      ++v7;
      __swift_project_boxed_opaque_existential_0(v21, v21[3]);
      [v6 removeObserver_];
      swift_unknownObjectRelease();
      result = __swift_destroy_boxed_opaque_existential_0(v21);
      v8 += 32;
      if (v4 == v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v9 = OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__isWheelchairUser;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
    v11 = *(*(v10 - 8) + 8);
    v11(v0 + v9, v10);
    v11(v0 + OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__isAppleMoveTime, v10);
    v12 = OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__energyUnit;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI018UnitSettingsEnergyE0OGMd);
    (*(*(v13 - 8) + 8))(v0 + v12, v13);
    v14 = OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__poolLengthUnit;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI022UnitSettingsPoolLengthE0OGMd);
    (*(*(v15 - 8) + 8))(v0 + v14, v15);
    v16 = OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__cyclingWorkoutsUnit;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI020UnitSettingsDistanceE0OGMd);
    v18 = *(*(v17 - 8) + 8);
    v18(v0 + v16, v17);
    v18(v0 + OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__walkingAndRunningWorkoutsUnit, v17);
    v18(v0 + OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__crossCountrySkiingWorkoutsUnit, v17);
    v18(v0 + OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__downhillSnowSportsWorkoutsUnit, v17);
    v18(v0 + OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__rowingWorkoutsUnit, v17);
    v18(v0 + OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__paddleSportsWorkoutsUnit, v17);
    v18(v0 + OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__skatingSportsWorkoutsUnit, v17);
    v19 = OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__trackWorkoutsUnit;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI025UnitSettingsTrackDistanceE0OGMd);
    (*(*(v20 - 8) + 8))(v0 + v19, v20);
    return v0;
  }

  return result;
}

uint64_t UnitsSettingsDataProvider.__deallocating_deinit()
{
  UnitsSettingsDataProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UnitsSettingsDataProvider()
{
  result = type metadata singleton initialization cache for UnitsSettingsDataProvider;
  if (!type metadata singleton initialization cache for UnitsSettingsDataProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void UnitsSettingsDataProvider.fetchUserUnits()()
{
  v1 = *(v0 + 16);
  v2 = [v1 unitManager];
  if (!v2)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = v2;
  v4 = [v2 userActiveEnergyBurnedUnit];

  specialized static UnitSettingsEnergyUnit.makeFromHKUnit(_:)(v4);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  UnitsSettingsDataProvider.energyUnit.didset();
  v5 = [v1 unitManager];
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = v5;
  v7 = [v5 userDistanceUnitForDistanceType_];

  specialized static UnitSettingsPoolLengthUnit.makeFromFIUIDistanceUnit(_:)(v7);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  UnitsSettingsDataProvider.poolLengthUnit.didset();
  v8 = [v1 unitManager];
  if (!v8)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = v8;
  v10 = [v8 userDistanceUnitForDistanceType_];

  specialized static UnitSettingsDistanceUnit.makeFromFIUIDistanceUnit(_:)(v10);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  UnitsSettingsDataProvider.cyclingWorkoutsUnit.didset(&unk_20CB7D6B0, &unk_20CB7D6D8, 2);
  v11 = [v1 unitManager];
  if (!v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = v11;
  v13 = [v11 userDistanceUnitForDistanceType_];

  specialized static UnitSettingsDistanceUnit.makeFromFIUIDistanceUnit(_:)(v13);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  UnitsSettingsDataProvider.cyclingWorkoutsUnit.didset(&unk_20CB7D6F8, &unk_20CB7D720, 1);
  v14 = [v1 unitManager];
  if (!v14)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v14;
  v16 = [v14 userDistanceUnitForDistanceType_];

  specialized static UnitSettingsDistanceUnit.makeFromFIUIDistanceUnit(_:)(v16);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  UnitsSettingsDataProvider.cyclingWorkoutsUnit.didset(&unk_20CB7D740, &unk_20CB7D768, 6);
  v17 = [v1 unitManager];
  if (!v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v17;
  v19 = [v17 userDistanceUnitForDistanceType_];

  specialized static UnitSettingsDistanceUnit.makeFromFIUIDistanceUnit(_:)(v19);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  UnitsSettingsDataProvider.cyclingWorkoutsUnit.didset(&unk_20CB7D788, &unk_20CB7D7B0, 7);
  v20 = [v1 unitManager];
  if (!v20)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v21 = v20;
  v22 = [v20 userDistanceUnitForDistanceType_];

  specialized static UnitSettingsDistanceUnit.makeFromFIUIDistanceUnit(_:)(v22);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  UnitsSettingsDataProvider.cyclingWorkoutsUnit.didset(&unk_20CB7D7D0, &unk_20CB7D7F8, 9);
  v23 = [v1 unitManager];
  if (!v23)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v24 = v23;
  v25 = [v23 userDistanceUnitForDistanceType_];

  specialized static UnitSettingsDistanceUnit.makeFromFIUIDistanceUnit(_:)(v25);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  UnitsSettingsDataProvider.cyclingWorkoutsUnit.didset(&unk_20CB7D818, &unk_20CB7D840, 8);
  v26 = [v1 unitManager];
  if (!v26)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v27 = v26;
  v28 = [v26 userDistanceUnitForDistanceType_];

  v29 = specialized static UnitSettingsDistanceUnit.makeFromFIUIDistanceUnit(_:)(v28);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  UnitsSettingsDataProvider.cyclingWorkoutsUnit.didset(&unk_20CB7D860, &unk_20CB7D888, 10);
  v30._object = 0x800000020CB9DBF0;
  v30._countAndFlagsBits = 0xD000000000000013;
  v31 = HKKeyValueDomain.number(for:)(v30);
  if (v32)
  {

    v33 = 0;
  }

  else
  {
    v33 = v31;
    if (v31)
    {
      [v31 integerValue];
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  UnitsSettingsDataProvider.trackWorkoutsUnit.didset(v29 & 1);
}

uint64_t UnitsSettingsDataProvider.addNotificationCenterObservers()()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  if (one-time initialization token for WheelchairUseDidChange != -1)
  {
    swift_once();
  }

  v3 = static NSNotificationName.WheelchairUseDidChange;
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 mainQueue];
  v7 = swift_allocObject();
  swift_weakInit();
  v22 = partial apply for closure #1 in UnitsSettingsDataProvider.addNotificationCenterObservers();
  v23 = v7;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v21 = &block_descriptor_24;
  v8 = _Block_copy(&v18);

  v9 = [v2 addObserverForName:v5 object:0 queue:v6 usingBlock:v8];
  _Block_release(v8);

  v10 = [v1 defaultCenter];
  v11 = *MEMORY[0x277D0A848];
  v12 = [v4 mainQueue];
  v13 = swift_allocObject();
  swift_weakInit();
  v22 = partial apply for closure #2 in UnitsSettingsDataProvider.addNotificationCenterObservers();
  v23 = v13;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v21 = &block_descriptor_71_0;
  v14 = _Block_copy(&v18);

  v15 = [v10 addObserverForName:v11 object:0 queue:v12 usingBlock:v14];
  _Block_release(v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20CB5DA80;
  *(v16 + 56) = swift_getObjectType();
  *(v16 + 32) = v9;
  *(v16 + 88) = swift_getObjectType();
  *(v16 + 64) = v15;
  *(v0 + 40) = v16;
}

uint64_t closure #1 in UnitsSettingsDataProvider.addNotificationCenterObservers()()
{
  v0 = Notification.userInfo.getter();
  if (!v0)
  {
    goto LABEL_9;
  }

  v1 = v0;
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v2 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v3 & 1) == 0))
  {

    outlined destroy of AnyHashable(v6);
LABEL_9:
    v7 = 0u;
    v8 = 0u;
    return _sypSgWOhTm_0(&v7, &_sypSgMd);
  }

  outlined init with copy of Any(*(v1 + 56) + 32 * v2, &v7);
  outlined destroy of AnyHashable(v6);

  if (!*(&v8 + 1))
  {
    return _sypSgWOhTm_0(&v7, &_sypSgMd);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v5 = v6[0];
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v7) = v5;
      return static Published.subscript.setter();
    }
  }

  return result;
}

uint64_t closure #2 in UnitsSettingsDataProvider.addNotificationCenterObservers()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    UnitsSettingsDataProvider.fetchUserUnits()();
  }

  return result;
}

void type metadata completion function for UnitsSettingsDataProvider()
{
  type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<Bool>);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<UnitSettingsEnergyUnit>);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<UnitSettingsPoolLengthUnit>);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<UnitSettingsDistanceUnit>);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<UnitSettingsTrackDistanceUnit>);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void type metadata accessor for Published<Bool>(uint64_t a1, unint64_t *a2)
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

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance UnitsSettingsDataProvider@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for UnitsSettingsDataProvider();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t key path getter for UnitsSettingsDataProvider.energyUnit : UnitsSettingsDataProvider@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

void key path setter for UnitsSettingsDataProvider.energyUnit : UnitsSettingsDataProvider()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  UnitsSettingsDataProvider.energyUnit.didset();
}

uint64_t key path getter for UnitsSettingsDataProvider.poolLengthUnit : UnitsSettingsDataProvider@<X0>(_BYTE *a1@<X8>)
{
  return key path getter for UnitsSettingsDataProvider.poolLengthUnit : UnitsSettingsDataProvider(a1);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

void key path setter for UnitsSettingsDataProvider.poolLengthUnit : UnitsSettingsDataProvider()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  UnitsSettingsDataProvider.poolLengthUnit.didset();
}

void key path setter for UnitsSettingsDataProvider.skatingSportsWorkoutsUnit : UnitsSettingsDataProvider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  UnitsSettingsDataProvider.cyclingWorkoutsUnit.didset(a5, a6, a7);
}

uint64_t key path setter for UnitsSettingsDataProvider.trackWorkoutsUnit : UnitsSettingsDataProvider()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return UnitsSettingsDataProvider.trackWorkoutsUnit.didset(v1);
}

uint64_t key path setter for UnitsSettingsDataProvider.isWheelchairUser : UnitsSettingsDataProvider()
{
  return key path setter for UnitsSettingsDataProvider.isWheelchairUser : UnitsSettingsDataProvider();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t _sypSgWOhTm_0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized UnitsSettingsDataProvider.init(formattingManager:healthStore:isWheelchairUser:isAppleMoveTime:)(void *a1, uint64_t a2, int a3, int a4)
{
  v44 = a3;
  v45 = a4;
  v42 = a1;
  v43 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI025UnitSettingsTrackDistanceE0OGMd);
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v39 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI020UnitSettingsDistanceE0OGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI022UnitSettingsPoolLengthE0OGMd);
  v11 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI018UnitSettingsEnergyE0OGMd);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - v16;
  *(v4 + 40) = MEMORY[0x277D84F90];
  v18 = OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__energyUnit;
  v47 = 0;
  Published.init(initialValue:)();
  (*(v15 + 32))(v4 + v18, v17, v14);
  v19 = OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__poolLengthUnit;
  v47 = 0;
  Published.init(initialValue:)();
  (*(v11 + 32))(v4 + v19, v13, v38);
  v20 = OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__cyclingWorkoutsUnit;
  v47 = 0;
  Published.init(initialValue:)();
  v21 = *(v8 + 32);
  v21(v4 + v20, v10, v7);
  v22 = OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__walkingAndRunningWorkoutsUnit;
  v47 = 0;
  Published.init(initialValue:)();
  v21(v4 + v22, v10, v7);
  v23 = OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__crossCountrySkiingWorkoutsUnit;
  v47 = 0;
  Published.init(initialValue:)();
  v21(v4 + v23, v10, v7);
  v24 = OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__downhillSnowSportsWorkoutsUnit;
  v47 = 0;
  Published.init(initialValue:)();
  v21(v4 + v24, v10, v7);
  v25 = OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__rowingWorkoutsUnit;
  v47 = 0;
  Published.init(initialValue:)();
  v21(v4 + v25, v10, v7);
  v26 = OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__paddleSportsWorkoutsUnit;
  v47 = 0;
  Published.init(initialValue:)();
  v21(v4 + v26, v10, v7);
  v27 = OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__skatingSportsWorkoutsUnit;
  v47 = 0;
  Published.init(initialValue:)();
  v21(v4 + v27, v10, v7);
  v28 = OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__trackWorkoutsUnit;
  v47 = 1;
  v29 = v39;
  Published.init(initialValue:)();
  (*(v40 + 32))(v4 + v28, v29, v41);
  v30 = v42;
  *(v4 + 16) = v42;
  v31 = *MEMORY[0x277CCE4C8];
  v32 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v33 = v30;
  v34 = v31;
  v35 = v43;
  *(v4 + 24) = [v32 initWithCategory:0 domainName:v34 healthStore:v43];
  *(v4 + 32) = [objc_allocWithZone(MEMORY[0x277CCD6A8]) initWithHealthStore_];
  swift_beginAccess();
  v46 = v44;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v46 = v45;
  Published.init(initialValue:)();
  swift_endAccess();
  UnitsSettingsDataProvider.fetchUserUnits()();
  UnitsSettingsDataProvider.addNotificationCenterObservers()();
  [*(v4 + 24) startObservation_];
  return v4;
}

uint64_t specialized UnitsSettingsDataProvider.keyValueDomain(didUpdate:)()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v9 = static OS_dispatch_queue.main.getter();
  aBlock[4] = partial apply for closure #1 in UnitsSettingsDataProvider.keyValueDomain(didUpdate:);
  v13 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_148_1;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F30C1F0](0, v8, v4, v10);
  _Block_release(v10);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t getEnumTagSinglePayload for UnitSettingsTrackDistanceUnit(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UnitSettingsTrackDistanceUnit(uint64_t result, unsigned int a2, unsigned int a3)
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UnitSettingsTrackDistanceUnit()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UnitSettingsTrackDistanceUnit()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance UnitSettingsTrackDistanceUnit@<X0>(void *result@<X0>, char *a2@<X8>)
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

void protocol witness for Identifiable.id.getter in conformance UnitSettingsTrackDistanceUnit(unint64_t *a1@<X8>)
{
  v2 = "WOTrackWorkoutsUnit";
  v3 = 0xD000000000000028;
  if (*v1)
  {
    v3 = 0xD000000000000029;
  }

  else
  {
    v2 = "ACK_WORKOUTS_METERS_LABEL";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

unint64_t lazy protocol witness table accessor for type [UnitSettingsTrackDistanceUnit] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UnitSettingsTrackDistanceUnit] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UnitSettingsTrackDistanceUnit] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9WorkoutUI025UnitSettingsTrackDistanceC0OGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UnitSettingsTrackDistanceUnit] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnitSettingsTrackDistanceUnit and conformance UnitSettingsTrackDistanceUnit()
{
  result = lazy protocol witness table cache variable for type UnitSettingsTrackDistanceUnit and conformance UnitSettingsTrackDistanceUnit;
  if (!lazy protocol witness table cache variable for type UnitSettingsTrackDistanceUnit and conformance UnitSettingsTrackDistanceUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnitSettingsTrackDistanceUnit and conformance UnitSettingsTrackDistanceUnit);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnitSettingsDistanceUnit(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UnitSettingsDistanceUnit(uint64_t result, unsigned int a2, unsigned int a3)
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UnitSettingsDistanceUnit()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UnitSettingsDistanceUnit()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

void protocol witness for Identifiable.id.getter in conformance UnitSettingsDistanceUnit(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000030;
  }

  else
  {
    v2 = 0xD00000000000002BLL;
  }

  if (*v1)
  {
    v3 = "ACK_WORKOUTS_MILES_LABEL";
  }

  else
  {
    v3 = "KILOMETERS_LABEL";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t lazy protocol witness table accessor for type [UnitSettingsDistanceUnit] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UnitSettingsDistanceUnit] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UnitSettingsDistanceUnit] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9WorkoutUI020UnitSettingsDistanceC0OGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UnitSettingsDistanceUnit] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnitSettingsDistanceUnit and conformance UnitSettingsDistanceUnit()
{
  result = lazy protocol witness table cache variable for type UnitSettingsDistanceUnit and conformance UnitSettingsDistanceUnit;
  if (!lazy protocol witness table cache variable for type UnitSettingsDistanceUnit and conformance UnitSettingsDistanceUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnitSettingsDistanceUnit and conformance UnitSettingsDistanceUnit);
  }

  return result;
}

uint64_t specialized static UnitSettingsDistanceUnit.makeFromFIUIDistanceUnit(_:)(uint64_t a1)
{
  if (a1 <= 3)
  {
    switch(a1)
    {
      case 1:
        v7 = static os_log_type_t.error.getter();
        v8 = *MEMORY[0x277CCC270];
        if (os_log_type_enabled(*MEMORY[0x277CCC270], v7))
        {
          v9 = v8;
          v10 = swift_slowAlloc();
          *v10 = 134217984;
          v6 = 1;
          *(v10 + 4) = 1;
          _os_log_impl(&dword_20C66F000, v9, v7, "Unexpected distance units %lu. Setting distance unit to kilometers", v10, 0xCu);
          MEMORY[0x20F30E080](v10, -1, -1);

          return v6;
        }

        break;
      case 2:
        break;
      case 3:
        return 0;
      default:
LABEL_12:
        v12 = static os_log_type_t.error.getter();
        v13 = *MEMORY[0x277CCC270];
        if (os_log_type_enabled(*MEMORY[0x277CCC270], v12))
        {
          v14 = v13;
          v15 = swift_slowAlloc();
          *v15 = 134217984;
          *(v15 + 4) = a1;
          _os_log_impl(&dword_20C66F000, v14, v12, "Unexpected distance units %lu. Setting distance unit to kilometers", v15, 0xCu);
          MEMORY[0x20F30E080](v15, -1, -1);
        }

        return 1;
    }

    return 1;
  }

  if ((a1 - 4) > 1)
  {
    goto LABEL_12;
  }

  v2 = static os_log_type_t.error.getter();
  v3 = *MEMORY[0x277CCC270];
  if (!os_log_type_enabled(*MEMORY[0x277CCC270], v2))
  {
    return 0;
  }

  v4 = v3;
  v5 = swift_slowAlloc();
  *v5 = 134217984;
  *(v5 + 4) = a1;
  _os_log_impl(&dword_20C66F000, v4, v2, "Unexpected distance units %lu. Setting distance unit to miles", v5, 0xCu);
  MEMORY[0x20F30E080](v5, -1, -1);

  return 0;
}

void UnitsSettingsListView.init(formattingManager:healthStore:isWheelchairUser:isAppleMoveTime:)(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  type metadata accessor for UnitsSettingsDataProvider();
  swift_allocObject();
  v10 = specialized UnitsSettingsDataProvider.init(formattingManager:healthStore:isWheelchairUser:isAppleMoveTime:)(a1, a2, a3, a4);

  *a5 = partial apply for implicit closure #1 in UnitsSettingsListView.init(formattingManager:healthStore:isWheelchairUser:isAppleMoveTime:);
  *(a5 + 8) = v10;
  *(a5 + 16) = 0;
}

uint64_t UnitsSettingsListView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationViewVyAA4ListVys5NeverOAA05TupleD0Vy07WorkoutB0020UnitsSettingsSectionD0VyAJ04Unitj6EnergyL0OGSg_ALyAJ0lj10PoolLengthL0OGALyAJ0lj8DistanceL0OGAvLyAJ0lj5TrackpL0OGA5VtGGGMd);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12[-v3];
  LOBYTE(v3) = *(v0 + 16);
  v13 = *v0;
  v14 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverOAA9TupleViewVy07WorkoutB0020UnitsSettingsSectionF0VyAH04Uniti6EnergyK0OGSg_AJyAH0ki10PoolLengthK0OGAJyAH0ki8DistanceK0OGAtJyAH0ki5TrackoK0OGA5TtGGMd);
  lazy protocol witness table accessor for type List<Never, TupleView<(UnitsSettingsSectionView<UnitSettingsEnergyUnit>?, UnitsSettingsSectionView<UnitSettingsPoolLengthUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsTrackDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type List<Never, TupleView<(UnitsSettingsSectionView<UnitSettingsEnergyUnit>?, UnitsSettingsSectionView<UnitSettingsPoolLengthUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsTrackDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>)>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVy07WorkoutB0020UnitsSettingsSectionF0VyAH04Uniti6EnergyK0OGSg_AJyAH0ki10PoolLengthK0OGAJyAH0ki8DistanceK0OGAtJyAH0ki5TrackoK0OGA5TtGGMd);
  NavigationView.init(content:)();
  LocalizedStringKey.init(stringLiteral:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = WorkoutUIBundle.super.isa;
  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9;
  lazy protocol witness table accessor for type List<Never, TupleView<(UnitsSettingsSectionView<UnitSettingsEnergyUnit>?, UnitsSettingsSectionView<UnitSettingsPoolLengthUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsTrackDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type NavigationView<List<Never, TupleView<(UnitsSettingsSectionView<UnitSettingsEnergyUnit>?, UnitsSettingsSectionView<UnitSettingsPoolLengthUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsTrackDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>)>>> and conformance NavigationView<A>, &_s7SwiftUI14NavigationViewVyAA4ListVys5NeverOAA05TupleD0Vy07WorkoutB0020UnitsSettingsSectionD0VyAJ04Unitj6EnergyL0OGSg_ALyAJ0lj10PoolLengthL0OGALyAJ0lj8DistanceL0OGAvLyAJ0lj5TrackpL0OGA5VtGGGMd);
  View.navigationTitle(_:)();
  outlined consume of Text.Storage(v6, v8, v10 & 1);

  return (*(v2 + 8))(v4, v1);
}

uint64_t closure #1 in UnitsSettingsListView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB0020UnitsSettingsSectionD0VyAD04Unitg6EnergyI0OGSg_AFyAD0ig10PoolLengthI0OGAFyAD0ig8DistanceI0OGApFyAD0ig5TrackmI0OGA5PtGMd);
  lazy protocol witness table accessor for type List<Never, TupleView<(UnitsSettingsSectionView<UnitSettingsEnergyUnit>?, UnitsSettingsSectionView<UnitSettingsPoolLengthUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsTrackDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type TupleView<(UnitsSettingsSectionView<UnitSettingsEnergyUnit>?, UnitsSettingsSectionView<UnitSettingsPoolLengthUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsTrackDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB0020UnitsSettingsSectionD0VyAD04Unitg6EnergyI0OGSg_AFyAD0ig10PoolLengthI0OGAFyAD0ig8DistanceI0OGApFyAD0ig5TrackmI0OGA5PtGMd);
  return List<>.init(content:)();
}

uint64_t closure #1 in closure #1 in UnitsSettingsListView.body.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for UnitsSettingsDataProvider();
  lazy protocol witness table accessor for type UnitsSettingsDataProvider and conformance UnitsSettingsDataProvider();
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v55)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v26 = 0;
  }

  else
  {
    v30 = 0x800000020CB9DD00;
    StateObject.projectedValue.getter();
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v28 = v56;
    v29 = v55;
    v27 = 0xD000000000000020;
    v26 = v57;
  }

  StateObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  StateObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v55)
  {
    v1 = 0xD000000000000037;
  }

  else
  {
    v1 = 0xD00000000000002CLL;
  }

  v25 = v1;
  if (v55)
  {
    v2 = "ATING_SPORTS_WORKOUTS_TITLE";
  }

  else
  {
    v2 = "CLING_WORKOUTS_TITLE";
  }

  v24 = v2 | 0x8000000000000000;
  StateObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v22 = v56;
  v23 = v55;
  StateObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v20 = v56;
  v21 = v55;
  v19 = v57;
  StateObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v17 = v56;
  v18 = v55;
  v16 = v57;
  StateObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v14 = v56;
  v15 = v55;
  v13 = v57;
  StateObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v11 = v56;
  v12 = v55;
  v10 = v57;
  StateObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v4 = v55;
  v3 = v56;
  v5 = v57;
  StateObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v50 = v27;
  v51 = v30;
  v52 = v29;
  v53 = v28;
  v54 = v26;
  v48[2] = v55;
  v48[3] = v56;
  v49 = v57;
  v46[2] = v55;
  v46[3] = v56;
  v48[0] = 0xD00000000000001FLL;
  v48[1] = 0x800000020CB9DD30;
  v6 = v55;
  v7 = v56;
  v55 = &v50;
  v56 = v48;
  v46[0] = 0xD000000000000024;
  v46[1] = 0x800000020CB9DD50;
  v8 = v57;
  v47 = v57;
  v44[0] = v25;
  v44[1] = v24;
  v44[2] = v23;
  v44[3] = v22;
  v45 = v57;
  v57 = v46;
  v58 = v44;
  v42[0] = 0xD000000000000022;
  v42[1] = 0x800000020CB9DDB0;
  v42[2] = v21;
  v42[3] = v20;
  v43 = v19;
  v40[0] = 0xD000000000000031;
  v40[1] = 0x800000020CB9DDE0;
  v40[2] = v18;
  v40[3] = v17;
  v41 = v16;
  v59 = v42;
  v60 = v40;
  v38[0] = 0xD000000000000031;
  v38[1] = 0x800000020CB9DE20;
  v38[2] = v15;
  v38[3] = v14;
  v39 = v13;
  v36[0] = 0xD000000000000023;
  v36[1] = 0x800000020CB9DE60;
  v36[2] = v12;
  v36[3] = v11;
  v37 = v10;
  v61 = v38;
  v62 = v36;
  v34[0] = 0xD00000000000002ALL;
  v34[1] = 0x800000020CB9DE90;
  v34[2] = v4;
  v34[3] = v3;
  v35 = v5;
  v32[0] = 0xD00000000000002BLL;
  v32[1] = 0x800000020CB9DEC0;
  v32[2] = v6;
  v32[3] = v7;
  v33 = v8;
  v63 = v34;
  v64 = v32;
  _s7SwiftUI11ViewBuilderV10buildBlockyAA05TupleC0VyxxQp_tGxxQpRvzAA0C0RzlFZ07WorkoutB0020UnitsSettingsSectionC0VyAI04Unitj6EnergyL0OGSg_AKyAI0lj10PoolLengthL0OGAKyAI0lj8DistanceL0OGAuKyAI0lj5TrackpL0OGA5UQP_Tt1g5(&v55, a1);

  return outlined consume of UnitsSettingsSectionView<UnitSettingsEnergyUnit>?(v50, v51);
}

uint64_t getEnumTagSinglePayload for UnitsSettingsListView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for UnitsSettingsListView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type List<Never, TupleView<(UnitsSettingsSectionView<UnitSettingsEnergyUnit>?, UnitsSettingsSectionView<UnitSettingsPoolLengthUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsTrackDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>)>> and conformance List<A, B>(unint64_t *a1, uint64_t *a2)
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

unint64_t lazy protocol witness table accessor for type UnitsSettingsDataProvider and conformance UnitsSettingsDataProvider()
{
  result = lazy protocol witness table cache variable for type UnitsSettingsDataProvider and conformance UnitsSettingsDataProvider;
  if (!lazy protocol witness table cache variable for type UnitsSettingsDataProvider and conformance UnitsSettingsDataProvider)
  {
    type metadata accessor for UnitsSettingsDataProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnitsSettingsDataProvider and conformance UnitsSettingsDataProvider);
  }

  return result;
}

uint64_t outlined consume of UnitsSettingsSectionView<UnitSettingsEnergyUnit>?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t type metadata completion function for UnitsSettingsSectionView()
{
  result = type metadata accessor for Binding();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnitsSettingsSectionView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(v4 + 80);
  if (v5 >= 0)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = v7 | 7;
  v10 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_29;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) - (((-17 - v7) | v7) + ((-17 - v7) | v9)) - 2;
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v15 < 2)
    {
LABEL_29:
      if (v8 != 0x7FFFFFFF)
      {
        return (*(v4 + 48))((v7 + ((((a1 + v9 + 16) & ~v9) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7);
      }

      v17 = *(a1 + 1);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_29;
  }

LABEL_18:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v8 + (v11 | v16) + 1;
}

void storeEnumTagSinglePayload for UnitsSettingsSectionView(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  if (v7 >= 0)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = ((v10 + 16) & ~v10) + *(*(*(a4 + 16) - 8) + 64) + ((v10 + 16) & ~(v10 | 7));
  v12 = a3 >= v9;
  v13 = a3 - v9;
  if (v13 != 0 && v12)
  {
    if (v11 <= 3)
    {
      v17 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v9 < a2)
  {
    v15 = ~v9 + a2;
    if (v11 < 4)
    {
      v16 = (v15 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v15 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_49:
              if (v14 == 2)
              {
                *&a1[v11] = v16;
              }

              else
              {
                *&a1[v11] = v16;
              }

              return;
            }
          }

          else
          {
            *a1 = v15;
            if (v14 > 1)
            {
              goto LABEL_49;
            }
          }

          goto LABEL_46;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_49;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_49;
      }
    }

LABEL_46:
    if (v14)
    {
      a1[v11] = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v11] = 0;
  }

  else if (v14)
  {
    a1[v11] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v9 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = a2 - 1;
    }
  }

  else
  {
    v20 = *(v6 + 56);
    v21 = (v10 + (((&a1[(v10 | 7) + 16] & ~(v10 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v10;

    v20(v21);
  }
}

uint64_t UnitsSettingsSectionView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  v25 = a1[3];
  v26 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = a1[5];
  v24 = a1[4];
  v23 = type metadata accessor for UnitsSettingsItemView();
  v7 = a1[6];
  v37 = AssociatedTypeWitness;
  v38 = MEMORY[0x277D837D0];
  v39 = v23;
  v40 = v7;
  v41 = MEMORY[0x277D837E0];
  type metadata accessor for ForEach();
  v8 = type metadata accessor for Section();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v37 = UnitsSettingsSectionView.header.getter();
  v38 = v15;
  LOBYTE(v39) = v16 & 1;
  v40 = v17;
  v27 = v4;
  v28 = v25;
  v29 = v24;
  v30 = v6;
  v31 = v7;
  v32 = v2;
  WitnessTable = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v19 = MEMORY[0x277CE0BC8];
  Section<>.init(header:content:)();
  v33 = v19;
  v34 = v18;
  v35 = MEMORY[0x277CE1410];
  v20 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v11, v8, v20);
  v21 = *(v9 + 8);
  v21(v11, v8);
  static ViewBuilder.buildBlock<A>(_:)(v14, v8, v20);
  return (v21)(v14, v8);
}

uint64_t UnitsSettingsSectionView.header.getter()
{

  LocalizedStringKey.init(stringLiteral:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = WorkoutUIBundle.super.isa;
  return Text.init(_:tableName:bundle:comment:)();
}

uint64_t closure #1 in UnitsSettingsSectionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v38 = a1;
  v39 = a7;
  v41 = a2;
  v42 = a3;
  v43 = a4;
  v44 = a5;
  v31 = a5;
  v32 = a4;
  v45 = a6;
  v30 = a6;
  v37 = type metadata accessor for UnitsSettingsSectionView();
  v10 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v34 = v29 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v29[1] = v29 - v13;
  v33 = type metadata accessor for UnitsSettingsItemView();
  v41 = AssociatedTypeWitness;
  v42 = MEMORY[0x277D837D0];
  v43 = v33;
  v44 = a6;
  v45 = MEMORY[0x277D837E0];
  v14 = type metadata accessor for ForEach();
  v36 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v29 - v18;
  dispatch thunk of static CaseIterable.allCases.getter();
  v20 = v34;
  v21 = v37;
  (*(v10 + 16))(v34, v38, v37);
  v22 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = a2;
  *(v23 + 3) = a3;
  v24 = v31;
  *(v23 + 4) = v32;
  *(v23 + 5) = v24;
  *(v23 + 6) = v30;
  (*(v10 + 32))(&v23[v22], v20, v21);
  WitnessTable = swift_getWitnessTable();
  ForEach<>.init(_:content:)();
  v40 = WitnessTable;
  v26 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v16, v14, v26);
  v27 = *(v36 + 8);
  v27(v16, v14);
  static ViewBuilder.buildBlock<A>(_:)(v19, v14, v26);
  return (v27)(v19, v14);
}

uint64_t closure #1 in closure #1 in UnitsSettingsSectionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v30 = a4;
  v31 = a7;
  v32 = a2;
  v33 = a8;
  v29 = a1;
  v11 = type metadata accessor for Binding();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v29 - v12;
  v14 = *(a3 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UnitsSettingsItemView();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v29 - v24;
  (*(v14 + 16))(v17, v29, a3, v23);
  v34 = a3;
  v35 = v30;
  v36 = a5;
  v37 = a6;
  v38 = v31;
  type metadata accessor for UnitsSettingsSectionView();
  type metadata accessor for Binding();
  Binding.projectedValue.getter();
  UnitsSettingsItemView.init(item:dataProviderBinding:)(v17, v13, a3, v21);
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v21, v18, WitnessTable);
  v27 = *(v19 + 8);
  v27(v21, v18);
  static ViewBuilder.buildBlock<A>(_:)(v25, v18, WitnessTable);
  return (v27)(v25, v18);
}

uint64_t partial apply for closure #1 in closure #1 in UnitsSettingsSectionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = *(type metadata accessor for UnitsSettingsSectionView() - 8);
  v11 = v2 + ((*(v10 + 80) + 56) & ~*(v10 + 80));

  return closure #1 in closure #1 in UnitsSettingsSectionView.body.getter(a1, v11, v5, v6, v7, v8, v9, a2);
}

id SeymourAvailabilityProvider.__allocating_init(dependenciesWrapper:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = objc_allocWithZone(type metadata accessor for SeymourAvailabilityProvider());

  v5 = SeymourAvailabilityProvider.init(dependencies:)();

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

uint64_t SeymourAvailabilityProvider.availability.getter()
{
  v1 = OBJC_IVAR___NLSeymourAvailabilityProvider_availability;
  swift_beginAccess();
  return *(v0 + v1);
}

id SeymourAvailabilityProvider.observers.getter()
{
  v1 = OBJC_IVAR___NLSeymourAvailabilityProvider_observers;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void key path setter for SeymourAvailabilityProvider.observers : SeymourAvailabilityProvider(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLSeymourAvailabilityProvider_observers;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id SeymourAvailabilityProvider.init(dependenciesWrapper:)(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for SeymourAvailabilityProvider());

  v3 = SeymourAvailabilityProvider.init(dependencies:)();

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

id SeymourAvailabilityProvider.init(dependencies:)()
{
  v1 = v0;
  v2 = OBJC_IVAR___NLSeymourAvailabilityProvider_availability;
  *&v0[OBJC_IVAR___NLSeymourAvailabilityProvider_availability] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SeymourClient16EventHubProtocol_pMd);
  Dependencies.resolve<A>(failureHandler:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SeymourClient019ContentAvailabilityB8Protocol_pMd);
  Dependencies.resolve<A>(failureHandler:)();
  outlined init with take of ContentAvailabilityClientProtocol(v11, &v0[OBJC_IVAR___NLSeymourAvailabilityProvider_contentAvailabilityClient]);
  type metadata accessor for SubscriptionToken();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&v0[OBJC_IVAR___NLSeymourAvailabilityProvider_eventHubToken] = SubscriptionToken.init(eventHub:)();
  v3 = [objc_opt_self() weakObjectsHashTable];
  *&v0[OBJC_IVAR___NLSeymourAvailabilityProvider_observers] = v3;
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = MEMORY[0x20F30BAD0](0xD000000000000016, 0x800000020CB9DF30);
  v6 = [v4 BOOLForKey_];

  swift_beginAccess();
  *&v1[v2] = v6 ^ 1;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for SeymourAvailabilityProvider();
  v7 = objc_msgSendSuper2(&v10, sel_init);
  swift_getObjectType();
  type metadata accessor for ContentAvailabilityUpdated();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = v7;

  dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();

  __swift_destroy_boxed_opaque_existential_1(v11);
  [v8 update];

  swift_unknownObjectRelease();
  return v8;
}

uint64_t outlined init with take of ContentAvailabilityClientProtocol(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t closure #1 in SeymourAvailabilityProvider.init(dependencies:)()
{
  v0 = type metadata accessor for ContentAvailability();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    ContentAvailabilityUpdated.availability.getter();
    SeymourAvailabilityProvider.handleContentAvailabilityDidChange(_:)();

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

id SeymourAvailabilityProvider.handleContentAvailabilityDidChange(_:)()
{
  v1 = v0;
  v2 = type metadata accessor for ContentAvailability();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x277D51A28], v2, v4);
  lazy protocol witness table accessor for type ContentAvailability and conformance ContentAvailability();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v14[1] == v14[4] && v14[2] == v14[5])
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  (*(v3 + 8))(v6, v2);

  v8 = OBJC_IVAR___NLSeymourAvailabilityProvider_availability;
  result = swift_beginAccess();
  v10 = *&v1[v8];
  v11 = (v7 & 1) == 0;
  *&v1[v8] = v11;
  if (v10 != v11)
  {
    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x20F30BAD0](0xD000000000000016, 0x800000020CB9DF30);
    [v12 setBool:v7 & 1 forKey:v13];

    return [v1 notifyObservers];
  }

  return result;
}

id SeymourAvailabilityProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SeymourAvailabilityProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeymourAvailabilityProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall SeymourAvailabilityProvider.update()()
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7PromiseVyAA19ContentAvailabilityOGMd);
  v1 = *(v33 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v33);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7PromiseVyytGMd);
  v7 = *(v35 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v35);
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v32 = &v31 - v10;
  MEMORY[0x28223BE20](v11);
  v36 = &v31 - v12;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___NLSeymourAvailabilityProvider_contentAvailabilityClient), *(v0 + OBJC_IVAR___NLSeymourAvailabilityProvider_contentAvailabilityClient + 24));
  dispatch thunk of ContentAvailabilityClientProtocol.queryContentAvailability()();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in SeymourAvailabilityProvider.update();
  *(v14 + 24) = v13;
  v15 = v33;
  (*(v1 + 16))(v3, v6, v33);
  v16 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v17 = swift_allocObject();
  (*(v1 + 32))(v17 + v16, v3, v15);
  v18 = (v17 + ((v2 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = partial apply for specialized closure #1 in Promise.then<A>(_:);
  v18[1] = v14;
  v19 = v32;
  Promise.init(asyncOperation:)();
  (*(v1 + 8))(v6, v15);
  v20 = swift_allocObject();
  *(v20 + 16) = closure #2 in SeymourAvailabilityProvider.update();
  *(v20 + 24) = 0;
  v22 = v34;
  v21 = v35;
  v23 = v19;
  (*(v7 + 16))(v34, v19, v35);
  v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v25 = swift_allocObject();
  (*(v7 + 32))(v25 + v24, v22, v21);
  v26 = (v25 + ((v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = _s11SeymourCore7PromiseV5catchyACyxGxs5Error_pYbKcFAEsAF_pYbcfU_yt_Tg5TA_1;
  v26[1] = v20;
  v27 = v36;
  Promise.init(asyncOperation:)();
  v28 = *(v7 + 8);
  v28(v23, v21);
  v29 = Promise.operation.getter();
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  v29(_s11SeymourCore7PromiseV7resolveyyys6ResultOyxs5Error_pGYbcSgFyAHYbcfU_yt_TG5TA_4, v30);

  v28(v27, v21);
}

void closure #1 in SeymourAvailabilityProvider.update()()
{
  v0 = type metadata accessor for ContentAvailability();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*(v1 + 104))(v3, *MEMORY[0x277D51A28], v0);
    lazy protocol witness table accessor for type ContentAvailability and conformance ContentAvailability();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v12[0] == v12[3] && v12[1] == v12[4])
    {
      v6 = 1;
    }

    else
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    (*(v1 + 8))(v3, v0);

    v7 = OBJC_IVAR___NLSeymourAvailabilityProvider_availability;
    swift_beginAccess();
    v8 = *&v5[v7];
    v9 = (v6 & 1) == 0;
    *&v5[v7] = v9;
    if (v8 != v9)
    {
      v10 = [objc_opt_self() standardUserDefaults];
      v11 = MEMORY[0x20F30BAD0](0xD000000000000016, 0x800000020CB9DF30);
      [v10 setBool:v6 & 1 forKey:v11];

      [v5 notifyObservers];
    }
  }
}

uint64_t closure #2 in SeymourAvailabilityProvider.update()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB5DA70;
  swift_getErrorValue();
  v1 = Error.localizedDescription.getter();
  v3 = v2;
  *(inited + 56) = MEMORY[0x277D837D0];
  *(inited + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(inited + 32) = v1;
  *(inited + 40) = v3;
  v4 = static os_log_type_t.error.getter();
  specialized static Log.print(_:type:_:)("Seymour Availability Provider failed with error: %@", 51, 2, v4, inited);
  swift_setDeallocating();
  return __swift_destroy_boxed_opaque_existential_1(inited + 32);
}

id SeymourAvailabilityProvider.addObserver(_:)(uint64_t a1, SEL *a2)
{
  v5 = OBJC_IVAR___NLSeymourAvailabilityProvider_observers;
  swift_beginAccess();
  return [*(v2 + v5) *a2];
}

id @objc SeymourAvailabilityProvider.addObserver(_:)(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = OBJC_IVAR___NLSeymourAvailabilityProvider_observers;
  swift_beginAccess();
  return [*(a1 + v7) *a4];
}

Swift::Void __swiftcall SeymourAvailabilityProvider.notifyObservers()()
{
  v1 = OBJC_IVAR___NLSeymourAvailabilityProvider_observers;
  swift_beginAccess();
  v2 = [*(v0 + v1) allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI27SeymourAvailabilityObserver_pMd);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v4 = __CocoaSet.count.getter();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = OBJC_IVAR___NLSeymourAvailabilityProvider_availability;
    swift_beginAccess();
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x20F30C990](i, v3);
      }

      else
      {
        v7 = *(v3 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [v7 availabilityDidUpdateWith_];
      swift_unknownObjectRelease();
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t objectdestroy_6Tm_1(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ContentAvailability and conformance ContentAvailability()
{
  result = lazy protocol witness table cache variable for type ContentAvailability and conformance ContentAvailability;
  if (!lazy protocol witness table cache variable for type ContentAvailability and conformance ContentAvailability)
  {
    type metadata accessor for ContentAvailability();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentAvailability and conformance ContentAvailability);
  }

  return result;
}

uint64_t static WorkoutConfigurationRow.displayImage(workoutConfiguration:shouldFlipImage:useActivityTypeImageForDisplayImage:)@<X0>(int a1@<W1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v25 = a1;
  v26 = a3;
  v27 = type metadata accessor for AccessibilityTraits();
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v24[-v8];
  static WorkoutConfigurationRow.displayImageContent(workoutConfiguration:useActivityTypeImageForDisplayImage:)(a2, v28);
  v32 = v28[2];
  *v33 = v29[0];
  *&v33[9] = *(v29 + 9);
  v30 = v28[0];
  v31 = v28[1];
  v10 = static Font.title2.getter();
  KeyPath = swift_getKeyPath();
  v12 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGMd) + 36)];
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
  v14 = *MEMORY[0x277CE1048];
  v15 = type metadata accessor for Image.Scale();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v12 = swift_getKeyPath();
  v16 = *&v33[16];
  *(v9 + 3) = *v33;
  *(v9 + 4) = v16;
  v17 = v32;
  *(v9 + 1) = v31;
  *(v9 + 2) = v17;
  *v9 = v30;
  *(v9 + 10) = KeyPath;
  *(v9 + 11) = v10;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGMd);
  v9[*(v18 + 36)] = v25;
  WorkoutConfiguration.displayColor.getter();
  v19 = Color.init(uiColor:)();
  v20 = swift_getKeyPath();
  v21 = &v9[*(v7 + 36)];
  *v21 = v20;
  v21[1] = v19;
  static AccessibilityTraits.isSelected.getter();
  v22 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  MEMORY[0x20F30AA50](v6, v7, v22);
  (*(v4 + 8))(v6, v27);
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v9, &_s7SwiftUI15ModifiedContentVyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGMd);
}

uint64_t WorkoutConfigurationRow.sizeCategory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for WorkoutConfigurationRow();
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v1 + *(v10 + 44), v9, &_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ContentSizeCategory();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t WorkoutConfigurationRow.workoutStartState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  if (dispatch thunk of WorkoutConfiguration.externalProvider.getter() && (, dispatch thunk of WorkoutConfiguration.lastCompletedDate.getter(), v7 = type metadata accessor for Date(), v8 = (*(*(v7 - 8) + 48))(v6, 1, v7), outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v6, &_s10Foundation4DateVSgMd), v8 != 1))
  {
    v15 = *MEMORY[0x277D7E0C0];
    started = type metadata accessor for StartButtonState();
    v11 = *(*(started - 8) + 104);
    v14 = a1;
    v13 = v15;
  }

  else
  {
    v9 = *(v2 + *(type metadata accessor for WorkoutConfigurationRow() + 48));
    started = type metadata accessor for StartButtonState();
    v11 = *(*(started - 8) + 104);
    if (v9 == 1)
    {
      v12 = MEMORY[0x277D7E0A8];
    }

    else
    {
      v12 = MEMORY[0x277D7E0B0];
    }

    v13 = *v12;
    v14 = a1;
  }

  return v11(v14, v13, started);
}

uint64_t WorkoutConfigurationRow.init(workoutConfiguration:activityMoveMode:formattingManager:healthStore:supportsStart:useActivityTypeImageForDisplayImage:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, char a5@<W5>, uint64_t a6@<X8>)
{
  type metadata accessor for ConfigurationNavigationModel();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  *a6 = EnvironmentObject.init()();
  *(a6 + 8) = v12;
  type metadata accessor for WorkoutConfigurationDataSource();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
  *(a6 + 16) = EnvironmentObject.init()();
  *(a6 + 24) = v13;
  State.init(wrappedValue:)();
  *(a6 + 72) = v18;
  *(a6 + 80) = v19;
  v14 = type metadata accessor for WorkoutConfigurationRow();
  v15 = v14[11];
  *(a6 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMd);
  swift_storeEnumTagMultiPayload();
  *(a6 + v14[13]) = 0x3FE0000000000000;
  type metadata accessor for WorkoutConfiguration();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7DA50]);
  result = ObservedObject.init(wrappedValue:)();
  *(a6 + 32) = result;
  *(a6 + 40) = v17;
  *(a6 + 48) = a1;
  *(a6 + 56) = a2;
  *(a6 + 64) = a3;
  *(a6 + v14[12]) = a4;
  *(a6 + v14[14]) = a5;
  return result;
}

void static WorkoutConfigurationRow.displayImageContent(workoutConfiguration:useActivityTypeImageForDisplayImage:)(char a1@<W1>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a1 & 1) == 0)
  {
    type metadata accessor for MultiSportWorkoutConfiguration();
    if (swift_dynamicCastClass())
    {
      v12 = dispatch thunk of WorkoutConfiguration.activityType.getter();
      v13 = FIUIStaticScalableWorkoutIconImageWithPadding();

      if (!v13)
      {
        __break(1u);
        goto LABEL_14;
      }

      v14 = [v13 imageWithRenderingMode_];

      v15 = Image.init(uiImage:)();
    }

    else
    {
      WorkoutConfiguration.displaySymbolName.getter();
      v15 = Image.init(_internalSystemName:)();
    }

    *&v24 = v15;
    BYTE8(v24) = 0;
    goto LABEL_11;
  }

  v9 = v6;
  v10 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v11 = [v10 symbolName];

  if (v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    *&v24 = Image.init(_internalSystemName:)();
    BYTE8(v24) = 1;
LABEL_11:

    _ConditionalContent<>.init(storage:)();
    LOBYTE(v27) = BYTE8(v30);
    v26 = 0;
    v33[24] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA5ImageVAEGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGMd);
    lazy protocol witness table accessor for type _ConditionalContent<Image, Image> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    v32 = v25[1];
    *v33 = v25[2];
    *&v33[9] = *(&v25[2] + 9);
    v30 = v24;
    v31 = v25[0];
    goto LABEL_12;
  }

  v16 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v17 = FIUIStaticScalableWorkoutIconImageWithPadding();

  if (v17)
  {
    v18 = [v17 imageWithRenderingMode_];

    Image.init(uiImage:)();
    FIUISizeForIconSize();
    (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v9);
    v19 = Image.resizable(capInsets:resizingMode:)();
    (*(v5 + 8))(v8, v9);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();

    *&v23[38] = v29;
    *&v23[22] = v28;
    *&v23[6] = v27;
    *(v25 + 2) = *v23;
    v26 = 1;
    v22 = 1;
    v24 = v19;
    LOWORD(v25[0]) = 1;
    *(&v25[1] + 2) = *&v23[16];
    *(&v25[2] + 2) = *&v23[32];
    *&v25[3] = *(&v29 + 1);
    BYTE8(v25[3]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA5ImageVAEGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGMd);
    lazy protocol witness table accessor for type _ConditionalContent<Image, Image> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
LABEL_12:
    v20 = *v33;
    a2[2] = v32;
    a2[3] = v20;
    *(a2 + 57) = *&v33[9];
    v21 = v31;
    *a2 = v30;
    a2[1] = v21;
    return;
  }

LABEL_14:
  __break(1u);
}

double WorkoutConfigurationRow.editButtonLabel()@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19SymbolRenderingModeVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - v6;
  if (static Platform.current.getter())
  {
    Image.init(systemName:)();
    static SymbolRenderingMode.hierarchical.getter();
    v8 = type metadata accessor for SymbolRenderingMode();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
    v9 = Image.symbolRenderingMode(_:)();

    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v7, &_s7SwiftUI19SymbolRenderingModeVSgMd);
    if (one-time initialization token for ellipsisSize != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Font.Design();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    v11 = static Font.system(size:weight:design:)();
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v4, &_s7SwiftUI4FontV6DesignOSgMd);
    KeyPath = swift_getKeyPath();
    WorkoutConfiguration.displayColor.getter();
    v13 = Color.init(uiColor:)();
    v14 = swift_getKeyPath();
    v28 = v9;
    v29 = KeyPath;
    v30 = v11;
    v31 = v14;
    v32 = v13;
    v33 = 256;
    v34 = 0;
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v15 = WorkoutUIBundle.super.isa;
    v40._object = 0xE000000000000000;
    v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v16.value._object = 0xEB00000000656C62;
    v17._countAndFlagsBits = 0xD00000000000001DLL;
    v17._object = 0x800000020CB9B6B0;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v40._countAndFlagsBits = 0;
    v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v16, v15, v18, v40);

    v35 = v19;
    lazy protocol witness table accessor for type String and conformance String();
    v28 = Text.init<A>(_:)();
    v29 = v20;
    v30 = v21 & 1;
    v31 = v22;
    v32 = 0;
    v33 = 0;
    v34 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  result = *&v35._countAndFlagsBits;
  v24 = v36;
  v25 = v37;
  v26 = v38;
  v27 = v39;
  *a1 = v35;
  *(a1 + 16) = v24;
  *(a1 + 32) = v25;
  *(a1 + 40) = v26;
  *(a1 + 42) = v27;
  return result;
}

double closure #2 in WorkoutConfigurationRow.editButton()@<D0>(uint64_t a1@<X8>)
{
  WorkoutConfigurationRow.editButtonLabel()(v7);
  v2 = v8;
  v3 = v9;
  v4 = v10;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  *(a1 + 42) = v4;
  return result;
}

uint64_t closure #1 in WorkoutConfigurationRow.displayDetail()@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMd);
  MEMORY[0x28223BE20](v136);
  v5 = &v132 - v4;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMd);
  v143 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v7 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v137 = &v132 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v146 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v132 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156.super.isa = [objc_opt_self() standardUserDefaults];
  isa = v156.super.isa;
  v20 = occurrences_debug_enabled(userDefaults:)(v156);

  v144 = v14;
  v139 = v5;
  v138 = v7;
  if (!v20)
  {
    v27 = a1[5];
    v147 = a1[7];
    v28 = dispatch thunk of WorkoutConfiguration.externalProvider.getter();
    v148 = v27;
    if (v28)
    {

      v29 = dispatch thunk of WorkoutConfiguration.activityType.getter();
      v30 = [v29 localizedName];

      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      type metadata accessor for GoalWorkoutConfiguration();
      if (!swift_dynamicCastClass())
      {
        v58 = WorkoutConfiguration.displayName(formattingManager:)();
        v59 = v131;
        goto LABEL_14;
      }

      v30 = v27;
      v56 = GoalWorkoutConfiguration.goal.getter();
      v57 = [v56 goalTypeIdentifier];

      _HKWorkoutGoalType.displayNameShort(formattingManager:)(v147, v57);
    }

    v58 = v31;
    v59 = v32;

LABEL_14:
    *&v153 = v58;
    *(&v153 + 1) = v59;
    lazy protocol witness table accessor for type String and conformance String();
    v60 = Text.init<A>(_:)();
    v62 = v61;
    v64 = v63;
    static Font.body.getter();
    v65 = Text.font(_:)();
    v67 = v66;
    v69 = v68;

    outlined consume of Text.Storage(v60, v62, v64 & 1);

    *&v153 = static Color.white.getter();
    v70 = Text.foregroundStyle<A>(_:)();
    v72 = v71;
    v74 = v73;
    outlined consume of Text.Storage(v65, v67, v69 & 1);

    static Font.Weight.bold.getter();
    v75 = Text.fontWeight(_:)();
    v77 = v76;
    LOBYTE(v67) = v78;
    v80 = v79;
    outlined consume of Text.Storage(v70, v72, v74 & 1);

    *&v149 = v75;
    *(&v149 + 1) = v77;
    v150 = v67 & 1;
    v151 = v80;
    v152 = 1;
    _ConditionalContent<>.init(storage:)();
    v53 = v154;
    v54 = v153;
    v55 = v155;
    v39 = v148;
    goto LABEL_15;
  }

  v21 = a1[5];
  v147 = a1[7];
  v22 = dispatch thunk of WorkoutConfiguration.externalProvider.getter();
  v148 = v21;
  if (v22)
  {

    v23 = dispatch thunk of WorkoutConfiguration.activityType.getter();
    v24 = [v23 localizedName];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    type metadata accessor for GoalWorkoutConfiguration();
    if (!swift_dynamicCastClass())
    {
      v129 = WorkoutConfiguration.displayName(formattingManager:)();
      v36 = v130;
      *&v153 = v129;
      goto LABEL_9;
    }

    v24 = v21;
    v33 = GoalWorkoutConfiguration.goal.getter();
    v34 = [v33 goalTypeIdentifier];

    _HKWorkoutGoalType.displayNameShort(formattingManager:)(v147, v34);
  }

  v35 = v25;
  v36 = v26;

  *&v153 = v35;
LABEL_9:
  *(&v153 + 1) = v36;
  MEMORY[0x20F30BC00](10272, 0xE200000000000000);
  v37 = a1[2];
  if (!v37)
  {
    type metadata accessor for WorkoutConfigurationDataSource();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v38 = v37;
  v39 = v148;
  v40 = WorkoutConfigurationDataSource.displayOccurrence(for:)();
  v42 = v41;

  MEMORY[0x20F30BC00](v40, v42);

  MEMORY[0x20F30BC00](32, 0xE100000000000000);
  dispatch thunk of WorkoutConfiguration.uuid.getter();
  UUID.uuidString.getter();
  (*(v16 + 8))(v18, v15);
  v43 = specialized Collection.prefix(_:)(4);
  v45 = v44;
  v47 = v46;
  v49 = v48;

  v50 = MEMORY[0x20F30BBA0](v43, v45, v47, v49);
  v52 = v51;

  MEMORY[0x20F30BC00](v50, v52);

  MEMORY[0x20F30BC00](41, 0xE100000000000000);
  v149 = v153;
  v150 = 0;
  v151 = MEMORY[0x277D84F90];
  v152 = 0;
  _ConditionalContent<>.init(storage:)();
  v53 = v154;
  v54 = v153;
  v55 = v155;
LABEL_15:
  v81 = v54;
  v140 = v54;
  v82 = *(&v54 + 1);
  v83 = v53;
  v141 = v53;
  v142 = *(&v53 + 1);
  outlined copy of _ConditionalContent<Text, Text>.Storage(v54, *(&v54 + 1), v53);
  v84 = WorkoutConfiguration.displayDetail(_:)();
  if (v85)
  {
    v134 = v82;
    v135 = v81;
    v147 = a2;
    *&v153 = v84;
    *(&v153 + 1) = v85;
    lazy protocol witness table accessor for type String and conformance String();
    v86 = Text.init<A>(_:)();
    v88 = v87;
    v90 = v89;
    type metadata accessor for IntervalWorkoutConfiguration();
    v91 = swift_dynamicCastClass();
    v148 = v39;
    v133 = v83;
    if (v91 || (type metadata accessor for MultiSportWorkoutConfiguration(), swift_dynamicCastClass()) || (type metadata accessor for GoalWorkoutConfiguration(), swift_dynamicCastClass()) && (v126 = v39, v127 = GoalWorkoutConfiguration.goal.getter(), v128 = [v127 goalTypeIdentifier], v127, v126, !v128))
    {
      static Font.body.getter();
    }

    else
    {
      static Font.body.getter();
      Font.lowercaseSmallCaps()();
    }

    v92 = Text.font(_:)();
    v83 = v93;
    v95 = v94;

    outlined consume of Text.Storage(v86, v88, v90 & 1);

    LODWORD(v153) = static HierarchicalShapeStyle.primary.getter();
    v96 = Text.foregroundStyle<A>(_:)();
    v98 = v97;
    v100 = v99;
    outlined consume of Text.Storage(v92, v83, v95 & 1);

    static Font.Weight.regular.getter();
    v101 = Text.fontWeight(_:)();
    v103 = v102;
    LOBYTE(v83) = v104;
    v106 = v105;
    outlined consume of Text.Storage(v96, v98, v100 & 1);

    v107 = v139;
    v108 = &v139[*(v136 + 36)];
    v109 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
    v110 = *MEMORY[0x277CE1050];
    v111 = type metadata accessor for Image.Scale();
    (*(*(v111 - 8) + 104))(v108 + v109, v110, v111);
    *v108 = swift_getKeyPath();
    *v107 = v101;
    *(v107 + 8) = v103;
    *(v107 + 16) = v83 & 1;
    *(v107 + 24) = v106;
    WorkoutConfiguration.displayColor.getter();
    v112 = Color.init(uiColor:)();
    KeyPath = swift_getKeyPath();
    v114 = v138;
    _s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGWObTm_1(v107, v138, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMd);
    v115 = v145;
    v116 = (v114 + *(v145 + 36));
    *v116 = KeyPath;
    v116[1] = v112;
    v117 = v114;
    v118 = v137;
    _s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGWObTm_1(v117, v137, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMd);
    v119 = v118;
    v120 = v144;
    _s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGWObTm_1(v119, v144, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMd);
    v121 = 0;
    a2 = v147;
    v81 = v135;
    v82 = v134;
    LOBYTE(v83) = v133;
  }

  else
  {
    v121 = 1;
    v120 = v144;
    v115 = v145;
  }

  (*(v143 + 56))(v120, v121, 1, v115);
  v122 = v146;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v120, v146, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGSgMd);
  v123 = v141;
  *a2 = v140;
  a2[1] = v123;
  *(a2 + 32) = v55;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAEG_AA08ModifiedD0VyAHyAeA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAJyAA5ColorVSgGGSgtMd);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v122, a2 + *(v124 + 48), &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGSgMd);
  outlined copy of _ConditionalContent<Text, Text>.Storage(v81, v82, v83);
  outlined consume of _ConditionalContent<Text, Text>.Storage(v81, v82, v83);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v120, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGSgMd);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v122, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGSgMd);
  return outlined consume of _ConditionalContent<Text, Text>.Storage(v81, v82, v83);
}

uint64_t WorkoutConfigurationRow.body.getter@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VGAQG_AA6VStackVyAEyAIyAA4TextVA18_G_AGyAGyA18_A1_GA9_GSgtGGAA6SpacerV07WorkoutB0011StartButtonE0VtGGMd);
  MEMORY[0x28223BE20](v31);
  v2 = &v29 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA6VStackVyAA9TupleViewVyAA6HStackVyAIyAA08ModifiedD0VyAMyAMyAMyAMyACyACyAA5ImageVAOGAMyAMyAoA18_AspectRatioLayoutVGAA06_FrameN0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAYyAO5ScaleOGGAA17_FlipForRTLEffectVGAYyAA5ColorVSgGGAA023AccessibilityAttachmentS0VG_AA6SpacerV07WorkoutB0011StartButtonH0VtGG_AGyAIyACyAA4TextVA26_G_AMyAMyA26_A5_GA13_GSgtGGtGGAKyAIyAMyA17_AUG_A32_A19_A22_tGG_GMd);
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - v4;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA15ModifiedContentVyAIyAIyAIyAIyAA012_ConditionalH0VyAKyAA5ImageVAMGAIyAIyAmA18_AspectRatioLayoutVGAA06_FrameM0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAWyAM5ScaleOGGAA17_FlipForRTLEffectVGAWyAA5ColorVSgGGAA023AccessibilityAttachmentR0VG_AA6SpacerV07WorkoutB0011StartButtonE0VtGG_ACyAEyAKyAA4TextVA24_G_AIyAIyA24_A3_GA11_GSgtGGtGGMd);
  MEMORY[0x28223BE20](v30);
  v7 = &v29 - v6;
  v8 = type metadata accessor for ContentSizeCategory();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA08ModifiedD0VyAKyAKyAKyAKyACyACyAA5ImageVAMGAKyAKyAmA18_AspectRatioLayoutVGAA06_FrameM0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAWyAM5ScaleOGGAA17_FlipForRTLEffectVGAWyAA5ColorVSgGGAA023AccessibilityAttachmentR0VG_AA6SpacerV07WorkoutB0011StartButtonG0VtGG_AEyAGyACyAA4TextVA24_G_AKyAKyA24_A3_GA11_GSgtGGtGGAIyAGyAKyA15_ASG_A30_A17_A20_tGGGMd);
  MEMORY[0x28223BE20](v34);
  v13 = &v29 - v12;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA6VStackVyAA9TupleViewVyAA0H0PAAE19accessibilityAction6action5labelQryyc_qd__yXEtAaJRd__lFQOyAA6HStackVyAIyAA08ModifiedD0VyARyARyARyARyACyACyAA5ImageVATGARyARyAtA18_AspectRatioLayoutVGAA06_FrameR0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA2_yAT5ScaleOGGAA17_FlipForRTLEffectVGA2_yAA5ColorVSgGGAA023AccessibilityAttachmentW0VG_AA6SpacerVARyARyAA14NavigationLinkVyAA05EmptyH0VARyARyAA5GroupVyACyACy07WorkoutB0024GoalWorkoutConfigurationH0VA31_028IntervalWorkoutConfigurationH0VGACyA31_025PacerWorkoutConfigurationH0VA31_024RaceWorkoutConfigurationH0VGGSgGA2_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA2_yA31_28ConfigurationNavigationModelCSgGGGAA07_HiddenW0VGAZGAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyARyAA6ButtonVyACyARyARyARyATA6_GA18_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleW0VyA16_GG_AA16PlainButtonStyleVQo_tGG_AA5LabelVyA74_ATGQo__AGyAIyACyA74_A74_G_ARyARyA74_A10_GA18_GSgtGGtGGACyAGyAIyAPyAIyA22__A24_A31_011StartButtonH0VtGG_A95_tGGAPyAIyARyA22_AZG_A95_A24_A99_tGGG_GMd);
  MEMORY[0x28223BE20](v32);
  v15 = &v29 - v14;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19accessibilityAction6action5labelQryyc_qd__yXEtAaFRd__lFQOyAA6HStackVyAEyAA15ModifiedContentVyANyANyANyANyAA012_ConditionalL0VyAPyAA5ImageVARGANyANyArA18_AspectRatioLayoutVGAA06_FrameQ0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA0_yAR5ScaleOGGAA17_FlipForRTLEffectVGA0_yAA5ColorVSgGGAA023AccessibilityAttachmentV0VG_AA6SpacerVANyANyAA14NavigationLinkVyAA05EmptyE0VANyANyAA5GroupVyAPyAPy07WorkoutB0024GoalWorkoutConfigurationE0VA29_028IntervalWorkoutConfigurationE0VGAPyA29_025PacerWorkoutConfigurationE0VA29_024RaceWorkoutConfigurationE0VGGSgGA0_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA0_yA29_28ConfigurationNavigationModelCSgGGGAA07_HiddenV0VGAXGAgAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyANyAA6ButtonVyAPyANyANyANyARA4_GA16_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleV0VyA14_GG_AA16PlainButtonStyleVQo_tGG_AA5LabelVyA72_ARGQo__ACyAEyAPyA72_A72_G_ANyANyA72_A8_GA16_GSgtGGtGGMd);
  MEMORY[0x28223BE20](v33);
  v17 = &v29 - v16;
  if (static Platform.current.getter())
  {
    v18 = v36;
    v19 = static HorizontalAlignment.leading.getter();
    if (one-time initialization token for iconToNameSpacing != -1)
    {
      v28 = v19;
      swift_once();
      v19 = v28;
    }

    v20 = static RowLayoutConstants.iconToNameSpacing;
    *v17 = v19;
    *(v17 + 1) = v20;
    v17[16] = 0;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE19accessibilityAction6action5labelQryyc_qd__yXEtAaJRd__lFQOyAA6HStackVyAIyAA15ModifiedContentVyARyARyARyARyAA012_ConditionalO0VyATyAA5ImageVAVGARyARyAvA012_AspectRatioG0VGAA06_FrameG0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA4_yAV5ScaleOGGAA17_FlipForRTLEffectVGA4_yAA5ColorVSgGGAA023AccessibilityAttachmentX0VG_AA6SpacerVARyARyAA14NavigationLinkVyAA05EmptyD0VARyARyAA5GroupVyATyATy07WorkoutB0024GoalWorkoutConfigurationD0VA33_028IntervalWorkoutConfigurationD0VGATyA33_025PacerWorkoutConfigurationD0VA33_024RaceWorkoutConfigurationD0VGGSgGA4_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA4_yA33_28ConfigurationNavigationModelCSgGGGAA07_HiddenX0VGA0_GAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyARyAA6ButtonVyATyARyARyARyAVA8_GA20_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleX0VyA18_GG_AA16PlainButtonStyleVQo_tGG_AA5LabelVyA76_AVGQo__AA0F0VyAIyATyA76_A76_G_ARyARyA76_A12_GA20_GSgtGGtGGMd);
    closure #1 in WorkoutConfigurationRow.body.getter(v18, &v17[*(v21 + 44)]);
    sub_20C68D3BC(v17, v15);
    swift_storeEnumTagMultiPayload();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type VStack<TupleView<(<<opaque return type of View.accessibilityAction<A>(action:label:)>>.0, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19accessibilityAction6action5labelQryyc_qd__yXEtAaFRd__lFQOyAA6HStackVyAEyAA15ModifiedContentVyANyANyANyANyAA012_ConditionalL0VyAPyAA5ImageVARGANyANyArA18_AspectRatioLayoutVGAA06_FrameQ0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA0_yAR5ScaleOGGAA17_FlipForRTLEffectVGA0_yAA5ColorVSgGGAA023AccessibilityAttachmentV0VG_AA6SpacerVANyANyAA14NavigationLinkVyAA05EmptyE0VANyANyAA5GroupVyAPyAPy07WorkoutB0024GoalWorkoutConfigurationE0VA29_028IntervalWorkoutConfigurationE0VGAPyA29_025PacerWorkoutConfigurationE0VA29_024RaceWorkoutConfigurationE0VGGSgGA0_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA0_yA29_28ConfigurationNavigationModelCSgGGGAA07_HiddenV0VGAXGAgAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyANyAA6ButtonVyAPyANyANyANyARA4_GA16_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleV0VyA14_GG_AA16PlainButtonStyleVQo_tGG_AA5LabelVyA72_ARGQo__ACyAEyAPyA72_A72_G_ANyANyA72_A8_GA16_GSgtGGtGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, Spacer, StartButtonView)>>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>)>>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Im();
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of VStack<TupleView<(<<opaque return type of View.accessibilityAction<A>(action:label:)>>.0, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>)>>(v17, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19accessibilityAction6action5labelQryyc_qd__yXEtAaFRd__lFQOyAA6HStackVyAEyAA15ModifiedContentVyANyANyANyANyAA012_ConditionalL0VyAPyAA5ImageVARGANyANyArA18_AspectRatioLayoutVGAA06_FrameQ0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA0_yAR5ScaleOGGAA17_FlipForRTLEffectVGA0_yAA5ColorVSgGGAA023AccessibilityAttachmentV0VG_AA6SpacerVANyANyAA14NavigationLinkVyAA05EmptyE0VANyANyAA5GroupVyAPyAPy07WorkoutB0024GoalWorkoutConfigurationE0VA29_028IntervalWorkoutConfigurationE0VGAPyA29_025PacerWorkoutConfigurationE0VA29_024RaceWorkoutConfigurationE0VGGSgGA0_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA0_yA29_28ConfigurationNavigationModelCSgGGGAA07_HiddenV0VGAXGAgAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyANyAA6ButtonVyAPyANyANyANyARA4_GA16_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleV0VyA14_GG_AA16PlainButtonStyleVQo_tGG_AA5LabelVyA72_ARGQo__ACyAEyAPyA72_A72_G_ANyANyA72_A8_GA16_GSgtGGtGGMd);
  }

  else
  {
    WorkoutConfigurationRow.sizeCategory.getter(v11);
    v23 = ContentSizeCategory.isAccessibilityCategory.getter();
    (*(v9 + 8))(v11, v8);
    if (v23)
    {
      *v7 = static HorizontalAlignment.leading.getter();
      *(v7 + 1) = 0;
      v7[16] = 1;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6HStackVyAIyAA15ModifiedContentVyAMyAMyAMyAMyAA012_ConditionalK0VyAOyAA5ImageVAQGAMyAMyAqA012_AspectRatioG0VGAA06_FrameG0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA_yAQ5ScaleOGGAA17_FlipForRTLEffectVGA_yAA5ColorVSgGGAA023AccessibilityAttachmentT0VG_AA6SpacerV07WorkoutB0011StartButtonD0VtGG_AA0F0VyAIyAOyAA4TextVA30_G_AMyAMyA30_A7_GA15_GSgtGGtGGMd);
      closure #2 in WorkoutConfigurationRow.body.getter(v36, &v7[*(v24 + 44)]);
      v25 = &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA15ModifiedContentVyAIyAIyAIyAIyAA012_ConditionalH0VyAKyAA5ImageVAMGAIyAIyAmA18_AspectRatioLayoutVGAA06_FrameM0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAWyAM5ScaleOGGAA17_FlipForRTLEffectVGAWyAA5ColorVSgGGAA023AccessibilityAttachmentR0VG_AA6SpacerV07WorkoutB0011StartButtonE0VtGG_ACyAEyAKyAA4TextVA24_G_AIyAIyA24_A3_GA11_GSgtGGtGGMd;
      outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v7, v5, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA15ModifiedContentVyAIyAIyAIyAIyAA012_ConditionalH0VyAKyAA5ImageVAMGAIyAIyAmA18_AspectRatioLayoutVGAA06_FrameM0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAWyAM5ScaleOGGAA17_FlipForRTLEffectVGAWyAA5ColorVSgGGAA023AccessibilityAttachmentR0VG_AA6SpacerV07WorkoutB0011StartButtonE0VtGG_ACyAEyAKyAA4TextVA24_G_AIyAIyA24_A3_GA11_GSgtGGtGGMd);
      swift_storeEnumTagMultiPayload();
      _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, Spacer, StartButtonView)>>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA15ModifiedContentVyAIyAIyAIyAIyAA012_ConditionalH0VyAKyAA5ImageVAMGAIyAIyAmA18_AspectRatioLayoutVGAA06_FrameM0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAWyAM5ScaleOGGAA17_FlipForRTLEffectVGAWyAA5ColorVSgGGAA023AccessibilityAttachmentR0VG_AA6SpacerV07WorkoutB0011StartButtonE0VtGG_ACyAEyAKyAA4TextVA24_G_AIyAIyA24_A3_GA11_GSgtGGtGGMd);
      _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VGAQG_AA6VStackVyAEyAIyAA4TextVA18_G_AGyAGyA18_A1_GA9_GSgtGGAA6SpacerV07WorkoutB0011StartButtonE0VtGGMd);
      _ConditionalContent<>.init(storage:)();
      v26 = v7;
    }

    else
    {
      *v2 = static VerticalAlignment.center.getter();
      *(v2 + 1) = 0x4020000000000000;
      v2[16] = 0;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAKyAKyAA012_ConditionalJ0VyAMyAA5ImageVAOGAKyAKyAoA012_AspectRatioG0VGAA06_FrameG0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAYyAO5ScaleOGGAA17_FlipForRTLEffectVGAYyAA5ColorVSgGGAA023AccessibilityAttachmentS0VGAUG_AA6VStackVyAIyAMyAA4TextVA22_G_AKyAKyA22_A5_GA13_GSgtGGAA6SpacerV07WorkoutB0011StartButtonD0VtGGMd);
      closure #3 in WorkoutConfigurationRow.body.getter(v36, &v2[*(v27 + 44)]);
      v25 = &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VGAQG_AA6VStackVyAEyAIyAA4TextVA18_G_AGyAGyA18_A1_GA9_GSgtGGAA6SpacerV07WorkoutB0011StartButtonE0VtGGMd;
      outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v2, v5, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VGAQG_AA6VStackVyAEyAIyAA4TextVA18_G_AGyAGyA18_A1_GA9_GSgtGGAA6SpacerV07WorkoutB0011StartButtonE0VtGGMd);
      swift_storeEnumTagMultiPayload();
      _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, Spacer, StartButtonView)>>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA15ModifiedContentVyAIyAIyAIyAIyAA012_ConditionalH0VyAKyAA5ImageVAMGAIyAIyAmA18_AspectRatioLayoutVGAA06_FrameM0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAWyAM5ScaleOGGAA17_FlipForRTLEffectVGAWyAA5ColorVSgGGAA023AccessibilityAttachmentR0VG_AA6SpacerV07WorkoutB0011StartButtonE0VtGG_ACyAEyAKyAA4TextVA24_G_AIyAIyA24_A3_GA11_GSgtGGtGGMd);
      _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VGAQG_AA6VStackVyAEyAIyAA4TextVA18_G_AGyAGyA18_A1_GA9_GSgtGGAA6SpacerV07WorkoutB0011StartButtonE0VtGGMd);
      _ConditionalContent<>.init(storage:)();
      v26 = v2;
    }

    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v26, v25);
    outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v13, v15, &_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA08ModifiedD0VyAKyAKyAKyAKyACyACyAA5ImageVAMGAKyAKyAmA18_AspectRatioLayoutVGAA06_FrameM0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAWyAM5ScaleOGGAA17_FlipForRTLEffectVGAWyAA5ColorVSgGGAA023AccessibilityAttachmentR0VG_AA6SpacerV07WorkoutB0011StartButtonG0VtGG_AEyAGyACyAA4TextVA24_G_AKyAKyA24_A3_GA11_GSgtGGtGGAIyAGyAKyA15_ASG_A30_A17_A20_tGGGMd);
    swift_storeEnumTagMultiPayload();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type VStack<TupleView<(<<opaque return type of View.accessibilityAction<A>(action:label:)>>.0, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19accessibilityAction6action5labelQryyc_qd__yXEtAaFRd__lFQOyAA6HStackVyAEyAA15ModifiedContentVyANyANyANyANyAA012_ConditionalL0VyAPyAA5ImageVARGANyANyArA18_AspectRatioLayoutVGAA06_FrameQ0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA0_yAR5ScaleOGGAA17_FlipForRTLEffectVGA0_yAA5ColorVSgGGAA023AccessibilityAttachmentV0VG_AA6SpacerVANyANyAA14NavigationLinkVyAA05EmptyE0VANyANyAA5GroupVyAPyAPy07WorkoutB0024GoalWorkoutConfigurationE0VA29_028IntervalWorkoutConfigurationE0VGAPyA29_025PacerWorkoutConfigurationE0VA29_024RaceWorkoutConfigurationE0VGGSgGA0_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA0_yA29_28ConfigurationNavigationModelCSgGGGAA07_HiddenV0VGAXGAgAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyANyAA6ButtonVyAPyANyANyANyARA4_GA16_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleV0VyA14_GG_AA16PlainButtonStyleVQo_tGG_AA5LabelVyA72_ARGQo__ACyAEyAPyA72_A72_G_ANyANyA72_A8_GA16_GSgtGGtGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, Spacer, StartButtonView)>>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>)>>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Im();
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v13, &_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA08ModifiedD0VyAKyAKyAKyAKyACyACyAA5ImageVAMGAKyAKyAmA18_AspectRatioLayoutVGAA06_FrameM0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAWyAM5ScaleOGGAA17_FlipForRTLEffectVGAWyAA5ColorVSgGGAA023AccessibilityAttachmentR0VG_AA6SpacerV07WorkoutB0011StartButtonG0VtGG_AEyAGyACyAA4TextVA24_G_AKyAKyA24_A3_GA11_GSgtGGtGGAIyAGyAKyA15_ASG_A30_A17_A20_tGGGMd);
  }
}

uint64_t closure #1 in WorkoutConfigurationRow.body.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMd);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v36 = (&v32 - v6);
  v7 = type metadata accessor for WorkoutConfigurationRow();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VG_AA6SpacerVAGyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAA5GroupVyAIyAIy07WorkoutB0024GoalWorkoutConfigurationE0VA22_028IntervalWorkoutConfigurationE0VGAIyA22_025PacerWorkoutConfigurationE0VA22_024RaceWorkoutConfigurationE0VGGSgGAUy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAUyA22_28ConfigurationNavigationModelCSgGGGAA07_HiddenQ0VGAQGAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAGyAA6ButtonVyAIyAGyAGyAGyAkYGA9_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleQ0VyA7_GG_AA16PlainButtonStyleVQo_tGGMd);
  MEMORY[0x28223BE20](v34);
  v11 = &v32 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19accessibilityAction6action5labelQryyc_qd__yXEtAaBRd__lFQOyAA6HStackVyAA05TupleC0VyAA15ModifiedContentVyALyALyALyALyAA012_ConditionalK0VyANyAA5ImageVAPGALyALyApA18_AspectRatioLayoutVGAA06_FrameP0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAZyAP5ScaleOGGAA17_FlipForRTLEffectVGAZyAA5ColorVSgGGAA023AccessibilityAttachmentU0VG_AA6SpacerVALyALyAA14NavigationLinkVyAA05EmptyC0VALyALyAA5GroupVyANyANy07WorkoutB0024GoalWorkoutConfigurationC0VA27_028IntervalWorkoutConfigurationC0VGANyA27_025PacerWorkoutConfigurationC0VA27_024RaceWorkoutConfigurationC0VGGSgGAZy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAZyA27_28ConfigurationNavigationModelCSgGGGAA07_HiddenU0VGAVGAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyALyAA6ButtonVyANyALyALyALyAPA2_GA14_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleU0VyA12_GG_AA16PlainButtonStyleVQo_tGG_AA5LabelVyA70_APGQo_Md);
  v12 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v35 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  *v11 = static VerticalAlignment.top.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v17 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAKyAA012_ConditionalJ0VyAMyAA5ImageVAOGAKyAKyAoA012_AspectRatioG0VGAA06_FrameG0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAYyAO5ScaleOGGAA17_FlipForRTLEffectVGAYyAA5ColorVSgGGAA023AccessibilityAttachmentS0VG_AA6SpacerVAKyAKyAA14NavigationLinkVyAA05EmptyD0VAKyAKyAA5GroupVyAMyAMy07WorkoutB0024GoalWorkoutConfigurationD0VA26_028IntervalWorkoutConfigurationD0VGAMyA26_025PacerWorkoutConfigurationD0VA26_024RaceWorkoutConfigurationD0VGGSgGAYy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAYyA26_28ConfigurationNavigationModelCSgGGGAA07_HiddenS0VGAUGAA0D0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAKyAA6ButtonVyAMyAKyAKyAKyAOA1_GA13_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleS0VyA11_GG_AA16PlainButtonStyleVQo_tGGMd) + 44)];
  v33 = a1;
  closure #1 in closure #1 in WorkoutConfigurationRow.body.getter(a1, v17);
  outlined init with copy of WorkoutConfigurationRow(a1, &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutConfigurationRow);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  outlined init with take of WorkoutConfigurationRow(&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for WorkoutConfigurationRow);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, Spacer, ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _HiddenModifier>, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VG_AA6SpacerVAGyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAA5GroupVyAIyAIy07WorkoutB0024GoalWorkoutConfigurationE0VA22_028IntervalWorkoutConfigurationE0VGAIyA22_025PacerWorkoutConfigurationE0VA22_024RaceWorkoutConfigurationE0VGGSgGAUy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAUyA22_28ConfigurationNavigationModelCSgGGGAA07_HiddenQ0VGAQGAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAGyAA6ButtonVyAIyAGyAGyAGyAkYGA9_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleQ0VyA7_GG_AA16PlainButtonStyleVQo_tGGMd);
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
  v20 = v16;
  v32 = v16;
  View.accessibilityAction<A>(action:label:)();

  outlined destroy of VStack<TupleView<(<<opaque return type of View.accessibilityAction<A>(action:label:)>>.0, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>)>>(v11, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VG_AA6SpacerVAGyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAA5GroupVyAIyAIy07WorkoutB0024GoalWorkoutConfigurationE0VA22_028IntervalWorkoutConfigurationE0VGAIyA22_025PacerWorkoutConfigurationE0VA22_024RaceWorkoutConfigurationE0VGGSgGAUy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAUyA22_28ConfigurationNavigationModelCSgGGGAA07_HiddenQ0VGAQGAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAGyAA6ButtonVyAIyAGyAGyAGyAkYGA9_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleQ0VyA7_GG_AA16PlainButtonStyleVQo_tGGMd);
  v21 = static HorizontalAlignment.leading.getter();
  v22 = v36;
  *v36 = v21;
  *(v22 + 8) = 0;
  *(v22 + 16) = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA4TextVAMG_AA08ModifiedJ0VyAPyAmA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGARyAA5ColorVSgGGSgtGGMd);
  closure #1 in WorkoutConfigurationRow.displayDetail()(v33, (v22 + *(v23 + 44)));
  v24 = *(v12 + 16);
  v25 = v35;
  v26 = v37;
  v24(v35, v20, v37);
  v27 = v38;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v22, v38, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMd);
  v28 = v39;
  v24(v39, v25, v26);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19accessibilityAction6action5labelQryyc_qd__yXEtAaBRd__lFQOyAA6HStackVyAA05TupleC0VyAA15ModifiedContentVyALyALyALyALyAA012_ConditionalK0VyANyAA5ImageVAPGALyALyApA18_AspectRatioLayoutVGAA06_FrameP0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAZyAP5ScaleOGGAA17_FlipForRTLEffectVGAZyAA5ColorVSgGGAA023AccessibilityAttachmentU0VG_AA6SpacerVALyALyAA14NavigationLinkVyAA05EmptyC0VALyALyAA5GroupVyANyANy07WorkoutB0024GoalWorkoutConfigurationC0VA27_028IntervalWorkoutConfigurationC0VGANyA27_025PacerWorkoutConfigurationC0VA27_024RaceWorkoutConfigurationC0VGGSgGAZy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAZyA27_28ConfigurationNavigationModelCSgGGGAA07_HiddenU0VGAVGAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyALyAA6ButtonVyANyALyALyALyAPA2_GA14_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleU0VyA12_GG_AA16PlainButtonStyleVQo_tGG_AA5LabelVyA70_APGQo__AA6VStackVyAJyANyA70_A70_G_ALyALyA70_A6_GA14_GSgtGGtMd);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v27, &v28[*(v29 + 48)], &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMd);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v22, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMd);
  v30 = *(v12 + 8);
  v30(v32, v26);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v27, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMd);
  return (v30)(v25, v26);
}

uint64_t closure #1 in closure #1 in WorkoutConfigurationRow.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v103 = type metadata accessor for PlainButtonStyle();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v84[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for WorkoutConfigurationRow();
  v95 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v96 = v5;
  v97 = &v84[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleK0VyARGGMd);
  MEMORY[0x28223BE20](v99);
  v100 = &v84[-v6];
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA15ModifiedContentVyAA0G0VyAA012_ConditionalI0VyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAOyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA011_ForegroundeO0VyAVGG_AA05PlaingE0VQo_Md);
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v104 = &v84[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v109 = &v84[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGMd);
  MEMORY[0x28223BE20](v10 - 8);
  v89 = &v84[-v11];
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVy0G4Core0gI10DataSourceCSgGGMd);
  MEMORY[0x28223BE20](v88);
  v90 = &v84[-v12];
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVy0G4Core0gI10DataSourceCSgGGAWyAH0I15NavigationModelCSgGGMd);
  MEMORY[0x28223BE20](v93);
  v91 = &v84[-v13];
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGAA12_FrameLayoutVGMd);
  MEMORY[0x28223BE20](v92);
  v98 = &v84[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v108 = &v84[-v16];
  v87 = type metadata accessor for AccessibilityTraits();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v18 = &v84[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGMd);
  MEMORY[0x28223BE20](v19);
  v21 = &v84[-v20];
  v22 = type metadata accessor for ConfigurationType();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v84[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMd);
  MEMORY[0x28223BE20](v26 - 8);
  v94 = &v84[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v28);
  v110 = &v84[-v29];
  v30 = *(a1 + 40);
  dispatch thunk of WorkoutConfiguration.type.getter();
  v31 = (*(v23 + 88))(v25, v22);
  v32 = v31 == *MEMORY[0x277D7E110] || v31 == *MEMORY[0x277D7E0F0];
  v33 = v32;
  v85 = v33;
  if (!v32)
  {
    (*(v23 + 8))(v25, v22);
  }

  static WorkoutConfigurationRow.displayImageContent(workoutConfiguration:useActivityTypeImageForDisplayImage:)(*(a1 + *(v4 + 56)), &v113);
  v119 = v115;
  *v120 = *v116;
  *&v120[9] = *&v116[9];
  v117 = v113;
  v118 = v114;
  v34 = static Font.title2.getter();
  KeyPath = swift_getKeyPath();
  v36 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGMd) + 36)];
  v37 = v30;
  v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
  v39 = *MEMORY[0x277CE1048];
  v40 = type metadata accessor for Image.Scale();
  (*(*(v40 - 8) + 104))(v36 + v38, v39, v40);
  *v36 = swift_getKeyPath();
  v41 = *&v120[16];
  *(v21 + 3) = *v120;
  *(v21 + 4) = v41;
  v42 = v119;
  *(v21 + 1) = v118;
  *(v21 + 2) = v42;
  *v21 = v117;
  *(v21 + 10) = KeyPath;
  *(v21 + 11) = v34;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGMd);
  v21[*(v43 + 36)] = v85;
  WorkoutConfiguration.displayColor.getter();
  v44 = Color.init(uiColor:)();
  v45 = swift_getKeyPath();
  v46 = &v21[*(v19 + 36)];
  *v46 = v45;
  v46[1] = v44;
  static AccessibilityTraits.isSelected.getter();
  v47 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  MEMORY[0x20F30AA50](v18, v19, v47);
  (*(v86 + 8))(v18, v87);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v21, &_s7SwiftUI15ModifiedContentVyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGMd);
  v48 = v89;
  closure #1 in static WorkoutConfigurationRow.workoutConfigurationView(workoutConfiguration:formattingManager:activityMoveMode:healthStore:intent:)(v37, *(a1 + 56), *(a1 + 48), 0, *(a1 + 64), v89);
  v49 = *(a1 + 16);
  if (v49)
  {
    type metadata accessor for WorkoutConfigurationDataSource();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
    v50 = v49;
    v51 = static ObservableObject.environmentStore.getter();
    v52 = v90;
    _s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGWObTm_1(v48, v90, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGMd);
    v53 = &v52[*(v88 + 36)];
    *v53 = v51;
    v53[1] = v49;
    v54 = *a1;
    if (*a1)
    {
      type metadata accessor for ConfigurationNavigationModel();
      _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);

      v55 = static ObservableObject.environmentStore.getter();
      v56 = v52;
      v57 = v91;
      _s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGWObTm_1(v56, v91, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVy0G4Core0gI10DataSourceCSgGGMd);
      v58 = &v57[*(v93 + 36)];
      *v58 = v55;
      v58[1] = v54;
      v59 = *(a1 + 80);
      v111 = *(a1 + 72);
      v112 = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
      State.projectedValue.getter();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
      v60 = v108;
      NavigationLink.init(destination:isActive:label:)();
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v61 = &v60[*(v92 + 36)];
      v62 = v114;
      *v61 = v113;
      v61[1] = v62;
      v61[2] = v115;
      v63 = v97;
      outlined init with copy of WorkoutConfigurationRow(a1, v97, type metadata accessor for WorkoutConfigurationRow);
      v64 = (*(v95 + 80) + 16) & ~*(v95 + 80);
      v65 = swift_allocObject();
      v66 = outlined init with take of WorkoutConfigurationRow(v63, v65 + v64, type metadata accessor for WorkoutConfigurationRow);
      MEMORY[0x28223BE20](v66);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGAA4TextVGMd);
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>>, Text> and conformance <> _ConditionalContent<A, B>();
      v67 = v100;
      Button.init(action:label:)();
      WorkoutConfiguration.displayColor.getter();
      *(v67 + *(v99 + 36)) = Color.init(uiColor:)();
      v68 = v101;
      PlainButtonStyle.init()();
      lazy protocol witness table accessor for type ModifiedContent<Button<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>>, Text>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
      _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
      v69 = v109;
      v70 = v103;
      View.buttonStyle<A>(_:)();
      (*(v102 + 8))(v68, v70);
      outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v67, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleK0VyARGGMd);
      v71 = v94;
      outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v110, v94, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMd);
      v72 = v98;
      outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v60, v98, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGAA12_FrameLayoutVGMd);
      v73 = v105;
      v74 = *(v105 + 16);
      v75 = v104;
      v76 = v106;
      v74(v104, v69, v106);
      v77 = v107;
      outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v71, v107, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMd);
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VG_AA6SpacerVACyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAEyAEy07WorkoutB028GoalWorkoutConfigurationViewVA18_32IntervalWorkoutConfigurationViewVGAEyA18_29PacerWorkoutConfigurationViewVA18_28RaceWorkoutConfigurationViewVGGSgGAQy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAQyA18_013ConfigurationX5ModelCSgGGGAA07_HiddenN0VGAMGAA4ViewPAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyACyAA6ButtonVyAEyACyACyACyAgUGA5_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleN0VyA3_GG_AA16PlainButtonStyleVQo_tMd);
      v79 = v77 + v78[12];
      *v79 = 0;
      *(v79 + 8) = 1;
      outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v72, v77 + v78[16], &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGAA12_FrameLayoutVGMd);
      v74((v77 + v78[20]), v75, v76);
      v80 = *(v73 + 8);
      v80(v109, v76);
      outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v108, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGAA12_FrameLayoutVGMd);
      outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v110, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMd);
      v80(v75, v76);
      outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v72, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGAA12_FrameLayoutVGMd);
      return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v71, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMd);
    }

    type metadata accessor for ConfigurationNavigationModel();
    v82 = &lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel;
    v83 = type metadata accessor for ConfigurationNavigationModel;
  }

  else
  {
    type metadata accessor for WorkoutConfigurationDataSource();
    v82 = &lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource;
    v83 = MEMORY[0x277D7DC28];
  }

  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(v82, v83);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t closure #1 in WorkoutConfigurationRow.editButton()(uint64_t a1)
{
  v2 = *(a1 + 80);
  v7[0] = *(a1 + 72);
  v8 = v2;
  LOBYTE(v9) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.setter();
  if (*a1)
  {
    v9 = *(a1 + 40);
    swift_getKeyPath();
    swift_getKeyPath();

    v3 = v9;
    v4 = static Published.subscript.modify();
    type metadata accessor for WorkoutConfiguration();
    v5 = MEMORY[0x277D7DA50];
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7DA50]);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, v5);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance NSObject, v5);
    NavigationPath.append<A>(_:)();

    v4(v7, 0);
  }

  else
  {
    type metadata accessor for ConfigurationNavigationModel();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #3 in closure #1 in WorkoutConfigurationRow.body.getter()
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = WorkoutUIBundle.super.isa;
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._countAndFlagsBits = 0xD00000000000001DLL;
  v2._object = 0x800000020CB9B6B0;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  lazy protocol witness table accessor for type String and conformance String();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t closure #2 in WorkoutConfigurationRow.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VG_AA6SpacerV07WorkoutB0011StartButtonE0VtGGMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  *v15 = static VerticalAlignment.center.getter();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAKyAA012_ConditionalJ0VyAMyAA5ImageVAOGAKyAKyAoA012_AspectRatioG0VGAA06_FrameG0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAYyAO5ScaleOGGAA17_FlipForRTLEffectVGAYyAA5ColorVSgGGAA023AccessibilityAttachmentS0VG_AA6SpacerV07WorkoutB0011StartButtonD0VtGGMd);
  closure #1 in closure #2 in WorkoutConfigurationRow.body.getter(a1, &v15[*(v16 + 44)]);
  *v9 = static HorizontalAlignment.leading.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA4TextVAMG_AA08ModifiedJ0VyAPyAmA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGARyAA5ColorVSgGGSgtGGMd);
  closure #1 in WorkoutConfigurationRow.displayDetail()(a1, &v9[*(v17 + 44)]);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v15, v12, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VG_AA6SpacerV07WorkoutB0011StartButtonE0VtGGMd);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v9, v6, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMd);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v12, a2, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VG_AA6SpacerV07WorkoutB0011StartButtonE0VtGGMd);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VG_AA6SpacerV07WorkoutB0011StartButtonE0VtGG_AA6VStackVyAEyAIyAA4TextVA24_G_AGyAGyA24_A1_GA9_GSgtGGtMd);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v6, a2 + *(v18 + 48), &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMd);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v9, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMd);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v15, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VG_AA6SpacerV07WorkoutB0011StartButtonE0VtGGMd);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v6, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMd);
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v12, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VG_AA6SpacerV07WorkoutB0011StartButtonE0VtGGMd);
}

uint64_t closure #1 in closure #2 in WorkoutConfigurationRow.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  started = type metadata accessor for StartButtonView();
  MEMORY[0x28223BE20](started);
  v56 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = (v48 - v5);
  v52 = type metadata accessor for AccessibilityTraits();
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v8 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGMd);
  MEMORY[0x28223BE20](v50);
  v10 = v48 - v9;
  v11 = type metadata accessor for ConfigurationType();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMd);
  MEMORY[0x28223BE20](v15 - 8);
  v53 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v48 - v18;
  v20 = *(a1 + 40);
  dispatch thunk of WorkoutConfiguration.type.getter();
  v21 = (*(v12 + 88))(v14, v11);
  v22 = v21 == *MEMORY[0x277D7E110] || v21 == *MEMORY[0x277D7E0F0];
  v23 = v22;
  v49 = v23;
  if (!v22)
  {
    (*(v12 + 8))(v14, v11);
  }

  v24 = type metadata accessor for WorkoutConfigurationRow();
  static WorkoutConfigurationRow.displayImageContent(workoutConfiguration:useActivityTypeImageForDisplayImage:)(*(a1 + *(v24 + 56)), v57);
  v61 = v57[2];
  *v62 = v58[0];
  *&v62[9] = *(v58 + 9);
  v59 = v57[0];
  v60 = v57[1];
  v25 = static Font.title2.getter();
  KeyPath = swift_getKeyPath();
  v27 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGMd) + 36)];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd);
  v48[1] = a1;
  v29 = *(v28 + 28);
  v30 = *MEMORY[0x277CE1048];
  v31 = type metadata accessor for Image.Scale();
  (*(*(v31 - 8) + 104))(v27 + v29, v30, v31);
  *v27 = swift_getKeyPath();
  v32 = *&v62[16];
  *(v10 + 3) = *v62;
  *(v10 + 4) = v32;
  v33 = v61;
  *(v10 + 1) = v60;
  *(v10 + 2) = v33;
  *v10 = v59;
  *(v10 + 10) = KeyPath;
  *(v10 + 11) = v25;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGMd);
  v10[*(v34 + 36)] = v49;
  WorkoutConfiguration.displayColor.getter();
  v35 = Color.init(uiColor:)();
  v36 = swift_getKeyPath();
  v37 = v50;
  v38 = &v10[*(v50 + 36)];
  *v38 = v36;
  v38[1] = v35;
  static AccessibilityTraits.isSelected.getter();
  v39 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  MEMORY[0x20F30AA50](v8, v37, v39);
  (*(v51 + 8))(v8, v52);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v10, &_s7SwiftUI15ModifiedContentVyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGMd);
  v40 = *(started + 24);
  v41 = v20;
  WorkoutConfigurationRow.workoutStartState.getter(v6 + v40);
  *v6 = v41;
  v6[1] = 14;
  v42 = v53;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v19, v53, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMd);
  v43 = v56;
  outlined init with copy of WorkoutConfigurationRow(v6, v56, type metadata accessor for StartButtonView);
  v44 = v55;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v42, v55, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMd);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VG_AA6SpacerV07WorkoutB015StartButtonViewVtMd);
  v46 = v44 + *(v45 + 48);
  *v46 = 0;
  *(v46 + 8) = 1;
  outlined init with copy of WorkoutConfigurationRow(v43, v44 + *(v45 + 64), type metadata accessor for StartButtonView);
  outlined destroy of StartButtonView(v6, type metadata accessor for StartButtonView);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v19, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMd);
  outlined destroy of StartButtonView(v43, type metadata accessor for StartButtonView);
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v42, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMd);
}

uint64_t closure #3 in WorkoutConfigurationRow.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  started = type metadata accessor for StartButtonView();
  MEMORY[0x28223BE20](started);
  v76 = &v63[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v74 = &v63[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMd);
  MEMORY[0x28223BE20](v6 - 8);
  v73 = &v63[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v72 = &v63[-v9];
  v69 = type metadata accessor for AccessibilityTraits();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v11 = &v63[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGMd);
  MEMORY[0x28223BE20](v67);
  v13 = &v63[-v12];
  v14 = type metadata accessor for ConfigurationType();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v63[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMd);
  MEMORY[0x28223BE20](v18 - 8);
  v66 = &v63[-v19];
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGAMGMd);
  MEMORY[0x28223BE20](v65);
  v70 = &v63[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v23 = &v63[-v22];
  MEMORY[0x28223BE20](v24);
  v77 = &v63[-v25];
  v26 = a1[5];
  dispatch thunk of WorkoutConfiguration.type.getter();
  v27 = (*(v15 + 88))(v17, v14);
  v28 = v27 == *MEMORY[0x277D7E110] || v27 == *MEMORY[0x277D7E0F0];
  v29 = v28;
  v64 = v29;
  if (!v28)
  {
    (*(v15 + 8))(v17, v14);
  }

  v30 = type metadata accessor for WorkoutConfigurationRow();
  static WorkoutConfigurationRow.displayImageContent(workoutConfiguration:useActivityTypeImageForDisplayImage:)(*(a1 + *(v30 + 56)), &v78);
  v84 = v80;
  *v85 = v81[0];
  *&v85[9] = *(v81 + 9);
  v82 = v78;
  v83 = v79;
  v31 = static Font.title2.getter();
  KeyPath = swift_getKeyPath();
  v33 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGMd) + 36)];
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
  v35 = *MEMORY[0x277CE1048];
  v36 = type metadata accessor for Image.Scale();
  (*(*(v36 - 8) + 104))(v33 + v34, v35, v36);
  *v33 = swift_getKeyPath();
  v37 = *&v85[16];
  *(v13 + 3) = *v85;
  *(v13 + 4) = v37;
  v38 = v84;
  *(v13 + 1) = v83;
  *(v13 + 2) = v38;
  *v13 = v82;
  *(v13 + 10) = KeyPath;
  *(v13 + 11) = v31;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGMd);
  v13[*(v39 + 36)] = v64;
  WorkoutConfiguration.displayColor.getter();
  v40 = Color.init(uiColor:)();
  v41 = swift_getKeyPath();
  v42 = v67;
  v43 = &v13[*(v67 + 36)];
  *v43 = v41;
  v43[1] = v40;
  static AccessibilityTraits.isSelected.getter();
  v44 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  v45 = v66;
  MEMORY[0x20F30AA50](v11, v42, v44);
  (*(v68 + 8))(v11, v69);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v13, &_s7SwiftUI15ModifiedContentVyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGMd);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  _s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGWObTm_1(v45, v23, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMd);
  v46 = &v23[*(v65 + 36)];
  v47 = v79;
  *v46 = v78;
  v46[1] = v47;
  v46[2] = v80;
  v48 = v77;
  _s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGWObTm_1(v23, v77, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGAMGMd);
  v49 = static HorizontalAlignment.leading.getter();
  v50 = v72;
  *v72 = v49;
  *(v50 + 8) = 0;
  *(v50 + 16) = 0;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA4TextVAMG_AA08ModifiedJ0VyAPyAmA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGARyAA5ColorVSgGGSgtGGMd);
  closure #1 in WorkoutConfigurationRow.displayDetail()(a1, (v50 + *(v51 + 44)));
  v52 = *(started + 24);
  v53 = v26;
  v54 = v74;
  WorkoutConfigurationRow.workoutStartState.getter(&v74[v52]);
  *v54 = v53;
  v54[1] = 14;
  v55 = v48;
  v56 = v70;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v55, v70, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGAMGMd);
  v57 = v73;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v50, v73, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMd);
  v58 = v76;
  outlined init with copy of WorkoutConfigurationRow(v54, v76, type metadata accessor for StartButtonView);
  v59 = v75;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v56, v75, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGAMGMd);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGAMG_AA6VStackVyAA9TupleViewVyAEyAA4TextVA16_G_ACyACyA16_AYGA5_GSgtGGAA6SpacerV07WorkoutB0011StartButtonY0VtMd);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v57, v59 + v60[12], &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMd);
  v61 = v59 + v60[16];
  *v61 = 0;
  *(v61 + 8) = 1;
  outlined init with copy of WorkoutConfigurationRow(v58, v59 + v60[20], type metadata accessor for StartButtonView);
  outlined destroy of StartButtonView(v54, type metadata accessor for StartButtonView);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v50, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMd);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v77, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGAMGMd);
  outlined destroy of StartButtonView(v58, type metadata accessor for StartButtonView);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v57, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMd);
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v56, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGAMGMd);
}

uint64_t closure #1 in static WorkoutConfigurationRow.workoutConfigurationView(workoutConfiguration:formattingManager:activityMoveMode:healthStore:intent:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v159 = a5;
  LODWORD(v162) = a4;
  *&v163 = a2;
  *(&v163 + 1) = a3;
  v167 = a6;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI22RaceElevationViewModelC5StateOGMd);
  v156 = *(v154 - 1);
  MEMORY[0x28223BE20](v154);
  v155 = &v148 - v7;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v158);
  v157 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v148 - v10;
  v161 = type metadata accessor for IntervalWorkoutConfigurationView();
  MEMORY[0x28223BE20](v161);
  v13 = (&v148 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v148 - v15;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGACyAF05PacerfhI0VAF04RacefhI0VG_GMd);
  MEMORY[0x28223BE20](v165);
  v164 = (&v148 - v17);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0V_GMd);
  MEMORY[0x28223BE20](v160);
  v19 = (&v148 - v18);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB004GoalE17ConfigurationViewVAD08IntervalegH0VGMd);
  MEMORY[0x28223BE20](v166);
  v21 = &v148 - v20;
  type metadata accessor for GoalWorkoutConfiguration();
  v22 = a1;
  if (swift_dynamicCastClass())
  {
    type metadata accessor for WorkoutConfigurationDataSource();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
    v159 = a1;
    v23 = EnvironmentObject.init()();
    v25 = v24;
    LOBYTE(v178) = 0;
    State.init(wrappedValue:)();
    v26 = v197;
    v27 = *(&v197 + 1);
    FIUIDeviceDependentLayoutMetric(junior40:senior44:aloeSmall41:aloeBig45:agave49:)();
    v29 = v28;
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type GoalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D928]);
    v30 = ObservedObject.init(wrappedValue:)();
    *&v197 = v23;
    *(&v197 + 1) = v25;
    *&v198 = v30;
    *(&v198 + 1) = v31;
    v32 = v163;
    v199 = v163;
    LOBYTE(v200) = v162;
    *(&v200 + 1) = v178;
    DWORD1(v200) = *(&v178 + 3);
    BYTE8(v200) = v26;
    *(&v200 + 9) = v169;
    HIDWORD(v200) = *(&v169 + 3);
    *&v201 = v27;
    *(&v201 + 1) = v29;
    v33 = v200;
    v19[2] = v163;
    v19[3] = v33;
    v19[4] = v201;
    v34 = v198;
    *v19 = v197;
    v19[1] = v34;
    swift_storeEnumTagMultiPayload();
    v35 = v32;
    outlined init with copy of GoalWorkoutConfigurationView(&v197, &v178);
    lazy protocol witness table accessor for type GoalWorkoutConfigurationView and conformance GoalWorkoutConfigurationView();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type IntervalWorkoutConfigurationView and conformance IntervalWorkoutConfigurationView, type metadata accessor for IntervalWorkoutConfigurationView);
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v21, v164, &_s7SwiftUI19_ConditionalContentVy07WorkoutB004GoalE17ConfigurationViewVAD08IntervalegH0VGMd);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB005PacerE17ConfigurationViewVAD04RaceegH0VGMd);
    lazy protocol witness table accessor for type _ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView> and conformance <> _ConditionalContent<A, B>();
    v36 = v167;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of GoalWorkoutConfigurationView(&v197);

    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v21, &_s7SwiftUI19_ConditionalContentVy07WorkoutB004GoalE17ConfigurationViewVAD08IntervalegH0VGMd);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB004GoalE17ConfigurationViewVAD08IntervalegH0VGACyAD05PaceregH0VAD04RaceegH0VGGMd);
    return (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
  }

  else
  {
    v39 = v11;
    v40 = v13;
    v151 = v16;
    v152 = v19;
    v153 = v21;
    type metadata accessor for IntervalWorkoutConfiguration();
    v41 = swift_dynamicCastClass();
    if (v41)
    {
      v156 = v41;
      type metadata accessor for WorkoutConfigurationDataSource();
      _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
      v155 = v22;
      *v13 = EnvironmentObject.init()();
      v13[1] = v42;
      type metadata accessor for ConfigurationNavigationModel();
      _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
      v13[2] = EnvironmentObject.init()();
      v13[3] = v43;
      v44 = v161;
      v45 = v161[6];
      *(v40 + v45) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
      swift_storeEnumTagMultiPayload();
      v46 = v40 + v44[8];
      LOBYTE(v178) = 0;
      State.init(wrappedValue:)();
      v47 = *(&v197 + 1);
      *v46 = v197;
      *(v46 + 8) = v47;
      v48 = (v40 + v44[14]);
      *v48 = 0;
      v48[1] = 0;
      v154 = v48;
      v49 = type metadata accessor for UUID();
      (*(*(v49 - 8) + 56))(v39, 1, 1, v49);
      outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v39, v157, &_s10Foundation4UUIDVSgMd);
      State.init(wrappedValue:)();
      outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v39, &_s10Foundation4UUIDVSgMd);
      v50 = v40 + v44[16];
      LOBYTE(v178) = 0;
      State.init(wrappedValue:)();
      v51 = *(&v197 + 1);
      *v50 = v197;
      *(v50 + 8) = v51;
      v52 = (v40 + v44[7]);
      _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D9A0]);
      v53 = v155;
      *v52 = ObservedObject.init(wrappedValue:)();
      v52[1] = v54;
      v55 = v163;
      *(v40 + v44[9]) = *(&v163 + 1);
      *(v40 + v44[10]) = v55;
      v56 = v159;
      *(v40 + v44[11]) = v159;
      v57 = v162;
      *(v40 + v44[13]) = v162;
      v158 = v53;
      if (v57)
      {
        v58 = v164;
        if (v57 == 1)
        {
          v59 = one-time initialization token for WorkoutUIBundle;
          v60 = v55;
          v61 = v56;
          if (v59 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v62 = WorkoutUIBundle.super.isa;
          v207._object = 0xE000000000000000;
          v63.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v63.value._object = 0xEB00000000656C62;
          v64._object = 0x800000020CB986A0;
          v64._countAndFlagsBits = 0xD00000000000001CLL;
          v65._countAndFlagsBits = 0;
          v65._object = 0xE000000000000000;
          v207._countAndFlagsBits = 0;
          v66 = NSLocalizedString(_:tableName:bundle:value:comment:)(v64, v63, v62, v65, v207);

          v67 = (v40 + v161[12]);
          v67->_countAndFlagsBits = 0;
          v67->_object = 0;
          v67[1] = v66;
          v67[2]._countAndFlagsBits = 36;
          v68 = v153;
        }

        else
        {
          v93 = v55;
          v94 = v56;
          v95 = IntervalWorkoutConfiguration.intervalWorkout.getter();
          v96 = IntervalWorkout.displayName.getter();
          v98 = v97;

          v99 = (v40 + v44[12]);
          *v99 = v96;
          v99[1] = v98;
          v99[2] = 0;
          v99[3] = 0;
          v99[4] = 16;
          v68 = v153;
          v100 = v154;
          *v154 = 0;
          v100[1] = 0;
        }
      }

      else
      {
        v89 = v53;
        v90 = v55;
        v91 = v56;
        if (dispatch thunk of WorkoutConfiguration.externalProvider.getter())
        {

          v92 = 9;
        }

        else
        {
          v92 = 43;
        }

        v68 = v153;
        v135 = dispatch thunk of WorkoutConfiguration.externalProvider.getter();

        if (v135)
        {
        }

        else
        {
          v92 |= 0x40uLL;
        }

        v136 = IntervalWorkoutConfiguration.intervalWorkout.getter();
        v137 = IntervalWorkout.displayName.getter();
        v139 = v138;

        v140 = (v40 + v44[12]);
        *v140 = v137;
        v140[1] = v139;
        v140[2] = 0;
        v140[3] = 0;
        v140[4] = v92;
        v58 = v164;
      }

      v141 = v151;
      outlined init with take of WorkoutConfigurationRow(v40, v151, type metadata accessor for IntervalWorkoutConfigurationView);
      outlined init with copy of WorkoutConfigurationRow(v141, v152, type metadata accessor for IntervalWorkoutConfigurationView);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type GoalWorkoutConfigurationView and conformance GoalWorkoutConfigurationView();
      _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type IntervalWorkoutConfigurationView and conformance IntervalWorkoutConfigurationView, type metadata accessor for IntervalWorkoutConfigurationView);
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v68, v58, &_s7SwiftUI19_ConditionalContentVy07WorkoutB004GoalE17ConfigurationViewVAD08IntervalegH0VGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB005PacerE17ConfigurationViewVAD04RaceegH0VGMd);
      lazy protocol witness table accessor for type _ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView> and conformance <> _ConditionalContent<A, B>();
      v142 = v167;
      _ConditionalContent<>.init(storage:)();

      outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v68, &_s7SwiftUI19_ConditionalContentVy07WorkoutB004GoalE17ConfigurationViewVAD08IntervalegH0VGMd);
      outlined destroy of StartButtonView(v141, type metadata accessor for IntervalWorkoutConfigurationView);
      v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB004GoalE17ConfigurationViewVAD08IntervalegH0VGACyAD05PaceregH0VAD04RaceegH0VGGMd);
      return (*(*(v143 - 8) + 56))(v142, 0, 1, v143);
    }

    else
    {
      type metadata accessor for PacerWorkoutConfiguration();
      if (swift_dynamicCastClass())
      {
        type metadata accessor for WorkoutConfigurationDataSource();
        _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
        v161 = v22;
        v160 = EnvironmentObject.init()();
        v158 = v69;
        type metadata accessor for ConfigurationNavigationModel();
        _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
        v70 = EnvironmentObject.init()();
        v155 = v71;
        v156 = v70;
        LOBYTE(v178) = 0;
        State.init(wrappedValue:)();
        v72 = v197;
        v157 = *(&v197 + 1);
        LOBYTE(v178) = 0;
        State.init(wrappedValue:)();
        v73 = v197;
        v154 = *(&v197 + 1);
        LOBYTE(v178) = 0;
        State.init(wrappedValue:)();
        v74 = v197;
        v75 = *(&v197 + 1);
        _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type PacerWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D968]);
        v76 = ObservedObject.init(wrappedValue:)();
        v77 = v159;
        *&v187 = v160;
        *(&v187 + 1) = v158;
        *&v188 = v156;
        *(&v188 + 1) = v155;
        *&v189 = v76;
        *(&v189 + 1) = v78;
        v79 = v163;
        *&v190 = v163;
        *(&v190 + 1) = v159;
        *&v191 = *(&v163 + 1);
        BYTE8(v191) = v162;
        *(&v191 + 9) = v197;
        HIDWORD(v191) = *(&v197 + 3);
        LOBYTE(v192) = v72;
        DWORD1(v192) = *(&v178 + 3);
        *(&v192 + 1) = v178;
        *(&v192 + 1) = v157;
        LOBYTE(v193) = v73;
        *(&v193 + 1) = v169;
        DWORD1(v193) = *(&v169 + 3);
        *(&v193 + 1) = v154;
        LOBYTE(v194) = v74;
        *(&v194 + 1) = *v168;
        DWORD1(v194) = *&v168[3];
        *(&v194 + 1) = v75;
        v200 = v190;
        v199 = v189;
        v198 = v188;
        v197 = v187;
        v203 = v193;
        v204 = v194;
        v201 = v191;
        v202 = v192;
        _s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB005PacerF17ConfigurationViewVAF04RacefhI0V_GWOi_(&v197);
        v175 = v203;
        v176 = v204;
        v177[0] = v205[0];
        *(v177 + 9) = *(v205 + 9);
        v171 = v199;
        v172 = v200;
        v173 = v201;
        v174 = v202;
        v169 = v197;
        v170 = v198;
        v80 = v79;
        v81 = v77;
        outlined init with copy of PacerWorkoutConfigurationView(&v187, &v178);
        lazy protocol witness table accessor for type PacerWorkoutConfigurationView and conformance PacerWorkoutConfigurationView();
        lazy protocol witness table accessor for type RaceWorkoutConfigurationView and conformance RaceWorkoutConfigurationView();
        _ConditionalContent<>.init(storage:)();
        v82 = v185;
        v83 = v164;
        v164[6] = v184;
        v83[7] = v82;
        v83[8] = v186[0];
        *(v83 + 137) = *(v186 + 9);
        v84 = v181;
        v83[2] = v180;
        v83[3] = v84;
        v85 = v183;
        v83[4] = v182;
        v83[5] = v85;
        v86 = v179;
        *v83 = v178;
        v83[1] = v86;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB005PacerE17ConfigurationViewVAD04RaceegH0VGMd);
        lazy protocol witness table accessor for type _ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView> and conformance <> _ConditionalContent<A, B>();
        v87 = v167;
        _ConditionalContent<>.init(storage:)();

        outlined destroy of PacerWorkoutConfigurationView(&v187);
        v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB004GoalE17ConfigurationViewVAD08IntervalegH0VGACyAD05PaceregH0VAD04RaceegH0VGGMd);
        return (*(*(v88 - 8) + 56))(v87, 0, 1, v88);
      }

      else
      {
        type metadata accessor for RaceWorkoutConfiguration();
        v101 = swift_dynamicCastClass();
        if (v101)
        {
          v102 = v101;
          type metadata accessor for WorkoutConfigurationDataSource();
          _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28]);
          v103 = v22;
          v104 = EnvironmentObject.init()();
          v161 = v105;
          v162 = v104;
          type metadata accessor for ConfigurationNavigationModel();
          _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
          v160 = EnvironmentObject.init()();
          v158 = v106;
          LOBYTE(v178) = 0;
          State.init(wrappedValue:)();
          LODWORD(v151) = v197;
          v153 = *(&v197 + 1);
          LOBYTE(v178) = 0;
          State.init(wrappedValue:)();
          LODWORD(v152) = v197;
          v157 = *(&v197 + 1);
          _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type RaceWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D950]);
          v107 = v103;
          v108 = ObservedObject.init(wrappedValue:)();
          v149 = v109;
          v150 = v108;
          type metadata accessor for RaceElevationViewModel();
          v110 = swift_allocObject();
          v111 = OBJC_IVAR____TtC9WorkoutUI22RaceElevationViewModel__state;
          *&v197 = 0;
          v112 = v159;
          v159 = v107;
          *&v163 = v163;
          v113 = v112;
          v114 = v155;
          Published.init(initialValue:)();
          (*(v156 + 32))(v110 + v111, v114, v154);
          v115 = type metadata accessor for RaceRouteDataStore();
          swift_allocObject();
          v116 = v113;
          v117 = RaceRouteDataStore.init(healthStore:)();
          v118 = (v110 + OBJC_IVAR____TtC9WorkoutUI22RaceElevationViewModel_dataStore);
          v119 = MEMORY[0x277D7E2D8];
          v118[3] = v115;
          v118[4] = v119;
          *v118 = v117;
          *(v110 + OBJC_IVAR____TtC9WorkoutUI22RaceElevationViewModel_workoutConfiguration) = v102;

          _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type RaceElevationViewModel and conformance RaceElevationViewModel, type metadata accessor for RaceElevationViewModel);
          v120 = ObservedObject.init(wrappedValue:)();
          v122 = v121;
          v123 = v159;
          v124 = dispatch thunk of WorkoutConfiguration.activityType.getter();
          v125 = MEMORY[0x20F3059A0]();

          v126 = dispatch thunk of WorkoutConfiguration.activityType.getter();
          v127 = static TargetZoneStorage.heartRateTargetZone(activityType:)();

          *&v187 = v162;
          *(&v187 + 1) = v161;
          *&v188 = v160;
          *(&v188 + 1) = v158;
          *&v189 = v150;
          *(&v189 + 1) = v149;
          LOBYTE(v190) = v151;
          *(&v190 + 1) = v197;
          DWORD1(v190) = *(&v197 + 3);
          *(&v190 + 1) = v153;
          v191 = v125;
          v192 = v127;
          *&v193 = v163;
          *(&v193 + 1) = v116;
          *&v194 = *(&v163 + 1);
          *(&v194 + 1) = v120;
          *&v195 = v122;
          BYTE8(v195) = v152;
          HIDWORD(v195) = *(&v178 + 3);
          *(&v195 + 9) = v178;
          v196 = v157;
          *&v205[1] = v157;
          v204 = v194;
          v205[0] = v195;
          v197 = v187;
          v198 = v188;
          v202 = v127;
          v203 = v193;
          v200 = v190;
          v201 = v125;
          v199 = v189;
          _s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB005PacerF17ConfigurationViewVAF04RacefhI0V_GWOi0_(&v197);
          v175 = v203;
          v176 = v204;
          v177[0] = v205[0];
          *(v177 + 9) = *(v205 + 9);
          v171 = v199;
          v172 = v200;
          v173 = v201;
          v174 = v202;
          v169 = v197;
          v170 = v198;
          outlined init with copy of RaceWorkoutConfigurationView(&v187, &v178);
          outlined init with copy of RaceWorkoutConfigurationView(&v187, &v178);
          lazy protocol witness table accessor for type PacerWorkoutConfigurationView and conformance PacerWorkoutConfigurationView();
          lazy protocol witness table accessor for type RaceWorkoutConfigurationView and conformance RaceWorkoutConfigurationView();
          _ConditionalContent<>.init(storage:)();
          v128 = v185;
          v129 = v164;
          v164[6] = v184;
          v129[7] = v128;
          v129[8] = v186[0];
          *(v129 + 137) = *(v186 + 9);
          v130 = v181;
          v129[2] = v180;
          v129[3] = v130;
          v131 = v183;
          v129[4] = v182;
          v129[5] = v131;
          v132 = v179;
          *v129 = v178;
          v129[1] = v132;
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB005PacerE17ConfigurationViewVAD04RaceegH0VGMd);
          lazy protocol witness table accessor for type _ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView> and conformance <> _ConditionalContent<A, B>();
          lazy protocol witness table accessor for type _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView> and conformance <> _ConditionalContent<A, B>();
          v133 = v167;
          _ConditionalContent<>.init(storage:)();

          outlined destroy of RaceWorkoutConfigurationView(&v187);
          outlined destroy of RaceWorkoutConfigurationView(&v187);
          v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB004GoalE17ConfigurationViewVAD08IntervalegH0VGACyAD05PaceregH0VAD04RaceegH0VGGMd);
          return (*(*(v134 - 8) + 56))(v133, 0, 1, v134);
        }

        else
        {
          v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB004GoalE17ConfigurationViewVAD08IntervalegH0VGACyAD05PaceregH0VAD04RaceegH0VGGMd);
          v145 = *(*(v144 - 8) + 56);
          v146 = v144;
          v147 = v167;

          return v145(v147, 1, 1, v146);
        }
      }
    }
  }
}

uint64_t key path setter for EnvironmentValues.sizeCategory : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for ContentSizeCategory();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.sizeCategory.setter();
}

uint64_t type metadata accessor for WorkoutConfigurationRow()
{
  result = type metadata singleton initialization cache for WorkoutConfigurationRow;
  if (!type metadata singleton initialization cache for WorkoutConfigurationRow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WorkoutConfigurationRow()
{
  type metadata accessor for EnvironmentObject<ConfigurationNavigationModel>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<WorkoutConfigurationDataSource>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObservedObject<WorkoutConfiguration>();
      if (v2 <= 0x3F)
      {
        type metadata accessor for HKActivityMoveMode(319);
        if (v3 <= 0x3F)
        {
          _sSo21FIUIFormattingManagerCMaTm_6(319, &lazy cache variable for type metadata for FIUIFormattingManager);
          if (v4 <= 0x3F)
          {
            _sSo21FIUIFormattingManagerCMaTm_6(319, &lazy cache variable for type metadata for HKHealthStore);
            if (v5 <= 0x3F)
            {
              type metadata accessor for State<Bool>();
              if (v6 <= 0x3F)
              {
                type metadata accessor for Environment<ContentSizeCategory>();
                if (v7 <= 0x3F)
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

uint64_t _sSo21FIUIFormattingManagerCMaTm_6(uint64_t a1, unint64_t *a2)
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

void type metadata accessor for Environment<ContentSizeCategory>()
{
  if (!lazy cache variable for type metadata for Environment<ContentSizeCategory>)
  {
    type metadata accessor for ContentSizeCategory();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<ContentSizeCategory>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of VStack<TupleView<(<<opaque return type of View.accessibilityAction<A>(action:label:)>>.0, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>)>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_61()
{
  v1 = (type metadata accessor for WorkoutConfigurationRow() - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for ContentSizeCategory();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>>, Text> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>>, Text> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>>, Text> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGAA4TextVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>>, Text> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>>, Text>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>>, Text>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>>, Text>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleK0VyARGGMd);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type Button<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>>, Text>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA19_ConditionalContentVyAA08ModifiedE0VyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGAA4TextVGGMd);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>>, Text>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_1(unint64_t *a1, uint64_t *a2)
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

uint64_t _s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGWObTm_1(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of WorkoutConfigurationRow(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of WorkoutConfigurationRow(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of StartButtonView(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t one-time initialization function for displayImageSize()
{
  result = FIUIDeviceDependentLayoutMetric(junior40:senior44:aloeSmall41:aloeBig45:agave49:)();
  static RowLayoutConstants.displayImageSize = v1;
  return result;
}

uint64_t one-time initialization function for ellipsisSize()
{
  result = FIUIDeviceDependentLayoutMetric(junior40:senior44:aloeSmall41:aloeBig45:agave49:)();
  static RowLayoutConstants.ellipsisSize = v1;
  return result;
}

uint64_t one-time initialization function for ellipsisGuidedSize()
{
  result = FIUIDeviceDependentLayoutMetric(junior40:senior44:aloeSmall41:aloeBig45:agave49:)();
  static RowLayoutConstants.ellipsisGuidedSize = v1;
  return result;
}

uint64_t one-time initialization function for iconToNameSpacing()
{
  result = FIUIDeviceDependentLayoutMetric(junior40:senior44:aloeSmall41:aloeBig45:agave49:)();
  static RowLayoutConstants.iconToNameSpacing = v1;
  return result;
}

uint64_t one-time initialization function for verticalInset()
{
  result = FIUIDeviceDependentLayoutMetric(junior40:senior44:aloeSmall41:aloeBig45:agave49:)();
  static RowLayoutConstants.verticalInset = v1;
  return result;
}

double static RowLayoutConstants.displayImageSize.getter(void *a1, uint64_t a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

double one-time initialization function for insets()
{
  if (one-time initialization token for verticalInset != -1)
  {
    swift_once();
  }

  result = *&static RowLayoutConstants.verticalInset;
  static RowLayoutConstants.insets = static RowLayoutConstants.verticalInset;
  qword_27C7EB300 = static RowLayoutConstants.verticalInset;
  qword_27C7EB308 = 0;
  return result;
}

double static RowLayoutConstants.insets.getter()
{
  if (one-time initialization token for insets != -1)
  {
    swift_once();
  }

  return *&static RowLayoutConstants.insets;
}

uint64_t getEnumTagSinglePayload for RowLayoutConstants(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RowLayoutConstants(_WORD *result, int a2, int a3)
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

uint64_t StrideLengthMetricView.init(metricType:strideLength:formattingManager:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 24) = a4;
  return result;
}

unint64_t StrideLengthMetricView.metricDescription.getter()
{
  if (*v0 == 26)
  {
    v1 = "CURRENT_STRIDE_LENGTH_METRIC_DESCRIPTION";
  }

  else
  {
    if (*v0 != 27)
    {
      return 0xD000000000000012;
    }

    v1 = "AVERAGE_STRIDE_LENGTH_METRIC_DESCRIPTION";
  }

  v2 = v1 - 32;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = WorkoutUIBundle.super.isa;
  v9._object = 0xE000000000000000;
  v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v4.value._object = 0xEB00000000656C62;
  v5._object = (v2 | 0x8000000000000000);
  v5._countAndFlagsBits = 0xD000000000000028;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v4, v3, v6, v9)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t StrideLengthMetricView.valueString.getter()
{
  v1 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v20 - v11;
  if (*(v0 + 16))
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v13 = WorkoutUIBundle.super.isa;
    v21._object = 0xE000000000000000;
    v14._countAndFlagsBits = 0x4E5F43495254454DLL;
    v14._object = 0xEE0045554C41564FLL;
    v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v15.value._object = 0xEB00000000656C62;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    v21._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v21)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    v20[0] = *(v0 + 8);
    static Locale.autoupdatingCurrent.getter();
    lazy protocol witness table accessor for type Double and conformance Double();
    FloatingPointFormatStyle.init(locale:)();
    static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
    MEMORY[0x20F3024C0](v4, v6);
    (*(v2 + 8))(v4, v1);
    v19 = *(v7 + 8);
    v19(v9, v6);
    _sSaySSGSayxGSKsWlTm_2(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
    BinaryFloatingPoint.formatted<A>(_:)();
    v19(v12, v6);
    return v20[1];
  }
}

id StrideLengthMetricView.accessibilityLabel.getter()
{
  if (v0[2])
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v1 = WorkoutUIBundle.super.isa;
    v25._object = 0xE000000000000000;
    v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v2.value._object = 0xEB00000000656C62;
    v3._object = 0x800000020CB9E060;
    v3._countAndFlagsBits = 0xD000000000000018;
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    v25._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v25)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  v6 = v0[3];
  v8 = *v0;
  v7 = v0[1];
  v22 = StrideLengthMetricView.metricDescription.getter();
  v23 = v9;
  v21 = lazy protocol witness table accessor for type String and conformance String();
  v20 = MEMORY[0x277D837D0];
  v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v12 = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_20CB5EA80;
  LOBYTE(v24) = 0;
  *(v13 + 32) = StrideLengthMetricView.valueString.getter();
  *(v13 + 40) = v14;
  result = [v6 localizedShortUnitStringForDistanceUnit_];
  if (result)
  {
    v16 = result;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    *(v13 + 48) = v17;
    *(v13 + 56) = v19;
    *(v13 + 64) = v10;
    *(v13 + 72) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    _sSaySSGSayxGSKsWlTm_2(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
    countAndFlagsBits = BidirectionalCollection<>.joined(separator:)();

    return countAndFlagsBits;
  }

  __break(1u);
  return result;
}

id StrideLengthMetricView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = StrideLengthMetricView.valueString.getter();
  v16 = v6;
  v17 = v5;
  if (v3)
  {
    v7 = 0;
    v8 = 0xE000000000000000;
LABEL_5:
    v12 = StrideLengthMetricView.metricDescription.getter();
    v14 = v13;
    result = StrideLengthMetricView.accessibilityLabel.getter();
    *a1 = v17;
    *(a1 + 8) = v16;
    *(a1 + 16) = v7;
    *(a1 + 24) = v8;
    *(a1 + 32) = v12;
    *(a1 + 40) = v14;
    *(a1 + 48) = 0;
    *(a1 + 56) = result;
    *(a1 + 64) = v15;
    return result;
  }

  result = [v4 localizedShortUnitStringForDistanceUnit_];
  if (result)
  {
    v10 = result;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v11;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for StrideLengthMetricView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for StrideLengthMetricView(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t _sSaySSGSayxGSKsWlTm_2(unint64_t *a1, uint64_t *a2)
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

uint64_t PacerRow.init(secondsAheadOfPacer:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  if (one-time initialization token for standard != -1)
  {
    swift_once();
  }

  v4 = *algn_27C80EFC8;
  v5 = qword_27C80EFD0;
  *(a1 + 8) = static BarConfiguration.standard;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = swift_getKeyPath();
  *(a1 + 40) = 0;
  *a1 = a2;
}

uint64_t PacerRow.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v9 = *(v1 + 8);
  v8 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  if (*(v1 + 40) == 1)
  {
    v24 = *(v1 + 32);
  }

  else
  {

    outlined copy of Environment<WorkoutViewStyle>.Content(v11, 0);
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v11, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v11) = v24;
  }

  KeyPath = swift_getKeyPath();
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB5DA80;
  v15 = static Edge.Set.leading.getter();
  *(inited + 32) = v15;
  v16 = static Edge.Set.trailing.getter();
  *(inited + 33) = v16;
  v17 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v15)
  {
    v17 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v16)
  {
    v17 = Edge.Set.init(rawValue:)();
  }

  result = EdgeInsets.init(_all:)();
  *a1 = v9;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10;
  *(a1 + 24) = v7;
  *(a1 + 32) = round(v7);
  *(a1 + 40) = v11;
  *(a1 + 48) = 0x4066800000000000;
  *(a1 + 56) = KeyPath;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = v17;
  *(a1 + 88) = v19;
  *(a1 + 96) = v20;
  *(a1 + 104) = v21;
  *(a1 + 112) = v22;
  *(a1 + 120) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for PacerRow(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t storeEnumTagSinglePayload for PacerRow(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PacerView, MetricRow>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PacerView, MetricRow>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PacerView, MetricRow>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB09PacerViewVAD9MetricRowVGAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<PacerView, MetricRow> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PacerView, MetricRow>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PacerView, MetricRow> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PacerView, MetricRow> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PacerView, MetricRow> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB09PacerViewVAD9MetricRowVGMd);
    lazy protocol witness table accessor for type PacerView and conformance PacerView();
    lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PacerView, MetricRow> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PacerView and conformance PacerView()
{
  result = lazy protocol witness table cache variable for type PacerView and conformance PacerView;
  if (!lazy protocol witness table cache variable for type PacerView and conformance PacerView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerView and conformance PacerView);
  }

  return result;
}

uint64_t type metadata accessor for EffortZoneView()
{
  result = type metadata singleton initialization cache for EffortZoneView;
  if (!type metadata singleton initialization cache for EffortZoneView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for EffortZoneView()
{
  type metadata accessor for [Int](319, &lazy cache variable for type metadata for [Int], MEMORY[0x277D83B88], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [Int](319, &lazy cache variable for type metadata for Binding<Double>, MEMORY[0x277D839F8], MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      v2 = MEMORY[0x277D839B0];
      type metadata accessor for [Int](319, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [Int](319, &lazy cache variable for type metadata for State<Bool>, v2, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Environment<LayoutDirection>();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for [Int](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void EffortZoneView.ranges.getter()
{
  v1 = *(v0 + 24);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v2 = *(v0 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v1;
    v5 = (v2 + 32);
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v7 = *v5++;
      v8 = v4 + v7;
      if (__OFADD__(v4, v7))
      {
        break;
      }

      v9 = v8 - 1;
      if (__OFSUB__(v8, 1))
      {
        goto LABEL_17;
      }

      if (v9 < v4)
      {
        goto LABEL_18;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v11 = *(v6 + 2);
      v10 = *(v6 + 3);
      if (v11 >= v10 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v6);
      }

      *(v6 + 2) = v11 + 1;
      v12 = &v6[16 * v11];
      *(v12 + 4) = v4;
      *(v12 + 5) = v9;
      v4 = v8;
      if (!--v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }
}

uint64_t closure #1 in EffortZoneView.body.getter@<X0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v91 = a3;
  v87 = type metadata accessor for AccessibilityChildBehavior();
  v83 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v95 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for GeometryProxy();
  v84 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v76 = v6;
  v79 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LocalCoordinateSpace();
  MEMORY[0x28223BE20](v7);
  v89 = type metadata accessor for DragGesture();
  v78 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v82 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15_ChangedGestureVyAA04DragD0VGMd);
  v80 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v85 = &v72 - v9;
  v10 = type metadata accessor for EffortZoneView();
  v97 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v96 = v11;
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA5GroupVyAA9TupleViewVyACy07WorkoutB022EffortButtonBackgroundVAA20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAsCyAJ14RightTrapezoidVAA12_FrameLayoutVGGGGG_APyARyAtsA6VStackVyAIyAA6SpacerV_ACyACyAPyARyASSiACyAPyACyACyAA6CircleVAXGAA08_OpacityO0VGGAXGGGAXGAA08_PaddingV0VGtGGGGtGGGAA16_OverlayModifierVyAA14GeometryReaderVyACyACyACyACyAA7CapsuleVAA24_ForegroundStyleModifierVyAA5ColorVGGAXGAA09_PositionV0VGAA07_ShadowO0VGGSgGGMd);
  MEMORY[0x28223BE20](v13);
  v15 = (&v72 - v14);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE7gesture_9includingQrqd___AA11GestureMaskVtAA0F0Rd__lFQOyAA15ModifiedContentVyAA6ZStackVyAA5GroupVyAA05TupleC0VyAJy07WorkoutB022EffortButtonBackgroundVAA01_G15AlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAzJyAQ14RightTrapezoidVAA12_FrameLayoutVGGGGG_AWyAYyA_AzA6VStackVyAPyAA6SpacerV_AJyAJyAWyAYyAZSiAJyAWyAJyAJyAA6CircleVA3_GAA08_OpacityR0VGGA3_GGGA3_GAA08_PaddingY0VGtGGGGtGGGAA16_OverlayModifierVyAA14GeometryReaderVyAJyAJyAJyAJyAA7CapsuleVAA24_ForegroundStyleModifierVyAA5ColorVGGA3_GAA09_PositionY0VGAA07_ShadowR0VGGSgGG_AA08_ChangedF0VyAA04DragF0VGQo_Md);
  v81 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v77 = &v72 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAcAE7gesture_9includingQrqd___AA11GestureMaskVtAA0L0Rd__lFQOyAA15ModifiedContentVyAA6ZStackVyAA5GroupVyAA05TupleC0VyANy07WorkoutB022EffortButtonBackgroundVAA01_M15AlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGA2_ANyAU14RightTrapezoidVAA12_FrameLayoutVGGGGG_A_yA1_yA3_A2_AA6VStackVyATyAA6SpacerV_ANyANyA_yA1_yA2_SiANyA_yANyANyAA6CircleVA7_GAA08_OpacityX0VGGA7_GGGA7_GAA14_PaddingLayoutVGtGGGGtGGGAA16_OverlayModifierVyAA14GeometryReaderVyANyANyANyANyAA7CapsuleVAA24_ForegroundStyleModifierVyAA5ColorVGGA7_GAA15_PositionLayoutVGAA07_ShadowX0VGGSgGG_AA08_ChangedL0VyAA04DragL0VGQo__Qo_Md);
  v92 = *(v17 - 8);
  v93 = v17;
  MEMORY[0x28223BE20](v17);
  v86 = &v72 - v18;
  GeometryProxy.size.getter();
  v20 = v19;
  GeometryProxy.size.getter();
  v22 = v21;
  v23 = *a2;
  *v15 = static Alignment.center.getter();
  v15[1] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA5GroupVyAA05TupleD0VyAA15ModifiedContentVy07WorkoutB022EffortButtonBackgroundVAA20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAwMyAN14RightTrapezoidVAA06_FrameG0VGGGGG_ATyAVyAxwA6VStackVyAKyAA6SpacerV_AMyAMyATyAVyAWSiAMyATyAMyAMyAA6CircleVA0_GAA08_OpacityR0VGGA0_GGGA0_GAA08_PaddingG0VGtGGGGtGGGMd);
  closure #1 in closure #1 in closure #1 in EffortZoneView.body.getter(a2, v15 + *(v25 + 44), v20, v22, v23);
  v26 = static Alignment.center.getter();
  v75 = v27;
  v28 = *(a2 + 6);
  v29 = *(a2 + 7);
  v98 = *(a2 + 5);
  v99 = v28;
  v100 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd);
  MEMORY[0x20F30B100](v102, v30);
  v31 = 0;
  v32 = 0;
  if (v102[0] > 0.0)
  {
    outlined init with copy of EffortZoneView(a2, v12);
    v33 = (*(v97 + 80) + 40) & ~*(v97 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = v20;
    *(v32 + 24) = v22;
    *(v32 + 32) = v23;
    outlined init with take of EffortZoneView(v12, v32 + v33);
    v31 = partial apply for closure #1 in closure #2 in closure #1 in EffortZoneView.body.getter;
  }

  v34 = (v15 + *(v13 + 36));
  *v34 = v31;
  v34[1] = v32;
  v35 = v75;
  v34[2] = v26;
  v34[3] = v35;
  static CoordinateSpaceProtocol<>.local.getter();
  v72 = v13;
  v36 = v82;
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v74 = a2;
  v37 = v12;
  v73 = v12;
  outlined init with copy of EffortZoneView(a2, v12);
  v38 = v84;
  v39 = v79;
  v40 = v88;
  (*(v84 + 16))(v79, a1, v88);
  v41 = *(v97 + 80);
  v97 = ((v41 + 16) & ~v41) + v96;
  v42 = (v41 + 16) & ~v41;
  v75 = v42;
  v96 = v41 | 7;
  v43 = (v97 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v38 + 80) + v43 + 24) & ~*(v38 + 80);
  v45 = swift_allocObject();
  outlined init with take of EffortZoneView(v37, v45 + v42);
  v46 = (v45 + v43);
  *v46 = v20;
  v46[1] = v22;
  v46[2] = v23;
  (*(v38 + 32))(v45 + v44, v39, v40);
  _s7SwiftUI11DragGestureVAcA0D0AAWlTm_0(&lazy protocol witness table cache variable for type DragGesture and conformance DragGesture, MEMORY[0x277CDD730]);
  _s7SwiftUI11DragGestureVAcA0D0AAWlTm_0(&lazy protocol witness table cache variable for type DragGesture.Value and conformance DragGesture.Value, MEMORY[0x277CDD708]);
  v47 = v85;
  v48 = v89;
  Gesture<>.onChanged(_:)();

  (*(v78 + 8))(v36, v48);
  static GestureMask.all.getter();
  v49 = lazy protocol witness table accessor for type ModifiedContent<ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Capsule, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PositionLayout>, _ShadowEffect>>?>> and conformance <> ModifiedContent<A, B>();
  v50 = lazy protocol witness table accessor for type ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _ChangedGesture<DragGesture> and conformance _ChangedGesture<A>, &_s7SwiftUI15_ChangedGestureVyAA04DragD0VGMd);
  v51 = v77;
  v52 = v72;
  v53 = v94;
  View.gesture<A>(_:including:)();
  (*(v80 + 8))(v47, v53);
  outlined destroy of ModifiedContent<ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Capsule, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PositionLayout>, _ShadowEffect>>?>>(v15, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA5GroupVyAA9TupleViewVyACy07WorkoutB022EffortButtonBackgroundVAA20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAsCyAJ14RightTrapezoidVAA12_FrameLayoutVGGGGG_APyARyAtsA6VStackVyAIyAA6SpacerV_ACyACyAPyARyASSiACyAPyACyACyAA6CircleVAXGAA08_OpacityO0VGGAXGGGAXGAA08_PaddingV0VGtGGGGtGGGAA16_OverlayModifierVyAA14GeometryReaderVyACyACyACyACyAA7CapsuleVAA24_ForegroundStyleModifierVyAA5ColorVGGAXGAA09_PositionV0VGAA07_ShadowO0VGGSgGGMd);
  v54 = v95;
  static AccessibilityChildBehavior.ignore.getter();
  v98 = v52;
  v99 = v53;
  v100 = v49;
  v101 = v50;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = v86;
  v57 = v90;
  View.accessibilityElement(children:)();
  (*(v83 + 8))(v54, v87);
  v58 = (*(v81 + 8))(v51, v57);
  MEMORY[0x28223BE20](v58);
  v59 = v74;
  *(&v72 - 2) = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7StepperVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd);
  v60 = v73;
  v98 = v57;
  v99 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type ModifiedContent<Stepper<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  v61 = v91;
  v62 = v93;
  View.accessibilityRepresentation<A>(representation:)();
  (*(v92 + 8))(v56, v62);
  v63 = (v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE27accessibilityRepresentation14representationQrqd__yXE_tAaDRd__lFQOyAeAE0F7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0P0Rd__lFQOyACyAA6ZStackVyAA5GroupVyAA05TupleE0VyACy07WorkoutB022EffortButtonBackgroundVAA01_Q15AlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGA4_ACyAW14RightTrapezoidVAA12_FrameLayoutVGGGGG_A1_yA3_yA5_A4_AA6VStackVyAVyAA6SpacerV_ACyACyA1_yA3_yA4_SiACyA1_yACyACyAA6CircleVA9_GAA08_OpacityZ0VGGA9_GGGA9_GAA14_PaddingLayoutVGtGGGGtGGGAA16_OverlayModifierVyAA14GeometryReaderVyACyACyACyACyAA7CapsuleVAA24_ForegroundStyleModifierVyAA5ColorVGGA9_GAA15_PositionLayoutVGAA07_ShadowZ0VGGSgGG_AA08_ChangedP0VyAA04DragP0VGQo__Qo__ACyAA7StepperVyAA4TextVGAA0K18AttachmentModifierVGQo_AA01_D17ShapeKindModifierVyAA16RoundedRectangleVGGMd) + 36));
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA16RoundedRectangleVGMd);
  static ContentShapeKinds.accessibility.getter();
  v65 = (v20 + v23 * -3.0) / 10.0 * 0.5;
  v66 = *(type metadata accessor for RoundedRectangle() + 20);
  v67 = *MEMORY[0x277CE0118];
  v68 = type metadata accessor for RoundedCornerStyle();
  (*(*(v68 - 8) + 104))(v63 + v66, v67, v68);
  *v63 = v65;
  v63[1] = v65;
  *(v63 + *(v64 + 36)) = 0;
  outlined init with copy of EffortZoneView(v59, v60);
  v69 = swift_allocObject();
  outlined init with take of EffortZoneView(v60, v69 + v75);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE27accessibilityRepresentation14representationQrqd__yXE_tAaDRd__lFQOyAeAE0F7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0P0Rd__lFQOyACyAA6ZStackVyAA5GroupVyAA05TupleE0VyACy07WorkoutB022EffortButtonBackgroundVAA01_Q15AlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGA4_ACyAW14RightTrapezoidVAA12_FrameLayoutVGGGGG_A1_yA3_yA5_A4_AA6VStackVyAVyAA6SpacerV_ACyACyA1_yA3_yA4_SiACyA1_yACyACyAA6CircleVA9_GAA08_OpacityZ0VGGA9_GGGA9_GAA14_PaddingLayoutVGtGGGGtGGGAA16_OverlayModifierVyAA14GeometryReaderVyACyACyACyACyAA7CapsuleVAA24_ForegroundStyleModifierVyAA5ColorVGGA9_GAA15_PositionLayoutVGAA07_ShadowZ0VGGSgGG_AA08_ChangedP0VyAA04DragP0VGQo__Qo__ACyAA7StepperVyAA4TextVGAA0K18AttachmentModifierVGQo_AA01_D17ShapeKindModifierVyAA16RoundedRectangleVGGAA25_AppearanceActionModifierVGMd);
  v71 = (v61 + *(result + 36));
  *v71 = partial apply for closure #5 in closure #1 in EffortZoneView.body.getter;
  v71[1] = v69;
  v71[2] = 0;
  v71[3] = 0;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in EffortZoneView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v52 = a2;
  v9 = type metadata accessor for EffortZoneView();
  v49 = *(v9 - 8);
  v48 = *(v49 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v47 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA7ForEachVySaySNySiGGAfA6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAOyACyAEyAFSiAOyACyAOyAOyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGASGGGASGAA08_PaddingN0VGtGGGGMd);
  MEMORY[0x28223BE20](v11 - 8);
  v51 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB022EffortButtonBackgroundVAA20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAmCyAD14RightTrapezoidVAA12_FrameLayoutVGGGGGMd);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v50 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v42 - v20;
  v44 = (v42 - v20);
  v22 = static Alignment.center.getter();
  v45 = v23;
  v46 = v22;
  v24 = &v21[*(v17 + 44)];
  v25 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAhA15ModifiedContentVy07WorkoutB014RightTrapezoidVAA12_FrameLayoutVGGGGMd) + 36)];
  v26 = static VerticalAlignment.bottom.getter();
  v43 = a1;
  v27 = *a1;
  *v25 = v26;
  *(v25 + 1) = v27;
  v25[16] = 0;
  v42[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA7ForEachVySaySNySiGGAjA15ModifiedContentVy07WorkoutB014RightTrapezoidVAA06_FrameG0VGGGMd) + 44);
  EffortZoneView.ranges.getter();
  v53 = v28;
  swift_getKeyPath();
  v29 = swift_allocObject();
  v29[2] = a3;
  v29[3] = a4;
  v29[4] = a5;
  v42[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySNySiGGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB014RightTrapezoidVAA12_FrameLayoutVGMd);
  lazy protocol witness table accessor for type ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type [ClosedRange<Int>] and conformance [A], &_sSaySNySiGGMd);
  lazy protocol witness table accessor for type ClosedRange<Int> and conformance <> ClosedRange<A>();
  lazy protocol witness table accessor for type ModifiedContent<RightTrapezoid, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  ForEach<>.init(_:id:content:)();
  v30 = v45;
  *v24 = v46;
  *(v24 + 1) = v30;
  v31 = v44;
  *v44 = 0;
  *v15 = static VerticalAlignment.bottom.getter();
  *(v15 + 1) = v27;
  v15[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA7ForEachVySaySNySiGGAjA6VStackVyAA05TupleD0VyAA6SpacerV_AA15ModifiedContentVyASyAA0F0VyAIyAJSiASyAUyASyASyAA6CircleVAA06_FrameG0VGAA14_OpacityEffectVGGAYGGGAYGAA08_PaddingG0VGtGGGGMd);
  v32 = v43;
  EffortZoneView.ranges.getter();
  v53 = v33;
  swift_getKeyPath();
  v34 = v47;
  outlined init with copy of EffortZoneView(v32, v47);
  v35 = (*(v49 + 80) + 40) & ~*(v49 + 80);
  v36 = swift_allocObject();
  v36[2] = a3;
  v36[3] = a4;
  v36[4] = a5;
  outlined init with take of EffortZoneView(v34, v36 + v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6HStackVyAA7ForEachVySNySiGSiAIyAKyAIyAIyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGARGGGARGAA08_PaddingN0VGtGGMd);
  lazy protocol witness table accessor for type ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6HStackVyAA7ForEachVySNySiGSiAIyAKyAIyAIyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGARGGGARGAA08_PaddingN0VGtGGMd);
  ForEach<>.init(_:id:content:)();
  v37 = v50;
  outlined init with copy of Environment<LayoutDirection>.Content(v31, v50, &_s7SwiftUI15ModifiedContentVy07WorkoutB022EffortButtonBackgroundVAA20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAmCyAD14RightTrapezoidVAA12_FrameLayoutVGGGGGMd);
  v38 = v51;
  outlined init with copy of Environment<LayoutDirection>.Content(v15, v51, &_s7SwiftUI6HStackVyAA7ForEachVySaySNySiGGAfA6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAOyACyAEyAFSiAOyACyAOyAOyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGASGGGASGAA08_PaddingN0VGtGGGGMd);
  v39 = v52;
  outlined init with copy of Environment<LayoutDirection>.Content(v37, v52, &_s7SwiftUI15ModifiedContentVy07WorkoutB022EffortButtonBackgroundVAA20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAmCyAD14RightTrapezoidVAA12_FrameLayoutVGGGGGMd);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB022EffortButtonBackgroundVAA20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAmCyAD14RightTrapezoidVAA12_FrameLayoutVGGGGG_AJyALyAnmA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyAJyALyAMSiACyAJyACyACyAA6CircleVARGAA08_OpacityK0VGGARGGGARGAA08_PaddingR0VGtGGGGtMd);
  outlined init with copy of Environment<LayoutDirection>.Content(v38, v39 + *(v40 + 48), &_s7SwiftUI6HStackVyAA7ForEachVySaySNySiGGAfA6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAOyACyAEyAFSiAOyACyAOyAOyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGASGGGASGAA08_PaddingN0VGtGGGGMd);
  outlined destroy of ModifiedContent<ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Capsule, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PositionLayout>, _ShadowEffect>>?>>(v15, &_s7SwiftUI6HStackVyAA7ForEachVySaySNySiGGAfA6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAOyACyAEyAFSiAOyACyAOyAOyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGASGGGASGAA08_PaddingN0VGtGGGGMd);
  outlined destroy of ModifiedContent<ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Capsule, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PositionLayout>, _ShadowEffect>>?>>(v31, &_s7SwiftUI15ModifiedContentVy07WorkoutB022EffortButtonBackgroundVAA20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAmCyAD14RightTrapezoidVAA12_FrameLayoutVGGGGGMd);
  outlined destroy of ModifiedContent<ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Capsule, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PositionLayout>, _ShadowEffect>>?>>(v38, &_s7SwiftUI6HStackVyAA7ForEachVySaySNySiGGAfA6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAOyACyAEyAFSiAOyACyAOyAOyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGASGGGASGAA08_PaddingN0VGtGGGGMd);
  return outlined destroy of ModifiedContent<ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Capsule, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PositionLayout>, _ShadowEffect>>?>>(v37, &_s7SwiftUI15ModifiedContentVy07WorkoutB022EffortButtonBackgroundVAA20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAmCyAD14RightTrapezoidVAA12_FrameLayoutVGGGGGMd);
}