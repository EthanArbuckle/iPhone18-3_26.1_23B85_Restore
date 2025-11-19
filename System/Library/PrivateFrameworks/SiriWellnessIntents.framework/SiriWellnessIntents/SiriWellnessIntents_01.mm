uint64_t HealthKitFetcher.query(start:end:)(uint64_t a1, uint64_t a2)
{
  v12 = *v3;
  v10 = *v3 + 16;
  v11 = v12 + 84;
  v5 = *(*v3 + 1344);
  v12[84] = *v3;
  v12[169] = v2;
  v12[170] = a1;
  v12[171] = a2;

  if (v2)
  {
    v8 = *v11;
    v7 = HealthKitFetcher.query(start:end:);
  }

  else
  {

    v6 = *v11;
    v7 = HealthKitFetcher.query(start:end:);
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t HealthKitFetcher.query(start:end:)(uint64_t a1)
{
  v12 = *v2;
  v10 = *v2 + 16;
  v11 = v12 + 84;
  v4 = *(*v2 + 1376);
  v12[84] = *v2;
  v12[173] = a1;
  v12[174] = v1;

  if (v1)
  {
    v7 = *v11;
    v6 = HealthKitFetcher.query(start:end:);
  }

  else
  {
    v9 = *(v10 + 1024);

    v5 = *v11;
    v6 = HealthKitFetcher.query(start:end:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

{
  v10 = *v2;
  v9 = v10 + 84;
  v4 = *(*v2 + 1432);
  v10[84] = *v2;
  v10[180] = a1;
  v10[181] = v1;

  if (v1)
  {
    v7 = *v9;
    v6 = HealthKitFetcher.query(start:end:);
  }

  else
  {
    v5 = *v9;
    v6 = HealthKitFetcher.query(start:end:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

{
  v10 = *v2;
  v9 = v10 + 84;
  v4 = *(*v2 + 1472);
  v10[84] = *v2;
  v10[185] = a1;
  v10[186] = v1;

  if (v1)
  {
    v7 = *v9;
    v6 = HealthKitFetcher.query(start:end:);
  }

  else
  {
    v5 = *v9;
    v6 = HealthKitFetcher.query(start:end:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

{
  v10 = *v2;
  v9 = v10 + 84;
  v4 = *(*v2 + 1512);
  v10[84] = *v2;
  v10[190] = a1;
  v10[191] = v1;

  if (v1)
  {
    v7 = *v9;
    v6 = HealthKitFetcher.query(start:end:);
  }

  else
  {
    v5 = *v9;
    v6 = HealthKitFetcher.query(start:end:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t HealthKitFetcher.query(start:end:)(double a1)
{
  v9 = *v2;
  v8 = (v9 + 672);
  v3 = *(*v2 + 1544);
  *(v9 + 672) = *v2;
  *(v9 + 1552) = a1;
  *(v9 + 1560) = v1;

  if (v1)
  {
    v6 = *v8;
    v5 = HealthKitFetcher.query(start:end:);
  }

  else
  {
    v4 = *v8;
    v5 = HealthKitFetcher.query(start:end:);
  }

  return MEMORY[0x2822009F8](v5, 0);
}

uint64_t implicit closure #2 in HealthKitFetcher.query(start:end:)(uint64_t a1)
{
  v3 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v3);
  v6 = &v3 - v4;
  outlined init with copy of Date?(v1, &v3 - v4);
  lazy protocol witness table accessor for type Date? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t specialized implicit closure #5 in HealthKitFetcher.query(start:end:)(void *a1)
{
  MEMORY[0x277D82BE0](a1);
  v3 = [a1 unit];
  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v3);
  }

  MEMORY[0x277D82BD8](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type String? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t HealthKitFetcher.getMostRecent(startDate:endDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 112) = a6;
  *(v6 + 104) = a5;
  *(v6 + 96) = a4;
  *(v6 + 88) = a3;
  *(v6 + 80) = a2;
  *(v6 + 72) = a1;
  *(v6 + 48) = v6;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit17HKSamplePredicateVySo16HKQuantitySampleCGMd, &_s9HealthKit17HKSamplePredicateVySo16HKQuantitySampleCGMR) - 8) + 64) + 15;
  *(v6 + 120) = swift_task_alloc();
  Descriptor = type metadata accessor for HKStatisticsQueryDescriptor();
  *(v6 + 128) = Descriptor;
  v12 = *(Descriptor - 8);
  *(v6 + 136) = v12;
  v9 = *(v12 + 64) + 15;
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 56) = a1;
  *(v6 + 64) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  v10 = *(v6 + 48);

  return MEMORY[0x2822009F8](HealthKitFetcher.getMostRecent(startDate:endDate:), 0);
}

uint64_t HealthKitFetcher.getMostRecent(startDate:endDate:)()
{
  v13 = v0[18];
  v1 = v0[15];
  v2 = v0[14];
  v3 = v0[13];
  v4 = v0[12];
  v5 = v0[11];
  v14 = v5;
  v6 = v0[10];
  v7 = v0[9];
  v0[6] = v0;
  HealthKitFetcher.predicate(start:end:)(v7, v6, v5, v4, v3, v2, v1);
  HKStatisticsQueryDescriptor.init(predicate:options:)();
  MEMORY[0x277D82BE0](v14);
  v8 = *(MEMORY[0x277CCB628] + 4);
  v9 = swift_task_alloc();
  v15[19] = v9;
  *v9 = v15[6];
  v9[1] = HealthKitFetcher.getMostRecent(startDate:endDate:);
  v10 = v15[18];
  v11 = v15[11];

  return MEMORY[0x2821203E8](v11);
}

{
  v8 = v0[18];
  v1 = v0[17];
  v2 = v0[16];
  v9 = v0[15];
  v0[6] = v0;
  (*(v1 + 8))();

  v3 = v0;
  v4 = *(v0[6] + 8);
  v5 = v0[6];
  v6 = v3[20];

  return v4(v6);
}

{
  v9 = v0[18];
  v7 = v0[17];
  v8 = v0[16];
  v10 = v0[15];
  v1 = v0[11];
  v0[6] = v0;
  MEMORY[0x277D82BD8](v1);
  (*(v7 + 8))(v9, v8);

  v2 = v0;
  v3 = *(v0[6] + 8);
  v4 = v0[6];
  v5 = v2[21];

  return v3();
}

uint64_t HealthKitFetcher.getMostRecent(startDate:endDate:)(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 152);
  *(v9 + 48) = *v2;
  v10 = (v9 + 48);
  *(v9 + 160) = a1;
  *(v9 + 168) = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = HealthKitFetcher.getMostRecent(startDate:endDate:);
  }

  else
  {

    v5 = *v10;
    v6 = HealthKitFetcher.getMostRecent(startDate:endDate:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t HealthKitFetcher.getDiscreteStats(startDate:endDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 120) = a6;
  *(v6 + 112) = a5;
  *(v6 + 104) = a4;
  *(v6 + 96) = a3;
  *(v6 + 88) = a2;
  *(v6 + 80) = a1;
  *(v6 + 48) = v6;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit17HKSamplePredicateVySo16HKQuantitySampleCGMd, &_s9HealthKit17HKSamplePredicateVySo16HKQuantitySampleCGMR) - 8) + 64) + 15;
  *(v6 + 144) = swift_task_alloc();
  Descriptor = type metadata accessor for HKStatisticsQueryDescriptor();
  *(v6 + 152) = Descriptor;
  v13 = *(Descriptor - 8);
  *(v6 + 160) = v13;
  v9 = *(v13 + 64) + 15;
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 56) = a1;
  *(v6 + 64) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  v10 = *(v6 + 48);

  return MEMORY[0x2822009F8](HealthKitFetcher.getDiscreteStats(startDate:endDate:), 0);
}

uint64_t HealthKitFetcher.getDiscreteStats(startDate:endDate:)()
{
  v19 = v0[21];
  v20 = v0[18];
  v18 = v0[17];
  v17 = v0[16];
  v16 = v0[15];
  v15 = v0[14];
  v14 = v0[13];
  v21 = v0[12];
  v10 = v0[11];
  v8 = v0[10];
  v0[6] = v0;
  v12 = type metadata accessor for Date();
  v9 = *(v12 - 8);
  v11 = *(v9 + 16);
  v11(v18, v8);
  v13 = *(v9 + 56);
  v13(v18);
  (v11)(v17, v10, v12);
  (v13)(v17, 0, 1, v12);
  HealthKitFetcher.predicate(start:end:)(v18, v17, v21, v14, v15, v16, v20);
  outlined destroy of Date?(v17);
  outlined destroy of Date?(v18);
  type metadata accessor for HKStatisticsOptions();
  _allocateUninitializedArray<A>(_:)();
  *v1 = 4;
  v1[1] = 8;
  v1[2] = 2;
  _finalizeUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type HKStatisticsOptions and conformance HKStatisticsOptions();
  SetAlgebra<>.init(arrayLiteral:)();
  v2 = v0[9];
  HKStatisticsQueryDescriptor.init(predicate:options:)();
  MEMORY[0x277D82BE0](v21);
  v3 = *(MEMORY[0x277CCB628] + 4);
  v4 = swift_task_alloc();
  v22[22] = v4;
  *v4 = v22[6];
  v4[1] = HealthKitFetcher.getDiscreteStats(startDate:endDate:);
  v5 = v22[21];
  v6 = v22[12];

  return MEMORY[0x2821203E8](v6);
}

{
  v8 = v0[21];
  v1 = v0[20];
  v2 = v0[19];
  v9 = v0[18];
  v10 = v0[17];
  v11 = v0[16];
  v0[6] = v0;
  (*(v1 + 8))();

  v3 = v0;
  v4 = *(v0[6] + 8);
  v5 = v0[6];
  v6 = v3[23];

  return v4(v6);
}

{
  v9 = v0[21];
  v7 = v0[20];
  v8 = v0[19];
  v10 = v0[18];
  v11 = v0[17];
  v12 = v0[16];
  v1 = v0[12];
  v0[6] = v0;
  MEMORY[0x277D82BD8](v1);
  (*(v7 + 8))(v9, v8);

  v2 = v0;
  v3 = *(v0[6] + 8);
  v4 = v0[6];
  v5 = v2[24];

  return v3();
}

uint64_t HealthKitFetcher.getDiscreteStats(startDate:endDate:)(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 176);
  *(v9 + 48) = *v2;
  v10 = (v9 + 48);
  *(v9 + 184) = a1;
  *(v9 + 192) = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = HealthKitFetcher.getDiscreteStats(startDate:endDate:);
  }

  else
  {

    v5 = *v10;
    v6 = HealthKitFetcher.getDiscreteStats(startDate:endDate:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t HealthKitFetcher.getCumulativeTotal(startDate:endDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 112) = a6;
  *(v6 + 104) = a5;
  *(v6 + 96) = a4;
  *(v6 + 88) = a3;
  *(v6 + 80) = a2;
  *(v6 + 72) = a1;
  *(v6 + 48) = v6;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit17HKSamplePredicateVySo16HKQuantitySampleCGMd, &_s9HealthKit17HKSamplePredicateVySo16HKQuantitySampleCGMR) - 8) + 64) + 15;
  *(v6 + 136) = swift_task_alloc();
  Descriptor = type metadata accessor for HKStatisticsQueryDescriptor();
  *(v6 + 144) = Descriptor;
  v13 = *(Descriptor - 8);
  *(v6 + 152) = v13;
  v9 = *(v13 + 64) + 15;
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 56) = a1;
  *(v6 + 64) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  v10 = *(v6 + 48);

  return MEMORY[0x2822009F8](HealthKitFetcher.getCumulativeTotal(startDate:endDate:), 0);
}

uint64_t HealthKitFetcher.getCumulativeTotal(startDate:endDate:)()
{
  v17 = v0[20];
  v18 = v0[17];
  v16 = v0[16];
  v15 = v0[15];
  v14 = v0[14];
  v13 = v0[13];
  v12 = v0[12];
  v19 = v0[11];
  v8 = v0[10];
  v6 = v0[9];
  v0[6] = v0;
  v10 = type metadata accessor for Date();
  v7 = *(v10 - 8);
  v9 = *(v7 + 16);
  v9(v16, v6);
  v11 = *(v7 + 56);
  v11(v16);
  (v9)(v15, v8, v10);
  (v11)(v15, 0, 1, v10);
  HealthKitFetcher.predicate(start:end:)(v16, v15, v19, v12, v13, v14, v18);
  outlined destroy of Date?(v15);
  outlined destroy of Date?(v16);
  HKStatisticsQueryDescriptor.init(predicate:options:)();
  MEMORY[0x277D82BE0](v19);
  v1 = *(MEMORY[0x277CCB628] + 4);
  v2 = swift_task_alloc();
  v20[21] = v2;
  *v2 = v20[6];
  v2[1] = HealthKitFetcher.getCumulativeTotal(startDate:endDate:);
  v3 = v20[20];
  v4 = v20[11];

  return MEMORY[0x2821203E8](v4);
}

{
  v8 = v0[20];
  v1 = v0[19];
  v2 = v0[18];
  v9 = v0[17];
  v10 = v0[16];
  v11 = v0[15];
  v0[6] = v0;
  (*(v1 + 8))();

  v3 = v0;
  v4 = *(v0[6] + 8);
  v5 = v0[6];
  v6 = v3[22];

  return v4(v6);
}

{
  v9 = v0[20];
  v7 = v0[19];
  v8 = v0[18];
  v10 = v0[17];
  v11 = v0[16];
  v12 = v0[15];
  v1 = v0[11];
  v0[6] = v0;
  MEMORY[0x277D82BD8](v1);
  (*(v7 + 8))(v9, v8);

  v2 = v0;
  v3 = *(v0[6] + 8);
  v4 = v0[6];
  v5 = v2[23];

  return v3();
}

uint64_t HealthKitFetcher.getCumulativeTotal(startDate:endDate:)(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 168);
  *(v9 + 48) = *v2;
  v10 = (v9 + 48);
  *(v9 + 176) = a1;
  *(v9 + 184) = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = HealthKitFetcher.getCumulativeTotal(startDate:endDate:);
  }

  else
  {

    v5 = *v10;
    v6 = HealthKitFetcher.getCumulativeTotal(startDate:endDate:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t HealthKitFetcher.getCumulativeAverage(startDate:endDate:unit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 272) = a7;
  *(v7 + 264) = a6;
  *(v7 + 256) = a5;
  *(v7 + 248) = a4;
  *(v7 + 240) = a3;
  *(v7 + 232) = a2;
  *(v7 + 224) = a1;
  *(v7 + 168) = v7;
  *(v7 + 176) = 0;
  *(v7 + 184) = 0;
  *(v7 + 192) = 0;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 200) = 0;
  *(v7 + 208) = 0;
  *(v7 + 216) = 0;
  v8 = type metadata accessor for Date();
  *(v7 + 280) = v8;
  v18 = *(v8 - 8);
  *(v7 + 288) = v18;
  v9 = *(v18 + 64) + 15;
  *(v7 + 296) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  *(v7 + 304) = swift_task_alloc();
  *(v7 + 312) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit17HKSamplePredicateVySo16HKQuantitySampleCGMd, &_s9HealthKit17HKSamplePredicateVySo16HKQuantitySampleCGMR) - 8) + 64) + 15;
  *(v7 + 320) = swift_task_alloc();
  Descriptor = type metadata accessor for HKStatisticsCollectionQueryDescriptor();
  *(v7 + 328) = Descriptor;
  v20 = *(Descriptor - 8);
  *(v7 + 336) = v20;
  v12 = *(v20 + 64) + 15;
  *(v7 + 344) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR) - 8) + 64) + 15;
  *(v7 + 352) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR) - 8) + 64) + 15;
  *(v7 + 360) = swift_task_alloc();
  v15 = type metadata accessor for DateComponents();
  *(v7 + 368) = v15;
  v21 = *(v15 - 8);
  *(v7 + 376) = v21;
  v22 = *(v21 + 64);
  *(v7 + 384) = swift_task_alloc();
  *(v7 + 392) = swift_task_alloc();
  *(v7 + 176) = a1;
  *(v7 + 184) = a2;
  *(v7 + 192) = a3;
  *(v7 + 64) = a4;
  *(v7 + 72) = a5;
  *(v7 + 80) = a6;
  *(v7 + 88) = a7;
  v16 = *(v7 + 168);

  return MEMORY[0x2822009F8](HealthKitFetcher.getCumulativeAverage(startDate:endDate:unit:), 0);
}

uint64_t HealthKitFetcher.getCumulativeAverage(startDate:endDate:unit:)()
{
  v22 = v0[49];
  v26 = v0[48];
  v21 = v0[47];
  v23 = v0[46];
  v8 = v0[45];
  v9 = v0[44];
  v24 = v0[43];
  v27 = v0[40];
  v17 = v0[39];
  v16 = v0[38];
  v25 = v0[37];
  v10 = v0[36];
  v19 = v0[35];
  v15 = v0[34];
  v14 = v0[33];
  v13 = v0[32];
  v28 = v0[31];
  v11 = v0[29];
  v18 = v0[28];
  v0[21] = v0;
  v1 = type metadata accessor for Calendar();
  (*(*(v1 - 8) + 56))(v8, 1);
  v2 = type metadata accessor for TimeZone();
  (*(*(v2 - 8) + 56))(v9, 1);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v20 = *(v10 + 16);
  v0[50] = v20;
  v0[51] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v20(v17, v18, v19);
  v12 = *(v10 + 56);
  v12(v17);
  v20(v16, v11, v19);
  (v12)(v16, 0, 1, v19);
  HealthKitFetcher.predicate(start:end:)(v17, v16, v28, v13, v14, v15, v27);
  outlined destroy of Date?(v16);
  outlined destroy of Date?(v17);
  v20(v25, v18, v19);
  (*(v21 + 16))(v26, v22, v23);
  HKStatisticsCollectionQueryDescriptor.init(predicate:options:anchorDate:intervalComponents:)();
  MEMORY[0x277D82BE0](v28);
  v3 = *(MEMORY[0x277CCB678] + 4);
  v4 = swift_task_alloc();
  v29[52] = v4;
  *v4 = v29[21];
  v4[1] = HealthKitFetcher.getCumulativeAverage(startDate:endDate:unit:);
  v5 = v29[43];
  v6 = v29[31];

  return MEMORY[0x2821204E8](v6);
}

{
  v43 = *(v0 + 424);
  v37 = *(v0 + 408);
  v38 = *(v0 + 400);
  v1 = *(v0 + 296);
  v35 = *(v0 + 288);
  v39 = *(v0 + 280);
  v42 = *(v0 + 240);
  v36 = *(v0 + 232);
  v34 = *(v0 + 224);
  *(v0 + 168) = v0;
  *(v0 + 200) = v43;
  v41 = swift_allocObject();
  *(v0 + 208) = v41 + 16;
  *(v41 + 16) = 0;
  v47 = swift_allocObject();
  *(v0 + 216) = v47 + 16;
  *(v47 + 16) = 0;
  v38(v1, v34, v39);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v40 = *(v35 + 8);
  v40(v1, v39);
  v38(v1, v36, v39);
  v45 = Date._bridgeToObjectiveC()().super.isa;
  v40(v1, v39);

  MEMORY[0x277D82BE0](v42);

  v2 = swift_allocObject();
  v2[2] = v41;
  v2[3] = v42;
  v2[4] = v47;
  *(v0 + 48) = partial apply for closure #1 in HealthKitFetcher.getCumulativeAverage(startDate:endDate:unit:);
  *(v0 + 56) = v2;
  *(v0 + 16) = MEMORY[0x277D85DD0];
  *(v0 + 24) = 1107296256;
  *(v0 + 28) = 0;
  *(v0 + 32) = thunk for @escaping @callee_guaranteed (@guaranteed HKStatistics, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  *(v0 + 40) = &block_descriptor_0;
  v44 = _Block_copy((v0 + 16));
  v3 = *(v0 + 56);

  [v43 enumerateStatisticsFromDate:isa toDate:v45 withBlock:v44];
  _Block_release(v44);
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](isa);
  swift_beginAccess();
  v48 = *(v47 + 16);
  swift_endAccess();
  if (v48 > 0)
  {
    v25 = v33[53];
    v30 = v33[49];
    v31 = v33[46];
    v27 = v33[43];
    v28 = v33[41];
    v29 = v33[47];
    v26 = v33[42];
    swift_beginAccess();
    v24 = *(v41 + 16);
    swift_endAccess();
    swift_beginAccess();
    swift_endAccess();

    MEMORY[0x277D82BD8](v25);
    (*(v26 + 8))(v27, v28);
    (*(v29 + 8))(v30, v31);
    v32 = v24 / v48;
  }

  else
  {
    v17 = v33[53];
    v22 = v33[49];
    v23 = v33[46];
    v19 = v33[43];
    v20 = v33[41];
    v21 = v33[47];
    v18 = v33[42];

    MEMORY[0x277D82BD8](v17);
    (*(v18 + 8))(v19, v20);
    (*(v21 + 8))(v22, v23);
    v32 = 0.0;
  }

  v4 = v33[49];
  v9 = v33[48];
  v10 = v33[45];
  v11 = v33[44];
  v12 = v33[43];
  v13 = v33[40];
  v14 = v33[39];
  v15 = v33[38];
  v16 = v33[37];

  v5.n128_f64[0] = v32;
  v6 = *(v33[21] + 8);
  v7 = v33[21];

  return v6(v5);
}

{
  v12 = v0[49];
  v13 = v0[48];
  v10 = v0[47];
  v11 = v0[46];
  v14 = v0[45];
  v15 = v0[44];
  v16 = v0[43];
  v8 = v0[42];
  v9 = v0[41];
  v17 = v0[40];
  v18 = v0[39];
  v19 = v0[38];
  v20 = v0[37];
  v1 = v0[31];
  v0[21] = v0;
  MEMORY[0x277D82BD8](v1);
  (*(v8 + 8))(v16, v9);
  (*(v10 + 8))(v12, v11);

  v2 = v0;
  v3 = *(v0[21] + 8);
  v4 = v0[21];
  v5 = v2[54];
  v6.n128_u64[0] = v21;

  return v3(v6);
}

uint64_t HealthKitFetcher.getCumulativeAverage(startDate:endDate:unit:)(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 416);
  *(v9 + 168) = *v2;
  v10 = (v9 + 168);
  *(v9 + 424) = a1;
  *(v9 + 432) = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = HealthKitFetcher.getCumulativeAverage(startDate:endDate:unit:);
  }

  else
  {

    v5 = *v10;
    v6 = HealthKitFetcher.getCumulativeAverage(startDate:endDate:unit:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t specialized implicit closure #12 in HealthKitFetcher.query(start:end:)(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  type metadata accessor for GetHealthQuantityIntentResponse();
  lazy protocol witness table accessor for type GetHealthQuantityIntentResponse and conformance NSObject();
  return String.init<A>(describing:)();
}

id closure #1 in HealthKitFetcher.getCumulativeAverage(startDate:endDate:unit:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = [a1 sumQuantity];
  v14 = result;
  if (result)
  {
    [result doubleValueForUnit_];
    v9 = v6;
    swift_beginAccess();
    *(a3 + 16) = *(a3 + 16) + v9;
    swift_endAccess();
    result = swift_beginAccess();
    v7 = *(a5 + 16);
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
    }

    else
    {
      *(a5 + 16) = v10;
      swift_endAccess();
      return MEMORY[0x277D82BD8](v14);
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed HKStatistics, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);

  MEMORY[0x277D82BE0](a2);
  v5(a2, a3);
  MEMORY[0x277D82BD8](a2);
}

uint64_t protocol witness for QuantityFetching.isReadingAuthorized(for:) in conformance HealthKitFetcher(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for QuantityPersisting.isLoggingAuthorized(for:) in conformance HealthKitPersistor;

  return HealthKitFetcher.isReadingAuthorized(for:)(a1, v6, v7, v8, v9);
}

uint64_t protocol witness for QuantityFetching.query(start:end:) in conformance HealthKitFetcher(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *v2;
  v9 = v2[1];
  v10 = v2[2];
  v11 = v2[3];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for QuantityFetching.query(start:end:) in conformance HealthKitFetcher;

  return HealthKitFetcher.query(start:end:)(a1, a2, v8, v9, v10, v11);
}

uint64_t protocol witness for QuantityFetching.query(start:end:) in conformance HealthKitFetcher(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  *(v3 + 16) = *v2;
  v9 = v3 + 16;

  if (v1)
  {
    v6 = *(*v9 + 8);
  }

  else
  {
    v5 = a1;
    v6 = *(*v9 + 8);
  }

  return v6(v5);
}

uint64_t sub_269946634()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699466CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26994670C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26994674C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699467E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269946824()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269946864()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699468FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26994693C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26994697C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269946A14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269946A54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269946B2C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269946B6C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269946C54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269946CA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269946CE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269946DC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269946E00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269946E40()
{
  MEMORY[0x277D82BD8](v0[2]);
  MEMORY[0x277D82BD8](v0[3]);
  v1 = v0[4];

  v2 = v0[5];

  return swift_deallocObject();
}

uint64_t *outlined destroy of [HKQuantityType](uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

void *outlined destroy of HealthKitFetcher(void *a1)
{
  MEMORY[0x277D82BD8](*a1);
  MEMORY[0x277D82BD8](a1[1]);
  v1 = a1[2];

  v2 = a1[3];

  return a1;
}

uint64_t sub_269946F34()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t partial apply for @objc closure #1 in GetHealthQuantityIntentHandler.handle(intent:)()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = _sIeghH_IeAgH_TRTQ0_;

  return @objc closure #1 in GetHealthQuantityIntentHandler.handle(intent:)(v7, v5, v6);
}

unint64_t type metadata accessor for HKSample()
{
  v2 = lazy cache variable for type metadata for HKSample;
  if (!lazy cache variable for type metadata for HKSample)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKSample);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_2699470E4()
{
  MEMORY[0x277D82BD8](v0[2]);
  MEMORY[0x277D82BD8](v0[3]);
  v1 = v0[4];

  v2 = v0[5];

  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in HealthKitFetcher.query(start:end:)()
{
  v1 = v0[4];
  v2 = v0[5];
  return HealthKitFetcher.quantityType.getter(v0[2], v0[3]);
}

uint64_t sub_269947160()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v5 + *(v3 + 64);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v5, 1))
  {
    (*(v7 + 8))(v2 + v5, v6);
  }

  return swift_deallocObject();
}

void *outlined init with take of Date?(const void *a1, void *a2)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t partial apply for implicit closure #2 in HealthKitFetcher.query(start:end:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #2 in HealthKitFetcher.query(start:end:)(v2);
}

uint64_t sub_269947438()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v5 + *(v3 + 64);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v5, 1))
  {
    (*(v7 + 8))(v2 + v5, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_2699475D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269947610()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699476A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699476E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269947780()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699477C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269947800()
{
  MEMORY[0x277D82BD8](v0[2]);
  MEMORY[0x277D82BD8](v0[3]);
  v1 = v0[4];

  v2 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_2699478C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269947900()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269947A30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269947A70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269947B08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269947B48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type [HKQuantityType] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HKQuantityType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKQuantityType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo14HKQuantityTypeCGMd, &_sSaySo14HKQuantityTypeCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKQuantityType] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HKQuantityType and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type HKQuantityType and conformance NSObject;
  if (!lazy protocol witness table cache variable for type HKQuantityType and conformance NSObject)
  {
    type metadata accessor for HKQuantityType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKQuantityType and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKQuantityType and conformance NSObject;
  if (!lazy protocol witness table cache variable for type HKQuantityType and conformance NSObject)
  {
    type metadata accessor for HKQuantityType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKQuantityType and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_269947C90()
{
  v3 = *(type metadata accessor for Date() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_269947D5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269947D9C()
{
  v3 = *(type metadata accessor for Date() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_269947E68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269947F00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269947F40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269947FD8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269948018()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269948058()
{
  v3 = *(type metadata accessor for Date() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_269948124()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269948164()
{
  v3 = *(type metadata accessor for Date() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_269948230()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699482FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26994833C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699483D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269948414()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699484AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699484EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699485D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269948614()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269948680()
{
  v1 = v0[2];

  MEMORY[0x277D82BD8](v0[3]);
  v2 = v0[4];

  return swift_deallocObject();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

__n128 __swift_memcpy32_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for HealthKitFetcher(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 32))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HealthKitFetcher(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GetHealthQuantityIntentResponse and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type GetHealthQuantityIntentResponse and conformance NSObject;
  if (!lazy protocol witness table cache variable for type GetHealthQuantityIntentResponse and conformance NSObject)
  {
    type metadata accessor for GetHealthQuantityIntentResponse();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type GetHealthQuantityIntentResponse and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Date? and conformance A?()
{
  v2 = lazy protocol witness table cache variable for type Date? and conformance A?;
  if (!lazy protocol witness table cache variable for type Date? and conformance A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Date? and conformance A?);
    return WitnessTable;
  }

  return v2;
}

id LogPeriodIntent.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for LogPeriodIntent();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id LogPeriodIntent.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id LogPeriodIntent.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for LogPeriodIntent();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id LogPeriodIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = MEMORY[0x26D6492A0](a1);

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v11 initWithIdentifier_backingStore_];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v7);
  return v5;
}

id LogPeriodIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v12 = a1;
  v13 = a2;
  v11 = a3;

  if (a2)
  {
    v5 = MEMORY[0x26D6492A0](a1);

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = 0;
  v10.super_class = type metadata accessor for LogPeriodIntent();
  v4 = objc_msgSendSuper2(&v10, sel_initWithIdentifier_backingStore_, v6, a3);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v4);
  v14 = v4;
  MEMORY[0x277D82BD8](a3);

  MEMORY[0x277D82BD8](v14);
  return v4;
}

id LogPeriodIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = objc_allocWithZone(v5);
  v16 = MEMORY[0x26D6492A0](a1, a2);
  v18 = MEMORY[0x26D6492A0](a3, a4);
  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:isa];
  }

  else
  {
    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:0];
  }

  v9 = v6;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v18);

  MEMORY[0x277D82BD8](v16);

  return v9;
}

id LogPeriodIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v20 = a1;
  v21 = a2;
  v18 = a3;
  v19 = a4;
  v17 = a5;

  v11 = MEMORY[0x26D6492A0](a1, a2);

  v14 = MEMORY[0x26D6492A0](a3, a4);

  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v8 = isa;
  }

  else
  {
    v8 = 0;
  }

  v16.receiver = 0;
  v16.super_class = type metadata accessor for LogPeriodIntent();
  v6 = objc_msgSendSuper2(&v16, sel_initWithDomain_verb_parametersByName_, v11, v14, v8);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BE0](v6);
  v22 = v6;

  MEMORY[0x277D82BD8](v22);
  return v6;
}

id LogPeriodIntent.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LogPeriodIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LogPeriodIntentResponseCode.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
    case 100:
      return 100;
    case 101:
      return 101;
    case 102:
      return 102;
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LogPeriodIntentResponseCode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = LogPeriodIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance LogPeriodIntentResponseCode(void *a1@<X8>)
{
  v2 = *v1;
  LogPeriodIntentResponseCode.rawValue.getter();
  *a1 = v3;
}

uint64_t LogPeriodIntentResponse.code.getter()
{
  v2 = (v0 + OBJC_IVAR___LogPeriodIntentResponse_code);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t LogPeriodIntentResponse.code.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___LogPeriodIntentResponse_code);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for LogPeriodIntentResponse.code : LogPeriodIntentResponse@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = LogPeriodIntentResponse.code.getter();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path setter for LogPeriodIntentResponse.code : LogPeriodIntentResponse(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  LogPeriodIntentResponse.code.setter(v4);
  return MEMORY[0x277D82BD8](v3);
}

char *LogPeriodIntentResponse.init(code:userActivity:)(uint64_t a1, uint64_t a2)
{
  v6 = [v7 init];
  MEMORY[0x277D82BE0](v6);
  v3 = &v6[OBJC_IVAR___LogPeriodIntentResponse_code];
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  MEMORY[0x277D82BE0](v6);
  [v6 setUserActivity_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](v6);
  return v6;
}

id LogPeriodIntentResponse.init()()
{
  v3 = 0;
  *OBJC_IVAR___LogPeriodIntentResponse_code = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for LogPeriodIntentResponse();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id LogPeriodIntentResponse.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id LogPeriodIntentResponse.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___LogPeriodIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for LogPeriodIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id LogPeriodIntentResponse.__allocating_init(backingStore:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithBackingStore_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id LogPeriodIntentResponse.init(backingStore:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___LogPeriodIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for LogPeriodIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id LogPeriodIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  v8 = objc_allocWithZone(v1);
  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v2 = [v8 initWithPropertiesByName_];
  }

  else
  {
    v2 = [v8 initWithPropertiesByName_];
  }

  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

id LogPeriodIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  v9 = 0;
  v8 = a1;
  *OBJC_IVAR___LogPeriodIntentResponse_code = 0;

  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v5 = isa;
  }

  else
  {
    v5 = 0;
  }

  v7.receiver = v9;
  v7.super_class = type metadata accessor for LogPeriodIntentResponse();
  v3 = objc_msgSendSuper2(&v7, sel_initWithPropertiesByName_, v5);
  MEMORY[0x277D82BD8](v5);
  if (v3)
  {
    MEMORY[0x277D82BE0](v3);
    v9 = v3;

    MEMORY[0x277D82BD8](v9);
    return v3;
  }

  else
  {
    MEMORY[0x277D82BD8](0);

    return 0;
  }
}

id LogPeriodIntentResponse.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LogPeriodIntentResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type LogPeriodIntentResponseCode and conformance LogPeriodIntentResponseCode()
{
  v2 = lazy protocol witness table cache variable for type LogPeriodIntentResponseCode and conformance LogPeriodIntentResponseCode;
  if (!lazy protocol witness table cache variable for type LogPeriodIntentResponseCode and conformance LogPeriodIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type LogPeriodIntentResponseCode and conformance LogPeriodIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type LogPeriodIntentResponseCode and conformance LogPeriodIntentResponseCode;
  if (!lazy protocol witness table cache variable for type LogPeriodIntentResponseCode and conformance LogPeriodIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type LogPeriodIntentResponseCode and conformance LogPeriodIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

id MatchedMedSchedule.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = objc_allocWithZone(v6);
  if (a2)
  {
    v12 = MEMORY[0x26D6492A0](a1);

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v11 = MEMORY[0x26D6492A0](a3, a4);
  if (a6)
  {
    v9 = MEMORY[0x26D6492A0](a5);

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v8 = [v20 initWithIdentifier:v13 displayString:v11 pronunciationHint:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);

  MEMORY[0x277D82BD8](v13);
  return v8;
}

id MatchedMedSchedule.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = 0;
  v24 = a1;
  v25 = a2;
  v22 = a3;
  v23 = a4;
  v20 = a5;
  v21 = a6;

  if (a2)
  {
    v11 = MEMORY[0x26D6492A0](a1);

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v10 = MEMORY[0x26D6492A0](a3, a4);

  if (a6)
  {
    v8 = MEMORY[0x26D6492A0](a5);

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v19.receiver = 0;
  v19.super_class = type metadata accessor for MatchedMedSchedule();
  v7 = objc_msgSendSuper2(&v19, sel_initWithIdentifier_displayString_pronunciationHint_, v12, v10, v9);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BE0](v7);
  v26 = v7;

  MEMORY[0x277D82BD8](v26);
  return v7;
}

id MatchedMedSchedule.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id MatchedMedSchedule.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for MatchedMedSchedule();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id MatchedMedSchedule.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MatchedMedSchedule();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static MatchedMedScheduleResolutionResult.success(with:)(uint64_t a1)
{
  v7 = a1;
  v6 = v1;
  v5.receiver = swift_getObjCClassFromMetadata();
  v5.super_class = &OBJC_METACLASS___MatchedMedScheduleResolutionResult;
  v2 = objc_msgSendSuper2(&v5, sel_successWithResolvedObject_, a1);

  return v2;
}

id static MatchedMedScheduleResolutionResult.disambiguation(with:)(uint64_t a1)
{
  v8 = a1;
  v7 = v1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  type metadata accessor for MatchedMedSchedule();
  type metadata accessor for INObject();
  _arrayForceCast<A, B>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6.receiver = ObjCClassFromMetadata;
  v6.super_class = &OBJC_METACLASS___MatchedMedScheduleResolutionResult;
  v5 = objc_msgSendSuper2(&v6, sel_disambiguationWithObjectsToDisambiguate_, isa);
  MEMORY[0x277D82BD8](isa);
  return v5;
}

id static MatchedMedScheduleResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v10 = a1;
  v9 = v1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  MEMORY[0x277D82BE0](a1);
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = ObjCClassFromMetadata;
  v8.super_class = &OBJC_METACLASS___MatchedMedScheduleResolutionResult;
  v4 = objc_msgSendSuper2(&v8, sel_confirmationRequiredWithObjectToConfirm_, v5);
  MEMORY[0x277D82BD8](v3);
  return v4;
}

void static MatchedMedScheduleResolutionResult.success(with:)()
{
  implicit closure #1 in default argument 0 of fatalError(_:file:line:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_26994B230(void *a1)
{
  (MEMORY[0x277D82BD8])();

  return a1;
}

void static MatchedMedScheduleResolutionResult.disambiguation(with:)()
{
  implicit closure #1 in default argument 0 of fatalError(_:file:line:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_26994B34C(void *a1)
{

  (MEMORY[0x277D82BD8])();

  return a1;
}

void static MatchedMedScheduleResolutionResult.confirmationRequired(with:)()
{
  implicit closure #1 in default argument 0 of fatalError(_:file:line:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_26994B454(void *a1)
{
  (MEMORY[0x277D82BD8])();

  return a1;
}

id MatchedMedScheduleResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v7 = [v4 initWithJSONDictionary_forIntent_];
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](isa);

  return v7;
}

id MatchedMedScheduleResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v9 = a1;
  v8 = a2;

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = 0;
  v7.super_class = type metadata accessor for MatchedMedScheduleResolutionResult();
  v6 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, isa, a2);
  MEMORY[0x277D82BD8](isa);
  if (v6)
  {
    MEMORY[0x277D82BE0](v6);
    v10 = v6;
    MEMORY[0x277D82BD8](a2);

    MEMORY[0x277D82BD8](v10);
    return v6;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a2);

    return 0;
  }
}

id MatchedMedScheduleResolutionResult.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MatchedMedScheduleResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getPreferredUnit(for:store:)(uint64_t a1, uint64_t a2)
{
  v2[45] = a2;
  v2[44] = a1;
  v2[33] = v2;
  v2[34] = 0;
  v2[35] = 0;
  v2[37] = 0;
  v2[39] = 0;
  v2[40] = 0;
  v2[43] = 0;
  v3 = type metadata accessor for Logger();
  v2[46] = v3;
  v6 = *(v3 - 8);
  v2[47] = v6;
  v7 = *(v6 + 64);
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[34] = a1;
  v2[35] = a2;
  v4 = v2[33];

  return MEMORY[0x2822009F8](getPreferredUnit(for:store:), 0);
}

uint64_t getPreferredUnit(for:store:)()
{
  v38 = v0;
  v1 = v0[52];
  v20 = v0[47];
  v22 = v0[46];
  v23 = v0[44];
  v0[33] = v0;
  v21 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *(v20 + 16);
  v0[53] = v2;
  v0[54] = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v2(v1, v21, v22);
  swift_endAccess();
  MEMORY[0x277D82BE0](v23);
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  v26 = swift_allocObject();
  *(v26 + 16) = 64;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
  *(v25 + 24) = v24;
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v28 + 24) = v25;
  v0[55] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v29 = v3;

  *v29 = partial apply for closure #1 in OSLogArguments.append(_:);
  v29[1] = v26;

  v29[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v29[3] = v27;

  v29[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v29[5] = v28;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v30, v31))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v17 = createStorage<A>(capacity:type:)(1);
    v18 = createStorage<A>(capacity:type:)(0);
    v33 = buf;
    v34 = v17;
    v35 = v18;
    serialize(_:at:)(2, &v33);
    serialize(_:at:)(1, &v33);
    v36 = partial apply for closure #1 in OSLogArguments.append(_:);
    v37 = v26;
    closure #1 in osLogInternal(_:log:type:)(&v36, &v33, &v34, &v35);
    v36 = partial apply for closure #1 in OSLogArguments.append(_:);
    v37 = v27;
    closure #1 in osLogInternal(_:log:type:)(&v36, &v33, &v34, &v35);
    v36 = partial apply for closure #1 in OSLogArguments.append(_:);
    v37 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v36, &v33, &v34, &v35);
    _os_log_impl(&dword_269912000, v30, v31, "Getting preferred unit for quantityType: %@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v17, 1, v15);
    destroyStorage<A>(_:count:)(v18, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  *(v19 + 448) = 0;
  v12 = *(v19 + 416);
  v13 = *(v19 + 368);
  v14 = *(v19 + 360);
  v11 = *(v19 + 376);
  MEMORY[0x277D82BD8](v30);
  v4 = *(v11 + 8);
  *(v19 + 456) = v4;
  *(v19 + 464) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v12, v13);
  MEMORY[0x277D82BE0](v14);
  *(v19 + 288) = v14;
  if (*(v19 + 288))
  {
    v32 = *(v19 + 288);
  }

  else
  {
    type metadata accessor for HKHealthStore();
    v32 = NSDateFormatter.__allocating_init()();
    if (*(v19 + 288))
    {
      outlined destroy of HealthKitPersistor((v19 + 288));
    }
  }

  v8 = *(v19 + 352);
  *(v19 + 472) = v32;
  *(v19 + 296) = v32;
  *(v19 + 480) = type metadata accessor for HKQuantityType();
  _allocateUninitializedArray<A>(_:)();
  v7 = v5;
  MEMORY[0x277D82BE0](v8);
  *v7 = v8;
  _finalizeUninitializedArray<A>(_:)();
  *(v19 + 488) = lazy protocol witness table accessor for type HKQuantityType and conformance NSObject();
  Set.init(arrayLiteral:)();
  isa = Set._bridgeToObjectiveC()().super.isa;
  *(v19 + 496) = isa;

  *(v19 + 16) = *(v19 + 264);
  *(v19 + 56) = v19 + 304;
  *(v19 + 24) = getPreferredUnit(for:store:);
  v9 = swift_continuation_init();
  *(v19 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDySo14HKQuantityTypeCSo6HKUnitCGs5Error_pGMd, &_sSccySDySo14HKQuantityTypeCSo6HKUnitCGs5Error_pGMR);
  *(v19 + 112) = v9;
  *(v19 + 80) = MEMORY[0x277D85DD0];
  *(v19 + 88) = 1107296256;
  *(v19 + 92) = 0;
  *(v19 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary, @unowned NSError?) -> () with result type [HKQuantityType : HKUnit];
  *(v19 + 104) = &block_descriptor_1;
  [v32 preferredUnitsForQuantityTypes:isa completion:?];

  return MEMORY[0x282200938](v19 + 16);
}

{
  v7 = *v0;
  v8 = *v0;
  v6 = (v8 + 264);
  *(v8 + 264) = *v0;
  v1 = *(v7 + 48);
  *(v8 + 504) = v1;
  if (v1)
  {
    v4 = *v6;
    v3 = getPreferredUnit(for:store:);
  }

  else
  {
    v2 = *v6;
    v3 = getPreferredUnit(for:store:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v169 = v0;
  v1 = v0[62];
  v146 = v0[55];
  v130 = v0[54];
  v131 = v0[53];
  v2 = v0[51];
  v129 = v0[46];
  v134 = v0[44];
  v0[33] = v0;
  v132 = v0[38];
  v0[40] = v132;
  MEMORY[0x277D82BD8](v1);
  v128 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v131(v2, v128, v129);
  swift_endAccess();

  v133 = swift_allocObject();
  *(v133 + 16) = v132;

  v135 = swift_allocObject();
  *(v135 + 16) = partial apply for implicit closure #3 in getPreferredUnit(for:store:);
  *(v135 + 24) = v133;

  MEMORY[0x277D82BE0](v134);
  v137 = swift_allocObject();
  *(v137 + 16) = v134;
  v147 = Logger.logObject.getter();
  v148 = static os_log_type_t.debug.getter();
  v139 = swift_allocObject();
  *(v139 + 16) = 32;
  v140 = swift_allocObject();
  *(v140 + 16) = 8;
  v136 = swift_allocObject();
  *(v136 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_0;
  *(v136 + 24) = v135;
  v141 = swift_allocObject();
  *(v141 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v141 + 24) = v136;
  v142 = swift_allocObject();
  *(v142 + 16) = 64;
  v143 = swift_allocObject();
  *(v143 + 16) = 8;
  v138 = swift_allocObject();
  *(v138 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
  *(v138 + 24) = v137;
  v144 = swift_allocObject();
  *(v144 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v144 + 24) = v138;
  _allocateUninitializedArray<A>(_:)();
  v145 = v3;

  *v145 = partial apply for closure #1 in OSLogArguments.append(_:);
  v145[1] = v139;

  v145[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v145[3] = v140;

  v145[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v145[5] = v141;

  v145[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v145[7] = v142;

  v145[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v145[9] = v143;

  v145[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v145[11] = v144;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v147, v148))
  {
    v4 = v127[56];
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v125 = createStorage<A>(capacity:type:)(1);
    v126 = createStorage<A>(capacity:type:)(1);
    v164 = buf;
    v165 = v125;
    v166 = v126;
    serialize(_:at:)(2, &v164);
    serialize(_:at:)(2, &v164);
    v167 = partial apply for closure #1 in OSLogArguments.append(_:);
    v168 = v139;
    closure #1 in osLogInternal(_:log:type:)(&v167, &v164, &v165, &v166);
    if (v4)
    {
    }

    v167 = partial apply for closure #1 in OSLogArguments.append(_:);
    v168 = v140;
    closure #1 in osLogInternal(_:log:type:)(&v167, &v164, &v165, &v166);
    v167 = partial apply for closure #1 in OSLogArguments.append(_:);
    v168 = v141;
    closure #1 in osLogInternal(_:log:type:)(&v167, &v164, &v165, &v166);
    v167 = partial apply for closure #1 in OSLogArguments.append(_:);
    v168 = v142;
    closure #1 in osLogInternal(_:log:type:)(&v167, &v164, &v165, &v166);
    v167 = partial apply for closure #1 in OSLogArguments.append(_:);
    v168 = v143;
    closure #1 in osLogInternal(_:log:type:)(&v167, &v164, &v165, &v166);
    v167 = partial apply for closure #1 in OSLogArguments.append(_:);
    v168 = v144;
    closure #1 in osLogInternal(_:log:type:)(&v167, &v164, &v165, &v166);
    _os_log_impl(&dword_269912000, v147, v148, "Received preferredUnits=%s for quantityType=%@", buf, 0x16u);
    destroyStorage<A>(_:count:)(v125, 1, v123);
    destroyStorage<A>(_:count:)(v126, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

    v122 = 0;
  }

  else
  {

    v122 = v127[56];
  }

  v120 = v127[61];
  v119 = v127[60];
  v116 = v127[58];
  v117 = v127[57];
  v114 = v127[51];
  v115 = v127[46];
  v118 = v127[44];
  MEMORY[0x277D82BD8](v147);
  v117(v114, v115);
  MEMORY[0x277D82BE0](v118);
  v127[42] = v118;
  v6 = type metadata accessor for HKUnit();
  MEMORY[0x26D649240](v127 + 42, v132, v119, v6, v120);
  MEMORY[0x277D82BD8](v127[42]);
  v121 = v127[41];
  if (v121)
  {
    v98 = v127[41];
    v111 = v127[55];
    v96 = v127[54];
    v97 = v127[53];
    v7 = v127[50];
    v95 = v127[46];
    v99 = v127[44];
    v127[43] = v121;
    v94 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v97(v7, v94, v95);
    swift_endAccess();
    MEMORY[0x277D82BE0](v121);
    v100 = swift_allocObject();
    *(v100 + 16) = v121;
    MEMORY[0x277D82BE0](v99);
    v102 = swift_allocObject();
    *(v102 + 16) = v99;
    oslog = Logger.logObject.getter();
    v113 = static os_log_type_t.debug.getter();
    v104 = swift_allocObject();
    *(v104 + 16) = 64;
    v105 = swift_allocObject();
    *(v105 + 16) = 8;
    v101 = swift_allocObject();
    *(v101 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
    *(v101 + 24) = v100;
    v106 = swift_allocObject();
    *(v106 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v106 + 24) = v101;
    v107 = swift_allocObject();
    *(v107 + 16) = 64;
    v108 = swift_allocObject();
    *(v108 + 16) = 8;
    v103 = swift_allocObject();
    *(v103 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
    *(v103 + 24) = v102;
    v109 = swift_allocObject();
    *(v109 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v109 + 24) = v103;
    _allocateUninitializedArray<A>(_:)();
    v110 = v8;

    *v110 = partial apply for closure #1 in OSLogArguments.append(_:);
    v110[1] = v104;

    v110[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v110[3] = v105;

    v110[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v110[5] = v106;

    v110[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v110[7] = v107;

    v110[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v110[9] = v108;

    v110[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v110[11] = v109;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v113))
    {
      v91 = static UnsafeMutablePointer.allocate(capacity:)();
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v92 = createStorage<A>(capacity:type:)(2);
      v93 = createStorage<A>(capacity:type:)(0);
      v159 = v91;
      v160 = v92;
      v161 = v93;
      serialize(_:at:)(2, &v159);
      serialize(_:at:)(2, &v159);
      v162 = partial apply for closure #1 in OSLogArguments.append(_:);
      v163 = v104;
      closure #1 in osLogInternal(_:log:type:)(&v162, &v159, &v160, &v161);
      if (v122)
      {
      }

      v162 = partial apply for closure #1 in OSLogArguments.append(_:);
      v163 = v105;
      closure #1 in osLogInternal(_:log:type:)(&v162, &v159, &v160, &v161);
      v162 = partial apply for closure #1 in OSLogArguments.append(_:);
      v163 = v106;
      closure #1 in osLogInternal(_:log:type:)(&v162, &v159, &v160, &v161);
      v162 = partial apply for closure #1 in OSLogArguments.append(_:);
      v163 = v107;
      closure #1 in osLogInternal(_:log:type:)(&v162, &v159, &v160, &v161);
      v162 = partial apply for closure #1 in OSLogArguments.append(_:);
      v163 = v108;
      closure #1 in osLogInternal(_:log:type:)(&v162, &v159, &v160, &v161);
      v162 = partial apply for closure #1 in OSLogArguments.append(_:);
      v163 = v109;
      closure #1 in osLogInternal(_:log:type:)(&v162, &v159, &v160, &v161);
      _os_log_impl(&dword_269912000, oslog, v113, "Retrieved preferred unit=%@ for quantityType=%@", v91, 0x16u);
      destroyStorage<A>(_:count:)(v92, 2, v90);
      destroyStorage<A>(_:count:)(v93, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v91, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v84 = v127[59];
    v82 = v127[58];
    v83 = v127[57];
    v85 = v127[52];
    v86 = v127[51];
    v87 = v127[50];
    v88 = v127[49];
    v89 = v127[48];
    v81 = v127[46];
    MEMORY[0x277D82BD8](oslog);
    v83(v87, v81);

    MEMORY[0x277D82BD8](v84);

    v9 = *(v127[33] + 8);
    v10 = v127[33];

    return v9(v121);
  }

  else
  {
    v78 = v127[55];
    v63 = v127[54];
    v64 = v127[53];
    v11 = v127[49];
    v62 = v127[46];
    v65 = v127[44];
    v61 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v64(v11, v61, v62);
    swift_endAccess();
    MEMORY[0x277D82BE0](v65);
    v67 = swift_allocObject();
    *(v67 + 16) = v65;

    v66 = swift_allocObject();
    *(v66 + 16) = v132;

    v69 = swift_allocObject();
    *(v69 + 16) = partial apply for implicit closure #3 in getPreferredUnit(for:store:);
    *(v69 + 24) = v66;

    log = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    v71 = swift_allocObject();
    *(v71 + 16) = 64;
    v72 = swift_allocObject();
    *(v72 + 16) = 8;
    v68 = swift_allocObject();
    *(v68 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
    *(v68 + 24) = v67;
    v73 = swift_allocObject();
    *(v73 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v73 + 24) = v68;
    v74 = swift_allocObject();
    *(v74 + 16) = 32;
    v75 = swift_allocObject();
    *(v75 + 16) = 8;
    v70 = swift_allocObject();
    *(v70 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_0;
    *(v70 + 24) = v69;
    v76 = swift_allocObject();
    *(v76 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v76 + 24) = v70;
    _allocateUninitializedArray<A>(_:)();
    v77 = v12;

    *v77 = partial apply for closure #1 in OSLogArguments.append(_:);
    v77[1] = v71;

    v77[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v77[3] = v72;

    v77[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v77[5] = v73;

    v77[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v77[7] = v74;

    v77[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v77[9] = v75;

    v77[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v77[11] = v76;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v80))
    {
      v58 = static UnsafeMutablePointer.allocate(capacity:)();
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v59 = createStorage<A>(capacity:type:)(1);
      v60 = createStorage<A>(capacity:type:)(1);
      v154 = v58;
      v155 = v59;
      v156 = v60;
      serialize(_:at:)(2, &v154);
      serialize(_:at:)(2, &v154);
      v157 = partial apply for closure #1 in OSLogArguments.append(_:);
      v158 = v71;
      closure #1 in osLogInternal(_:log:type:)(&v157, &v154, &v155, &v156);
      if (v122)
      {
      }

      v157 = partial apply for closure #1 in OSLogArguments.append(_:);
      v158 = v72;
      closure #1 in osLogInternal(_:log:type:)(&v157, &v154, &v155, &v156);
      v157 = partial apply for closure #1 in OSLogArguments.append(_:);
      v158 = v73;
      closure #1 in osLogInternal(_:log:type:)(&v157, &v154, &v155, &v156);
      v157 = partial apply for closure #1 in OSLogArguments.append(_:);
      v158 = v74;
      closure #1 in osLogInternal(_:log:type:)(&v157, &v154, &v155, &v156);
      v157 = partial apply for closure #1 in OSLogArguments.append(_:);
      v158 = v75;
      closure #1 in osLogInternal(_:log:type:)(&v157, &v154, &v155, &v156);
      v157 = partial apply for closure #1 in OSLogArguments.append(_:);
      v158 = v76;
      closure #1 in osLogInternal(_:log:type:)(&v157, &v154, &v155, &v156);
      _os_log_impl(&dword_269912000, log, v80, "Failed to find quantityType=%@ in preferredUnits=%s", v58, 0x16u);
      destroyStorage<A>(_:count:)(v59, 1, v57);
      destroyStorage<A>(_:count:)(v60, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v58, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v35 = v127[59];
    v33 = v127[58];
    v34 = v127[57];
    v31 = v127[49];
    v32 = v127[46];
    MEMORY[0x277D82BD8](log);
    v34(v31, v32);
    lazy protocol witness table accessor for type HealthKitLocalizationError and conformance HealthKitLocalizationError();
    v41 = swift_allocError();
    swift_willThrow();

    MEMORY[0x277D82BD8](v35);
    v54 = v127[55];
    v38 = v127[54];
    v39 = v127[53];
    v13 = v127[48];
    v37 = v127[46];
    v40 = v127[44];
    v14 = v41;
    v127[39] = v41;
    v36 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v39(v13, v36, v37);
    swift_endAccess();
    MEMORY[0x277D82BE0](v40);
    v42 = swift_allocObject();
    *(v42 + 16) = v40;
    v15 = v41;
    v44 = swift_allocObject();
    *(v44 + 16) = v41;
    default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    v47 = swift_allocObject();
    *(v47 + 16) = 64;
    v48 = swift_allocObject();
    *(v48 + 16) = 8;
    v43 = swift_allocObject();
    *(v43 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
    *(v43 + 24) = v42;
    v49 = swift_allocObject();
    *(v49 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v49 + 24) = v43;
    v50 = swift_allocObject();
    *(v50 + 16) = 64;
    v51 = swift_allocObject();
    *(v51 + 16) = 8;
    v45 = swift_allocObject();
    *(v45 + 16) = partial apply for implicit closure #10 in getPreferredUnit(for:store:);
    *(v45 + 24) = v44;
    v46 = swift_allocObject();
    *(v46 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
    *(v46 + 24) = v45;
    v52 = swift_allocObject();
    *(v52 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v52 + 24) = v46;
    _allocateUninitializedArray<A>(_:)();
    v53 = v16;

    *v53 = partial apply for closure #1 in OSLogArguments.append(_:);
    v53[1] = v47;

    v53[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v53[3] = v48;

    v53[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v53[5] = v49;

    v53[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v53[7] = v50;

    v53[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v53[9] = v51;

    v53[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v53[11] = v52;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v55, v56))
    {
      v28 = static UnsafeMutablePointer.allocate(capacity:)();
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v29 = createStorage<A>(capacity:type:)(2);
      v30 = createStorage<A>(capacity:type:)(0);
      v149 = v28;
      v150 = v29;
      v151 = v30;
      serialize(_:at:)(2, &v149);
      serialize(_:at:)(2, &v149);
      v152 = partial apply for closure #1 in OSLogArguments.append(_:);
      v153 = v47;
      closure #1 in osLogInternal(_:log:type:)(&v152, &v149, &v150, &v151);
      v152 = partial apply for closure #1 in OSLogArguments.append(_:);
      v153 = v48;
      closure #1 in osLogInternal(_:log:type:)(&v152, &v149, &v150, &v151);
      v152 = partial apply for closure #1 in OSLogArguments.append(_:);
      v153 = v49;
      closure #1 in osLogInternal(_:log:type:)(&v152, &v149, &v150, &v151);
      v152 = partial apply for closure #1 in OSLogArguments.append(_:);
      v153 = v50;
      closure #1 in osLogInternal(_:log:type:)(&v152, &v149, &v150, &v151);
      v152 = partial apply for closure #1 in OSLogArguments.append(_:);
      v153 = v51;
      closure #1 in osLogInternal(_:log:type:)(&v152, &v149, &v150, &v151);
      v152 = partial apply for closure #1 in OSLogArguments.append(_:);
      v153 = v52;
      closure #1 in osLogInternal(_:log:type:)(&v152, &v149, &v150, &v151);
      _os_log_impl(&dword_269912000, v55, v56, "Failed to fetch preferredUnits for quantityType=%@ with error: %@", v28, 0x16u);
      destroyStorage<A>(_:count:)(v29, 2, v27);
      destroyStorage<A>(_:count:)(v30, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v28, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v20 = v127[58];
    v21 = v127[57];
    v22 = v127[52];
    v23 = v127[51];
    v24 = v127[50];
    v25 = v127[49];
    v26 = v127[48];
    v19 = v127[46];
    MEMORY[0x277D82BD8](v55);
    v21(v26, v19);
    swift_willThrow();

    v17 = *(v127[33] + 8);
    v18 = v127[33];

    return v17();
  }
}

{
  v50 = v0;
  v1 = v0[63];
  v22 = v0[62];
  v23 = v0[59];
  v0[33] = v0;
  swift_willThrow();
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  v29 = v0[63];
  v42 = v0[55];
  v26 = v0[54];
  v27 = v0[53];
  v2 = v0[48];
  v25 = v0[46];
  v28 = v0[44];
  v3 = v29;
  v0[39] = v29;
  v24 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v27(v2, v24, v25);
  swift_endAccess();
  MEMORY[0x277D82BE0](v28);
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  v4 = v29;
  v32 = swift_allocObject();
  *(v32 + 16) = v29;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  v35 = swift_allocObject();
  *(v35 + 16) = 64;
  v36 = swift_allocObject();
  *(v36 + 16) = 8;
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
  *(v31 + 24) = v30;
  v37 = swift_allocObject();
  *(v37 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v37 + 24) = v31;
  v38 = swift_allocObject();
  *(v38 + 16) = 64;
  v39 = swift_allocObject();
  *(v39 + 16) = 8;
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for implicit closure #10 in getPreferredUnit(for:store:);
  *(v33 + 24) = v32;
  v34 = swift_allocObject();
  *(v34 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  *(v34 + 24) = v33;
  v40 = swift_allocObject();
  *(v40 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v40 + 24) = v34;
  _allocateUninitializedArray<A>(_:)();
  v41 = v5;

  *v41 = partial apply for closure #1 in OSLogArguments.append(_:);
  v41[1] = v35;

  v41[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v41[3] = v36;

  v41[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v41[5] = v37;

  v41[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v41[7] = v38;

  v41[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v41[9] = v39;

  v41[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v41[11] = v40;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v44))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v19 = createStorage<A>(capacity:type:)(2);
    v20 = createStorage<A>(capacity:type:)(0);
    v45 = buf;
    v46 = v19;
    v47 = v20;
    serialize(_:at:)(2, &v45);
    serialize(_:at:)(2, &v45);
    v48 = partial apply for closure #1 in OSLogArguments.append(_:);
    v49 = v35;
    closure #1 in osLogInternal(_:log:type:)(&v48, &v45, &v46, &v47);
    v48 = partial apply for closure #1 in OSLogArguments.append(_:);
    v49 = v36;
    closure #1 in osLogInternal(_:log:type:)(&v48, &v45, &v46, &v47);
    v48 = partial apply for closure #1 in OSLogArguments.append(_:);
    v49 = v37;
    closure #1 in osLogInternal(_:log:type:)(&v48, &v45, &v46, &v47);
    v48 = partial apply for closure #1 in OSLogArguments.append(_:);
    v49 = v38;
    closure #1 in osLogInternal(_:log:type:)(&v48, &v45, &v46, &v47);
    v48 = partial apply for closure #1 in OSLogArguments.append(_:);
    v49 = v39;
    closure #1 in osLogInternal(_:log:type:)(&v48, &v45, &v46, &v47);
    v48 = partial apply for closure #1 in OSLogArguments.append(_:);
    v49 = v40;
    closure #1 in osLogInternal(_:log:type:)(&v48, &v45, &v46, &v47);
    _os_log_impl(&dword_269912000, oslog, v44, "Failed to fetch preferredUnits for quantityType=%@ with error: %@", buf, 0x16u);
    destroyStorage<A>(_:count:)(v19, 2, v17);
    destroyStorage<A>(_:count:)(v20, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v10 = v21[58];
  v11 = v21[57];
  v12 = v21[52];
  v13 = v21[51];
  v14 = v21[50];
  v15 = v21[49];
  v16 = v21[48];
  v9 = v21[46];
  MEMORY[0x277D82BD8](oslog);
  v11(v16, v9);
  swift_willThrow();

  v6 = *(v21[33] + 8);
  v7 = v21[33];

  return v6();
}

uint64_t localizedUnitName(for:store:)(uint64_t a1, unint64_t a2)
{
  v12 = a1;
  v11 = a2;
  MEMORY[0x277D82BE0](a2);
  v9 = a2;
  if (a2)
  {
    v10 = v9;
  }

  else
  {
    type metadata accessor for HKHealthStore();
    v10 = NSDateFormatter.__allocating_init()();
  }

  v4 = v10;
  type metadata accessor for HKUnitPreferenceController();
  MEMORY[0x277D82BE0](v4);
  v8 = HKUnitPreferenceController.__allocating_init(healthStore:)(v4);
  v3 = [v8 localizedDisplayNameForDisplayType_];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v4);
  return v5;
}

uint64_t localizedPreferredUnitName(for:value:store:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 96) = a4;
  *(v4 + 25) = a3;
  *(v4 + 88) = a2;
  *(v4 + 80) = a1;
  *(v4 + 32) = v4;
  *(v4 + 40) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 48) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 40) = a1;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3 & 1;
  *(v4 + 48) = a4;
  v5 = *(v4 + 32);
  return MEMORY[0x2822009F8](localizedPreferredUnitName(for:value:store:), 0);
}

uint64_t localizedPreferredUnitName(for:value:store:)()
{
  v1 = v0[12];
  v6 = v1;
  v0[4] = v0;
  MEMORY[0x277D82BE0](v1);
  v0[7] = v6;
  if (v0[7])
  {
    v7 = v5[7];
  }

  else
  {
    type metadata accessor for HKHealthStore();
    v7 = NSDateFormatter.__allocating_init()();
    if (v5[7])
    {
      outlined destroy of HealthKitPersistor(v5 + 7);
    }
  }

  v5[13] = v7;
  v5[8] = v7;
  MEMORY[0x277D82BE0](v7);
  v2 = swift_task_alloc();
  v5[14] = v2;
  *v2 = v5[4];
  v2[1] = localizedPreferredUnitName(for:value:store:);
  v3 = v5[10];

  return getPreferredUnit(for:store:)(v3, v7);
}

{
  fora.super.isa = *(v0 + 120);
  v1 = *(v0 + 104);
  store = v1;
  v7 = *(v0 + 25);
  value = *(v0 + 88);
  *(v0 + 32) = v0;
  *(v0 + 72) = fora;
  MEMORY[0x277D82BE0](v1);
  v12.is_nil = value;
  v11.is_nil = store;
  v11.value.super.isa = (v7 & 1);
  v2 = localizedUnitName(for:value:store:)(fora, v12, v11);
  MEMORY[0x277D82BD8](store);
  MEMORY[0x277D82BD8](fora.super.isa);
  MEMORY[0x277D82BD8](store);
  v3 = *(*(v0 + 32) + 8);
  v4 = *(v0 + 32);

  return v3(v2._countAndFlagsBits, v2._object);
}

{
  v6 = *(v0 + 104);
  *(v0 + 32) = v0;
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v6);
  v1 = v0;
  v2 = *(*(v0 + 32) + 8);
  v3 = *(v0 + 32);
  v4 = *(v1 + 128);

  return v2();
}

uint64_t localizedPreferredUnitName(for:value:store:)(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 112);
  *(v9 + 32) = *v2;
  v10 = (v9 + 32);
  *(v9 + 120) = a1;
  *(v9 + 128) = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = localizedPreferredUnitName(for:value:store:);
  }

  else
  {

    v5 = *v10;
    v6 = localizedPreferredUnitName(for:value:store:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t implicit closure #3 in getPreferredUnit(for:store:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

uint64_t HKHealthStore.query(quantityType:start:end:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = v4;
  v5[11] = a4;
  v5[10] = a3;
  v5[9] = a2;
  v5[8] = a1;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = 0;
  v5[7] = 0;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = v4;
  MEMORY[0x277D82BE0](v4);
  v6 = swift_task_alloc();
  *(v8 + 104) = v6;
  *v6 = *(v8 + 16);
  v6[1] = HKHealthStore.query(quantityType:start:end:);

  return getPreferredUnit(for:store:)(a2, v4);
}

uint64_t HKHealthStore.query(quantityType:start:end:)(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 104);
  *(v9 + 16) = *v2;
  v10 = (v9 + 16);
  *(v9 + 112) = a1;
  *(v9 + 120) = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = HKHealthStore.query(quantityType:start:end:);
  }

  else
  {

    v5 = *v10;
    v6 = HKHealthStore.query(quantityType:start:end:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t HKHealthStore.query(quantityType:start:end:)()
{
  v11 = v0[14];
  v7 = v0[12];
  v9 = v0[11];
  v8 = v0[10];
  v10 = v0[9];
  v0[2] = v0;
  v0[7] = v11;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("query(quantityType:start:end:)", 0x1EuLL, 1);
  v0[16] = v1._object;
  MEMORY[0x277D82BE0](v7);
  MEMORY[0x277D82BE0](v10);
  MEMORY[0x277D82BE0](v11);
  v13 = swift_task_alloc();
  v0[17] = v13;
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = v9;
  v13[5] = v10;
  v13[6] = v11;
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  v12[18] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGSgMd, &_s19SiriWellnessIntents10StatisticsVySdGSgMR);
  *v3 = v12[2];
  v3[1] = HKHealthStore.query(quantityType:start:end:);
  v5 = v12[8];

  return MEMORY[0x2822008A0](v5, 0, 0, v1._countAndFlagsBits, v1._object, partial apply for closure #1 in HKHealthStore.query(quantityType:start:end:), v13, v4);
}

{
  v12 = *v1;
  v2 = *(*v1 + 144);
  v12[2] = *v1;
  v13 = v12 + 2;
  v12[19] = v0;

  if (v0)
  {
    v6 = *v13;
    v5 = HKHealthStore.query(quantityType:start:end:);
  }

  else
  {
    v3 = v12[17];
    v11 = v12[16];
    v10 = v12[14];
    v8 = v12[12];
    v9 = v12[9];

    v4 = *v13;
    v5 = HKHealthStore.query(quantityType:start:end:);
  }

  return MEMORY[0x2822009F8](v5, 0);
}

{
  v1 = *(v0 + 112);
  *(v0 + 16) = v0;
  MEMORY[0x277D82BD8](v1);
  v2 = *(*(v0 + 16) + 8);
  v3 = *(v0 + 16);

  return v2();
}

{
  v1 = v0[12];
  v0[2] = v0;
  MEMORY[0x277D82BD8](v1);
  v2 = v0[15];
  v3 = *(v0[2] + 8);
  v4 = v0[2];

  return v3();
}

{
  v1 = v0[17];
  v8 = v0[16];
  v9 = v0[14];
  v6 = v0[12];
  v7 = v0[9];
  v0[2] = v0;

  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v9);

  MEMORY[0x277D82BD8](v9);
  v2 = v0[19];
  v3 = *(v0[2] + 8);
  v4 = v0[2];

  return v3();
}

uint64_t closure #1 in HKHealthStore.query(quantityType:start:end:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a1;
  v71 = a2;
  v34 = a3;
  v35 = a4;
  v66 = a5;
  v59 = a6;
  v64 = partial apply for closure #1 in closure #1 in HKHealthStore.query(quantityType:start:end:);
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents10StatisticsVySdGSgs5Error_pGMd, &_sScCy19SiriWellnessIntents10StatisticsVySdGSgs5Error_pGMR);
  v50 = *(v54 - 8);
  v51 = v54 - 8;
  v46 = v50;
  v47 = *(v50 + 64);
  v33 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v54);
  v53 = &v32 - v33;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMd, &_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMR);
  v36 = *(v44 - 8);
  v48 = v36;
  v49 = *(v36 + 64);
  v37 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v44);
  v58 = &v32 - v37;
  v38 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](&v32 - v37);
  v68 = &v32 - v38;
  v39 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v7);
  v70 = &v32 - v39;
  v40 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v73 = &v32 - v40;
  v81 = &v32 - v40;
  v80 = v45;
  v79 = a2;
  v78 = v9;
  v77 = v10;
  v76 = v11;
  v75 = v12;
  v41 = v13[12];
  v42 = v13[16];
  v43 = v13[20];
  v14 = HKHealthStore.queryParameters(start:end:)(&v32 - v40, v9, v10);
  v15 = v42;
  v16 = v43;
  v17 = v73;
  v62 = v18;
  *&v73[v41] = v14;
  *&v17[v15] = v19;
  *&v17[v16] = v18;
  type metadata accessor for HKSampleQuery();
  MEMORY[0x277D82BE0](v66);
  outlined init with copy of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(v73, v70);
  v61 = *&v70[*(v44 + 48)];
  v69 = *&v70[*(v44 + 64)];
  outlined init with copy of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(v73, v68);
  v67 = *&v68[*(v44 + 48)];
  v63 = *&v68[*(v44 + 64)];
  (*(v50 + 16))(v53, v45, v54);
  MEMORY[0x277D82BE0](v66);
  MEMORY[0x277D82BE0](v71);
  outlined init with copy of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(v73, v58);
  MEMORY[0x277D82BE0](v59);
  v52 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v55 = (v52 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 8 + *(v48 + 80)) & ~*(v48 + 80);
  v60 = (v57 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  (*(v50 + 32))(v65 + v52, v53, v54);
  v20 = v56;
  v21 = v57;
  v22 = v65;
  v23 = v71;
  v24 = v58;
  *(v65 + v55) = v66;
  *(v22 + v20) = v23;
  outlined init with take of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(v24, (v22 + v21));
  v25 = v61;
  v26 = v62;
  v27 = v63;
  v28 = v64;
  v29 = v65;
  v30 = v66;
  *(v65 + v60) = v59;
  v72 = HKSampleQuery.__allocating_init(sampleType:predicate:limit:sortDescriptors:resultsHandler:)(v30, v25, v26, v27, v28, v29);
  MEMORY[0x277D82BD8](v67);
  outlined destroy of DateInterval?(v68);

  outlined destroy of DateInterval?(v70);
  v74 = v72;
  [v71 executeQuery_];
  MEMORY[0x277D82BD8](v72);
  return outlined destroy of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(v73);
}

uint64_t HKHealthStore.queryParameters(start:end:)(void *a1, uint64_t a2, const void *a3)
{
  v29 = a1;
  v37 = a2;
  v38 = a3;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v43 = 0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSg_So11NSPredicateCSgSaySo16NSSortDescriptorCGSitMd, &_s10Foundation12DateIntervalVSg_So11NSPredicateCSgSaySo16NSSortDescriptorCGSitMR);
  v31 = (*(*(v30 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v30);
  v32 = &v18 - v31;
  v33 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v34 = &v18 - v33;
  v51 = &v18 - v33;
  v35 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v37);
  v36 = &v18 - v35;
  v50 = &v18 - v35;
  v49 = v6;
  v48 = v7;
  v47 = v3;
  closure #1 in HKHealthStore.queryParameters(start:end:)(v6, v7, &v18 - v35);
  v42 = closure #2 in HKHealthStore.queryParameters(start:end:)(v37, v38);
  v46 = v42;
  v39 = type metadata accessor for NSSortDescriptor();
  v40 = *MEMORY[0x277CCCD50];
  MEMORY[0x277D82BE0](v40);
  v8.value._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  NSSortDescriptor.__allocating_init(key:ascending:)(0, v8, 0);
  v41 = v9;
  MEMORY[0x277D82BD8](v40);
  v45 = v41;
  v44 = v42;
  v28 = v42 == 0;
  v27 = v42 == 0;
  v23 = v27;
  v43 = v27;
  v18 = v30[12];
  v21 = v30[16];
  v22 = v30[20];
  outlined init with copy of DateInterval?(v36, v34);
  MEMORY[0x277D82BE0](v42);
  *&v34[v18] = v42;
  v20 = _allocateUninitializedArray<A>(_:)();
  v19 = v10;
  MEMORY[0x277D82BE0](v41);
  v11 = v20;
  *v19 = v41;
  _finalizeUninitializedArray<A>(_:)();
  v12 = v22;
  v13 = v23;
  v14 = v32;
  v15 = v11;
  v16 = v34;
  *&v34[v21] = v15;
  *&v16[v12] = v13;
  outlined init with copy of (DateInterval?, NSPredicate?, [NSSortDescriptor], Int)(v16, v14);
  v26 = *&v32[v30[12]];
  v24 = *&v32[v30[16]];
  v25 = *&v32[v30[20]];
  outlined init with take of DateInterval?(v32, v29);
  outlined destroy of (DateInterval?, NSPredicate?, [NSSortDescriptor], Int)(v34);
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](v42);
  outlined destroy of DateInterval?(v36);
  return v26;
}

uint64_t closure #1 in closure #1 in HKHealthStore.query(quantityType:start:end:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, const void *a7, void *a8)
{
  v189 = a8;
  v188 = a7;
  v187 = a6;
  v186 = a5;
  v185 = a4;
  v199 = a3;
  v190 = a2;
  v184 = a1;
  v178 = 0;
  v227 = 0;
  v226 = 0;
  v225 = 0;
  v224 = 0;
  v223 = 0;
  v222 = 0;
  v221 = 0;
  v220 = 0;
  v219 = 0;
  v173 = 0;
  v212 = 0;
  v206 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGSgMd, &_s19SiriWellnessIntents10StatisticsVySdGSgMR);
  v174 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v176 = (v174 + 15) & 0xFFFFFFFFFFFFFFF0;
  v175 = &v60[-v176];
  MEMORY[0x28223BE20](&v60[-v176]);
  v177 = &v60[-v176];
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGMd, &_s19SiriWellnessIntents10StatisticsVySdGMR);
  v180 = *(v179 - 8);
  v181 = v180;
  v182 = (*(v180 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v178);
  v183 = &v60[-v182];
  v227 = &v60[-v182];
  v191 = type metadata accessor for Logger();
  v192 = *(v191 - 8);
  v193 = v192;
  v195 = *(v192 + 64);
  v9 = MEMORY[0x28223BE20](v199);
  v197 = (v195 + 15) & 0xFFFFFFFFFFFFFFF0;
  v194 = &v60[-v197];
  v10 = MEMORY[0x28223BE20](v9);
  v196 = &v60[-v197];
  v11 = MEMORY[0x28223BE20](v10);
  v198 = &v60[-v197];
  v226 = v12;
  v225 = v13;
  v224 = v11;
  v223 = v14;
  v222 = v15;
  v221 = v16;
  v220 = v17;
  v219 = v18;
  v19 = v11;
  if (v199)
  {
    v172 = v199;
    v20 = v198;
    v152 = v199;
    v206 = v199;
    v150 = Logger.wellnessIntents.unsafeMutableAddressor();
    v158 = 32;
    v151 = &v205;
    swift_beginAccess();
    (*(v193 + 16))(v20, v150, v191);
    swift_endAccess();
    v21 = v152;
    v159 = 7;
    v160 = swift_allocObject();
    *(v160 + 16) = v152;
    v170 = Logger.logObject.getter();
    v153 = v170;
    v169 = static os_log_type_t.error.getter();
    v154 = v169;
    v155 = 17;
    v163 = swift_allocObject();
    v156 = v163;
    *(v163 + 16) = 64;
    v164 = swift_allocObject();
    v157 = v164;
    *(v164 + 16) = 8;
    v22 = swift_allocObject();
    v23 = v160;
    v161 = v22;
    *(v22 + 16) = partial apply for implicit closure #1 in closure #1 in closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:);
    *(v22 + 24) = v23;
    v24 = swift_allocObject();
    v25 = v161;
    v167 = v24;
    v162 = v24;
    *(v24 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v24 + 24) = v25;
    v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v165 = _allocateUninitializedArray<A>(_:)();
    v166 = v26;

    v27 = v163;
    v28 = v166;
    *v166 = partial apply for closure #1 in OSLogArguments.append(_:);
    v28[1] = v27;

    v29 = v164;
    v30 = v166;
    v166[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v30[3] = v29;

    v31 = v166;
    v32 = v167;
    v166[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v31[5] = v32;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v170, v169))
    {
      v34 = v173;
      v143 = static UnsafeMutablePointer.allocate(capacity:)();
      v140 = v143;
      v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v146 = 1;
      v144 = createStorage<A>(capacity:type:)(1);
      v142 = v144;
      v145 = createStorage<A>(capacity:type:)(0);
      v204[0] = v143;
      v203 = v144;
      v202 = v145;
      v147 = v204;
      serialize(_:at:)(2, v204);
      serialize(_:at:)(v146, v147);
      v200 = partial apply for closure #1 in OSLogArguments.append(_:);
      v201 = v156;
      closure #1 in osLogInternal(_:log:type:)(&v200, v147, &v203, &v202);
      v148 = v34;
      v149 = v34;
      if (v34)
      {
        v138 = 0;

        __break(1u);
      }

      else
      {
        v200 = partial apply for closure #1 in OSLogArguments.append(_:);
        v201 = v157;
        closure #1 in osLogInternal(_:log:type:)(&v200, v204, &v203, &v202);
        v136 = 0;
        v137 = 0;
        v200 = partial apply for closure #1 in OSLogArguments.append(_:);
        v201 = v162;
        closure #1 in osLogInternal(_:log:type:)(&v200, v204, &v203, &v202);
        v134 = 0;
        v135 = 0;
        _os_log_impl(&dword_269912000, v153, v154, "Error while querying HealthKit for quantity samples: %@", v140, 0xCu);
        destroyStorage<A>(_:count:)(v142, 1, v141);
        destroyStorage<A>(_:count:)(v145, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v140, MEMORY[0x277D84B78]);

        v139 = v134;
      }
    }

    else
    {
      v35 = v173;

      v139 = v35;
    }

    v132 = v139;

    (*(v193 + 8))(v198, v191);
    v36 = v152;
    v204[1] = v152;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents10StatisticsVySdGSgs5Error_pGMd, &_sScCy19SiriWellnessIntents10StatisticsVySdGSgs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();

    return v132;
  }

  else
  {

    if (v190)
    {
      v171 = v190;
      v129 = v190;
      v127 = 0;
      v128 = type metadata accessor for HKSample();
      type metadata accessor for HKQuantitySample();
      v130 = _arrayConditionalCast<A, B>(_:)();

      v131 = v130;
    }

    else
    {
      v131 = 0;
    }

    v126 = v131;
    if (v131)
    {
      v125 = v126;
      v103 = v126;
      v212 = v126;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMd, &_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMR);
      HKHealthStore.computeStatistics(queryDateRange:samples:unit:)(v188, v103, v189, v177);
      v50 = (*(v181 + 48))(v177, 1, v179);
      if (v50 == 1)
      {
        v51 = v194;
        outlined destroy of Statistics<Double>?(v177);
        v95 = Logger.wellnessIntents.unsafeMutableAddressor();
        v96 = &v211;
        v99 = 0;
        swift_beginAccess();
        (*(v193 + 16))(v51, v95, v191);
        swift_endAccess();
        v101 = Logger.logObject.getter();
        v97 = v101;
        v100 = static os_log_type_t.debug.getter();
        v98 = v100;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v102 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v101, v100))
        {
          v53 = v173;
          v86 = static UnsafeMutablePointer.allocate(capacity:)();
          v82 = v86;
          v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v84 = 0;
          v87 = createStorage<A>(capacity:type:)(0);
          v85 = v87;
          v88 = createStorage<A>(capacity:type:)(v84);
          v210 = v86;
          v209 = v87;
          v208 = v88;
          v89 = 0;
          v90 = &v210;
          serialize(_:at:)(0, &v210);
          serialize(_:at:)(v89, v90);
          v207 = v102;
          v91 = v60;
          MEMORY[0x28223BE20](v60);
          v92 = &v60[-48];
          *&v60[-32] = v54;
          *&v60[-24] = &v209;
          *&v60[-16] = &v208;
          v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();
          v94 = v53;
          if (v53)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_269912000, v97, v98, "Empty array of quantity samples.", v82, 2u);
            v80 = 0;
            destroyStorage<A>(_:count:)(v85, 0, v83);
            destroyStorage<A>(_:count:)(v88, v80, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D6497C0](v82, MEMORY[0x277D84B78]);

            v81 = v94;
          }
        }

        else
        {

          v81 = v173;
        }

        v79 = v81;

        (*(v193 + 8))(v194, v191);
        (*(v181 + 56))(v175, 1, 1, v179);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents10StatisticsVySdGSgs5Error_pGMd, &_sScCy19SiriWellnessIntents10StatisticsVySdGSgs5Error_pGMR);
        CheckedContinuation.resume(returning:)();

        return v79;
      }

      else
      {
        outlined init with take of Statistics<Double>(v177, v183);
        v52 = outlined init with copy of Statistics<Double>(v183, v175);
        (*(v181 + 56))(v175, 0, 1, v179, v52);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents10StatisticsVySdGSgs5Error_pGMd, &_sScCy19SiriWellnessIntents10StatisticsVySdGSgs5Error_pGMR);
        CheckedContinuation.resume(returning:)();
        outlined destroy of Statistics<Double>(v183);

        return v173;
      }
    }

    else
    {
      v37 = v196;
      v104 = Logger.wellnessIntents.unsafeMutableAddressor();
      v108 = 32;
      v112 = 32;
      v105 = &v218;
      swift_beginAccess();
      (*(v193 + 16))(v37, v104, v191);
      swift_endAccess();
      v38 = v186;
      v113 = 7;
      v114 = swift_allocObject();
      *(v114 + 16) = v186;
      v124 = Logger.logObject.getter();
      v106 = v124;
      v123 = static os_log_type_t.error.getter();
      v107 = v123;
      v109 = 17;
      v117 = swift_allocObject();
      v110 = v117;
      *(v117 + 16) = v108;
      v118 = swift_allocObject();
      v111 = v118;
      *(v118 + 16) = 8;
      v39 = swift_allocObject();
      v40 = v114;
      v115 = v39;
      *(v39 + 16) = partial apply for implicit closure #2 in closure #1 in closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:);
      *(v39 + 24) = v40;
      v41 = swift_allocObject();
      v42 = v115;
      v121 = v41;
      v116 = v41;
      *(v41 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v41 + 24) = v42;
      v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v119 = _allocateUninitializedArray<A>(_:)();
      v120 = v43;

      v44 = v117;
      v45 = v120;
      *v120 = partial apply for closure #1 in OSLogArguments.append(_:);
      v45[1] = v44;

      v46 = v118;
      v47 = v120;
      v120[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v47[3] = v46;

      v48 = v120;
      v49 = v121;
      v120[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v48[5] = v49;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v124, v123))
      {
        v55 = v173;
        v72 = static UnsafeMutablePointer.allocate(capacity:)();
        v69 = v72;
        v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v73 = createStorage<A>(capacity:type:)(0);
        v71 = v73;
        v75 = 1;
        v74 = createStorage<A>(capacity:type:)(1);
        v217[0] = v72;
        v216 = v73;
        v215 = v74;
        v76 = v217;
        serialize(_:at:)(2, v217);
        serialize(_:at:)(v75, v76);
        v213 = partial apply for closure #1 in OSLogArguments.append(_:);
        v214 = v110;
        closure #1 in osLogInternal(_:log:type:)(&v213, v76, &v216, &v215);
        v77 = v55;
        v78 = v55;
        if (v55)
        {
          v67 = 0;

          __break(1u);
        }

        else
        {
          v213 = partial apply for closure #1 in OSLogArguments.append(_:);
          v214 = v111;
          closure #1 in osLogInternal(_:log:type:)(&v213, v217, &v216, &v215);
          v65 = 0;
          v66 = 0;
          v213 = partial apply for closure #1 in OSLogArguments.append(_:);
          v214 = v116;
          closure #1 in osLogInternal(_:log:type:)(&v213, v217, &v216, &v215);
          v63 = 0;
          v64 = 0;
          _os_log_impl(&dword_269912000, v106, v107, "%s samples could not be converted to [HKQuantitySample]. Programmer Error.", v69, 0xCu);
          destroyStorage<A>(_:count:)(v71, 0, v70);
          destroyStorage<A>(_:count:)(v74, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D6497C0](v69, MEMORY[0x277D84B78]);

          v68 = v63;
        }
      }

      else
      {
        v56 = v173;

        v68 = v56;
      }

      v62 = v68;

      (*(v193 + 8))(v196, v191);
      lazy protocol witness table accessor for type HKHealthStore.Error and conformance HKHealthStore.Error();
      v61 = 0;
      v57 = swift_allocError();
      *v58 = v61;
      v217[1] = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents10StatisticsVySdGSgs5Error_pGMd, &_sScCy19SiriWellnessIntents10StatisticsVySdGSgs5Error_pGMR);
      CheckedContinuation.resume(throwing:)();
      return v62;
    }
  }
}

uint64_t implicit closure #1 in closure #1 in closure #1 in HKHealthStore.query(quantityType:start:end:)(void *a1)
{
  v1 = a1;
  v4 = _convertErrorToNSError(_:)();

  return v4;
}

uint64_t implicit closure #2 in closure #1 in closure #1 in HKHealthStore.query(quantityType:start:end:)(void *a1)
{
  MEMORY[0x277D82BE0](a1);
  v3 = [a1 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v3);
  return v4;
}

uint64_t HKHealthStore.computeStatistics(queryDateRange:samples:unit:)@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v111 = a3;
  v113 = a2;
  v112 = a1;
  v95 = a4;
  v122 = 0;
  v180 = 0;
  v179 = 0;
  v178 = 0;
  v177 = 0;
  v176 = 0;
  v175 = 0;
  v173 = 0;
  v171 = 0;
  v163 = 0;
  v160 = 0;
  v159 = 0;
  v157 = 0;
  v151 = 0;
  v140 = 0;
  v139 = 0;
  v135 = 0.0;
  v134 = 0.0;
  v133 = 0;
  v132 = 0;
  v96 = type metadata accessor for Logger();
  v97 = *(v96 - 8);
  v98 = v97;
  v5 = *(v97 + 64);
  MEMORY[0x28223BE20](v96 - 8);
  v99 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v100 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7 - 8);
  v101 = &v34 - v100;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGMd, &_s19SiriWellnessIntents10StatisticsVySdGMR);
  v103 = *(v102 - 8);
  v104 = v103;
  v105 = (*(v103 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v122);
  v106 = &v34 - v105;
  v180 = &v34 - v105;
  v107 = *(*(type metadata accessor for Date() - 8) + 64);
  v8 = MEMORY[0x28223BE20](v122);
  v109 = (v107 + 15) & 0xFFFFFFFFFFFFFFF0;
  v108 = &v34 - v109;
  MEMORY[0x28223BE20](v8);
  v110 = &v34 - v109;
  v114 = type metadata accessor for DateInterval();
  v115 = *(v114 - 8);
  v116 = v115;
  v117 = *(v115 + 64);
  v9 = MEMORY[0x28223BE20](v112);
  v119 = (v117 + 15) & 0xFFFFFFFFFFFFFFF0;
  v118 = &v34 - v119;
  v10 = MEMORY[0x28223BE20](v9);
  v120 = &v34 - v119;
  v179 = &v34 - v119;
  v178 = v10;
  v177 = v11;
  v176 = v12;
  v175 = v4;
  v174 = v11;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16HKQuantitySampleCGMd, &_sSaySo16HKQuantitySampleCGMR);
  v121 = v123;
  v124 = lazy protocol witness table accessor for type [HKQuantitySample] and conformance [A]();
  v13 = Sequence.sorted(by:)();
  v125 = 0;
  v126 = v13;
  v92 = v13;
  v173 = v13;
  v172 = v113;
  v14 = Sequence.sorted(by:)();
  v93 = 0;
  v94 = v14;
  v89 = v14;
  v171 = v14;
  v170 = v92;
  v90 = lazy protocol witness table accessor for type [HKQuantitySample] and conformance [A]();
  Collection.first.getter();
  v91 = v169;
  if (!v169)
  {
LABEL_19:
    v28 = v99;
    v51 = Logger.wellnessIntents.unsafeMutableAddressor();
    v52 = &v168;
    v55 = 0;
    swift_beginAccess();
    (*(v98 + 16))(v28, v51, v96);
    swift_endAccess();
    v57 = Logger.logObject.getter();
    v53 = v57;
    v56 = static os_log_type_t.debug.getter();
    v54 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v58 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v57, v56))
    {
      v29 = v93;
      v42 = static UnsafeMutablePointer.allocate(capacity:)();
      v38 = v42;
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v40 = 0;
      v43 = createStorage<A>(capacity:type:)(0);
      v41 = v43;
      v44 = createStorage<A>(capacity:type:)(v40);
      v167 = v42;
      v166 = v43;
      v165 = v44;
      v45 = 0;
      v46 = &v167;
      serialize(_:at:)(0, &v167);
      serialize(_:at:)(v45, v46);
      v164 = v58;
      v47 = &v34;
      MEMORY[0x28223BE20](&v34);
      v48 = &v34 - 6;
      v32[0] = v30;
      v32[1] = &v166;
      v33 = &v165;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v50 = v29;
      if (v29)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_269912000, v53, v54, "Empty array of quantity samples.", v38, 2u);
        v36 = 0;
        destroyStorage<A>(_:count:)(v41, 0, v39);
        destroyStorage<A>(_:count:)(v44, v36, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v38, MEMORY[0x277D84B78]);

        v37 = v50;
      }
    }

    else
    {

      v37 = v93;
    }

    v35 = v37;

    (*(v98 + 8))(v99, v96);
    (*(v104 + 56))(v95, 1, 1, v102);

    return v35;
  }

  v88 = v91;
  v86 = v91;
  v163 = v91;
  v162 = v89;
  lazy protocol witness table accessor for type [HKQuantitySample] and conformance [A]();
  BidirectionalCollection.last.getter();
  v87 = v161;
  if (!v161)
  {

    goto LABEL_19;
  }

  v85 = v87;
  v15 = v93;
  v77 = v87;
  v160 = v87;
  v16 = v86;
  v79 = [v86 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = v77;
  v78 = [v77 endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  DateInterval.init(start:end:)();
  v80 = type metadata accessor for HKQuantitySample();
  v81 = MEMORY[0x26D6494A0](v113, v80);
  v159 = v81;
  v158 = v113;
  v18 = v111;
  v82 = &v34;
  MEMORY[0x28223BE20](&v34);
  v33 = v19;
  v23 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in HKHealthStore.computeStatistics(queryDateRange:samples:unit:), v32, v20, MEMORY[0x277D839F8], MEMORY[0x277D84A98], v21, MEMORY[0x277D84AC0], v22);
  v83 = v15;
  v84 = v23;
  if (v15)
  {

    __break(1u);
  }

  else
  {
    v74 = v84;

    v157 = v74;
    v156 = v74;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
    v75 = v76;
    lazy protocol witness table accessor for type [Double] and conformance [A]();
    BidirectionalCollection.last.getter();
    v152 = v154;
    v153 = v155;
    if (v155)
    {
      v73 = 0;
    }

    else
    {
      v73 = v152;
    }

    v71 = v73;
    v151 = v73;
    v148 = v74;
    v72 = lazy protocol witness table accessor for type [Double] and conformance [A]();
    Sequence<>.min()();
    v146 = v149;
    v147 = v150;
    if (v150)
    {
      v70 = 0;
    }

    else
    {
      v70 = v146;
    }

    v69 = v70;
    v143 = v74;
    Sequence<>.max()();
    v141 = v144;
    v142 = v145;
    if (v145)
    {
      v68 = 0;
    }

    else
    {
      v68 = v141;
    }

    v24 = v83;
    v66 = v68;
    v139 = v69;
    v140 = v68;
    v137 = v74;
    v136 = 0;
    Sequence.reduce<A>(_:_:)();
    v67 = v24;
    if (!v24)
    {
      v61 = v138;
      v135 = v138;
      v62 = MEMORY[0x277D839F8];
      v25 = MEMORY[0x26D6494A0](v74);
      v60 = v61 / v25;
      v134 = v60;
      v59 = [v111 unitString];
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v26;
      v132 = v63;
      v133 = v26;

      outlined init with copy of DateInterval?(v112, v101);
      (*(v116 + 16))(v118, v120, v114);
      v131 = v69;
      v130 = v66;
      v129 = v71;
      v128 = v60;
      v127 = v61;
      Statistics.init(queryDateRange:dataDateRange:sampleCount:unit:valueRange:latestValue:averageValue:totalValue:)(v101, v118, v81, v63, v64, &v131, &v130, &v129, v106, &v128, &v127, v62);
      v27 = outlined init with copy of Statistics<Double>(v106, v95);
      (*(v104 + 56))(v95, 0, 1, v102, v27);
      outlined destroy of Statistics<Double>(v106);

      (*(v116 + 8))(v120, v114);

      return v67;
    }
  }

  result = 0;
  __break(1u);
  return result;
}

uint64_t HKHealthStore.query<A>(categoryType:start:end:enumerationType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[14] = v7;
  v8[13] = a7;
  v8[12] = a6;
  v8[11] = a4;
  v8[10] = a3;
  v8[9] = a2;
  v8[8] = a1;
  v8[2] = v8;
  v8[3] = 0;
  v8[4] = 0;
  v8[5] = 0;
  v8[6] = 0;
  v8[7] = 0;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v8[6] = a5;
  v8[7] = v7;
  v9 = v8[2];
  return MEMORY[0x2822009F8](HKHealthStore.query<A>(categoryType:start:end:enumerationType:), 0);
}

uint64_t HKHealthStore.query<A>(categoryType:start:end:enumerationType:)()
{
  v8 = v0[14];
  v7 = v0[13];
  v12 = v0[12];
  v10 = v0[11];
  v9 = v0[10];
  v11 = v0[9];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("query(categoryType:start:end:enumerationType:)", 0x2EuLL, 1);
  v0[15] = v1._object;
  MEMORY[0x277D82BE0](v8);
  MEMORY[0x277D82BE0](v11);
  v14 = swift_task_alloc();
  v0[16] = v14;
  v14[2] = v12;
  v14[3] = v7;
  v14[4] = v8;
  v14[5] = v9;
  v14[6] = v10;
  v14[7] = v11;
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  v13[17] = v3;
  type metadata accessor for Date();
  swift_getTupleTypeMetadata2();
  v4 = type metadata accessor for Optional();
  *v3 = v13[2];
  v3[1] = HKHealthStore.query<A>(categoryType:start:end:enumerationType:);
  v5 = v13[8];

  return MEMORY[0x2822008A0](v5, 0, 0, v1._countAndFlagsBits, v1._object, partial apply for closure #1 in HKHealthStore.query<A>(categoryType:start:end:enumerationType:), v14, v4);
}

{
  v10 = *v1;
  v2 = *(*v1 + 136);
  v10[2] = *v1;
  v11 = v10 + 2;
  v10[18] = v0;

  if (v0)
  {
    v6 = *v11;

    return MEMORY[0x2822009F8](HKHealthStore.query<A>(categoryType:start:end:enumerationType:), 0);
  }

  else
  {
    v3 = v10[16];
    v9 = v10[15];
    v7 = v10[14];
    v8 = v10[9];

    v4 = *(*v11 + 8);

    return v4();
  }
}

{
  v1 = v0[16];
  v9 = v0[15];
  v7 = v0[14];
  v8 = v0[9];
  v0[2] = v0;

  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);

  v2 = v0;
  v3 = *(v0[2] + 8);
  v4 = v0[2];
  v5 = v2[18];

  return v3();
}

uint64_t closure #1 in HKHealthStore.query<A>(categoryType:start:end:enumerationType:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v46 = a1;
  v67 = a2;
  v35 = a3;
  v36 = a4;
  v62 = a5;
  v49 = a6;
  v50 = a7;
  v33[1] = 0;
  v60 = partial apply for closure #1 in closure #1 in HKHealthStore.query<A>(categoryType:start:end:enumerationType:);
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v77 = a6;
  v33[2] = 255;
  type metadata accessor for Date();
  swift_getTupleTypeMetadata2();
  v33[3] = type metadata accessor for Optional();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v44 = 0;
  v55 = type metadata accessor for CheckedContinuation();
  v51 = *(v55 - 8);
  v52 = v55 - 8;
  v47 = v51;
  v48 = *(v51 + 64);
  v34 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55);
  v54 = v33 - v34;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMd, &_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMR);
  v39 = *(*(v45 - 8) + 64);
  v37 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v64 = v33 - v37;
  v38 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v66 = v33 - v38;
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v69 = v33 - v40;
  v76 = v33 - v40;
  v75 = v46;
  v74 = a2;
  v73 = v10;
  v72 = v11;
  v71 = v12;
  v41 = v13[12];
  v42 = v13[16];
  v43 = v13[20];
  v14 = HKHealthStore.queryParameters(start:end:)(v33 - v40, v10, v11);
  v15 = v42;
  v16 = v43;
  v17 = v69;
  v58 = v18;
  *&v69[v41] = v14;
  *&v17[v15] = v19;
  *&v17[v16] = v18;
  type metadata accessor for HKSampleQuery();
  MEMORY[0x277D82BE0](v62);
  outlined init with copy of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(v69, v66);
  v57 = *&v66[*(v45 + 48)];
  v65 = *&v66[*(v45 + 64)];
  outlined init with copy of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(v69, v64);
  v63 = *&v64[*(v45 + 48)];
  v59 = *&v64[*(v45 + 64)];
  (*(v51 + 16))(v54, v46, v55);
  MEMORY[0x277D82BE0](v62);
  v53 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v56 = (v53 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = v50;
  v22 = v51;
  v23 = v53;
  v24 = v54;
  v25 = v55;
  v61 = v20;
  *(v20 + 16) = v49;
  *(v20 + 24) = v21;
  (*(v22 + 32))(v20 + v23, v24, v25);
  v26 = v57;
  v27 = v58;
  v28 = v59;
  v29 = v60;
  v30 = v61;
  v31 = v62;
  *(v61 + v56) = v62;
  v68 = HKSampleQuery.__allocating_init(sampleType:predicate:limit:sortDescriptors:resultsHandler:)(v31, v26, v27, v28, v29, v30);
  MEMORY[0x277D82BD8](v63);
  outlined destroy of DateInterval?(v64);

  outlined destroy of DateInterval?(v66);
  v70 = v68;
  [v67 executeQuery_];
  MEMORY[0x277D82BD8](v68);
  return outlined destroy of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(v69);
}

void closure #1 in closure #1 in HKHealthStore.query<A>(categoryType:start:end:enumerationType:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v110 = a1;
  v113 = a2;
  v119 = a3;
  v111 = a4;
  v112 = a5;
  v101 = a6;
  v79 = a7;
  v86 = 0;
  v80 = partial apply for implicit closure #2 in closure #1 in closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:);
  v81 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v82 = partial apply for closure #1 in OSLogArguments.append(_:);
  v83 = partial apply for closure #1 in OSLogArguments.append(_:);
  v84 = partial apply for closure #1 in OSLogArguments.append(_:);
  v138 = 0;
  v137 = 0;
  v136 = 0;
  v135 = 0;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v85 = 0;
  v125 = 0;
  v121 = 0;
  v139 = a6;
  v87 = 255;
  v90 = type metadata accessor for Date();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v102 = 0;
  v88 = type metadata accessor for Optional();
  v89 = (*(*(v88 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v91 = v35 - v89;
  v92 = *(v90 - 8);
  v93 = v90 - 8;
  v94 = (*(v92 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v96 = v35 - v94;
  v97 = *(TupleTypeMetadata2 - 8);
  v98 = TupleTypeMetadata2 - 8;
  v99 = (*(v97 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v100 = v35 - v99;
  v138 = v35 - v99;
  v103 = type metadata accessor for Optional();
  v104 = (*(*(v103 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v102);
  v105 = v35 - v104;
  v106 = *(v9 - 8);
  v107 = v9 - 8;
  v108 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v109 = v35 - v108;
  v137 = v35 - v108;
  v114 = type metadata accessor for Logger();
  v115 = *(v114 - 8);
  v116 = v114 - 8;
  v117 = (*(v115 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v119);
  v118 = v35 - v117;
  v136 = v11;
  v135 = v12;
  v134 = v13;
  v133 = v14;
  v132 = v15;
  v16 = v13;
  if (v119)
  {
    v78 = v119;
    v76 = v119;
    v121 = v119;
    v17 = v119;
    v75 = &v120;
    v120 = v76;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    type metadata accessor for CheckedContinuation();
    CheckedContinuation.resume(throwing:)();
  }

  else
  {

    if (v113)
    {
      v77 = v113;
      v72 = v113;
      v123 = v113;
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8HKSampleCGMd, &_sSaySo8HKSampleCGMR);
      lazy protocol witness table accessor for type [HKSample] and conformance [A]();
      Collection.first.getter();
      v73 = v122;

      v74 = v73;
    }

    else
    {
      v74 = 0;
    }

    v70 = v74;
    if (v74)
    {
      v69 = v70;
      v66 = v70;
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      v67 = v18;
      if (v18)
      {
        v65 = v67;
      }

      else
      {
        MEMORY[0x277D82BD8](v66);
        v65 = 0;
      }

      v68 = v65;
    }

    else
    {
      v68 = 0;
    }

    v64 = v68;
    if (v68)
    {
      v63 = v64;
      v47 = v64;
      v125 = v64;
      v124[1] = [v64 value];
      dispatch thunk of RawRepresentable.init(rawValue:)();
      v31 = (*(v106 + 48))(v105, 1, v101);
      if (v31 == 1)
      {
        outlined destroy of A?(v105, v101);
        lazy protocol witness table accessor for type HKHealthStore.Error and conformance HKHealthStore.Error();
        v32 = swift_allocError();
        *v33 = 1;
        v46 = v124;
        v124[0] = v32;
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
        type metadata accessor for CheckedContinuation();
        CheckedContinuation.resume(throwing:)();
      }

      else
      {
        (*(v106 + 32))(v109, v105, v101);
        v44 = v100 + *(TupleTypeMetadata2 + 48);
        (*(v106 + 16))();
        MEMORY[0x277D82BE0](v47);
        v45 = [v47 startDate];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();
        (*(v92 + 32))(v44, v96, v90);
        MEMORY[0x277D82BD8](v47);
        MEMORY[0x277D82BD8](v45);
        outlined init with copy of (value: A, startDate: Date)(v100, v91, v101, TupleTypeMetadata2);
        (*(v97 + 56))(v91, 0, 1, TupleTypeMetadata2);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
        type metadata accessor for CheckedContinuation();
        CheckedContinuation.resume(returning:)();
        outlined destroy of (value: A, startDate: Date)(v100, v101, TupleTypeMetadata2);
        (*(v106 + 8))(v109, v101);
      }

      MEMORY[0x277D82BD8](v47);
    }

    else
    {
      v19 = v118;
      v48 = Logger.wellnessIntents.unsafeMutableAddressor();
      v49 = &v131;
      v51 = 32;
      swift_beginAccess();
      (*(v115 + 16))(v19, v48, v114);
      swift_endAccess();
      MEMORY[0x277D82BE0](v112);
      v52 = 7;
      v53 = swift_allocObject();
      *(v53 + 16) = v112;
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.debug.getter();
      v50 = 17;
      v55 = swift_allocObject();
      *(v55 + 16) = 32;
      v56 = swift_allocObject();
      *(v56 + 16) = 8;
      v20 = swift_allocObject();
      v21 = v53;
      v54 = v20;
      *(v20 + 16) = v80;
      *(v20 + 24) = v21;
      v22 = swift_allocObject();
      v23 = v54;
      v58 = v22;
      *(v22 + 16) = v81;
      *(v22 + 24) = v23;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v57 = _allocateUninitializedArray<A>(_:)();
      v59 = v24;

      v25 = v55;
      v26 = v59;
      *v59 = v82;
      v26[1] = v25;

      v27 = v56;
      v28 = v59;
      v59[2] = v83;
      v28[3] = v27;

      v29 = v58;
      v30 = v59;
      v59[4] = v84;
      v30[5] = v29;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v61, v62))
      {
        v34 = v85;
        v37 = static UnsafeMutablePointer.allocate(capacity:)();
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v38 = createStorage<A>(capacity:type:)(0);
        v39 = createStorage<A>(capacity:type:)(1);
        v40 = &v130;
        v130 = v37;
        v41 = &v129;
        v129 = v38;
        v42 = &v128;
        v128 = v39;
        serialize(_:at:)(2, &v130);
        serialize(_:at:)(1, v40);
        v126 = v82;
        v127 = v55;
        closure #1 in osLogInternal(_:log:type:)(&v126, v40, v41, v42);
        v43 = v34;
        if (v34)
        {

          __break(1u);
        }

        else
        {
          v126 = v83;
          v127 = v56;
          closure #1 in osLogInternal(_:log:type:)(&v126, &v130, &v129, &v128);
          v35[1] = 0;
          v126 = v84;
          v127 = v58;
          closure #1 in osLogInternal(_:log:type:)(&v126, &v130, &v129, &v128);
          _os_log_impl(&dword_269912000, v61, v62, "No samples found for %s", v37, 0xCu);
          destroyStorage<A>(_:count:)(v38, 0, v36);
          destroyStorage<A>(_:count:)(v39, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D6497C0](v37, MEMORY[0x277D84B78]);
        }
      }

      else
      {
      }

      MEMORY[0x277D82BD8](v61);
      (*(v115 + 8))(v118, v114);
      (*(v97 + 56))(v91, 1, 1, TupleTypeMetadata2);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
      type metadata accessor for CheckedContinuation();
      CheckedContinuation.resume(returning:)();
    }
  }
}

uint64_t HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[42] = v6;
  v7[41] = a6;
  v7[40] = a5;
  v7[39] = a4;
  v7[38] = a3;
  v7[37] = a2;
  v7[36] = a1;
  v7[21] = v7;
  v7[22] = 0;
  v7[23] = 0;
  v7[24] = 0;
  v7[25] = 0;
  v7[26] = 0;
  v7[27] = 0;
  v7[29] = 0;
  v7[32] = 0;
  v7[35] = 0;
  v8 = type metadata accessor for Logger();
  v7[43] = v8;
  v12 = *(v8 - 8);
  v7[44] = v12;
  v9 = *(v12 + 64) + 15;
  v7[45] = swift_task_alloc();
  v7[22] = a2;
  v7[23] = a3;
  v7[24] = a4;
  v7[25] = a5;
  v7[26] = a6;
  v7[27] = v6;
  v10 = v7[21];

  return MEMORY[0x2822009F8](HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:), 0);
}

uint64_t HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:)()
{
  v8 = *(v0 + 336);
  v5 = *(v0 + 312);
  v3 = *(v0 + 304);
  *(v0 + 168) = v0;
  *(v0 + 368) = type metadata accessor for HKQuantityType();
  _allocateUninitializedArray<A>(_:)();
  v4 = v1;
  MEMORY[0x277D82BE0](v3);
  *v4 = v3;
  MEMORY[0x277D82BE0](v5);
  v4[1] = v5;
  _finalizeUninitializedArray<A>(_:)();
  *(v0 + 376) = lazy protocol witness table accessor for type HKQuantityType and conformance NSObject();
  Set.init(arrayLiteral:)();
  isa = Set._bridgeToObjectiveC()().super.isa;
  *(v0 + 384) = isa;

  *(v0 + 16) = *(v0 + 168);
  *(v0 + 56) = v0 + 224;
  *(v0 + 24) = HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:);
  v6 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDySo14HKQuantityTypeCSo6HKUnitCGs5Error_pGMd, &_sSccySDySo14HKQuantityTypeCSo6HKUnitCGs5Error_pGMR);
  *(v0 + 112) = v6;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 92) = 0;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary, @unowned NSError?) -> () with result type [HKQuantityType : HKUnit];
  *(v0 + 104) = &block_descriptor_183;
  [v8 preferredUnitsForQuantityTypes:isa completion:?];

  return MEMORY[0x282200938](v0 + 16);
}

{
  v6 = *v0;
  v6[21] = *v0;
  v7 = v6 + 21;
  v1 = v6[6];
  v6[49] = v1;
  if (v1)
  {
    v4 = *v7;
    v3 = HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:);
  }

  else
  {
    v2 = *v7;
    v3 = HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v62 = v0;
  v1 = v0[48];
  v53 = v0[47];
  v52 = v0[46];
  v51 = v0[38];
  v0[21] = v0;
  v54 = v0[28];
  v0[50] = v54;
  v0[29] = v54;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BE0](v51);
  v0[31] = v51;
  v55 = type metadata accessor for HKUnit();
  MEMORY[0x26D649240](v0 + 31, v54, v52);
  MEMORY[0x277D82BD8](v0[31]);
  v56 = v0[30];
  v0[51] = v56;
  if (v56)
  {
    v48 = v50[47];
    v47 = v50[46];
    v46 = v50[39];
    v50[32] = v56;
    MEMORY[0x277D82BE0](v46);
    v50[34] = v46;
    MEMORY[0x26D649240](v50 + 34, v54, v47, v55, v48);
    MEMORY[0x277D82BD8](v50[34]);
    v49 = v50[33];
    v50[52] = v49;
    if (v49)
    {
      v39 = v50[42];
      v41 = v50[41];
      v40 = v50[40];
      v44 = v50[39];
      v43 = v50[38];
      v42 = v50[37];
      v50[35] = v49;
      v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("query(correlationType:firstQuantityType:secondQuantityType:start:end:)", 0x46uLL, 1);
      v50[53] = v2._object;
      MEMORY[0x277D82BE0](v39);
      MEMORY[0x277D82BE0](v42);
      MEMORY[0x277D82BE0](v43);
      MEMORY[0x277D82BE0](v44);
      MEMORY[0x277D82BE0](v56);
      MEMORY[0x277D82BE0](v49);
      v45 = swift_task_alloc();
      v50[54] = v45;
      v45[2] = v39;
      v45[3] = v40;
      v45[4] = v41;
      v45[5] = v42;
      v45[6] = v43;
      v45[7] = v44;
      v45[8] = v56;
      v45[9] = v49;
      v3 = *(MEMORY[0x277D85A40] + 4);
      v4 = swift_task_alloc();
      v50[55] = v4;
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgMd, &_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgMR);
      *v4 = v50[21];
      v4[1] = HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:);
      v6 = v50[36];

      return MEMORY[0x2822008A0](v6, 0, 0, v2._countAndFlagsBits, v2._object, partial apply for closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:), v45, v5);
    }

    MEMORY[0x277D82BD8](v56);
  }

  v7 = v50[45];
  v23 = v50[43];
  v25 = v50[39];
  v24 = v50[38];
  v21 = v50[44];
  v22 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v21 + 16))(v7, v22, v23);
  swift_endAccess();
  MEMORY[0x277D82BE0](v24);
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  MEMORY[0x277D82BE0](v25);
  v28 = swift_allocObject();
  *(v28 + 16) = v25;
  oslog = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  v30 = swift_allocObject();
  *(v30 + 16) = 64;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v27 = swift_allocObject();
  *(v27 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
  *(v27 + 24) = v26;
  v32 = swift_allocObject();
  *(v32 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v32 + 24) = v27;
  v33 = swift_allocObject();
  *(v33 + 16) = 64;
  v34 = swift_allocObject();
  *(v34 + 16) = 8;
  v29 = swift_allocObject();
  *(v29 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
  *(v29 + 24) = v28;
  v35 = swift_allocObject();
  *(v35 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v35 + 24) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v36 = v8;

  *v36 = partial apply for closure #1 in OSLogArguments.append(_:);
  v36[1] = v30;

  v36[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v36[3] = v31;

  v36[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v36[5] = v32;

  v36[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v36[7] = v33;

  v36[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v36[9] = v34;

  v36[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v36[11] = v35;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v38))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v19 = createStorage<A>(capacity:type:)(2);
    v20 = createStorage<A>(capacity:type:)(0);
    v57 = buf;
    v58 = v19;
    v59 = v20;
    serialize(_:at:)(2, &v57);
    serialize(_:at:)(2, &v57);
    v60 = partial apply for closure #1 in OSLogArguments.append(_:);
    v61 = v30;
    closure #1 in osLogInternal(_:log:type:)(&v60, &v57, &v58, &v59);
    v60 = partial apply for closure #1 in OSLogArguments.append(_:);
    v61 = v31;
    closure #1 in osLogInternal(_:log:type:)(&v60, &v57, &v58, &v59);
    v60 = partial apply for closure #1 in OSLogArguments.append(_:);
    v61 = v32;
    closure #1 in osLogInternal(_:log:type:)(&v60, &v57, &v58, &v59);
    v60 = partial apply for closure #1 in OSLogArguments.append(_:);
    v61 = v33;
    closure #1 in osLogInternal(_:log:type:)(&v60, &v57, &v58, &v59);
    v60 = partial apply for closure #1 in OSLogArguments.append(_:);
    v61 = v34;
    closure #1 in osLogInternal(_:log:type:)(&v60, &v57, &v58, &v59);
    v60 = partial apply for closure #1 in OSLogArguments.append(_:);
    v61 = v35;
    closure #1 in osLogInternal(_:log:type:)(&v60, &v57, &v58, &v59);
    _os_log_impl(&dword_269912000, oslog, v38, "Failed to get preferred units for %@ or %@", buf, 0x16u);
    destroyStorage<A>(_:count:)(v19, 2, v17);
    destroyStorage<A>(_:count:)(v20, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v15 = v50[45];
  v16 = v50[43];
  v14 = v50[44];
  MEMORY[0x277D82BD8](oslog);
  (*(v14 + 8))(v15, v16);
  lazy protocol witness table accessor for type HKHealthStore.Error and conformance HKHealthStore.Error();
  swift_allocError();
  *v9 = 0;
  swift_willThrow();

  v10 = v50[45];

  v11 = *(v50[21] + 8);
  v12 = v50[21];

  return v11();
}

{
  v15 = *v1;
  v2 = *(*v1 + 440);
  v15[21] = *v1;
  v16 = v15 + 21;
  v15[56] = v0;

  if (v0)
  {
    v6 = *v16;
    v5 = HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:);
  }

  else
  {
    v3 = v15[54];
    v14 = v15[53];
    v13 = v15[52];
    v12 = v15[51];
    v8 = v15[42];
    v11 = v15[39];
    v10 = v15[38];
    v9 = v15[37];

    v4 = *v16;
    v5 = HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:);
  }

  return MEMORY[0x2822009F8](v5, 0);
}

{
  v1 = v0[52];
  v5 = v0[51];
  v6 = v0[50];
  v7 = v0[45];
  v0[21] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v5);

  v2 = *(v0[21] + 8);
  v3 = v0[21];

  return v2();
}

{
  v1 = v0[49];
  v7 = v0[48];
  v0[21] = v0;
  swift_willThrow();
  MEMORY[0x277D82BD8](v7);
  v2 = v0[49];
  v3 = v0[45];

  v4 = *(v0[21] + 8);
  v5 = v0[21];

  return v4();
}

{
  v1 = v0[54];
  v11 = v0[53];
  v12 = v0[52];
  v13 = v0[51];
  v14 = v0[50];
  v7 = v0[42];
  v10 = v0[39];
  v9 = v0[38];
  v8 = v0[37];
  v0[21] = v0;

  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v12);

  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);

  v2 = v0[56];
  v3 = v0[45];

  v4 = *(v0[21] + 8);
  v5 = v0[21];

  return v4();
}

uint64_t closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v56 = a1;
  v88 = a2;
  v46 = a3;
  v47 = a4;
  v83 = a5;
  v67 = a6;
  v69 = a7;
  v74 = a8;
  v77 = a9;
  v81 = partial apply for closure #1 in closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:);
  v101 = 0;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMd, &_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMR);
  v61 = *(v65 - 8);
  v62 = v65 - 8;
  v57 = v61;
  v58 = *(v61 + 64);
  v45 = (v58 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v65);
  v64 = &v44 - v45;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMd, &_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMR);
  v48 = *(v55 - 8);
  v59 = v48;
  v60 = *(v48 + 64);
  v49 = (v60 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55);
  v73 = &v44 - v49;
  v50 = (v60 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v44 - v49);
  v85 = &v44 - v50;
  v51 = (v60 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v87 = &v44 - v51;
  MEMORY[0x28223BE20](v11);
  v90 = &v44 - v12;
  v101 = &v44 - v12;
  v100 = v56;
  v99 = a2;
  v98 = v13;
  v97 = v14;
  v96 = v15;
  v95 = v16;
  v94 = v17;
  v93 = v18;
  v92 = v77;
  v52 = v19[12];
  v53 = v19[16];
  v54 = v19[20];
  v20 = HKHealthStore.queryParameters(start:end:)(&v44 - v12, v13, v14);
  v21 = v53;
  v22 = v54;
  v23 = v90;
  v79 = v24;
  *&v90[v52] = v20;
  *&v23[v21] = v25;
  *&v23[v22] = v24;
  type metadata accessor for HKSampleQuery();
  MEMORY[0x277D82BE0](v83);
  outlined init with copy of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(v90, v87);
  v78 = *&v87[*(v55 + 48)];
  v86 = *&v87[*(v55 + 64)];
  outlined init with copy of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(v90, v85);
  v84 = *&v85[*(v55 + 48)];
  v80 = *&v85[*(v55 + 64)];
  (*(v61 + 16))(v64, v56, v65);
  MEMORY[0x277D82BE0](v83);
  MEMORY[0x277D82BE0](v67);
  MEMORY[0x277D82BE0](v69);
  MEMORY[0x277D82BE0](v88);
  outlined init with copy of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(v90, v73);
  MEMORY[0x277D82BE0](v74);
  MEMORY[0x277D82BE0](v77);
  v63 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v66 = (v63 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v68 + 15) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
  v72 = (v71 + 8 + *(v59 + 80)) & ~*(v59 + 80);
  v75 = (v72 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = (v75 + 15) & 0xFFFFFFFFFFFFFFF8;
  v82 = swift_allocObject();
  (*(v61 + 32))(v82 + v63, v64, v65);
  v26 = v67;
  v27 = v68;
  v28 = v69;
  v29 = v70;
  v30 = v71;
  v31 = v72;
  v32 = v82;
  v33 = v88;
  v34 = v73;
  *(v82 + v66) = v83;
  *(v32 + v27) = v26;
  *(v32 + v29) = v28;
  *(v32 + v30) = v33;
  outlined init with take of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(v34, (v32 + v31));
  v35 = v76;
  v36 = v77;
  v37 = v78;
  v38 = v79;
  v39 = v80;
  v40 = v81;
  v41 = v82;
  v42 = v83;
  *(v82 + v75) = v74;
  *(v41 + v35) = v36;
  v89 = HKSampleQuery.__allocating_init(sampleType:predicate:limit:sortDescriptors:resultsHandler:)(v42, v37, v38, v39, v40, v41);
  MEMORY[0x277D82BD8](v84);
  outlined destroy of DateInterval?(v85);

  outlined destroy of DateInterval?(v87);
  v91 = v89;
  [v88 executeQuery_];
  MEMORY[0x277D82BD8](v89);
  return outlined destroy of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(v90);
}

uint64_t closure #1 in closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, char *a9, void *a10, void *a11)
{
  v244 = a8;
  v243 = a7;
  v242 = a6;
  v241 = a5;
  v240 = a4;
  v256 = a3;
  v246 = a2;
  v252 = a1;
  v245 = a11;
  v210 = a11;
  v254 = a10;
  v211 = a10;
  v253 = a9;
  v212 = a9;
  v232 = 0;
  v303 = 0;
  v302 = 0;
  v301 = 0;
  v300 = 0;
  v299 = 0;
  v298 = 0;
  v297 = 0;
  v296 = 0;
  v295 = 0;
  v294 = 0;
  v293 = 0;
  v292 = 0;
  v291 = 0;
  v290 = 0;
  v213 = 0;
  v283 = 0;
  v281 = 0;
  v278 = 0;
  v277 = 0;
  v276 = 0;
  v275 = 0;
  v274 = 0;
  v273 = 0;
  v272 = 0;
  v271 = 0;
  v270 = 0;
  v269 = 0;
  v263 = 0;
  v214 = type metadata accessor for DateInterval();
  v215 = *(v214 - 8);
  v216 = v215;
  v11 = *(v215 + 64);
  MEMORY[0x28223BE20](v214 - 8);
  v217 = &v81[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMd, &_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMR);
  v219 = (*(*(v218 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v218 - 8);
  v220 = &v81[-v219];
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGMd, &_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGMR);
  v222 = *(v221 - 8);
  v223 = v222;
  v224 = (*(v222 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v221 - 8);
  v225 = &v81[-v224];
  v303 = &v81[-v224];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgMd, &_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgMR);
  v226 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13 - 8);
  v227 = &v81[-v226];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGSgMd, &_s19SiriWellnessIntents10StatisticsVySdGSgMR);
  v228 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v230 = (v228 + 15) & 0xFFFFFFFFFFFFFFF0;
  v229 = &v81[-v230];
  MEMORY[0x28223BE20](&v81[-v230]);
  v231 = &v81[-v230];
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGMd, &_s19SiriWellnessIntents10StatisticsVySdGMR);
  v234 = *(v233 - 1);
  v235 = v234;
  v236 = *(v234 + 64);
  MEMORY[0x28223BE20](v232);
  v238 = (v236 + 15) & 0xFFFFFFFFFFFFFFF0;
  v237 = &v81[-v238];
  v302 = &v81[-v238];
  MEMORY[0x28223BE20](v15);
  v239 = &v81[-v238];
  v301 = &v81[-v238];
  v247 = type metadata accessor for Logger();
  v248 = *(v247 - 8);
  v249 = v248;
  v250 = *(v248 + 64);
  MEMORY[0x28223BE20](v256);
  v251 = &v81[-((v250 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v255 = &v81[-v17];
  v300 = v252;
  v299 = v18;
  v298 = v19;
  v297 = v20;
  v296 = v21;
  v295 = v22;
  v294 = v23;
  v293 = v24;
  v292 = v253;
  v291 = v254;
  v290 = v25;
  v26 = v19;
  if (v256)
  {
    v209 = v256;
    v27 = v255;
    v189 = v256;
    v263 = v256;
    v187 = Logger.wellnessIntents.unsafeMutableAddressor();
    v195 = 32;
    v188 = &v262;
    swift_beginAccess();
    (*(v249 + 16))(v27, v187, v247);
    swift_endAccess();
    v28 = v189;
    v196 = 7;
    v197 = swift_allocObject();
    *(v197 + 16) = v189;
    v207 = Logger.logObject.getter();
    v190 = v207;
    v206 = static os_log_type_t.error.getter();
    v191 = v206;
    v192 = 17;
    v200 = swift_allocObject();
    v193 = v200;
    *(v200 + 16) = 64;
    v201 = swift_allocObject();
    v194 = v201;
    *(v201 + 16) = 8;
    v29 = swift_allocObject();
    v30 = v197;
    v198 = v29;
    *(v29 + 16) = partial apply for implicit closure #1 in closure #1 in closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:);
    *(v29 + 24) = v30;
    v31 = swift_allocObject();
    v32 = v198;
    v204 = v31;
    v199 = v31;
    *(v31 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v31 + 24) = v32;
    v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v202 = _allocateUninitializedArray<A>(_:)();
    v203 = v33;

    v34 = v200;
    v35 = v203;
    *v203 = partial apply for closure #1 in OSLogArguments.append(_:);
    v35[1] = v34;

    v36 = v201;
    v37 = v203;
    v203[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v37[3] = v36;

    v38 = v203;
    v39 = v204;
    v203[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v38[5] = v39;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v207, v206))
    {
      v41 = v213;
      v180 = static UnsafeMutablePointer.allocate(capacity:)();
      v177 = v180;
      v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v183 = 1;
      v181 = createStorage<A>(capacity:type:)(1);
      v179 = v181;
      v182 = createStorage<A>(capacity:type:)(0);
      v261[0] = v180;
      v260 = v181;
      v259 = v182;
      v184 = v261;
      serialize(_:at:)(2, v261);
      serialize(_:at:)(v183, v184);
      v257 = partial apply for closure #1 in OSLogArguments.append(_:);
      v258 = v193;
      closure #1 in osLogInternal(_:log:type:)(&v257, v184, &v260, &v259);
      v185 = v41;
      v186 = v41;
      if (v41)
      {
        v175 = 0;

        __break(1u);
      }

      else
      {
        v257 = partial apply for closure #1 in OSLogArguments.append(_:);
        v258 = v194;
        closure #1 in osLogInternal(_:log:type:)(&v257, v261, &v260, &v259);
        v173 = 0;
        v174 = 0;
        v257 = partial apply for closure #1 in OSLogArguments.append(_:);
        v258 = v199;
        closure #1 in osLogInternal(_:log:type:)(&v257, v261, &v260, &v259);
        v171 = 0;
        v172 = 0;
        _os_log_impl(&dword_269912000, v190, v191, "Error while querying HealthKit for quantity samples: %@", v177, 0xCu);
        destroyStorage<A>(_:count:)(v179, 1, v178);
        destroyStorage<A>(_:count:)(v182, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v177, MEMORY[0x277D84B78]);

        v176 = v171;
      }
    }

    else
    {
      v42 = v213;

      v176 = v42;
    }

    v43 = v176;

    (*(v249 + 8))(v255, v247);
    v44 = v189;
    v261[1] = v189;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMd, &_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();

    return v43;
  }

  if (v246)
  {
    v208 = v246;
    v167 = v246;
    v165 = 0;
    v166 = type metadata accessor for HKSample();
    type metadata accessor for HKCorrelation();
    v168 = _arrayConditionalCast<A, B>(_:)();

    v169 = v168;
  }

  else
  {
    v169 = 0;
  }

  v164 = v169;
  if (!v169)
  {
    v45 = v251;
    v142 = Logger.wellnessIntents.unsafeMutableAddressor();
    v146 = 32;
    v150 = 32;
    v143 = &v289;
    swift_beginAccess();
    (*(v249 + 16))(v45, v142, v247);
    swift_endAccess();
    v46 = v241;
    v151 = 7;
    v152 = swift_allocObject();
    *(v152 + 16) = v241;
    v162 = Logger.logObject.getter();
    v144 = v162;
    v161 = static os_log_type_t.error.getter();
    v145 = v161;
    v147 = 17;
    v155 = swift_allocObject();
    v148 = v155;
    *(v155 + 16) = v146;
    v156 = swift_allocObject();
    v149 = v156;
    *(v156 + 16) = 8;
    v47 = swift_allocObject();
    v48 = v152;
    v153 = v47;
    *(v47 + 16) = partial apply for implicit closure #2 in closure #1 in closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:);
    *(v47 + 24) = v48;
    v49 = swift_allocObject();
    v50 = v153;
    v159 = v49;
    v154 = v49;
    *(v49 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v49 + 24) = v50;
    v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v157 = _allocateUninitializedArray<A>(_:)();
    v158 = v51;

    v52 = v155;
    v53 = v158;
    *v158 = partial apply for closure #1 in OSLogArguments.append(_:);
    v53[1] = v52;

    v54 = v156;
    v55 = v158;
    v158[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v55[3] = v54;

    v56 = v158;
    v57 = v159;
    v158[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v56[5] = v57;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v162, v161))
    {
      v76 = v213;
      v93 = static UnsafeMutablePointer.allocate(capacity:)();
      v90 = v93;
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v94 = createStorage<A>(capacity:type:)(0);
      v92 = v94;
      v96 = 1;
      v95 = createStorage<A>(capacity:type:)(1);
      v288[0] = v93;
      v287 = v94;
      v286 = v95;
      v97 = v288;
      serialize(_:at:)(2, v288);
      serialize(_:at:)(v96, v97);
      v284 = partial apply for closure #1 in OSLogArguments.append(_:);
      v285 = v148;
      closure #1 in osLogInternal(_:log:type:)(&v284, v97, &v287, &v286);
      v98 = v76;
      v99 = v76;
      if (v76)
      {
        v88 = 0;

        __break(1u);
      }

      else
      {
        v284 = partial apply for closure #1 in OSLogArguments.append(_:);
        v285 = v149;
        closure #1 in osLogInternal(_:log:type:)(&v284, v288, &v287, &v286);
        v86 = 0;
        v87 = 0;
        v284 = partial apply for closure #1 in OSLogArguments.append(_:);
        v285 = v154;
        closure #1 in osLogInternal(_:log:type:)(&v284, v288, &v287, &v286);
        v84 = 0;
        v85 = 0;
        _os_log_impl(&dword_269912000, v144, v145, "Samples returned for %s were not correlations", v90, 0xCu);
        destroyStorage<A>(_:count:)(v92, 0, v91);
        destroyStorage<A>(_:count:)(v95, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v90, MEMORY[0x277D84B78]);

        v89 = v84;
      }
    }

    else
    {
      v77 = v213;

      v89 = v77;
    }

    v83 = v89;

    (*(v249 + 8))(v251, v247);
    lazy protocol witness table accessor for type HKHealthStore.Error and conformance HKHealthStore.Error();
    v82 = 0;
    v78 = swift_allocError();
    *v79 = v82;
    v288[1] = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMd, &_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
    return v83;
  }

  v163 = v164;
  v58 = v213;
  v134 = v164;
  v283 = v164;
  v282 = v164;
  v59 = v242;
  v60 = v243;
  v135 = v81;
  MEMORY[0x28223BE20](v81);
  v137 = &v81[-48];
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13HKCorrelationCGMd, &_sSaySo13HKCorrelationCGMR);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16HKQuantitySampleC_ABtMd, &_sSo16HKQuantitySampleC_ABtMR);
  v136 = v139;
  lazy protocol witness table accessor for type [HKCorrelation] and conformance [A]();
  v61 = Sequence.compactMap<A>(_:)();
  v140 = v58;
  v141 = v61;
  if (v58)
  {

    __break(1u);

    __break(1u);
  }

  else
  {
    v124 = v141;

    v281 = v124;
    v280 = v124;
    KeyPath = swift_getKeyPath();
    v125 = KeyPath;

    v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16HKQuantitySampleC_ABtGMd, &_sSaySo16HKQuantitySampleC_ABtGMR);
    v126 = v129;
    v130 = type metadata accessor for HKQuantitySample();
    v127 = v130;
    v131 = lazy protocol witness table accessor for type [(HKQuantitySample, HKQuantitySample)] and conformance [A]();
    v63 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #3 in closure #1 in closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:), KeyPath, v129, v130, MEMORY[0x277D84A98], v131, MEMORY[0x277D84AC0], v62);
    v132 = 0;
    v133 = v63;
    v121 = v63;

    HKHealthStore.computeStatistics(queryDateRange:samples:unit:)(v212, v121, v211, v231);

    v122 = *(v235 + 48);
    v123 = (v235 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v122(v231, 1, v233) == 1)
    {
      v64 = v132;
      outlined destroy of Statistics<Double>?(v231);
      (*(v223 + 56))(v227, 1, 1, v221);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMd, &_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMR);
      CheckedContinuation.resume(returning:)();

      return v64;
    }

    v65 = v132;
    outlined init with take of Statistics<Double>(v231, v239);
    v279 = v124;
    v118 = swift_getKeyPath();
    v117 = v118;

    v67 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #3 in closure #1 in closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:), v118, v126, v127, MEMORY[0x277D84A98], v131, MEMORY[0x277D84AC0], v66);
    v119 = v65;
    v120 = v67;
    if (!v65)
    {
      v116 = v120;

      HKHealthStore.computeStatistics(queryDateRange:samples:unit:)(v212, v116, v210, v229);

      if (v122(v229, 1, v233) == 1)
      {
        outlined destroy of Statistics<Double>?(v229);
        (*(v223 + 56))(v227, 1, 1, v221);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMd, &_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMR);
        CheckedContinuation.resume(returning:)();
      }

      else
      {
        outlined init with take of Statistics<Double>(v229, v237);
        v68 = v233[10];
        v100 = *&v239[v68];
        v102 = *&v239[v68 + 8];
        v69 = &v237[v68];
        v101 = *v69;
        v103 = *(v69 + 1);
        v277 = v100;
        v278 = v101;
        v275 = v102;
        v276 = v103;
        v70 = v233[11];
        v104 = *&v239[v70];
        v105 = *&v237[v70];
        v273 = v104;
        v274 = v105;
        v71 = v233[12];
        v106 = *&v239[v71];
        v107 = *&v237[v71];
        v271 = v106;
        v272 = v107;
        v72 = v233[13];
        v108 = *&v239[v72];
        v109 = *&v237[v72];
        v269 = v108;
        v270 = v109;
        outlined init with copy of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(v212, v220);
        v115 = *&v220[*(v218 + 48)];
        v114 = *&v220[*(v218 + 64)];
        (*(v216 + 16))(v217, &v239[v233[7]], v214);
        v110 = MEMORY[0x26D6494A0](v124, v136);
        v113 = [v211 unitString];
        v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v112 = v73;
        v268[0] = v100;
        v268[1] = v101;
        v267[0] = v102;
        v267[1] = v103;
        v266[0] = v104;
        v266[1] = v105;
        v265[0] = v106;
        v265[1] = v107;
        v264[0] = v108;
        v264[1] = v109;
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSd5first_Sd6secondtMd, &_sSd5first_Sd6secondtMR);
        Statistics.init(queryDateRange:dataDateRange:sampleCount:unit:valueRange:latestValue:averageValue:totalValue:)(v220, v217, v110, v111, v112, v268, v267, v266, v225, v265, v264, v74);

        v75 = outlined init with copy of Statistics<(first: Double, second: Double)>(v225, v227);
        (*(v223 + 56))(v227, 0, 1, v221, v75);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMd, &_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMR);
        CheckedContinuation.resume(returning:)();
        outlined destroy of Statistics<(first: Double, second: Double)>(v225);
        outlined destroy of Statistics<Double>(v237);
      }

      outlined destroy of Statistics<Double>(v239);

      return v119;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v78 = a4;
  v77 = a3;
  v79 = a2;
  v80 = a1;
  v76 = a5;
  v87 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v102 = 0;
  v99 = 0;
  v81 = type metadata accessor for Logger();
  v82 = *(v81 - 8);
  v83 = v82;
  v84 = *(v82 + 64);
  v5 = MEMORY[0x28223BE20](v80);
  v85 = &v24[-((v84 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v86 = *v6;
  v113 = v86;
  v112 = v7;
  v111 = v8;
  v110 = v9;
  v91 = [v86 objectsForType_];
  v88 = v91;
  v90 = type metadata accessor for HKSample();
  v89 = v90;
  v92 = lazy protocol witness table accessor for type HKSample and conformance NSObject();
  v96 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v109 = v96;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySo8HKSampleCGMd, &_sShySo8HKSampleCGMR);
  v93 = v94;
  v95 = lazy protocol witness table accessor for type Set<HKSample> and conformance Set<A>();
  Collection.first.getter();
  v98 = v108;
  v97 = v108;

  if (v98)
  {
    v74 = v97;
    v71 = v97;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    v72 = v10;
    if (v10)
    {
      v70 = v72;
    }

    else
    {

      v70 = 0;
    }

    v69 = v70;

    v73 = v69;
  }

  else
  {

    v73 = 0;
  }

  v68 = v73;
  if (v73)
  {
    v67 = v68;
    v62 = v68;
    v102 = v68;
    v63 = [v86 objectsForType_];
    v64 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
    v101 = v64;
    Collection.first.getter();
    v66 = v100;
    v65 = v100;

    if (v66)
    {
      v61 = v65;
      v58 = v65;
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      v59 = v11;
      if (v11)
      {
        v57 = v59;
      }

      else
      {

        v57 = 0;
      }

      v56 = v57;

      v60 = v56;
    }

    else
    {

      v60 = 0;
    }

    v55 = v60;
    if (v60)
    {
      v54 = v55;
      v52 = v55;
      v99 = v55;
      v12 = v62;
      v13 = v52;
      v14 = v76;
      v15 = v52;
      *v76 = v62;
      v14[1] = v15;

      result = v75;
      v53 = v75;
      return result;
    }
  }

  v17 = v85;
  v44 = Logger.wellnessIntents.unsafeMutableAddressor();
  v45 = &v107;
  v48 = 0;
  swift_beginAccess();
  (*(v83 + 16))(v17, v44, v81);
  swift_endAccess();
  v50 = Logger.logObject.getter();
  v46 = v50;
  v49 = static os_log_type_t.error.getter();
  v47 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v51 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v50, v49))
  {
    v42 = v75;
    v34 = static UnsafeMutablePointer.allocate(capacity:)();
    v30 = v34;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v32 = 0;
    v35 = createStorage<A>(capacity:type:)(0);
    v33 = v35;
    v36 = createStorage<A>(capacity:type:)(v32);
    v106[0] = v34;
    v105 = v35;
    v104 = v36;
    v37 = 0;
    v38 = v106;
    serialize(_:at:)(0, v106);
    serialize(_:at:)(v37, v38);
    v103 = v51;
    v39 = v24;
    MEMORY[0x28223BE20](v24);
    v40 = &v24[-48];
    *&v24[-32] = v18;
    *&v24[-24] = &v105;
    *&v24[-16] = &v104;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    v19 = v42;
    Sequence.forEach(_:)();
    v43 = v19;
    if (v19)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_269912000, v46, v47, "Unable to extract quantities from correlation due to wrong identifiers. Programmer Error.", v30, 2u);
      v28 = 0;
      destroyStorage<A>(_:count:)(v33, 0, v31);
      destroyStorage<A>(_:count:)(v36, v28, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v30, MEMORY[0x277D84B78]);

      v29 = v43;
    }
  }

  else
  {

    v29 = v75;
  }

  v27 = v29;

  (*(v83 + 8))(v85, v81);
  lazy protocol witness table accessor for type HKHealthStore.Error and conformance HKHealthStore.Error();
  v26 = 0;
  v25 = 0;
  v20 = swift_allocError();
  *v21 = v25;
  v106[1] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMd, &_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMR);
  CheckedContinuation.resume(throwing:)();
  v22 = v76;
  v23 = v26;
  result = v27;
  *v76 = v26;
  v22[1] = v23;
  return result;
}

uint64_t implicit closure #3 in closure #1 in closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:)(void *a1)
{
  v2 = *a1;
  v3 = a1[1];
  MEMORY[0x277D82BE0](*a1);
  MEMORY[0x277D82BE0](v3);

  v4[0] = v2;
  v4[1] = v3;
  swift_getAtKeyPath();
  outlined destroy of (HKQuantitySample, HKQuantitySample)(v4);
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a1;
  v38 = a2;
  v62 = a3;
  v52 = a4;
  v39 = a5;
  v61 = a6;
  v41 = a8;
  v42 = "Fatal error";
  v43 = "Range requires lowerBound <= upperBound";
  v44 = "Swift/Range.swift";
  v45 = "Index out of range";
  v46 = "invalid Collection: count differed in successive traversals";
  v47 = "Swift/ArrayShared.swift";
  v72[3] = a3;
  v72[2] = a4;
  v72[1] = a5;
  v48 = *(a5 - 8);
  v49 = a5 - 8;
  v50 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v51 = &v18 - v50;
  v9 = *(v8 + 8);
  v53 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  v56 = AssociatedTypeWitness - 8;
  v57 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v53);
  v58 = &v18 - v57;
  v59 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v60 = &v18 - v59;
  v63 = swift_getAssociatedTypeWitness();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v62);
  v67 = &v18 - v66;
  v68 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v69 = &v18 - v68;
  v70 = dispatch thunk of Collection.count.getter();
  if (!v70)
  {
    goto LABEL_24;
  }

  v72[0] = ContiguousArray.init()();
  v36 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v70);
  result = dispatch thunk of Collection.startIndex.getter();
  if (v70 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_24:
    v20 = static Array._allocateUninitialized(_:)();
    v21 = v40;
    return v20;
  }

  if (!v70)
  {
LABEL_19:
    v26 = v40;
LABEL_20:
    v22 = v26;
    dispatch thunk of Collection.endIndex.getter();
    v17 = *(swift_getAssociatedConformanceWitness() + 8);
    v25 = dispatch thunk of static Equatable.== infix(_:_:)();
    v23 = *(v64 + 8);
    v24 = v64 + 8;
    v23(v67, v63);
    if ((v25 & 1) == 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)();
      __break(1u);
    }

    v23(v69, v63);
    v19 = v72[0];

    v20 = v19;
    v21 = v22;
    return v20;
  }

  v34 = 0;
  for (i = v40; ; i = v30)
  {
    v32 = i;
    v33 = v34;
    if (v34 < 0 || v33 >= v70)
    {
      goto LABEL_18;
    }

    if (v70 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_18:
      _fatalErrorMessage(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_19;
    }

    v31 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    v29 = &v71;
    v28 = dispatch thunk of Collection.subscript.read();
    (*(v55 + 16))(v58);
    v28();
    v16 = v32;
    v37(v58, v51);
    v30 = v16;
    if (v16)
    {
      (*(v55 + 8))(v58, AssociatedTypeWitness);
      (*(v64 + 8))(v69, v63);
      outlined destroy of ContiguousArray<A1>(v72);
      (*(v48 + 32))(v41, v51, v39);
      return v27;
    }

    (*(v55 + 8))(v58, AssociatedTypeWitness);
    ContiguousArray.append(_:)();
    dispatch thunk of Collection.formIndex(after:)();
    if (v31 == v70)
    {
      v26 = v30;
      goto LABEL_20;
    }

    result = v30;
    v34 = v31;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in HKHealthStore.queryParameters(start:end:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v25 = a1;
  v24 = a2;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v21 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v22 = v14 - v21;
  v23 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14 - v21);
  v38 = v14 - v23;
  v37 = type metadata accessor for Date();
  v35 = *(v37 - 8);
  v36 = v37 - 8;
  v31 = v35[8];
  v26 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v25);
  v27 = v14 - v26;
  v28 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v5);
  v29 = v14 - v28;
  v30 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v6);
  v32 = v14 - v30;
  v44 = v14 - v30;
  v33 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v7);
  v34 = v14 - v33;
  v43 = v14 - v33;
  v42 = v8;
  v41 = v9;
  outlined init with copy of Date?(v8, v10);
  v39 = v35[6];
  v40 = v35 + 6;
  if (v39(v38, 1, v37) == 1)
  {
    outlined destroy of Date?(v38);
  }

  else
  {
    v18 = v35[4];
    v19 = v35 + 4;
    v18(v34, v38, v37);
    outlined init with copy of Date?(v24, v22);
    if (v39(v22, 1, v37) != 1)
    {
      v18(v32, v22, v37);
      v15 = v35[2];
      v14[1] = v35 + 2;
      v15(v29, v34, v37);
      v15(v27, v32, v37);
      DateInterval.init(start:end:)();
      v11 = type metadata accessor for DateInterval();
      (*(*(v11 - 8) + 56))(v20, 0, 1);
      v17 = v35[1];
      v16 = v35 + 1;
      v17(v32, v37);
      return (v17)(v34, v37);
    }

    outlined destroy of Date?(v22);
    (v35[1])(v34, v37);
  }

  v13 = type metadata accessor for DateInterval();
  return (*(*(v13 - 8) + 56))(v20, 1);
}

id closure #2 in HKHealthStore.queryParameters(start:end:)(uint64_t a1, const void *a2)
{
  v32 = a1;
  v31 = a2;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v28 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v29 = &v15 - v28;
  v30 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v15 - v28);
  v43 = &v15 - v30;
  v42 = type metadata accessor for Date();
  v40 = *(v42 - 8);
  v41 = v42 - 8;
  v36 = *(v40 + 64);
  v33 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v32);
  v34 = &v15 - v33;
  v35 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v4);
  v37 = &v15 - v35;
  v50 = &v15 - v35;
  v38 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v5);
  v39 = &v15 - v38;
  v49 = &v15 - v38;
  v48 = v6;
  v47 = v7;
  outlined init with copy of Date?(v6, v8);
  v44 = *(v40 + 48);
  v45 = v40 + 48;
  if (v44(v43, 1, v42) == 1)
  {
    outlined destroy of Date?(v43);
    return 0;
  }

  v26 = *(v40 + 32);
  v27 = v40 + 32;
  v26(v39, v43, v42);
  outlined init with copy of Date?(v31, v29);
  if (v44(v29, 1, v42) == 1)
  {
    outlined destroy of Date?(v29);
    (*(v40 + 8))(v39, v42);
    return 0;
  }

  v9 = v34;
  v26(v37, v29, v42);
  v19 = objc_opt_self();
  v16 = *(v40 + 16);
  v15 = v40 + 16;
  v16(v9, v39, v42);
  v10.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v11 = v34;
  isa = v10.super.isa;
  v23 = *(v40 + 8);
  v22 = v40 + 8;
  v23(v34, v42);
  v16(v11, v37, v42);
  v20 = Date._bridgeToObjectiveC()().super.isa;
  v23(v34, v42);
  type metadata accessor for HKQueryOptions();
  v17 = 1;
  v12 = _allocateUninitializedArray<A>(_:)();
  *v13 = v17;
  _finalizeUninitializedArray<A>(_:)();
  v18 = v12;
  lazy protocol witness table accessor for type HKQueryOptions and conformance HKQueryOptions();
  SetAlgebra<>.init(arrayLiteral:)();
  v24 = [v19 predicateForSamplesWithStartDate:isa endDate:v20 options:v46];
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](isa);
  v23(v37, v42);
  v23(v39, v42);
  return v24;
}

void __swiftcall NSSortDescriptor.__allocating_init(key:ascending:)(NSSortDescriptor *__return_ptr retstr, Swift::String_optional key, Swift::Bool ascending)
{
  countAndFlagsBits = key.value._countAndFlagsBits;
  object = key.value._object;
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  @nonobjc NSSortDescriptor.init(key:ascending:)(countAndFlagsBits, object);
}

uint64_t closure #1 in HKHealthStore.computeStatistics(queryDateRange:samples:unit:)(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  v25 = 0;
  v24 = 0;
  v19 = type metadata accessor for Date();
  v14 = *(v19 - 8);
  v15 = v19 - 8;
  v9 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v16 = &v7 - v9;
  v10 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v2);
  v18 = &v7 - v10;
  v11 = *v4;
  v25 = v11;
  v13 = *v5;
  v24 = v13;
  MEMORY[0x277D82BE0](v11);
  v12 = 0x1FB31F000uLL;
  v22 = [v11 0x1FB31F378];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BE0](v13);
  v17 = [v13 (v12 + 888)];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](v13);
  v23 = static Date.< infix(_:_:)();
  v21 = *(v14 + 8);
  v20 = v14 + 8;
  v21(v16, v19);
  MEMORY[0x277D82BD8](v17);
  v21(v18, v19);
  MEMORY[0x277D82BD8](v22);
  return v23 & 1;
}

uint64_t closure #2 in HKHealthStore.computeStatistics(queryDateRange:samples:unit:)(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  v25 = 0;
  v24 = 0;
  v19 = type metadata accessor for Date();
  v14 = *(v19 - 8);
  v15 = v19 - 8;
  v9 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v16 = &v7 - v9;
  v10 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v2);
  v18 = &v7 - v10;
  v11 = *v4;
  v25 = v11;
  v13 = *v5;
  v24 = v13;
  MEMORY[0x277D82BE0](v11);
  v12 = 0x1FA937000uLL;
  v22 = [v11 0x1FA937B78];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BE0](v13);
  v17 = [v13 (v12 + 2936)];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](v13);
  v23 = static Date.< infix(_:_:)();
  v21 = *(v14 + 8);
  v20 = v14 + 8;
  v21(v16, v19);
  MEMORY[0x277D82BD8](v17);
  v21(v18, v19);
  MEMORY[0x277D82BD8](v22);
  return v23 & 1;
}

double closure #3 in HKHealthStore.computeStatistics(queryDateRange:samples:unit:)@<D0>(id *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v6 = [*a1 quantity];
  [v6 doubleValueForUnit_];
  v8 = v3;
  MEMORY[0x277D82BD8](v6);
  result = v8;
  *a3 = v8;
  return result;
}

double implicit closure #4 in HKHealthStore.computeStatistics(queryDateRange:samples:unit:)@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 + *a2;
  *a3 = result;
  return result;
}

id @nonobjc HKUnitPreferenceController.init(healthStore:)(uint64_t a1)
{
  v4 = [v1 initWithHealthStore_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id @nonobjc HKSampleQuery.init(sampleType:predicate:limit:sortDescriptors:resultsHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    type metadata accessor for NSSortDescriptor();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = isa;
  }

  else
  {
    v10 = 0;
  }

  v22 = a5;
  v23 = a6;
  aBlock = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = 0;
  v20 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKSampleQuery, @guaranteed [HKSample]?, @guaranteed Error?) -> ();
  v21 = &block_descriptor_238;
  v7 = _Block_copy(&aBlock);
  v8 = [v16 initWithSampleType:a1 predicate:a2 limit:a3 sortDescriptors:v10 resultsHandler:?];
  _Block_release(v7);

  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v8;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKSampleQuery, @guaranteed [HKSample]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);

  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  if (a3)
  {
    type metadata accessor for HKSample();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](a3);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x277D82BE0](a4);
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = 0;
  }

  v9(a2, v7);

  MEMORY[0x277D82BD8](a2);
}

id @nonobjc NSSortDescriptor.init(key:ascending:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = MEMORY[0x26D6492A0](a1);

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v3 = [v6 initWithKey_ascending_];
  MEMORY[0x277D82BD8](v5);
  return v3;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(void (*a1)(void))
{
  a1();
  v2 = _swift_stdlib_bridgeErrorToNSError();
  MEMORY[0x277D82BE0](v2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_26995AF60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26995AFA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26995B188()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26995B1C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26995B260()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26995B2A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26995B2E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26995B320()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_26995B368()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_0()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo14HKQuantityTypeCSo6HKUnitCGMd, &_sSDySo14HKQuantityTypeCSo6HKUnitCGMR);
  v1 = lazy protocol witness table accessor for type [HKQuantityType : HKUnit] and conformance [A : B]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

uint64_t sub_26995B538()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26995B578()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26995B610()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26995B650()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26995B6D8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_26995B718()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26995B7B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26995B7F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26995B888()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26995B8C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type HealthKitLocalizationError and conformance HealthKitLocalizationError()
{
  v2 = lazy protocol witness table cache variable for type HealthKitLocalizationError and conformance HealthKitLocalizationError;
  if (!lazy protocol witness table cache variable for type HealthKitLocalizationError and conformance HealthKitLocalizationError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HealthKitLocalizationError and conformance HealthKitLocalizationError);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HealthKitLocalizationError and conformance HealthKitLocalizationError;
  if (!lazy protocol witness table cache variable for type HealthKitLocalizationError and conformance HealthKitLocalizationError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HealthKitLocalizationError and conformance HealthKitLocalizationError);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HealthKitLocalizationError and conformance HealthKitLocalizationError;
  if (!lazy protocol witness table cache variable for type HealthKitLocalizationError and conformance HealthKitLocalizationError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HealthKitLocalizationError and conformance HealthKitLocalizationError);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26995BA6C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26995BAAC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26995BB44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26995BB84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t type metadata accessor for HKUnitPreferenceController()
{
  v2 = lazy cache variable for type metadata for HKUnitPreferenceController;
  if (!lazy cache variable for type metadata for HKUnitPreferenceController)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKUnitPreferenceController);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for NSNumber()
{
  v2 = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSNumber);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HKHealthStore.Error and conformance HKHealthStore.Error()
{
  v2 = lazy protocol witness table cache variable for type HKHealthStore.Error and conformance HKHealthStore.Error;
  if (!lazy protocol witness table cache variable for type HKHealthStore.Error and conformance HKHealthStore.Error)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKHealthStore.Error and conformance HKHealthStore.Error);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKHealthStore.Error and conformance HKHealthStore.Error;
  if (!lazy protocol witness table cache variable for type HKHealthStore.Error and conformance HKHealthStore.Error)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKHealthStore.Error and conformance HKHealthStore.Error);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKHealthStore.Error and conformance HKHealthStore.Error;
  if (!lazy protocol witness table cache variable for type HKHealthStore.Error and conformance HKHealthStore.Error)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKHealthStore.Error and conformance HKHealthStore.Error);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for NSSortDescriptor()
{
  v2 = lazy cache variable for type metadata for NSSortDescriptor;
  if (!lazy cache variable for type metadata for NSSortDescriptor)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSSortDescriptor);
    return ObjCClassMetadata;
  }

  return v2;
}

void *outlined init with copy of DateInterval?(const void *a1, void *a2)
{
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

char *outlined init with copy of (DateInterval?, NSPredicate?, [NSSortDescriptor], Int)(char *a1, char *a2)
{
  v11 = type metadata accessor for DateInterval();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v12 + 16))(a2, a1, v11);
    (*(v12 + 56))(a2, 0, 1, v11);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSg_So11NSPredicateCSgSaySo16NSSortDescriptorCGSitMd, &_s10Foundation12DateIntervalVSg_So11NSPredicateCSgSaySo16NSSortDescriptorCGSitMR);
  v4 = v8[12];
  v5 = *&a1[v4];
  MEMORY[0x277D82BE0](v5);
  *&a2[v4] = v5;
  v6 = v8[16];
  v7 = *&a1[v6];

  result = a2;
  *&a2[v6] = v7;
  *&a2[v8[20]] = *&a1[v8[20]];
  return result;
}

void *outlined init with take of DateInterval?(const void *a1, void *a2)
{
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t outlined destroy of (DateInterval?, NSPredicate?, [NSSortDescriptor], Int)(uint64_t a1)
{
  v5 = type metadata accessor for DateInterval();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1, 1))
  {
    (*(v6 + 8))(a1, v5);
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSg_So11NSPredicateCSgSaySo16NSSortDescriptorCGSitMd, &_s10Foundation12DateIntervalVSg_So11NSPredicateCSgSaySo16NSSortDescriptorCGSitMR);
  MEMORY[0x277D82BD8](*(a1 + *(v3 + 48)));
  v1 = *(a1 + *(v3 + 64));

  return a1;
}

uint64_t outlined destroy of DateInterval?(uint64_t a1)
{
  v3 = type metadata accessor for DateInterval();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type [HKQuantitySample] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HKQuantitySample] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKQuantitySample] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16HKQuantitySampleCGMd, &_sSaySo16HKQuantitySampleCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKQuantitySample] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [HKQuantitySample] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKQuantitySample] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16HKQuantitySampleCGMd, &_sSaySo16HKQuantitySampleCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKQuantitySample] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [HKQuantitySample] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKQuantitySample] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16HKQuantitySampleCGMd, &_sSaySo16HKQuantitySampleCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKQuantitySample] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [Double] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Double] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Double] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySdGMd, &_sSaySdGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Double] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [Double] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Double] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySdGMd, &_sSaySdGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Double] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

__n128 outlined init with copy of Statistics<Double>(char *a1, char *a2)
{
  v10 = type metadata accessor for DateInterval();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v11 + 16))(a2, a1, v10);
    (*(v11 + 56))(a2, 0, 1, v10);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGMd, &_s19SiriWellnessIntents10StatisticsVySdGMR);
  (*(v11 + 16))(&a2[v7[7]], &a1[v7[7]], v10);
  *&a2[v7[8]] = *&a1[v7[8]];
  v5 = &a2[v7[9]];
  v3 = &a1[v7[9]];
  *v5 = *v3;
  v6 = *(v3 + 1);

  *(v5 + 1) = v6;
  result = *&a1[v7[10]];
  *&a2[v7[10]] = result;
  *&a2[v7[11]] = *&a1[v7[11]];
  *&a2[v7[12]] = *&a1[v7[12]];
  *&a2[v7[13]] = *&a1[v7[13]];
  return result;
}

uint64_t outlined destroy of Statistics<Double>(uint64_t a1)
{
  v5 = type metadata accessor for DateInterval();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1, 1))
  {
    (*(v6 + 8))(a1, v5);
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGMd, &_s19SiriWellnessIntents10StatisticsVySdGMR);
  (*(v6 + 8))(a1 + *(v3 + 28), v5);
  v1 = *(a1 + *(v3 + 36) + 8);

  return a1;
}

uint64_t sub_26995CAF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26995CB30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26995CBC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26995CC08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for HealthKitLocalizationError(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *storeEnumTagSinglePayload for HealthKitLocalizationError(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HKHealthStore.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HKHealthStore.Error(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t type metadata accessor for HKSampleQuery()
{
  v2 = lazy cache variable for type metadata for HKSampleQuery;
  if (!lazy cache variable for type metadata for HKSampleQuery)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKSampleQuery);
    return ObjCClassMetadata;
  }

  return v2;
}

char *outlined init with copy of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(char *a1, char *a2)
{
  v11 = type metadata accessor for DateInterval();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v12 + 16))(a2, a1, v11);
    (*(v12 + 56))(a2, 0, 1, v11);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMd, &_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMR);
  v4 = v8[12];
  v5 = *&a1[v4];
  MEMORY[0x277D82BE0](v5);
  *&a2[v4] = v5;
  v6 = v8[16];
  v7 = *&a1[v6];

  result = a2;
  *&a2[v6] = v7;
  *&a2[v8[20]] = *&a1[v8[20]];
  return result;
}

uint64_t sub_26995D728()
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMd, &_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMR);
  v8 = *(v6 - 8);
  v5 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + *(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMd, &_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMR);
  v1 = *(*(v7 - 8) + 80);
  v14 = (v13 + 8 + v1) & ~v1;
  v9 = (v14 + *(*(v7 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v8 + 8))(v0 + v5, v6);
  MEMORY[0x277D82BD8](*(v0 + v10));
  MEMORY[0x277D82BD8](*(v0 + v11));
  MEMORY[0x277D82BD8](*(v0 + v12));
  MEMORY[0x277D82BD8](*(v0 + v13));
  v15 = type metadata accessor for DateInterval();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v0 + v14, 1))
  {
    (*(v16 + 8))(v4 + v14, v15);
  }

  MEMORY[0x277D82BD8](*(v4 + v14 + *(v7 + 48)));
  v2 = *(v4 + v14 + *(v7 + 64));

  MEMORY[0x277D82BD8](*(v4 + v9));
  MEMORY[0x277D82BD8](*(v4 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)));
  return swift_deallocObject();
}

char *outlined init with take of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(char *a1, char *a2)
{
  v7 = type metadata accessor for DateInterval();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(a2, a1, v7);
    (*(v8 + 56))(a2, 0, 1, v7);
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMd, &_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMR);
  result = a2;
  *&a2[v3[12]] = *&a1[v3[12]];
  *&a2[v3[16]] = *&a1[v3[16]];
  *&a2[v3[20]] = *&a1[v3[20]];
  return result;
}

uint64_t partial apply for closure #1 in closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMd, &_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMR) - 8);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v8 = (v12 + *(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMd, &_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMR) - 8);
  v4 = (((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 8 + *(v14 + 80)) & ~*(v14 + 80);
  v5 = (v4 + *(v14 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  return closure #1 in closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:)(a1, a2, a3, v3 + v12, *(v3 + v8), *(v3 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + v9), *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), (v3 + v4), *(v3 + v5), *(v3 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t outlined destroy of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(uint64_t a1)
{
  v5 = type metadata accessor for DateInterval();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1, 1))
  {
    (*(v6 + 8))(a1, v5);
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMd, &_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMR);
  MEMORY[0x277D82BD8](*(a1 + *(v3 + 48)));
  v1 = *(a1 + *(v3 + 64));

  return a1;
}

uint64_t block_copy_helper_236(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_26995DF84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26995DFC4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type [HKCorrelation] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HKCorrelation] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKCorrelation] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo13HKCorrelationCGMd, &_sSaySo13HKCorrelationCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKCorrelation] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [HKCorrelation] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKCorrelation] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo13HKCorrelationCGMd, &_sSaySo13HKCorrelationCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKCorrelation] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [HKCorrelation] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKCorrelation] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo13HKCorrelationCGMd, &_sSaySo13HKCorrelationCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKCorrelation] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of Statistics<Double>?(uint64_t a1)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGMd, &_s19SiriWellnessIntents10StatisticsVySdGMR);
  if (!(*(*(v6 - 8) + 48))(a1, 1))
  {
    v3 = type metadata accessor for DateInterval();
    v4 = *(v3 - 8);
    if (!(*(v4 + 48))(a1, 1))
    {
      (*(v4 + 8))(a1, v3);
    }

    (*(v4 + 8))(a1 + *(v6 + 28), v3);
    v1 = *(a1 + *(v6 + 36) + 8);
  }

  return a1;
}

__n128 outlined init with take of Statistics<Double>(char *a1, char *a2)
{
  v7 = type metadata accessor for DateInterval();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(a2, a1, v7);
    (*(v8 + 56))(a2, 0, 1, v7);
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGMd, &_s19SiriWellnessIntents10StatisticsVySdGMR);
  (*(v8 + 32))(&a2[v4[7]], &a1[v4[7]], v7);
  *&a2[v4[8]] = *&a1[v4[8]];
  *&a2[v4[9]] = *&a1[v4[9]];
  result = *&a1[v4[10]];
  *&a2[v4[10]] = result;
  *&a2[v4[11]] = *&a1[v4[11]];
  *&a2[v4[12]] = *&a1[v4[12]];
  *&a2[v4[13]] = *&a1[v4[13]];
  return result;
}

__n128 outlined init with copy of Statistics<(first: Double, second: Double)>(char *a1, char *a2)
{
  v12 = type metadata accessor for DateInterval();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v13 + 16))(a2, a1, v12);
    (*(v13 + 56))(a2, 0, 1, v12);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGMd, &_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGMR);
  (*(v13 + 16))(&a2[v9[7]], &a1[v9[7]], v12);
  *&a2[v9[8]] = *&a1[v9[8]];
  v7 = &a2[v9[9]];
  v3 = &a1[v9[9]];
  *v7 = *v3;
  v8 = *(v3 + 1);

  *(v7 + 1) = v8;
  v4 = &a2[v9[10]];
  v5 = v9[10];
  *v4 = *&a1[v5];
  *(v4 + 1) = *&a1[v5 + 16];
  *&a2[v9[11]] = *&a1[v9[11]];
  *&a2[v9[12]] = *&a1[v9[12]];
  result = *&a1[v9[13]];
  *&a2[v9[13]] = result;
  return result;
}

uint64_t outlined destroy of Statistics<(first: Double, second: Double)>(uint64_t a1)
{
  v5 = type metadata accessor for DateInterval();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1, 1))
  {
    (*(v6 + 8))(a1, v5);
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGMd, &_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGMR);
  (*(v6 + 8))(a1 + *(v3 + 28), v5);
  v1 = *(a1 + *(v3 + 36) + 8);

  return a1;
}

unint64_t type metadata accessor for HKCorrelation()
{
  v2 = lazy cache variable for type metadata for HKCorrelation;
  if (!lazy cache variable for type metadata for HKCorrelation)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKCorrelation);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_26995E908()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26995E948()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void *outlined destroy of (HKQuantitySample, HKQuantitySample)(void *a1)
{
  MEMORY[0x277D82BD8](*a1);
  MEMORY[0x277D82BD8](a1[1]);
  return a1;
}

unint64_t lazy protocol witness table accessor for type HKSample and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type HKSample and conformance NSObject;
  if (!lazy protocol witness table cache variable for type HKSample and conformance NSObject)
  {
    type metadata accessor for HKSample();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKSample and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Set<HKSample> and conformance Set<A>()
{
  v2 = lazy protocol witness table cache variable for type Set<HKSample> and conformance Set<A>;
  if (!lazy protocol witness table cache variable for type Set<HKSample> and conformance Set<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShySo8HKSampleCGMd, &_sShySo8HKSampleCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Set<HKSample> and conformance Set<A>);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Set<HKSample> and conformance Set<A>;
  if (!lazy protocol witness table cache variable for type Set<HKSample> and conformance Set<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShySo8HKSampleCGMd, &_sShySo8HKSampleCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Set<HKSample> and conformance Set<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26995EAD8()
{
  v3 = *(v0 + 16);
  type metadata accessor for Date();
  swift_getTupleTypeMetadata2();
  type metadata accessor for Optional();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = *(type metadata accessor for CheckedContinuation() - 8);
  v1 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v5 = (v1 + *(v4 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v0 + v1);
  MEMORY[0x277D82BD8](*(v0 + v5));
  return swift_deallocObject();
}

void partial apply for closure #1 in closure #1 in HKHealthStore.query<A>(categoryType:start:end:enumerationType:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  type metadata accessor for Date();
  swift_getTupleTypeMetadata2();
  type metadata accessor for Optional();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v11 = *(type metadata accessor for CheckedContinuation() - 8);
  v4 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v5 = *(v3 + ((v4 + *(v11 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in closure #1 in HKHealthStore.query<A>(categoryType:start:end:enumerationType:)(a1, a2, a3, v3 + v4, v5, v7, v8);
}

uint64_t sub_26995EE10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26995EE50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t outlined destroy of A?(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

uint64_t outlined init with copy of (value: A, startDate: Date)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a3 - 8) + 16))();
  v7 = *(a4 + 48);
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 16))(a2 + v7, a1 + v7);
  return a2;
}

uint64_t outlined destroy of (value: A, startDate: Date)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a2 - 8) + 8))();
  v6 = *(a3 + 48);
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 8))(a1 + v6);
  return a1;
}

unint64_t lazy protocol witness table accessor for type [HKSample] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HKSample] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKSample] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo8HKSampleCGMd, &_sSaySo8HKSampleCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKSample] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t *outlined destroy of ContiguousArray<A1>(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_26995F150()
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents10StatisticsVySdGSgs5Error_pGMd, &_sScCy19SiriWellnessIntents10StatisticsVySdGSgs5Error_pGMR);
  v8 = *(v6 - 8);
  v5 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + *(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMd, &_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMR);
  v1 = *(*(v7 - 8) + 80);
  v12 = (v11 + 8 + v1) & ~v1;
  v9 = (v12 + *(*(v7 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v8 + 8))(v0 + v5, v6);
  MEMORY[0x277D82BD8](*(v0 + v10));
  MEMORY[0x277D82BD8](*(v0 + v11));
  v13 = type metadata accessor for DateInterval();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v12, 1))
  {
    (*(v14 + 8))(v4 + v12, v13);
  }

  MEMORY[0x277D82BD8](*(v4 + v12 + *(v7 + 48)));
  v2 = *(v4 + v12 + *(v7 + 64));

  MEMORY[0x277D82BD8](*(v4 + v9));
  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in HKHealthStore.query(quantityType:start:end:)(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents10StatisticsVySdGSgs5Error_pGMd, &_sScCy19SiriWellnessIntents10StatisticsVySdGSgs5Error_pGMR) - 8);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v11 = (v14 + *(v10 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMd, &_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMR);
  v5 = (((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8 + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v6 = *(v3 + v11);
  v7 = *(v3 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v3 + ((v5 + *(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in HKHealthStore.query(quantityType:start:end:)(a1, a2, a3, v3 + v14, v6, v7, (v3 + v5), v8);
}

uint64_t sub_26995F620()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26995F660()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26995F738()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26995F778()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

id UndoMedsIntentHandler.init(storage:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  __dst[5] = a1;
  v12 = v1;
  outlined init with copy of QuantityPersisting?(a1, v9);
  if (v10)
  {
    outlined init with take of QuantityPersisting(v9, __dst);
  }

  else
  {
    v2 = MedsUndoer.init()();
    __dst[3] = &type metadata for MedsUndoer;
    __dst[4] = &protocol witness table for MedsUndoer;
    __dst[0] = v2;
    __dst[1] = v3;
    if (v10)
    {
      outlined destroy of QuantityPersisting?(v9);
    }
  }

  outlined init with take of QuantityPersisting(__dst, &v1[OBJC_IVAR____TtC19SiriWellnessIntents21UndoMedsIntentHandler_storage]);
  v8.receiver = v12;
  v8.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  MEMORY[0x277D82BE0](v5);
  v12 = v5;
  outlined destroy of QuantityPersisting?(a1);
  MEMORY[0x277D82BD8](v12);
  return v5;
}

uint64_t MedsUndoer.init()()
{
  v3 = 0;
  v4 = 0;
  type metadata accessor for HKHealthStore();
  v2 = NSDateFormatter.__allocating_init()();
  MEMORY[0x277D82BE0](v2);
  v3 = v2;
  type metadata accessor for HKMedicationExposableDoseEventControl();
  MEMORY[0x277D82BE0](v2);
  v1 = HKUnitPreferenceController.__allocating_init(healthStore:)(v2);
  MEMORY[0x277D82BE0](v1);
  v4 = v1;
  outlined destroy of (HKQuantitySample, HKQuantitySample)(&v3);
  return v2;
}

unint64_t type metadata accessor for HKMedicationExposableDoseEventControl()
{
  v2 = lazy cache variable for type metadata for HKMedicationExposableDoseEventControl;
  if (!lazy cache variable for type metadata for HKMedicationExposableDoseEventControl)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKMedicationExposableDoseEventControl);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t UndoMedsIntentHandler.handle(intent:)(uint64_t a1)
{
  v2[19] = v1;
  v2[18] = a1;
  v2[10] = v2;
  v2[11] = 0;
  v2[12] = 0;
  v2[17] = 0;
  v3 = type metadata accessor for Logger();
  v2[20] = v3;
  v7 = *(v3 - 8);
  v2[21] = v7;
  v4 = *(v7 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[11] = a1;
  v2[12] = v1;
  v5 = v2[10];

  return MEMORY[0x2822009F8](UndoMedsIntentHandler.handle(intent:), 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 192);
  *(v6 + 80) = *v1;
  *(v6 + 200) = a1;

  v4 = *(v6 + 80);

  return MEMORY[0x2822009F8](UndoMedsIntentHandler.handle(intent:), 0);
}

uint64_t UndoMedsIntentHandler.handle(intent:)()
{
  v1 = *(v0 + 144);
  *(v0 + 80) = v0;
  v31 = [v1 matchingMeds];
  if (v31)
  {
    type metadata accessor for MatchedMedName();
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v31);
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  *(v30 + 184) = v29;
  if (v29)
  {
    v2 = *(v30 + 152);
    *(v30 + 136) = v29;
    outlined init with copy of QuantityPersisting(v2 + OBJC_IVAR____TtC19SiriWellnessIntents21UndoMedsIntentHandler_storage, v30 + 16);
    v25 = *(v30 + 40);
    v26 = *(v30 + 48);
    __swift_project_boxed_opaque_existential_1((v30 + 16), v25);
    v27 = (*(v26 + 8) + **(v26 + 8));
    v3 = *(*(v26 + 8) + 4);
    v4 = swift_task_alloc();
    *(v30 + 192) = v4;
    *v4 = *(v30 + 80);
    v4[1] = UndoMedsIntentHandler.handle(intent:);

    return v27(v29, v25, v26);
  }

  else
  {
    v6 = *(v30 + 176);
    v21 = *(v30 + 160);
    v19 = *(v30 + 168);
    v20 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v19 + 16))(v6, v20, v21);
    swift_endAccess();
    v23 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v24 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v23, v22))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v16 = createStorage<A>(capacity:type:)(0);
      v17 = createStorage<A>(capacity:type:)(0);
      *(v30 + 104) = buf;
      *(v30 + 112) = v16;
      *(v30 + 120) = v17;
      serialize(_:at:)(0, (v30 + 104));
      serialize(_:at:)(0, (v30 + 104));
      *(v30 + 128) = v24;
      v18 = swift_task_alloc();
      v18[2] = v30 + 104;
      v18[3] = v30 + 112;
      v18[4] = v30 + 120;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v23, v22, "Missing matchingMeds. Aborting delete.", buf, 2u);
      destroyStorage<A>(_:count:)(v16, 0, v14);
      destroyStorage<A>(_:count:)(v17, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    v11 = *(v30 + 176);
    v12 = *(v30 + 160);
    v10 = *(v30 + 168);
    MEMORY[0x277D82BD8](v23);
    (*(v10 + 8))(v11, v12);
    type metadata accessor for UndoMedsIntentResponse();
    v13 = UndoMedsIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    v7 = *(v30 + 176);

    v8 = *(*(v30 + 80) + 8);
    v9 = *(v30 + 80);

    return v8(v13);
  }
}

{
  v5 = v0[23];
  v0[10] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v6 = v0[25];
  v1 = v0[22];

  v2 = *(v0[10] + 8);
  v3 = v0[10];

  return v2(v6);
}

uint64_t @objc closure #1 in UndoMedsIntentHandler.handle(intent:)(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a1;
  v3[2] = v3;
  MEMORY[0x277D82BE0](a1);
  v3[5] = _Block_copy(a2);
  MEMORY[0x277D82BE0](a3);
  v5 = swift_task_alloc();
  *(v8 + 48) = v5;
  *v5 = *(v8 + 16);
  v5[1] = @objc closure #1 in LogQuantityIntentHandler.handle(intent:);

  return UndoMedsIntentHandler.handle(intent:)(a1);
}

id UndoMedsIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MedsUndoer.undo(matchingMeds:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[39] = a3;
  v3[38] = a2;
  v3[37] = a1;
  v3[29] = v3;
  v3[30] = 0;
  v3[27] = 0;
  v3[28] = 0;
  v3[31] = 0;
  v3[32] = 0;
  v4 = type metadata accessor for Logger();
  v3[40] = v4;
  v7 = *(v4 - 8);
  v3[41] = v7;
  v8 = *(v7 + 64);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[30] = a1;
  v3[27] = a2;
  v3[28] = a3;
  v5 = v3[29];

  return MEMORY[0x2822009F8](MedsUndoer.undo(matchingMeds:), 0);
}

uint64_t MedsUndoer.undo(matchingMeds:)()
{
  v36 = v0;
  v1 = v0[44];
  v18 = v0[41];
  v20 = v0[40];
  v21 = v0[37];
  v0[29] = v0;
  v19 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *(v18 + 16);
  v0[45] = v2;
  v0[46] = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v2(v1, v19, v20);
  swift_endAccess();

  v22 = swift_allocObject();
  *(v22 + 16) = v21;

  v23 = swift_allocObject();
  *(v23 + 16) = partial apply for implicit closure #3 in getPreferredUnit(for:store:);
  *(v23 + 24) = v22;

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  v25 = swift_allocObject();
  *(v25 + 16) = 32;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_1;
  *(v24 + 24) = v23;
  v27 = swift_allocObject();
  *(v27 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v27 + 24) = v24;
  v0[47] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v28 = v3;

  *v28 = partial apply for closure #1 in OSLogArguments.append(_:);
  v28[1] = v25;

  v28[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v28[3] = v26;

  v28[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v28[5] = v27;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v29, v30))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v15 = createStorage<A>(capacity:type:)(0);
    v16 = createStorage<A>(capacity:type:)(1);
    v31 = buf;
    v32 = v15;
    v33 = v16;
    serialize(_:at:)(2, &v31);
    serialize(_:at:)(1, &v31);
    v34 = partial apply for closure #1 in OSLogArguments.append(_:);
    v35 = v25;
    closure #1 in osLogInternal(_:log:type:)(&v34, &v31, &v32, &v33);
    v34 = partial apply for closure #1 in OSLogArguments.append(_:);
    v35 = v26;
    closure #1 in osLogInternal(_:log:type:)(&v34, &v31, &v32, &v33);
    v34 = partial apply for closure #1 in OSLogArguments.append(_:);
    v35 = v27;
    closure #1 in osLogInternal(_:log:type:)(&v34, &v31, &v32, &v33);
    _os_log_impl(&dword_269912000, v29, v30, "Starting to undo matching meds: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v15, 0, v13);
    destroyStorage<A>(_:count:)(v16, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v17[48] = 0;
  v11 = v17[44];
  v12 = v17[40];
  v10 = v17[41];
  MEMORY[0x277D82BD8](v29);
  v4 = *(v10 + 8);
  v17[49] = v4;
  v17[50] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v11, v12);
  v5 = swift_task_alloc();
  v17[51] = v5;
  *v5 = v17[29];
  v5[1] = MedsUndoer.undo(matchingMeds:);
  v6 = v17[39];
  v7 = v17[38];
  v8 = v17[37];

  return MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:)(v8, v7, v6);
}

{
  v1 = *(v0 + 416);
  v2 = *(v0 + 312);
  v7 = v2;
  *(v0 + 232) = v0;
  *(v0 + 248) = v1;
  MEMORY[0x277D82BE0](v2);

  type metadata accessor for HKMedicationExposableDoseEvent();
  isa = Array._bridgeToObjectiveC()().super.isa;
  *(v0 + 424) = isa;

  *(v0 + 16) = *(v0 + 232);
  *(v0 + 56) = v4;
  *(v0 + 24) = MedsUndoer.undo(matchingMeds:);
  v5 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  *(v0 + 112) = v5;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 92) = 0;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type () zero on error;
  *(v0 + 104) = &block_descriptor_2;
  [v7 writeDoseEvents:isa completion:?];

  return MEMORY[0x282200938](v0 + 16);
}

{
  v6 = *v0;
  v6[29] = *v0;
  v7 = v6 + 29;
  v1 = v6[6];
  v6[54] = v1;
  if (v1)
  {
    v4 = *v7;
    v3 = MedsUndoer.undo(matchingMeds:);
  }

  else
  {
    v2 = *v7;
    v3 = MedsUndoer.undo(matchingMeds:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v42 = v0;
  v22 = v0[53];
  v27 = v0[52];
  v34 = v0[47];
  v25 = v0[46];
  v26 = v0[45];
  v1 = v0[43];
  v24 = v0[40];
  v2 = v0[39];
  v0[29] = v0;
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v22);
  v23 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v26(v1, v23, v24);
  swift_endAccess();

  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  v30 = swift_allocObject();
  *(v30 + 16) = 32;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v29 = swift_allocObject();
  *(v29 + 16) = partial apply for implicit closure #2 in MedsUndoer.undo(matchingMeds:);
  *(v29 + 24) = v28;
  v32 = swift_allocObject();
  *(v32 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v32 + 24) = v29;
  _allocateUninitializedArray<A>(_:)();
  v33 = v3;

  *v33 = partial apply for closure #1 in OSLogArguments.append(_:);
  v33[1] = v30;

  v33[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v33[3] = v31;

  v33[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v33[5] = v32;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v35, v36))
  {
    v4 = v21[48];
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v19 = createStorage<A>(capacity:type:)(0);
    v20 = createStorage<A>(capacity:type:)(1);
    v37 = buf;
    v38 = v19;
    v39 = v20;
    serialize(_:at:)(2, &v37);
    serialize(_:at:)(1, &v37);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v30;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    if (v4)
    {
    }

    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v31;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v32;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    _os_log_impl(&dword_269912000, v35, v36, "successfully undid writing of %s doseEvents, returning .success", buf, 0xCu);
    destroyStorage<A>(_:count:)(v19, 0, v17);
    destroyStorage<A>(_:count:)(v20, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v13 = v21[52];
  v11 = v21[50];
  v12 = v21[49];
  v9 = v21[43];
  v10 = v21[40];
  MEMORY[0x277D82BD8](v35);
  v12(v9, v10);
  type metadata accessor for UndoMedsIntentResponse();
  v16 = UndoMedsIntentResponse.__allocating_init(code:userActivity:)(4, 0);

  v6 = v21[44];
  v14 = v21[43];
  v15 = v21[42];

  v7 = *(v21[29] + 8);
  v8 = v21[29];

  return v7(v16);
}

{
  v1 = v0[54];
  v24 = v0[53];
  v29 = v0[47];
  v27 = v0[46];
  v28 = v0[45];
  v22 = v0[42];
  v26 = v0[40];
  v23 = v0[39];
  v0[29] = v0;
  swift_willThrow();
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  v2 = v1;
  v0[32] = v1;
  v25 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v28(v22, v25, v26);
  swift_endAccess();
  v31 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  v32 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v31, v30))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v18 = createStorage<A>(capacity:type:)(0);
    v19 = createStorage<A>(capacity:type:)(0);
    *(v21 + 264) = buf;
    *(v21 + 272) = v18;
    *(v21 + 280) = v19;
    serialize(_:at:)(0, (v21 + 264));
    serialize(_:at:)(0, (v21 + 264));
    *(v21 + 288) = v32;
    v20 = swift_task_alloc();
    v20[2] = v21 + 264;
    v20[3] = v21 + 272;
    v20[4] = v21 + 280;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v31, v30, "failed to undo writing of doseEvents, returning .success", buf, 2u);
    destroyStorage<A>(_:count:)(v18, 0, v16);
    destroyStorage<A>(_:count:)(v19, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v11 = *(v21 + 432);
  v12 = *(v21 + 416);
  v9 = *(v21 + 400);
  v10 = *(v21 + 392);
  v7 = *(v21 + 336);
  v8 = *(v21 + 320);
  MEMORY[0x277D82BD8](v31);
  v10(v7, v8);
  type metadata accessor for UndoMedsIntentResponse();
  v15 = UndoMedsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  v3 = *(v21 + 352);
  v13 = *(v21 + 344);
  v14 = *(v21 + 336);

  v4 = *(*(v21 + 232) + 8);
  v5 = *(v21 + 232);

  return v4(v15);
}

uint64_t MedsUndoer.undo(matchingMeds:)(uint64_t a1)
{
  v6 = *v1;
  v3 = *(*v1 + 408);
  *(v6 + 232) = *v1;
  *(v6 + 416) = a1;

  v4 = *(v6 + 232);

  return MEMORY[0x2822009F8](MedsUndoer.undo(matchingMeds:), 0);
}

uint64_t MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[92] = a3;
  v3[91] = a2;
  v3[90] = a1;
  v3[56] = v3;
  v3[57] = 0;
  v3[46] = 0;
  v3[47] = 0;
  v3[58] = 0;
  v3[60] = 0;
  v3[65] = 0;
  v3[71] = 0;
  v3[37] = 0;
  v3[38] = 0;
  v3[39] = 0;
  v3[72] = 0;
  v3[50] = 0;
  v3[51] = 0;
  v3[75] = 0;
  v3[85] = 0;
  v3[87] = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v3[93] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[94] = v5;
  v11 = *(v5 - 8);
  v3[95] = v11;
  v3[96] = *(v11 + 64);
  v3[97] = swift_task_alloc();
  v3[98] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[99] = v6;
  v12 = *(v6 - 8);
  v3[100] = v12;
  v13 = *(v12 + 64);
  v3[101] = swift_task_alloc();
  v3[102] = swift_task_alloc();
  v3[103] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v3[104] = v7;
  v14 = *(v7 - 8);
  v3[105] = v14;
  v15 = *(v14 + 64);
  v3[106] = swift_task_alloc();
  v3[107] = swift_task_alloc();
  v3[108] = swift_task_alloc();
  v3[109] = swift_task_alloc();
  v8 = type metadata accessor for DateInterval();
  v3[110] = v8;
  v16 = *(v8 - 8);
  v3[111] = v16;
  v17 = *(v16 + 64);
  v3[112] = swift_task_alloc();
  v3[113] = swift_task_alloc();
  v3[57] = a1;
  v3[46] = a2;
  v3[47] = a3;
  v9 = v3[56];

  return MEMORY[0x2822009F8](MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:), 0);
}

uint64_t MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:)()
{
  v10 = *(v0 + 904);
  v13 = *(v0 + 896);
  v11 = *(v0 + 888);
  v12 = *(v0 + 880);
  v4 = *(v0 + 872);
  v8 = *(v0 + 864);
  v5 = *(v0 + 856);
  v9 = *(v0 + 848);
  v3 = *(v0 + 840);
  v6 = *(v0 + 832);
  v16 = *(v0 + 736);
  *(v0 + 448) = v0;
  Date.init()();
  Date.startOfDay.getter(v8);
  v7 = *(v3 + 8);
  v7(v4, v6);
  Date.init()();
  Date.endOfDay.getter(v9);
  v7(v5, v6);
  DateInterval.init(start:end:)();
  MEMORY[0x277D82BE0](v16);
  (*(v11 + 16))(v13, v10, v12);
  isa = DateInterval._bridgeToObjectiveC()().super.isa;
  *(v0 + 912) = isa;
  v1 = *(v11 + 8);
  *(v0 + 920) = v1;
  *(v0 + 928) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v1(v13, v12);
  *(v0 + 16) = *(v0 + 448);
  *(v0 + 56) = v0 + 472;
  *(v0 + 24) = MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:);
  v14 = swift_continuation_init();
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySo30HKMedicationExposableDoseEventCGs5Error_pGMd, &_sSccySaySo30HKMedicationExposableDoseEventCGs5Error_pGMR);
  *(v0 + 176) = v14;
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 156) = 0;
  *(v0 + 160) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [HKMedicationExposableDoseEvent];
  *(v0 + 168) = &block_descriptor_45;
  [v16 doseEventsForDateInterval:isa medicationIdentifier:0 completion:?];

  return MEMORY[0x282200938](v0 + 16);
}

{
  v7 = *v0;
  v8 = *v0;
  v6 = (v8 + 448);
  *(v8 + 448) = *v0;
  v1 = *(v7 + 48);
  *(v8 + 936) = v1;
  if (v1)
  {
    v4 = *v6;
    v3 = MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:);
  }

  else
  {
    v2 = *v6;
    v3 = MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v100 = v0[114];
  v99 = v0[92];
  v0[56] = v0;
  v101 = v0[59];

  v0[58] = v101;
  MEMORY[0x277D82BD8](v99);
  MEMORY[0x277D82BD8](v100);
  v0[67] = v101;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  v0[118] = v102;
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  v103 = Sequence.sorted(by:)();
  outlined destroy of [HKQuantityType]((v98 + 536));
  *(v98 + 544) = v103;
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  v97 = _ArrayProtocol.filter(_:)();
  v95 = *(v98 + 720);
  *(v98 + 552) = v97;
  v1 = lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  MEMORY[0x26D649280](v102, v1);
  *(v98 + 560) = *(v98 + 528);
  type metadata accessor for HKMedicationExposableDoseEvent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss18ReversedCollectionVySaySo30HKMedicationExposableDoseEventCGGMR);
  lazy protocol witness table accessor for type ReversedCollection<[HKMedicationExposableDoseEvent]> and conformance ReversedCollection<A>();
  *(v98 + 520) = Array.init<A>(_:)();
  *(v98 + 568) = _allocateUninitializedArray<A>(_:)();
  v2 = type metadata accessor for MatchedMedName();
  v96 = MEMORY[0x26D6494A0](v95, v2);
  if (v96 < 0)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  *(v98 + 384) = 0;
  *(v98 + 392) = v96;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  Collection<>.makeIterator()();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd, &_ss16IndexingIteratorVySnySiGGMR);
    IndexingIterator.next()();
    if (*(v98 + 440))
    {
      break;
    }

    *(v98 + 696) = *(v98 + 432);
    v4 = *(v98 + 520);
    Array.subscript.getter();
    *(v98 + 712) = *(v98 + 704);
    Array.append(_:)();
  }

  *(v98 + 576) = _allocateUninitializedArray<A>(_:)();
  v92 = *(v98 + 568);

  *(v98 + 584) = v92;
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  Collection<>.makeIterator()();
  v93 = 0;
  for (i = 0; ; i = v74)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
    IndexingIterator.next()();
    v91 = *(v98 + 592);
    *(v98 + 952) = v91;
    if (!v91)
    {
      break;
    }

    *(v98 + 600) = v91;
    *(v98 + 608) = [v91 logOrigin];
    *(v98 + 616) = 2;
    type metadata accessor for HKMedicationDoseEventLogOrigin();
    lazy protocol witness table accessor for type HKMedicationDoseEventLogOrigin and conformance HKMedicationDoseEventLogOrigin();
    if ((== infix<A>(_:_:)() & 1) == 0)
    {
      v69 = [v91 persistedUUID];
      if (v69)
      {
        v66 = *(v98 + 776);
        v67 = *(v98 + 752);
        v68 = *(v98 + 744);
        v65 = *(v98 + 760);
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        (*(v65 + 32))(v68, v66, v67);
        (*(v65 + 56))(v68, 0, 1, v67);
        MEMORY[0x277D82BD8](v69);
      }

      else
      {
        (*(*(v98 + 760) + 56))(*(v98 + 744), 1, 1, *(v98 + 752));
      }

      if ((*(*(v98 + 760) + 48))(*(v98 + 744), 1, *(v98 + 752)) != 1)
      {
        v6 = *(v98 + 816);
        v47 = *(v98 + 792);
        v48 = *(v98 + 784);
        v53 = *(v98 + 776);
        v51 = *(v98 + 768);
        v54 = *(v98 + 752);
        v7 = *(v98 + 744);
        v45 = *(v98 + 800);
        v50 = *(v98 + 760);
        v55 = *(v50 + 32);
        v55();
        v46 = Logger.wellnessIntents.unsafeMutableAddressor();
        swift_beginAccess();
        (*(v45 + 16))(v6, v46, v47);
        swift_endAccess();
        v49 = *(v50 + 16);
        v49(v53, v48, v54);
        v52 = (*(v50 + 80) + 16) & ~*(v50 + 80);
        v56 = swift_allocObject();
        (v55)(v56 + v52, v53, v54);

        v57 = swift_allocObject();
        *(v57 + 16) = partial apply for implicit closure #1 in MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:);
        *(v57 + 24) = v56;

        log = Logger.logObject.getter();
        v64 = static os_log_type_t.debug.getter();
        v59 = swift_allocObject();
        *(v59 + 16) = 32;
        v60 = swift_allocObject();
        *(v60 + 16) = 8;
        v58 = swift_allocObject();
        *(v58 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
        *(v58 + 24) = v57;
        v61 = swift_allocObject();
        *(v61 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
        *(v61 + 24) = v58;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        _allocateUninitializedArray<A>(_:)();
        v62 = v8;

        *v62 = partial apply for closure #1 in OSLogArguments.append(_:);
        v62[1] = v59;

        v62[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v62[3] = v60;

        v62[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v62[5] = v61;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(log, v64))
        {
          v42 = static UnsafeMutablePointer.allocate(capacity:)();
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v43 = createStorage<A>(capacity:type:)(0);
          v44 = createStorage<A>(capacity:type:)(1);
          *(v98 + 624) = v42;
          *(v98 + 632) = v43;
          *(v98 + 640) = v44;
          serialize(_:at:)(2, (v98 + 624));
          serialize(_:at:)(1, (v98 + 624));
          *(v98 + 416) = partial apply for closure #1 in OSLogArguments.append(_:);
          *(v98 + 424) = v59;
          closure #1 in osLogInternal(_:log:type:)(v98 + 416, v98 + 624, v98 + 632, v98 + 640);
          *(v98 + 416) = partial apply for closure #1 in OSLogArguments.append(_:);
          *(v98 + 424) = v60;
          closure #1 in osLogInternal(_:log:type:)(v98 + 416, v98 + 624, v98 + 632, v98 + 640);
          *(v98 + 416) = partial apply for closure #1 in OSLogArguments.append(_:);
          *(v98 + 424) = v61;
          closure #1 in osLogInternal(_:log:type:)(v98 + 416, v98 + 624, v98 + 632, v98 + 640);
          _os_log_impl(&dword_269912000, log, v64, "Deleting as needed doseEvent with persistent uuid: %s", v42, 0xCu);
          destroyStorage<A>(_:count:)(v43, 0, v41);
          destroyStorage<A>(_:count:)(v44, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D6497C0](v42, MEMORY[0x277D84B78]);

          v39 = 0;
        }

        else
        {

          v39 = v93;
        }

        *(v98 + 960) = v39;
        v31 = *(v98 + 816);
        v32 = *(v98 + 792);
        v33 = *(v98 + 784);
        v9 = *(v98 + 776);
        v35 = *(v98 + 752);
        v38 = *(v98 + 736);
        v30 = *(v98 + 800);
        v34 = *(v98 + 760);
        MEMORY[0x277D82BD8](log);
        (*(v30 + 8))(v31, v32);
        MEMORY[0x277D82BE0](v38);
        v49(v9, v33, v35);
        isa = UUID._bridgeToObjectiveC()().super.isa;
        *(v98 + 968) = isa;
        v10 = *(v34 + 8);
        *(v98 + 976) = v10;
        *(v98 + 984) = (v34 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v10(v9, v35);
        *(v98 + 80) = *(v98 + 448);
        *(v98 + 120) = v40;
        *(v98 + 88) = MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:);
        v36 = swift_continuation_init();
        *(v98 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
        *(v98 + 240) = v36;
        *(v98 + 208) = MEMORY[0x277D85DD0];
        *(v98 + 216) = 1107296256;
        *(v98 + 220) = 0;
        *(v98 + 224) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type () zero on error;
        *(v98 + 232) = &block_descriptor_72;
        [v38 deleteDoseEventWithPersistentUUID:isa completion:?];

        return MEMORY[0x282200938](v98 + 80);
      }

      outlined destroy of UUID?(*(v98 + 744));
      v89 = v93;
      goto LABEL_26;
    }

    v90 = MedsUndoer.getUpdatedDoseEvent(doseEvent:matchingMeds:)(v91, *(v98 + 720), *(v98 + 728), *(v98 + 736));
    if (v90)
    {
      v88 = *(v98 + 944);
      *(v98 + 680) = v90;
      MEMORY[0x277D82BE0](v90);
      *(v98 + 688) = v90;
      Array.append(_:)();
      MEMORY[0x277D82BD8](v90);
      v89 = v93;
LABEL_26:
      MEMORY[0x277D82BD8](*(v98 + 952));
      v73 = v89;
      v74 = i;
      goto LABEL_27;
    }

    v5 = *(v98 + 824);
    v84 = *(v98 + 792);
    v82 = *(v98 + 800);
    v83 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v82 + 16))(v5, v83, v84);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v87 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v85))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v79 = createStorage<A>(capacity:type:)(0);
      v80 = createStorage<A>(capacity:type:)(0);
      *(v98 + 648) = buf;
      *(v98 + 656) = v79;
      *(v98 + 664) = v80;
      serialize(_:at:)(0, (v98 + 648));
      serialize(_:at:)(0, (v98 + 648));
      *(v98 + 672) = v87;
      v81 = swift_task_alloc();
      v81[2] = v98 + 648;
      v81[3] = v98 + 656;
      v81[4] = v98 + 664;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, oslog, v85, "Failed to get a matching med for this doseEvent, skipping", buf, 2u);
      destroyStorage<A>(_:count:)(v79, 0, v77);
      destroyStorage<A>(_:count:)(v80, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

      v75 = 0;
      v76 = 0;
    }

    else
    {

      v75 = v93;
      v76 = i;
    }

    v71 = *(v98 + 824);
    v72 = *(v98 + 792);
    v70 = *(v98 + 800);
    MEMORY[0x277D82BD8](oslog);
    (*(v70 + 8))(v71, v72);
    MEMORY[0x277D82BD8](v91);
    v73 = v75;
    v74 = v76;
LABEL_27:
    v93 = v73;
  }

  v15 = *(v98 + 928);
  v16 = *(v98 + 920);
  v17 = *(v98 + 904);
  v14 = *(v98 + 880);
  outlined destroy of [HKQuantityType]((v98 + 400));
  v29 = *(v98 + 576);

  outlined destroy of [HKQuantityType]((v98 + 576));
  outlined destroy of [HKQuantityType]((v98 + 568));
  outlined destroy of [HKQuantityType]((v98 + 520));
  outlined destroy of [HKQuantityType]((v98 + 464));
  v16(v17, v14);
  v11 = *(v98 + 904);
  v18 = *(v98 + 896);
  v19 = *(v98 + 872);
  v20 = *(v98 + 864);
  v21 = *(v98 + 856);
  v22 = *(v98 + 848);
  v23 = *(v98 + 824);
  v24 = *(v98 + 816);
  v25 = *(v98 + 808);
  v26 = *(v98 + 784);
  v27 = *(v98 + 776);
  v28 = *(v98 + 744);

  v12 = *(*(v98 + 448) + 8);
  v13 = *(v98 + 448);

  return v12(v29);
}

{
  v7 = *v0;
  v8 = *v0;
  v6 = (v8 + 448);
  *(v8 + 448) = *v0;
  v1 = *(v7 + 112);
  *(v8 + 992) = v1;
  if (v1)
  {
    v4 = *v6;
    v3 = MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:);
  }

  else
  {
    v2 = *v6;
    v3 = MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v96 = v0[123];
  v97 = v0[122];
  v93 = v0[121];
  v94 = v0[98];
  v95 = v0[94];
  v1 = v0[92];
  v0[56] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v93);
  v97(v94, v95);
  v98 = v0[120];
  while (2)
  {
    v88 = v98;
    v89 = v63;
LABEL_25:
    MEMORY[0x277D82BD8](*(v92 + 952));
    v72 = v88;
    for (i = v89; ; i = v75)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
      IndexingIterator.next()();
      v91 = *(v92 + 592);
      *(v92 + 952) = v91;
      if (!v91)
      {
        v13 = *(v92 + 928);
        v14 = *(v92 + 920);
        v15 = *(v92 + 904);
        v12 = *(v92 + 880);
        outlined destroy of [HKQuantityType]((v92 + 400));
        v27 = *(v92 + 576);

        outlined destroy of [HKQuantityType]((v92 + 576));
        outlined destroy of [HKQuantityType]((v92 + 568));
        outlined destroy of [HKQuantityType]((v92 + 520));
        outlined destroy of [HKQuantityType]((v92 + 464));
        v14(v15, v12);
        v9 = *(v92 + 904);
        v16 = *(v92 + 896);
        v17 = *(v92 + 872);
        v18 = *(v92 + 864);
        v19 = *(v92 + 856);
        v20 = *(v92 + 848);
        v21 = *(v92 + 824);
        v22 = *(v92 + 816);
        v23 = *(v92 + 808);
        v24 = *(v92 + 784);
        v25 = *(v92 + 776);
        v26 = *(v92 + 744);

        v10 = *(*(v92 + 448) + 8);
        v11 = *(v92 + 448);

        return v10(v27);
      }

      *(v92 + 600) = v91;
      *(v92 + 608) = [v91 logOrigin];
      *(v92 + 616) = 2;
      type metadata accessor for HKMedicationDoseEventLogOrigin();
      lazy protocol witness table accessor for type HKMedicationDoseEventLogOrigin and conformance HKMedicationDoseEventLogOrigin();
      if ((== infix<A>(_:_:)() & 1) == 0)
      {
        break;
      }

      v90 = MedsUndoer.getUpdatedDoseEvent(doseEvent:matchingMeds:)(v91, *(v92 + 720), *(v92 + 728), *(v92 + 736));
      if (v90)
      {
        v87 = *(v92 + 944);
        *(v92 + 680) = v90;
        MEMORY[0x277D82BE0](v90);
        *(v92 + 688) = v90;
        Array.append(_:)();
        MEMORY[0x277D82BD8](v90);
        v88 = v72;
        v89 = i;
        goto LABEL_25;
      }

      v2 = *(v92 + 824);
      v83 = *(v92 + 792);
      v81 = *(v92 + 800);
      v82 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      (*(v81 + 16))(v2, v82, v83);
      swift_endAccess();
      oslog = Logger.logObject.getter();
      v84 = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v86 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(oslog, v84))
      {
        buf = static UnsafeMutablePointer.allocate(capacity:)();
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v78 = createStorage<A>(capacity:type:)(0);
        v79 = createStorage<A>(capacity:type:)(0);
        *(v92 + 648) = buf;
        *(v92 + 656) = v78;
        *(v92 + 664) = v79;
        serialize(_:at:)(0, (v92 + 648));
        serialize(_:at:)(0, (v92 + 648));
        *(v92 + 672) = v86;
        v80 = swift_task_alloc();
        v80[2] = v92 + 648;
        v80[3] = v92 + 656;
        v80[4] = v92 + 664;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        if (v72)
        {
        }

        _os_log_impl(&dword_269912000, oslog, v84, "Failed to get a matching med for this doseEvent, skipping", buf, 2u);
        destroyStorage<A>(_:count:)(v78, 0, v76);
        destroyStorage<A>(_:count:)(v79, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

        v74 = 0;
        v75 = 0;
      }

      else
      {

        v74 = v72;
        v75 = i;
      }

      v70 = *(v92 + 824);
      v71 = *(v92 + 792);
      v69 = *(v92 + 800);
      MEMORY[0x277D82BD8](oslog);
      (*(v69 + 8))(v70, v71);
      MEMORY[0x277D82BD8](v91);
      v72 = v74;
    }

    v68 = [v91 persistedUUID];
    if (v68)
    {
      v65 = *(v92 + 776);
      v66 = *(v92 + 752);
      v67 = *(v92 + 744);
      v64 = *(v92 + 760);
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v64 + 32))(v67, v65, v66);
      (*(v64 + 56))(v67, 0, 1, v66);
      MEMORY[0x277D82BD8](v68);
    }

    else
    {
      (*(*(v92 + 760) + 56))(*(v92 + 744), 1, 1, *(v92 + 752));
    }

    if ((*(*(v92 + 760) + 48))(*(v92 + 744), 1, *(v92 + 752)) == 1)
    {
      outlined destroy of UUID?(*(v92 + 744));
      v98 = v72;
      v63 = i;
      continue;
    }

    break;
  }

  v4 = *(v92 + 816);
  v45 = *(v92 + 792);
  v46 = *(v92 + 784);
  v51 = *(v92 + 776);
  v49 = *(v92 + 768);
  v52 = *(v92 + 752);
  v5 = *(v92 + 744);
  v43 = *(v92 + 800);
  v48 = *(v92 + 760);
  v53 = *(v48 + 32);
  v53();
  v44 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v43 + 16))(v4, v44, v45);
  swift_endAccess();
  v47 = *(v48 + 16);
  v47(v51, v46, v52);
  v50 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v54 = swift_allocObject();
  (v53)(v54 + v50, v51, v52);

  v55 = swift_allocObject();
  *(v55 + 16) = partial apply for implicit closure #1 in MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:);
  *(v55 + 24) = v54;

  log = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();
  v57 = swift_allocObject();
  *(v57 + 16) = 32;
  v58 = swift_allocObject();
  *(v58 + 16) = 8;
  v56 = swift_allocObject();
  *(v56 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
  *(v56 + 24) = v55;
  v59 = swift_allocObject();
  *(v59 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v59 + 24) = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v60 = v6;

  *v60 = partial apply for closure #1 in OSLogArguments.append(_:);
  v60[1] = v57;

  v60[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v60[3] = v58;

  v60[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v60[5] = v59;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(log, v62))
  {
    v40 = static UnsafeMutablePointer.allocate(capacity:)();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v41 = createStorage<A>(capacity:type:)(0);
    v42 = createStorage<A>(capacity:type:)(1);
    *(v92 + 624) = v40;
    *(v92 + 632) = v41;
    *(v92 + 640) = v42;
    serialize(_:at:)(2, (v92 + 624));
    serialize(_:at:)(1, (v92 + 624));
    *(v92 + 416) = partial apply for closure #1 in OSLogArguments.append(_:);
    *(v92 + 424) = v57;
    closure #1 in osLogInternal(_:log:type:)(v92 + 416, v92 + 624, v92 + 632, v92 + 640);
    if (v72)
    {
    }

    *(v92 + 416) = partial apply for closure #1 in OSLogArguments.append(_:);
    *(v92 + 424) = v58;
    closure #1 in osLogInternal(_:log:type:)(v92 + 416, v92 + 624, v92 + 632, v92 + 640);
    *(v92 + 416) = partial apply for closure #1 in OSLogArguments.append(_:);
    *(v92 + 424) = v59;
    closure #1 in osLogInternal(_:log:type:)(v92 + 416, v92 + 624, v92 + 632, v92 + 640);
    _os_log_impl(&dword_269912000, log, v62, "Deleting as needed doseEvent with persistent uuid: %s", v40, 0xCu);
    destroyStorage<A>(_:count:)(v41, 0, v39);
    destroyStorage<A>(_:count:)(v42, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v40, MEMORY[0x277D84B78]);

    v37 = 0;
  }

  else
  {

    v37 = v72;
  }

  *(v92 + 960) = v37;
  v29 = *(v92 + 816);
  v30 = *(v92 + 792);
  v31 = *(v92 + 784);
  v7 = *(v92 + 776);
  v33 = *(v92 + 752);
  v36 = *(v92 + 736);
  v28 = *(v92 + 800);
  v32 = *(v92 + 760);
  MEMORY[0x277D82BD8](log);
  (*(v28 + 8))(v29, v30);
  MEMORY[0x277D82BE0](v36);
  v47(v7, v31, v33);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  *(v92 + 968) = isa;
  v8 = *(v32 + 8);
  *(v92 + 976) = v8;
  *(v92 + 984) = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v7, v33);
  *(v92 + 80) = *(v92 + 448);
  *(v92 + 120) = v38;
  *(v92 + 88) = MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:);
  v34 = swift_continuation_init();
  *(v92 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  *(v92 + 240) = v34;
  *(v92 + 208) = MEMORY[0x277D85DD0];
  *(v92 + 216) = 1107296256;
  *(v92 + 220) = 0;
  *(v92 + 224) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type () zero on error;
  *(v92 + 232) = &block_descriptor_72;
  [v36 deleteDoseEventWithPersistentUUID:isa completion:?];

  return MEMORY[0x282200938](v92 + 80);
}

{
  v1 = v0[117];
  v33 = v0[116];
  v34 = v0[115];
  v30 = v0[114];
  v31 = v0[113];
  v32 = v0[110];
  v29 = v0[92];
  v0[56] = v0;
  swift_willThrow();
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  v34(v31, v32);
  v35 = v0[117];
  v2 = v0[101];
  v36 = v0[100];
  v38 = v0[99];
  v3 = v35;
  v0[60] = v35;
  v37 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v36 + 16))(v2, v37, v38);
  swift_endAccess();
  v40 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v41 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v40, v39))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v25 = createStorage<A>(capacity:type:)(0);
    v26 = createStorage<A>(capacity:type:)(0);
    *(v28 + 488) = buf;
    *(v28 + 496) = v25;
    *(v28 + 504) = v26;
    serialize(_:at:)(0, (v28 + 488));
    serialize(_:at:)(0, (v28 + 488));
    *(v28 + 512) = v41;
    v27 = swift_task_alloc();
    v27[2] = v28 + 488;
    v27[3] = v28 + 496;
    v27[4] = v28 + 504;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v40, v39, "failed to get or delete dose events in convertMatchedMedNamesToDoseEvents", buf, 2u);
    destroyStorage<A>(_:count:)(v25, 0, v23);
    destroyStorage<A>(_:count:)(v26, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v9 = *(v28 + 808);
  v10 = *(v28 + 792);
  v8 = *(v28 + 800);
  MEMORY[0x277D82BD8](v40);
  (*(v8 + 8))(v9, v10);
  type metadata accessor for HKMedicationExposableDoseEvent();
  v22 = _allocateUninitializedArray<A>(_:)();

  v4 = *(v28 + 904);
  v11 = *(v28 + 896);
  v12 = *(v28 + 872);
  v13 = *(v28 + 864);
  v14 = *(v28 + 856);
  v15 = *(v28 + 848);
  v16 = *(v28 + 824);
  v17 = *(v28 + 816);
  v18 = *(v28 + 808);
  v19 = *(v28 + 784);
  v20 = *(v28 + 776);
  v21 = *(v28 + 744);

  v5 = *(*(v28 + 448) + 8);
  v6 = *(v28 + 448);

  return v5(v22);
}

{
  v1 = v0[124];
  v33 = v0[123];
  v34 = v0[122];
  v30 = v0[121];
  v35 = v0[119];
  v37 = v0[116];
  v38 = v0[115];
  v39 = v0[113];
  v36 = v0[110];
  v31 = v0[98];
  v32 = v0[94];
  v29 = v0[92];
  v0[56] = v0;
  swift_willThrow();
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  v34(v31, v32);
  MEMORY[0x277D82BD8](v35);
  outlined destroy of [HKQuantityType](v0 + 50);
  outlined destroy of [HKQuantityType](v0 + 72);
  outlined destroy of [HKQuantityType](v0 + 71);
  outlined destroy of [HKQuantityType](v0 + 65);
  outlined destroy of [HKQuantityType](v0 + 58);
  v38(v39, v36);
  v40 = v0[124];
  v2 = v0[101];
  v41 = v0[100];
  v43 = v0[99];
  v3 = v40;
  v0[60] = v40;
  v42 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v41 + 16))(v2, v42, v43);
  swift_endAccess();
  v45 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v46 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v45, v44))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v25 = createStorage<A>(capacity:type:)(0);
    v26 = createStorage<A>(capacity:type:)(0);
    *(v28 + 488) = buf;
    *(v28 + 496) = v25;
    *(v28 + 504) = v26;
    serialize(_:at:)(0, (v28 + 488));
    serialize(_:at:)(0, (v28 + 488));
    *(v28 + 512) = v46;
    v27 = swift_task_alloc();
    v27[2] = v28 + 488;
    v27[3] = v28 + 496;
    v27[4] = v28 + 504;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v45, v44, "failed to get or delete dose events in convertMatchedMedNamesToDoseEvents", buf, 2u);
    destroyStorage<A>(_:count:)(v25, 0, v23);
    destroyStorage<A>(_:count:)(v26, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v9 = *(v28 + 808);
  v10 = *(v28 + 792);
  v8 = *(v28 + 800);
  MEMORY[0x277D82BD8](v45);
  (*(v8 + 8))(v9, v10);
  type metadata accessor for HKMedicationExposableDoseEvent();
  v22 = _allocateUninitializedArray<A>(_:)();

  v4 = *(v28 + 904);
  v11 = *(v28 + 896);
  v12 = *(v28 + 872);
  v13 = *(v28 + 864);
  v14 = *(v28 + 856);
  v15 = *(v28 + 848);
  v16 = *(v28 + 824);
  v17 = *(v28 + 816);
  v18 = *(v28 + 808);
  v19 = *(v28 + 784);
  v20 = *(v28 + 776);
  v21 = *(v28 + 744);

  v5 = *(*(v28 + 448) + 8);
  v6 = *(v28 + 448);

  return v5(v22);
}

uint64_t implicit closure #2 in MedsUndoer.undo(matchingMeds:)(uint64_t a1)
{
  v1 = type metadata accessor for HKMedicationExposableDoseEvent();
  MEMORY[0x26D6494A0](a1, v1);
  return String.init<A>(describing:)();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [HKMedicationExposableDoseEvent](uint64_t a1, uint64_t a2, void *a3)
{
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  v10 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(v10, a3, v6);
  }

  else
  {
    MEMORY[0x277D82BE0](a2);
    type metadata accessor for HKMedicationExposableDoseEvent();
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    _resumeUnsafeThrowingContinuation<A>(_:_:)(v10, &v11, v3);
    MEMORY[0x277D82BD8](a2);
  }

  MEMORY[0x277D82BD8](a3);
  return MEMORY[0x277D82BD8](a2);
}

uint64_t closure #1 in MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:)(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7[1] = a2;
  v24 = 0;
  v23 = 0;
  v18 = type metadata accessor for Date();
  v13 = *(v18 - 8);
  v14 = v18 - 8;
  v9 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v15 = v7 - v9;
  v10 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v2);
  v17 = v7 - v10;
  v24 = *v4;
  v12 = *v5;
  v23 = v12;
  v11 = 0x1FB31F000uLL;
  v21 = [v24 0x1FB31F378];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = [v12 (v11 + 888)];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = static Date.< infix(_:_:)();
  v20 = *(v13 + 8);
  v19 = v13 + 8;
  v20(v15, v18);
  MEMORY[0x277D82BD8](v16);
  v20(v17, v18);
  MEMORY[0x277D82BD8](v21);
  return v22 & 1;
}

uint64_t closure #2 in MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:)(id *a1)
{
  v3 = *a1;
  [*a1 status];
  type metadata accessor for HKMedicationDoseEventStatus();
  lazy protocol witness table accessor for type HKMedicationDoseEventStatus and conformance HKMedicationDoseEventStatus();
  v4 = == infix<A>(_:_:)();
  MEMORY[0x277D82BE0](v3);
  if (v4)
  {
    v2 = 1;
  }

  else
  {
    [v3 status];
    v2 = == infix<A>(_:_:)();
  }

  MEMORY[0x277D82BD8](v3);
  return v2 & 1;
}

id MedsUndoer.getUpdatedDoseEvent(doseEvent:matchingMeds:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v179 = v232;
  v182 = a4;
  v181 = a3;
  v183 = a2;
  v198 = a1;
  v191 = 0;
  v260 = 0;
  v259 = 0;
  v258 = 0;
  v257 = 0;
  v255[1] = 0;
  v255[0] = 0;
  v180 = 0;
  v247 = 0;
  v240 = 0;
  v239 = 0;
  v235 = 0;
  v194 = type metadata accessor for Logger();
  v184 = v194;
  v185 = *(v194 - 8);
  v192 = v185;
  v186 = v185;
  v187 = *(v185 + 64);
  v4 = MEMORY[0x28223BE20](v198);
  v189 = (v187 + 15) & 0xFFFFFFFFFFFFFFF0;
  v188 = &v43 - v189;
  v5 = MEMORY[0x28223BE20](v4);
  v6 = &v43 - v189;
  v190 = &v43 - v189;
  v260 = v5;
  v259 = v7;
  v257 = v8;
  v258 = v9;
  v193 = Logger.wellnessIntents.unsafeMutableAddressor();
  v201 = 32;
  v205 = 32;
  v197 = &v256;
  swift_beginAccess();
  v195 = *(v192 + 16);
  v196 = (v192 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v195(v6, v193, v194);
  swift_endAccess();
  v10 = v198;
  v206 = 7;
  v207 = swift_allocObject();
  *(v207 + 16) = v198;
  v218 = Logger.logObject.getter();
  v199 = v218;
  v217 = static os_log_type_t.debug.getter();
  v200 = v217;
  v202 = 17;
  v211 = swift_allocObject();
  v203 = v211;
  *(v211 + 16) = v201;
  v212 = swift_allocObject();
  v204 = v212;
  *(v212 + 16) = 8;
  v11 = swift_allocObject();
  v12 = v207;
  v208 = v11;
  *(v11 + 16) = partial apply for implicit closure #1 in MedsUndoer.getUpdatedDoseEvent(doseEvent:matchingMeds:);
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v208;
  v215 = v13;
  v209 = v13;
  *(v13 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v13 + 24) = v14;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v210 = v216;
  v213 = _allocateUninitializedArray<A>(_:)();
  v214 = v15;

  v16 = v211;
  v17 = v214;
  *v214 = partial apply for closure #1 in OSLogArguments.append(_:);
  v17[1] = v16;

  v18 = v212;
  v19 = v214;
  v214[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v19[3] = v18;

  v20 = v214;
  v21 = v215;
  v214[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v20[5] = v21;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v218, v217))
  {
    v22 = v180;
    v172 = static UnsafeMutablePointer.allocate(capacity:)();
    v169 = v172;
    v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v173 = createStorage<A>(capacity:type:)(0);
    v171 = v173;
    v175 = 1;
    v174 = createStorage<A>(capacity:type:)(1);
    v223 = v172;
    v222 = v173;
    v221 = v174;
    v176 = &v223;
    serialize(_:at:)(2, &v223);
    serialize(_:at:)(v175, v176);
    v219 = partial apply for closure #1 in OSLogArguments.append(_:);
    v220 = v203;
    closure #1 in osLogInternal(_:log:type:)(&v219, v176, &v222, &v221);
    v177 = v22;
    v178 = v22;
    if (v22)
    {
      v167 = 0;

      __break(1u);
    }

    else
    {
      v219 = partial apply for closure #1 in OSLogArguments.append(_:);
      v220 = v204;
      closure #1 in osLogInternal(_:log:type:)(&v219, &v223, &v222, &v221);
      v165 = 0;
      v166 = 0;
      v219 = partial apply for closure #1 in OSLogArguments.append(_:);
      v220 = v209;
      closure #1 in osLogInternal(_:log:type:)(&v219, &v223, &v222, &v221);
      v163 = 0;
      v164 = 0;
      _os_log_impl(&dword_269912000, v199, v200, "Starting to get updated status dose event for %s", v169, 0xCu);
      destroyStorage<A>(_:count:)(v171, 0, v170);
      destroyStorage<A>(_:count:)(v174, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v169, MEMORY[0x277D84B78]);

      v168 = v163;
    }
  }

  else
  {
    v23 = v180;

    v168 = v23;
  }

  v161 = v168;

  v158 = *(v186 + 8);
  v159 = (v186 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v158(v190, v184);

  v254 = v183;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriWellnessIntents14MatchedMedNameCGMd, &_sSay19SiriWellnessIntents14MatchedMedNameCGMR);
  lazy protocol witness table accessor for type [MatchedMedName] and conformance [A]();
  Collection<>.makeIterator()();
  for (i = v161; ; i = v68)
  {
    v156 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySay19SiriWellnessIntents14MatchedMedNameCGGMd, &_ss16IndexingIteratorVySay19SiriWellnessIntents14MatchedMedNameCGGMR);
    IndexingIterator.next()();
    v157 = v253;
    if (!v253)
    {
      break;
    }

    v155 = v157;
    v153 = v157;
    v247 = v157;
    v154 = [v157 medicationID];
    if (v154)
    {
      v152 = v154;
      v147 = v154;
      v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v149 = v24;

      v150 = v148;
      v151 = v149;
    }

    else
    {
      v150 = 0;
      v151 = 0;
    }

    v143 = v151;
    v142 = v150;

    v139 = [v198 medicationIdentifier];
    v138 = [v139 underlyingIdentifier];
    v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v144 = v25;

    v140 = v144;

    v145 = v245;
    v146 = v246;
    v245[0] = v142;
    v245[1] = v143;
    v246[0] = v141;
    v246[1] = v144;
    if (v143)
    {
      outlined init with copy of String?(v145, &v226);
      if (v146[1])
      {
        v225 = v226;
        v224 = *v146;
        v136 = MEMORY[0x26D649310](v226, *(&v226 + 1), v224, *(&v224 + 1));
        outlined destroy of String.UTF8View(&v224);
        outlined destroy of String.UTF8View(&v225);
        outlined destroy of String.UTF8View(v145);
        v137 = v136;
        goto LABEL_17;
      }

      outlined destroy of String.UTF8View(&v226);
LABEL_19:
      outlined destroy of (String?, String?)(v245);
      v137 = 0;
      goto LABEL_17;
    }

    if (v146[1])
    {
      goto LABEL_19;
    }

    outlined destroy of String.UTF8View(v145);
    v137 = 1;
LABEL_17:
    v135 = v137;

    v26 = v153;
    v27 = v198;
    if ((v135 & 1) == 0)
    {
      v112 = 0;
      goto LABEL_36;
    }

    v134 = [v153 scheduleID];
    if (v134)
    {
      v133 = v134;
      v128 = v134;
      v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v130 = v28;

      v131 = v129;
      v132 = v130;
    }

    else
    {
      v131 = 0;
      v132 = 0;
    }

    v125 = v132;
    v126 = v131;

    v127 = [v198 scheduleItemIdentifier];
    if (v127)
    {
      v124 = v127;
      v119 = v127;
      v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v121 = v29;

      v122 = v120;
      v123 = v121;
    }

    else
    {
      v122 = 0;
      v123 = 0;
    }

    v116 = v123;
    v115 = v122;

    v117 = v230;
    v118 = v231;
    v230[0] = v126;
    v230[1] = v125;
    v231[0] = v115;
    v231[1] = v116;
    if (!v125)
    {
      if (!v118[1])
      {
        outlined destroy of String.UTF8View(v117);
        v114 = 1;
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    outlined init with copy of String?(v117, &v229);
    if (!v118[1])
    {
      outlined destroy of String.UTF8View(&v229);
LABEL_34:
      outlined destroy of (String?, String?)(v230);
      v114 = 0;
      goto LABEL_33;
    }

    v228 = v229;
    v227 = *v118;
    v113 = MEMORY[0x26D649310](v229, *(&v229 + 1), v227, *(&v227 + 1));
    outlined destroy of String.UTF8View(&v227);
    outlined destroy of String.UTF8View(&v228);
    outlined destroy of String.UTF8View(v117);
    v114 = v113;
LABEL_33:
    v111 = v114;

    v112 = v111;
LABEL_36:
    v109 = v112;

    v110 = v153;
    if (v109)
    {
      v107 = v110;
      v108 = [v110 completionStatus];
      if (v108)
      {
        v106 = v108;
        v101 = v108;
        v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v103 = v30;

        v104 = v102;
        v105 = v103;
      }

      else
      {
        v104 = 0;
        v105 = 0;
      }

      v97 = v105;
      v96 = v104;

      v31 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("taken", 5uLL, 1);
      countAndFlagsBits = v31._countAndFlagsBits;
      object = v31._object;
      v94 = v31._object;

      v99 = v243;
      v100 = v244;
      v243[0] = v96;
      v243[1] = v97;
      v244[0] = countAndFlagsBits;
      v244[1] = object;
      if (v97)
      {
        outlined init with copy of String?(v99, &v234);
        if (v100[1])
        {
          v32 = v179;
          v33 = v100;
          v179[1] = v234;
          *v32 = *v33;
          v92 = MEMORY[0x26D649310](v233[0], v233[1], v232[0], v232[1]);
          outlined destroy of String.UTF8View(v232);
          outlined destroy of String.UTF8View(v233);
          outlined destroy of String.UTF8View(v99);
          v93 = v92;
          goto LABEL_46;
        }

        outlined destroy of String.UTF8View(&v234);
LABEL_48:
        outlined destroy of (String?, String?)(v243);
        v93 = 0;
      }

      else
      {
        if (v100[1])
        {
          goto LABEL_48;
        }

        outlined destroy of String.UTF8View(v99);
        v93 = 1;
      }

LABEL_46:
      v91 = v93;

      if (v91)
      {
        v235 = [v198 updateForNewStatus_];
        v88 = v235;

        outlined destroy of [HKQuantityType](v255);
        v89 = v88;
        v90 = v156;
        return v89;
      }

      v34 = [v107 completionStatus];
      v87 = v34;
      if (v34)
      {
        v86 = v87;
        v81 = v87;
        v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v83 = v35;

        v84 = v82;
        v85 = v83;
      }

      else
      {
        v84 = 0;
        v85 = 0;
      }

      v77 = v85;
      v76 = v84;

      v36 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("skipped", 7uLL, 1);
      v75 = v36._countAndFlagsBits;
      v78 = v36._object;
      v74 = v36._object;

      v79 = v241;
      v80 = v242;
      v241[0] = v76;
      v241[1] = v77;
      v242[0] = v75;
      v242[1] = v78;
      if (v77)
      {
        outlined init with copy of String?(v79, v238);
        if (v80[1])
        {
          v37 = v179;
          v38 = v80;
          v179[5] = v179[6];
          v37[4] = *v38;
          v72 = MEMORY[0x26D649310](v237[0], v237[1], v236[0], v236[1]);
          outlined destroy of String.UTF8View(v236);
          outlined destroy of String.UTF8View(v237);
          outlined destroy of String.UTF8View(v79);
          v73 = v72;
LABEL_60:
          v71 = v73;

          if (v71)
          {
            v239 = [v198 updateForNewStatus_];
            v70 = v239;

            outlined destroy of [HKQuantityType](v255);
            v89 = v70;
          }

          else
          {
            v240 = [v198 updateForNewStatus_];
            v69 = v240;

            outlined destroy of [HKQuantityType](v255);
            v89 = v69;
          }

          v90 = v156;
          return v89;
        }

        outlined destroy of String.UTF8View(v238);
      }

      else if (!v80[1])
      {
        outlined destroy of String.UTF8View(v79);
        v73 = 1;
        goto LABEL_60;
      }

      outlined destroy of (String?, String?)(v241);
      v73 = 0;
      goto LABEL_60;
    }

    v68 = v156;
  }

  v39 = v188;
  outlined destroy of [HKQuantityType](v255);
  v60 = Logger.wellnessIntents.unsafeMutableAddressor();
  v61 = &v252;
  v63 = 0;
  swift_beginAccess();
  v195(v39, v60, v184);
  swift_endAccess();
  v66 = Logger.logObject.getter();
  v62 = v66;
  v65 = static os_log_type_t.error.getter();
  v64 = v65;
  v67 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v66, v65))
  {
    v40 = v156;
    v51 = static UnsafeMutablePointer.allocate(capacity:)();
    v47 = v51;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v49 = 0;
    v52 = createStorage<A>(capacity:type:)(0);
    v50 = v52;
    v53 = createStorage<A>(capacity:type:)(v49);
    v251 = v51;
    v250 = v52;
    v249 = v53;
    v54 = 0;
    v55 = &v251;
    serialize(_:at:)(0, &v251);
    serialize(_:at:)(v54, v55);
    v248 = v67;
    v56 = &v43;
    MEMORY[0x28223BE20](&v43);
    v57 = &v43 - 6;
    *(&v43 - 4) = v41;
    *(&v43 - 3) = &v250;
    *(&v43 - 2) = &v249;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v59 = v40;
    if (v40)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_269912000, v62, v64, "Couldn't find a matching med for this doseEvent, returning nil", v47, 2u);
      v45 = 0;
      destroyStorage<A>(_:count:)(v50, 0, v48);
      destroyStorage<A>(_:count:)(v53, v45, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v47, MEMORY[0x277D84B78]);

      v46 = v59;
    }
  }

  else
  {

    v46 = v156;
  }

  v44 = v46;

  v158(v188, v184);
  v89 = 0;
  v90 = v44;
  return v89;
}