uint64_t closure #1 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a1;
  *(v5 + 16) = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR) - 8) + 64) + 15;
  *(v5 + 32) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR) - 8) + 64) + 15;
  *(v5 + 40) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR) - 8) + 64) + 15;
  *(v5 + 48) = swift_task_alloc();
  *(v5 + 56) = swift_task_alloc();
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR) - 8) + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR) - 8) + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR) - 8) + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR) - 8) + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  *(v5 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), 0, 0);
}

uint64_t closure #1 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  v6 = v0[14];
  v27 = v0[12];
  v28 = v0[11];
  v29 = v0[10];
  v30 = v0[9];
  v31 = v0[8];
  v32 = v0[7];
  v33 = v0[6];
  v34 = v0[15];
  v35 = v0[5];
  v36 = v0[13];
  v38 = v0[4];
  v7 = v0[3];
  v8 = (v0[2] + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v0[21] = *v8;
  v37 = v8[1];
  v0[22] = v37;
  v0[23] = swift_getObjectType();
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = type metadata accessor for Date();
  v11 = *(*(v10 - 8) + 56);
  v11(v2, 1, 1, v10);
  v11(v3, 1, 1, v10);
  v11(v4, 1, 1, v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v13 = *(*(v12 - 8) + 56);
  v13(v5, 1, 1, v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v15 = *(*(v14 - 8) + 56);
  v15(v6, 1, 1, v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
  v17 = *(*(v16 - 8) + 56);
  v17(v27, 1, 1, v16);
  v17(v28, 1, 1, v16);
  type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitEnergy, 0x277CCADF8);
  static NSUnitEnergy.largeCalories.getter();
  Measurement.init(value:unit:)();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  (*(*(v18 - 8) + 56))(v29, 0, 1, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v20 = *(*(v19 - 8) + 56);
  v20(v30, 1, 1, v19);
  v20(v31, 1, 1, v19);
  v20(v32, 1, 1, v19);
  v20(v33, 1, 1, v19);
  v13(v34, 1, 1, v12);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  (*(*(v21 - 8) + 56))(v35, 1, 1, v21);
  v15(v36, 1, 1, v14);
  v22 = type metadata accessor for HKActivitySummaryRepresentable();
  (*(*(v22 - 8) + 56))(v38, 1, 1, v22);
  v23 = *(v37 + 8);
  v25 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), v25, v24);
}

uint64_t closure #2 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a6;
  *(v6 + 24) = a1;
  *(v6 + 16) = a5;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR) - 8) + 64) + 15;
  *(v6 + 40) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR) - 8) + 64) + 15;
  *(v6 + 48) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR) - 8) + 64) + 15;
  *(v6 + 56) = swift_task_alloc();
  *(v6 + 64) = swift_task_alloc();
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 80) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR) - 8) + 64) + 15;
  *(v6 + 88) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR) - 8) + 64) + 15;
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR) - 8) + 64) + 15;
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR) - 8) + 64) + 15;
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 160) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  *(v6 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), 0, 0);
}

uint64_t closure #2 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_distanceSampler);
  v0[22] = v2;
  if (v2)
  {
    v3 = closure #2 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);
    v4 = 0;
  }

  else
  {
    v6 = v0[20];
    v5 = v0[21];
    v7 = v0[18];
    v8 = v0[19];
    v9 = v0[17];
    v10 = v0[15];
    v37 = v0[13];
    v38 = v0[12];
    v39 = v0[11];
    v40 = v0[10];
    v41 = v0[9];
    v42 = v0[8];
    v43 = v0[7];
    v44 = v0[16];
    v45 = v0[6];
    v46 = v0[14];
    v11 = v0[3];
    v12 = (v1 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
    v0[23] = *v12;
    v0[24] = v12[1];
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    v14 = type metadata accessor for Date();
    v15 = *(*(v14 - 8) + 56);
    v15(v6, 1, 1, v14);
    v15(v8, 1, 1, v14);
    v15(v7, 1, 1, v14);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
    v17 = *(*(v16 - 8) + 56);
    v17(v9, 1, 1, v16);
    v18 = [objc_opt_self() meters];
    type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
    Measurement.init(value:unit:)();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
    v20 = *(*(v19 - 8) + 56);
    v20(v10, 0, 1, v19);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
    v22 = *(*(v21 - 8) + 56);
    v22(v37, 1, 1, v21);
    v22(v38, 1, 1, v21);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
    (*(*(v23 - 8) + 56))(v39, 1, 1, v23);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
    v25 = *(*(v24 - 8) + 56);
    v25(v40, 1, 1, v24);
    v25(v41, 1, 1, v24);
    v25(v42, 1, 1, v24);
    v25(v43, 1, 1, v24);
    v17(v44, 1, 1, v16);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
    (*(*(v26 - 8) + 56))(v45, 1, 1, v26);
    v20(v46, 1, 1, v19);
    v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo14HKQuantityTypeC_SaySo0C6SampleCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v28 = v0[23];
    v29 = v0[24];
    v30 = v0[5];
    v0[26] = swift_getObjectType();
    v0[27] = specialized _dictionaryUpCast<A, B, C, D>(_:)(v27);

    v31 = type metadata accessor for HKActivitySummaryRepresentable();
    (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
    v32 = *(v29 + 8);
    v33 = dispatch thunk of Actor.unownedExecutor.getter();
    v35 = v34;
    v3 = closure #2 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);
    v2 = v33;
    v4 = v35;
  }

  return MEMORY[0x2822009F8](v3, v2, v4);
}

{
  v1 = *(v0 + 176);
  DistanceSampler.updateDistance(_:date:)(*(v0 + 32), *(v0 + 24));

  return MEMORY[0x2822009F8](closure #2 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), 0, 0);
}

{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[15];
  v45 = v0[14];
  v46 = v0[22];
  v36 = v0[13];
  v37 = v0[12];
  v38 = v0[11];
  v39 = v0[10];
  v40 = v0[9];
  v41 = v0[8];
  v42 = v0[7];
  v43 = v0[16];
  v44 = v0[6];
  v7 = v0[3];
  v8 = (v0[2] + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v0[23] = *v8;
  v0[24] = v8[1];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = type metadata accessor for Date();
  v11 = *(*(v10 - 8) + 56);
  v11(v3, 1, 1, v10);
  v11(v2, 1, 1, v10);
  v11(v4, 1, 1, v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v13 = *(*(v12 - 8) + 56);
  v13(v5, 1, 1, v12);
  v14 = [objc_opt_self() meters];
  type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  Measurement.init(value:unit:)();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v16 = *(*(v15 - 8) + 56);
  v16(v6, 0, 1, v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
  v18 = *(*(v17 - 8) + 56);
  v18(v36, 1, 1, v17);
  v18(v37, 1, 1, v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  (*(*(v19 - 8) + 56))(v38, 1, 1, v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v21 = *(*(v20 - 8) + 56);
  v21(v39, 1, 1, v20);
  v21(v40, 1, 1, v20);
  v21(v41, 1, 1, v20);
  v21(v42, 1, 1, v20);
  v13(v43, 1, 1, v12);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  (*(*(v22 - 8) + 56))(v44, 1, 1, v22);
  v16(v45, 1, 1, v15);
  if (v46)
  {
    v23 = v0[22];
    v24 = closure #2 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);
    v25 = 0;
  }

  else
  {
    v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo14HKQuantityTypeC_SaySo0C6SampleCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v27 = v0[23];
    v28 = v0[24];
    v29 = v0[5];
    v0[26] = swift_getObjectType();
    v0[27] = specialized _dictionaryUpCast<A, B, C, D>(_:)(v26);

    v30 = type metadata accessor for HKActivitySummaryRepresentable();
    (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
    v31 = *(v28 + 8);
    v32 = dispatch thunk of Actor.unownedExecutor.getter();
    v34 = v33;
    v24 = closure #2 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);
    v23 = v32;
    v25 = v34;
  }

  return MEMORY[0x2822009F8](v24, v23, v25);
}

{
  v1 = *(v0 + 176);
  *(v0 + 200) = DistanceSampler.samplesByType.getter();

  return MEMORY[0x2822009F8](closure #2 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), 0, 0);
}

{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[5];
  v0[26] = swift_getObjectType();
  v0[27] = specialized _dictionaryUpCast<A, B, C, D>(_:)(v1);

  v5 = type metadata accessor for HKActivitySummaryRepresentable();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = *(v2 + 8);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), v8, v7);
}

{
  v1 = v0[23];
  v18 = v0[21];
  v17 = v0[20];
  v16 = v0[19];
  v2 = v0[16];
  v14 = v0[17];
  v15 = v0[18];
  v3 = v0[14];
  v11 = v0[13];
  v12 = v0[12];
  v13 = v0[15];
  v4 = v0[10];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[6];
  v19 = v0[11];
  v20 = v0[7];
  v8 = v0[5];
  WorkoutBuddyMomentCoordinating.updateWorkoutContext(identifier:location:startDate:sessionStartDate:endDate:elapsedTime:totalDistanceTraveled:currentPace:avgPace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:splitAverageHeartRate:timeBasedSplitDuration:elapsedTimeInHeartRateZones:averagePower:elevationGain:metadata:samplesByType:activitySummaryRepresentable:)(v18, 0, v17, v16, v15, v14, v13, v11, v12, v19, v4, v6, v5, v20, v2, 0, v7, v3, 0, v0[27], v8, v0[26], v0[24]);

  _sSo8NSObjectCSgWOhTm_14(v8, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v3, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v7, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v2, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v20, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v5, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v6, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v4, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v19, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v12, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v11, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v13, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v14, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v15, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v17, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v9 = v0[1];

  return v9();
}

uint64_t closure #3 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(double a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = closure #3 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);

  return LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:)(a1);
}

uint64_t closure #3 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:)(double a1)
{
  *(v2 + 24) = v1;
  *(v2 + 16) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  *(v2 + 32) = v3;
  v4 = *(v3 - 8);
  *(v2 + 40) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR) - 8) + 64) + 15;
  *(v2 + 56) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR) - 8) + 64) + 15;
  *(v2 + 64) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR) - 8) + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR) - 8) + 64) + 15;
  *(v2 + 104) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR) - 8) + 64) + 15;
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR) - 8) + 64) + 15;
  *(v2 + 128) = swift_task_alloc();
  *(v2 + 136) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  *(v2 + 144) = swift_task_alloc();
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  *(v2 + 168) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR) - 8) + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:), 0, 0);
}

uint64_t LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:)()
{
  v1 = (v0[3] + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v0[24] = *v1;
  v2 = v1[1];
  v0[25] = v2;
  v0[26] = swift_getObjectType();
  v0[27] = *(v2 + 312);
  v0[28] = (v2 + 312) & 0xFFFFFFFFFFFFLL | 0xDC46000000000000;
  v3 = *(v2 + 8);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[29] = v5;
  v0[30] = v4;

  return MEMORY[0x2822009F8](LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:), v5, v4);
}

{
  v1 = *(v0 + 224);
  v2 = *(v0 + 192);
  (*(v0 + 216))(*(v0 + 208), *(v0 + 200));

  return MEMORY[0x2822009F8](LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:), 0, 0);
}

{
  if (*(v0 + 305))
  {
    v1 = 1;
  }

  else
  {
    if (one-time initialization token for progressMomentPeriod != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 184);
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    v5 = __swift_project_value_buffer(v3, static LiveWorkoutContextManager.Constants.progressMomentPeriod);
    (*(v4 + 16))(v2, v5, v3);
    v1 = 0;
  }

  v7 = *(v0 + 160);
  v6 = *(v0 + 168);
  v8 = *(v0 + 144);
  v9 = *(v0 + 152);
  v30 = *(v0 + 176);
  v31 = *(v0 + 136);
  v32 = *(v0 + 120);
  v33 = *(v0 + 112);
  v34 = *(v0 + 104);
  v35 = *(v0 + 96);
  v36 = *(v0 + 88);
  v37 = *(v0 + 80);
  v38 = *(v0 + 72);
  v39 = *(v0 + 64);
  v40 = *(v0 + 128);
  v41 = *(v0 + 56);
  v10 = *(v0 + 32);
  v11 = *(v0 + 16);
  v12 = *(*(v0 + 40) + 56);
  v12(*(v0 + 184), v1, 1, v10);
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 56);
  v15(v7, 1, 1, v14);
  v15(v9, 1, 1, v14);
  v15(v8, 1, 1, v14);
  v16 = objc_opt_self();
  *(v0 + 248) = v16;
  v17 = [v16 seconds];
  type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
  Measurement.init(value:unit:)();
  v12(v30, 0, 1, v10);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v19 = *(*(v18 - 8) + 56);
  v19(v31, 1, 1, v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
  v21 = *(*(v20 - 8) + 56);
  v21(v32, 1, 1, v20);
  v21(v33, 1, 1, v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  (*(*(v22 - 8) + 56))(v34, 1, 1, v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v24 = *(*(v23 - 8) + 56);
  v24(v35, 1, 1, v23);
  v24(v36, 1, 1, v23);
  v24(v37, 1, 1, v23);
  v24(v38, 1, 1, v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  (*(*(v25 - 8) + 56))(v39, 1, 1, v25);
  v19(v40, 1, 1, v18);
  v26 = type metadata accessor for HKActivitySummaryRepresentable();
  (*(*(v26 - 8) + 56))(v41, 1, 1, v26);
  v27 = *(v0 + 232);
  v28 = *(v0 + 240);

  return MEMORY[0x2822009F8](LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:), v27, v28);
}

{
  v1 = v0[25];
  v2 = v0[24];
  v20 = v0[20];
  v21 = v0[21];
  v19 = v0[19];
  v17 = v0[22];
  v18 = v0[18];
  v16 = v0[17];
  v3 = v0[16];
  v14 = v0[15];
  v15 = v0[14];
  v13 = v0[13];
  v4 = v0[11];
  v5 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v9 = v0[7];
  v8 = v0[8];
  WorkoutBuddyMomentCoordinating.updateWorkoutContext(identifier:location:startDate:sessionStartDate:endDate:elapsedTime:totalDistanceTraveled:currentPace:avgPace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:splitAverageHeartRate:timeBasedSplitDuration:elapsedTimeInHeartRateZones:averagePower:elevationGain:metadata:samplesByType:activitySummaryRepresentable:)(v21, 0, v20, v19, v18, v17, v16, v14, v15, v13, v5, v4, v6, v7, v0[23], 0, v8, v3, 0, 0, v9, v0[26], v1);
  _sSo8NSObjectCSgWOhTm_14(v9, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v3, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v8, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v7, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v6, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v4, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v5, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v13, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v15, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v14, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v16, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v17, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v18, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v20, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v0[32] = *(v1 + 200);
  v0[33] = (v1 + 200) & 0xFFFFFFFFFFFFLL | 0x22D000000000000;
  v10 = v0[29];
  v11 = v0[30];

  return MEMORY[0x2822009F8](LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:), v10, v11);
}

{
  v1 = *(v0 + 264);
  v2 = *(v0 + 192);
  *(v0 + 306) = (*(v0 + 256))(*(v0 + 208), *(v0 + 200)) & 1;

  return MEMORY[0x2822009F8](LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:), 0, 0);
}

{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  if ((*(v1 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_isPaused) & 1) == 0 && *(v0 + 306))
  {
    v3 = OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_lastProgressMomentElapsedTime;
    v4 = v2 - *(v1 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_lastProgressMomentElapsedTime);
    if (one-time initialization token for progressMomentPeriod != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 248);
    v7 = *(v0 + 40);
    v6 = *(v0 + 48);
    v8 = *(v0 + 32);
    __swift_project_value_buffer(v8, static LiveWorkoutContextManager.Constants.progressMomentPeriod);
    v9 = [v5 seconds];
    Measurement<>.converted(to:)();

    Measurement.value.getter();
    v11 = v10;
    (*(v7 + 8))(v6, v8);
    if (v11 <= v4)
    {
      v29 = *(v0 + 200);
      *(v1 + v3) = *(v0 + 16);
      v47 = (*(v29 + 208) + **(v29 + 208));
      v30 = *(*(v29 + 208) + 4);
      v31 = swift_task_alloc();
      *(v0 + 272) = v31;
      *v31 = v0;
      v31[1] = LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:);
      v15 = *(v0 + 200);
      v32 = *(v0 + 192);
      v17 = *(v0 + 208);
      v18 = v47;

      return v18(v17, v15);
    }

    v1 = *(v0 + 24);
    v2 = *(v0 + 16);
    if (v2 - *(v1 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_lastBreakthroughCheckElapsedTime) >= 30.0)
    {
      v33 = *(v0 + 200);
      *(v1 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_lastBreakthroughCheckElapsedTime) = v2;
      v48 = (*(v33 + 216) + **(v33 + 216));
      v34 = *(*(v33 + 216) + 4);
      v35 = swift_task_alloc();
      *(v0 + 280) = v35;
      *v35 = v0;
      v35[1] = LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:);
      v15 = *(v0 + 200);
      v36 = *(v0 + 192);
      v17 = *(v0 + 208);
      v18 = v48;

      return v18(v17, v15);
    }
  }

  if (v2 > 45.0 && (*(v1 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_gracePeriodPassedAndPotentialFallbackEvaluated) & 1) == 0 && (*(v0 + 306) & 1) == 0)
  {
    v12 = *(v0 + 200);
    *(v1 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_gracePeriodPassedAndPotentialFallbackEvaluated) = 1;
    v45 = (*(v12 + 192) + **(v12 + 192));
    v13 = *(*(v12 + 192) + 4);
    v14 = swift_task_alloc();
    *(v0 + 288) = v14;
    *v14 = v0;
    v14[1] = LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:);
    v15 = *(v0 + 200);
    v16 = *(v0 + 192);
    v17 = *(v0 + 208);
    v18 = v45;

    return v18(v17, v15);
  }

  v19 = *(v0 + 176);
  v20 = *(v0 + 160);
  v21 = *(v0 + 168);
  v23 = *(v0 + 144);
  v22 = *(v0 + 152);
  v25 = *(v0 + 128);
  v24 = *(v0 + 136);
  v26 = *(v0 + 120);
  v37 = *(v0 + 112);
  v38 = *(v0 + 104);
  v39 = *(v0 + 96);
  v40 = *(v0 + 88);
  v41 = *(v0 + 80);
  v42 = *(v0 + 72);
  v43 = *(v0 + 64);
  v44 = *(v0 + 56);
  v46 = *(v0 + 48);
  _sSo8NSObjectCSgWOhTm_14(*(v0 + 184), &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);

  v27 = *(v0 + 8);

  return v27();
}

{
  v1 = *(*v0 + 272);
  v3 = *v0;

  return MEMORY[0x2822009F8](LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:), 0, 0);
}

{
  if (*(v0 + 16) <= 45.0 || (v1 = *(v0 + 24), (*(v1 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_gracePeriodPassedAndPotentialFallbackEvaluated) & 1) != 0) || (*(v0 + 306) & 1) != 0)
  {
    v9 = *(v0 + 176);
    v10 = *(v0 + 160);
    v11 = *(v0 + 168);
    v13 = *(v0 + 144);
    v12 = *(v0 + 152);
    v15 = *(v0 + 128);
    v14 = *(v0 + 136);
    v16 = *(v0 + 120);
    v18 = *(v0 + 112);
    v19 = *(v0 + 104);
    v20 = *(v0 + 96);
    v21 = *(v0 + 88);
    v22 = *(v0 + 80);
    v23 = *(v0 + 72);
    v24 = *(v0 + 64);
    v25 = *(v0 + 56);
    v27 = *(v0 + 48);
    _sSo8NSObjectCSgWOhTm_14(*(v0 + 184), &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v2 = *(v0 + 200);
    *(v1 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_gracePeriodPassedAndPotentialFallbackEvaluated) = 1;
    v26 = (*(v2 + 192) + **(v2 + 192));
    v3 = *(*(v2 + 192) + 4);
    v4 = swift_task_alloc();
    *(v0 + 288) = v4;
    *v4 = v0;
    v4[1] = LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:);
    v5 = *(v0 + 200);
    v6 = *(v0 + 208);
    v7 = *(v0 + 192);

    return v26(v6, v5);
  }
}

{
  v1 = *(*v0 + 280);
  v3 = *v0;

  return MEMORY[0x2822009F8](LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:), 0, 0);
}

{
  if (*(v0 + 307))
  {
    v1 = *(v0 + 176);
    v2 = *(v0 + 160);
    v3 = *(v0 + 168);
    v5 = *(v0 + 144);
    v4 = *(v0 + 152);
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v8 = *(v0 + 120);
    v21 = *(v0 + 112);
    v22 = *(v0 + 104);
    v23 = *(v0 + 96);
    v24 = *(v0 + 88);
    v25 = *(v0 + 80);
    v26 = *(v0 + 72);
    v27 = *(v0 + 64);
    v28 = *(v0 + 56);
    v29 = *(v0 + 48);
    _sSo8NSObjectCSgWOhTm_14(*(v0 + 184), &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static WOLog.workoutVoice);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_20AEA4000, v12, v13, "Have not recovered availability/headphones within the grace period. Falling back to Siri for the rest of the workout", v14, 2u);
      MEMORY[0x20F2E9420](v14, -1, -1);
    }

    v15 = *(v0 + 200);

    v30 = (*(v15 + 256) + **(v15 + 256));
    v16 = *(*(v15 + 256) + 4);
    v17 = swift_task_alloc();
    *(v0 + 296) = v17;
    *v17 = v0;
    v17[1] = LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:);
    v19 = *(v0 + 200);
    v18 = *(v0 + 208);
    v20 = *(v0 + 192);

    return v30(1, v18, v19);
  }
}

{
  v1 = *(*v0 + 296);
  v3 = *v0;

  return MEMORY[0x2822009F8](LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:), 0, 0);
}

{
  v1 = v0[3];
  LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)(0, 0);
  v2 = v0[22];
  v3 = v0[20];
  v4 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[15];
  v12 = v0[14];
  v13 = v0[13];
  v14 = v0[12];
  v15 = v0[11];
  v16 = v0[10];
  v17 = v0[9];
  v18 = v0[8];
  v19 = v0[7];
  v20 = v0[6];
  _sSo8NSObjectCSgWOhTm_14(v0[23], &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);

  v10 = v0[1];

  return v10();
}

uint64_t LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:)(char a1)
{
  v2 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 307) = a1;

  return MEMORY[0x2822009F8](LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:), 0, 0);
}

uint64_t specialized closure #4 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a1;
  *(v5 + 16) = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR) - 8) + 64) + 15;
  *(v5 + 32) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR) - 8) + 64) + 15;
  *(v5 + 40) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR) - 8) + 64) + 15;
  *(v5 + 48) = swift_task_alloc();
  *(v5 + 56) = swift_task_alloc();
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR) - 8) + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR) - 8) + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR) - 8) + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR) - 8) + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  *(v5 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #4 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), 0, 0);
}

uint64_t specialized closure #4 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[14];
  v7 = v0[12];
  v28 = v0[11];
  v29 = v0[10];
  v30 = v0[9];
  v31 = v0[8];
  v32 = v0[7];
  v33 = v0[6];
  v34 = v0[15];
  v35 = v0[5];
  v36 = v0[13];
  v38 = v0[4];
  v8 = v0[3];
  v9 = (v0[2] + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v0[21] = *v9;
  v37 = v9[1];
  v0[22] = v37;
  v0[23] = swift_getObjectType();
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 56))(v1, 1, 1, v10);
  v11 = type metadata accessor for Date();
  v12 = *(*(v11 - 8) + 56);
  v12(v2, 1, 1, v11);
  v12(v4, 1, 1, v11);
  v12(v3, 1, 1, v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v14 = *(*(v13 - 8) + 56);
  v14(v5, 1, 1, v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v27 = *(*(v15 - 8) + 56);
  v27(v6, 1, 1, v15);
  type metadata accessor for UnitPace();
  static UnitPace.secondsPerMeter.getter();
  Measurement.init(value:unit:)();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
  v17 = *(*(v16 - 8) + 56);
  v17(v7, 0, 1, v16);
  v17(v28, 1, 1, v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  (*(*(v18 - 8) + 56))(v29, 1, 1, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v20 = *(*(v19 - 8) + 56);
  v20(v30, 1, 1, v19);
  v20(v31, 1, 1, v19);
  v20(v32, 1, 1, v19);
  v20(v33, 1, 1, v19);
  v14(v34, 1, 1, v13);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  (*(*(v21 - 8) + 56))(v35, 1, 1, v21);
  v27(v36, 1, 1, v15);
  v22 = type metadata accessor for HKActivitySummaryRepresentable();
  (*(*(v22 - 8) + 56))(v38, 1, 1, v22);
  v23 = *(v37 + 8);
  v25 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](specialized closure #4 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), v25, v24);
}

{
  v17 = v0[20];
  v16 = v0[19];
  v14 = v0[16];
  v15 = v0[17];
  v1 = v0[15];
  v2 = v0[13];
  v11 = v0[12];
  v12 = v0[11];
  v13 = v0[14];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v18 = v0[10];
  v19 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[18];
  WorkoutBuddyMomentCoordinating.updateWorkoutContext(identifier:location:startDate:sessionStartDate:endDate:elapsedTime:totalDistanceTraveled:currentPace:avgPace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:splitAverageHeartRate:timeBasedSplitDuration:elapsedTimeInHeartRateZones:averagePower:elevationGain:metadata:samplesByType:activitySummaryRepresentable:)(v17, 0, v16, v8, v15, v14, v13, v11, v12, v18, v4, v3, v19, v5, v1, 0, v7, v2, 0, 0, v6, v0[23], v0[22]);
  _sSo8NSObjectCSgWOhTm_14(v6, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v2, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v7, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v1, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v5, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v19, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v3, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v4, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v18, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v12, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v11, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v13, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v14, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v15, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v9 = v0[1];

  return v9();
}

uint64_t closure #5 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  *(v7 + 16) = a6;
  *(v7 + 24) = a7;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR) - 8) + 64) + 15;
  *(v7 + 48) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR) - 8) + 64) + 15;
  *(v7 + 56) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR) - 8) + 64) + 15;
  *(v7 + 64) = swift_task_alloc();
  *(v7 + 72) = swift_task_alloc();
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR) - 8) + 64) + 15;
  *(v7 + 96) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR) - 8) + 64) + 15;
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR) - 8) + 64) + 15;
  *(v7 + 120) = swift_task_alloc();
  *(v7 + 128) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR) - 8) + 64) + 15;
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  *(v7 + 152) = swift_task_alloc();
  *(v7 + 160) = swift_task_alloc();
  *(v7 + 168) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  *(v7 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #5 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), 0, 0);
}

uint64_t closure #5 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)()
{
  v1 = (v0[2] + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v0[23] = *v1;
  v2 = v1[1];
  v0[24] = v2;
  v0[25] = swift_getObjectType();
  v3 = *(v2 + 176);
  v2 += 176;
  v0[26] = v3;
  v0[27] = v2 & 0xFFFFFFFFFFFFLL | 0xDE3C000000000000;
  v4 = *(v2 - 168);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[28] = v6;
  v0[29] = v5;

  return MEMORY[0x2822009F8](closure #5 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), v6, v5);
}

{
  v1 = *(v0 + 216);
  v2 = *(v0 + 184);
  (*(v0 + 208))(*(v0 + 24), *(v0 + 200), *(v0 + 192));

  return MEMORY[0x2822009F8](closure #5 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), 0, 0);
}

{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[18];
  v6 = v0[16];
  v25 = v0[14];
  v26 = v0[13];
  v27 = v0[12];
  v29 = v0[11];
  v30 = v0[10];
  v31 = v0[9];
  v32 = v0[8];
  v33 = v0[17];
  v34 = v0[7];
  v35 = v0[15];
  v36 = v0[6];
  v8 = v0[4];
  v7 = v0[5];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  v10 = type metadata accessor for Date();
  v11 = *(*(v10 - 8) + 56);
  v11(v1, 1, 1, v10);
  v11(v4, 1, 1, v10);
  v11(v3, 1, 1, v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v13 = *(*(v12 - 8) + 56);
  v13(v5, 1, 1, v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v28 = *(*(v14 - 8) + 56);
  v28(v6, 1, 1, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
  v16 = *(*(v15 - 8) + 56);
  v16(v25, 1, 1, v15);
  v16(v26, 1, 1, v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  (*(*(v17 - 8) + 56))(v27, 1, 1, v17);
  type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitFrequency, 0x277CCAE00);
  static NSUnitFrequency.beatsPerMinute.getter();
  Measurement.init(value:unit:)();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v19 = *(*(v18 - 8) + 56);
  v19(v29, 0, 1, v18);
  v19(v30, 1, 1, v18);
  v19(v31, 1, 1, v18);
  static NSUnitFrequency.beatsPerMinute.getter();
  Measurement.init(value:unit:)();
  v19(v32, 0, 1, v18);
  v13(v33, 1, 1, v12);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  (*(*(v20 - 8) + 56))(v34, 1, 1, v20);
  v28(v35, 1, 1, v14);
  v21 = type metadata accessor for HKActivitySummaryRepresentable();
  (*(*(v21 - 8) + 56))(v36, 1, 1, v21);
  v22 = v0[28];
  v23 = v0[29];

  return MEMORY[0x2822009F8](closure #5 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), v22, v23);
}

{
  v17 = v0[22];
  v16 = v0[21];
  v14 = v0[18];
  v15 = v0[19];
  v1 = v0[17];
  v2 = v0[15];
  v11 = v0[14];
  v12 = v0[13];
  v13 = v0[16];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v18 = v0[12];
  v19 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[20];
  WorkoutBuddyMomentCoordinating.updateWorkoutContext(identifier:location:startDate:sessionStartDate:endDate:elapsedTime:totalDistanceTraveled:currentPace:avgPace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:splitAverageHeartRate:timeBasedSplitDuration:elapsedTimeInHeartRateZones:averagePower:elevationGain:metadata:samplesByType:activitySummaryRepresentable:)(v17, 0, v16, v8, v15, v14, v13, v11, v12, v18, v4, v3, v19, v5, v1, 0, v7, v2, 0, 0, v6, v0[25], v0[24]);
  _sSo8NSObjectCSgWOhTm_14(v6, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v2, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v7, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v1, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v5, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v19, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v3, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v4, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v18, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v12, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v11, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v13, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v14, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v15, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v9 = v0[1];

  return v9();
}

uint64_t specialized closure #6 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a1;
  *(v5 + 16) = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR) - 8) + 64) + 15;
  *(v5 + 32) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR) - 8) + 64) + 15;
  *(v5 + 40) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR) - 8) + 64) + 15;
  *(v5 + 48) = swift_task_alloc();
  *(v5 + 56) = swift_task_alloc();
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR) - 8) + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR) - 8) + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR) - 8) + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR) - 8) + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  *(v5 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #6 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), 0, 0);
}

uint64_t specialized closure #6 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  v6 = v0[14];
  v26 = v0[12];
  v28 = v0[11];
  v29 = v0[10];
  v30 = v0[9];
  v31 = v0[8];
  v32 = v0[7];
  v33 = v0[6];
  v34 = v0[15];
  v35 = v0[5];
  v36 = v0[13];
  v7 = v0[3];
  v8 = (v0[2] + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v38 = v0[4];
  v0[21] = *v8;
  v37 = v8[1];
  v0[22] = v37;
  v0[23] = swift_getObjectType();
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = type metadata accessor for Date();
  v11 = *(*(v10 - 8) + 56);
  v11(v2, 1, 1, v10);
  v11(v3, 1, 1, v10);
  v11(v4, 1, 1, v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v13 = *(*(v12 - 8) + 56);
  v13(v5, 1, 1, v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v27 = *(*(v14 - 8) + 56);
  v27(v6, 1, 1, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
  v16 = *(*(v15 - 8) + 56);
  v16(v26, 1, 1, v15);
  type metadata accessor for UnitPace();
  static UnitPace.secondsPerMeter.getter();
  Measurement.init(value:unit:)();
  v16(v28, 0, 1, v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  (*(*(v17 - 8) + 56))(v29, 1, 1, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v19 = *(*(v18 - 8) + 56);
  v19(v30, 1, 1, v18);
  v19(v31, 1, 1, v18);
  v19(v32, 1, 1, v18);
  v19(v33, 1, 1, v18);
  v13(v34, 1, 1, v12);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  (*(*(v20 - 8) + 56))(v35, 1, 1, v20);
  v27(v36, 1, 1, v14);
  v21 = type metadata accessor for HKActivitySummaryRepresentable();
  (*(*(v21 - 8) + 56))(v38, 1, 1, v21);
  v22 = *(v37 + 8);
  v24 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](specialized closure #6 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), v24, v23);
}

uint64_t closure #7 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_projectBox();

  return MEMORY[0x2822009F8](closure #7 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), 0, 0);
}

uint64_t closure #7 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[18];
  v5 = v0[19];
  v6 = v0[16];
  v35 = v0[23];
  v36 = v0[15];
  v26 = v0[14];
  v27 = v0[13];
  v28 = v0[12];
  v29 = v0[11];
  v30 = v0[10];
  v31 = v0[9];
  v32 = v0[8];
  v33 = v0[17];
  v7 = v0[6];
  v34 = v0[7];
  v8 = (v0[5] + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v0[24] = *v8;
  v37 = v8[1];
  v38 = v7;
  v0[25] = v37;
  v0[26] = swift_getObjectType();
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = type metadata accessor for Date();
  v11 = *(*(v10 - 8) + 56);
  v11(v3, 1, 1, v10);
  v11(v2, 1, 1, v10);
  v11(v5, 1, 1, v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v13 = *(*(v12 - 8) + 56);
  v13(v4, 1, 1, v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
  v16 = *(*(v15 - 8) + 56);
  v16(v26, 1, 1, v15);
  v16(v27, 1, 1, v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  (*(*(v17 - 8) + 56))(v28, 1, 1, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v19 = *(*(v18 - 8) + 56);
  v19(v29, 1, 1, v18);
  v19(v30, 1, 1, v18);
  v19(v31, 1, 1, v18);
  v19(v32, 1, 1, v18);
  v13(v33, 1, 1, v12);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  (*(*(v20 - 8) + 56))(v34, 1, 1, v20);
  swift_beginAccess();
  outlined init with copy of Measurement<NSUnitPower>?(v35, v36, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  v21 = type metadata accessor for HKActivitySummaryRepresentable();
  (*(*(v21 - 8) + 56))(v38, 1, 1, v21);
  v22 = *(v37 + 8);
  v24 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #7 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), v24, v23);
}

{
  v1 = v0[24];
  v18 = v0[22];
  v17 = v0[21];
  v2 = v0[17];
  v15 = v0[18];
  v16 = v0[19];
  v3 = v0[15];
  v12 = v0[14];
  v13 = v0[13];
  v14 = v0[16];
  v4 = v0[11];
  v5 = v0[10];
  v19 = v0[12];
  v20 = v0[9];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[6];
  v9 = v0[20];
  WorkoutBuddyMomentCoordinating.updateWorkoutContext(identifier:location:startDate:sessionStartDate:endDate:elapsedTime:totalDistanceTraveled:currentPace:avgPace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:splitAverageHeartRate:timeBasedSplitDuration:elapsedTimeInHeartRateZones:averagePower:elevationGain:metadata:samplesByType:activitySummaryRepresentable:)(v18, 0, v17, v9, v16, v15, v14, v12, v13, v19, v4, v5, v20, v7, v2, 0, v6, v3, 0, 0, v8, v0[26], v0[25]);
  _sSo8NSObjectCSgWOhTm_14(v8, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v3, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v6, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v2, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v7, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v20, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v5, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v4, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v19, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v13, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v12, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v14, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v15, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v17, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v10 = v0[1];

  return v10();
}

uint64_t closure #8 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR) - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR) - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #8 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), 0, 0);
}

uint64_t closure #8 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  v6 = v0[13];
  v32 = v0[14];
  v33 = v0[12];
  v25 = v0[11];
  v26 = v0[10];
  v27 = v0[9];
  v28 = v0[8];
  v29 = v0[7];
  v30 = v0[6];
  v31 = v0[5];
  v35 = v0[4];
  v7 = (v0[2] + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v0[20] = *v7;
  v34 = v7[1];
  v0[21] = v34;
  v0[22] = swift_getObjectType();
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 56);
  v10(v1, 1, 1, v9);
  v10(v4, 1, 1, v9);
  v10(v3, 1, 1, v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v12 = *(*(v11 - 8) + 56);
  v12(v5, 1, 1, v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v14 = *(*(v13 - 8) + 56);
  v14(v6, 1, 1, v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
  v16 = *(*(v15 - 8) + 56);
  v16(v25, 1, 1, v15);
  v16(v26, 1, 1, v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  (*(*(v17 - 8) + 56))(v27, 1, 1, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v19 = *(*(v18 - 8) + 56);
  v19(v28, 1, 1, v18);
  v19(v29, 1, 1, v18);
  v19(v30, 1, 1, v18);
  v19(v31, 1, 1, v18);
  v12(v32, 1, 1, v11);
  v14(v33, 1, 1, v13);
  v20 = type metadata accessor for HKActivitySummaryRepresentable();
  (*(*(v20 - 8) + 56))(v35, 1, 1, v20);
  v21 = *(v34 + 8);
  v23 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #8 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), v23, v22);
}

{
  v16 = v0[19];
  v14 = v0[17];
  v15 = v0[18];
  v12 = v0[15];
  v13 = v0[16];
  v1 = v0[14];
  v2 = v0[12];
  v10 = v0[11];
  v11 = v0[13];
  v3 = v0[9];
  v4 = v0[8];
  v18 = v0[7];
  v5 = v0[6];
  v6 = v0[4];
  v17 = v0[5];
  v7 = v0[10];
  WorkoutBuddyMomentCoordinating.updateWorkoutContext(identifier:location:startDate:sessionStartDate:endDate:elapsedTime:totalDistanceTraveled:currentPace:avgPace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:splitAverageHeartRate:timeBasedSplitDuration:elapsedTimeInHeartRateZones:averagePower:elevationGain:metadata:samplesByType:activitySummaryRepresentable:)(v16, 0, v15, v14, v13, v12, v11, v10, v7, v3, v4, v18, v5, v17, v1, 0, v0[3], v2, 0, 0, v6, v0[22], v0[21]);
  _sSo8NSObjectCSgWOhTm_14(v6, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v2, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v1, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v17, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v5, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v18, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v4, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v3, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v7, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v10, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v11, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v12, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v14, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v15, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v8 = v0[1];

  return v8();
}

uint64_t closure #9 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a1;
  *(v5 + 16) = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR) - 8) + 64) + 15;
  *(v5 + 32) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR) - 8) + 64) + 15;
  *(v5 + 40) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR) - 8) + 64) + 15;
  *(v5 + 48) = swift_task_alloc();
  *(v5 + 56) = swift_task_alloc();
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR) - 8) + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR) - 8) + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR) - 8) + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR) - 8) + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  *(v5 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #9 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), 0, 0);
}

uint64_t closure #9 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  v6 = v0[14];
  v26 = v0[12];
  v27 = v0[11];
  v29 = v0[10];
  v30 = v0[9];
  v31 = v0[8];
  v32 = v0[7];
  v33 = v0[6];
  v34 = v0[15];
  v35 = v0[5];
  v36 = v0[13];
  v7 = v0[3];
  v8 = (v0[2] + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v38 = v0[4];
  v0[21] = *v8;
  v37 = v8[1];
  v0[22] = v37;
  v0[23] = swift_getObjectType();
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  v10 = type metadata accessor for Date();
  v11 = *(*(v10 - 8) + 56);
  v11(v1, 1, 1, v10);
  v11(v3, 1, 1, v10);
  v11(v4, 1, 1, v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v13 = *(*(v12 - 8) + 56);
  v13(v5, 1, 1, v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v28 = *(*(v14 - 8) + 56);
  v28(v6, 1, 1, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
  v16 = *(*(v15 - 8) + 56);
  v16(v26, 1, 1, v15);
  v16(v27, 1, 1, v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  (*(*(v17 - 8) + 56))(v29, 1, 1, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v19 = *(*(v18 - 8) + 56);
  v19(v30, 1, 1, v18);
  v19(v31, 1, 1, v18);
  type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitFrequency, 0x277CCAE00);
  static NSUnitFrequency.beatsPerMinute.getter();
  Measurement.init(value:unit:)();
  v19(v32, 0, 1, v18);
  v19(v33, 1, 1, v18);
  v13(v34, 1, 1, v12);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  (*(*(v20 - 8) + 56))(v35, 1, 1, v20);
  v28(v36, 1, 1, v14);
  v21 = type metadata accessor for HKActivitySummaryRepresentable();
  (*(*(v21 - 8) + 56))(v38, 1, 1, v21);
  v22 = *(v37 + 8);
  v24 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #9 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), v24, v23);
}

uint64_t closure #10 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a1;
  *(v5 + 16) = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR) - 8) + 64) + 15;
  *(v5 + 32) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR) - 8) + 64) + 15;
  *(v5 + 40) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR) - 8) + 64) + 15;
  *(v5 + 48) = swift_task_alloc();
  *(v5 + 56) = swift_task_alloc();
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR) - 8) + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR) - 8) + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR) - 8) + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR) - 8) + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  *(v5 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #10 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), 0, 0);
}

uint64_t closure #10 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  v6 = v0[14];
  v26 = v0[12];
  v27 = v0[11];
  v29 = v0[10];
  v30 = v0[9];
  v31 = v0[8];
  v32 = v0[7];
  v33 = v0[6];
  v34 = v0[15];
  v35 = v0[5];
  v36 = v0[13];
  v7 = v0[3];
  v8 = (v0[2] + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v38 = v0[4];
  v0[21] = *v8;
  v37 = v8[1];
  v0[22] = v37;
  v0[23] = swift_getObjectType();
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  v10 = type metadata accessor for Date();
  v11 = *(*(v10 - 8) + 56);
  v11(v1, 1, 1, v10);
  v11(v3, 1, 1, v10);
  v11(v4, 1, 1, v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v13 = *(*(v12 - 8) + 56);
  v13(v5, 1, 1, v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v28 = *(*(v14 - 8) + 56);
  v28(v6, 1, 1, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
  v16 = *(*(v15 - 8) + 56);
  v16(v26, 1, 1, v15);
  v16(v27, 1, 1, v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  (*(*(v17 - 8) + 56))(v29, 1, 1, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v19 = *(*(v18 - 8) + 56);
  v19(v30, 1, 1, v18);
  type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitFrequency, 0x277CCAE00);
  static NSUnitFrequency.beatsPerMinute.getter();
  Measurement.init(value:unit:)();
  v19(v31, 0, 1, v18);
  v19(v32, 1, 1, v18);
  v19(v33, 1, 1, v18);
  v13(v34, 1, 1, v12);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  (*(*(v20 - 8) + 56))(v35, 1, 1, v20);
  v28(v36, 1, 1, v14);
  v21 = type metadata accessor for HKActivitySummaryRepresentable();
  (*(*(v21 - 8) + 56))(v38, 1, 1, v21);
  v22 = *(v37 + 8);
  v24 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #10 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), v24, v23);
}

void LiveWorkoutContextManager.splitComplete(_:currentSplitEvents:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v28 - v8;
  v10 = *&v3[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_splitProvider];
  if (v10)
  {
    v11 = one-time initialization token for workoutVoice;
    v12 = *&v3[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_splitProvider];
    swift_unknownObjectRetain();
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static WOLog.workoutVoice);
    swift_unknownObjectRetain();
    v14 = a1;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134218240;
      [v14 distanceInMeters];
      *(v17 + 4) = v18;
      *(v17 + 12) = 2048;
      [v10 definedSplitDistance];
      *(v17 + 14) = v19;
      _os_log_impl(&dword_20AEA4000, v15, v16, "SplitComplete event received, distanceInMeters %f and display split target %f", v17, 0x16u);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }

    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v3;
    v21[5] = v14;
    v21[6] = v10;
    v21[7] = a2;
    v22 = v14;
    v23 = v3;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in LiveWorkoutContextManager.splitComplete(_:currentSplitEvents:), v21);
  }

  else
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static WOLog.workoutVoice);
    v29 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_20AEA4000, v29, v25, "Received a split but no split provider was declared", v26, 2u);
      MEMORY[0x20F2E9420](v26, -1, -1);
    }

    v27 = v29;
  }
}

uint64_t closure #1 in LiveWorkoutContextManager.splitComplete(_:currentSplitEvents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.splitComplete(_:currentSplitEvents:), 0, 0);
}

uint64_t closure #1 in LiveWorkoutContextManager.splitComplete(_:currentSplitEvents:)()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  v20 = *(v5 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_activityType);
  v21 = *(v0 + 48);
  v19 = *(v5 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_unitManager);
  [*(v0 + 24) distanceInMeters];
  v6 = objc_opt_self();
  v7 = [v6 meters];
  type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  Measurement.init(value:unit:)();
  [v4 definedSplitDistance];
  v8 = [v6 meters];
  Measurement.init(value:unit:)();
  v9 = *(v5 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_liveWorkoutConfiguration);
  v10 = specialized static LiveWorkoutContextManager.shouldAnnounceSplitWithMotivation(activityType:unitManager:splitDistance:splitDefinedDistance:liveWorkoutConfiguration:)(v20, v19, v1);
  v11 = *(v3 + 8);
  v11(v2, v21);
  v11(v1, v21);
  v13 = *(v5 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v12 = *(v5 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator + 8);
  ObjectType = swift_getObjectType();
  v22 = (*(v12 + 304) + **(v12 + 304));
  v15 = *(*(v12 + 304) + 4);
  v16 = swift_task_alloc();
  *(v0 + 80) = v16;
  *v16 = v0;
  v16[1] = closure #1 in LiveWorkoutContextManager.splitComplete(_:currentSplitEvents:);
  v17 = *(v0 + 40);

  return v22(v17, v10 & 1, ObjectType, v12);
}

{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

Swift::Void __swiftcall LiveWorkoutContextManager.activityRingsUpdated(with:)(HKActivitySummary with)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v39 - v6;
  v8 = type metadata accessor for CacheIndex();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HKActivitySummaryRepresentable();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - v19;
  MEMORY[0x20F2E5840]([(objc_class *)with.super.isa _activitySummaryIndex]);
  static HKActivitySummaryRepresentable.from(_:pausedIntervals:rings:moveTotal:moveMinutestotal:exerciseTotal:standTotal:stepsTotal:flightsTotal:distanceTotal:activityMoveMode:isWheelchairUser:)();
  (*(v9 + 8))(v12, v8);
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static WOLog.workoutVoice);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = v39;
    *v24 = 136315138;
    v25 = _typeName(_:qualified:)();
    LODWORD(ObjectType) = v23;
    v27 = v18;
    v28 = v14;
    v29 = v20;
    v30 = v13;
    v31 = v7;
    v32 = v2;
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v42);

    *(v24 + 4) = v33;
    v2 = v32;
    v7 = v31;
    v13 = v30;
    v20 = v29;
    v14 = v28;
    v18 = v27;
    _os_log_impl(&dword_20AEA4000, v22, ObjectType, "%s Activity summary updated. Updating workout context.", v24, 0xCu);
    v34 = v39;
    __swift_destroy_boxed_opaque_existential_1Tm_18(v39);
    MEMORY[0x20F2E9420](v34, -1, -1);
    MEMORY[0x20F2E9420](v24, -1, -1);
  }

  v35 = type metadata accessor for TaskPriority();
  (*(*(v35 - 8) + 56))(v7, 1, 1, v35);
  (*(v14 + 16))(v18, v20, v13);
  v36 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v37 = swift_allocObject();
  *(v37 + 2) = 0;
  *(v37 + 3) = 0;
  *(v37 + 4) = v2;
  (*(v14 + 32))(&v37[v36], v18, v13);
  v38 = v2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in LiveWorkoutContextManager.activityRingsUpdated(with:), v37);

  (*(v14 + 8))(v20, v13);
}

uint64_t closure #1 in LiveWorkoutContextManager.activityRingsUpdated(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR) - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR) - 8) + 64) + 15;
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR) - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.activityRingsUpdated(with:), 0, 0);
}

uint64_t closure #1 in LiveWorkoutContextManager.activityRingsUpdated(with:)()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  v6 = v0[14];
  v27 = v0[12];
  v28 = v0[11];
  v29 = v0[10];
  v30 = v0[9];
  v31 = v0[8];
  v32 = v0[7];
  v33 = v0[6];
  v34 = v0[15];
  v35 = v0[5];
  v36 = v0[13];
  v37 = v0[4];
  v38 = v0[3];
  v7 = (v0[2] + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v0[21] = *v7;
  v39 = v7[1];
  v0[22] = v39;
  v0[23] = swift_getObjectType();
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 56);
  v10(v1, 1, 1, v9);
  v10(v3, 1, 1, v9);
  v10(v4, 1, 1, v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v12 = *(*(v11 - 8) + 56);
  v12(v5, 1, 1, v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v14 = *(*(v13 - 8) + 56);
  v14(v6, 1, 1, v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
  v16 = *(*(v15 - 8) + 56);
  v16(v27, 1, 1, v15);
  v16(v28, 1, 1, v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  (*(*(v17 - 8) + 56))(v29, 1, 1, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v19 = *(*(v18 - 8) + 56);
  v19(v30, 1, 1, v18);
  v19(v31, 1, 1, v18);
  v19(v32, 1, 1, v18);
  v19(v33, 1, 1, v18);
  v12(v34, 1, 1, v11);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  (*(*(v20 - 8) + 56))(v35, 1, 1, v20);
  v14(v36, 1, 1, v13);
  v21 = type metadata accessor for HKActivitySummaryRepresentable();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v37, v38, v21);
  (*(v22 + 56))(v37, 0, 1, v21);
  v23 = *(v39 + 8);
  v25 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.activityRingsUpdated(with:), v25, v24);
}

uint64_t LiveWorkoutContextManager.completedActivityRing(_:activitySummary:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v44 = a1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v41 - v7;
  v9 = type metadata accessor for CacheIndex();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HKActivitySummaryRepresentable();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - v20;
  MEMORY[0x20F2E5840]([a2 _activitySummaryIndex]);
  static HKActivitySummaryRepresentable.from(_:pausedIntervals:rings:moveTotal:moveMinutestotal:exerciseTotal:standTotal:stepsTotal:flightsTotal:distanceTotal:activityMoveMode:isWheelchairUser:)();
  (*(v10 + 8))(v13, v9);
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static WOLog.workoutVoice);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v46 = v42;
    *v25 = 136315394;
    v26 = _typeName(_:qualified:)();
    LODWORD(ObjectType) = v24;
    v28 = v19;
    v29 = v15;
    v30 = v21;
    v31 = v14;
    v32 = v8;
    v33 = v3;
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v46);

    *(v25 + 4) = v34;
    v3 = v33;
    v8 = v32;
    v14 = v31;
    v21 = v30;
    v15 = v29;
    v19 = v28;
    *(v25 + 12) = 2048;
    *(v25 + 14) = v44;
    _os_log_impl(&dword_20AEA4000, v23, ObjectType, "%s Ring of type %ld was closed. Updating workout context.", v25, 0x16u);
    v35 = v42;
    __swift_destroy_boxed_opaque_existential_1Tm_18(v42);
    MEMORY[0x20F2E9420](v35, -1, -1);
    MEMORY[0x20F2E9420](v25, -1, -1);
  }

  v36 = type metadata accessor for TaskPriority();
  (*(*(v36 - 8) + 56))(v8, 1, 1, v36);
  (*(v15 + 16))(v19, v21, v14);
  v37 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v38 = swift_allocObject();
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  *(v38 + 4) = v3;
  (*(v15 + 32))(&v38[v37], v19, v14);
  v39 = v3;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in LiveWorkoutContextManager.completedActivityRing(_:activitySummary:), v38);

  return (*(v15 + 8))(v21, v14);
}

uint64_t closure #1 in LiveWorkoutContextManager.completedActivityRing(_:activitySummary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR) - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR) - 8) + 64) + 15;
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR) - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.completedActivityRing(_:activitySummary:), 0, 0);
}

uint64_t closure #1 in LiveWorkoutContextManager.completedActivityRing(_:activitySummary:)()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  v6 = v0[14];
  v27 = v0[12];
  v28 = v0[11];
  v29 = v0[10];
  v30 = v0[9];
  v31 = v0[8];
  v32 = v0[7];
  v33 = v0[6];
  v34 = v0[15];
  v35 = v0[5];
  v36 = v0[13];
  v37 = v0[4];
  v38 = v0[3];
  v7 = (v0[2] + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v0[21] = *v7;
  v39 = v7[1];
  v0[22] = v39;
  v0[23] = swift_getObjectType();
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 56);
  v10(v1, 1, 1, v9);
  v10(v3, 1, 1, v9);
  v10(v4, 1, 1, v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v12 = *(*(v11 - 8) + 56);
  v12(v5, 1, 1, v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v14 = *(*(v13 - 8) + 56);
  v14(v6, 1, 1, v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
  v16 = *(*(v15 - 8) + 56);
  v16(v27, 1, 1, v15);
  v16(v28, 1, 1, v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  (*(*(v17 - 8) + 56))(v29, 1, 1, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v19 = *(*(v18 - 8) + 56);
  v19(v30, 1, 1, v18);
  v19(v31, 1, 1, v18);
  v19(v32, 1, 1, v18);
  v19(v33, 1, 1, v18);
  v12(v34, 1, 1, v11);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  (*(*(v20 - 8) + 56))(v35, 1, 1, v20);
  v14(v36, 1, 1, v13);
  v21 = type metadata accessor for HKActivitySummaryRepresentable();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v37, v38, v21);
  (*(v22 + 56))(v37, 0, 1, v21);
  v23 = *(v39 + 8);
  v25 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.completedActivityRing(_:activitySummary:), v25, v24);
}

void LiveWorkoutContextManager.workout(_:didMoveToState:)(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - v11;
  if (a2 == 5)
  {
    v22 = *&v2[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_sessionActivity];
    v23 = MEMORY[0x20F2E6C00](0xD00000000000002BLL, 0x800000020B4687C0);
    [v22 removeMetadata:v23 forceTopLevel:1];

    goto LABEL_10;
  }

  if (a2 != 4)
  {
LABEL_10:
    v2[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_isPaused] = a2 == 3;
    return;
  }

  v13 = [a1 catalogWorkoutBridge];
  if (!v13)
  {
    v24 = type metadata accessor for CatalogWorkout();
    (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
    _sSo8NSObjectCSgWOhTm_14(v12, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
    if ((v2[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_isPaused] & 1) == 0)
    {
      v25 = type metadata accessor for TaskPriority();
      (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
      v26 = swift_allocObject();
      v26[2] = 0;
      v26[3] = 0;
      v26[4] = v2;
      v26[5] = a1;
      v27 = v2;
      v28 = a1;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in LiveWorkoutContextManager.workout(_:didMoveToState:), v26);
    }

    goto LABEL_10;
  }

  v14 = v13;
  v15 = OBJC_IVAR___WOCoreCatalogWorkout_bridgedValue;
  v16 = type metadata accessor for CatalogWorkout();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v12, &v14[v15], v16);

  (*(v17 + 56))(v12, 0, 1, v16);
  _sSo8NSObjectCSgWOhTm_14(v12, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static WOLog.workoutVoice);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_20AEA4000, v19, v20, "This workout is a Catalog Workout. Stopping Workout Buddy", v21, 2u);
    MEMORY[0x20F2E9420](v21, -1, -1);
  }

  LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)(0, 0);
}

uint64_t closure #1 in LiveWorkoutContextManager.workout(_:didMoveToState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v5[7] = *(v8 + 64);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.workout(_:didMoveToState:), 0, 0);
}

uint64_t closure #1 in LiveWorkoutContextManager.workout(_:didMoveToState:)()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v3 = *v1;
  v2 = v1[1];
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 232);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = closure #1 in LiveWorkoutContextManager.workout(_:didMoveToState:);

  return v9(ObjectType, v2);
}

{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.workout(_:didMoveToState:), 0, 0);
}

{
  v41 = v0;
  v1 = [*(v0 + 24) startDate];
  if (v1)
  {
    v2 = *(v0 + 80);
    v3 = v1;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 72);
    v5 = *(v0 + 80);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static WOLog.workoutVoice);
    v39 = *(v7 + 16);
    v39(v4, v5, v6);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 72);
    v13 = *(v0 + 40);
    v14 = *(v0 + 48);
    if (v11)
    {
      v15 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v40 = v37;
      *v15 = 136315138;
      lazy protocol witness table accessor for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      v38 = *(v14 + 8);
      v38(v12, v13);
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v40);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_20AEA4000, v9, v10, "Updating start date to %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_18(v37);
      MEMORY[0x20F2E9420](v37, -1, -1);
      MEMORY[0x20F2E9420](v15, -1, -1);
    }

    else
    {

      v38 = *(v14 + 8);
      v38(v12, v13);
    }

    v20 = *(v0 + 80);
    v22 = *(v0 + 56);
    v21 = *(v0 + 64);
    v23 = *(v0 + 40);
    v24 = *(v0 + 48);
    v25 = *(v0 + 32);
    v26 = *(v0 + 16);
    v27 = type metadata accessor for TaskPriority();
    (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
    v39(v21, v20, v23);
    v28 = (*(v24 + 80) + 40) & ~*(v24 + 80);
    v29 = swift_allocObject();
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    *(v29 + 4) = v26;
    (*(v24 + 32))(&v29[v28], v21, v23);
    v30 = v26;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v25, &closure #1 in LiveWorkoutContextManager.updateWorkoutStartDate(date:)partial apply, v29);

    v38(v20, v23);
  }

  v32 = *(v0 + 72);
  v31 = *(v0 + 80);
  v33 = *(v0 + 64);
  v34 = *(v0 + 32);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

double specialized static LiveWorkoutContextManager.Constants.minDistanceThresholdForSplitMomentsInMeters(_:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  [a1 effectiveTypeIdentifier];
  v10 = objc_opt_self();
  v11 = [v10 miles];
  type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  Measurement.init(value:unit:)();
  v12 = [v10 meters];
  Measurement<>.converted(to:)();

  v13 = *(v3 + 8);
  v13(v7, v2);
  Measurement.value.getter();
  v15 = v14;
  v13(v9, v2);
  return v15;
}

uint64_t partial apply for closure #1 in LiveWorkoutContextManager.setDelegate(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in LiveWorkoutContextManager.setDelegate(_:);

  return closure #1 in LiveWorkoutContextManager.setDelegate(_:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in LiveWorkoutContextManager.setAlertDelegate(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in LiveWorkoutContextManager.setAlertDelegate(_:);

  return closure #1 in LiveWorkoutContextManager.setAlertDelegate(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in LiveWorkoutContextManager.setMetricsPublisher(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in LiveWorkoutContextManager.setMetricsPublisher(_:);

  return closure #1 in LiveWorkoutContextManager.setMetricsPublisher(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in LiveWorkoutContextManager.updateWorkoutStartDate(date:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in LiveWorkoutContextManager.updateWorkoutStartDate(date:);

  return closure #1 in LiveWorkoutContextManager.updateWorkoutStartDate(date:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t partial apply for closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:);

  return closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)(a1, v4, v5, v6, v7, v8);
}

uint64_t closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)partial apply(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)partial apply;

  return closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)(a1, v4, v5, v6, v7, v8);
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)partial apply;

  return closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)(a1, v4, v5, v6, v7, v8);
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)partial apply;

  return closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #2 in LiveWorkoutContextManager.generateOutroMoment(for:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #2 in LiveWorkoutContextManager.generateOutroMoment(for:);

  return closure #2 in LiveWorkoutContextManager.generateOutroMoment(for:)(v8, a1, v4, v5, v6, v7);
}

uint64_t partial apply for closure #2 in LiveWorkoutContextManager.generateOutroMoment(for:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t partial apply for closure #1 in LiveWorkoutContextManager.cancelAnyPendingAnnouncements()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in LiveWorkoutContextManager.cancelAnyPendingAnnouncements();

  return closure #1 in LiveWorkoutContextManager.cancelAnyPendingAnnouncements()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in LiveWorkoutContextManager.setWorkoutBuddyMuted(_:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in LiveWorkoutContextManager.setWorkoutBuddyMuted(_:);

  return closure #1 in LiveWorkoutContextManager.setWorkoutBuddyMuted(_:)(a1, v4, v5, v6, v7);
}

uint64_t partial apply for closure #1 in LiveWorkoutContextManager.setWorkoutBuddyMuted(_:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t partial apply for closure #10 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #10 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);

  return closure #10 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(v7, a1, v4, v5, v6);
}

uint64_t partial apply for closure #9 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #9 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);

  return closure #9 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(v7, a1, v4, v5, v6);
}

uint64_t outlined init with take of Measurement<NSUnitPower>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #8 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #8 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);

  return closure #8 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t partial apply for closure #7 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #7 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);

  return closure #7 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(a1, v4, v5, v7);
}

uint64_t outlined assign with take of Measurement<NSUnitLength>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for specialized closure #6 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for specialized closure #6 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);

  return specialized closure #6 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(v7, a1, v4, v5, v6);
}

uint64_t objectdestroy_2Tm_1(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + 16);
  swift_unknownObjectRelease();

  a1(*(v2 + 40));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t partial apply for closure #5 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #5 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);

  return closure #5 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(v8, v9, a1, v4, v5, v6, v7);
}

uint64_t partial apply for specialized closure #4 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for specialized closure #4 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);

  return specialized closure #4 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(v7, a1, v4, v5, v6);
}

uint64_t partial apply for closure #3 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for closure #3 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);

  return closure #3 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(v5);
}

uint64_t partial apply for closure #2 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  v8 = *(v1 + 4);
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #2 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);

  return closure #2 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(v9, a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_18Tm_0(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t partial apply for closure #1 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);

  return closure #1 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(v7, a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in LiveWorkoutContextManager.splitComplete(_:currentSplitEvents:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in LiveWorkoutContextManager.splitComplete(_:currentSplitEvents:);

  return closure #1 in LiveWorkoutContextManager.splitComplete(_:currentSplitEvents:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t specialized static LiveWorkoutContextManager.shouldAnnounceSplitWithMotivation(activityType:unitManager:splitDistance:splitDefinedDistance:liveWorkoutConfiguration:)(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  v11 = [a2 userDistanceHKUnitForActivityType_];
  v12 = [a1 identifier];
  v13 = [a1 isIndoor];
  v14 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:v12 isIndoor:v13];
  v15 = [objc_opt_self() distanceSplitForActivityType:v14 userDistanceUnit:v11];
  if (!LiveWorkoutConfiguration.configureWithWorkoutVoiceMotivation(shouldLog:)(0))
  {
    goto LABEL_10;
  }

  type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  if ((static Measurement.== infix<A, B>(_:_:)() & 1) == 0 || ![v15 enabled] || objc_msgSend(v15, sel_type) != 1)
  {
    goto LABEL_10;
  }

  v16 = specialized static LiveWorkoutContextManager.Constants.minDistanceThresholdForSplitMomentsInMeters(_:)(a1);
  Measurement.value.getter();
  if (v16 > v17)
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static WOLog.workoutVoice);
    (*(v7 + 16))(v10, a3, v6);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v19, v20))
    {

      (*(v7 + 8))(v10, v6);
      return 0;
    }

    v21 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v21 = 136315394;
    lazy protocol witness table accessor for type PassthroughSubject<WorkoutVoiceAvailabilityProvider.State, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type Measurement<NSUnitLength> and conformance Measurement<A>, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
    v29 = v20;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v7 + 8))(v10, v6);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v31);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2048;
    *(v21 + 14) = v16;
    _os_log_impl(&dword_20AEA4000, v19, v29, "Skipping split announcement. splitDistance=%s less than threshold=%f", v21, 0x16u);
    v26 = v30;
    __swift_destroy_boxed_opaque_existential_1Tm_18(v30);
    MEMORY[0x20F2E9420](v26, -1, -1);
    MEMORY[0x20F2E9420](v21, -1, -1);

LABEL_10:
    return 0;
  }

  return 1;
}

uint64_t partial apply for closure #1 in LiveWorkoutContextManager.activityRingsUpdated(with:)(uint64_t a1)
{
  v4 = *(type metadata accessor for HKActivitySummaryRepresentable() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in LiveWorkoutContextManager.activityRingsUpdated(with:);

  return closure #1 in LiveWorkoutContextManager.activityRingsUpdated(with:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t partial apply for closure #1 in LiveWorkoutContextManager.completedActivityRing(_:activitySummary:)(uint64_t a1)
{
  v4 = *(type metadata accessor for HKActivitySummaryRepresentable() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in LiveWorkoutContextManager.completedActivityRing(_:activitySummary:);

  return closure #1 in LiveWorkoutContextManager.completedActivityRing(_:activitySummary:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in LiveWorkoutContextManager.workout(_:didMoveToState:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in LiveWorkoutContextManager.workout(_:didMoveToState:);

  return closure #1 in LiveWorkoutContextManager.workout(_:didMoveToState:)(a1, v4, v5, v7, v6);
}

uint64_t dispatch thunk of LiveWorkoutContextManager.generateIntroMomentWhenReady()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1B8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of LiveWorkoutContextManager.generateIntroMomentWhenReady();

  return v6();
}

uint64_t dispatch thunk of LiveWorkoutContextManagerDelegate.receivedInferenceResponse(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = dispatch thunk of LiveWorkoutContextManagerDelegate.receivedInferenceResponse(_:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of WorkoutBuddyAnnouncementHandler.handleAnnouncement(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = dispatch thunk of WorkoutBuddyAnnouncementHandler.handleAnnouncement(_:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of WorkoutBuddyAnnouncementHandler.stopInFlightAnnouncement()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of WorkoutBuddyAnnouncementHandler.stopInFlightAnnouncement();

  return v9(a1, a2);
}

uint64_t objectdestroy_14Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 16);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t closure #1 in LiveWorkoutContextManager.updateWorkoutStartDate(date:)partial apply(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = closure #1 in LiveWorkoutContextManager.updateWorkoutStartDate(date:)partial apply;

  return closure #1 in LiveWorkoutContextManager.updateWorkoutStartDate(date:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t lazy protocol witness table accessor for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type PassthroughSubject<WorkoutVoiceAvailabilityProvider.State, Never> and conformance PassthroughSubject<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t type metadata accessor for NSUnitPower(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t outlined init with copy of Measurement<NSUnitPower>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_165(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_165TQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t partial apply for closure #1 in closure #1 in LiveWorkoutContextManager.init(activityType:lastKnownLocation:goal:activityRingProgressMonitor:unitManager:splitProvider:isMachineWorkout:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:workout:momentCoordinator:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #1 in LiveWorkoutContextManager.init(activityType:lastKnownLocation:goal:activityRingProgressMonitor:unitManager:splitProvider:isMachineWorkout:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:workout:momentCoordinator:);

  return closure #1 in closure #1 in LiveWorkoutContextManager.init(activityType:lastKnownLocation:goal:activityRingProgressMonitor:unitManager:splitProvider:isMachineWorkout:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:workout:momentCoordinator:)(a1, v4, v5, v7, v6);
}

uint64_t MirroredClientMachTimestampResponse.init(protobuf:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = outlined destroy of Apple_Workout_Core_MirroredClientMachTimestampResponse(a1);
  *a2 = v3;
  a2[1] = v4;
  return result;
}

uint64_t outlined destroy of Apple_Workout_Core_MirroredClientMachTimestampResponse(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

WorkoutCore::MirroredClientMachTimestampResponse __swiftcall MirroredClientMachTimestampResponse.init(hostMachTimestamp:clientMachTimestamp:)(Swift::Double hostMachTimestamp, Swift::Double clientMachTimestamp)
{
  *v2 = hostMachTimestamp;
  v2[1] = clientMachTimestamp;
  result.clientMachTimestamp = clientMachTimestamp;
  result.hostMachTimestamp = hostMachTimestamp;
  return result;
}

uint64_t MirroredClientMachTimestampResponse.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(46);
  MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45C3A0);
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0xD000000000000017, 0x800000020B45A0B0);
  Double.write<A>(to:)();
  return 0;
}

uint64_t MirroredClientMachTimestampResponse.protobuf.getter()
{
  v1 = *v0;
  v2 = v0[1];
  type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientMachTimestampResponse and conformance Apple_Workout_Core_MirroredClientMachTimestampResponse();
  return static Message.with(_:)();
}

double *closure #1 in MirroredClientMachTimestampResponse.protobuf.getter(double *result, double a2, double a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

__n128 partial apply for closure #1 in MirroredClientMachTimestampResponse.protobuf.getter(__n128 *a1)
{
  result = v1[1];
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientMachTimestampResponse and conformance Apple_Workout_Core_MirroredClientMachTimestampResponse()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientMachTimestampResponse and conformance Apple_Workout_Core_MirroredClientMachTimestampResponse;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientMachTimestampResponse and conformance Apple_Workout_Core_MirroredClientMachTimestampResponse)
  {
    type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientMachTimestampResponse and conformance Apple_Workout_Core_MirroredClientMachTimestampResponse);
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MirroredClientMachTimestampResponse()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(46);
  MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45C3A0);
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0xD000000000000017, 0x800000020B45A0B0);
  Double.write<A>(to:)();
  return 0;
}

uint64_t protocol witness for MirroredMessageProtocol.init(protobuf:) in conformance MirroredClientMachTimestampResponse@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = outlined destroy of Apple_Workout_Core_MirroredClientMachTimestampResponse(a1);
  *a2 = v3;
  a2[1] = v4;
  return result;
}

uint64_t protocol witness for MirroredMessageProtocol.protobuf.getter in conformance MirroredClientMachTimestampResponse()
{
  v1 = *v0;
  v2 = v0[1];
  type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientMachTimestampResponse and conformance Apple_Workout_Core_MirroredClientMachTimestampResponse();
  return static Message.with(_:)();
}

uint64_t MirroredClientMachTimestampResponse.hash(into:)()
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

Swift::Int MirroredClientMachTimestampResponse.hashValue.getter()
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

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredClientMachTimestampResponse()
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

unint64_t instantiation function for generic protocol witness table for MirroredClientMachTimestampResponse(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MirroredClientMachTimestampResponse and conformance MirroredClientMachTimestampResponse();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MirroredClientMachTimestampResponse(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MirroredClientMachTimestampResponse(uint64_t result, int a2, int a3)
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

uint64_t Apple_Workout_Core_LocationPositionPublisher.init()@<X0>(char *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = v2;
  v3 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher();
  v4 = &a1[*(v3 + 24)];
  UnknownStorage.init()();
  v5 = *(v3 + 28);
  v6 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a1[v5], 1, 1, v6);
}

uint64_t type metadata accessor for Apple_Workout_Core_LocationPositionPublisher()
{
  result = type metadata singleton initialization cache for Apple_Workout_Core_LocationPositionPublisher;
  if (!type metadata singleton initialization cache for Apple_Workout_Core_LocationPositionPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_LocationPositionPublisher.routePosition.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_LocationPositionPublisher() + 28);
  _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_2(v1 + v3, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  outlined init with take of Apple_Workout_Core_RacePosition(a1, v1 + v3);
  v4 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t outlined init with take of Apple_Workout_Core_RacePosition(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL Apple_Workout_Core_LocationPositionPublisher.hasRoutePosition.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher();
  outlined init with copy of Apple_Workout_Core_RacePosition?(v0 + *(v5 + 28), v4);
  v6 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_2(v4, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  return v7;
}

uint64_t Apple_Workout_Core_LocationPositionPublisher.routePosition.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher();
  outlined init with copy of Apple_Workout_Core_RacePosition?(v1 + *(v7 + 28), v6);
  v8 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_RacePosition(v6, a1);
  }

  v10 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  v11 = a1 + *(v8 + 20);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_2(v6, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  }

  return result;
}

uint64_t Apple_Workout_Core_LocationPositionPublisher.locations.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Apple_Workout_Core_LocationPositionPublisher.routePoints.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t key path getter for Apple_Workout_Core_LocationPositionPublisher.routePosition : Apple_Workout_Core_LocationPositionPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher();
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1 + *(v8 + 28), v7);
  v9 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_RacePosition(v7, a2);
  }

  v11 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  v12 = a2 + *(v9 + 20);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_2(v7, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_LocationPositionPublisher.routePosition : Apple_Workout_Core_LocationPositionPublisher(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_RacePosition(a1, v8);
  v9 = *(type metadata accessor for Apple_Workout_Core_LocationPositionPublisher() + 28);
  _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_2(a2 + v9, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  outlined init with take of Apple_Workout_Core_RacePosition(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Apple_Workout_Core_LocationPositionPublisher.routePosition.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_LocationPositionPublisher() + 28);
  *(v5 + 12) = v15;
  outlined init with copy of Apple_Workout_Core_RacePosition?(v1 + v15, v8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    v18 = v14 + *(v9 + 20);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_2(v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_RacePosition(v8, v14);
  }

  return Apple_Workout_Core_LocationPositionPublisher.routePosition.modify;
}

void Apple_Workout_Core_LocationPositionPublisher.routePosition.modify(uint64_t **a1, char a2)
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
    outlined init with copy of Apple_Workout_Core_RacePosition((*a1)[5], v4);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_2(v9 + v3, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
    outlined init with take of Apple_Workout_Core_RacePosition(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of Apple_Workout_Core_RacePosition(v5);
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_2(v9 + v3, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
    outlined init with take of Apple_Workout_Core_RacePosition(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t outlined init with copy of Apple_Workout_Core_RacePosition(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_RacePosition(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall Apple_Workout_Core_LocationPositionPublisher.clearRoutePosition()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_LocationPositionPublisher() + 28);
  _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_2(v0 + v1, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Workout_Core_LocationPositionPublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_LocationPositionPublisher() + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_LocationPositionPublisher.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_LocationPositionPublisher() + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static Apple_Workout_Core_LocationPositionPublisher._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_LocationPositionPublisher._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Workout_Core_LocationPositionPublisher.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          closure #3 in Apple_Workout_Core_LocationPositionPublisher.decodeMessage<A>(decoder:)();
          break;
        case 2:
          dispatch thunk of Decoder.decodeRepeatedBytesField(value:)();
          break;
        case 1:
          type metadata accessor for Apple_Workout_Core_CLLocation();
          lazy protocol witness table accessor for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation(&lazy protocol witness table cache variable for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation, type metadata accessor for Apple_Workout_Core_CLLocation);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #3 in Apple_Workout_Core_LocationPositionPublisher.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_Core_LocationPositionPublisher() + 28);
  type metadata accessor for Apple_Workout_Core_RacePosition(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePosition and conformance Apple_Workout_Core_RacePosition, type metadata accessor for Apple_Workout_Core_RacePosition);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_Core_LocationPositionPublisher.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Workout_Core_CLLocation(), lazy protocol witness table accessor for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation(&lazy protocol witness table cache variable for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation, type metadata accessor for Apple_Workout_Core_CLLocation), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    if (!*(v0[1] + 16) || (result = dispatch thunk of Visitor.visitRepeatedBytesField(value:fieldNumber:)(), !v1))
    {
      result = closure #1 in Apple_Workout_Core_LocationPositionPublisher.traverse<A>(visitor:)(v0);
      if (!v1)
      {
        v3 = v0 + *(type metadata accessor for Apple_Workout_Core_LocationPositionPublisher() + 24);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_LocationPositionPublisher.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher();
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1 + *(v11 + 28), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_2(v5, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  }

  outlined init with take of Apple_Workout_Core_RacePosition(v5, v10);
  lazy protocol witness table accessor for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePosition and conformance Apple_Workout_Core_RacePosition, type metadata accessor for Apple_Workout_Core_RacePosition);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_RacePosition(v10);
}

Swift::Int Apple_Workout_Core_LocationPositionPublisher.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Workout_Core_LocationPositionPublisher();
  lazy protocol witness table accessor for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation(&lazy protocol witness table cache variable for type Apple_Workout_Core_LocationPositionPublisher and conformance Apple_Workout_Core_LocationPositionPublisher, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_LocationPositionPublisher@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = v4;
  v5 = &a2[*(a1 + 24)];
  UnknownStorage.init()();
  v6 = *(a1 + 28);
  v7 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_LocationPositionPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_LocationPositionPublisher(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_LocationPositionPublisher(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_LocationPositionPublisher;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_LocationPositionPublisher(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation(&lazy protocol witness table cache variable for type Apple_Workout_Core_LocationPositionPublisher and conformance Apple_Workout_Core_LocationPositionPublisher, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_LocationPositionPublisher@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_LocationPositionPublisher._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_LocationPositionPublisher(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation(&lazy protocol witness table cache variable for type Apple_Workout_Core_LocationPositionPublisher and conformance Apple_Workout_Core_LocationPositionPublisher, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_LocationPositionPublisher()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_LocationPositionPublisher()
{
  lazy protocol witness table accessor for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation(&lazy protocol witness table cache variable for type Apple_Workout_Core_LocationPositionPublisher and conformance Apple_Workout_Core_LocationPositionPublisher, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_LocationPositionPublisher()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_LocationPositionPublisher.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C11_CLLocationV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(a1[1], a2[1]) & 1) == 0)
  {
    goto LABEL_9;
  }

  v17 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher();
  v18 = *(v17 + 28);
  v19 = *(v13 + 48);
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1 + v18, v16);
  outlined init with copy of Apple_Workout_Core_RacePosition?(a2 + v18, &v16[v19]);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) == 1)
  {
    if (v20(&v16[v19], 1, v4) == 1)
    {
      _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_2(v16, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
LABEL_12:
      v24 = *(v17 + 24);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v21 & 1;
    }

    goto LABEL_8;
  }

  outlined init with copy of Apple_Workout_Core_RacePosition?(v16, v12);
  if (v20(&v16[v19], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_Core_RacePosition(v12);
LABEL_8:
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_2(v16, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSg_ADtMR);
    goto LABEL_9;
  }

  outlined init with take of Apple_Workout_Core_RacePosition(&v16[v19], v8);
  v23 = static Apple_Workout_Core_RacePosition.== infix(_:_:)(v12, v8);
  outlined destroy of Apple_Workout_Core_RacePosition(v8);
  outlined destroy of Apple_Workout_Core_RacePosition(v12);
  _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_2(v16, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  if (v23)
  {
    goto LABEL_12;
  }

LABEL_9:
  v21 = 0;
  return v21 & 1;
}

void type metadata completion function for Apple_Workout_Core_LocationPositionPublisher()
{
  type metadata accessor for [Apple_Workout_Core_CLLocation](319, &lazy cache variable for type metadata for [Apple_Workout_Core_CLLocation], type metadata accessor for Apple_Workout_Core_CLLocation, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [Data]();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v2 <= 0x3F)
      {
        type metadata accessor for [Apple_Workout_Core_CLLocation](319, &lazy cache variable for type metadata for Apple_Workout_Core_RacePosition?, type metadata accessor for Apple_Workout_Core_RacePosition, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for [Data]()
{
  if (!lazy cache variable for type metadata for [Data])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [Data]);
    }
  }
}

void type metadata accessor for [Apple_Workout_Core_CLLocation](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_2(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MirroredStartFilePathURL.filePath.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MirroredStartFilePathURL.url.getter@<X0>(uint64_t a1@<X8>)
{
  return MirroredStartFilePathURL.url.getter(a1);
}

{
  v3 = *v1;
  v4 = v1[1];
  v5 = [objc_allocWithZone(MEMORY[0x277CCACE0]) init];
  [v5 setScheme_];
  v6 = MEMORY[0x20F2E6C00](0x6465726F7272696DLL, 0xED00007472617453);
  [v5 setHost_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMR);
  v7 = *(type metadata accessor for URLQueryItem() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_20B423A90;
  URLQueryItem.init(name:value:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 setQueryItems_];

  v11 = [v5 URL];
  if (v11)
  {
    v12 = v11;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = 0;
    v5 = v12;
  }

  else
  {
    v13 = 1;
  }

  v14 = type metadata accessor for URL();
  v15 = *(*(v14 - 8) + 56);

  return v15(a1, v13, 1, v14);
}

void MirroredStartFilePathURL.init(from:)(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for URLQueryItem();
  v57 = *(v4 - 8);
  v5 = *(v57 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v56 = &v51 - v9;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10);
  v15 = objc_allocWithZone(MEMORY[0x277CCACE0]);
  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  v19 = [v15 initWithURL:v17 resolvingAgainstBaseURL:0];

  v20 = *(v11 + 8);
  v20(v14, v10);
  if (!v19)
  {
    v31 = a1;
LABEL_14:
    v20(v31, v10);
LABEL_15:
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  v58 = a1;
  v21 = [v19 scheme];
  if (!v21)
  {
    v32 = *MEMORY[0x277D09620];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_12;
  }

  v22 = v21;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = *MEMORY[0x277D09620];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v25)
  {
LABEL_12:

    goto LABEL_13;
  }

  if (v23 != v27 || v25 != v28)
  {
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v30)
    {
      goto LABEL_18;
    }

LABEL_13:

    v31 = v58;
    goto LABEL_14;
  }

LABEL_18:
  v33 = [v19 host];
  if (!v33)
  {
    goto LABEL_13;
  }

  v34 = v33;
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  if (v35 == 0x6465726F7272696DLL && v37 == 0xED00007472617453)
  {

    goto LABEL_23;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v38 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_23:
  v39 = [v19 queryItems];
  if (!v39)
  {
    v20(v58, v10);

    goto LABEL_15;
  }

  v52 = a2;
  v40 = v39;
  v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v42 = v58;
  v53 = *(v41 + 16);
  if (!v53)
  {
LABEL_31:
    v20(v42, v10);

    a2 = v52;
    goto LABEL_15;
  }

  v43 = 0;
  v54 = v57 + 16;
  v55 = (v57 + 8);
  while (1)
  {
    if (v43 >= *(v41 + 16))
    {
      __break(1u);
      return;
    }

    (*(v57 + 16))(v8, v41 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v43, v4);
    if (URLQueryItem.name.getter() == 0x68746150656C6966 && v44 == 0xE800000000000000)
    {

      goto LABEL_35;
    }

    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v45)
    {
      break;
    }

    ++v43;
    (*v55)(v8, v4);
    v42 = v58;
    if (v53 == v43)
    {
      goto LABEL_31;
    }
  }

  v42 = v58;
LABEL_35:

  v46 = v56;
  v47 = v57 + 32;
  (*(v57 + 32))(v56, v8, v4);
  v48 = URLQueryItem.value.getter();
  v50 = v49;

  v20(v42, v10);
  (*(v47 - 24))(v46, v4);
  a2 = v52;
  if (!v50)
  {
    goto LABEL_15;
  }

  *v52 = v48;
  a2[1] = v50;
}

void MirroredStartBase64EncodedURL.init(from:)(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for URLQueryItem();
  v57 = *(v4 - 8);
  v5 = *(v57 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v56 = &v51 - v9;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10);
  v15 = objc_allocWithZone(MEMORY[0x277CCACE0]);
  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  v19 = [v15 initWithURL:v17 resolvingAgainstBaseURL:0];

  v20 = *(v11 + 8);
  v20(v14, v10);
  if (!v19)
  {
    v31 = a1;
LABEL_14:
    v20(v31, v10);
LABEL_15:
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  v58 = a1;
  v21 = [v19 scheme];
  if (!v21)
  {
    v32 = *MEMORY[0x277D09620];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_12;
  }

  v22 = v21;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = *MEMORY[0x277D09620];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v25)
  {
LABEL_12:

    goto LABEL_13;
  }

  if (v23 != v27 || v25 != v28)
  {
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v30)
    {
      goto LABEL_18;
    }

LABEL_13:

    v31 = v58;
    goto LABEL_14;
  }

LABEL_18:
  v33 = [v19 host];
  if (!v33)
  {
    goto LABEL_13;
  }

  v34 = v33;
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  if (v35 == 0x6465726F7272696DLL && v37 == 0xED00007472617453)
  {

    goto LABEL_23;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v38 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_23:
  v39 = [v19 queryItems];
  if (!v39)
  {
    v20(v58, v10);

    goto LABEL_15;
  }

  v52 = a2;
  v40 = v39;
  v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v42 = v58;
  v53 = *(v41 + 16);
  if (!v53)
  {
LABEL_31:
    v20(v42, v10);

    a2 = v52;
    goto LABEL_15;
  }

  v43 = 0;
  v54 = v57 + 16;
  v55 = (v57 + 8);
  while (1)
  {
    if (v43 >= *(v41 + 16))
    {
      __break(1u);
      return;
    }

    (*(v57 + 16))(v8, v41 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v43, v4);
    if (URLQueryItem.name.getter() == 0x6E45343665736162 && v44 == 0xED00006465646F63)
    {

      goto LABEL_35;
    }

    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v45)
    {
      break;
    }

    ++v43;
    (*v55)(v8, v4);
    v42 = v58;
    if (v53 == v43)
    {
      goto LABEL_31;
    }
  }

  v42 = v58;
LABEL_35:

  v46 = v56;
  v47 = v57 + 32;
  (*(v57 + 32))(v56, v8, v4);
  v48 = URLQueryItem.value.getter();
  v50 = v49;

  v20(v42, v10);
  (*(v47 - 24))(v46, v4);
  a2 = v52;
  if (!v50)
  {
    goto LABEL_15;
  }

  *v52 = v48;
  a2[1] = v50;
}

uint64_t URL.mirroredStartFilePathURL.getter(uint64_t (*a1)(char *))
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v1);
  return a1(v6);
}

uint64_t getEnumTagSinglePayload for MirroredStartFilePathURL(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MirroredStartFilePathURL(uint64_t result, int a2, int a3)
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

uint64_t FIUIWorkoutActivityType.isPedestrianCalorimetryOptimized.getter()
{
  v1 = [v0 effectiveTypeIdentifier];
  result = 1;
  if (v1 > 0x29)
  {
    return v1 == 75;
  }

  if (((1 << v1) & 0x100820000ALL) != 0)
  {
    return result;
  }

  if (((1 << v1) & 0x20002000000) != 0)
  {
    return [v0 isIndoor] ^ 1;
  }

  else
  {
    return v1 == 75;
  }
}

uint64_t FIUIWorkoutActivityType.hasMotionCalorimetryFloor.getter()
{
  v1 = [v0 effectiveTypeIdentifier];
  result = 1;
  if (v1 > 60)
  {
    if (v1 != 61 && v1 != 67)
    {
      return 0;
    }
  }

  else if (v1 != 31)
  {
    if (v1 == 39)
    {
      return [v0 isIndoor] ^ 1;
    }

    return 0;
  }

  return result;
}

void MockManagedConfigurationsProvider.init()(void *a1@<X8>)
{
  v543 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMR);
  v547 = *(v543 - 1);
  v2 = *(v547 + 64);
  MEMORY[0x28223BE20](v543);
  v542 = &v509 - v3;
  v541 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v546 = *(v541 - 8);
  v4 = *(v546 + 64);
  MEMORY[0x28223BE20](v541);
  v540 = &v509 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v574 = *(v6 - 1);
  v7 = *(v574 + 64);
  MEMORY[0x28223BE20](v6);
  v571 = &v509 - v8;
  v564 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  v568 = *(v564 - 8);
  v9 = v568[8];
  MEMORY[0x28223BE20](v564);
  v563 = (&v509 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v566 = &v509 - v13;
  v14 = type metadata accessor for UUID();
  v575 = *(v14 - 8);
  v15 = v575[8];
  v16 = MEMORY[0x28223BE20](v14);
  v565 = &v509 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v572 = &v509 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v509 - v20;
  v581 = type metadata accessor for Date();
  v584 = *(v581 - 8);
  v22 = *(v584 + 64);
  MEMORY[0x28223BE20](v581);
  v24 = &v509 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = [objc_opt_self() systemBlueColor];
  v26 = [objc_opt_self() configurationWithHierarchicalColor_];

  v27 = v26;
  v28 = MEMORY[0x20F2E6C00](0x6E61636972727568, 0xE900000000000065);
  v29 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (!v29)
  {
    __break(1u);
    goto LABEL_25;
  }

  v570 = v6;
  v30 = UIImagePNGRepresentation(v29);

  if (!v30)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v522 = v27;
  v523 = a1;
  v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  outlined copy of Data._Representation(v31, v33);
  static Date.now.getter();
  UUID.init()();
  v34 = type metadata accessor for ExternalProvider();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  v37 = swift_allocObject();
  v37[2] = 0xD000000000000011;
  v37[3] = 0x800000020B468A30;
  v37[4] = 0xD00000000000001CLL;
  v37[5] = 0x800000020B468A50;
  v519 = v33;
  v520 = v31;
  v37[6] = v31;
  v37[7] = v33;
  v38 = v581;
  (*(v584 + 32))(v37 + OBJC_IVAR____TtC11WorkoutCore16ExternalProvider_syncStartDate, v24, v581);
  v39 = v575[4];
  v579 = v14;
  v538 = v39;
  v539 = v575 + 4;
  v39(v37 + OBJC_IVAR____TtC11WorkoutCore16ExternalProvider_uuid, v21, v14);
  type metadata accessor for QueriedExternalProvider();
  v40 = swift_allocObject();
  *(v40 + 16) = v37;
  v521 = v40;
  *(v40 + 24) = 0;
  v41 = (v40 + 24);
  swift_beginAccess();
  *v41 = 2;
  v42 = one-time initialization token for outdoorCycle;

  if (v42 != -1)
  {
    swift_once();
  }

  v43 = specialized static IntervalWorkoutConfiguration.canonical(activityType:activityMoveMode:)(static FIUIWorkoutActivityType.outdoorCycle, 1);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  strcpy(v611, "Sprint Session");
  HIBYTE(v611[1]) = -18;
  static Published.subscript.setter();
  v44 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  v45 = *&v43[v44];
  *&v43[v44] = v37;
  swift_retain_n();
  v46 = v43;

  static Date.now.getter();
  v47 = v566;
  Date.addingTimeInterval(_:)();
  v48 = v584;
  v49 = *(v584 + 8);
  v567 = v584 + 8;
  v561 = v49;
  v49(v24, v38);
  v50 = *(v48 + 56);
  v584 = v48 + 56;
  v580 = v50;
  v50(v47, 0, 1, v38);
  v51 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  v537 = v46;
  outlined assign with take of Date?(v47, &v46[v51]);
  swift_endAccess();
  v52 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:37 location:1 isPartOfMultiSport:0 metadata:0];
  v549 = objc_opt_self();
  v53 = [v549 minuteUnit];
  v545 = objc_opt_self();
  v54 = [v545 quantityWithUnit:v53 doubleValue:10.0];

  v55 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v54];
  v56 = v52;
  UUID.init()();
  v57 = type metadata accessor for WorkoutStep();
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  v60 = swift_allocObject();
  v552 = v24;
  v61 = v60;
  v62 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v611[0] = 0;
  v611[1] = 0;
  v554 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v63 = v563;
  Published.init(initialValue:)();
  v64 = v568[4];
  v568 += 4;
  v553 = v64;
  (v64)(v61 + v62, v63, v564);
  *(v61 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
  *(v61 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
  v65 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(v611[0]) = 0;
  v66 = v571;
  Published.init(initialValue:)();
  v67 = v21;
  v569 = *(v574 + 32);
  v574 += 32;
  v569(v61 + v65, v66, v570);
  v68 = v61;
  *(v61 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
  *(v61 + 16) = 0;
  swift_beginAccess();
  v611[4] = v55;
  v576 = type metadata accessor for NLSessionActivityGoal();
  v69 = v55;
  Published.init(initialValue:)();
  swift_endAccess();
  *(v68 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v56;
  v70 = v575;
  v582 = v575[2];
  v577 = v575 + 2;
  v71 = v579;
  v582(v68 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid, v67, v579);
  swift_getKeyPath();
  swift_getKeyPath();
  v562 = v37;
  v611[0] = 0;
  v611[1] = 0;

  static Published.subscript.setter();

  v573 = v70[1];
  v583 = v70 + 1;
  v573(v67, v71);
  v560 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v72 = swift_allocObject();
  v551 = xmmword_20B425990;
  *(v72 + 16) = xmmword_20B425990;
  v550 = type metadata accessor for TargetZone();
  v73 = swift_allocObject();
  *(v73 + 16) = 2;
  *(v73 + 24) = xmmword_20B4474E0;
  *(v73 + 40) = (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0;
  *(v72 + 32) = v73;
  v74 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v75 = *(v68 + v74);
  *(v68 + v74) = v72;
  v536 = v68;

  swift_getKeyPath();
  swift_getKeyPath();
  v76 = static Published.subscript.modify();
  *v77 = !*v77;
  v76(v611, 0);

  v78 = [v549 mileUnit];
  v79 = v545;
  v80 = [v545 quantityWithUnit:v78 doubleValue:1.0];

  v81 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v80];
  v82 = v56;
  v559 = v82;
  UUID.init()();
  v83 = *(v57 + 48);
  v84 = *(v57 + 52);
  v85 = swift_allocObject();
  v86 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v611[0] = 0;
  v611[1] = 0;
  v87 = v563;
  Published.init(initialValue:)();
  (v553)(v85 + v86, v87, v564);
  *(v85 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
  *(v85 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
  v88 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(v611[0]) = 0;
  v89 = v571;
  Published.init(initialValue:)();
  v569(v85 + v88, v89, v570);
  *(v85 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
  *(v85 + 16) = 0;
  swift_beginAccess();
  v610 = v81;
  v90 = v81;
  Published.init(initialValue:)();
  swift_endAccess();
  *(v85 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v82;
  v91 = v579;
  v582(v85 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid, v67, v579);
  swift_getKeyPath();
  swift_getKeyPath();
  v611[0] = 0;
  v611[1] = 0;

  static Published.subscript.setter();

  v92 = v573;
  v573(v67, v91);
  v93 = swift_allocObject();
  *(v93 + 16) = v551;
  v94 = swift_allocObject();
  *(v94 + 16) = 3;
  *(v94 + 24) = xmmword_20B4474F0;
  *(v94 + 40) = (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0;
  *(v93 + 32) = v94;
  v95 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v96 = *(v85 + v95);
  *(v85 + v95) = v93;

  swift_getKeyPath();
  swift_getKeyPath();
  v97 = static Published.subscript.modify();
  *v98 = !*v98;
  v97(v611, 0);

  v99 = [v549 minuteUnit];
  v100 = [v79 quantityWithUnit:v99 doubleValue:10.0];

  v101 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v100];
  v102 = v559;
  v559 = v102;
  UUID.init()();
  v544 = v57;
  v103 = *(v57 + 48);
  v104 = *(v57 + 52);
  v105 = swift_allocObject();
  v106 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v611[0] = 0;
  v611[1] = 0;
  v107 = v563;
  Published.init(initialValue:)();
  (v553)(v105 + v106, v107, v564);
  *(v105 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
  *(v105 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
  v108 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(v611[0]) = 0;
  v109 = v571;
  Published.init(initialValue:)();
  v569(v105 + v108, v109, v570);
  *(v105 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
  *(v105 + 16) = 0;
  swift_beginAccess();
  v609 = v101;
  v110 = v101;
  Published.init(initialValue:)();
  swift_endAccess();
  *(v105 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v102;
  v111 = v67;
  v112 = v67;
  v113 = v579;
  v582(v105 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid, v112, v579);
  swift_getKeyPath();
  swift_getKeyPath();
  v611[0] = 0;
  v611[1] = 0;

  static Published.subscript.setter();

  v92(v111, v113);
  v114 = swift_allocObject();
  *(v114 + 16) = v551;
  v115 = swift_allocObject();
  *(v115 + 16) = 5;
  *(v115 + 24) = xmmword_20B447500;
  v531 = "dence";
  *(v115 + 40) = (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0;
  *(v114 + 32) = v115;
  v116 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v117 = *(v105 + v116);
  *(v105 + v116) = v114;

  swift_getKeyPath();
  swift_getKeyPath();
  v118 = static Published.subscript.modify();
  *v119 = !*v119;
  v118(v611, 0);

  v120 = [v549 minuteUnit];
  v121 = [v545 quantityWithUnit:v120 doubleValue:5.0];

  v122 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v121];
  v123 = v559;
  v559 = v123;
  v124 = v111;
  UUID.init()();
  v125 = v544[12];
  v126 = *(v544 + 26);
  v127 = swift_allocObject();
  v128 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v611[0] = 0;
  v611[1] = 0;
  v129 = v563;
  Published.init(initialValue:)();
  (v553)(v127 + v128, v129, v564);
  *(v127 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
  *(v127 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
  v130 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(v611[0]) = 0;
  v131 = v571;
  Published.init(initialValue:)();
  v569(v127 + v130, v131, v570);
  *(v127 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
  *(v127 + 16) = 1;
  swift_beginAccess();
  v608 = v122;
  v132 = v122;
  Published.init(initialValue:)();
  swift_endAccess();
  *(v127 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v123;
  v133 = v579;
  v582(v127 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid, v124, v579);
  swift_getKeyPath();
  swift_getKeyPath();
  v611[0] = 0;
  v611[1] = 0;

  static Published.subscript.setter();

  v573(v124, v133);
  LOBYTE(v611[0]) = 1;
  v134 = objc_allocWithZone(type metadata accessor for HeartRateTargetZone());
  v135 = HeartRateTargetZone.init(type:customRange:defaultZoneIndex:defaultZones:)(v611, 0x4054000000000000, 0x4059000000000000, 0, 0, 1, 0);
  v136 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
  swift_beginAccess();
  v137 = *(v127 + v136);
  *(v127 + v136) = v135;
  v138 = v135;

  swift_getKeyPath();
  swift_getKeyPath();
  v139 = static Published.subscript.modify();
  *v140 = !*v140;
  v139(v611, 0);

  UUID.init()();
  v141 = type metadata accessor for WorkoutBlock();
  v142 = *(v141 + 48);
  v143 = *(v141 + 52);
  v530 = v141;
  v144 = swift_allocObject();
  v145 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__repetitions;
  v611[0] = 1;
  v146 = v540;
  Published.init(initialValue:)();
  v147 = *(v546 + 32);
  v546 += 32;
  v529 = v147;
  v147((v144 + v145), v146, v541);
  v148 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__steps;
  v611[0] = MEMORY[0x277D84F90];
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
  v150 = v542;
  v528 = v149;
  Published.init(initialValue:)();
  v151 = *(v547 + 32);
  v547 += 32;
  v527 = v151;
  v151((v144 + v148), v150, v543);
  v538(v144 + OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock_uuid, v124, v579);
  v152 = swift_allocObject();
  *(v152 + 16) = xmmword_20B447510;
  *(v152 + 32) = v536;
  *(v152 + 40) = v85;
  *(v152 + 48) = v105;
  *(v152 + 56) = v127;
  swift_getKeyPath();
  swift_getKeyPath();
  v611[0] = v152;

  v518 = v85;

  v517 = v105;

  v516 = v127;

  v535 = v144;

  static Published.subscript.setter();
  WorkoutBlock.repetitions.setter(4);
  v524 = v559;
  v153 = v124;
  UUID.init()();
  v154 = type metadata accessor for IntervalWorkout();
  v155 = objc_allocWithZone(v154);
  v156 = specialized IntervalWorkout.init(_:uuid:warmupStep:cooldownStep:)(0, 0xE000000000000000, v124, 0, 0);
  v578 = v124;
  UUID.init()();
  v555 = specialized Occurrence.__allocating_init(count:)(0);
  v157 = v572;
  v158 = v579;
  v159 = v582;
  v582(v572, v153, v579);
  v525 = type metadata accessor for IntervalWorkoutConfiguration();
  v160 = objc_allocWithZone(v525);
  v161 = OBJC_IVAR____TtC11WorkoutCore28IntervalWorkoutConfiguration__forceUpdatePublisher;
  LOBYTE(v611[0]) = 0;
  v162 = v571;
  Published.init(initialValue:)();
  v569(&v160[v161], v162, v570);
  swift_beginAccess();
  v607 = v156;
  v548 = v156;
  v526 = v154;
  Published.init(initialValue:)();
  swift_endAccess();
  v163 = v565;
  v164 = v158;
  v159(v565, v157, v158);
  v165 = v159;
  *&v160[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v166 = v581;
  v167 = v580;
  v580(&v160[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v581);
  v167(&v160[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v166);
  v168 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v169 = type metadata accessor for WorkoutPlan.Route();
  v170 = *(v169 - 1);
  v558 = *(v170 + 56);
  v559 = v169;
  v557 = v170 + 56;
  v558(&v160[v168], 1, 1);
  v171 = v575[7];
  v575 += 7;
  v556 = v171;
  v171(&v160[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v164);
  v172 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v160[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v165(&v160[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v163, v164);
  *&v160[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v524;
  v160[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 1;
  *&v160[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v555;
  swift_beginAccess();
  *&v160[v172] = 0;
  v160[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v173 = type metadata accessor for WorkoutConfiguration();
  v606.receiver = v160;
  v555 = v173;
  v606.super_class = v173;
  v174 = objc_msgSendSuper2(&v606, sel_init);

  v175 = v573;
  v573(v163, v164);
  v175(v157, v164);
  v175(v578, v164);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  strcpy(v611, "Alerts!");
  v611[1] = 0xE700000000000000;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v176 = v611[0];
  swift_getKeyPath();
  swift_getKeyPath();

  v177 = static Published.subscript.modify();
  v179 = v178;
  MEMORY[0x20F2E6F30]();
  if (*((*v179 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v179 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v548 = *((*v179 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v177(v611, 0);

  v180 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  v181 = *&v174[v180];
  *&v174[v180] = v562;

  v182 = v174;

  v183 = v552;
  static Date.now.getter();
  v184 = v566;
  Date.addingTimeInterval(_:)();
  v185 = v581;
  v561(v183, v581);
  v580(v184, 0, 1, v185);
  v186 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  v534 = v182;
  outlined assign with take of Date?(v184, &v182[v186]);
  swift_endAccess();
  v533 = [objc_opt_self() activityTypeWithHKWorkoutActivityTypeIdentifier:60 isIndoor:0 metadata:0];
  v187 = [v549 minuteUnit];
  v188 = [v545 quantityWithUnit:v187 doubleValue:60.0];

  v189 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v188];
  v190 = v578;
  UUID.init()();
  v532 = specialized Occurrence.__allocating_init(count:)(0);
  v191 = v572;
  v192 = v579;
  v193 = v582;
  v582(v572, v190, v579);
  v194 = v193;
  v548 = type metadata accessor for GoalWorkoutConfiguration();
  v195 = objc_allocWithZone(v548);
  swift_beginAccess();
  v605 = v189;
  v515 = v189;
  Published.init(initialValue:)();
  swift_endAccess();
  v196 = v565;
  v194(v565, v191, v192);
  *&v195[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v197 = v581;
  v198 = v580;
  v580(&v195[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v581);
  v198(&v195[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v197);
  (v558)(&v195[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v559);
  v556(&v195[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v192);
  v199 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v195[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v194(&v195[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v196, v192);
  v200 = v532;
  *&v195[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v533;
  v195[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v195[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v200;
  swift_beginAccess();
  *&v195[v199] = 0;
  v195[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v604.receiver = v195;
  v604.super_class = v555;
  v201 = objc_msgSendSuper2(&v604, sel_init);

  v202 = v573;
  v573(v196, v192);
  v203 = v572;
  v202(v572, v192);
  v204 = v578;
  v202(v578, v192);
  v205 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  v206 = *&v201[v205];
  *&v201[v205] = v562;

  v207 = v201;

  static Date.now.getter();
  v208 = v566;
  Date.addingTimeInterval(_:)();
  v209 = v581;
  v561(v183, v581);
  v580(v208, 0, 1, v209);
  v210 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  v532 = v207;
  outlined assign with take of Date?(v208, &v207[v210]);
  swift_endAccess();
  v524 = v524;
  UUID.init()();
  v211 = objc_allocWithZone(v526);
  v212 = specialized IntervalWorkout.init(_:uuid:warmupStep:cooldownStep:)(0, 0xE000000000000000, v204, 0, 0);
  UUID.init()();
  v515 = specialized Occurrence.__allocating_init(count:)(0);
  v213 = v203;
  v214 = v192;
  v215 = v582;
  v582(v203, v204, v214);
  v216 = objc_allocWithZone(v525);
  v217 = OBJC_IVAR____TtC11WorkoutCore28IntervalWorkoutConfiguration__forceUpdatePublisher;
  LOBYTE(v611[0]) = 0;
  v218 = v571;
  Published.init(initialValue:)();
  v569(&v216[v217], v218, v570);
  swift_beginAccess();
  v603 = v212;
  v514 = v212;
  Published.init(initialValue:)();
  swift_endAccess();
  v219 = v565;
  v220 = v579;
  v221 = v215;
  v215(v565, v213, v579);
  *&v216[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v222 = v580;
  v580(&v216[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v209);
  v222(&v216[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v209);
  (v558)(&v216[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v559);
  v556(&v216[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v220);
  v223 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v216[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v224 = v220;
  v221(&v216[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v219, v220);
  v225 = v524;
  *&v216[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v524;
  v216[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 1;
  *&v216[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v515;
  swift_beginAccess();
  *&v216[v223] = 0;
  v216[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v602.receiver = v216;
  v602.super_class = v555;
  v226 = objc_msgSendSuper2(&v602, sel_init);

  v227 = v573;
  v573(v219, v220);
  v227(v572, v220);
  v228 = v578;
  v227(v578, v220);
  swift_getKeyPath();
  swift_getKeyPath();
  v512 = v226;
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  strcpy(v611, "Power Alerts");
  BYTE5(v611[1]) = 0;
  HIWORD(v611[1]) = -5120;
  static Published.subscript.setter();
  UUID.init()();
  v229 = *(v530 + 48);
  v230 = *(v530 + 52);
  v231 = swift_allocObject();
  v232 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__repetitions;
  v611[0] = 1;
  v233 = v540;
  Published.init(initialValue:)();
  v529(&v231[v232], v233, v541);
  v234 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__steps;
  v611[0] = MEMORY[0x277D84F90];
  v235 = v542;
  Published.init(initialValue:)();
  v527(&v231[v234], v235, v543);
  v538(&v231[OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock_uuid], v228, v220);
  WorkoutBlock.repetitions.setter(5);
  v236 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
  v237 = v225;
  UUID.init()();
  v238 = v544[12];
  v239 = *(v544 + 26);
  v240 = swift_allocObject();
  v241 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v611[0] = 0;
  v611[1] = 0;
  v242 = v563;
  Published.init(initialValue:)();
  (v553)(&v240[v241], v242, v564);
  *&v240[OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones] = MEMORY[0x277D84F90];
  *&v240[OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone] = 0;
  v243 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(v611[0]) = 0;
  v244 = v571;
  Published.init(initialValue:)();
  v245 = v570;
  v569(&v240[v243], v244, v570);
  *&v240[OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone] = 0;
  v240[16] = 0;
  swift_beginAccess();
  v601 = v236;
  v246 = v236;
  Published.init(initialValue:)();
  swift_endAccess();
  v524 = v237;
  *&v240[OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType] = v237;
  v582(&v240[OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid], v228, v224);
  swift_getKeyPath();
  swift_getKeyPath();
  v611[0] = 0;
  v611[1] = 0;

  static Published.subscript.setter();

  v573(v228, v224);
  v247 = swift_allocObject();
  *(v247 + 16) = v551;
  v248 = swift_allocObject();
  *(v248 + 16) = 5;
  *(v248 + 24) = xmmword_20B447520;
  *(v248 + 40) = (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0;
  *(v247 + 32) = v248;
  v249 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v250 = *&v240[v249];
  *&v240[v249] = v247;

  swift_getKeyPath();
  swift_getKeyPath();
  v251 = static Published.subscript.modify();
  *v252 = !*v252;
  v251(v611, 0);

  swift_getKeyPath();
  swift_getKeyPath();

  v253 = static Published.subscript.modify();
  v255 = v254;
  MEMORY[0x20F2E6F30]();
  v256 = v245;
  if (*((*v255 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v255 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v515 = *((*v255 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v515 = v240;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v253(v611, 0);

  v257 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
  v258 = v524;
  v259 = v578;
  UUID.init()();
  v260 = v544[12];
  v261 = *(v544 + 26);
  v262 = swift_allocObject();
  v263 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v611[0] = 0;
  v611[1] = 0;
  v264 = v563;
  Published.init(initialValue:)();
  (v553)(v262 + v263, v264, v564);
  *(v262 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
  *(v262 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
  v265 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(v611[0]) = 0;
  v266 = v571;
  Published.init(initialValue:)();
  v569(v262 + v265, v266, v256);
  *(v262 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
  *(v262 + 16) = 0;
  swift_beginAccess();
  v600 = v257;
  v267 = v257;
  Published.init(initialValue:)();
  swift_endAccess();
  v514 = v258;
  *(v262 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v258;
  v268 = v579;
  v582(v262 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid, v259, v579);
  swift_getKeyPath();
  swift_getKeyPath();
  v611[0] = 0;
  v611[1] = 0;

  static Published.subscript.setter();

  v573(v259, v268);
  v269 = swift_allocObject();
  *(v269 + 16) = v551;
  v270 = swift_allocObject();
  *(v270 + 16) = 6;
  *(v270 + 24) = xmmword_20B447530;
  *(v270 + 40) = (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0;
  *(v269 + 32) = v270;
  v271 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v272 = *(v262 + v271);
  *(v262 + v271) = v269;

  swift_getKeyPath();
  swift_getKeyPath();
  v273 = static Published.subscript.modify();
  *v274 = !*v274;
  v273(v611, 0);

  swift_getKeyPath();
  swift_getKeyPath();

  v275 = static Published.subscript.modify();
  v277 = v276;
  MEMORY[0x20F2E6F30]();
  if (*((*v277 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v277 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v507 = *((*v277 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v513 = v262;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v275(v611, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v278 = v512;
  static Published.subscript.getter();

  v279 = v611[0];
  swift_getKeyPath();
  swift_getKeyPath();

  v280 = static Published.subscript.modify();
  v282 = v281;
  MEMORY[0x20F2E6F30]();
  if (*((*v282 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v282 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v524 = *((*v282 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v524 = v231;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v280(v611, 0);

  v283 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  v284 = *&v278[v283];
  *&v278[v283] = v562;

  v285 = v278;

  v286 = v552;
  static Date.now.getter();
  v287 = v566;
  Date.addingTimeInterval(_:)();
  v288 = v581;
  v561(v286, v581);
  v580(v287, 0, 1, v288);
  v289 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  v512 = v285;
  outlined assign with take of Date?(v287, &v285[v289]);
  swift_endAccess();
  v511 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:13 location:1 isPartOfMultiSport:0 metadata:0];
  v290 = v578;
  UUID.init()();
  v291 = objc_allocWithZone(v526);
  v292 = specialized IntervalWorkout.init(_:uuid:warmupStep:cooldownStep:)(0, 0xE000000000000000, v290, 0, 0);
  UUID.init()();
  v510 = specialized Occurrence.__allocating_init(count:)(0);
  v293 = v572;
  v294 = v579;
  v582(v572, v290, v579);
  v295 = objc_allocWithZone(v525);
  v296 = OBJC_IVAR____TtC11WorkoutCore28IntervalWorkoutConfiguration__forceUpdatePublisher;
  LOBYTE(v611[0]) = 0;
  v297 = v571;
  Published.init(initialValue:)();
  v569(&v295[v296], v297, v570);
  swift_beginAccess();
  v599 = v292;
  v525 = v292;
  Published.init(initialValue:)();
  swift_endAccess();
  v298 = v565;
  v299 = v293;
  v300 = v582;
  v582(v565, v293, v294);
  *&v295[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v301 = v580;
  v580(&v295[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v288);
  v301(&v295[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v288);
  v302 = v298;
  (v558)(&v295[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v559);
  v556(&v295[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v294);
  v303 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v295[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v300(&v295[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v302, v294);
  v304 = v511;
  *&v295[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v511;
  v295[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 1;
  *&v295[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v510;
  swift_beginAccess();
  *&v295[v303] = 0;
  v295[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v598.receiver = v295;
  v598.super_class = v555;
  v305 = objc_msgSendSuper2(&v598, sel_init);

  v306 = v573;
  v573(v302, v294);
  v306(v299, v294);
  v307 = v578;
  v306(v578, v294);
  swift_getKeyPath();
  swift_getKeyPath();
  v526 = v305;
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  strcpy(v611, "Power Alerts");
  BYTE5(v611[1]) = 0;
  HIWORD(v611[1]) = -5120;
  static Published.subscript.setter();
  UUID.init()();
  v308 = *(v530 + 48);
  v309 = *(v530 + 52);
  v310 = swift_allocObject();
  v311 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__repetitions;
  v611[0] = 1;
  v312 = v540;
  Published.init(initialValue:)();
  v529((v310 + v311), v312, v541);
  v313 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__steps;
  v611[0] = MEMORY[0x277D84F90];
  v314 = v542;
  Published.init(initialValue:)();
  v527((v310 + v313), v314, v543);
  v315 = v307;
  v538(v310 + OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock_uuid, v307, v294);
  WorkoutBlock.repetitions.setter(5);
  v316 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
  v317 = v304;
  v318 = v315;
  UUID.init()();
  v319 = v544;
  v320 = v544[12];
  v321 = *(v544 + 26);
  v322 = swift_allocObject();
  v323 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v611[0] = 0;
  v611[1] = 0;
  v324 = v563;
  Published.init(initialValue:)();
  (v553)(v322 + v323, v324, v564);
  *(v322 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
  *(v322 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
  v325 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(v611[0]) = 0;
  v326 = v571;
  Published.init(initialValue:)();
  v569(v322 + v325, v326, v570);
  *(v322 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
  *(v322 + 16) = 0;
  swift_beginAccess();
  v597 = v316;
  v327 = v316;
  Published.init(initialValue:)();
  swift_endAccess();
  v543 = v317;
  *(v322 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v317;
  v328 = v579;
  v582(v322 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid, v318, v579);
  swift_getKeyPath();
  swift_getKeyPath();
  v611[0] = 0;
  v611[1] = 0;

  static Published.subscript.setter();

  v306(v318, v328);
  v329 = swift_allocObject();
  *(v329 + 16) = v551;
  v330 = swift_allocObject();
  *(v330 + 16) = 5;
  *(v330 + 24) = xmmword_20B447540;
  *(v330 + 40) = (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0;
  *(v329 + 32) = v330;
  v331 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v332 = *(v322 + v331);
  *(v322 + v331) = v329;

  swift_getKeyPath();
  swift_getKeyPath();
  v333 = static Published.subscript.modify();
  *v334 = !*v334;
  v333(v611, 0);

  swift_getKeyPath();
  swift_getKeyPath();

  v547 = v310;
  v335 = static Published.subscript.modify();
  v337 = v336;
  MEMORY[0x20F2E6F30]();
  if (*((*v337 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v337 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v546 = *((*v337 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v546 = v322;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v335(v611, 0);

  v338 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
  v339 = v543;
  v340 = v578;
  UUID.init()();
  v341 = v319[12];
  v342 = *(v319 + 26);
  v343 = swift_allocObject();
  v344 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v611[0] = 0;
  v611[1] = 0;
  v345 = v563;
  Published.init(initialValue:)();
  (v553)(v343 + v344, v345, v564);
  *(v343 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
  *(v343 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
  v346 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(v611[0]) = 0;
  v347 = v571;
  Published.init(initialValue:)();
  v569(v343 + v346, v347, v570);
  *(v343 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
  *(v343 + 16) = 0;
  swift_beginAccess();
  v596 = v338;
  v348 = v338;
  Published.init(initialValue:)();
  swift_endAccess();
  v568 = v339;
  *(v343 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v339;
  v349 = v579;
  v582(v343 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid, v340, v579);
  swift_getKeyPath();
  swift_getKeyPath();
  v611[0] = 0;
  v611[1] = 0;

  static Published.subscript.setter();

  v573(v340, v349);
  v350 = swift_allocObject();
  *(v350 + 16) = v551;
  v351 = swift_allocObject();
  *(v351 + 16) = 6;
  *(v351 + 24) = xmmword_20B447550;
  *(v351 + 40) = (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0;
  *(v350 + 32) = v351;
  v352 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v353 = *(v343 + v352);
  *(v343 + v352) = v350;

  swift_getKeyPath();
  swift_getKeyPath();
  v354 = static Published.subscript.modify();
  *v355 = !*v355;
  v354(v611, 0);

  swift_getKeyPath();
  swift_getKeyPath();

  v356 = static Published.subscript.modify();
  v358 = v357;
  MEMORY[0x20F2E6F30]();
  if (*((*v358 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v358 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v508 = *((*v358 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v564 = v343;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v356(v611, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v359 = v526;
  static Published.subscript.getter();

  v360 = v611[0];
  swift_getKeyPath();
  swift_getKeyPath();

  v361 = static Published.subscript.modify();
  v363 = v362;
  MEMORY[0x20F2E6F30]();
  if (*((*v363 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v363 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v361(v611, 0);

  v364 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  v365 = *(v359 + v364);
  v366 = v562;
  *(v359 + v364) = v562;

  v367 = v359;

  v368 = v552;
  static Date.now.getter();
  v369 = v566;
  Date.addingTimeInterval(_:)();
  v370 = v581;
  v371 = v561;
  v561(v368, v581);
  v372 = v371;
  v373 = v580;
  v580(v369, 0, 1, v370);
  v374 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  v563 = v367;
  outlined assign with take of Date?(v369, v367 + v374);
  swift_endAccess();
  v375 = specialized static GoalWorkoutConfiguration.canonical()();
  v376 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  v377 = *&v375[v376];
  *&v375[v376] = v366;

  v378 = v375;

  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  v379 = v581;
  v372(v368, v581);
  v380 = v379;
  v373(v369, 0, 1, v379);
  v381 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  v554 = v378;
  outlined assign with take of Date?(v369, &v378[v381]);
  swift_endAccess();
  v382 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:37 isIndoor:0];
  v383 = specialized static PacerWorkoutConfiguration.canonical(activityType:)(v382);

  v384 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  v385 = *&v383[v384];
  *&v383[v384] = v366;

  v386 = v383;

  static Date.now.getter();
  v387 = v369;
  Date.addingTimeInterval(_:)();
  v388 = v380;
  v389 = v380;
  v390 = v561;
  v561(v368, v389);
  v391 = v369;
  v392 = v580;
  v580(v391, 0, 1, v388);
  v393 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  v553 = v386;
  outlined assign with take of Date?(v387, &v386[v393]);
  swift_endAccess();
  v394 = specialized static MultiSportWorkoutConfiguration.canonical()();
  v395 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  v396 = *&v394[v395];
  *&v394[v395] = v366;

  v397 = v394;

  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  v398 = v581;
  v390(v368, v581);
  v392(v387, 0, 1, v398);
  v399 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  *&v551 = v397;
  outlined assign with take of Date?(v387, &v397[v399]);
  swift_endAccess();
  v400 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:37 location:1 isPartOfMultiSport:1 metadata:0];
  v570 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:13 location:1 isPartOfMultiSport:1 metadata:0];
  v569 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:46 location:1 isPartOfMultiSport:1 metadata:0];
  v574 = swift_allocObject();
  *(v574 + 16) = xmmword_20B42C8E0;
  v401 = objc_allocWithZone(MEMORY[0x277D0A838]);
  v571 = v400;
  v402 = [v401 initWithGoalTypeIdentifier:0 value:0];
  v403 = v578;
  UUID.init()();
  v550 = specialized Occurrence.__allocating_init(count:)(0);
  v404 = v572;
  v405 = v579;
  v406 = v582;
  v582(v572, v403, v579);
  v407 = objc_allocWithZone(v548);
  swift_beginAccess();
  v594 = v402;
  v544 = v402;
  Published.init(initialValue:)();
  swift_endAccess();
  v408 = v565;
  v406(v565, v404, v405);
  v409 = v406;
  *&v407[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v410 = v581;
  v411 = v580;
  v580(&v407[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v581);
  v411(&v407[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v410);
  (v558)(&v407[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v559);
  v556(&v407[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v405);
  v412 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v407[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v409(&v407[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v408, v405);
  *&v407[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v571;
  v407[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v407[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v550;
  swift_beginAccess();
  *&v407[v412] = 0;
  v407[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v595.receiver = v407;
  v595.super_class = v555;
  v413 = objc_msgSendSuper2(&v595, sel_init);

  v414 = v573;
  v573(v408, v405);
  v415 = v572;
  v414(v572, v405);
  v414(v403, v405);
  *(v574 + 32) = v413;
  v416 = objc_allocWithZone(MEMORY[0x277D0A838]);
  v570 = v570;
  v417 = [v416 initWithGoalTypeIdentifier:0 value:0];
  UUID.init()();
  v550 = specialized Occurrence.__allocating_init(count:)(0);
  v418 = v403;
  v419 = v582;
  v582(v415, v418, v405);
  v420 = objc_allocWithZone(v548);
  swift_beginAccess();
  v592 = v417;
  v544 = v417;
  Published.init(initialValue:)();
  swift_endAccess();
  v419(v408, v415, v405);
  *&v420[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v421 = v581;
  v422 = v580;
  v580(&v420[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v581);
  v422(&v420[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v421);
  (v558)(&v420[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v559);
  v556(&v420[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v405);
  v423 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v420[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v424 = v408;
  v419(&v420[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v408, v405);
  *&v420[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v570;
  v420[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v420[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v550;
  swift_beginAccess();
  *&v420[v423] = 0;
  v420[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v593.receiver = v420;
  v593.super_class = v555;
  v425 = objc_msgSendSuper2(&v593, sel_init);

  v414(v408, v405);
  v426 = v572;
  v414(v572, v405);
  v427 = v578;
  v414(v578, v405);
  *(v574 + 40) = v425;
  v428 = objc_allocWithZone(MEMORY[0x277D0A838]);
  v569 = v569;
  v429 = [v428 initWithGoalTypeIdentifier:0 value:0];
  UUID.init()();
  v550 = specialized Occurrence.__allocating_init(count:)(0);
  v419(v426, v427, v405);
  v430 = objc_allocWithZone(v548);
  swift_beginAccess();
  v589 = v429;
  v544 = v429;
  Published.init(initialValue:)();
  swift_endAccess();
  v419(v424, v426, v405);
  *&v430[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v431 = v581;
  v432 = v580;
  v580(&v430[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v581);
  v432(&v430[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v431);
  (v558)(&v430[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v559);
  v556(&v430[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v405);
  v433 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v430[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v434 = v565;
  v419(&v430[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v565, v405);
  *&v430[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v569;
  v430[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v430[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v550;
  v435 = v426;
  v436 = v434;
  v437 = v562;
  v438 = v405;
  swift_beginAccess();
  *&v430[v433] = 0;
  v430[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v591.receiver = v430;
  v591.super_class = v555;
  v439 = objc_msgSendSuper2(&v591, sel_init);

  v414(v436, v405);
  v414(v435, v405);
  v440 = v578;
  v414(v578, v438);
  v441 = v440;
  v442 = v574;
  *(v574 + 48) = v439;
  UUID.init()();
  v443 = specialized Occurrence.__allocating_init(count:)(0);
  v444 = specialized MultiSportWorkoutConfiguration.__allocating_init(_:uuid:occurrence:)(v442, v441, v443);
  swift_getKeyPath();
  swift_getKeyPath();
  v589 = 0xD000000000000017;
  v590 = 0x800000020B468A70;
  v445 = v444;
  static Published.subscript.setter();
  v446 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  v447 = *&v445[v446];
  *&v445[v446] = v437;

  v448 = v445;

  v449 = v552;
  static Date.now.getter();
  v450 = v566;
  Date.addingTimeInterval(_:)();
  v451 = v449;
  v452 = v581;
  v561(v451, v581);
  v580(v450, 0, 1, v452);
  v453 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  v574 = v448;
  outlined assign with take of Date?(v450, &v448[v453]);
  swift_endAccess();
  if (one-time initialization token for hiit != -1)
  {
    swift_once();
  }

  v550 = static FIUIWorkoutActivityType.hiit;
  v454 = [v549 minuteUnit];
  v455 = [v545 quantityWithUnit:v454 doubleValue:30.0];

  v456 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v455];
  UUID.init()();
  v545 = specialized Occurrence.__allocating_init(count:)(0);
  v457 = v572;
  v458 = v579;
  v459 = v582;
  v582(v572, v578, v579);
  v460 = objc_allocWithZone(v548);
  swift_beginAccess();
  v587 = v456;
  v549 = v456;
  Published.init(initialValue:)();
  swift_endAccess();
  v461 = v565;
  v459(v565, v457, v458);
  *&v460[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v462 = v581;
  v463 = v580;
  v580(&v460[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v581);
  v463(&v460[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v462);
  (v558)(&v460[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v559);
  v556(&v460[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v458);
  v464 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v460[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v459(&v460[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v461, v458);
  v465 = v550;
  *&v460[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v550;
  v460[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v460[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v545;
  v466 = v578;
  swift_beginAccess();
  *&v460[v464] = 0;
  v460[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v588.receiver = v460;
  v588.super_class = v555;
  v467 = v465;
  v468 = objc_msgSendSuper2(&v588, sel_init);

  v469 = v573;
  v573(v461, v458);
  v469(v457, v458);
  v469(v466, v458);
  v470 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  v471 = *&v468[v470];
  *&v468[v470] = v562;

  v472 = v468;

  v473 = v552;
  static Date.now.getter();
  v474 = v566;
  Date.addingTimeInterval(_:)();
  v561(v473, v462);
  v463(v474, 0, 1, v462);
  v475 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  v550 = v472;
  outlined assign with take of Date?(v474, &v472[v475]);
  swift_endAccess();
  if (one-time initialization token for functionalStrengthTraining != -1)
  {
    swift_once();
  }

  v549 = static FIUIWorkoutActivityType.functionalStrengthTraining;
  v476 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
  UUID.init()();
  v545 = specialized Occurrence.__allocating_init(count:)(0);
  v477 = v572;
  v478 = v466;
  v479 = v582;
  v582(v572, v478, v458);
  v480 = objc_allocWithZone(v548);
  swift_beginAccess();
  v585 = v476;
  v548 = v476;
  Published.init(initialValue:)();
  swift_endAccess();
  v481 = v565;
  v479(v565, v477, v458);
  *&v480[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v482 = v581;
  v483 = v580;
  v580(&v480[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v581);
  v483(&v480[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v482);
  (v558)(&v480[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v559);
  v556(&v480[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v458);
  v484 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v480[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v479(&v480[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v481, v458);
  v485 = v549;
  *&v480[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v549;
  v480[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v480[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v545;
  swift_beginAccess();
  *&v480[v484] = 0;
  v480[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v586.receiver = v480;
  v586.super_class = v555;
  v486 = v485;
  v487 = objc_msgSendSuper2(&v586, sel_init);

  v488 = v481;
  v489 = v573;
  v573(v488, v458);
  v489(v572, v458);
  v489(v578, v458);
  v490 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  v491 = *&v487[v490];
  *&v487[v490] = v562;
  v492 = v487;

  v493 = v552;
  static Date.now.getter();
  v494 = v566;
  Date.addingTimeInterval(_:)();
  v561(v493, v482);
  v483(v494, 0, 1, v482);
  v495 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  outlined assign with take of Date?(v494, &v492[v495]);
  swift_endAccess();
  v496 = swift_allocObject();
  *(v496 + 16) = xmmword_20B447560;
  v497 = v534;
  *(v496 + 32) = v537;
  *(v496 + 40) = v497;
  v498 = v512;
  v499 = v563;
  *(v496 + 48) = v512;
  *(v496 + 56) = v499;
  v500 = v553;
  v501 = v554;
  *(v496 + 64) = v532;
  *(v496 + 72) = v501;
  v503 = v550;
  v502 = v551;
  *(v496 + 80) = v500;
  *(v496 + 88) = v502;
  v504 = v574;
  *(v496 + 96) = v574;
  *(v496 + 104) = v503;
  *(v496 + 112) = v492;

  outlined consume of Data._Representation(v520, v519);

  v505 = v523;
  v506 = v521;
  *v523 = v562;
  v505[1] = v506;
  v505[2] = v496;
}

uint64_t getEnumTagSinglePayload for MockManagedConfigurationsProvider(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for MockManagedConfigurationsProvider(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id @nonobjc ISSymbol.__allocating_init(forTypeIdentifier:with:variantOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x20F2E6C00]();

  v12[0] = 0;
  v7 = [swift_getObjCClassFromMetadata() symbolForTypeIdentifier:v6 withResolutionStrategy:a3 variantOptions:a4 error:v12];

  if (v7)
  {
    v8 = v12[0];
  }

  else
  {
    v9 = v12[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t specialized static SmartRoutingDeviceSymbolNameProvider.symbolName(forProductID:)(int a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25[-v4];
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  UTType.init(_rawBluetoothProductID:rawVendorID:)();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of UTType?(v5);
    if (one-time initialization token for devices != -1)
    {
      swift_once();
    }

    v11 = 0x7073646F70726961;
    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static WOLog.devices);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109120;
      *(v15 + 4) = a1;
      _os_log_impl(&dword_20AEA4000, v13, v14, "[WorkoutDeviceSymbolNameProvider] Unable to determine UTType for product id: %u", v15, 8u);
      MEMORY[0x20F2E9420](v15, -1, -1);
    }
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    type metadata accessor for ISSymbol();
    v16 = UTType.identifier.getter();
    v18 = @nonobjc ISSymbol.__allocating_init(forTypeIdentifier:with:variantOptions:)(v16, v17, 1, 1);
    if (v18)
    {
      v23 = v18;
      v20 = [v18 name];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      if (one-time initialization token for devices != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static WOLog.devices);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 67109120;
        *(v22 + 4) = a1;
        _os_log_impl(&dword_20AEA4000, v20, v21, "[WorkoutDeviceSymbolNameProvider] Unable to find SF Symbol for product id: %u", v22, 8u);
        MEMORY[0x20F2E9420](v22, -1, -1);
      }

      v11 = 0x7073646F70726961;
    }

    (*(v7 + 8))(v10, v6);
  }

  return v11;
}

uint64_t outlined destroy of UTType?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for ISSymbol()
{
  result = lazy cache variable for type metadata for ISSymbol;
  if (!lazy cache variable for type metadata for ISSymbol)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ISSymbol);
  }

  return result;
}

Swift::Int FIUIWorkoutActivityType.supportedTargetZoneAlerts(activityMoveMode:configurationContext:)(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  v5 = [v2 effectiveTypeIdentifier];
  if (v5 == 13)
  {
    if ([v2 isIndoor])
    {
      v6 = &outlined read-only object #3 of FIUIWorkoutActivityType.supportedTargetZoneAlerts(activityMoveMode:configurationContext:);
    }

    else
    {
      v6 = &outlined read-only object #4 of FIUIWorkoutActivityType.supportedTargetZoneAlerts(activityMoveMode:configurationContext:);
    }

LABEL_17:

    return _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore10TargetZoneC0H4TypeO_Tt0g5Tf4g_n(v6);
  }

  if (v5 != 37)
  {
    if (v5 == 71 && ([v2 isIndoor] & 1) == 0)
    {
      v6 = &outlined read-only object #0 of FIUIWorkoutActivityType.supportedTargetZoneAlerts(activityMoveMode:configurationContext:);
      goto LABEL_17;
    }

    return MEMORY[0x277D84FA0];
  }

  if ([v2 isIndoor])
  {
    if (v4 == 1)
    {
      v7 = type metadata accessor for WorkoutKitFeatures();
      v10[3] = v7;
      v10[4] = lazy protocol witness table accessor for type WorkoutKitFeatures and conformance WorkoutKitFeatures();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
      (*(*(v7 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CE3FC8], v7);
      LOBYTE(v7) = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_1(v10);
      if (v7)
      {
        return _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore10TargetZoneC0H4TypeO_Tt0g5Tf4g_n(&outlined read-only object #1 of FIUIWorkoutActivityType.supportedTargetZoneAlerts(activityMoveMode:configurationContext:));
      }
    }

    return MEMORY[0x277D84FA0];
  }

  result = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore10TargetZoneC0H4TypeO_Tt0g5Tf4g_n(&outlined read-only object #2 of FIUIWorkoutActivityType.supportedTargetZoneAlerts(activityMoveMode:configurationContext:));
  v10[0] = result;
  if (a1 == 1)
  {
    specialized Set._Variant.insert(_:)(&v11, 6);
    specialized Set._Variant.insert(_:)(&v11, 5);
    return v10[0];
  }

  return result;
}

BOOL FIUIWorkoutActivityType.supportsPaceAlerts(activityMoveMode:configurationContext:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v7 = *a2;
  v4 = FIUIWorkoutActivityType.supportedTargetZoneAlerts(activityMoveMode:configurationContext:)(a1, &v7);
  v5 = *(specialized _NativeSet.genericIntersection<A>(_:)(a3, v4) + 16);

  return v5 != 0;
}

void FIUIWorkoutActivityType.pacePerUserUnit(pace:formattingManager:)(void *a1, double a2)
{
  v4 = FIUIPaceFormatForWorkoutActivityType();
  v5 = FIUIDistanceTypeForActivityType();
  if (v4 == 4)
  {
    v4 = [objc_opt_self() meterUnit];
    v6 = [objc_opt_self() quantityWithUnit:v4 doubleValue:a2];

    [a1 speedPerHourWithDistance:v6 overDuration:4 paceFormat:v5 distanceType:1.0];
    v8 = v7;

    a2 = round(v8);
    if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    if (a2 <= -9.22337204e18)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (a2 < 9.22337204e18)
    {
      return;
    }

    __break(1u);
  }

  v9 = [a1 unitManager];
  if (!v9)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = [objc_opt_self() meterUnit];
  v12 = [objc_opt_self() quantityWithUnit:v11 doubleValue:a2];

  [v10 paceWithDistance:v12 overDuration:v4 paceFormat:v5 distanceType:1.0];
  v14 = v13;
  v15 = v13;

  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }
}

id @objc NLSessionActivityGoal.description.getter(void *a1)
{
  v1 = a1;
  v2 = NLSessionActivityGoal.description.getter();
  v4 = v3;

  v5 = MEMORY[0x20F2E6C00](v2, v4);

  return v5;
}

uint64_t NLSessionActivityGoal.description.getter()
{
  v1 = v0;
  if ([v0 goalTypeIdentifier] != 2 || (v2 = objc_msgSend(v0, sel_requiredDistance)) == 0)
  {
    v5 = [v0 goalTypeIdentifier];
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v3 = 0xE400000000000000;
        v4 = 1701669204;
        goto LABEL_14;
      }

      if (v5 == 3)
      {
        v3 = 0xE600000000000000;
        v4 = 0x796772656E45;
        goto LABEL_14;
      }
    }

    else
    {
      if (!v5)
      {
        v3 = 0xE400000000000000;
        v4 = 1852141647;
        goto LABEL_14;
      }

      if (v5 == 1)
      {
        v3 = 0xE800000000000000;
        v4 = 0x65636E6174736944;
        goto LABEL_14;
      }
    }

    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E55;
    goto LABEL_14;
  }

  v3 = 0xED000065636E6174;
  v4 = 0x7369442B656D6954;
LABEL_14:
  MEMORY[0x20F2E6D80](v4, v3);

  if ([v0 goalTypeIdentifier])
  {
    v6 = [v0 value];
    if (v6)
    {
      v7 = v6;
      if ([v0 goalTypeIdentifier] == 2 && (v8 = objc_msgSend(v0, sel_requiredDistance)) != 0)
      {

        _StringGuts.grow(_:)(21);

        v9 = [v7 description];
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;

        MEMORY[0x20F2E6D80](v10, v12);

        MEMORY[0x20F2E6D80](0x636E617473696420, 0xEB00000000203A65);
        v13 = [v1 requiredDistance];
        if (v13)
        {
          v14 = v13;
          v15 = [v13 description];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        v20 = Optional.description.getter();
        v22 = v21;

        MEMORY[0x20F2E6D80](v20, v22);

        v17 = 0x203A656D6974;
        v19 = 0xE600000000000000;
      }

      else
      {
        v16 = [v7 description];
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;
      }

      MEMORY[0x20F2E6D80](v17, v19);

      MEMORY[0x20F2E6D80](41, 0xE100000000000000);

      MEMORY[0x20F2E6D80](10272, 0xE200000000000000);
    }
  }

  return 0x3D6C616F67;
}

uint64_t Apple_Workout_Core_WorkoutBuddyStatePublisher.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v1 = a1 + *(type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher() + 24);
  return UnknownStorage.init()();
}

uint64_t type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher()
{
  result = type metadata singleton initialization cache for Apple_Workout_Core_WorkoutBuddyStatePublisher;
  if (!type metadata singleton initialization cache for Apple_Workout_Core_WorkoutBuddyStatePublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void Apple_Workout_Core_WorkoutBuddyStatePublisher.state.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t Apple_Workout_Core_WorkoutBuddyStatePublisher.state.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Apple_Workout_Core_WorkoutBuddyStatePublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher() + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_WorkoutBuddyStatePublisher.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher() + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 6;
  *(a2 + 9) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Apple_Workout_Core_WorkoutBuddyStatePublisher.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else if (result == 2)
      {
        lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_WorkoutBuddyStatePublisher.traverse<A>(visitor:)()
{
  if (*v0 != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
  {
    if (!*(v0 + 8) || (v4 = *(v0 + 8), v5 = *(v0 + 16), lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher() + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState);
  }

  return result;
}

Swift::Int Apple_Workout_Core_WorkoutBuddyStatePublisher.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher();
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_WorkoutBuddyStatePublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_WorkoutBuddyStatePublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_WorkoutBuddyStatePublisher(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_WorkoutBuddyStatePublisher(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_WorkoutBuddyStatePublisher;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_WorkoutBuddyStatePublisher(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_WorkoutBuddyStatePublisher(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_WorkoutBuddyStatePublisher()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_WorkoutBuddyStatePublisher()
{
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_WorkoutBuddyStatePublisher()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t static Apple_Workout_Core_WorkoutBuddyStatePublisher._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_WorkoutBuddyStatePublisher@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
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

uint64_t specialized static Apple_Workout_Core_WorkoutBuddyStatePublisher.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 1);
  v4 = *(a2 + 1);
  if (a2[16] == 1)
  {
    if (v4 > 2)
    {
      if (v4 == 3)
      {
        if (v3 == 3)
        {
          goto LABEL_10;
        }
      }

      else if (v4 == 4)
      {
        if (v3 == 4)
        {
          goto LABEL_10;
        }
      }

      else if (v3 == 5)
      {
        goto LABEL_10;
      }
    }

    else if (v4)
    {
      if (v4 == 1)
      {
        if (v3 == 1)
        {
          goto LABEL_10;
        }
      }

      else if (v3 == 2)
      {
        goto LABEL_10;
      }
    }

    else if (!v3)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 != v4)
  {
    return 0;
  }

LABEL_10:
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher() + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

unint64_t lazy protocol witness table accessor for type [Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherV0adE0OGMd, &_sSay11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherV0adE0OGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState] and conformance [A]);
  }

  return result;
}

uint64_t type metadata completion function for Apple_Workout_Core_WorkoutBuddyStatePublisher()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState(uint64_t result, int a2, int a3)
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

uint64_t getEnumTag for Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState(uint64_t a1)
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

uint64_t destructiveInjectEnumTag for Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState(uint64_t result, int a2)
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

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher(unint64_t *a1, void (*a2)(uint64_t))
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

id AtomicLazy.init(initializationBlock:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for AtomicLazy();
  (*(*(a3 - 8) + 56))(&a4[*(v8 + 28)], 1, 1, a3);
  v9 = *(v8 + 32);
  result = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *&a4[v9] = result;
  *a4 = a1;
  *(a4 + 1) = a2;
  return result;
}

id AtomicLazy.load()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  [*(v3 + *(a1 + 32)) lock];
  v12 = *(a1 + 28);
  (*(v8 + 16))(v11, v3 + v12, v7);
  v13 = *(v6 - 8);
  if ((*(v13 + 48))(v11, 1, v6) == 1)
  {
    v14 = *(v8 + 8);
    v15 = v14(v11, v7);
    v16 = *(v3 + 8);
    (*v3)(v15);
    v14((v3 + v12), v7);
    (*(v13 + 16))(v3 + v12, a2, v6);
    (*(v13 + 56))(v3 + v12, 0, 1, v6);
  }

  else
  {
    (*(v13 + 32))(a2, v11, v6);
  }

  return [*(v3 + *(type metadata accessor for AtomicLazy() + 32)) unlock];
}

unint64_t type metadata completion function for AtomicLazy(uint64_t a1)
{
  result = type metadata accessor for ()();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = type metadata accessor for Optional();
    if (v5 <= 0x3F)
    {
      result = type metadata accessor for NSLock();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AtomicLazy(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((a1 + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for AtomicLazy(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((a1 + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (a1 + v10 + 16) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

unint64_t type metadata accessor for NSLock()
{
  result = lazy cache variable for type metadata for NSLock;
  if (!lazy cache variable for type metadata for NSLock)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSLock);
  }

  return result;
}

Swift::String __swiftcall String.workoutLocalized()()
{
  v2 = v1;
  v3 = v0;
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = MEMORY[0x20F2E6C00](v3, v2);
  v7 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

Swift::String __swiftcall String.kahanaLocalized()()
{
  v2 = v1;
  v3 = v0;
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = MEMORY[0x20F2E6C00](v3, v2);
  v7 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B45F5D0);
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

Swift::String __swiftcall String.widgetKitLocalized()()
{
  v2 = v1;
  v3 = v0;
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = MEMORY[0x20F2E6C00](v3, v2);
  v7 = MEMORY[0x20F2E6C00](0xD000000000000014, 0x800000020B468B80);
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

Swift::Int FitnessUILocalizationFeature.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FitnessUILocalizationFeature()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FitnessUILocalizationFeature()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type FitnessUILocalizationFeature and conformance FitnessUILocalizationFeature()
{
  result = lazy protocol witness table cache variable for type FitnessUILocalizationFeature and conformance FitnessUILocalizationFeature;
  if (!lazy protocol witness table cache variable for type FitnessUILocalizationFeature and conformance FitnessUILocalizationFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FitnessUILocalizationFeature and conformance FitnessUILocalizationFeature);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FitnessUILocalizationFeature(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for FitnessUILocalizationFeature(_WORD *result, int a2, int a3)
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

double IntervalsMetricsPublisher.intervalAveragePace.getter()
{
  return IntervalsMetricsPublisher.intervalAveragePace.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t IntervalsMetricsPublisher.intervalStartDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  _s10Foundation4DateVSgWOcTm_7(a1, v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  static Published.subscript.setter();
  return _s10Foundation4DateVSgWOhTm_13(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t IntervalsMetricsPublisher.intervalCurrentStepIndex.setter()
{
  return IntervalsMetricsPublisher.intervalCurrentStepIndex.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t IntervalsMetricsPublisher.intervalTotalStepCount.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t IntervalsMetricsPublisher.intervalThisStep.setter()
{
  return IntervalsMetricsPublisher.intervalThisStep.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t IntervalsMetricsPublisher.intervalDistance.setter()
{
  return IntervalsMetricsPublisher.intervalDistance.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*IntervalsMetricsPublisher.intervalProgress.modify(uint64_t *a1))()
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
  return IntervalsMetricsPublisher.intervalProgress.modify;
}

uint64_t (*IntervalsMetricsPublisher.intervalDistance.modify(uint64_t *a1))()
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
  return IntervalsMetricsPublisher.intervalDistance.modify;
}

uint64_t key path setter for IntervalsMetricsPublisher.$intervalProgress : IntervalsMetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t IntervalsMetricsPublisher.$intervalProgress.setter(uint64_t a1)
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

uint64_t (*IntervalsMetricsPublisher.$intervalProgress.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalProgress;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalsMetricsPublisher.$intervalProgress.modify;
}

uint64_t IntervalsMetricsPublisher.intervalThisStep.getter()
{
  return IntervalsMetricsPublisher.intervalThisStep.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t (*IntervalsMetricsPublisher.intervalThisStep.modify(uint64_t *a1))()
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
  return IntervalsMetricsPublisher.intervalThisStep.modify;
}

uint64_t key path setter for IntervalsMetricsPublisher.$intervalThisStep : IntervalsMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D4StepCSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D4StepCSg_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C4StepCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C4StepCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t IntervalsMetricsPublisher.$intervalThisStep.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D4StepCSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D4StepCSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C4StepCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C4StepCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*IntervalsMetricsPublisher.$intervalThisStep.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D4StepCSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D4StepCSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalThisStep;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C4StepCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C4StepCSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalsMetricsPublisher.$intervalThisStep.modify;
}

uint64_t (*IntervalsMetricsPublisher.intervalNextStep.modify(uint64_t *a1))()
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
  return IntervalsMetricsPublisher.intervalNextStep.modify;
}

uint64_t key path setter for IntervalsMetricsPublisher.$intervalNextStep : IntervalsMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D4StepCSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D4StepCSg_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C4StepCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C4StepCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t IntervalsMetricsPublisher.$intervalNextStep.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D4StepCSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D4StepCSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C4StepCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C4StepCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*IntervalsMetricsPublisher.$intervalNextStep.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D4StepCSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D4StepCSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalNextStep;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C4StepCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C4StepCSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalsMetricsPublisher.$intervalNextStep.modify;
}

uint64_t key path setter for IntervalsMetricsPublisher.$intervalDistance : IntervalsMetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t IntervalsMetricsPublisher.$intervalDistance.setter(uint64_t a1)
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

uint64_t (*IntervalsMetricsPublisher.$intervalDistance.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalDistance;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalsMetricsPublisher.$intervalDistance.modify;
}

double key path getter for IntervalsMetricsPublisher.intervalAveragePace : IntervalsMetricsPublisher@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t key path setter for IntervalsMetricsPublisher.intervalAveragePace : IntervalsMetricsPublisher(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*IntervalsMetricsPublisher.intervalAveragePace.modify(uint64_t *a1))()
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
  return IntervalsMetricsPublisher.intervalAveragePace.modify;
}

uint64_t key path setter for IntervalsMetricsPublisher.$intervalAveragePace : IntervalsMetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t IntervalsMetricsPublisher.$intervalAveragePace.setter(uint64_t a1)
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

uint64_t (*IntervalsMetricsPublisher.$intervalAveragePace.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalAveragePace;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalsMetricsPublisher.$intervalAveragePace.modify;
}

uint64_t (*IntervalsMetricsPublisher.intervalCurrentPace.modify(uint64_t *a1))()
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
  return IntervalsMetricsPublisher.intervalCurrentPace.modify;
}

uint64_t key path setter for IntervalsMetricsPublisher.$intervalCurrentPace : IntervalsMetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t IntervalsMetricsPublisher.$intervalCurrentPace.setter(uint64_t a1)
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

uint64_t (*IntervalsMetricsPublisher.$intervalCurrentPace.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalCurrentPace;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalsMetricsPublisher.$intervalCurrentPace.modify;
}

uint64_t (*IntervalsMetricsPublisher.intervalAveragePower.modify(uint64_t *a1))()
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
  return IntervalsMetricsPublisher.intervalAveragePower.modify;
}

uint64_t key path setter for IntervalsMetricsPublisher.$intervalAveragePower : IntervalsMetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t IntervalsMetricsPublisher.$intervalAveragePower.setter(uint64_t a1)
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

uint64_t (*IntervalsMetricsPublisher.$intervalAveragePower.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalAveragePower;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalsMetricsPublisher.$intervalAveragePower.modify;
}

uint64_t (*IntervalsMetricsPublisher.intervalCurrentPower.modify(uint64_t *a1))()
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
  return IntervalsMetricsPublisher.intervalCurrentPower.modify;
}

uint64_t key path setter for IntervalsMetricsPublisher.$intervalCurrentPower : IntervalsMetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t IntervalsMetricsPublisher.$intervalCurrentPower.setter(uint64_t a1)
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

uint64_t (*IntervalsMetricsPublisher.$intervalCurrentPower.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalCurrentPower;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalsMetricsPublisher.$intervalCurrentPower.modify;
}

uint64_t (*IntervalsMetricsPublisher.intervalAverageCadence.modify(uint64_t *a1))()
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
  return IntervalsMetricsPublisher.intervalAverageCadence.modify;
}

uint64_t key path setter for IntervalsMetricsPublisher.$intervalAverageCadence : IntervalsMetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t IntervalsMetricsPublisher.$intervalAverageCadence.setter(uint64_t a1)
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

uint64_t (*IntervalsMetricsPublisher.$intervalAverageCadence.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalAverageCadence;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalsMetricsPublisher.$intervalAverageCadence.modify;
}

uint64_t (*IntervalsMetricsPublisher.intervalCurrentCadence.modify(uint64_t *a1))()
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
  return IntervalsMetricsPublisher.intervalCurrentCadence.modify;
}

uint64_t key path setter for IntervalsMetricsPublisher.$intervalCurrentCadence : IntervalsMetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t IntervalsMetricsPublisher.$intervalCurrentCadence.setter(uint64_t a1)
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

uint64_t (*IntervalsMetricsPublisher.$intervalCurrentCadence.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalCurrentCadence;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalsMetricsPublisher.$intervalCurrentCadence.modify;
}

uint64_t (*IntervalsMetricsPublisher.intervalTotalTime.modify(uint64_t *a1))()
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
  return IntervalsMetricsPublisher.intervalTotalTime.modify;
}

uint64_t key path setter for IntervalsMetricsPublisher.$intervalTotalTime : IntervalsMetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t IntervalsMetricsPublisher.$intervalTotalTime.setter(uint64_t a1)
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

uint64_t (*IntervalsMetricsPublisher.$intervalTotalTime.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalTotalTime;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalsMetricsPublisher.$intervalTotalTime.modify;
}

uint64_t IntervalsMetricsPublisher.intervalStartDate.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t (*IntervalsMetricsPublisher.intervalStartDate.modify(uint64_t *a1))()
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
  return IntervalsMetricsPublisher.intervalStartDate.modify;
}

uint64_t key path setter for IntervalsMetricsPublisher.$intervalStartDate : IntervalsMetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t IntervalsMetricsPublisher.$intervalStartDate.setter(uint64_t a1)
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

uint64_t (*IntervalsMetricsPublisher.$intervalStartDate.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalStartDate;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalsMetricsPublisher.$intervalStartDate.modify;
}

uint64_t (*IntervalsMetricsPublisher.intervalActiveEnergy.modify(uint64_t *a1))()
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
  return IntervalsMetricsPublisher.intervalActiveEnergy.modify;
}

uint64_t key path setter for IntervalsMetricsPublisher.$intervalActiveEnergy : IntervalsMetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t IntervalsMetricsPublisher.$intervalActiveEnergy.setter(uint64_t a1)
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

uint64_t (*IntervalsMetricsPublisher.$intervalActiveEnergy.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalActiveEnergy;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalsMetricsPublisher.$intervalActiveEnergy.modify;
}

uint64_t IntervalsMetricsPublisher.intervalCurrentStepIndex.getter()
{
  return IntervalsMetricsPublisher.intervalCurrentStepIndex.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t (*IntervalsMetricsPublisher.intervalCurrentStepIndex.modify(uint64_t *a1))()
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
  return IntervalsMetricsPublisher.intervalCurrentStepIndex.modify;
}

uint64_t key path setter for IntervalsMetricsPublisher.$intervalCurrentStepIndex : IntervalsMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySiSg_GMd, &_s7Combine9PublishedV9PublisherVySiSg_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiSgGMd, &_s7Combine9PublishedVySiSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t IntervalsMetricsPublisher.$intervalCurrentStepIndex.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySiSg_GMd, &_s7Combine9PublishedV9PublisherVySiSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiSgGMd, &_s7Combine9PublishedVySiSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*IntervalsMetricsPublisher.$intervalCurrentStepIndex.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySiSg_GMd, &_s7Combine9PublishedV9PublisherVySiSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalCurrentStepIndex;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiSgGMd, &_s7Combine9PublishedVySiSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalsMetricsPublisher.$intervalCurrentStepIndex.modify;
}

uint64_t IntervalsMetricsPublisher.intervalTotalStepCount.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t (*IntervalsMetricsPublisher.intervalTotalStepCount.modify(uint64_t *a1))()
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
  return IntervalsMetricsPublisher.intervalTotalStepCount.modify;
}

uint64_t key path setter for IntervalsMetricsPublisher.$intervalTotalStepCount : IntervalsMetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t IntervalsMetricsPublisher.$intervalTotalStepCount.setter(uint64_t a1)
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

uint64_t (*IntervalsMetricsPublisher.$intervalTotalStepCount.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalTotalStepCount;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalsMetricsPublisher.$intervalTotalStepCount.modify;
}

uint64_t (*IntervalsMetricsPublisher.intervalDistanceGoalAchievedDuration.modify(uint64_t *a1))()
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
  return IntervalsMetricsPublisher.intervalDistanceGoalAchievedDuration.modify;
}

void IntervalsMetricsPublisher.intervalProgress.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t IntervalsMetricsPublisher.$intervalProgress.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for IntervalsMetricsPublisher.$intervalProgress : IntervalsMetricsPublisher(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for IntervalsMetricsPublisher.$intervalDistanceGoalAchievedDuration : IntervalsMetricsPublisher(uint64_t a1, uint64_t *a2)
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

uint64_t IntervalsMetricsPublisher.$intervalDistanceGoalAchievedDuration.setter(uint64_t a1)
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

uint64_t (*IntervalsMetricsPublisher.$intervalDistanceGoalAchievedDuration.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalDistanceGoalAchievedDuration;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalsMetricsPublisher.$intervalDistanceGoalAchievedDuration.modify;
}

void IntervalsMetricsPublisher.$intervalProgress.modify(uint64_t a1, char a2)
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

uint64_t IntervalsMetricsPublisher.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  IntervalsMetricsPublisher.init()();
  return v3;
}

uint64_t IntervalsMetricsPublisher.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  v71 = *(v2 - 8);
  v72 = v2;
  v3 = *(v71 + 64);
  MEMORY[0x28223BE20](v2);
  v70 = &v56 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v68 = *(v5 - 8);
  v69 = v5;
  v6 = *(v68 + 64);
  MEMORY[0x28223BE20](v5);
  v67 = &v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiSgGMd, &_s7Combine9PublishedVySiSgGMR);
  v65 = *(v8 - 8);
  v66 = v8;
  v9 = *(v65 + 64);
  MEMORY[0x28223BE20](v8);
  v64 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  v62 = *(v11 - 8);
  v63 = v11;
  v12 = *(v62 + 64);
  MEMORY[0x28223BE20](v11);
  v61 = &v56 - v13;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v14 = *(*(v60 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v60);
  v59 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v58 = &v56 - v17;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C4StepCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C4StepCSgGMR);
  v18 = *(v57 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v57);
  v21 = &v56 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v56 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v56 - v25;
  v27 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalProgress;
  v73 = 0;
  Published.init(initialValue:)();
  v28 = *(v23 + 32);
  v28(v0 + v27, v26, v22);
  v29 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalThisStep;
  v73 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A4StepCSgMd, &_s11WorkoutCore0A4StepCSgMR);
  Published.init(initialValue:)();
  v30 = *(v18 + 32);
  v31 = v0 + v29;
  v32 = v57;
  v30(v31, v21, v57);
  v33 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalNextStep;
  v73 = 0;
  Published.init(initialValue:)();
  v30(v1 + v33, v21, v32);
  v34 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalDistance;
  v73 = 0;
  Published.init(initialValue:)();
  v35 = v1;
  v36 = v1 + v34;
  v37 = v56;
  v28(v36, v26, v56);
  v38 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalAveragePace;
  v73 = 0;
  Published.init(initialValue:)();
  v28(v35 + v38, v26, v37);
  v39 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalCurrentPace;
  v73 = 0;
  Published.init(initialValue:)();
  v28(v35 + v39, v26, v37);
  v40 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalAveragePower;
  v73 = 0;
  Published.init(initialValue:)();
  v28(v35 + v40, v26, v37);
  v41 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalCurrentPower;
  v73 = 0;
  Published.init(initialValue:)();
  v28(v35 + v41, v26, v37);
  v42 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalAverageCadence;
  v73 = 0;
  Published.init(initialValue:)();
  v28(v35 + v42, v26, v37);
  v43 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalCurrentCadence;
  v73 = 0;
  Published.init(initialValue:)();
  v28(v35 + v43, v26, v37);
  v44 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalTotalTime;
  v73 = 0;
  Published.init(initialValue:)();
  v28(v35 + v44, v26, v37);
  v57 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalStartDate;
  v45 = type metadata accessor for Date();
  v46 = v58;
  (*(*(v45 - 8) + 56))(v58, 1, 1, v45);
  _s10Foundation4DateVSgWOcTm_7(v46, v59, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v47 = v61;
  Published.init(initialValue:)();
  _s10Foundation4DateVSgWOhTm_13(v46, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(v62 + 32))(v35 + v57, v47, v63);
  v48 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalActiveEnergy;
  v73 = 0;
  Published.init(initialValue:)();
  v28(v35 + v48, v26, v37);
  v49 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalCurrentStepIndex;
  v73 = 0;
  v74 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  v50 = v64;
  Published.init(initialValue:)();
  (*(v65 + 32))(v35 + v49, v50, v66);
  v51 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalTotalStepCount;
  v73 = 0;
  v52 = v67;
  Published.init(initialValue:)();
  (*(v68 + 32))(v35 + v51, v52, v69);
  v53 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalDistanceGoalAchievedDuration;
  v73 = 0;
  v74 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
  v54 = v70;
  Published.init(initialValue:)();
  (*(v71 + 32))(v35 + v53, v54, v72);
  return v35;
}

uint64_t IntervalsMetricsPublisher.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalProgress;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalThisStep;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C4StepCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C4StepCSgGMR);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalNextStep, v5);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalDistance, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalAveragePace, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalCurrentPace, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalAveragePower, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalCurrentPower, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalAverageCadence, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalCurrentCadence, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalTotalTime, v2);
  v7 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalStartDate;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalActiveEnergy, v2);
  v9 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalCurrentStepIndex;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiSgGMd, &_s7Combine9PublishedVySiSgGMR);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalTotalStepCount;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalDistanceGoalAchievedDuration;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  return v0;
}

uint64_t IntervalsMetricsPublisher.__deallocating_deinit()
{
  IntervalsMetricsPublisher.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance IntervalsMetricsPublisher@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t IntervalsMetricsPublisher.wireData()()
{
  v0 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  IntervalsMetricsPublisher.protobuf.getter(v3);
  lazy protocol witness table accessor for type Apple_Workout_Core_IntervalsMetricsPublisher and conformance Apple_Workout_Core_IntervalsMetricsPublisher();
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_IntervalsMetricsPublisher(v3, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
  return v4;
}

uint64_t IntervalsMetricsPublisher.protobuf.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v38 = &v32 - v4;
  v39 = type metadata accessor for Date();
  v37 = *(v39 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  v13 = a1 + v12[14];
  UnknownStorage.init()();
  v14 = v12[15];
  v15 = *(v8 + 56);
  v15(a1 + v14, 1, 1, v7);
  v16 = v12[16];
  v15(a1 + v16, 1, 1, v7);
  v17 = a1 + v12[17];
  *v17 = 0;
  v33 = v17;
  *(v17 + 8) = 1;
  v18 = a1 + v12[18];
  *v18 = 0;
  v36 = v18;
  *(v18 + 8) = 1;
  v19 = a1 + v12[19];
  *v19 = 0;
  v32 = v19;
  *(v19 + 4) = 1;
  v20 = a1 + v12[20];
  *v20 = 0;
  v34 = v20;
  *(v20 + 8) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v40;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v40)
  {
    WorkoutStep.protobuf.getter(v11);

    _s10Foundation4DateVSgWOhTm_13(a1 + v14, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
    outlined init with take of Apple_Workout_Core_WorkoutStep(v11, a1 + v14);
    v15(a1 + v14, 0, 1, v7);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v40)
  {
    WorkoutStep.protobuf.getter(v11);

    _s10Foundation4DateVSgWOhTm_13(a1 + v16, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
    outlined init with take of Apple_Workout_Core_WorkoutStep(v11, a1 + v16);
    v15(a1 + v16, 0, 1, v7);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(a1 + 8) = v40;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(a1 + 16) = v40;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(a1 + 24) = v40;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(a1 + 32) = v40;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(a1 + 40) = v40;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(a1 + 48) = v40;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(a1 + 56) = v40;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v21 = v36;
  *v36 = v40;
  *(v21 + 8) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(a1 + 64) = v40;
  swift_getKeyPath();
  swift_getKeyPath();
  v22 = v38;
  static Published.subscript.getter();

  v23 = v37;
  v24 = v39;
  if ((*(v37 + 48))(v22, 1, v39) == 1)
  {
    _s10Foundation4DateVSgWOhTm_13(v22, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v25 = v35;
    (*(v23 + 32))(v35, v22, v24);
    Date.timeIntervalSinceReferenceDate.getter();
    v27 = v26;
    (*(v23 + 8))(v25, v24);
    v28 = v33;
    *v33 = v27;
    *(v28 + 8) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v41 & 1) == 0)
  {
    v29 = v34;
    *v34 = v40;
    *(v29 + 8) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v41)
  {
    goto LABEL_14;
  }

  if (v40 < 0xFFFFFFFF80000000)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v40 <= 0x7FFFFFFF)
  {
    v31 = v32;
    *v32 = v40;
    *(v31 + 4) = 0;
LABEL_14:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v40 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v40 <= 0x7FFFFFFF)
    {
      *(a1 + 72) = v40;
      return result;
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_IntervalsMetricsPublisher and conformance Apple_Workout_Core_IntervalsMetricsPublisher()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_IntervalsMetricsPublisher and conformance Apple_Workout_Core_IntervalsMetricsPublisher;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_IntervalsMetricsPublisher and conformance Apple_Workout_Core_IntervalsMetricsPublisher)
  {
    type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_IntervalsMetricsPublisher and conformance Apple_Workout_Core_IntervalsMetricsPublisher);
  }

  return result;
}

uint64_t _s10Foundation4DateVSgWOhTm_13(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_Core_WorkoutStep(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Apple_Workout_Core_IntervalsMetricsPublisher.decodeInto(publisher:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v77 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v76 = &v71 - v5;
  v6 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v73 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v71 = &v71 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v72 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v75 = &v71 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v71 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v71 - v21;
  v23 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  v81 = v23;

  static Published.subscript.setter();
  v80 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  v24 = *(v80 + 60);
  v74 = v0;
  _s10Foundation4DateVSgWOcTm_7(v0 + v24, v22, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v25 = *(v7 + 48);
  v26 = v25(v22, 1, v6);
  _s10Foundation4DateVSgWOhTm_13(v22, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v78 = v7 + 48;
  v79 = v25;
  if (v26 == 1)
  {
    v27 = v6;
    swift_getKeyPath();
    swift_getKeyPath();
    v81 = 0;

    static Published.subscript.setter();
    v28 = v80;
    v29 = v74;
  }

  else
  {
    v29 = v74;
    _s10Foundation4DateVSgWOcTm_7(v74 + v24, v20, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
    v30 = v25(v20, 1, v6);
    v28 = v80;
    if (v30 == 1)
    {
      v31 = v80;
      v32 = v71;
      UnknownStorage.init()();
      v33 = v6;
      v34 = *(v6 + 20);
      if (one-time initialization token for defaultInstance != -1)
      {
        swift_once();
        v33 = v6;
      }

      *(v32 + v34) = static Apple_Workout_Core_WorkoutStep._StorageClass.defaultInstance;
      v27 = v33;
      v35 = v79(v20, 1);

      v36 = v35 == 1;
      v28 = v31;
      if (!v36)
      {
        _s10Foundation4DateVSgWOhTm_13(v20, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
      }
    }

    else
    {
      v27 = v6;
      v32 = v71;
      outlined init with take of Apple_Workout_Core_WorkoutStep(v20, v71);
    }

    v37 = Apple_Workout_Core_WorkoutStep.decoded.getter();
    outlined destroy of Apple_Workout_Core_IntervalsMetricsPublisher(v32, type metadata accessor for Apple_Workout_Core_WorkoutStep);
    swift_getKeyPath();
    swift_getKeyPath();
    v81 = v37;

    static Published.subscript.setter();
  }

  v38 = *(v28 + 64);
  v39 = v75;
  _s10Foundation4DateVSgWOcTm_7(v29 + v38, v75, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v40 = v79;
  v41 = (v79)(v39, 1, v27);
  _s10Foundation4DateVSgWOhTm_13(v39, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  if (v41 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v81 = 0;

    static Published.subscript.setter();
    v42 = v80;
    v43 = v76;
  }

  else
  {
    v44 = v72;
    _s10Foundation4DateVSgWOcTm_7(v29 + v38, v72, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
    if (v40(v44, 1, v27) == 1)
    {
      v45 = v73;
      UnknownStorage.init()();
      v46 = *(v27 + 20);
      v42 = v80;
      if (one-time initialization token for defaultInstance != -1)
      {
        swift_once();
      }

      *(v45 + v46) = static Apple_Workout_Core_WorkoutStep._StorageClass.defaultInstance;
      v47 = v40(v44, 1, v27);

      v43 = v76;
      if (v47 != 1)
      {
        _s10Foundation4DateVSgWOhTm_13(v44, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
      }
    }

    else
    {
      v45 = v73;
      outlined init with take of Apple_Workout_Core_WorkoutStep(v44, v73);
      v42 = v80;
      v43 = v76;
    }

    v48 = Apple_Workout_Core_WorkoutStep.decoded.getter();
    outlined destroy of Apple_Workout_Core_IntervalsMetricsPublisher(v45, type metadata accessor for Apple_Workout_Core_WorkoutStep);
    swift_getKeyPath();
    swift_getKeyPath();
    v81 = v48;

    static Published.subscript.setter();
  }

  v49 = v29[1];
  swift_getKeyPath();
  swift_getKeyPath();
  v81 = v49;

  static Published.subscript.setter();
  v50 = v29[2];
  swift_getKeyPath();
  swift_getKeyPath();
  v81 = v50;

  static Published.subscript.setter();
  v51 = v29[3];
  swift_getKeyPath();
  swift_getKeyPath();
  v81 = v51;

  static Published.subscript.setter();
  v52 = v29[4];
  swift_getKeyPath();
  swift_getKeyPath();
  v81 = v52;

  static Published.subscript.setter();
  v53 = v29[5];
  swift_getKeyPath();
  swift_getKeyPath();
  v81 = v53;

  static Published.subscript.setter();
  v54 = v29[6];
  swift_getKeyPath();
  swift_getKeyPath();
  v81 = v54;

  static Published.subscript.setter();
  v55 = v29[7];
  swift_getKeyPath();
  swift_getKeyPath();
  v81 = v55;

  static Published.subscript.setter();
  v56 = v29 + *(v42 + 72);
  if ((*(v56 + 8) & 1) == 0)
  {
    v57 = *v56;
    swift_getKeyPath();
    swift_getKeyPath();
    v81 = v57;

    static Published.subscript.setter();
  }

  v58 = v29[8];
  swift_getKeyPath();
  swift_getKeyPath();
  v81 = v58;

  static Published.subscript.setter();
  v59 = (v29 + *(v42 + 68));
  if (v59[1])
  {
    v60 = 1;
  }

  else
  {
    v61 = *v59;
    Date.init(timeIntervalSinceReferenceDate:)();
    v60 = 0;
  }

  v62 = type metadata accessor for Date();
  (*(*(v62 - 8) + 56))(v43, v60, 1, v62);
  swift_getKeyPath();
  swift_getKeyPath();
  _s10Foundation4DateVSgWOcTm_7(v43, v77, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  static Published.subscript.setter();
  _s10Foundation4DateVSgWOhTm_13(v43, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v63 = v80;
  v64 = v29 + *(v80 + 80);
  v65 = *v64;
  v66 = *(v64 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v81 = v65;
  v82 = (v66 & 1) != 0;

  static Published.subscript.setter();
  v67 = (v29 + *(v63 + 76));
  if ((v67[1] & 1) == 0)
  {
    v68 = *v67;
    swift_getKeyPath();
    swift_getKeyPath();
    v81 = v68;
    v82 = 0;

    static Published.subscript.setter();
  }

  v69 = *(v29 + 18);
  swift_getKeyPath();
  swift_getKeyPath();
  v81 = v69;

  return static Published.subscript.setter();
}