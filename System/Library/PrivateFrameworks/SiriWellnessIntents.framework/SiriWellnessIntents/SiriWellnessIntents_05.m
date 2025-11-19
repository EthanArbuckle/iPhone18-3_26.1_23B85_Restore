uint64_t closure #1 in closure #1 in HealthKitDistanceProvider.query(start:end:)()
{
  v8 = *(v0 + 88);
  v10 = *(v0 + 64);
  v9 = *(v0 + 153);
  *(v0 + 16) = v0;
  type metadata accessor for HKQuantityType();
  v1 = HealthKitDistanceProvider.Source.quantityTypeIdentifier.getter(v9);
  v12 = MEMORY[0x26D649710](v1);
  *(v0 + 120) = v12;
  *(v0 + 48) = v12;
  v2 = *v10;
  *(v0 + 128) = *v10;
  MEMORY[0x277D82BE0](v2);
  v3 = swift_task_alloc();
  v11[17] = v3;
  *v3 = v11[2];
  v3[1] = closure #1 in closure #1 in HealthKitDistanceProvider.query(start:end:);
  v4 = v11[14];
  v5 = v11[10];
  v6 = v11[9];

  return HKHealthStore.query(quantityType:start:end:)(v4, v12, v6, v5);
}

{
  v7 = *v1;
  v2 = *(*v1 + 136);
  *(v7 + 16) = *v1;
  v8 = (v7 + 16);
  *(v7 + 144) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = closure #1 in closure #1 in HealthKitDistanceProvider.query(start:end:);
  }

  else
  {

    v3 = *v8;
    v4 = closure #1 in closure #1 in HealthKitDistanceProvider.query(start:end:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v9 = *(v0 + 120);
  v1 = *(v0 + 112);
  v10 = v1;
  v11 = *(v0 + 104);
  v8 = *(v0 + 96);
  v2 = *(v0 + 153);
  v7 = *(v0 + 56);
  *(v0 + 16) = v0;
  v3 = *(v8 + 48);
  *v11 = v2;
  outlined init with copy of Statistics<Double>?(v1, &v11[v3]);
  outlined init with copy of (HealthKitDistanceProvider<A>.Source, Statistics<Double>?)(v11, v7, v8);
  outlined destroy of (HealthKitDistanceProvider<A>.Source, Statistics<Double>?)(v11, v8);
  outlined destroy of Statistics<Double>?(v10);
  MEMORY[0x277D82BD8](v9);

  v4 = *(*(v0 + 16) + 8);
  v5 = *(v0 + 16);

  return v4();
}

{
  v1 = v0[16];
  v7 = v0[15];
  v8 = v0[14];
  v9 = v0[13];
  v0[2] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);

  v2 = v0;
  v3 = *(v0[2] + 8);
  v4 = v0[2];
  v5 = v2[18];

  return v3();
}

uint64_t _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v30 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, "\u058B") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v29);
  v31 = &v7 - v30;
  outlined init with copy of TaskPriority?(v4, &v7 - v30);
  v32 = type metadata accessor for TaskPriority();
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  if ((*(v33 + 48))(v31, 1) == 1)
  {
    outlined destroy of TaskPriority?(v31);
    v24 = 0;
  }

  else
  {
    v23 = TaskPriority.rawValue.getter();
    (*(v33 + 8))(v31, v32);
    v24 = v23;
  }

  v20 = v24 | 0x3100;
  v22 = *(v26 + 16);
  v21 = *(v26 + 24);
  swift_unknownObjectRetain();
  if (v22)
  {
    v18 = v22;
    v19 = v21;
    v12 = v21;
    v13 = v22;
    swift_getObjectType();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v5;
    swift_unknownObjectRelease();
    v16 = v14;
    v17 = v15;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v9 = v17;
  v8 = v16;
  v7 = *v28;

  v10 = *(v27 + 16);
  v38[4] = v10;
  v11 = 0;
  if (v8 != 0 || v9 != 0)
  {
    v38[0] = 0;
    v38[1] = 0;
    v38[2] = v8;
    v38[3] = v9;
    v11 = v38;
  }

  v35 = 1;
  v36 = v11;
  v37 = v7;
  swift_task_create();
}

uint64_t protocol witness for DataProviding.isQueryAuthorized() in conformance HealthKitDistanceProvider<A>()
{
  *(v1 + 64) = v1;
  memcpy((v1 + 16), v0, 0x30uLL);
  v2 = swift_task_alloc();
  *(v4 + 72) = v2;
  *v2 = *(v4 + 64);
  v2[1] = protocol witness for DataProviding.isQueryAuthorized() in conformance HealthKitDistanceProvider<A>;

  return HealthKitDistanceProvider.isQueryAuthorized()();
}

uint64_t protocol witness for DataProviding.isQueryAuthorized() in conformance HealthKitDistanceProvider<A>(unsigned int a1)
{
  v5 = *v1;
  v2 = *(*v1 + 72);
  *(v5 + 64) = *v1;

  v3 = *(*(v5 + 64) + 8);

  return v3(a1);
}

uint64_t protocol witness for DataProviding.isLoggingAuthorized() in conformance HealthKitDistanceProvider<A>()
{
  *(v1 + 64) = v1;
  memcpy((v1 + 16), v0, 0x30uLL);
  v2 = swift_task_alloc();
  *(v4 + 72) = v2;
  *v2 = *(v4 + 64);
  v2[1] = protocol witness for DataProviding.isQueryAuthorized() in conformance HealthKitDistanceProvider<A>;

  return HealthKitDistanceProvider.isQueryAuthorized()();
}

void *static HealthKitDistanceProvider<A>.ambiguousDistance(store:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x277D82BE0](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents25HealthKitDistanceProviderV6SourceOyAA012GetAmbiguousF14IntentResponseC_GMd, &_s19SiriWellnessIntents25HealthKitDistanceProviderV6SourceOyAA012GetAmbiguousF14IntentResponseC_GMR);
  _allocateUninitializedArray<A>(_:)();
  *v2 = 0;
  v2[1] = 1;
  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriWellnessIntents25HealthKitDistanceProviderV6SourceOyAA012GetAmbiguousF14IntentResponseC_GGMd, &_sSay19SiriWellnessIntents25HealthKitDistanceProviderV6SourceOyAA012GetAmbiguousF14IntentResponseC_GGMR);
  lazy protocol witness table accessor for type HealthKitDistanceProvider<GetAmbiguousDistanceIntentResponse>.Source and conformance HealthKitDistanceProvider<A>.Source();
  lazy protocol witness table accessor for type [HealthKitDistanceProvider<GetAmbiguousDistanceIntentResponse>.Source] and conformance [A]();
  v5 = Set.init<A>(_:)();
  AmbiguousDistanceIntentResponse = type metadata accessor for GetAmbiguousDistanceIntentResponse();
  HealthKitDistanceProvider.init(store:sources:failure:mapIntent:)(a1, v5, implicit closure #1 in static HealthKitDistanceProvider<A>.ambiguousDistance(store:), 0, closure #1 in static HealthKitDistanceProvider<A>.ambiguousDistance(store:), 0, AmbiguousDistanceIntentResponse, v8);
  return memcpy(a2, v8, 0x30uLL);
}

unint64_t lazy protocol witness table accessor for type HealthKitDistanceProvider<GetAmbiguousDistanceIntentResponse>.Source and conformance HealthKitDistanceProvider<A>.Source()
{
  v2 = lazy protocol witness table cache variable for type HealthKitDistanceProvider<GetAmbiguousDistanceIntentResponse>.Source and conformance HealthKitDistanceProvider<A>.Source;
  if (!lazy protocol witness table cache variable for type HealthKitDistanceProvider<GetAmbiguousDistanceIntentResponse>.Source and conformance HealthKitDistanceProvider<A>.Source)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s19SiriWellnessIntents25HealthKitDistanceProviderV6SourceOyAA012GetAmbiguousF14IntentResponseC_GMd, &_s19SiriWellnessIntents25HealthKitDistanceProviderV6SourceOyAA012GetAmbiguousF14IntentResponseC_GMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HealthKitDistanceProvider<GetAmbiguousDistanceIntentResponse>.Source and conformance HealthKitDistanceProvider<A>.Source);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [HealthKitDistanceProvider<GetAmbiguousDistanceIntentResponse>.Source] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HealthKitDistanceProvider<GetAmbiguousDistanceIntentResponse>.Source] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HealthKitDistanceProvider<GetAmbiguousDistanceIntentResponse>.Source] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriWellnessIntents25HealthKitDistanceProviderV6SourceOyAA012GetAmbiguousF14IntentResponseC_GGMd, &_sSay19SiriWellnessIntents25HealthKitDistanceProviderV6SourceOyAA012GetAmbiguousF14IntentResponseC_GGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HealthKitDistanceProvider<GetAmbiguousDistanceIntentResponse>.Source] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

char *implicit closure #1 in static HealthKitDistanceProvider<A>.ambiguousDistance(store:)@<X0>(char **a1@<X8>)
{
  type metadata accessor for GetAmbiguousDistanceIntentResponse();
  result = GetAmbiguousDistanceIntentResponse.__allocating_init(code:userActivity:)(5, 0);
  *a1 = result;
  return result;
}

char *closure #1 in static HealthKitDistanceProvider<A>.ambiguousDistance(store:)@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v41 = a2;
  v68 = a1;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v79 = 0;
  v78 = 0;
  v42 = 0;
  v43 = type metadata accessor for DateInterval();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (v44[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v47 = &v23 - v46;
  v48 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v49 = &v23 - v48;
  v50 = type metadata accessor for Date();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  v53 = (v51[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50);
  v54 = &v23 - v53;
  v55 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v23 - v53);
  v56 = &v23 - v55;
  v57 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v23 - v55);
  v58 = &v23 - v57;
  v59 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v23 - v57);
  v60 = &v23 - v59;
  v85 = &v23 - v59;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGSgMd, &_s19SiriWellnessIntents10StatisticsVySdGSgMR);
  v61 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v62 = &v23 - v61;
  v63 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v23 - v61);
  v74 = &v23 - v63;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGMd, &_s19SiriWellnessIntents10StatisticsVySdGMR);
  v72 = *(v75 - 1);
  v73 = v75 - 2;
  v64 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v68);
  v65 = &v23 - v64;
  v84 = &v23 - v64;
  v66 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v67 = &v23 - v66;
  v83 = &v23 - v66;
  v82 = v11;
  v70 = &v81;
  v81 = 0;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents25HealthKitDistanceProviderV6SourceOyAA012GetAmbiguousF14IntentResponseC_GMd, &_s19SiriWellnessIntents25HealthKitDistanceProviderV6SourceOyAA012GetAmbiguousF14IntentResponseC_GMR);
  AmbiguousDistanceIntent = lazy protocol witness table accessor for type HealthKitDistanceProvider<GetAmbiguousDistanceIntentResponse>.Source and conformance HealthKitDistanceProvider<A>.Source();
  MEMORY[0x26D649240](v70, v68, v69, v75);
  v76 = *(v72 + 48);
  v77 = v72 + 48;
  if (v76(v74, 1, v75) == 1)
  {
    outlined destroy of Statistics<Double>?(v74);
  }

  else
  {
    v12 = outlined init with take of Statistics<Double>(v74, v67);
    v80 = 1;
    MEMORY[0x26D649240](&v80, v68, v69, v75, AmbiguousDistanceIntent, v12);
    if (v76(v62, 1, v75) != 1)
    {
      v13 = v49;
      v14 = outlined init with take of Statistics<Double>(v62, v65);
      v15 = &v67[v75[7]];
      v35 = v44[2];
      v34 = v44 + 2;
      v35(v13, v15, v43, v14);
      DateInterval.start.getter();
      v16 = v47;
      v37 = v44[1];
      v36 = v44 + 1;
      v37(v49, v43);
      (v35)(v16, &v65[v75[7]], v43);
      DateInterval.start.getter();
      v37(v47, v43);
      v38 = lazy protocol witness table accessor for type Date and conformance Date();
      min<A>(_:_:)();
      v40 = v51[1];
      v39 = v51 + 1;
      v40(v56, v50);
      v40(v58, v50);
      v79 = v58;
      (v35)(v49, &v67[v75[7]], v43);
      DateInterval.end.getter();
      v17 = v47;
      v37(v49, v43);
      (v35)(v17, &v65[v75[7]], v43);
      DateInterval.end.getter();
      v37(v47, v43);
      max<A>(_:_:)();
      v40(v54, v50);
      v40(v56, v50);
      v25 = 0;
      type metadata accessor for GetAmbiguousDistanceIntentResponse();
      v33 = GetAmbiguousDistanceIntentResponse.__allocating_init(code:userActivity:)(4, v25);
      v78 = v33;
      v28 = v51[2];
      v27 = v51 + 2;
      v28(v56, v60, v50);
      v18.super.isa = Date._bridgeToObjectiveC()().super.isa;
      v19 = v56;
      isa = v18.super.isa;
      v40(v56, v50);
      [v33 setSampleStartDate_];
      MEMORY[0x277D82BD8](isa);
      v28(v19, v58, v50);
      v29 = Date._bridgeToObjectiveC()().super.isa;
      v40(v56, v50);
      [v33 setSampleEndDate_];
      MEMORY[0x277D82BD8](v29);
      [v33 setWalkRunDistance_];
      [v33 setWheelchairDistance_];
      v20 = &v67[v75[9]];
      v30 = *v20;
      v31 = *(v20 + 1);

      v32 = MEMORY[0x26D6492A0](v30, v31);

      [v33 setUnit_];
      MEMORY[0x277D82BD8](v32);
      MEMORY[0x277D82BE0](v33);
      v21 = v33;
      *v41 = v33;
      MEMORY[0x277D82BD8](v21);
      v40(v58, v50);
      v40(v60, v50);
      outlined destroy of Statistics<Double>(v65);
      return outlined destroy of Statistics<Double>(v67);
    }

    outlined destroy of Statistics<Double>?(v62);
    outlined destroy of Statistics<Double>(v67);
  }

  v24 = 0;
  type metadata accessor for GetAmbiguousDistanceIntentResponse();
  result = GetAmbiguousDistanceIntentResponse.__allocating_init(code:userActivity:)(102, v24);
  *v41 = result;
  return result;
}

uint64_t protocol witness for AmbiguousDistanceProviding.query(start:end:) in conformance <A> HealthKitDistanceProvider<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 64) = v4;
  memcpy((v4 + 16), v3, 0x30uLL);
  v5 = swift_task_alloc();
  *(v7 + 80) = v5;
  *v5 = *(v7 + 64);
  v5[1] = protocol witness for AmbiguousDistanceProviding.query(start:end:) in conformance <A> HealthKitDistanceProvider<A>;

  return HealthKitDistanceProvider.query(start:end:)(v7 + 72, a1, a2, a3);
}

uint64_t protocol witness for AmbiguousDistanceProviding.query(start:end:) in conformance <A> HealthKitDistanceProvider<A>()
{
  v5 = *v0;
  v6 = *v0;
  v1 = *(*v0 + 80);
  *(v6 + 64) = *v0;

  v2 = *(v5 + 72);
  v3 = *(*(v6 + 64) + 8);

  return v3(v2);
}

uint64_t type metadata instantiation function for HealthKitDistanceProvider(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for HealthKitDistanceProvider(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
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

uint64_t storeEnumTagSinglePayload for HealthKitDistanceProvider(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

char *outlined init with take of Statistics<Double>?(char *a1, char *a2)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGMd, &_s19SiriWellnessIntents10StatisticsVySdGMR);
  v10 = *(v9 - 1);
  if ((*(v10 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGSgMd, &_s19SiriWellnessIntents10StatisticsVySdGSgMR);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v5 = type metadata accessor for DateInterval();
    v6 = *(v5 - 8);
    if ((*(v6 + 48))(a1, 1))
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
      memcpy(a2, a1, *(*(v2 - 8) + 64));
    }

    else
    {
      (*(v6 + 32))(a2, a1, v5);
      (*(v6 + 56))(a2, 0, 1, v5);
    }

    (*(v6 + 32))(&a2[v9[7]], &a1[v9[7]], v5);
    *&a2[v9[8]] = *&a1[v9[8]];
    *&a2[v9[9]] = *&a1[v9[9]];
    *&a2[v9[10]] = *&a1[v9[10]];
    *&a2[v9[11]] = *&a1[v9[11]];
    *&a2[v9[12]] = *&a1[v9[12]];
    *&a2[v9[13]] = *&a1[v9[13]];
    (*(v10 + 56))();
  }

  return a2;
}

char *outlined init with copy of Statistics<Double>?(char *a1, char *a2)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGMd, &_s19SiriWellnessIntents10StatisticsVySdGMR);
  v13 = *(v12 - 1);
  if ((*(v13 + 48))(a1, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGSgMd, &_s19SiriWellnessIntents10StatisticsVySdGSgMR);
    memcpy(a2, a1, *(*(v4 - 8) + 64));
  }

  else
  {
    v8 = type metadata accessor for DateInterval();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(a1, 1))
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
      memcpy(a2, a1, *(*(v2 - 8) + 64));
    }

    else
    {
      (*(v9 + 16))(a2, a1, v8);
      (*(v9 + 56))(a2, 0, 1, v8);
    }

    (*(v9 + 16))(&a2[v12[7]], &a1[v12[7]], v8);
    *&a2[v12[8]] = *&a1[v12[8]];
    v3 = v12[9];
    v6 = &a2[v3];
    *&a2[v3] = *&a1[v3];
    v7 = *&a1[v3 + 8];

    *(v6 + 1) = v7;
    *&a2[v12[10]] = *&a1[v12[10]];
    *&a2[v12[11]] = *&a1[v12[11]];
    *&a2[v12[12]] = *&a1[v12[12]];
    *&a2[v12[13]] = *&a1[v12[13]];
    (*(v13 + 56))();
  }

  return a2;
}

uint64_t sub_2699E9640()
{
  v14 = v0[4];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8);
  v1 = *(v8 + 80);
  v10 = (v1 + 96) & ~v1;
  v9 = (v10 + *(v8 + 64) + v1) & ~v1;
  v2 = v0[2];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v0[6]);
  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!(v13)(v0 + v10, 1))
  {
    (*(v12 + 8))(v7 + v10, v11);
  }

  if (!v13())
  {
    (*(v12 + 8))(v7 + v9, v11);
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in HealthKitDistanceProvider.query(start:end:)(uint64_t a1)
{
  v7 = v2;
  *(v2 + 16) = v2;
  v13 = *(v1 + 32);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8);
  v3 = *(v6 + 80);
  v11 = (v3 + 96) & ~v3;
  v12 = (v11 + *(v6 + 64) + v3) & ~v3;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 40);
  v4 = swift_task_alloc();
  *(v7 + 24) = v4;
  *v4 = *(v7 + 16);
  v4[1] = _sIeghH_IeAgH_TRTQ0_;

  return closure #1 in closure #1 in HealthKitDistanceProvider.query(start:end:)(a1, v8, v9, v10, v1 + 48, v1 + v11, v1 + v12, v13);
}

_BYTE *outlined init with copy of (HealthKitDistanceProvider<A>.Source, Statistics<Double>?)(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a2 = *a1;
  v13 = *(a3 + 48);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGMd, &_s19SiriWellnessIntents10StatisticsVySdGMR);
  v16 = *(v15 - 1);
  if ((*(v16 + 48))(&a1[v13], 1))
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGSgMd, &_s19SiriWellnessIntents10StatisticsVySdGSgMR);
    memcpy(&a2[v13], &a1[v13], *(*(v5 - 8) + 64));
  }

  else
  {
    v10 = type metadata accessor for DateInterval();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(&a1[v13], 1))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
      memcpy(&a2[v13], &a1[v13], *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))();
      (*(v11 + 56))(&a2[v13], 0, 1, v10);
    }

    v7 = &a2[v13];
    (*(v11 + 16))(&a2[v13 + v15[7]], &a1[v13 + v15[7]], v10);
    *&v7[v15[8]] = *&a1[v13 + v15[8]];
    v4 = v15[9];
    v8 = &a2[v13 + v4];
    *&v7[v4] = *&a1[v13 + v4];
    v9 = *&a1[v13 + 8 + v4];

    *(v8 + 1) = v9;
    *&v7[v15[10]] = *&a1[v13 + v15[10]];
    *&v7[v15[11]] = *&a1[v13 + v15[11]];
    *&v7[v15[12]] = *&a1[v13 + v15[12]];
    *&v7[v15[13]] = *&a1[v13 + v15[13]];
    (*(v16 + 56))();
  }

  return a2;
}

uint64_t outlined destroy of (HealthKitDistanceProvider<A>.Source, Statistics<Double>?)(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 48);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGMd, &_s19SiriWellnessIntents10StatisticsVySdGMR);
  if (!(*(*(v8 - 8) + 48))(a1 + v6, 1))
  {
    v4 = type metadata accessor for DateInterval();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(a1 + v6, 1))
    {
      (*(v5 + 8))(a1 + v6, v4);
    }

    (*(v5 + 8))(a1 + v6 + *(v8 + 28), v4);
    v2 = *(a1 + v6 + *(v8 + 36) + 8);
  }

  return a1;
}

uint64_t _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[1] = a3;
  v7[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  return UnsafeContinuation.resume(throwing:)(v7, a1, a3, v3);
}

id LogPeriodIntentHandler.init(storage:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  __dst[5] = a1;
  v11 = v1;
  outlined init with copy of QuantityPersisting?(a1, v8);
  if (v9)
  {
    outlined init with take of QuantityPersisting(v8, __dst);
  }

  else
  {
    v2 = PeriodPersistor.init()();
    __dst[3] = &type metadata for PeriodPersistor;
    __dst[4] = &protocol witness table for PeriodPersistor;
    __dst[0] = v2;
    if (v9)
    {
      outlined destroy of QuantityPersisting?(v8);
    }
  }

  outlined init with take of QuantityPersisting(__dst, &v1[OBJC_IVAR____TtC19SiriWellnessIntents22LogPeriodIntentHandler_storage]);
  v7.receiver = v11;
  v7.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v7, sel_init);
  MEMORY[0x277D82BE0](v4);
  v11 = v4;
  outlined destroy of QuantityPersisting?(a1);
  MEMORY[0x277D82BD8](v11);
  return v4;
}

id PeriodPersistor.init()()
{
  v3 = 0;
  type metadata accessor for HKMenstrualCyclesStore();
  type metadata accessor for HKHealthStore();
  v0 = NSDateFormatter.__allocating_init()();
  v2 = HKUnitPreferenceController.__allocating_init(healthStore:)(v0);
  MEMORY[0x277D82BE0](v2);
  v3 = v2;
  outlined destroy of HealthKitPersistor(&v3);
  return v2;
}

uint64_t LogPeriodIntentHandler.handle(intent:)(uint64_t a1)
{
  v2[44] = v1;
  v2[43] = a1;
  v2[24] = v2;
  v2[25] = 0;
  v2[26] = 0;
  v3 = type metadata accessor for Date();
  v2[45] = v3;
  v7 = *(v3 - 8);
  v2[46] = v7;
  v8 = *(v7 + 64);
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[51] = v4;
  v10 = *(v4 - 8);
  v2[52] = v10;
  v11 = *(v10 + 64);
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[25] = a1;
  v2[26] = v1;
  v5 = v2[24];

  return MEMORY[0x2822009F8](LogPeriodIntentHandler.handle(intent:), 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 512);
  *(v6 + 192) = *v1;
  *(v6 + 520) = a1;

  v4 = *(v6 + 192);

  return MEMORY[0x2822009F8](LogPeriodIntentHandler.handle(intent:), 0);
}

uint64_t LogPeriodIntentHandler.handle(intent:)()
{
  v1 = v0[56];
  v20 = v0[52];
  v22 = v0[51];
  v0[24] = v0;
  v21 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *(v20 + 16);
  v0[57] = v2;
  v0[58] = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v2(v1, v21, v22);
  swift_endAccess();
  v24 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  v0[59] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v25 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v24, v23))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v16 = createStorage<A>(capacity:type:)(0);
    v17 = createStorage<A>(capacity:type:)(0);
    *(v19 + 312) = buf;
    *(v19 + 320) = v16;
    *(v19 + 328) = v17;
    serialize(_:at:)(0, (v19 + 312));
    serialize(_:at:)(0, (v19 + 312));
    *(v19 + 336) = v25;
    v18 = swift_task_alloc();
    v18[2] = v19 + 312;
    v18[3] = v19 + 320;
    v18[4] = v19 + 328;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v24, v23, "Checking authorization for Cycle Tracking...", buf, 2u);
    destroyStorage<A>(_:count:)(v16, 0, v14);
    destroyStorage<A>(_:count:)(v17, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  *(v19 + 480) = 0;
  v8 = *(v19 + 448);
  v9 = *(v19 + 408);
  v10 = *(v19 + 352);
  v7 = *(v19 + 416);
  MEMORY[0x277D82BD8](v24);
  v3 = *(v7 + 8);
  *(v19 + 488) = v3;
  *(v19 + 496) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v8, v9);
  outlined init with copy of QuantityPersisting(v10 + OBJC_IVAR____TtC19SiriWellnessIntents22LogPeriodIntentHandler_storage, v19 + 16);
  v13 = *(v19 + 40);
  v11 = *(v19 + 48);
  __swift_project_boxed_opaque_existential_1((v19 + 16), v13);
  v12 = (*(v11 + 8) + **(v11 + 8));
  v4 = *(*(v11 + 8) + 4);
  v5 = swift_task_alloc();
  *(v19 + 504) = v5;
  *v5 = *(v19 + 192);
  v5[1] = LogPeriodIntentHandler.handle(intent:);

  return v12(v13, v11);
}

{
  v95 = *(v0 + 528);
  *(v0 + 192) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v95)
  {
    v90 = *(v94 + 472);
    v88 = *(v94 + 464);
    v89 = *(v94 + 456);
    v1 = *(v94 + 440);
    v87 = *(v94 + 408);
    v86 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v89(v1, v86, v87);
    swift_endAccess();
    v92 = Logger.logObject.getter();
    v91 = static os_log_type_t.debug.getter();
    v93 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v92, v91))
    {
      v2 = *(v94 + 480);
      v82 = static UnsafeMutablePointer.allocate(capacity:)();
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v83 = createStorage<A>(capacity:type:)(0);
      v84 = createStorage<A>(capacity:type:)(0);
      *(v94 + 280) = v82;
      *(v94 + 288) = v83;
      *(v94 + 296) = v84;
      serialize(_:at:)(0, (v94 + 280));
      serialize(_:at:)(0, (v94 + 280));
      *(v94 + 304) = v93;
      v85 = swift_task_alloc();
      v85[2] = v94 + 280;
      v85[3] = v94 + 288;
      v85[4] = v94 + 296;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v2)
      {
      }

      _os_log_impl(&dword_269912000, v92, v91, "Authorization check successful for Cycle Tracking!", v82, 2u);
      destroyStorage<A>(_:count:)(v83, 0, v81);
      destroyStorage<A>(_:count:)(v84, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v82, MEMORY[0x277D84B78]);

      v80 = 0;
    }

    else
    {

      v80 = *(v94 + 480);
    }

    v76 = *(v94 + 496);
    v77 = *(v94 + 488);
    v74 = *(v94 + 440);
    v75 = *(v94 + 408);
    v78 = *(v94 + 344);
    MEMORY[0x277D82BD8](v92);
    v77(v74, v75);
    v79 = [v78 date];
    if (v79)
    {
      v73 = *(v94 + 400);
      v71 = *(v94 + 384);
      v72 = *(v94 + 360);
      v70 = *(v94 + 368);
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v70 + 32))(v73, v71, v72);
      (*(v70 + 56))(v73, 0, 1, v72);
      MEMORY[0x277D82BD8](v79);
    }

    else
    {
      (*(*(v94 + 368) + 56))(*(v94 + 400), 1, 1, *(v94 + 360));
    }

    v3 = (*(v94 + 368) + 48);
    v69 = *v3;
    if ((*v3)(*(v94 + 400), 1, *(v94 + 360)) != 1)
    {
      outlined destroy of Date?(*(v94 + 400));
LABEL_18:
      v51 = [*(v94 + 344) date];
      if (v51)
      {
        v50 = *(v94 + 392);
        v48 = *(v94 + 384);
        v49 = *(v94 + 360);
        v47 = *(v94 + 368);
        static Date._unconditionallyBridgeFromObjectiveC(_:)();
        (*(v47 + 32))(v50, v48, v49);
        (*(v47 + 56))(v50, 0, 1, v49);
        MEMORY[0x277D82BD8](v51);
      }

      else
      {
        (*(*(v94 + 368) + 56))(*(v94 + 392), 1, 1, *(v94 + 360));
      }

      if (v69(*(v94 + 392), 1, *(v94 + 360)) == 1)
      {
        v45 = *(v94 + 392);
        v5 = *(v94 + 376);
        v46 = *(v94 + 360);
        Date.init()();
        if (v69(v45, 1, v46) != 1)
        {
          outlined destroy of Date?(*(v94 + 392));
        }
      }

      else
      {
        (*(*(v94 + 368) + 32))(*(v94 + 376), *(v94 + 392), *(v94 + 360));
      }

      v40 = *(v94 + 344);
      outlined init with copy of QuantityPersisting(*(v94 + 352) + OBJC_IVAR____TtC19SiriWellnessIntents22LogPeriodIntentHandler_storage, v94 + 56);
      v42 = *(v94 + 80);
      v43 = *(v94 + 88);
      __swift_project_boxed_opaque_existential_1((v94 + 56), v42);
      v41 = [v40 flow];
      v44 = (*(v43 + 16) + **(v43 + 16));
      v6 = *(*(v43 + 16) + 4);
      v7 = swift_task_alloc();
      *(v94 + 512) = v7;
      *v7 = *(v94 + 192);
      v7[1] = LogPeriodIntentHandler.handle(intent:);
      v8 = *(v94 + 376);

      return v44(v8, v41, v42, v43);
    }

    outlined destroy of Date?(*(v94 + 400));
    v65 = *(v94 + 472);
    v63 = *(v94 + 464);
    v64 = *(v94 + 456);
    v4 = *(v94 + 432);
    v62 = *(v94 + 408);
    v61 = Logger.wellness.unsafeMutableAddressor();
    swift_beginAccess();
    v64(v4, v61, v62);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v66 = static os_log_type_t.debug.getter();
    v68 = _allocateUninitializedArray<A>(_:)();
    if (!os_log_type_enabled(oslog, v66))
    {

      goto LABEL_17;
    }

    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v58 = createStorage<A>(capacity:type:)(0);
    v59 = createStorage<A>(capacity:type:)(0);
    *(v94 + 248) = buf;
    *(v94 + 256) = v58;
    *(v94 + 264) = v59;
    serialize(_:at:)(0, (v94 + 248));
    serialize(_:at:)(0, (v94 + 248));
    *(v94 + 272) = v68;
    v60 = swift_task_alloc();
    v60[2] = v94 + 248;
    v60[3] = v94 + 256;
    v60[4] = v94 + 264;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (!v80)
    {

      _os_log_impl(&dword_269912000, oslog, v66, "LogPeriodIntentHandler missing date. Assuming date is Now.", buf, 2u);
      destroyStorage<A>(_:count:)(v58, 0, v56);
      destroyStorage<A>(_:count:)(v59, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

LABEL_17:
      v54 = *(v94 + 496);
      v55 = *(v94 + 488);
      v52 = *(v94 + 432);
      v53 = *(v94 + 408);
      MEMORY[0x277D82BD8](oslog);
      v55(v52, v53);
      goto LABEL_18;
    }
  }

  v36 = *(v94 + 472);
  v34 = *(v94 + 464);
  v35 = *(v94 + 456);
  v10 = *(v94 + 424);
  v33 = *(v94 + 408);
  v32 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v35(v10, v32, v33);
  swift_endAccess();
  log = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  v39 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(log, v37))
  {
    v11 = *(v94 + 480);
    v28 = static UnsafeMutablePointer.allocate(capacity:)();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v29 = createStorage<A>(capacity:type:)(0);
    v30 = createStorage<A>(capacity:type:)(0);
    *(v94 + 216) = v28;
    *(v94 + 224) = v29;
    *(v94 + 232) = v30;
    serialize(_:at:)(0, (v94 + 216));
    serialize(_:at:)(0, (v94 + 216));
    *(v94 + 240) = v39;
    v31 = swift_task_alloc();
    v31[2] = v94 + 216;
    v31[3] = v94 + 224;
    v31[4] = v94 + 232;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v11)
    {
    }

    _os_log_impl(&dword_269912000, log, v37, "Not authorized to write Cycle Tracking data.", v28, 2u);
    destroyStorage<A>(_:count:)(v29, 0, v27);
    destroyStorage<A>(_:count:)(v30, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v28, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v17 = *(v94 + 496);
  v18 = *(v94 + 488);
  v15 = *(v94 + 424);
  v16 = *(v94 + 408);
  MEMORY[0x277D82BD8](log);
  v18(v15, v16);
  type metadata accessor for LogPeriodIntentResponse();
  v26 = LogPeriodIntentResponse.__allocating_init(code:userActivity:)(101, 0);
  v12 = *(v94 + 448);
  v19 = *(v94 + 440);
  v20 = *(v94 + 432);
  v21 = *(v94 + 424);
  v22 = *(v94 + 400);
  v23 = *(v94 + 392);
  v24 = *(v94 + 384);
  v25 = *(v94 + 376);

  v13 = *(*(v94 + 192) + 8);
  v14 = *(v94 + 192);

  return v13(v26);
}

{
  v6 = v0[47];
  v5 = v0[46];
  v7 = v0[45];
  v0[24] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  (*(v5 + 8))(v6, v7);
  v15 = v0[65];
  v1 = v0[56];
  v8 = v0[55];
  v9 = v0[54];
  v10 = v0[53];
  v11 = v0[50];
  v12 = v0[49];
  v13 = v0[48];
  v14 = v0[47];

  v2 = *(v0[24] + 8);
  v3 = v0[24];

  return v2(v15);
}

uint64_t LogPeriodIntentHandler.handle(intent:)(char a1)
{
  v6 = *v1;
  v3 = *(*v1 + 504);
  *(v6 + 192) = *v1;
  *(v6 + 528) = a1;

  v4 = *(v6 + 192);

  return MEMORY[0x2822009F8](LogPeriodIntentHandler.handle(intent:), 0);
}

uint64_t @objc closure #1 in LogPeriodIntentHandler.handle(intent:)(uint64_t a1, const void *a2, uint64_t a3)
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

  return LogPeriodIntentHandler.handle(intent:)(a1);
}

id LogPeriodIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PeriodPersistor.isLoggingAuthorized()(uint64_t a1)
{
  v1[4] = a1;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = a1;
  v2 = v1[2];
  return MEMORY[0x2822009F8](PeriodPersistor.isLoggingAuthorized(), 0);
}

uint64_t PeriodPersistor.isLoggingAuthorized()()
{
  v1 = v0[4];
  v4 = v1;
  v0[2] = v0;
  MEMORY[0x277D82BE0](v1);
  v6 = [v4 healthStore];
  v0[5] = v6;
  MEMORY[0x277D82BD8](v4);
  v2 = swift_task_alloc();
  *(v5 + 48) = v2;
  *v2 = *(v5 + 16);
  v2[1] = PeriodPersistor.isLoggingAuthorized();

  return isSiriAuthorizedToAccessHealthData(store:)(v6);
}

uint64_t PeriodPersistor.isLoggingAuthorized()(unsigned int a1)
{
  v6 = *v1;
  v2 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(v6 + 16) = *v1;

  v3 = *(*(v6 + 16) + 8);

  return v3(a1);
}

uint64_t PeriodPersistor.save(date:flow:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 248) = a3;
  *(v3 + 240) = a2;
  *(v3 + 232) = a1;
  *(v3 + 168) = v3;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  *(v3 + 192) = 0;
  *(v3 + 200) = 0;
  *(v3 + 208) = 0;
  *(v3 + 216) = 0;
  *(v3 + 376) = 0;
  *(v3 + 224) = 0;
  v4 = type metadata accessor for Logger();
  *(v3 + 256) = v4;
  v12 = *(v4 - 8);
  *(v3 + 264) = v12;
  v5 = *(v12 + 64) + 15;
  *(v3 + 272) = swift_task_alloc();
  v6 = type metadata accessor for Calendar();
  *(v3 + 280) = v6;
  v13 = *(v6 - 8);
  *(v3 + 288) = v13;
  v7 = *(v13 + 64) + 15;
  *(v3 + 296) = swift_task_alloc();
  v8 = type metadata accessor for Date();
  *(v3 + 304) = v8;
  v14 = *(v8 - 8);
  *(v3 + 312) = v14;
  v9 = *(v14 + 64) + 15;
  *(v3 + 320) = swift_task_alloc();
  *(v3 + 176) = a1;
  *(v3 + 184) = a2;
  *(v3 + 192) = a3;
  v10 = *(v3 + 168);

  return MEMORY[0x2822009F8](PeriodPersistor.save(date:flow:), 0);
}

uint64_t PeriodPersistor.save(date:flow:)()
{
  v7 = *(v0 + 320);
  v5 = *(v0 + 312);
  v6 = *(v0 + 304);
  v10 = *(v0 + 296);
  v8 = *(v0 + 288);
  v9 = *(v0 + 280);
  v17 = *(v0 + 248);
  v13 = *(v0 + 240);
  v1 = *(v0 + 232);
  *(v0 + 168) = v0;
  v2 = *(v5 + 16);
  *(v0 + 328) = v2;
  *(v0 + 336) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v2(v7, v1);
  isa = Date._bridgeToObjectiveC()().super.isa;
  *(v0 + 344) = isa;
  *(v0 + 200) = isa;
  v3 = *(v5 + 8);
  *(v0 + 352) = v3;
  *(v0 + 360) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v7, v6);
  static Calendar.current.getter();
  v12 = Calendar._bridgeToObjectiveC()().super.isa;
  (*(v8 + 8))(v10, v9);
  v16 = [(objc_class *)isa hk_dayIndexWithCalendar:v12];
  MEMORY[0x277D82BD8](v12);
  *(v0 + 208) = v16;
  MEMORY[0x277D82BE0](v17);
  v15 = PeriodFlow.toMenstrualFlow()(v13);
  *(v0 + 16) = *(v0 + 168);
  *(v0 + 56) = v0 + 377;
  *(v0 + 24) = PeriodPersistor.save(date:flow:);
  v14 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5Error_pGMd, &_sSccySbs5Error_pGMR);
  *(v0 + 112) = v14;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 92) = 0;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool;
  *(v0 + 104) = &block_descriptor_6;
  [v17 saveBleedingFlow:v15 forBleedingType:0 dayIndex:v16 completion:?];

  return MEMORY[0x282200938](v0 + 16);
}

{
  v6 = *v0;
  v6[21] = *v0;
  v7 = v6 + 21;
  v1 = v6[6];
  v6[46] = v1;
  if (v1)
  {
    v4 = *v7;
    v3 = PeriodPersistor.save(date:flow:);
  }

  else
  {
    v2 = *v7;
    v3 = PeriodPersistor.save(date:flow:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v52 = v0;
  v1 = *(v0 + 248);
  *(v0 + 168) = v0;
  v46 = *(v0 + 377);
  *(v0 + 376) = v46 & 1;
  MEMORY[0x277D82BD8](v1);
  if (v46)
  {
    v37 = v45[45];
    v38 = v45[44];
    v42 = v45[43];
    v34 = v45[42];
    v35 = v45[41];
    v39 = v45[40];
    v36 = v45[38];
    v41 = v45[30];
    v33 = v45[29];
    type metadata accessor for LogPeriodIntentResponse();
    v43 = LogPeriodIntentResponse.__allocating_init(code:userActivity:)(4, 0);
    v45[28] = v43;
    v35(v39, v33, v36);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v38(v39, v36);
    [v43 setDate_];
    MEMORY[0x277D82BD8](isa);
    [v43 setFlow_];
    MEMORY[0x277D82BD8](v42);
    v44 = v43;
  }

  else
  {
    lazy protocol witness table accessor for type PeriodPersistor.StorageError and conformance PeriodPersistor.StorageError();
    v24 = swift_allocError();
    swift_willThrow();
    v2 = v45[34];
    v23 = v45[32];
    v21 = v45[33];
    v3 = v24;
    v45[27] = v24;
    v22 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v21 + 16))(v2, v22, v23);
    swift_endAccess();
    v4 = v24;
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    oslog = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    v27 = swift_allocObject();
    *(v27 + 16) = 32;
    v28 = swift_allocObject();
    *(v28 + 16) = 8;
    v26 = swift_allocObject();
    *(v26 + 16) = partial apply for implicit closure #5 in HealthKitPersistor.save(quantityIdentifier:value:units:);
    *(v26 + 24) = v25;
    v29 = swift_allocObject();
    *(v29 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v29 + 24) = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v30 = v5;

    *v30 = partial apply for closure #1 in OSLogArguments.append(_:);
    v30[1] = v27;

    v30[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v30[3] = v28;

    v30[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v30[5] = v29;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v32))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v17 = createStorage<A>(capacity:type:)(0);
      v18 = createStorage<A>(capacity:type:)(1);
      v47 = buf;
      v48 = v17;
      v49 = v18;
      serialize(_:at:)(2, &v47);
      serialize(_:at:)(1, &v47);
      v50 = partial apply for closure #1 in OSLogArguments.append(_:);
      v51 = v27;
      closure #1 in osLogInternal(_:log:type:)(&v50, &v47, &v48, &v49);
      v50 = partial apply for closure #1 in OSLogArguments.append(_:);
      v51 = v28;
      closure #1 in osLogInternal(_:log:type:)(&v50, &v47, &v48, &v49);
      v50 = partial apply for closure #1 in OSLogArguments.append(_:);
      v51 = v29;
      closure #1 in osLogInternal(_:log:type:)(&v50, &v47, &v48, &v49);
      _os_log_impl(&dword_269912000, oslog, v32, "Failed to persist sample. Error: %s", buf, 0xCu);
      destroyStorage<A>(_:count:)(v17, 0, v15);
      destroyStorage<A>(_:count:)(v18, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v13 = v45[43];
    v11 = v45[34];
    v12 = v45[32];
    v10 = v45[33];
    MEMORY[0x277D82BD8](oslog);
    (*(v10 + 8))(v11, v12);
    type metadata accessor for LogPeriodIntentResponse();
    v14 = LogPeriodIntentResponse.__allocating_init(code:userActivity:)(5, 0);

    MEMORY[0x277D82BD8](v13);
    v44 = v14;
  }

  v6 = v45[40];
  v19 = v45[37];
  v20 = v45[34];

  v7 = *(v45[21] + 8);
  v8 = v45[21];

  return v7(v44);
}

{
  v40 = v0;
  v1 = v0[46];
  v22 = v0[31];
  v0[21] = v0;
  swift_willThrow();
  MEMORY[0x277D82BD8](v22);
  v26 = v0[46];
  v2 = v0[34];
  v23 = v0[33];
  v25 = v0[32];
  v3 = v26;
  v0[27] = v26;
  v24 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v23 + 16))(v2, v24, v25);
  swift_endAccess();
  v4 = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();
  v29 = swift_allocObject();
  *(v29 + 16) = 32;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for implicit closure #5 in HealthKitPersistor.save(quantityIdentifier:value:units:);
  *(v28 + 24) = v27;
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v31 + 24) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v32 = v5;

  *v32 = partial apply for closure #1 in OSLogArguments.append(_:);
  v32[1] = v29;

  v32[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v32[3] = v30;

  v32[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v32[5] = v31;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v33, v34))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v19 = createStorage<A>(capacity:type:)(0);
    v20 = createStorage<A>(capacity:type:)(1);
    v35 = buf;
    v36 = v19;
    v37 = v20;
    serialize(_:at:)(2, &v35);
    serialize(_:at:)(1, &v35);
    v38 = partial apply for closure #1 in OSLogArguments.append(_:);
    v39 = v29;
    closure #1 in osLogInternal(_:log:type:)(&v38, &v35, &v36, &v37);
    v38 = partial apply for closure #1 in OSLogArguments.append(_:);
    v39 = v30;
    closure #1 in osLogInternal(_:log:type:)(&v38, &v35, &v36, &v37);
    v38 = partial apply for closure #1 in OSLogArguments.append(_:);
    v39 = v31;
    closure #1 in osLogInternal(_:log:type:)(&v38, &v35, &v36, &v37);
    _os_log_impl(&dword_269912000, v33, v34, "Failed to persist sample. Error: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v19, 0, v17);
    destroyStorage<A>(_:count:)(v20, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v13 = v21[43];
  v11 = v21[34];
  v12 = v21[32];
  v10 = v21[33];
  MEMORY[0x277D82BD8](v33);
  (*(v10 + 8))(v11, v12);
  type metadata accessor for LogPeriodIntentResponse();
  v16 = LogPeriodIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  MEMORY[0x277D82BD8](v13);
  v6 = v21[40];
  v14 = v21[37];
  v15 = v21[34];

  v7 = *(v21[21] + 8);
  v8 = v21[21];

  return v7(v16);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool(uint64_t a1, char a2, void *a3)
{
  MEMORY[0x277D82BE0](a3);
  v8 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(v8, a3, MEMORY[0x277D839B0]);
  }

  else
  {
    v9 = a2;
    _resumeUnsafeThrowingContinuation<A>(_:_:)(v8, &v9, MEMORY[0x277D839B0]);
  }

  return MEMORY[0x277D82BD8](a3);
}

uint64_t protocol witness for PeriodPersisting.isLoggingAuthorized() in conformance PeriodPersistor()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v5 = *v0;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = protocol witness for QuantityPersisting.isLoggingAuthorized(for:) in conformance HealthKitPersistor;

  return PeriodPersistor.isLoggingAuthorized()(v5);
}

uint64_t protocol witness for PeriodPersisting.save(date:flow:) in conformance PeriodPersistor(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *v2;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for QuantityPersisting.save(quantityIdentifier:value:units:) in conformance HealthKitPersistor;

  return PeriodPersistor.save(date:flow:)(a1, a2, v8);
}

uint64_t sub_2699EDBAC()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t partial apply for @objc closure #1 in LogPeriodIntentHandler.handle(intent:)()
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

  return @objc closure #1 in LogPeriodIntentHandler.handle(intent:)(v7, v5, v6);
}

unint64_t lazy protocol witness table accessor for type PeriodPersistor.StorageError and conformance PeriodPersistor.StorageError()
{
  v2 = lazy protocol witness table cache variable for type PeriodPersistor.StorageError and conformance PeriodPersistor.StorageError;
  if (!lazy protocol witness table cache variable for type PeriodPersistor.StorageError and conformance PeriodPersistor.StorageError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PeriodPersistor.StorageError and conformance PeriodPersistor.StorageError);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type PeriodPersistor.StorageError and conformance PeriodPersistor.StorageError;
  if (!lazy protocol witness table cache variable for type PeriodPersistor.StorageError and conformance PeriodPersistor.StorageError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PeriodPersistor.StorageError and conformance PeriodPersistor.StorageError);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type PeriodPersistor.StorageError and conformance PeriodPersistor.StorageError;
  if (!lazy protocol witness table cache variable for type PeriodPersistor.StorageError and conformance PeriodPersistor.StorageError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PeriodPersistor.StorageError and conformance PeriodPersistor.StorageError);
    return WitnessTable;
  }

  return v2;
}

uint64_t UnsafeContinuation.resume(throwing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v4, a1);
  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_2699EDF5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2699EDF9C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t type metadata accessor for HKMenstrualCyclesStore()
{
  v2 = lazy cache variable for type metadata for HKMenstrualCyclesStore;
  if (!lazy cache variable for type metadata for HKMenstrualCyclesStore)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKMenstrualCyclesStore);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t PeriodProjectionFocus.init(rawValue:)(uint64_t a1)
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
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PeriodProjectionFocus@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = PeriodProjectionFocus.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance PeriodProjectionFocus(void *a1@<X8>)
{
  v2 = *v1;
  PeriodProjectionFocus.rawValue.getter();
  *a1 = v3;
}

id static PeriodProjectionFocusResolutionResult.success(with:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  PeriodProjectionFocus.rawValue.getter();
  v1 = [ObjCClassFromMetadata successWithResolvedValue_];

  return v1;
}

id static PeriodProjectionFocusResolutionResult.confirmationRequired(with:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  PeriodProjectionFocus.rawValue.getter();
  v1 = [ObjCClassFromMetadata confirmationRequiredWithValueToConfirm_];

  return v1;
}

id PeriodProjectionFocusResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v7 = [v4 initWithJSONDictionary_forIntent_];
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](isa);

  return v7;
}

id PeriodProjectionFocusResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v9 = a1;
  v8 = a2;

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = 0;
  v7.super_class = type metadata accessor for PeriodProjectionFocusResolutionResult();
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

id PeriodProjectionFocusResolutionResult.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeriodProjectionFocusResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id LogSpecificMedicationsIntent.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for LogSpecificMedicationsIntent();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id LogSpecificMedicationsIntent.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id LogSpecificMedicationsIntent.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for LogSpecificMedicationsIntent();
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

id LogSpecificMedicationsIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

id LogSpecificMedicationsIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v10.super_class = type metadata accessor for LogSpecificMedicationsIntent();
  v4 = objc_msgSendSuper2(&v10, sel_initWithIdentifier_backingStore_, v6, a3);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v4);
  v14 = v4;
  MEMORY[0x277D82BD8](a3);

  MEMORY[0x277D82BD8](v14);
  return v4;
}

id LogSpecificMedicationsIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

id LogSpecificMedicationsIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v16.super_class = type metadata accessor for LogSpecificMedicationsIntent();
  v6 = objc_msgSendSuper2(&v16, sel_initWithDomain_verb_parametersByName_, v11, v14, v8);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BE0](v6);
  v22 = v6;

  MEMORY[0x277D82BD8](v22);
  return v6;
}

id LogSpecificMedicationsIntent.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LogSpecificMedicationsIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LogSpecificMedicationsIntentResponseCode.init(rawValue:)(uint64_t a1)
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
    case 103:
      return 103;
    case 104:
      return 104;
    case 105:
      return 105;
    case 106:
      return 106;
    case 107:
      return 107;
    case 108:
      return 108;
    case 109:
      return 109;
    case 110:
      return 110;
    case 111:
      return 111;
    case 112:
      return 112;
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LogSpecificMedicationsIntentResponseCode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = LogSpecificMedicationsIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance LogSpecificMedicationsIntentResponseCode(void *a1@<X8>)
{
  v2 = *v1;
  LogSpecificMedicationsIntentResponseCode.rawValue.getter();
  *a1 = v3;
}

uint64_t LogSpecificMedicationsIntentResponse.code.getter()
{
  v2 = (v0 + OBJC_IVAR___LogSpecificMedicationsIntentResponse_code);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t LogSpecificMedicationsIntentResponse.code.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___LogSpecificMedicationsIntentResponse_code);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for LogSpecificMedicationsIntentResponse.code : LogSpecificMedicationsIntentResponse@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = LogSpecificMedicationsIntentResponse.code.getter();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path setter for LogSpecificMedicationsIntentResponse.code : LogSpecificMedicationsIntentResponse(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  LogSpecificMedicationsIntentResponse.code.setter(v4);
  return MEMORY[0x277D82BD8](v3);
}

char *LogSpecificMedicationsIntentResponse.init(code:userActivity:)(uint64_t a1, uint64_t a2)
{
  v6 = [v7 init];
  MEMORY[0x277D82BE0](v6);
  v3 = &v6[OBJC_IVAR___LogSpecificMedicationsIntentResponse_code];
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

id LogSpecificMedicationsIntentResponse.init()()
{
  v3 = 0;
  *OBJC_IVAR___LogSpecificMedicationsIntentResponse_code = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for LogSpecificMedicationsIntentResponse();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id LogSpecificMedicationsIntentResponse.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id LogSpecificMedicationsIntentResponse.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___LogSpecificMedicationsIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for LogSpecificMedicationsIntentResponse();
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

id LogSpecificMedicationsIntentResponse.__allocating_init(backingStore:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithBackingStore_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id LogSpecificMedicationsIntentResponse.init(backingStore:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___LogSpecificMedicationsIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for LogSpecificMedicationsIntentResponse();
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

id LogSpecificMedicationsIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
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

id LogSpecificMedicationsIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  v9 = 0;
  v8 = a1;
  *OBJC_IVAR___LogSpecificMedicationsIntentResponse_code = 0;

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
  v7.super_class = type metadata accessor for LogSpecificMedicationsIntentResponse();
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

id LogSpecificMedicationsIntentResponse.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LogSpecificMedicationsIntentResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type LogSpecificMedicationsIntentResponseCode and conformance LogSpecificMedicationsIntentResponseCode()
{
  v2 = lazy protocol witness table cache variable for type LogSpecificMedicationsIntentResponseCode and conformance LogSpecificMedicationsIntentResponseCode;
  if (!lazy protocol witness table cache variable for type LogSpecificMedicationsIntentResponseCode and conformance LogSpecificMedicationsIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type LogSpecificMedicationsIntentResponseCode and conformance LogSpecificMedicationsIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type LogSpecificMedicationsIntentResponseCode and conformance LogSpecificMedicationsIntentResponseCode;
  if (!lazy protocol witness table cache variable for type LogSpecificMedicationsIntentResponseCode and conformance LogSpecificMedicationsIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type LogSpecificMedicationsIntentResponseCode and conformance LogSpecificMedicationsIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

id LogGenericMedicationsIntentHandler.init(storage:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  __dst[5] = a1;
  v11 = v1;
  outlined init with copy of QuantityPersisting?(a1, v8);
  if (v9)
  {
    outlined init with take of QuantityPersisting(v8, __dst);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    __dst[3] = &type metadata for GenericMedicationsPersistor;
    __dst[4] = &protocol witness table for GenericMedicationsPersistor;
    __dst[0] = swift_allocObject();
    GenericMedicationsPersistor.init(medStorageHelper:)(v7, (__dst[0] + 16));
    if (v9)
    {
      outlined destroy of QuantityPersisting?(v8);
    }
  }

  outlined init with take of QuantityPersisting(__dst, &v1[OBJC_IVAR____TtC19SiriWellnessIntents34LogGenericMedicationsIntentHandler_storage]);
  v6.receiver = v11;
  v6.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  MEMORY[0x277D82BE0](v3);
  v11 = v3;
  outlined destroy of QuantityPersisting?(a1);
  MEMORY[0x277D82BD8](v11);
  return v3;
}

void *GenericMedicationsPersistor.init(medStorageHelper:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  memset(__b, 0, sizeof(__b));
  __dst[5] = a1;
  type metadata accessor for HKHealthStore();
  v6 = NSDateFormatter.__allocating_init()();
  MEMORY[0x277D82BE0](v6);
  __b[0] = v6;
  type metadata accessor for HKMedicationExposableDoseEventControl();
  __b[1] = HKUnitPreferenceController.__allocating_init(healthStore:)(v6);
  outlined init with copy of QuantityPersisting?(a1, v9);
  if (v10)
  {
    outlined init with take of QuantityPersisting(v9, __dst);
  }

  else
  {
    v4 = type metadata accessor for MedStorageHelper();
    memset(v8, 0, sizeof(v8));
    v2 = MedStorageHelper.__allocating_init(storage:)(v8);
    __dst[3] = v4;
    __dst[4] = &protocol witness table for MedStorageHelper;
    __dst[0] = v2;
    if (v10)
    {
      outlined destroy of QuantityPersisting?(v9);
    }
  }

  outlined init with take of QuantityPersisting(__dst, &__b[2]);
  outlined init with copy of GenericMedicationsPersistor(__b, a2);
  outlined destroy of QuantityPersisting?(a1);
  return outlined destroy of GenericMedicationsPersistor(__b);
}

uint64_t sub_2699F08B4()
{
  MEMORY[0x277D82BD8](v0[2]);
  MEMORY[0x277D82BD8](v0[3]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  return swift_deallocObject();
}

uint64_t LogGenericMedicationsIntentHandler.handle(intent:)(uint64_t a1)
{
  *(v2 + 528) = v1;
  *(v2 + 520) = a1;
  *(v2 + 304) = v2;
  *(v2 + 312) = 0;
  *(v2 + 320) = 0;
  *(v2 + 696) = 0;
  *(v2 + 704) = 0;
  *(v2 + 712) = 0;
  *(v2 + 720) = 0;
  v3 = type metadata accessor for Logger();
  *(v2 + 536) = v3;
  v6 = *(v3 - 8);
  *(v2 + 544) = v6;
  v7 = *(v6 + 64);
  *(v2 + 552) = swift_task_alloc();
  *(v2 + 560) = swift_task_alloc();
  *(v2 + 568) = swift_task_alloc();
  *(v2 + 576) = swift_task_alloc();
  *(v2 + 584) = swift_task_alloc();
  *(v2 + 592) = swift_task_alloc();
  *(v2 + 600) = swift_task_alloc();
  *(v2 + 312) = a1;
  *(v2 + 320) = v1;
  v4 = *(v2 + 304);

  return MEMORY[0x2822009F8](LogGenericMedicationsIntentHandler.handle(intent:), 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 664);
  *(v6 + 304) = *v1;
  *(v6 + 672) = a1;

  v4 = *(v6 + 304);

  return MEMORY[0x2822009F8](LogGenericMedicationsIntentHandler.handle(intent:), 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 680);
  *(v6 + 304) = *v1;
  *(v6 + 688) = a1;

  v4 = *(v6 + 304);

  return MEMORY[0x2822009F8](LogGenericMedicationsIntentHandler.handle(intent:), 0);
}

uint64_t LogGenericMedicationsIntentHandler.handle(intent:)()
{
  v1 = v0[75];
  v20 = v0[68];
  v22 = v0[67];
  v0[38] = v0;
  v21 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *(v20 + 16);
  v0[76] = v2;
  v0[77] = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v2(v1, v21, v22);
  swift_endAccess();
  v24 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  v0[78] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v25 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v24, v23))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v16 = createStorage<A>(capacity:type:)(0);
    v17 = createStorage<A>(capacity:type:)(0);
    *(v19 + 488) = buf;
    *(v19 + 496) = v16;
    *(v19 + 504) = v17;
    serialize(_:at:)(0, (v19 + 488));
    serialize(_:at:)(0, (v19 + 488));
    *(v19 + 512) = v25;
    v18 = swift_task_alloc();
    v18[2] = v19 + 488;
    v18[3] = v19 + 496;
    v18[4] = v19 + 504;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v24, v23, "Checking authorization for medications...", buf, 2u);
    destroyStorage<A>(_:count:)(v16, 0, v14);
    destroyStorage<A>(_:count:)(v17, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  *(v19 + 632) = 0;
  v8 = *(v19 + 600);
  v9 = *(v19 + 536);
  v10 = *(v19 + 528);
  v7 = *(v19 + 544);
  MEMORY[0x277D82BD8](v24);
  v3 = *(v7 + 8);
  *(v19 + 640) = v3;
  *(v19 + 648) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v8, v9);
  outlined init with copy of QuantityPersisting(v10 + OBJC_IVAR____TtC19SiriWellnessIntents34LogGenericMedicationsIntentHandler_storage, v19 + 16);
  v13 = *(v19 + 40);
  v11 = *(v19 + 48);
  __swift_project_boxed_opaque_existential_1((v19 + 16), v13);
  v12 = (*(v11 + 8) + **(v11 + 8));
  v4 = *(*(v11 + 8) + 4);
  v5 = swift_task_alloc();
  *(v19 + 656) = v5;
  *v5 = *(v19 + 304);
  v5[1] = LogGenericMedicationsIntentHandler.handle(intent:);

  return v12(v13, v11);
}

{
  v198 = v0;
  v187 = *(v0 + 697);
  *(v0 + 304) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if ((v187 & 1) == 0)
  {
    v40 = *(v186 + 624);
    v38 = *(v186 + 616);
    v39 = *(v186 + 608);
    v16 = *(v186 + 552);
    v37 = *(v186 + 536);
    v36 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v39(v16, v36, v37);
    swift_endAccess();
    v42 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    v43 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v42, v41))
    {
      v17 = *(v186 + 632);
      v32 = static UnsafeMutablePointer.allocate(capacity:)();
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v33 = createStorage<A>(capacity:type:)(0);
      v34 = createStorage<A>(capacity:type:)(0);
      *(v186 + 328) = v32;
      *(v186 + 336) = v33;
      *(v186 + 344) = v34;
      serialize(_:at:)(0, (v186 + 328));
      serialize(_:at:)(0, (v186 + 328));
      *(v186 + 352) = v43;
      v35 = swift_task_alloc();
      v35[2] = v186 + 328;
      v35[3] = v186 + 336;
      v35[4] = v186 + 344;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v17)
      {
      }

      _os_log_impl(&dword_269912000, v42, v41, "Not authorized to write medications data.", v32, 2u);
      destroyStorage<A>(_:count:)(v33, 0, v31);
      destroyStorage<A>(_:count:)(v34, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v32, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v29 = *(v186 + 648);
    v30 = *(v186 + 640);
    v27 = *(v186 + 552);
    v28 = *(v186 + 536);
    MEMORY[0x277D82BD8](v42);
    v30(v27, v28);
    type metadata accessor for LogGenericMedicationsIntentResponse();
    v65 = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(101, 0);
    goto LABEL_59;
  }

  v182 = *(v186 + 624);
  v180 = *(v186 + 616);
  v181 = *(v186 + 608);
  v1 = *(v186 + 592);
  v179 = *(v186 + 536);
  v178 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v181(v1, v178, v179);
  swift_endAccess();
  oslog = Logger.logObject.getter();
  v183 = static os_log_type_t.debug.getter();
  v185 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v183))
  {
    v2 = *(v186 + 632);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v175 = createStorage<A>(capacity:type:)(0);
    v176 = createStorage<A>(capacity:type:)(0);
    *(v186 + 456) = buf;
    *(v186 + 464) = v175;
    *(v186 + 472) = v176;
    serialize(_:at:)(0, (v186 + 456));
    serialize(_:at:)(0, (v186 + 456));
    *(v186 + 480) = v185;
    v177 = swift_task_alloc();
    v177[2] = v186 + 456;
    v177[3] = v186 + 464;
    v177[4] = v186 + 472;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v2)
    {
    }

    _os_log_impl(&dword_269912000, oslog, v183, "Authorization check successful for medications!", buf, 2u);
    destroyStorage<A>(_:count:)(v175, 0, v173);
    destroyStorage<A>(_:count:)(v176, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

    v172 = 0;
  }

  else
  {

    v172 = *(v186 + 632);
  }

  v169 = *(v186 + 648);
  v170 = *(v186 + 640);
  v167 = *(v186 + 592);
  v168 = *(v186 + 536);
  v171 = *(v186 + 520);
  MEMORY[0x277D82BD8](oslog);
  v170(v167, v168);
  *(v186 + 360) = [v171 medStatus];
  if (*(v186 + 360))
  {
    v164 = *(v186 + 360);
    MEMORY[0x277D82BE0](v164);
    outlined destroy of HealthKitPersistor((v186 + 360));
    v165 = [v164 BOOLValue];
    MEMORY[0x277D82BD8](v164);
    v166 = v165;
  }

  else
  {
    outlined destroy of HealthKitPersistor((v186 + 360));
    v166 = 2;
  }

  if (v166 == 2)
  {
    v57 = *(v186 + 624);
    v55 = *(v186 + 616);
    v56 = *(v186 + 608);
    v15 = *(v186 + 560);
    v54 = *(v186 + 536);
    v53 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v56(v15, v53, v54);
    swift_endAccess();
    v59 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    v60 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v59, v58))
    {
      v49 = static UnsafeMutablePointer.allocate(capacity:)();
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v50 = createStorage<A>(capacity:type:)(0);
      v51 = createStorage<A>(capacity:type:)(0);
      *(v186 + 368) = v49;
      *(v186 + 376) = v50;
      *(v186 + 384) = v51;
      serialize(_:at:)(0, (v186 + 368));
      serialize(_:at:)(0, (v186 + 368));
      *(v186 + 392) = v60;
      v52 = swift_task_alloc();
      v52[2] = v186 + 368;
      v52[3] = v186 + 376;
      v52[4] = v186 + 384;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v172)
      {
      }

      _os_log_impl(&dword_269912000, v59, v58, "Unable to extract BOOLean value for medStatusTaken from LogGenericMedicationsIntent.", v49, 2u);
      destroyStorage<A>(_:count:)(v50, 0, v48);
      destroyStorage<A>(_:count:)(v51, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v49, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v46 = *(v186 + 648);
    v47 = *(v186 + 640);
    v44 = *(v186 + 560);
    v45 = *(v186 + 536);
    MEMORY[0x277D82BD8](v59);
    v47(v44, v45);
    type metadata accessor for LogGenericMedicationsIntentResponse();
    v65 = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    goto LABEL_59;
  }

  v3 = *(v186 + 520);
  *(v186 + 696) = v166 & 1;
  *(v186 + 400) = [v3 shouldOverwriteExistingStatuses];
  if (*(v186 + 400))
  {
    v161 = *(v186 + 400);
    MEMORY[0x277D82BE0](v161);
    outlined destroy of HealthKitPersistor((v186 + 400));
    v162 = [v161 BOOLValue];
    MEMORY[0x277D82BD8](v161);
    v163 = v162;
  }

  else
  {
    outlined destroy of HealthKitPersistor((v186 + 400));
    v163 = 2;
  }

  if (v163 != 2)
  {
    v158 = *(v186 + 624);
    v141 = *(v186 + 616);
    v142 = *(v186 + 608);
    v4 = *(v186 + 584);
    v140 = *(v186 + 536);
    *(v186 + 720) = v163 & 1;
    v139 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v142(v4, v139, v140);
    swift_endAccess();
    v143 = swift_allocObject();
    *(v143 + 16) = v166 & 1;
    v147 = swift_allocObject();
    *(v147 + 16) = v163 & 1;
    log = Logger.logObject.getter();
    v160 = static os_log_type_t.debug.getter();
    v151 = swift_allocObject();
    *(v151 + 16) = 0;
    v152 = swift_allocObject();
    *(v152 + 16) = 4;
    v144 = swift_allocObject();
    *(v144 + 16) = partial apply for implicit closure #5 in LogSpecificMedicationsIntentHandler.handle(intent:);
    *(v144 + 24) = v143;
    v145 = swift_allocObject();
    *(v145 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
    *(v145 + 24) = v144;
    v146 = swift_allocObject();
    *(v146 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
    *(v146 + 24) = v145;
    v153 = swift_allocObject();
    *(v153 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int32);
    *(v153 + 24) = v146;
    v154 = swift_allocObject();
    *(v154 + 16) = 0;
    v155 = swift_allocObject();
    *(v155 + 16) = 4;
    v148 = swift_allocObject();
    *(v148 + 16) = partial apply for implicit closure #5 in LogSpecificMedicationsIntentHandler.handle(intent:);
    *(v148 + 24) = v147;
    v149 = swift_allocObject();
    *(v149 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
    *(v149 + 24) = v148;
    v150 = swift_allocObject();
    *(v150 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
    *(v150 + 24) = v149;
    v156 = swift_allocObject();
    *(v156 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int32);
    *(v156 + 24) = v150;
    _allocateUninitializedArray<A>(_:)();
    v157 = v5;

    *v157 = partial apply for closure #1 in OSLogArguments.append(_:);
    v157[1] = v151;

    v157[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v157[3] = v152;

    v157[4] = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
    v157[5] = v153;

    v157[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v157[7] = v154;

    v157[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v157[9] = v155;

    v157[10] = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
    v157[11] = v156;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v160))
    {
      v136 = static UnsafeMutablePointer.allocate(capacity:)();
      v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v137 = createStorage<A>(capacity:type:)(0);
      v138 = createStorage<A>(capacity:type:)(0);
      v193 = v136;
      v194 = v137;
      v195 = v138;
      serialize(_:at:)(0, &v193);
      serialize(_:at:)(2, &v193);
      v196 = partial apply for closure #1 in OSLogArguments.append(_:);
      v197 = v151;
      closure #1 in osLogInternal(_:log:type:)(&v196, &v193, &v194, &v195);
      if (v172)
      {
      }

      v196 = partial apply for closure #1 in OSLogArguments.append(_:);
      v197 = v152;
      closure #1 in osLogInternal(_:log:type:)(&v196, &v193, &v194, &v195);
      v196 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
      v197 = v153;
      closure #1 in osLogInternal(_:log:type:)(&v196, &v193, &v194, &v195);
      v196 = partial apply for closure #1 in OSLogArguments.append(_:);
      v197 = v154;
      closure #1 in osLogInternal(_:log:type:)(&v196, &v193, &v194, &v195);
      v196 = partial apply for closure #1 in OSLogArguments.append(_:);
      v197 = v155;
      closure #1 in osLogInternal(_:log:type:)(&v196, &v193, &v194, &v195);
      v196 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
      v197 = v156;
      closure #1 in osLogInternal(_:log:type:)(&v196, &v193, &v194, &v195);
      _os_log_impl(&dword_269912000, log, v160, "Persisting generic medications with override...\n  medStatusIsTaken: %{BOOL}d\n  shouldOverwriteExistingStatuses: %{BOOL}d", v136, 0xEu);
      destroyStorage<A>(_:count:)(v137, 0, v135);
      destroyStorage<A>(_:count:)(v138, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v136, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v129 = *(v186 + 648);
    v130 = *(v186 + 640);
    v127 = *(v186 + 584);
    v128 = *(v186 + 536);
    v131 = *(v186 + 528);
    MEMORY[0x277D82BD8](log);
    v130(v127, v128);
    outlined init with copy of QuantityPersisting(v131 + OBJC_IVAR____TtC19SiriWellnessIntents34LogGenericMedicationsIntentHandler_storage, v186 + 96);
    v132 = *(v186 + 120);
    v133 = *(v186 + 128);
    __swift_project_boxed_opaque_existential_1((v186 + 96), v132);
    v134 = (*(v133 + 16) + **(v133 + 16));
    v7 = *(*(v133 + 16) + 4);
    v8 = swift_task_alloc();
    *(v186 + 664) = v8;
    *v8 = *(v186 + 304);
    v8[1] = LogGenericMedicationsIntentHandler.handle(intent:);

    return v134(v166 & 1, v163 & 1, v132, v133);
  }

  *(v186 + 408) = [*(v186 + 520) isTimeframeToday];
  if (*(v186 + 408))
  {
    v124 = *(v186 + 408);
    MEMORY[0x277D82BE0](v124);
    outlined destroy of HealthKitPersistor((v186 + 408));
    v125 = [v124 BOOLValue];
    MEMORY[0x277D82BD8](v124);
    v126 = v125;
  }

  else
  {
    outlined destroy of HealthKitPersistor((v186 + 408));
    v126 = 2;
  }

  if (v126 == 2)
  {
    v75 = *(v186 + 624);
    v73 = *(v186 + 616);
    v74 = *(v186 + 608);
    v14 = *(v186 + 568);
    v72 = *(v186 + 536);
    v71 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v74(v14, v71, v72);
    swift_endAccess();
    v77 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();
    v78 = _allocateUninitializedArray<A>(_:)();
    if (!os_log_type_enabled(v77, v76))
    {

      goto LABEL_45;
    }

    v67 = static UnsafeMutablePointer.allocate(capacity:)();
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v68 = createStorage<A>(capacity:type:)(0);
    v69 = createStorage<A>(capacity:type:)(0);
    *(v186 + 416) = v67;
    *(v186 + 424) = v68;
    *(v186 + 432) = v69;
    serialize(_:at:)(0, (v186 + 416));
    serialize(_:at:)(0, (v186 + 416));
    *(v186 + 440) = v78;
    v70 = swift_task_alloc();
    v70[2] = v186 + 416;
    v70[3] = v186 + 424;
    v70[4] = v186 + 432;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (!v172)
    {

      _os_log_impl(&dword_269912000, v77, v76, "Not an override case & unable to extract BOOLean value for isTimeframeToday from LogGenericMedicationsIntent.", v67, 2u);
      destroyStorage<A>(_:count:)(v68, 0, v66);
      destroyStorage<A>(_:count:)(v69, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v67, MEMORY[0x277D84B78]);

LABEL_45:
      v63 = *(v186 + 648);
      v64 = *(v186 + 640);
      v61 = *(v186 + 568);
      v62 = *(v186 + 536);
      MEMORY[0x277D82BD8](v77);
      v64(v61, v62);
      type metadata accessor for LogGenericMedicationsIntentResponse();
      v65 = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);
LABEL_59:
      v18 = *(v186 + 600);
      v21 = *(v186 + 592);
      v22 = *(v186 + 584);
      v23 = *(v186 + 576);
      v24 = *(v186 + 568);
      v25 = *(v186 + 560);
      v26 = *(v186 + 552);

      v19 = *(*(v186 + 304) + 8);
      v20 = *(v186 + 304);

      return v19(v65);
    }
  }

  v9 = *(v186 + 520);
  *(v186 + 704) = v126 & 1;
  *(v186 + 448) = [v9 confirmedLogAsScheduled];
  if (*(v186 + 448))
  {
    v121 = *(v186 + 448);
    MEMORY[0x277D82BE0](v121);
    outlined destroy of HealthKitPersistor((v186 + 448));
    v122 = [v121 BOOLValue];
    MEMORY[0x277D82BD8](v121);
    v123 = v122;
  }

  else
  {
    outlined destroy of HealthKitPersistor((v186 + 448));
    v123 = 2;
  }

  if (v123 == 2)
  {
    v120 = 0;
  }

  else
  {
    v120 = v123;
  }

  v117 = *(v186 + 624);
  v93 = *(v186 + 616);
  v94 = *(v186 + 608);
  v10 = *(v186 + 576);
  v92 = *(v186 + 536);
  *(v186 + 712) = v120 & 1;
  v91 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v94(v10, v91, v92);
  swift_endAccess();
  v95 = swift_allocObject();
  *(v95 + 16) = v126 & 1;
  v99 = swift_allocObject();
  *(v99 + 16) = v166 & 1;
  v103 = swift_allocObject();
  *(v103 + 16) = v120 & 1;
  v118 = Logger.logObject.getter();
  v119 = static os_log_type_t.debug.getter();
  v107 = swift_allocObject();
  *(v107 + 16) = 0;
  v108 = swift_allocObject();
  *(v108 + 16) = 4;
  v96 = swift_allocObject();
  *(v96 + 16) = partial apply for implicit closure #5 in LogSpecificMedicationsIntentHandler.handle(intent:);
  *(v96 + 24) = v95;
  v97 = swift_allocObject();
  *(v97 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
  *(v97 + 24) = v96;
  v98 = swift_allocObject();
  *(v98 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
  *(v98 + 24) = v97;
  v109 = swift_allocObject();
  *(v109 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int32);
  *(v109 + 24) = v98;
  v110 = swift_allocObject();
  *(v110 + 16) = 0;
  v111 = swift_allocObject();
  *(v111 + 16) = 4;
  v100 = swift_allocObject();
  *(v100 + 16) = partial apply for implicit closure #5 in LogSpecificMedicationsIntentHandler.handle(intent:);
  *(v100 + 24) = v99;
  v101 = swift_allocObject();
  *(v101 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
  *(v101 + 24) = v100;
  v102 = swift_allocObject();
  *(v102 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
  *(v102 + 24) = v101;
  v112 = swift_allocObject();
  *(v112 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int32);
  *(v112 + 24) = v102;
  v113 = swift_allocObject();
  *(v113 + 16) = 0;
  v114 = swift_allocObject();
  *(v114 + 16) = 4;
  v104 = swift_allocObject();
  *(v104 + 16) = partial apply for implicit closure #5 in LogSpecificMedicationsIntentHandler.handle(intent:);
  *(v104 + 24) = v103;
  v105 = swift_allocObject();
  *(v105 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
  *(v105 + 24) = v104;
  v106 = swift_allocObject();
  *(v106 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
  *(v106 + 24) = v105;
  v115 = swift_allocObject();
  *(v115 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int32);
  *(v115 + 24) = v106;
  _allocateUninitializedArray<A>(_:)();
  v116 = v11;

  *v116 = partial apply for closure #1 in OSLogArguments.append(_:);
  v116[1] = v107;

  v116[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v116[3] = v108;

  v116[4] = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
  v116[5] = v109;

  v116[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v116[7] = v110;

  v116[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v116[9] = v111;

  v116[10] = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
  v116[11] = v112;

  v116[12] = partial apply for closure #1 in OSLogArguments.append(_:);
  v116[13] = v113;

  v116[14] = partial apply for closure #1 in OSLogArguments.append(_:);
  v116[15] = v114;

  v116[16] = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
  v116[17] = v115;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v118, v119))
  {
    v88 = static UnsafeMutablePointer.allocate(capacity:)();
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v89 = createStorage<A>(capacity:type:)(0);
    v90 = createStorage<A>(capacity:type:)(0);
    v188 = v88;
    v189 = v89;
    v190 = v90;
    serialize(_:at:)(0, &v188);
    serialize(_:at:)(3, &v188);
    v191 = partial apply for closure #1 in OSLogArguments.append(_:);
    v192 = v107;
    closure #1 in osLogInternal(_:log:type:)(&v191, &v188, &v189, &v190);
    if (v172)
    {
    }

    v191 = partial apply for closure #1 in OSLogArguments.append(_:);
    v192 = v108;
    closure #1 in osLogInternal(_:log:type:)(&v191, &v188, &v189, &v190);
    v191 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
    v192 = v109;
    closure #1 in osLogInternal(_:log:type:)(&v191, &v188, &v189, &v190);
    v191 = partial apply for closure #1 in OSLogArguments.append(_:);
    v192 = v110;
    closure #1 in osLogInternal(_:log:type:)(&v191, &v188, &v189, &v190);
    v191 = partial apply for closure #1 in OSLogArguments.append(_:);
    v192 = v111;
    closure #1 in osLogInternal(_:log:type:)(&v191, &v188, &v189, &v190);
    v191 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
    v192 = v112;
    closure #1 in osLogInternal(_:log:type:)(&v191, &v188, &v189, &v190);
    v191 = partial apply for closure #1 in OSLogArguments.append(_:);
    v192 = v113;
    closure #1 in osLogInternal(_:log:type:)(&v191, &v188, &v189, &v190);
    v191 = partial apply for closure #1 in OSLogArguments.append(_:);
    v192 = v114;
    closure #1 in osLogInternal(_:log:type:)(&v191, &v188, &v189, &v190);
    v191 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
    v192 = v115;
    closure #1 in osLogInternal(_:log:type:)(&v191, &v188, &v189, &v190);
    _os_log_impl(&dword_269912000, v118, v119, "Persisting generic medications...\n  isTimeframeToday: %{BOOL}d\n  medStatusIsTaken: %{BOOL}d\n  confirmedLogAsScheduled: %{BOOL}d", v88, 0x14u);
    destroyStorage<A>(_:count:)(v89, 0, v87);
    destroyStorage<A>(_:count:)(v90, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v88, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v81 = *(v186 + 648);
  v82 = *(v186 + 640);
  v79 = *(v186 + 576);
  v80 = *(v186 + 536);
  v83 = *(v186 + 528);
  MEMORY[0x277D82BD8](v118);
  v82(v79, v80);
  outlined init with copy of QuantityPersisting(v83 + OBJC_IVAR____TtC19SiriWellnessIntents34LogGenericMedicationsIntentHandler_storage, v186 + 56);
  v84 = *(v186 + 80);
  v85 = *(v186 + 88);
  __swift_project_boxed_opaque_existential_1((v186 + 56), v84);
  v86 = (*(v85 + 24) + **(v85 + 24));
  v12 = *(*(v85 + 24) + 4);
  v13 = swift_task_alloc();
  *(v186 + 680) = v13;
  *v13 = *(v186 + 304);
  v13[1] = LogGenericMedicationsIntentHandler.handle(intent:);

  return v86(v126 & 1, v166 & 1, v120 & 1, v84, v85);
}

{
  v0[38] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v11 = v0[84];
  v1 = v0[75];
  v5 = v0[74];
  v6 = v0[73];
  v7 = v0[72];
  v8 = v0[71];
  v9 = v0[70];
  v10 = v0[69];

  v2 = *(v0[38] + 8);
  v3 = v0[38];

  return v2(v11);
}

{
  v0[38] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v11 = v0[86];
  v1 = v0[75];
  v5 = v0[74];
  v6 = v0[73];
  v7 = v0[72];
  v8 = v0[71];
  v9 = v0[70];
  v10 = v0[69];

  v2 = *(v0[38] + 8);
  v3 = v0[38];

  return v2(v11);
}

uint64_t LogGenericMedicationsIntentHandler.handle(intent:)(char a1)
{
  v6 = *v1;
  v3 = *(*v1 + 656);
  *(v6 + 304) = *v1;
  *(v6 + 697) = a1;

  v4 = *(v6 + 304);

  return MEMORY[0x2822009F8](LogGenericMedicationsIntentHandler.handle(intent:), 0);
}

uint64_t @objc closure #1 in LogGenericMedicationsIntentHandler.handle(intent:)(uint64_t a1, const void *a2, uint64_t a3)
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

  return LogGenericMedicationsIntentHandler.handle(intent:)(a1);
}

id LogGenericMedicationsIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t GenericMedicationsPersistor.medicationController.getter()
{
  v2 = *(v0 + 8);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

void *outlined init with copy of GenericMedicationsPersistor(void *a1, void *a2)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = v4;
  v5 = a1[1];
  MEMORY[0x277D82BE0](v5);
  a2[1] = v5;
  v2 = a1[5];
  a2[5] = v2;
  a2[6] = a1[6];
  (**(v2 - 8))((a2 + 2), (a1 + 2));
  return a2;
}

void *outlined destroy of GenericMedicationsPersistor(void *a1)
{
  MEMORY[0x277D82BD8](*a1);
  MEMORY[0x277D82BD8](a1[1]);
  __swift_destroy_boxed_opaque_existential_1(a1 + 2);
  return a1;
}

uint64_t GenericMedicationsPersistor.isLoggingAuthorized()()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v2 = v1[2];
  return MEMORY[0x2822009F8](GenericMedicationsPersistor.isLoggingAuthorized(), 0);
}

{
  v1 = v0[4];
  v0[2] = v0;
  v5 = *v1;
  v0[5] = *v1;
  MEMORY[0x277D82BE0](v5);
  v2 = swift_task_alloc();
  *(v4 + 48) = v2;
  *v2 = *(v4 + 16);
  v2[1] = PeriodPersistor.isLoggingAuthorized();

  return isSiriAuthorizedToAccessHealthData(store:)(v5);
}

uint64_t GenericMedicationsPersistor.numMedInAppToday(doseEvents:)(uint64_t a1)
{
  v2[15] = a1;
  v2[8] = v2;
  v2[9] = 0;
  v2[10] = 0;
  v2[11] = 0;
  v2[2] = 0;
  v2[3] = 0;
  v2[14] = 0;
  v2[9] = a1;
  v2[10] = v1;
  v3 = v2[8];
  return MEMORY[0x2822009F8](GenericMedicationsPersistor.numMedInAppToday(doseEvents:), 0);
}

uint64_t GenericMedicationsPersistor.numMedInAppToday(doseEvents:)()
{
  v14 = v0[15];
  v0[8] = v0;
  _allocateUninitializedArray<A>(_:)();
  v0[11] = Set.init(arrayLiteral:)();

  v0[12] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  Collection<>.makeIterator()();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
    IndexingIterator.next()();
    v12 = v13[13];
    if (!v12)
    {
      break;
    }

    v13[14] = v12;
    v8 = [v12 medicationIdentifier];
    v11 = [v8 underlyingIdentifier];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v1;
    MEMORY[0x277D82BD8](v8);
    v13[6] = v9;
    v13[7] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
    Set.insert(_:)();
    MEMORY[0x277D82BD8](v11);
    v2 = v13[5];

    MEMORY[0x277D82BD8](v12);
  }

  outlined destroy of [HKQuantityType](v13 + 2);
  v6 = v13[11];

  v7 = Set.count.getter();

  outlined destroy of [HKQuantityType](v13 + 11);
  v3 = *(v13[8] + 8);
  v4 = v13[8];

  return v3(v7);
}

uint64_t GenericMedicationsPersistor.saveWithOverride(medStatusTaken:shouldOverwriteExistingStatuses:)(char a1, char a2)
{
  *(v3 + 264) = v2;
  *(v3 + 554) = a2 & 1;
  *(v3 + 553) = a1 & 1;
  *(v3 + 192) = v3;
  *(v3 + 552) = 0;
  *(v3 + 560) = 0;
  *(v3 + 200) = 0;
  *(v3 + 208) = 0;
  *(v3 + 224) = 0;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  v4 = type metadata accessor for Logger();
  *(v3 + 272) = v4;
  v10 = *(v4 - 8);
  *(v3 + 280) = v10;
  v5 = *(v10 + 64) + 15;
  *(v3 + 288) = swift_task_alloc();
  v6 = type metadata accessor for Date();
  *(v3 + 296) = v6;
  v11 = *(v6 - 8);
  *(v3 + 304) = v11;
  v12 = *(v11 + 64);
  *(v3 + 312) = swift_task_alloc();
  *(v3 + 320) = swift_task_alloc();
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  v7 = type metadata accessor for DateInterval();
  *(v3 + 344) = v7;
  v13 = *(v7 - 8);
  *(v3 + 352) = v13;
  v14 = *(v13 + 64);
  *(v3 + 360) = swift_task_alloc();
  *(v3 + 368) = swift_task_alloc();
  *(v3 + 552) = a1 & 1;
  *(v3 + 560) = a2 & 1;
  *(v3 + 200) = v2;
  v8 = *(v3 + 192);

  return MEMORY[0x2822009F8](GenericMedicationsPersistor.saveWithOverride(medStatusTaken:shouldOverwriteExistingStatuses:), 0);
}

uint64_t GenericMedicationsPersistor.saveWithOverride(medStatusTaken:shouldOverwriteExistingStatuses:)()
{
  v11 = *(v0 + 368);
  v14 = *(v0 + 360);
  v12 = *(v0 + 352);
  v13 = *(v0 + 344);
  v4 = *(v0 + 336);
  v8 = *(v0 + 328);
  v5 = *(v0 + 320);
  v9 = *(v0 + 312);
  v3 = *(v0 + 304);
  v6 = *(v0 + 296);
  v10 = *(v0 + 264);
  *(v0 + 192) = v0;
  Date.init()();
  Date.startOfDay.getter(v8);
  v7 = *(v3 + 8);
  v7(v4, v6);
  Date.init()();
  Date.endOfDay.getter(v9);
  v7(v5, v6);
  DateInterval.init(start:end:)();
  v17 = *(v10 + 8);
  *(v0 + 376) = v17;
  MEMORY[0x277D82BE0](v17);
  (*(v12 + 16))(v14, v11, v13);
  isa = DateInterval._bridgeToObjectiveC()().super.isa;
  *(v0 + 384) = isa;
  v1 = *(v12 + 8);
  *(v0 + 392) = v1;
  *(v0 + 400) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v1(v14, v13);
  *(v0 + 16) = *(v0 + 192);
  *(v0 + 56) = v0 + 216;
  *(v0 + 24) = GenericMedicationsPersistor.saveWithOverride(medStatusTaken:shouldOverwriteExistingStatuses:);
  v15 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySo30HKMedicationExposableDoseEventCGs5Error_pGMd, &_sSccySaySo30HKMedicationExposableDoseEventCGs5Error_pGMR);
  *(v0 + 112) = v15;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 92) = 0;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [HKMedicationExposableDoseEvent];
  *(v0 + 104) = &block_descriptor_7;
  [v17 doseEventsForDateInterval:isa medicationIdentifier:0 completion:?];

  return MEMORY[0x282200938](v0 + 16);
}

{
  v6 = *v0;
  v6[24] = *v0;
  v7 = v6 + 24;
  v1 = v6[6];
  v6[51] = v1;
  if (v1)
  {
    v4 = *v7;
    v3 = GenericMedicationsPersistor.saveWithOverride(medStatusTaken:shouldOverwriteExistingStatuses:);
  }

  else
  {
    v2 = *v7;
    v3 = GenericMedicationsPersistor.saveWithOverride(medStatusTaken:shouldOverwriteExistingStatuses:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v29 = *(v0 + 384);
  v28 = *(v0 + 376);
  v1 = *(v0 + 264);
  v35 = *(v0 + 553);
  *(v0 + 192) = v0;
  v30 = *(v0 + 216);

  *(v0 + 208) = v30;
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  v31 = filterUniqueDoseEvents(doseEvents:)(v30);

  v2 = *(v0 + 208);
  *(v0 + 208) = v31;

  v32 = GenericMedicationsPersistor.getDoseEventsByStatus(doseEvents:)(v31);
  v33 = v3;
  v34 = v4;
  *(v0 + 416) = v32;
  *(v0 + 424) = v3;
  *(v0 + 432) = v4;

  *(v0 + 168) = v32;
  *(v0 + 176) = v33;
  *(v0 + 184) = v34;
  if (v35)
  {
    if (*(v27 + 554))
    {
      v26 = *(*(v27 + 264) + 8);
      *(v27 + 440) = v26;
      MEMORY[0x277D82BE0](v26);
      type metadata accessor for HKMedicationExposableDoseEvent();
      v25 = static Array.+ infix(_:_:)();
      *(v27 + 448) = v25;
      v5 = swift_task_alloc();
      v6 = v25;
      v7 = v5;
      v8 = v26;
      *(v27 + 456) = v7;
      *v7 = *(v27 + 192);
      v7[1] = GenericMedicationsPersistor.saveWithOverride(medStatusTaken:shouldOverwriteExistingStatuses:);
      v9 = *(v27 + 264);
      v10 = 1;
    }

    else
    {
      v24 = *(*(v27 + 264) + 8);
      *(v27 + 472) = v24;
      MEMORY[0x277D82BE0](v24);
      v12 = swift_task_alloc();
      v6 = v34;
      v13 = v12;
      v8 = v24;
      *(v27 + 480) = v13;
      *v13 = *(v27 + 192);
      v13[1] = GenericMedicationsPersistor.saveWithOverride(medStatusTaken:shouldOverwriteExistingStatuses:);
      v14 = *(v27 + 264);
      v10 = 1;
    }
  }

  else if (*(v27 + 554))
  {
    v23 = *(*(v27 + 264) + 8);
    *(v27 + 496) = v23;
    MEMORY[0x277D82BE0](v23);
    type metadata accessor for HKMedicationExposableDoseEvent();
    v22 = static Array.+ infix(_:_:)();
    *(v27 + 504) = v22;
    v15 = swift_task_alloc();
    v6 = v22;
    v16 = v15;
    v8 = v23;
    *(v27 + 512) = v16;
    *v16 = *(v27 + 192);
    v16[1] = GenericMedicationsPersistor.saveWithOverride(medStatusTaken:shouldOverwriteExistingStatuses:);
    v17 = *(v27 + 264);
    v10 = 0;
  }

  else
  {
    v21 = *(*(v27 + 264) + 8);
    *(v27 + 528) = v21;
    MEMORY[0x277D82BE0](v21);
    v18 = swift_task_alloc();
    v6 = v34;
    v19 = v18;
    v8 = v21;
    *(v27 + 536) = v19;
    *v19 = *(v27 + 192);
    v19[1] = GenericMedicationsPersistor.saveWithOverride(medStatusTaken:shouldOverwriteExistingStatuses:);
    v20 = *(v27 + 264);
    v10 = 0;
  }

  return GenericMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:)(v8, v6, v10);
}

{
  v7 = v0[54];
  v6 = v0[53];
  v1 = v0[52];
  v9 = v0[50];
  v10 = v0[49];
  v11 = v0[46];
  v8 = v0[43];
  v0[24] = v0;

  outlined destroy of [HKQuantityType](v0 + 26);
  v10(v11, v8);
  v18 = v0[58];
  v2 = v0[46];
  v12 = v0[45];
  v13 = v0[42];
  v14 = v0[41];
  v15 = v0[40];
  v16 = v0[39];
  v17 = v0[36];

  v3 = *(v0[24] + 8);
  v4 = v0[24];

  return v3(v18);
}

{
  v7 = v0[54];
  v6 = v0[53];
  v1 = v0[52];
  v9 = v0[50];
  v10 = v0[49];
  v11 = v0[46];
  v8 = v0[43];
  v0[24] = v0;

  outlined destroy of [HKQuantityType](v0 + 26);
  v10(v11, v8);
  v18 = v0[61];
  v2 = v0[46];
  v12 = v0[45];
  v13 = v0[42];
  v14 = v0[41];
  v15 = v0[40];
  v16 = v0[39];
  v17 = v0[36];

  v3 = *(v0[24] + 8);
  v4 = v0[24];

  return v3(v18);
}

{
  v7 = v0[54];
  v6 = v0[53];
  v1 = v0[52];
  v9 = v0[50];
  v10 = v0[49];
  v11 = v0[46];
  v8 = v0[43];
  v0[24] = v0;

  outlined destroy of [HKQuantityType](v0 + 26);
  v10(v11, v8);
  v18 = v0[65];
  v2 = v0[46];
  v12 = v0[45];
  v13 = v0[42];
  v14 = v0[41];
  v15 = v0[40];
  v16 = v0[39];
  v17 = v0[36];

  v3 = *(v0[24] + 8);
  v4 = v0[24];

  return v3(v18);
}

{
  v7 = v0[54];
  v6 = v0[53];
  v1 = v0[52];
  v9 = v0[50];
  v10 = v0[49];
  v11 = v0[46];
  v8 = v0[43];
  v0[24] = v0;

  outlined destroy of [HKQuantityType](v0 + 26);
  v10(v11, v8);
  v18 = v0[68];
  v2 = v0[46];
  v12 = v0[45];
  v13 = v0[42];
  v14 = v0[41];
  v15 = v0[40];
  v16 = v0[39];
  v17 = v0[36];

  v3 = *(v0[24] + 8);
  v4 = v0[24];

  return v3(v18);
}

{
  v1 = v0[51];
  v29 = v0[50];
  v30 = v0[49];
  v26 = v0[48];
  v25 = v0[47];
  v27 = v0[46];
  v28 = v0[43];
  v24 = v0[36];
  v31 = v0[35];
  v33 = v0[34];
  v0[24] = v0;
  swift_willThrow();
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  v30(v27, v28);
  v2 = v1;
  v0[28] = v1;
  v32 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v31 + 16))(v24, v32, v33);
  swift_endAccess();
  v35 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v36 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v35, v34))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v20 = createStorage<A>(capacity:type:)(0);
    v21 = createStorage<A>(capacity:type:)(0);
    *(v23 + 232) = buf;
    *(v23 + 240) = v20;
    *(v23 + 248) = v21;
    serialize(_:at:)(0, (v23 + 232));
    serialize(_:at:)(0, (v23 + 232));
    *(v23 + 256) = v36;
    v22 = swift_task_alloc();
    v22[2] = v23 + 232;
    v22[3] = v23 + 240;
    v22[4] = v23 + 248;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v35, v34, "Failed fetching dose events for timeframe.", buf, 2u);
    destroyStorage<A>(_:count:)(v20, 0, v18);
    destroyStorage<A>(_:count:)(v21, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v10 = *(v23 + 408);
  v8 = *(v23 + 288);
  v9 = *(v23 + 272);
  v7 = *(v23 + 280);
  MEMORY[0x277D82BD8](v35);
  (*(v7 + 8))(v8, v9);
  type metadata accessor for LogGenericMedicationsIntentResponse();
  v17 = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  v3 = *(v23 + 368);
  v11 = *(v23 + 360);
  v12 = *(v23 + 336);
  v13 = *(v23 + 328);
  v14 = *(v23 + 320);
  v15 = *(v23 + 312);
  v16 = *(v23 + 288);

  v4 = *(*(v23 + 192) + 8);
  v5 = *(v23 + 192);

  return v4(v17);
}

uint64_t GenericMedicationsPersistor.saveWithOverride(medStatusTaken:shouldOverwriteExistingStatuses:)(uint64_t a1)
{
  v8 = *v1;
  v3 = *(*v1 + 456);
  v6 = *(*v1 + 448);
  v7 = *(*v1 + 440);
  *(v8 + 192) = *v1;
  *(v8 + 464) = a1;

  v4 = *(v8 + 192);

  return MEMORY[0x2822009F8](GenericMedicationsPersistor.saveWithOverride(medStatusTaken:shouldOverwriteExistingStatuses:), 0);
}

{
  v7 = *v1;
  v3 = *(*v1 + 480);
  v6 = *(*v1 + 472);
  *(v7 + 192) = *v1;
  *(v7 + 488) = a1;

  v4 = *(v7 + 192);

  return MEMORY[0x2822009F8](GenericMedicationsPersistor.saveWithOverride(medStatusTaken:shouldOverwriteExistingStatuses:), 0);
}

{
  v8 = *v1;
  v3 = *(*v1 + 512);
  v6 = *(*v1 + 504);
  v7 = *(*v1 + 496);
  *(v8 + 192) = *v1;
  *(v8 + 520) = a1;

  v4 = *(v8 + 192);

  return MEMORY[0x2822009F8](GenericMedicationsPersistor.saveWithOverride(medStatusTaken:shouldOverwriteExistingStatuses:), 0);
}

{
  v7 = *v1;
  v3 = *(*v1 + 536);
  v6 = *(*v1 + 528);
  *(v7 + 192) = *v1;
  *(v7 + 544) = a1;

  v4 = *(v7 + 192);

  return MEMORY[0x2822009F8](GenericMedicationsPersistor.saveWithOverride(medStatusTaken:shouldOverwriteExistingStatuses:), 0);
}

uint64_t GenericMedicationsPersistor.getDoseEventsByStatus(doseEvents:)(uint64_t a1)
{
  v39 = a1;
  v51 = 0;
  v68 = 0;
  v67 = 0;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v62[1] = 0;
  v62[0] = 0;
  v59 = 0;
  v38 = 0;
  v47 = type metadata accessor for Logger();
  v40 = v47;
  v41 = *(v47 - 8);
  v45 = v41;
  v42 = v41;
  v43 = *(v41 + 64);
  v1 = v9 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v1;
  v68 = MEMORY[0x28223BE20](v39);
  v67 = v2;
  v46 = Logger.wellnessIntents.unsafeMutableAddressor();
  v48 = &v66;
  swift_beginAccess();
  (*(v45 + 16))(v1, v46, v47);
  swift_endAccess();
  v53 = Logger.logObject.getter();
  v49 = v53;
  v52 = static os_log_type_t.debug.getter();
  v50 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v54 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v53, v52))
  {
    v3 = v38;
    v29 = static UnsafeMutablePointer.allocate(capacity:)();
    v25 = v29;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v27 = 0;
    v30 = createStorage<A>(capacity:type:)(0);
    v28 = v30;
    v31 = createStorage<A>(capacity:type:)(v27);
    v58[0] = v29;
    v57 = v30;
    v56 = v31;
    v32 = 0;
    v33 = v58;
    serialize(_:at:)(0, v58);
    serialize(_:at:)(v32, v33);
    v55 = v54;
    v34 = v9;
    MEMORY[0x28223BE20](v9);
    v35 = &v9[-6];
    v9[-4] = v4;
    v9[-3] = &v57;
    v9[-2] = &v56;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v37 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_269912000, v49, v50, "getting doseEvents by status", v25, 2u);
      v23 = 0;
      destroyStorage<A>(_:count:)(v28, 0, v26);
      destroyStorage<A>(_:count:)(v31, v23, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v25, MEMORY[0x277D84B78]);

      v24 = v37;
    }
  }

  else
  {

    v24 = v38;
  }

  v21 = v24;

  (*(v42 + 8))(v44, v40);
  v17 = 0;
  v18 = type metadata accessor for HKMedicationExposableDoseEvent();
  v65 = _allocateUninitializedArray<A>(_:)();
  v64 = _allocateUninitializedArray<A>(_:)();
  v63 = _allocateUninitializedArray<A>(_:)();

  v61 = v39;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  v19 = v20;
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  Collection<>.makeIterator()();
  for (i = v21; ; i = v11)
  {
    v15 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
    IndexingIterator.next()();
    v16 = v60;
    if (!v60)
    {
      break;
    }

    v14 = v16;
    v12 = v16;
    v59 = v16;
    v13 = [v16 status];
    if (v13 == 4)
    {
      v5 = v12;
      v58[1] = v12;
      Array.append(_:)();
    }

    else
    {
      if (v13 == 5)
      {
        v6 = v12;
        v58[2] = v12;
      }

      else
      {
        v7 = v12;
        v58[3] = v12;
      }

      Array.append(_:)();
    }

    v11 = v15;
  }

  outlined destroy of [HKQuantityType](v62);
  v10 = v65;

  v9[1] = v64;

  v9[2] = v63;

  outlined destroy of [HKQuantityType](&v63);
  outlined destroy of [HKQuantityType](&v64);
  outlined destroy of [HKQuantityType](&v65);
  return v10;
}

uint64_t GenericMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 528) = v3;
  *(v4 + 745) = a3 & 1;
  *(v4 + 520) = a2;
  *(v4 + 512) = a1;
  *(v4 + 288) = v4;
  *(v4 + 296) = 0;
  *(v4 + 304) = 0;
  *(v4 + 744) = 0;
  *(v4 + 312) = 0;
  *(v4 + 320) = 0;
  *(v4 + 328) = 0;
  *(v4 + 336) = 0;
  *(v4 + 344) = 0;
  *(v4 + 272) = 0;
  *(v4 + 280) = 0;
  *(v4 + 368) = 0;
  *(v4 + 408) = 0;
  *(v4 + 416) = 0;
  *(v4 + 424) = 0;
  *(v4 + 432) = 0;
  *(v4 + 448) = 0;
  *(v4 + 464) = 0;
  v5 = type metadata accessor for Date();
  *(v4 + 536) = v5;
  v9 = *(v5 - 8);
  *(v4 + 544) = v9;
  v10 = *(v9 + 64);
  *(v4 + 552) = swift_task_alloc();
  *(v4 + 560) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 568) = v6;
  v11 = *(v6 - 8);
  *(v4 + 576) = v11;
  v12 = *(v11 + 64);
  *(v4 + 584) = swift_task_alloc();
  *(v4 + 592) = swift_task_alloc();
  *(v4 + 296) = a1;
  *(v4 + 304) = a2;
  *(v4 + 744) = a3 & 1;
  *(v4 + 312) = v3;
  v7 = *(v4 + 288);

  return MEMORY[0x2822009F8](GenericMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:), 0);
}

uint64_t GenericMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:)()
{
  v1 = v0[74];
  v40 = v0[72];
  v42 = v0[71];
  v0[36] = v0;
  v41 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *(v40 + 16);
  v0[75] = v2;
  v0[76] = (v40 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v2(v1, v41, v42);
  swift_endAccess();
  v44 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  v0[77] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v45 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v44, v43))
  {
    v35 = static UnsafeMutablePointer.allocate(capacity:)();
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v36 = createStorage<A>(capacity:type:)(0);
    v37 = createStorage<A>(capacity:type:)(0);
    *(v39 + 480) = v35;
    *(v39 + 488) = v36;
    *(v39 + 496) = v37;
    serialize(_:at:)(0, (v39 + 480));
    serialize(_:at:)(0, (v39 + 480));
    *(v39 + 504) = v45;
    v38 = swift_task_alloc();
    v38[2] = v39 + 480;
    v38[3] = v39 + 488;
    v38[4] = v39 + 496;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v44, v43, "Starting to write dose event", v35, 2u);
    destroyStorage<A>(_:count:)(v36, 0, v34);
    destroyStorage<A>(_:count:)(v37, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v35, MEMORY[0x277D84B78]);
  }

  v31 = *(v39 + 592);
  v32 = *(v39 + 568);
  v33 = *(v39 + 745);
  v30 = *(v39 + 576);
  MEMORY[0x277D82BD8](v44);
  v3 = *(v30 + 8);
  *(v39 + 624) = v3;
  *(v39 + 632) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v31, v32);
  if (v33)
  {
    v29 = 4;
  }

  else
  {
    v29 = 5;
  }

  *(v39 + 640) = v29;
  v26 = *(v39 + 560);
  v27 = *(v39 + 520);
  *(v39 + 320) = v29;
  *(v39 + 648) = type metadata accessor for HKMedicationExposableDoseEvent();
  *(v39 + 328) = _allocateUninitializedArray<A>(_:)();
  *(v39 + 656) = type metadata accessor for MatchedMedName();
  *(v39 + 336) = _allocateUninitializedArray<A>(_:)();
  *(v39 + 344) = _allocateUninitializedArray<A>(_:)();
  Date.init()();

  *(v39 + 352) = v27;
  *(v39 + 664) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  Collection<>.makeIterator()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
  IndexingIterator.next()();
  v28 = *(v39 + 360);
  *(v39 + 672) = v28;
  if (v28)
  {
    v20 = *(v39 + 664);
    v4 = *(v39 + 640);
    v16 = *(v39 + 560);
    v5 = *(v39 + 552);
    v17 = *(v39 + 536);
    v21 = *(v39 + 528);
    v15 = *(v39 + 544);
    *(v39 + 416) = v28;
    v18 = [v28 updateForNewStatus_];
    *(v39 + 680) = v18;
    *(v39 + 424) = v18;
    (*(v15 + 16))(v5, v16, v17);
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v15 + 8))(v5, v17);
    v25 = [v18 updateForNewStartDate_];
    *(v39 + 688) = v25;
    MEMORY[0x277D82BD8](isa);
    *(v39 + 432) = v25;
    MEMORY[0x277D82BE0](v25);
    *(v39 + 440) = v25;
    Array.append(_:)();
    outlined init with copy of QuantityPersisting(v21 + 16, v39 + 144);
    v22 = *(v39 + 168);
    v23 = *(v39 + 176);
    __swift_project_boxed_opaque_existential_1((v39 + 144), v22);
    v24 = (*(v23 + 24) + **(v23 + 24));
    v6 = *(*(v23 + 24) + 4);
    v7 = swift_task_alloc();
    *(v39 + 696) = v7;
    *v7 = *(v39 + 288);
    v7[1] = GenericMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:);

    return v24(v25, 1, v22, v23);
  }

  else
  {
    v9 = *(v39 + 648);
    v14 = *(v39 + 512);
    outlined destroy of [HKQuantityType]((v39 + 272));
    v10 = *(v39 + 328);

    v13 = Array._bridgeToObjectiveC()().super.isa;
    *(v39 + 728) = v13;

    *(v39 + 16) = *(v39 + 288);
    *(v39 + 56) = v11;
    *(v39 + 24) = GenericMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:);
    v12 = swift_continuation_init();
    *(v39 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    *(v39 + 112) = v12;
    *(v39 + 80) = MEMORY[0x277D85DD0];
    *(v39 + 88) = 1107296256;
    *(v39 + 92) = 0;
    *(v39 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type () zero on error;
    *(v39 + 104) = &block_descriptor_151;
    [v14 writeDoseEvents:v13 completion:?];

    return MEMORY[0x282200938](v39 + 16);
  }
}

{
  v1 = *(v0 + 704);
  *(v0 + 288) = v0;
  if (v1)
  {
    v9 = v10[88];
    v10[58] = v9;
    __swift_destroy_boxed_opaque_existential_1(v10 + 18);
    MEMORY[0x277D82BE0](v9);
    v10[59] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriWellnessIntents14MatchedMedNameCGMd, &_sSay19SiriWellnessIntents14MatchedMedNameCGMR);
    Array.append(_:)();
    MEMORY[0x277D82BD8](v9);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v10 + 18);
  }

  v8 = v10[84];
  outlined init with copy of QuantityPersisting(v10[66] + 16, (v10 + 23));
  v5 = v10[26];
  v6 = v10[27];
  __swift_project_boxed_opaque_existential_1(v10 + 23, v5);
  v7 = (*(v6 + 24) + **(v6 + 24));
  v2 = *(*(v6 + 24) + 4);
  v3 = swift_task_alloc();
  v10[89] = v3;
  *v3 = v10[36];
  v3[1] = GenericMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:);

  return v7(v8, 1, v5, v6);
}

{
  v1 = *(v0 + 720);
  *(v0 + 288) = v0;
  if (v1)
  {
    v15 = *(v28 + 720);
    *(v28 + 448) = v15;
    __swift_destroy_boxed_opaque_existential_1((v28 + 184));
    MEMORY[0x277D82BE0](v15);
    *(v28 + 456) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriWellnessIntents14MatchedMedNameCGMd, &_sSay19SiriWellnessIntents14MatchedMedNameCGMR);
    Array.append(_:)();
    MEMORY[0x277D82BD8](v15);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v28 + 184));
  }

  v13 = *(v28 + 680);
  v14 = *(v28 + 672);
  MEMORY[0x277D82BD8](*(v28 + 688));
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
  IndexingIterator.next()();
  v16 = *(v28 + 360);
  *(v28 + 672) = v16;
  if (v16)
  {
    v22 = *(v28 + 664);
    v2 = *(v28 + 640);
    v18 = *(v28 + 560);
    v3 = *(v28 + 552);
    v19 = *(v28 + 536);
    v23 = *(v28 + 528);
    v17 = *(v28 + 544);
    *(v28 + 416) = v16;
    v20 = [v16 updateForNewStatus_];
    *(v28 + 680) = v20;
    *(v28 + 424) = v20;
    (*(v17 + 16))(v3, v18, v19);
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v17 + 8))(v3, v19);
    v27 = [v20 updateForNewStartDate_];
    *(v28 + 688) = v27;
    MEMORY[0x277D82BD8](isa);
    *(v28 + 432) = v27;
    MEMORY[0x277D82BE0](v27);
    *(v28 + 440) = v27;
    Array.append(_:)();
    outlined init with copy of QuantityPersisting(v23 + 16, v28 + 144);
    v24 = *(v28 + 168);
    v25 = *(v28 + 176);
    __swift_project_boxed_opaque_existential_1((v28 + 144), v24);
    v26 = (*(v25 + 24) + **(v25 + 24));
    v4 = *(*(v25 + 24) + 4);
    v5 = swift_task_alloc();
    *(v28 + 696) = v5;
    *v5 = *(v28 + 288);
    v5[1] = GenericMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:);

    return v26(v27, 1, v24, v25);
  }

  else
  {
    v7 = *(v28 + 648);
    v12 = *(v28 + 512);
    outlined destroy of [HKQuantityType]((v28 + 272));
    v8 = *(v28 + 328);

    v11 = Array._bridgeToObjectiveC()().super.isa;
    *(v28 + 728) = v11;

    *(v28 + 16) = *(v28 + 288);
    *(v28 + 56) = v9;
    *(v28 + 24) = GenericMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:);
    v10 = swift_continuation_init();
    *(v28 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    *(v28 + 112) = v10;
    *(v28 + 80) = MEMORY[0x277D85DD0];
    *(v28 + 88) = 1107296256;
    *(v28 + 92) = 0;
    *(v28 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type () zero on error;
    *(v28 + 104) = &block_descriptor_151;
    [v12 writeDoseEvents:v11 completion:?];

    return MEMORY[0x282200938](v28 + 16);
  }
}

{
  v7 = *v0;
  v8 = *v0;
  v6 = (v8 + 288);
  *(v8 + 288) = *v0;
  v1 = *(v7 + 48);
  *(v8 + 736) = v1;
  if (v1)
  {
    v4 = *v6;
    v3 = GenericMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:);
  }

  else
  {
    v2 = *v6;
    v3 = GenericMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v1 = v0[91];
  v8 = v0[82];
  v12 = v0[70];
  v11 = v0[68];
  v13 = v0[67];
  v0[36] = v0;
  MEMORY[0x277D82BD8](v1);
  type metadata accessor for LogGenericMedicationsIntentResponse();
  v17 = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(4, 0);
  MEMORY[0x277D82BE0](v17);
  v0[51] = v17;
  v6 = v0[42];

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v17 setMatchingMeds_];
  MEMORY[0x277D82BD8](isa);
  v9 = v0[43];

  v10 = Array._bridgeToObjectiveC()().super.isa;

  [v17 setMatchingMedsBeforeUpdate_];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v0[51]);
  (*(v11 + 8))(v12, v13);
  outlined destroy of [HKQuantityType](v0 + 43);
  outlined destroy of [HKQuantityType](v0 + 42);
  outlined destroy of [HKQuantityType](v0 + 41);
  v2 = v0[74];
  v14 = v0[73];
  v15 = v0[70];
  v16 = v0[69];

  v3 = *(v0[36] + 8);
  v4 = v0[36];

  return v3(v17);
}

{
  v1 = v0[92];
  v26 = v0[91];
  v31 = v0[77];
  v29 = v0[76];
  v30 = v0[75];
  v25 = v0[73];
  v28 = v0[71];
  v0[36] = v0;
  swift_willThrow();
  MEMORY[0x277D82BD8](v26);
  v2 = v1;
  v0[46] = v1;
  v27 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v30(v25, v27, v28);
  swift_endAccess();
  v33 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  v34 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v33, v32))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v21 = createStorage<A>(capacity:type:)(0);
    v22 = createStorage<A>(capacity:type:)(0);
    *(v24 + 376) = buf;
    *(v24 + 384) = v21;
    *(v24 + 392) = v22;
    serialize(_:at:)(0, (v24 + 376));
    serialize(_:at:)(0, (v24 + 376));
    *(v24 + 400) = v34;
    v23 = swift_task_alloc();
    v23[2] = v24 + 376;
    v23[3] = v24 + 384;
    v23[4] = v24 + 392;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v33, v32, "Failed writing updated dose events for specific meds.", buf, 2u);
    destroyStorage<A>(_:count:)(v21, 0, v19);
    destroyStorage<A>(_:count:)(v22, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v11 = *(v24 + 736);
  v9 = *(v24 + 632);
  v10 = *(v24 + 624);
  v7 = *(v24 + 584);
  v8 = *(v24 + 568);
  v13 = *(v24 + 560);
  v14 = *(v24 + 536);
  v12 = *(v24 + 544);
  MEMORY[0x277D82BD8](v33);
  v10(v7, v8);
  type metadata accessor for LogGenericMedicationsIntentResponse();
  v18 = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  (*(v12 + 8))(v13, v14);
  outlined destroy of [HKQuantityType]((v24 + 344));
  outlined destroy of [HKQuantityType]((v24 + 336));
  outlined destroy of [HKQuantityType]((v24 + 328));
  v3 = *(v24 + 592);
  v15 = *(v24 + 584);
  v16 = *(v24 + 560);
  v17 = *(v24 + 552);

  v4 = *(*(v24 + 288) + 8);
  v5 = *(v24 + 288);

  return v4(v18);
}

uint64_t GenericMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:)(uint64_t a1)
{
  v6 = *v1;
  v3 = *(*v1 + 696);
  *(v6 + 288) = *v1;
  *(v6 + 704) = a1;

  v4 = *(v6 + 288);

  return MEMORY[0x2822009F8](GenericMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:), 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 712);
  *(v6 + 288) = *v1;
  *(v6 + 720) = a1;

  v4 = *(v6 + 288);

  return MEMORY[0x2822009F8](GenericMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:), 0);
}

uint64_t GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:)(char a1, char a2, char a3)
{
  *(v4 + 1176) = v3;
  *(v4 + 1731) = a3 & 1;
  *(v4 + 1730) = a2 & 1;
  *(v4 + 1729) = a1 & 1;
  *(v4 + 584) = v4;
  *(v4 + 1728) = 0;
  *(v4 + 1736) = 0;
  *(v4 + 1744) = 0;
  *(v4 + 592) = 0;
  *(v4 + 600) = 0;
  *(v4 + 616) = 0;
  *(v4 + 656) = 0;
  *(v4 + 672) = 0;
  *(v4 + 680) = 0;
  *(v4 + 552) = 0;
  *(v4 + 560) = 0;
  *(v4 + 704) = 0;
  *(v4 + 744) = 0;
  *(v4 + 792) = 0;
  *(v4 + 800) = 0;
  *(v4 + 568) = 0;
  *(v4 + 576) = 0;
  *(v4 + 824) = 0;
  *(v4 + 864) = 0;
  *(v4 + 1056) = 0;
  *(v4 + 1064) = 0;
  *(v4 + 1104) = 0;
  v5 = type metadata accessor for Logger();
  *(v4 + 1184) = v5;
  v10 = *(v5 - 8);
  *(v4 + 1192) = v10;
  v11 = *(v10 + 64);
  *(v4 + 1200) = swift_task_alloc();
  *(v4 + 1208) = swift_task_alloc();
  *(v4 + 1216) = swift_task_alloc();
  *(v4 + 1224) = swift_task_alloc();
  *(v4 + 1232) = swift_task_alloc();
  *(v4 + 1240) = swift_task_alloc();
  *(v4 + 1248) = swift_task_alloc();
  *(v4 + 1256) = swift_task_alloc();
  *(v4 + 1264) = swift_task_alloc();
  *(v4 + 1272) = swift_task_alloc();
  *(v4 + 1280) = swift_task_alloc();
  *(v4 + 1288) = swift_task_alloc();
  v6 = type metadata accessor for Date();
  *(v4 + 1296) = v6;
  v12 = *(v6 - 8);
  *(v4 + 1304) = v12;
  v13 = *(v12 + 64);
  *(v4 + 1312) = swift_task_alloc();
  *(v4 + 1320) = swift_task_alloc();
  *(v4 + 1328) = swift_task_alloc();
  *(v4 + 1336) = swift_task_alloc();
  v7 = type metadata accessor for DateInterval();
  *(v4 + 1344) = v7;
  v14 = *(v7 - 8);
  *(v4 + 1352) = v14;
  v15 = *(v14 + 64);
  *(v4 + 1360) = swift_task_alloc();
  *(v4 + 1368) = swift_task_alloc();
  *(v4 + 1728) = a1 & 1;
  *(v4 + 1736) = a2 & 1;
  *(v4 + 1744) = a3 & 1;
  *(v4 + 592) = v3;
  v8 = *(v4 + 584);

  return MEMORY[0x2822009F8](GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:), 0);
}

uint64_t GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:)()
{
  v11 = *(v0 + 1368);
  v14 = *(v0 + 1360);
  v12 = *(v0 + 1352);
  v13 = *(v0 + 1344);
  v4 = *(v0 + 1336);
  v8 = *(v0 + 1328);
  v5 = *(v0 + 1320);
  v9 = *(v0 + 1312);
  v3 = *(v0 + 1304);
  v6 = *(v0 + 1296);
  v10 = *(v0 + 1176);
  *(v0 + 584) = v0;
  Date.init()();
  Date.startOfDay.getter(v8);
  v7 = *(v3 + 8);
  v7(v4, v6);
  Date.init()();
  Date.endOfDay.getter(v9);
  v7(v5, v6);
  DateInterval.init(start:end:)();
  v17 = *(v10 + 8);
  *(v0 + 1376) = v17;
  MEMORY[0x277D82BE0](v17);
  (*(v12 + 16))(v14, v11, v13);
  isa = DateInterval._bridgeToObjectiveC()().super.isa;
  *(v0 + 1384) = isa;
  v1 = *(v12 + 8);
  *(v0 + 1392) = v1;
  *(v0 + 1400) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v1(v14, v13);
  *(v0 + 16) = *(v0 + 584);
  *(v0 + 56) = v0 + 608;
  *(v0 + 24) = GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:);
  v15 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySo30HKMedicationExposableDoseEventCGs5Error_pGMd, &_sSccySaySo30HKMedicationExposableDoseEventCGs5Error_pGMR);
  *(v0 + 112) = v15;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 92) = 0;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [HKMedicationExposableDoseEvent];
  *(v0 + 104) = &block_descriptor_158;
  [v17 doseEventsForDateInterval:isa medicationIdentifier:0 completion:?];

  return MEMORY[0x282200938](v0 + 16);
}

{
  v7 = *v0;
  v8 = *v0;
  v6 = (v8 + 584);
  *(v8 + 584) = *v0;
  v1 = *(v7 + 48);
  *(v8 + 1408) = v1;
  if (v1)
  {
    v4 = *v6;
    v3 = GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:);
  }

  else
  {
    v2 = *v6;
    v3 = GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v110 = v0[173];
  v109 = v0[172];
  v0[73] = v0;
  v111 = v0[76];

  v0[75] = v111;
  MEMORY[0x277D82BD8](v109);
  MEMORY[0x277D82BD8](v110);
  v112 = filterUniqueDoseEvents(doseEvents:)(v111);

  v1 = v0[75];
  v0[75] = v112;

  v2 = type metadata accessor for HKMedicationExposableDoseEvent();
  v113 = MEMORY[0x26D6494A0](v112, v2);

  if (!v113)
  {
    v3 = *(v108 + 1288);
    v104 = *(v108 + 1184);
    v102 = *(v108 + 1192);
    v103 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v102 + 16))(v3, v103, v104);
    swift_endAccess();
    v106 = Logger.logObject.getter();
    v105 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v107 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v106, v105))
    {
      v98 = static UnsafeMutablePointer.allocate(capacity:)();
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v99 = createStorage<A>(capacity:type:)(0);
      v100 = createStorage<A>(capacity:type:)(0);
      *(v108 + 1144) = v98;
      *(v108 + 1152) = v99;
      *(v108 + 1160) = v100;
      serialize(_:at:)(0, (v108 + 1144));
      serialize(_:at:)(0, (v108 + 1144));
      *(v108 + 1168) = v107;
      v101 = swift_task_alloc();
      v101[2] = v108 + 1144;
      v101[3] = v108 + 1152;
      v101[4] = v108 + 1160;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v106, v105, "No medications found for today.", v98, 2u);
      destroyStorage<A>(_:count:)(v99, 0, v97);
      destroyStorage<A>(_:count:)(v100, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v98, MEMORY[0x277D84B78]);
    }

    v92 = *(v108 + 1400);
    v93 = *(v108 + 1392);
    v94 = *(v108 + 1368);
    v91 = *(v108 + 1344);
    v89 = *(v108 + 1288);
    v90 = *(v108 + 1184);
    v88 = *(v108 + 1192);
    MEMORY[0x277D82BD8](v106);
    (*(v88 + 8))(v89, v90);
    type metadata accessor for LogGenericMedicationsIntentResponse();
    v95 = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(104, 0);
    outlined destroy of [HKQuantityType]((v108 + 600));
    v93(v94, v91);
    v96 = v95;
LABEL_20:
    v14 = *(v108 + 1368);
    v17 = *(v108 + 1360);
    v18 = *(v108 + 1336);
    v19 = *(v108 + 1328);
    v20 = *(v108 + 1320);
    v21 = *(v108 + 1312);
    v22 = *(v108 + 1288);
    v23 = *(v108 + 1280);
    v24 = *(v108 + 1272);
    v25 = *(v108 + 1264);
    v26 = *(v108 + 1256);
    v27 = *(v108 + 1248);
    v28 = *(v108 + 1240);
    v29 = *(v108 + 1232);
    v30 = *(v108 + 1224);
    v31 = *(v108 + 1216);
    v32 = *(v108 + 1208);
    v33 = *(v108 + 1200);

    v15 = *(*(v108 + 584) + 8);
    v16 = *(v108 + 584);

    return v15(v96);
  }

  if (v113 == 1)
  {
    v4 = *(v108 + 1280);
    v83 = *(v108 + 1184);
    v81 = *(v108 + 1192);
    v82 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v84 = *(v81 + 16);
    *(v108 + 1416) = v84;
    *(v108 + 1424) = (v81 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v84(v4, v82, v83);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v85 = static os_log_type_t.debug.getter();
    *(v108 + 1432) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v87 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v85))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v78 = createStorage<A>(capacity:type:)(0);
      v79 = createStorage<A>(capacity:type:)(0);
      *(v108 + 1112) = buf;
      *(v108 + 1120) = v78;
      *(v108 + 1128) = v79;
      serialize(_:at:)(0, (v108 + 1112));
      serialize(_:at:)(0, (v108 + 1112));
      *(v108 + 1136) = v87;
      v80 = swift_task_alloc();
      v80[2] = v108 + 1112;
      v80[3] = v108 + 1120;
      v80[4] = v108 + 1128;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, oslog, v85, "One dose event found for today, treat like a specific meds request.", buf, 2u);
      destroyStorage<A>(_:count:)(v78, 0, v76);
      destroyStorage<A>(_:count:)(v79, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    *(v108 + 1440) = 0;
    v71 = *(v108 + 1280);
    v72 = *(v108 + 1184);
    v70 = *(v108 + 1192);
    MEMORY[0x277D82BD8](oslog);
    v73 = *(v70 + 8);
    *(v108 + 1448) = v73;
    *(v108 + 1456) = (v70 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v73(v71, v72);
    v74 = *(v108 + 600);

    *(v108 + 1008) = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
    Collection.first.getter();
    v75 = *(v108 + 1016);
    *(v108 + 1464) = v75;
    if (!v75)
    {
      v8 = *(v108 + 1264);
      v62 = *(v108 + 1184);

      v61 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v84(v8, v61, v62);
      swift_endAccess();
      log = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();
      v65 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(log, v63))
      {
        v57 = static UnsafeMutablePointer.allocate(capacity:)();
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v58 = createStorage<A>(capacity:type:)(0);
        v59 = createStorage<A>(capacity:type:)(0);
        *(v108 + 1024) = v57;
        *(v108 + 1032) = v58;
        *(v108 + 1040) = v59;
        serialize(_:at:)(0, (v108 + 1024));
        serialize(_:at:)(0, (v108 + 1024));
        *(v108 + 1048) = v65;
        v60 = swift_task_alloc();
        v60[2] = v108 + 1024;
        v60[3] = v108 + 1032;
        v60[4] = v108 + 1040;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_269912000, log, v63, "Supposed to be one dose event in doseEvents, but unable to unpack it - returning .failure", v57, 2u);
        destroyStorage<A>(_:count:)(v58, 0, v56);
        destroyStorage<A>(_:count:)(v59, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v57, MEMORY[0x277D84B78]);
      }

      v52 = *(v108 + 1400);
      v53 = *(v108 + 1392);
      v54 = *(v108 + 1368);
      v51 = *(v108 + 1344);
      v49 = *(v108 + 1264);
      v50 = *(v108 + 1184);
      MEMORY[0x277D82BD8](log);
      v73(v49, v50);
      type metadata accessor for LogGenericMedicationsIntentResponse();
      v55 = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);
      outlined destroy of [HKQuantityType]((v108 + 600));
      v53(v54, v51);
      v96 = v55;
      goto LABEL_20;
    }

    v66 = *(v108 + 1176);
    *(v108 + 1056) = v75;

    *(v108 + 1472) = type metadata accessor for LogGenericMedicationsIntentResponse();
    *(v108 + 1064) = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(106, 0);
    outlined init with copy of QuantityPersisting(v66 + 16, v108 + 224);
    v67 = *(v108 + 248);
    v68 = *(v108 + 256);
    __swift_project_boxed_opaque_existential_1((v108 + 224), v67);
    v69 = (*(v68 + 24) + **(v68 + 24));
    v5 = *(*(v68 + 24) + 4);
    v6 = swift_task_alloc();
    *(v108 + 1480) = v6;
    *v6 = *(v108 + 584);
    v6[1] = GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:);

    return v69(v75, 1, v67, v68);
  }

  else
  {
    v9 = *(v108 + 1256);
    v45 = *(v108 + 1184);
    v43 = *(v108 + 1192);
    v44 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v10 = *(v43 + 16);
    *(v108 + 1496) = v10;
    *(v108 + 1504) = (v43 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v9, v44, v45);
    swift_endAccess();
    v47 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    *(v108 + 1512) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v48 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v47, v46))
    {
      v39 = static UnsafeMutablePointer.allocate(capacity:)();
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v40 = createStorage<A>(capacity:type:)(0);
      v41 = createStorage<A>(capacity:type:)(0);
      *(v108 + 976) = v39;
      *(v108 + 984) = v40;
      *(v108 + 992) = v41;
      serialize(_:at:)(0, (v108 + 976));
      serialize(_:at:)(0, (v108 + 976));
      *(v108 + 1000) = v48;
      v42 = swift_task_alloc();
      v42[2] = v108 + 976;
      v42[3] = v108 + 984;
      v42[4] = v108 + 992;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v47, v46, "Multiple dose events found for today, proceed with generic meds request.", v39, 2u);
      destroyStorage<A>(_:count:)(v40, 0, v38);
      destroyStorage<A>(_:count:)(v41, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v39, MEMORY[0x277D84B78]);
    }

    *(v108 + 1520) = 0;
    v35 = *(v108 + 1256);
    v36 = *(v108 + 1184);
    v34 = *(v108 + 1192);
    MEMORY[0x277D82BD8](v47);
    v11 = *(v34 + 8);
    *(v108 + 1528) = v11;
    *(v108 + 1536) = (v34 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v35, v36);
    v37 = *(v108 + 600);
    *(v108 + 1544) = v37;

    v12 = swift_task_alloc();
    *(v108 + 1552) = v12;
    *v12 = *(v108 + 584);
    v12[1] = GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:);
    v13 = *(v108 + 1176);

    return GenericMedicationsPersistor.numMedInAppToday(doseEvents:)(v37);
  }
}

{
  v1 = *(v0 + 1488);
  *(v0 + 584) = v0;
  if (v1)
  {
    v52 = *(v60 + 1488);
    v55 = *(v60 + 1400);
    v56 = *(v60 + 1392);
    v57 = *(v60 + 1368);
    v54 = *(v60 + 1344);
    v53 = *(v60 + 1464);
    *(v60 + 1104) = v52;
    __swift_destroy_boxed_opaque_existential_1((v60 + 224));
    v58 = *(v60 + 1064);
    MEMORY[0x277D82BE0](v58);
    type metadata accessor for MatchedMedName();
    _allocateUninitializedArray<A>(_:)();
    v50 = v2;
    MEMORY[0x277D82BE0](v52);
    *v50 = v52;
    _finalizeUninitializedArray<A>(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v58 setMatchingMeds_];
    MEMORY[0x277D82BD8](isa);
    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](*(v60 + 1064));
    MEMORY[0x277D82BD8](v53);
    outlined destroy of [HKQuantityType]((v60 + 600));
    v56(v57, v54);
    v59 = v58;
  }

  else
  {
    v46 = *(v60 + 1432);
    v44 = *(v60 + 1424);
    v45 = *(v60 + 1416);
    v3 = *(v60 + 1272);
    v43 = *(v60 + 1184);
    __swift_destroy_boxed_opaque_existential_1((v60 + 224));
    v42 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v45(v3, v42, v43);
    swift_endAccess();
    v48 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    v49 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v48, v47))
    {
      v4 = *(v60 + 1440);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v39 = createStorage<A>(capacity:type:)(0);
      v40 = createStorage<A>(capacity:type:)(0);
      *(v60 + 1072) = buf;
      *(v60 + 1080) = v39;
      *(v60 + 1088) = v40;
      serialize(_:at:)(0, (v60 + 1072));
      serialize(_:at:)(0, (v60 + 1072));
      *(v60 + 1096) = v49;
      v41 = swift_task_alloc();
      v41[2] = v60 + 1072;
      v41[3] = v60 + 1080;
      v41[4] = v60 + 1088;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v4)
      {
      }

      _os_log_impl(&dword_269912000, v48, v47, "GenericMedicationsPersistor: attempt to buildMatchedMed failed, returning .failure.", buf, 2u);
      destroyStorage<A>(_:count:)(v39, 0, v37);
      destroyStorage<A>(_:count:)(v40, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v6 = *(v60 + 1472);
    v29 = *(v60 + 1456);
    v30 = *(v60 + 1448);
    v33 = *(v60 + 1400);
    v34 = *(v60 + 1392);
    v35 = *(v60 + 1368);
    v32 = *(v60 + 1344);
    v27 = *(v60 + 1272);
    v28 = *(v60 + 1184);
    v31 = *(v60 + 1464);
    MEMORY[0x277D82BD8](v48);
    v30(v27, v28);
    v36 = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    MEMORY[0x277D82BD8](*(v60 + 1064));
    MEMORY[0x277D82BD8](v31);
    outlined destroy of [HKQuantityType]((v60 + 600));
    v34(v35, v32);
    v59 = v36;
  }

  v7 = *(v60 + 1368);
  v10 = *(v60 + 1360);
  v11 = *(v60 + 1336);
  v12 = *(v60 + 1328);
  v13 = *(v60 + 1320);
  v14 = *(v60 + 1312);
  v15 = *(v60 + 1288);
  v16 = *(v60 + 1280);
  v17 = *(v60 + 1272);
  v18 = *(v60 + 1264);
  v19 = *(v60 + 1256);
  v20 = *(v60 + 1248);
  v21 = *(v60 + 1240);
  v22 = *(v60 + 1232);
  v23 = *(v60 + 1224);
  v24 = *(v60 + 1216);
  v25 = *(v60 + 1208);
  v26 = *(v60 + 1200);

  v8 = *(*(v60 + 584) + 8);
  v9 = *(v60 + 584);

  return v8(v59);
}

{
  v1 = *(v0 + 1560);
  v2 = *(v0 + 1729);
  *(v0 + 584) = v0;
  *(v0 + 656) = v1;
  if ((v2 & 1) != 0 || *(v167 + 1560) <= 1)
  {
    if ((*(v167 + 1731) & 1) == 0)
    {
      v143 = *(v167 + 600);
      *(v167 + 1568) = v143;

      v5 = swift_task_alloc();
      *(v167 + 1576) = v5;
      *v5 = *(v167 + 584);
      v5[1] = GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:);
      v6 = *(v167 + 1176);

      return GenericMedicationsPersistor.getConfirmationLogAsScheduled(doseEvents:)(v143);
    }

    doseEvents._rawValue = *(v167 + 600);

    v142 = allDoseEventsAreUnlogged(doseEvents:)(doseEvents);

    if (v142)
    {
      v137 = *(v167 + 1512);
      v135 = *(v167 + 1504);
      v136 = *(v167 + 1496);
      v8 = *(v167 + 1240);
      v134 = *(v167 + 1184);
      v133 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v136(v8, v133, v134);
      swift_endAccess();
      oslog = Logger.logObject.getter();
      v138 = static os_log_type_t.debug.getter();
      v140 = _allocateUninitializedArray<A>(_:)();
      if (!os_log_type_enabled(oslog, v138))
      {

        goto LABEL_21;
      }

      v9 = *(v167 + 1520);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v130 = createStorage<A>(capacity:type:)(0);
      v131 = createStorage<A>(capacity:type:)(0);
      *(v167 + 912) = buf;
      *(v167 + 920) = v130;
      *(v167 + 928) = v131;
      serialize(_:at:)(0, (v167 + 912));
      serialize(_:at:)(0, (v167 + 912));
      *(v167 + 936) = v140;
      v132 = swift_task_alloc();
      v132[2] = v167 + 912;
      v132[3] = v167 + 920;
      v132[4] = v167 + 928;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (!v9)
      {

        _os_log_impl(&dword_269912000, oslog, v138, "All dose events for day are unlogged, continuing to write", buf, 2u);
        destroyStorage<A>(_:count:)(v130, 0, v128);
        destroyStorage<A>(_:count:)(v131, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

LABEL_21:
        v126 = *(v167 + 1536);
        v127 = *(v167 + 1528);
        v124 = *(v167 + 1240);
        v125 = *(v167 + 1184);
        MEMORY[0x277D82BD8](oslog);
        v127(v124, v125);
LABEL_46:
        v51 = *(*(v167 + 1176) + 8);
        *(v167 + 1696) = v51;
        MEMORY[0x277D82BE0](v51);
        v50 = *(v167 + 600);
        *(v167 + 1704) = v50;

        v27 = swift_task_alloc();
        *(v167 + 1712) = v27;
        *v27 = *(v167 + 584);
        v27[1] = GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:);
        v28 = *(v167 + 1176);
        v29 = *(v167 + 1730) & 1;

        return GenericMedicationsPersistor.writeDoseEvent(medicationController:doseEvents:medStatusTaken:)(v51, v50, v29);
      }
    }

    v122._rawValue = *(v167 + 600);

    v123 = allLoggedWithMixedStatus(doseEvents:)(v122);

    if (v123 || (v119 = *(v167 + 1730), v120._rawValue = *(v167 + 600), , v121 = oneExistingStatusWithConflictingRequest(doseEvents:requestedStatus:)(v120, v119 & 1), , v121))
    {
      v115 = *(v167 + 1512);
      v113 = *(v167 + 1504);
      v114 = *(v167 + 1496);
      v10 = *(v167 + 1232);
      v112 = *(v167 + 1184);
      v111 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v114(v10, v111, v112);
      swift_endAccess();
      log = Logger.logObject.getter();
      v116 = static os_log_type_t.debug.getter();
      v118 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(log, v116))
      {
        v11 = *(v167 + 1520);
        v107 = static UnsafeMutablePointer.allocate(capacity:)();
        v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v108 = createStorage<A>(capacity:type:)(0);
        v109 = createStorage<A>(capacity:type:)(0);
        *(v167 + 880) = v107;
        *(v167 + 888) = v108;
        *(v167 + 896) = v109;
        serialize(_:at:)(0, (v167 + 880));
        serialize(_:at:)(0, (v167 + 880));
        *(v167 + 904) = v118;
        v110 = swift_task_alloc();
        v110[2] = v167 + 880;
        v110[3] = v167 + 888;
        v110[4] = v167 + 896;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        if (v11)
        {
        }

        _os_log_impl(&dword_269912000, log, v116, "Calling either allLoggedWithMixedStatus or oneExistingStatusWithConflictingRequest", v107, 2u);
        destroyStorage<A>(_:count:)(v108, 0, v106);
        destroyStorage<A>(_:count:)(v109, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v107, MEMORY[0x277D84B78]);

        v105 = 0;
      }

      else
      {

        v105 = *(v167 + 1520);
      }

      *(v167 + 1600) = v105;
      v101 = *(v167 + 1536);
      v102 = *(v167 + 1528);
      v99 = *(v167 + 1232);
      v100 = *(v167 + 1184);
      MEMORY[0x277D82BD8](log);
      v102(v99, v100);
      *(v167 + 1608) = type metadata accessor for LogGenericMedicationsIntentResponse();
      *(v167 + 792) = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(107, 0);
      *(v167 + 1616) = type metadata accessor for MatchedMedName();
      *(v167 + 800) = _allocateUninitializedArray<A>(_:)();
      v103 = *(v167 + 600);

      *(v167 + 808) = v103;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
      lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
      Collection<>.makeIterator()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
      IndexingIterator.next()();
      v104 = *(v167 + 816);
      *(v167 + 1624) = v104;
      if (v104)
      {
        v12 = *(v167 + 1176);
        *(v167 + 824) = v104;
        outlined init with copy of QuantityPersisting(v12 + 16, v167 + 184);
        v96 = *(v167 + 208);
        v97 = *(v167 + 216);
        __swift_project_boxed_opaque_existential_1((v167 + 184), v96);
        v98 = (*(v97 + 24) + **(v97 + 24));
        v13 = *(*(v97 + 24) + 4);
        v14 = swift_task_alloc();
        v15 = v96;
        v16 = v97;
        v17 = v98;
        v18 = v14;
        v19 = v104;
        *(v167 + 1632) = v18;
        *v18 = *(v167 + 584);
        v18[1] = GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:);

        return v17(v19, 1, v15, v16);
      }

      v88 = *(v167 + 1616);
      v92 = *(v167 + 1400);
      v93 = *(v167 + 1392);
      v94 = *(v167 + 1368);
      v91 = *(v167 + 1344);
      outlined destroy of [HKQuantityType]((v167 + 568));
      v95 = *(v167 + 792);
      MEMORY[0x277D82BE0](v95);
      v89 = *(v167 + 800);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v95 setMatchingMeds_];
      MEMORY[0x277D82BD8](isa);
      outlined destroy of [HKQuantityType]((v167 + 800));
      MEMORY[0x277D82BD8](*(v167 + 792));
      outlined destroy of [HKQuantityType]((v167 + 600));
      v93(v94, v91);
      v153 = v95;
    }

    else
    {
      v85 = *(v167 + 600);

      v86 = getUnloggedDoseEvents(doseEvents:)();

      *(v167 + 664) = v86;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
      lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
      v87 = Collection.isEmpty.getter();

      if ((v87 & 1) == 0)
      {
        v52 = *(v167 + 600);

        v53 = getUnloggedDoseEvents(doseEvents:)();

        v26 = *(v167 + 600);
        *(v167 + 600) = v53;

        goto LABEL_46;
      }

      v81 = *(v167 + 1512);
      v79 = *(v167 + 1504);
      v80 = *(v167 + 1496);
      v20 = *(v167 + 1216);
      v78 = *(v167 + 1184);
      v77 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      v80(v20, v77, v78);
      swift_endAccess();
      v83 = Logger.logObject.getter();
      v82 = static os_log_type_t.debug.getter();
      v84 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v83, v82))
      {
        v21 = *(v167 + 1520);
        v73 = static UnsafeMutablePointer.allocate(capacity:)();
        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v74 = createStorage<A>(capacity:type:)(0);
        v75 = createStorage<A>(capacity:type:)(0);
        *(v167 + 760) = v73;
        *(v167 + 768) = v74;
        *(v167 + 776) = v75;
        serialize(_:at:)(0, (v167 + 760));
        serialize(_:at:)(0, (v167 + 760));
        *(v167 + 784) = v84;
        v76 = swift_task_alloc();
        v76[2] = v167 + 760;
        v76[3] = v167 + 768;
        v76[4] = v167 + 776;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        if (v21)
        {
        }

        _os_log_impl(&dword_269912000, v83, v82, "allMedsLoggedAlready, returning code .allMedsLoggedAlready", v73, 2u);
        destroyStorage<A>(_:count:)(v74, 0, v72);
        destroyStorage<A>(_:count:)(v75, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v73, MEMORY[0x277D84B78]);

        v71 = 0;
      }

      else
      {

        v71 = *(v167 + 1520);
      }

      *(v167 + 1648) = v71;
      v67 = *(v167 + 1536);
      v68 = *(v167 + 1528);
      v65 = *(v167 + 1216);
      v66 = *(v167 + 1184);
      MEMORY[0x277D82BD8](v83);
      v68(v65, v66);
      *(v167 + 1656) = type metadata accessor for LogGenericMedicationsIntentResponse();
      *(v167 + 672) = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(108, 0);
      *(v167 + 1664) = type metadata accessor for MatchedMedName();
      *(v167 + 680) = _allocateUninitializedArray<A>(_:)();
      v69 = *(v167 + 600);

      *(v167 + 688) = v69;
      Collection<>.makeIterator()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
      IndexingIterator.next()();
      v70 = *(v167 + 696);
      *(v167 + 1672) = v70;
      if (v70)
      {
        v22 = *(v167 + 1176);
        *(v167 + 704) = v70;
        outlined init with copy of QuantityPersisting(v22 + 16, v167 + 144);
        v62 = *(v167 + 168);
        v63 = *(v167 + 176);
        __swift_project_boxed_opaque_existential_1((v167 + 144), v62);
        v64 = (*(v63 + 24) + **(v63 + 24));
        v23 = *(*(v63 + 24) + 4);
        v24 = swift_task_alloc();
        v15 = v62;
        v16 = v63;
        v17 = v64;
        v25 = v24;
        v19 = v70;
        *(v167 + 1680) = v25;
        *v25 = *(v167 + 584);
        v25[1] = GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:);

        return v17(v19, 1, v15, v16);
      }

      v54 = *(v167 + 1664);
      v58 = *(v167 + 1400);
      v59 = *(v167 + 1392);
      v60 = *(v167 + 1368);
      v57 = *(v167 + 1344);
      outlined destroy of [HKQuantityType]((v167 + 552));
      v61 = *(v167 + 672);
      MEMORY[0x277D82BE0](v61);
      v55 = *(v167 + 680);

      v56 = Array._bridgeToObjectiveC()().super.isa;

      [v61 setMatchingMeds_];
      MEMORY[0x277D82BD8](v56);
      outlined destroy of [HKQuantityType]((v167 + 680));
      MEMORY[0x277D82BD8](*(v167 + 672));
      outlined destroy of [HKQuantityType]((v167 + 600));
      v59(v60, v57);
      v153 = v61;
    }
  }

  else
  {
    v163 = *(v167 + 1512);
    v161 = *(v167 + 1504);
    v162 = *(v167 + 1496);
    v3 = *(v167 + 1248);
    v160 = *(v167 + 1184);
    v159 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v162(v3, v159, v160);
    swift_endAccess();
    v165 = Logger.logObject.getter();
    v164 = static os_log_type_t.debug.getter();
    v166 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v165, v164))
    {
      v4 = *(v167 + 1520);
      v155 = static UnsafeMutablePointer.allocate(capacity:)();
      v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v156 = createStorage<A>(capacity:type:)(0);
      v157 = createStorage<A>(capacity:type:)(0);
      *(v167 + 944) = v155;
      *(v167 + 952) = v156;
      *(v167 + 960) = v157;
      serialize(_:at:)(0, (v167 + 944));
      serialize(_:at:)(0, (v167 + 944));
      *(v167 + 968) = v166;
      v158 = swift_task_alloc();
      v158[2] = v167 + 944;
      v158[3] = v167 + 952;
      v158[4] = v167 + 960;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v4)
      {
      }

      _os_log_impl(&dword_269912000, v165, v164, "Multiple medications found for none (implicitly today) timeframe, returning .multipleMedsFound", v155, 2u);
      destroyStorage<A>(_:count:)(v156, 0, v154);
      destroyStorage<A>(_:count:)(v157, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v155, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v146 = *(v167 + 1536);
    v147 = *(v167 + 1528);
    v149 = *(v167 + 1400);
    v150 = *(v167 + 1392);
    v151 = *(v167 + 1368);
    v148 = *(v167 + 1344);
    v144 = *(v167 + 1248);
    v145 = *(v167 + 1184);
    MEMORY[0x277D82BD8](v165);
    v147(v144, v145);
    type metadata accessor for LogGenericMedicationsIntentResponse();
    v152 = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(103, 0);
    outlined destroy of [HKQuantityType]((v167 + 600));
    v150(v151, v148);
    v153 = v152;
  }

  v30 = *(v167 + 1368);
  v33 = *(v167 + 1360);
  v34 = *(v167 + 1336);
  v35 = *(v167 + 1328);
  v36 = *(v167 + 1320);
  v37 = *(v167 + 1312);
  v38 = *(v167 + 1288);
  v39 = *(v167 + 1280);
  v40 = *(v167 + 1272);
  v41 = *(v167 + 1264);
  v42 = *(v167 + 1256);
  v43 = *(v167 + 1248);
  v44 = *(v167 + 1240);
  v45 = *(v167 + 1232);
  v46 = *(v167 + 1224);
  v47 = *(v167 + 1216);
  v48 = *(v167 + 1208);
  v49 = *(v167 + 1200);

  v31 = *(*(v167 + 584) + 8);
  v32 = *(v167 + 584);

  return v31(v153);
}

{
  v6 = v0[175];
  v7 = v0[174];
  v8 = v0[171];
  v5 = v0[168];
  v0[73] = v0;
  outlined destroy of [HKQuantityType](v0 + 75);
  v7(v8, v5);
  v26 = v0[198];
  v1 = v0[171];
  v9 = v0[170];
  v10 = v0[167];
  v11 = v0[166];
  v12 = v0[165];
  v13 = v0[164];
  v14 = v0[161];
  v15 = v0[160];
  v16 = v0[159];
  v17 = v0[158];
  v18 = v0[157];
  v19 = v0[156];
  v20 = v0[155];
  v21 = v0[154];
  v22 = v0[153];
  v23 = v0[152];
  v24 = v0[151];
  v25 = v0[150];

  v2 = *(v0[73] + 8);
  v3 = v0[73];

  return v2(v26);
}

{
  v1 = *(v0 + 1640);
  *(v0 + 584) = v0;
  if (v1)
  {
    v61 = *(v67 + 1640);
    v62 = *(v67 + 1624);
    *(v67 + 864) = v61;
    __swift_destroy_boxed_opaque_existential_1((v67 + 184));
    MEMORY[0x277D82BE0](v61);
    *(v67 + 872) = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriWellnessIntents14MatchedMedNameCGMd, &_sSay19SiriWellnessIntents14MatchedMedNameCGMR);
    Array.append(_:)();
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
    IndexingIterator.next()();
    v63 = *(v67 + 816);
    *(v67 + 1624) = v63;
    if (v63)
    {
      v2 = *(v67 + 1176);
      *(v67 + 824) = v63;
      outlined init with copy of QuantityPersisting(v2 + 16, v67 + 184);
      v64 = *(v67 + 208);
      v65 = *(v67 + 216);
      __swift_project_boxed_opaque_existential_1((v67 + 184), v64);
      v66 = (*(v65 + 24) + **(v65 + 24));
      v3 = *(*(v65 + 24) + 4);
      v4 = swift_task_alloc();
      *(v67 + 1632) = v4;
      *v4 = *(v67 + 584);
      v4[1] = GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:);

      return v66(v63, 1, v64, v65);
    }

    v29 = *(v67 + 1616);
    v33 = *(v67 + 1400);
    v34 = *(v67 + 1392);
    v35 = *(v67 + 1368);
    v32 = *(v67 + 1344);
    outlined destroy of [HKQuantityType]((v67 + 568));
    v36 = *(v67 + 792);
    MEMORY[0x277D82BE0](v36);
    v30 = *(v67 + 800);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v36 setMatchingMeds_];
    MEMORY[0x277D82BD8](isa);
    outlined destroy of [HKQuantityType]((v67 + 800));
    MEMORY[0x277D82BD8](*(v67 + 792));
    outlined destroy of [HKQuantityType]((v67 + 600));
    v34(v35, v32);
    v47 = v36;
  }

  else
  {
    v57 = *(v67 + 1512);
    v55 = *(v67 + 1504);
    v56 = *(v67 + 1496);
    v6 = *(v67 + 1224);
    v54 = *(v67 + 1184);
    __swift_destroy_boxed_opaque_existential_1((v67 + 184));
    v53 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v56(v6, v53, v54);
    swift_endAccess();
    v59 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    v60 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v59, v58))
    {
      v7 = *(v67 + 1600);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v50 = createStorage<A>(capacity:type:)(0);
      v51 = createStorage<A>(capacity:type:)(0);
      *(v67 + 832) = buf;
      *(v67 + 840) = v50;
      *(v67 + 848) = v51;
      serialize(_:at:)(0, (v67 + 832));
      serialize(_:at:)(0, (v67 + 832));
      *(v67 + 856) = v60;
      v52 = swift_task_alloc();
      v52[2] = v67 + 832;
      v52[3] = v67 + 840;
      v52[4] = v67 + 848;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v7)
      {
      }

      _os_log_impl(&dword_269912000, v59, v58, "Couldn't create MatchedMedName from doseEvent, returning .failure.", buf, 2u);
      destroyStorage<A>(_:count:)(v50, 0, v48);
      destroyStorage<A>(_:count:)(v51, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v8 = *(v67 + 1608);
    v39 = *(v67 + 1536);
    v40 = *(v67 + 1528);
    v43 = *(v67 + 1400);
    v44 = *(v67 + 1392);
    v45 = *(v67 + 1368);
    v42 = *(v67 + 1344);
    v37 = *(v67 + 1224);
    v38 = *(v67 + 1184);
    v41 = *(v67 + 1624);
    MEMORY[0x277D82BD8](v59);
    v40(v37, v38);
    v46 = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    MEMORY[0x277D82BD8](v41);
    outlined destroy of [HKQuantityType]((v67 + 568));
    outlined destroy of [HKQuantityType]((v67 + 800));
    MEMORY[0x277D82BD8](*(v67 + 792));
    outlined destroy of [HKQuantityType]((v67 + 600));
    v44(v45, v42);
    v47 = v46;
  }

  v9 = *(v67 + 1368);
  v12 = *(v67 + 1360);
  v13 = *(v67 + 1336);
  v14 = *(v67 + 1328);
  v15 = *(v67 + 1320);
  v16 = *(v67 + 1312);
  v17 = *(v67 + 1288);
  v18 = *(v67 + 1280);
  v19 = *(v67 + 1272);
  v20 = *(v67 + 1264);
  v21 = *(v67 + 1256);
  v22 = *(v67 + 1248);
  v23 = *(v67 + 1240);
  v24 = *(v67 + 1232);
  v25 = *(v67 + 1224);
  v26 = *(v67 + 1216);
  v27 = *(v67 + 1208);
  v28 = *(v67 + 1200);

  v10 = *(*(v67 + 584) + 8);
  v11 = *(v67 + 584);

  return v10(v47);
}

{
  v1 = *(v0 + 1688);
  *(v0 + 584) = v0;
  if (v1)
  {
    v61 = *(v67 + 1688);
    v62 = *(v67 + 1672);
    *(v67 + 744) = v61;
    __swift_destroy_boxed_opaque_existential_1((v67 + 144));
    MEMORY[0x277D82BE0](v61);
    *(v67 + 752) = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriWellnessIntents14MatchedMedNameCGMd, &_sSay19SiriWellnessIntents14MatchedMedNameCGMR);
    Array.append(_:)();
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
    IndexingIterator.next()();
    v63 = *(v67 + 696);
    *(v67 + 1672) = v63;
    if (v63)
    {
      v2 = *(v67 + 1176);
      *(v67 + 704) = v63;
      outlined init with copy of QuantityPersisting(v2 + 16, v67 + 144);
      v64 = *(v67 + 168);
      v65 = *(v67 + 176);
      __swift_project_boxed_opaque_existential_1((v67 + 144), v64);
      v66 = (*(v65 + 24) + **(v65 + 24));
      v3 = *(*(v65 + 24) + 4);
      v4 = swift_task_alloc();
      *(v67 + 1680) = v4;
      *v4 = *(v67 + 584);
      v4[1] = GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:);

      return v66(v63, 1, v64, v65);
    }

    v29 = *(v67 + 1664);
    v33 = *(v67 + 1400);
    v34 = *(v67 + 1392);
    v35 = *(v67 + 1368);
    v32 = *(v67 + 1344);
    outlined destroy of [HKQuantityType]((v67 + 552));
    v36 = *(v67 + 672);
    MEMORY[0x277D82BE0](v36);
    v30 = *(v67 + 680);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v36 setMatchingMeds_];
    MEMORY[0x277D82BD8](isa);
    outlined destroy of [HKQuantityType]((v67 + 680));
    MEMORY[0x277D82BD8](*(v67 + 672));
    outlined destroy of [HKQuantityType]((v67 + 600));
    v34(v35, v32);
    v47 = v36;
  }

  else
  {
    v57 = *(v67 + 1512);
    v55 = *(v67 + 1504);
    v56 = *(v67 + 1496);
    v6 = *(v67 + 1208);
    v54 = *(v67 + 1184);
    __swift_destroy_boxed_opaque_existential_1((v67 + 144));
    v53 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v56(v6, v53, v54);
    swift_endAccess();
    v59 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    v60 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v59, v58))
    {
      v7 = *(v67 + 1648);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v50 = createStorage<A>(capacity:type:)(0);
      v51 = createStorage<A>(capacity:type:)(0);
      *(v67 + 712) = buf;
      *(v67 + 720) = v50;
      *(v67 + 728) = v51;
      serialize(_:at:)(0, (v67 + 712));
      serialize(_:at:)(0, (v67 + 712));
      *(v67 + 736) = v60;
      v52 = swift_task_alloc();
      v52[2] = v67 + 712;
      v52[3] = v67 + 720;
      v52[4] = v67 + 728;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v7)
      {
      }

      _os_log_impl(&dword_269912000, v59, v58, "Couldn't create MatchedMedName from doseEvent, returning .failure.", buf, 2u);
      destroyStorage<A>(_:count:)(v50, 0, v48);
      destroyStorage<A>(_:count:)(v51, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v8 = *(v67 + 1656);
    v39 = *(v67 + 1536);
    v40 = *(v67 + 1528);
    v43 = *(v67 + 1400);
    v44 = *(v67 + 1392);
    v45 = *(v67 + 1368);
    v42 = *(v67 + 1344);
    v37 = *(v67 + 1208);
    v38 = *(v67 + 1184);
    v41 = *(v67 + 1672);
    MEMORY[0x277D82BD8](v59);
    v40(v37, v38);
    v46 = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    MEMORY[0x277D82BD8](v41);
    outlined destroy of [HKQuantityType]((v67 + 552));
    outlined destroy of [HKQuantityType]((v67 + 680));
    MEMORY[0x277D82BD8](*(v67 + 672));
    outlined destroy of [HKQuantityType]((v67 + 600));
    v44(v45, v42);
    v47 = v46;
  }

  v9 = *(v67 + 1368);
  v12 = *(v67 + 1360);
  v13 = *(v67 + 1336);
  v14 = *(v67 + 1328);
  v15 = *(v67 + 1320);
  v16 = *(v67 + 1312);
  v17 = *(v67 + 1288);
  v18 = *(v67 + 1280);
  v19 = *(v67 + 1272);
  v20 = *(v67 + 1264);
  v21 = *(v67 + 1256);
  v22 = *(v67 + 1248);
  v23 = *(v67 + 1240);
  v24 = *(v67 + 1232);
  v25 = *(v67 + 1224);
  v26 = *(v67 + 1216);
  v27 = *(v67 + 1208);
  v28 = *(v67 + 1200);

  v10 = *(*(v67 + 584) + 8);
  v11 = *(v67 + 584);

  return v10(v47);
}

{
  v6 = v0[175];
  v7 = v0[174];
  v8 = v0[171];
  v5 = v0[168];
  v0[73] = v0;
  outlined destroy of [HKQuantityType](v0 + 75);
  v7(v8, v5);
  v26 = v0[215];
  v1 = v0[171];
  v9 = v0[170];
  v10 = v0[167];
  v11 = v0[166];
  v12 = v0[165];
  v13 = v0[164];
  v14 = v0[161];
  v15 = v0[160];
  v16 = v0[159];
  v17 = v0[158];
  v18 = v0[157];
  v19 = v0[156];
  v20 = v0[155];
  v21 = v0[154];
  v22 = v0[153];
  v23 = v0[152];
  v24 = v0[151];
  v25 = v0[150];

  v2 = *(v0[73] + 8);
  v3 = v0[73];

  return v2(v26);
}

{
  v1 = v0[176];
  v39 = v0[175];
  v40 = v0[174];
  v36 = v0[173];
  v35 = v0[172];
  v37 = v0[171];
  v38 = v0[168];
  v0[73] = v0;
  swift_willThrow();
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v36);
  v40(v37, v38);
  v41 = v0[176];
  v2 = v0[150];
  v42 = v0[149];
  v44 = v0[148];
  v3 = v41;
  v0[77] = v41;
  v43 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v42 + 16))(v2, v43, v44);
  swift_endAccess();
  v46 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v47 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v46, v45))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v31 = createStorage<A>(capacity:type:)(0);
    v32 = createStorage<A>(capacity:type:)(0);
    *(v34 + 624) = buf;
    *(v34 + 632) = v31;
    *(v34 + 640) = v32;
    serialize(_:at:)(0, (v34 + 624));
    serialize(_:at:)(0, (v34 + 624));
    *(v34 + 648) = v47;
    v33 = swift_task_alloc();
    v33[2] = v34 + 624;
    v33[3] = v34 + 632;
    v33[4] = v34 + 640;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v46, v45, "Failed fetching dose events for timeframe.", buf, 2u);
    destroyStorage<A>(_:count:)(v31, 0, v29);
    destroyStorage<A>(_:count:)(v32, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v9 = *(v34 + 1200);
  v10 = *(v34 + 1184);
  v8 = *(v34 + 1192);
  MEMORY[0x277D82BD8](v46);
  (*(v8 + 8))(v9, v10);
  type metadata accessor for LogGenericMedicationsIntentResponse();
  v28 = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  v4 = *(v34 + 1368);
  v11 = *(v34 + 1360);
  v12 = *(v34 + 1336);
  v13 = *(v34 + 1328);
  v14 = *(v34 + 1320);
  v15 = *(v34 + 1312);
  v16 = *(v34 + 1288);
  v17 = *(v34 + 1280);
  v18 = *(v34 + 1272);
  v19 = *(v34 + 1264);
  v20 = *(v34 + 1256);
  v21 = *(v34 + 1248);
  v22 = *(v34 + 1240);
  v23 = *(v34 + 1232);
  v24 = *(v34 + 1224);
  v25 = *(v34 + 1216);
  v26 = *(v34 + 1208);
  v27 = *(v34 + 1200);

  v5 = *(*(v34 + 584) + 8);
  v6 = *(v34 + 584);

  return v5(v28);
}

{
  v1 = v0[196];
  v36 = v0[175];
  v37 = v0[174];
  v38 = v0[171];
  v35 = v0[168];
  v0[73] = v0;

  outlined destroy of [HKQuantityType](v0 + 75);
  v37(v38, v35);
  v39 = v0[199];
  v2 = v0[150];
  v40 = v0[149];
  v42 = v0[148];
  v3 = v39;
  v0[77] = v39;
  v41 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v40 + 16))(v2, v41, v42);
  swift_endAccess();
  v44 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v45 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v44, v43))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v31 = createStorage<A>(capacity:type:)(0);
    v32 = createStorage<A>(capacity:type:)(0);
    *(v34 + 624) = buf;
    *(v34 + 632) = v31;
    *(v34 + 640) = v32;
    serialize(_:at:)(0, (v34 + 624));
    serialize(_:at:)(0, (v34 + 624));
    *(v34 + 648) = v45;
    v33 = swift_task_alloc();
    v33[2] = v34 + 624;
    v33[3] = v34 + 632;
    v33[4] = v34 + 640;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v44, v43, "Failed fetching dose events for timeframe.", buf, 2u);
    destroyStorage<A>(_:count:)(v31, 0, v29);
    destroyStorage<A>(_:count:)(v32, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v9 = *(v34 + 1200);
  v10 = *(v34 + 1184);
  v8 = *(v34 + 1192);
  MEMORY[0x277D82BD8](v44);
  (*(v8 + 8))(v9, v10);
  type metadata accessor for LogGenericMedicationsIntentResponse();
  v28 = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  v4 = *(v34 + 1368);
  v11 = *(v34 + 1360);
  v12 = *(v34 + 1336);
  v13 = *(v34 + 1328);
  v14 = *(v34 + 1320);
  v15 = *(v34 + 1312);
  v16 = *(v34 + 1288);
  v17 = *(v34 + 1280);
  v18 = *(v34 + 1272);
  v19 = *(v34 + 1264);
  v20 = *(v34 + 1256);
  v21 = *(v34 + 1248);
  v22 = *(v34 + 1240);
  v23 = *(v34 + 1232);
  v24 = *(v34 + 1224);
  v25 = *(v34 + 1216);
  v26 = *(v34 + 1208);
  v27 = *(v34 + 1200);

  v5 = *(*(v34 + 584) + 8);
  v6 = *(v34 + 584);

  return v5(v28);
}

uint64_t GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:)(uint64_t a1)
{
  v6 = *v1;
  v3 = *(*v1 + 1480);
  *(v6 + 584) = *v1;
  *(v6 + 1488) = a1;

  v4 = *(v6 + 584);

  return MEMORY[0x2822009F8](GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:), 0);
}

{
  v7 = *v1;
  v3 = *(*v1 + 1552);
  v6 = *(*v1 + 1544);
  *(v7 + 584) = *v1;
  *(v7 + 1560) = a1;

  v4 = *(v7 + 584);

  return MEMORY[0x2822009F8](GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:), 0);
}

{
  v12 = *v2;
  v10 = *v2 + 16;
  v11 = v12 + 73;
  v4 = *(*v2 + 1576);
  v12[73] = *v2;
  v12[198] = a1;
  v12[199] = v1;

  if (v1)
  {
    v8 = *v11;
    v7 = GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:);
  }

  else
  {
    v5 = *(v10 + 1552);

    v6 = *v11;
    v7 = GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:);
  }

  return MEMORY[0x2822009F8](v7, 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 1632);
  *(v6 + 584) = *v1;
  *(v6 + 1640) = a1;

  v4 = *(v6 + 584);

  return MEMORY[0x2822009F8](GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:), 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 1680);
  *(v6 + 584) = *v1;
  *(v6 + 1688) = a1;

  v4 = *(v6 + 584);

  return MEMORY[0x2822009F8](GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:), 0);
}

{
  v8 = *v1;
  v3 = *(*v1 + 1712);
  v6 = *(*v1 + 1704);
  v7 = *(*v1 + 1696);
  *(v8 + 584) = *v1;
  *(v8 + 1720) = a1;

  v4 = *(v8 + 584);

  return MEMORY[0x2822009F8](GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:), 0);
}

uint64_t GenericMedicationsPersistor.getConfirmationLogAsScheduled(doseEvents:)(uint64_t a1)
{
  v2[27] = v1;
  v2[26] = a1;
  v2[12] = v2;
  v2[13] = 0;
  v2[14] = 0;
  v2[15] = 0;
  v2[10] = 0;
  v2[11] = 0;
  v2[18] = 0;
  v2[19] = 0;
  v2[20] = 0;
  v3 = type metadata accessor for Logger();
  v2[28] = v3;
  v7 = *(v3 - 8);
  v2[29] = v7;
  v4 = *(v7 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[13] = a1;
  v2[14] = v1;
  v5 = v2[12];

  return MEMORY[0x2822009F8](GenericMedicationsPersistor.getConfirmationLogAsScheduled(doseEvents:), 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 264);
  *(v6 + 96) = *v1;
  *(v6 + 272) = a1;

  v4 = *(v6 + 96);

  return MEMORY[0x2822009F8](GenericMedicationsPersistor.getConfirmationLogAsScheduled(doseEvents:), 0);
}

uint64_t GenericMedicationsPersistor.getConfirmationLogAsScheduled(doseEvents:)()
{
  v1 = v0[30];
  v27 = v0[29];
  v29 = v0[28];
  v0[12] = v0;
  v28 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v27 + 16))(v1, v28, v29);
  swift_endAccess();
  v31 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v32 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v31, v30))
  {
    v22 = static UnsafeMutablePointer.allocate(capacity:)();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v23 = createStorage<A>(capacity:type:)(0);
    v24 = createStorage<A>(capacity:type:)(0);
    *(v26 + 176) = v22;
    *(v26 + 184) = v23;
    *(v26 + 192) = v24;
    serialize(_:at:)(0, (v26 + 176));
    serialize(_:at:)(0, (v26 + 176));
    *(v26 + 200) = v32;
    v25 = swift_task_alloc();
    v25[2] = v26 + 176;
    v25[3] = v26 + 184;
    v25[4] = v26 + 192;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v31, v30, "Tried to write dose events but confirmedLogAsScheduled is false, returning .needsConfirmLogAsScheduled", v22, 2u);
    destroyStorage<A>(_:count:)(v23, 0, v21);
    destroyStorage<A>(_:count:)(v24, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v22, MEMORY[0x277D84B78]);
  }

  v17 = *(v26 + 240);
  v18 = *(v26 + 224);
  v19 = *(v26 + 208);
  v16 = *(v26 + 232);
  MEMORY[0x277D82BD8](v31);
  (*(v16 + 8))(v17, v18);
  *(v26 + 248) = type metadata accessor for MatchedMedName();
  *(v26 + 120) = _allocateUninitializedArray<A>(_:)();

  *(v26 + 128) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  Collection<>.makeIterator()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
  IndexingIterator.next()();
  v20 = *(v26 + 136);
  *(v26 + 256) = v20;
  if (v20)
  {
    v2 = *(v26 + 216);
    *(v26 + 152) = v20;
    outlined init with copy of QuantityPersisting(v2 + 16, v26 + 16);
    v13 = *(v26 + 40);
    v14 = *(v26 + 48);
    __swift_project_boxed_opaque_existential_1((v26 + 16), v13);
    v15 = (*(v14 + 24) + **(v14 + 24));
    v3 = *(*(v14 + 24) + 4);
    v4 = swift_task_alloc();
    *(v26 + 264) = v4;
    *v4 = *(v26 + 96);
    v4[1] = GenericMedicationsPersistor.getConfirmationLogAsScheduled(doseEvents:);

    return v15(v20, 1, v13, v14);
  }

  else
  {
    v8 = *(v26 + 248);
    v11 = *(v26 + 240);
    outlined destroy of [HKQuantityType]((v26 + 80));
    type metadata accessor for LogGenericMedicationsIntentResponse();
    v12 = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(105, 0);
    MEMORY[0x277D82BE0](v12);
    *(v26 + 144) = v12;
    v9 = *(v26 + 120);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v12 setMatchingMeds_];
    MEMORY[0x277D82BD8](isa);
    MEMORY[0x277D82BD8](*(v26 + 144));
    outlined destroy of [HKQuantityType]((v26 + 120));

    v6 = *(*(v26 + 96) + 8);
    v7 = *(v26 + 96);

    return v6(v12);
  }
}

{
  v1 = *(v0 + 272);
  *(v0 + 96) = v0;
  if (v1)
  {
    v13 = v18[34];
    v18[20] = v13;
    __swift_destroy_boxed_opaque_existential_1(v18 + 2);
    MEMORY[0x277D82BE0](v13);
    v18[21] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriWellnessIntents14MatchedMedNameCGMd, &_sSay19SiriWellnessIntents14MatchedMedNameCGMR);
    Array.append(_:)();
    MEMORY[0x277D82BD8](v13);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v18 + 2);
  }

  MEMORY[0x277D82BD8](v18[32]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
  IndexingIterator.next()();
  v14 = v18[17];
  v18[32] = v14;
  if (v14)
  {
    v2 = v18[27];
    v18[19] = v14;
    outlined init with copy of QuantityPersisting(v2 + 16, (v18 + 2));
    v15 = v18[5];
    v16 = v18[6];
    __swift_project_boxed_opaque_existential_1(v18 + 2, v15);
    v17 = (*(v16 + 24) + **(v16 + 24));
    v3 = *(*(v16 + 24) + 4);
    v4 = swift_task_alloc();
    v18[33] = v4;
    *v4 = v18[12];
    v4[1] = GenericMedicationsPersistor.getConfirmationLogAsScheduled(doseEvents:);

    return v17(v14, 1, v15, v16);
  }

  else
  {
    v8 = v18[31];
    v11 = v18[30];
    outlined destroy of [HKQuantityType](v18 + 10);
    type metadata accessor for LogGenericMedicationsIntentResponse();
    v12 = LogGenericMedicationsIntentResponse.__allocating_init(code:userActivity:)(105, 0);
    MEMORY[0x277D82BE0](v12);
    v18[18] = v12;
    v9 = v18[15];

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v12 setMatchingMeds_];
    MEMORY[0x277D82BD8](isa);
    MEMORY[0x277D82BD8](v18[18]);
    outlined destroy of [HKQuantityType](v18 + 15);

    v6 = *(v18[12] + 8);
    v7 = v18[12];

    return v6(v12);
  }
}

uint64_t protocol witness for GenericMedicationsPersisting.isLoggingAuthorized() in conformance GenericMedicationsPersistor()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = protocol witness for QuantityPersisting.isLoggingAuthorized(for:) in conformance HealthKitPersistor;

  return GenericMedicationsPersistor.isLoggingAuthorized()();
}

uint64_t protocol witness for GenericMedicationsPersisting.saveWithOverride(medStatusTaken:shouldOverwriteExistingStatuses:) in conformance GenericMedicationsPersistor(char a1, char a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for QuantityPersisting.save(quantityIdentifier:value:units:) in conformance HealthKitPersistor;

  return GenericMedicationsPersistor.saveWithOverride(medStatusTaken:shouldOverwriteExistingStatuses:)(a1 & 1, a2 & 1);
}

uint64_t protocol witness for GenericMedicationsPersisting.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:) in conformance GenericMedicationsPersistor(char a1, char a2, char a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for QuantityPersisting.save(quantityIdentifier:value:units:) in conformance HealthKitPersistor;

  return GenericMedicationsPersistor.save(isTimeframeToday:medStatusTaken:confirmedLogAsScheduled:)(a1 & 1, a2 & 1, a3 & 1);
}

uint64_t sub_269A004CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A0050C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A0054C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A0058C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A00624()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A00664()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A006A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A006E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A0077C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A007BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A007FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A0083C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A0092C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A0096C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A009AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A009EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A00A84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A00AC4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A00B04()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A00B44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A00B84()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t partial apply for @objc closure #1 in LogGenericMedicationsIntentHandler.handle(intent:)()
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

  return @objc closure #1 in LogGenericMedicationsIntentHandler.handle(intent:)(v7, v5, v6);
}

uint64_t getEnumTagSinglePayload for GenericMedicationsPersistor(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
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

uint64_t storeEnumTagSinglePayload for GenericMedicationsPersistor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t isSiriAuthorizedToAccessHealthData(store:)(uint64_t a1)
{
  v1[4] = a1;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = a1;
  v2 = v1[2];
  return MEMORY[0x2822009F8](isSiriAuthorizedToAccessHealthData(store:), 0);
}

uint64_t isSiriAuthorizedToAccessHealthData(store:)()
{
  v6 = v0[4];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("isSiriAuthorizedToAccessHealthData(store:)", 0x2AuLL, 1);
  v0[5] = v1._object;
  MEMORY[0x277D82BE0](v6);
  v8 = swift_task_alloc();
  v0[6] = v8;
  *(v8 + 16) = v6;
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v7 + 56) = v3;
  *v3 = *(v7 + 16);
  v3[1] = isSiriAuthorizedToAccessHealthData(store:);
  v4 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v7 + 64, 0, 0, v1._countAndFlagsBits, v1._object, partial apply for closure #1 in isSiriAuthorizedToAccessHealthData(store:), v8, v4);
}

{
  v7 = *v0;
  v1 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v6 = *(*v0 + 40);
  v5 = *(*v0 + 32);
  *(v7 + 16) = *v0;

  v2 = *(v7 + 16);

  return MEMORY[0x2822009F8](isSiriAuthorizedToAccessHealthData(store:), 0);
}

{
  *(v0 + 16) = v0;
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 16) + 8);
  v3 = *(v0 + 16);
  return v2(v1 & 1);
}

void closure #1 in isSiriAuthorizedToAccessHealthData(store:)(uint64_t a1, void *a2)
{
  v3[1] = a1;
  v14 = a2;
  v12 = partial apply for closure #1 in closure #1 in isSiriAuthorizedToAccessHealthData(store:);
  v24 = 0;
  v23 = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = v7;
  v6 = *(v7 + 64);
  v4 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v10 = v3 - v4;
  v24 = v2;
  v23 = v14;
  (*(v7 + 16))();
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v9, v10, v11);
  v21 = v12;
  v22 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = 0;
  v19 = thunk for @escaping @callee_guaranteed @Sendable (@unowned HKSiriAuthorizationStatus, @guaranteed Error?) -> ();
  v20 = &block_descriptor_8;
  v15 = _Block_copy(&aBlock);

  [v14 getAllHealthDataAccessForSiriWithCompletion_];
  _Block_release(v15);
}

void closure #1 in closure #1 in isSiriAuthorizedToAccessHealthData(store:)(uint64_t a1, void *a2, uint64_t a3)
{
  v105 = a1;
  v115 = a2;
  v106 = a3;
  v93 = partial apply for implicit closure #10 in getPreferredUnit(for:store:);
  v94 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  v95 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  v96 = partial apply for closure #1 in OSLogArguments.append(_:);
  v97 = partial apply for closure #1 in OSLogArguments.append(_:);
  v98 = partial apply for closure #1 in OSLogArguments.append(_:);
  v99 = partial apply for implicit closure #2 in closure #1 in closure #1 in isSiriAuthorizedToAccessHealthData(store:);
  v100 = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
  v101 = partial apply for closure #1 in OSLogArguments.append(_:);
  v102 = partial apply for closure #1 in OSLogArguments.append(_:);
  v103 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
  v135 = 0;
  v134 = 0;
  v133 = 0;
  v104 = 0;
  v123 = 0;
  v107 = type metadata accessor for Logger();
  v108 = *(v107 - 8);
  v109 = v107 - 8;
  v111 = *(v108 + 64);
  v110 = (v111 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v115);
  v112 = v38 - v110;
  v113 = v110;
  v4 = MEMORY[0x28223BE20](v3);
  v114 = v38 - v113;
  v135 = v5;
  v134 = v4;
  v133 = v6;
  v7 = v4;
  if (v115)
  {
    v92 = v115;
    v20 = v112;
    v62 = v115;
    v123 = v115;
    v60 = Logger.wellnessIntents.unsafeMutableAddressor();
    v61 = &v122;
    v65 = 32;
    swift_beginAccess();
    (*(v108 + 16))(v20, v60, v107);
    swift_endAccess();
    v21 = v62;
    v66 = 7;
    v64 = swift_allocObject();
    *(v64 + 16) = v62;
    default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();
    v63 = 17;
    v69 = swift_allocObject();
    *(v69 + 16) = 64;
    v70 = swift_allocObject();
    *(v70 + 16) = 8;
    v22 = swift_allocObject();
    v23 = v64;
    v67 = v22;
    *(v22 + 16) = v93;
    *(v22 + 24) = v23;
    v24 = swift_allocObject();
    v25 = v67;
    v68 = v24;
    *(v24 + 16) = v94;
    *(v24 + 24) = v25;
    v26 = swift_allocObject();
    v27 = v68;
    v72 = v26;
    *(v26 + 16) = v95;
    *(v26 + 24) = v27;
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v71 = _allocateUninitializedArray<A>(_:)();
    v73 = v28;

    v29 = v69;
    v30 = v73;
    *v73 = v96;
    v30[1] = v29;

    v31 = v70;
    v32 = v73;
    v73[2] = v97;
    v32[3] = v31;

    v33 = v72;
    v34 = v73;
    v73[4] = v98;
    v34[5] = v33;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v75, v76))
    {
      v35 = v104;
      v53 = static UnsafeMutablePointer.allocate(capacity:)();
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v54 = createStorage<A>(capacity:type:)(1);
      v55 = createStorage<A>(capacity:type:)(0);
      v56 = &v120;
      v120 = v53;
      v57 = &v119;
      v119 = v54;
      v58 = &v118;
      v118 = v55;
      serialize(_:at:)(2, &v120);
      serialize(_:at:)(1, v56);
      v116 = v96;
      v117 = v69;
      closure #1 in osLogInternal(_:log:type:)(&v116, v56, v57, v58);
      v59 = v35;
      if (v35)
      {

        __break(1u);
      }

      else
      {
        v116 = v97;
        v117 = v70;
        closure #1 in osLogInternal(_:log:type:)(&v116, &v120, &v119, &v118);
        v51 = 0;
        v116 = v98;
        v117 = v72;
        closure #1 in osLogInternal(_:log:type:)(&v116, &v120, &v119, &v118);
        _os_log_impl(&dword_269912000, v75, v76, "🚨 Could not fetch authorization status for Health data: %@", v53, 0xCu);
        destroyStorage<A>(_:count:)(v54, 1, v52);
        destroyStorage<A>(_:count:)(v55, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v53, MEMORY[0x277D84B78]);
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v75);
    (*(v108 + 8))(v112, v107);
    v50 = &v121;
    v121 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    v8 = v114;
    v77 = Logger.wellnessIntents.unsafeMutableAddressor();
    v78 = &v132;
    v80 = 32;
    swift_beginAccess();
    (*(v108 + 16))(v8, v77, v107);
    swift_endAccess();
    v81 = 7;
    v82 = swift_allocObject();
    *(v82 + 16) = v105;
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.debug.getter();
    v79 = 17;
    v84 = swift_allocObject();
    *(v84 + 16) = 0;
    v85 = swift_allocObject();
    *(v85 + 16) = 8;
    v9 = swift_allocObject();
    v10 = v82;
    v83 = v9;
    *(v9 + 16) = v99;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v83;
    v87 = v11;
    *(v11 + 16) = v100;
    *(v11 + 24) = v12;
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v86 = _allocateUninitializedArray<A>(_:)();
    v88 = v13;

    v14 = v84;
    v15 = v88;
    *v88 = v101;
    v15[1] = v14;

    v16 = v85;
    v17 = v88;
    v88[2] = v102;
    v17[3] = v16;

    v18 = v87;
    v19 = v88;
    v88[4] = v103;
    v19[5] = v18;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v90, v91))
    {
      v36 = v104;
      v43 = static UnsafeMutablePointer.allocate(capacity:)();
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v42 = 0;
      v44 = createStorage<A>(capacity:type:)(0);
      v45 = createStorage<A>(capacity:type:)(v42);
      v46 = &v128;
      v128 = v43;
      v47 = &v127;
      v127 = v44;
      v48 = &v126;
      v126 = v45;
      serialize(_:at:)(0, &v128);
      serialize(_:at:)(1, v46);
      v124 = v101;
      v125 = v84;
      closure #1 in osLogInternal(_:log:type:)(&v124, v46, v47, v48);
      v49 = v36;
      if (v36)
      {

        __break(1u);
      }

      else
      {
        v124 = v102;
        v125 = v85;
        closure #1 in osLogInternal(_:log:type:)(&v124, &v128, &v127, &v126);
        v40 = 0;
        v124 = v103;
        v125 = v87;
        closure #1 in osLogInternal(_:log:type:)(&v124, &v128, &v127, &v126);
        _os_log_impl(&dword_269912000, v90, v91, "Siri authorization status to access Health data is: %ld", v43, 0xCu);
        v39 = 0;
        destroyStorage<A>(_:count:)(v44, 0, v41);
        destroyStorage<A>(_:count:)(v45, v39, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v43, MEMORY[0x277D84B78]);
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v90);
    (*(v108 + 8))(v114, v107);
    v38[2] = &v131;
    v131 = v105;
    v38[0] = &v130;
    v130 = 1;
    v38[1] = type metadata accessor for HKSiriAuthorizationStatus();
    lazy protocol witness table accessor for type HKSiriAuthorizationStatus and conformance HKSiriAuthorizationStatus();
    v37 = == infix<A>(_:_:)();
    v38[3] = &v129;
    v129 = v37 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_269A025BC()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR) - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

void partial apply for closure #1 in closure #1 in isSiriAuthorizedToAccessHealthData(store:)(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v4 = v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  closure #1 in closure #1 in isSiriAuthorizedToAccessHealthData(store:)(a1, a2, v4);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@unowned HKSiriAuthorizationStatus, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  MEMORY[0x277D82BE0](a3);
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = 0;
  }

  v6(a2);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_269A028D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A02914()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type HKSiriAuthorizationStatus and conformance HKSiriAuthorizationStatus()
{
  v2 = lazy protocol witness table cache variable for type HKSiriAuthorizationStatus and conformance HKSiriAuthorizationStatus;
  if (!lazy protocol witness table cache variable for type HKSiriAuthorizationStatus and conformance HKSiriAuthorizationStatus)
  {
    type metadata accessor for HKSiriAuthorizationStatus();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKSiriAuthorizationStatus and conformance HKSiriAuthorizationStatus);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_269A02A6C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A02AAC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A02AEC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

id GetSleepAnalysisIntent.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for GetSleepAnalysisIntent();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id GetSleepAnalysisIntent.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetSleepAnalysisIntent.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for GetSleepAnalysisIntent();
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

id GetSleepAnalysisIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

id GetSleepAnalysisIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v10.super_class = type metadata accessor for GetSleepAnalysisIntent();
  v4 = objc_msgSendSuper2(&v10, sel_initWithIdentifier_backingStore_, v6, a3);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v4);
  v14 = v4;
  MEMORY[0x277D82BD8](a3);

  MEMORY[0x277D82BD8](v14);
  return v4;
}

id GetSleepAnalysisIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

id GetSleepAnalysisIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v16.super_class = type metadata accessor for GetSleepAnalysisIntent();
  v6 = objc_msgSendSuper2(&v16, sel_initWithDomain_verb_parametersByName_, v11, v14, v8);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BE0](v6);
  v22 = v6;

  MEMORY[0x277D82BD8](v22);
  return v6;
}

id GetSleepAnalysisIntent.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetSleepAnalysisIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t GetSleepAnalysisIntentResponseCode.init(rawValue:)(uint64_t a1)
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
    case 103:
      return 103;
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GetSleepAnalysisIntentResponseCode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GetSleepAnalysisIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance GetSleepAnalysisIntentResponseCode(void *a1@<X8>)
{
  v2 = *v1;
  GetSleepAnalysisIntentResponseCode.rawValue.getter();
  *a1 = v3;
}

uint64_t GetSleepAnalysisIntentResponse.code.getter()
{
  v2 = (v0 + OBJC_IVAR___GetSleepAnalysisIntentResponse_code);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t GetSleepAnalysisIntentResponse.code.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___GetSleepAnalysisIntentResponse_code);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for GetSleepAnalysisIntentResponse.code : GetSleepAnalysisIntentResponse@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = GetSleepAnalysisIntentResponse.code.getter();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path setter for GetSleepAnalysisIntentResponse.code : GetSleepAnalysisIntentResponse(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  GetSleepAnalysisIntentResponse.code.setter(v4);
  return MEMORY[0x277D82BD8](v3);
}

char *GetSleepAnalysisIntentResponse.init(code:userActivity:)(uint64_t a1, uint64_t a2)
{
  v6 = [v7 init];
  MEMORY[0x277D82BE0](v6);
  v3 = &v6[OBJC_IVAR___GetSleepAnalysisIntentResponse_code];
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

id GetSleepAnalysisIntentResponse.init()()
{
  v3 = 0;
  *OBJC_IVAR___GetSleepAnalysisIntentResponse_code = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for GetSleepAnalysisIntentResponse();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id GetSleepAnalysisIntentResponse.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetSleepAnalysisIntentResponse.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___GetSleepAnalysisIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for GetSleepAnalysisIntentResponse();
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

id GetSleepAnalysisIntentResponse.__allocating_init(backingStore:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithBackingStore_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetSleepAnalysisIntentResponse.init(backingStore:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___GetSleepAnalysisIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for GetSleepAnalysisIntentResponse();
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

id GetSleepAnalysisIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
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

id GetSleepAnalysisIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  v9 = 0;
  v8 = a1;
  *OBJC_IVAR___GetSleepAnalysisIntentResponse_code = 0;

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
  v7.super_class = type metadata accessor for GetSleepAnalysisIntentResponse();
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

id GetSleepAnalysisIntentResponse.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetSleepAnalysisIntentResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type GetSleepAnalysisIntentResponseCode and conformance GetSleepAnalysisIntentResponseCode()
{
  v2 = lazy protocol witness table cache variable for type GetSleepAnalysisIntentResponseCode and conformance GetSleepAnalysisIntentResponseCode;
  if (!lazy protocol witness table cache variable for type GetSleepAnalysisIntentResponseCode and conformance GetSleepAnalysisIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type GetSleepAnalysisIntentResponseCode and conformance GetSleepAnalysisIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type GetSleepAnalysisIntentResponseCode and conformance GetSleepAnalysisIntentResponseCode;
  if (!lazy protocol witness table cache variable for type GetSleepAnalysisIntentResponseCode and conformance GetSleepAnalysisIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type GetSleepAnalysisIntentResponseCode and conformance GetSleepAnalysisIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

id GetSleepAnalysisIntentHandler.init(store:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  __dst[5] = a1;
  v11 = v1;
  outlined init with copy of QuantityPersisting?(a1, v8);
  if (v9)
  {
    outlined init with take of QuantityPersisting(v8, __dst);
  }

  else
  {
    v2.store.super.isa = CycleTrackingFetcher.init()().store.super.isa;
    __dst[3] = &type metadata for SleepAnalysisFetcher;
    __dst[4] = &protocol witness table for SleepAnalysisFetcher;
    __dst[0] = v2.store.super.isa;
    if (v9)
    {
      outlined destroy of QuantityPersisting?(v8);
    }
  }

  outlined init with take of QuantityPersisting(__dst, &v1[OBJC_IVAR____TtC19SiriWellnessIntents29GetSleepAnalysisIntentHandler_store]);
  v7.receiver = v11;
  v7.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v7, sel_init);
  MEMORY[0x277D82BE0](v4);
  v11 = v4;
  outlined destroy of QuantityPersisting?(a1);
  MEMORY[0x277D82BD8](v11);
  return v4;
}

uint64_t GetSleepAnalysisIntentHandler.handle(intent:)(uint64_t a1)
{
  v2[26] = v1;
  v2[25] = a1;
  v2[18] = v2;
  v2[19] = 0;
  v2[20] = 0;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v2[29] = v3;
  v8 = *(v3 - 8);
  v2[30] = v8;
  v9 = *(v8 + 64);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[34] = v4;
  v10 = *(v4 - 8);
  v2[35] = v10;
  v11 = *(v10 + 64);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[19] = a1;
  v2[20] = v1;
  v5 = v2[18];

  return MEMORY[0x2822009F8](GetSleepAnalysisIntentHandler.handle(intent:), 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 360);
  *(v6 + 144) = *v1;
  *(v6 + 368) = a1;

  v4 = *(v6 + 144);

  return MEMORY[0x2822009F8](GetSleepAnalysisIntentHandler.handle(intent:), 0);
}

uint64_t GetSleepAnalysisIntentHandler.handle(intent:)()
{
  v37 = v0;
  v1 = v0[37];
  v20 = v0[35];
  v22 = v0[34];
  v23 = v0[25];
  v0[18] = v0;
  v21 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *(v20 + 16);
  v0[38] = v2;
  v0[39] = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
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
  v0[40] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
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
    v32 = buf;
    v33 = v17;
    v34 = v18;
    serialize(_:at:)(2, &v32);
    serialize(_:at:)(1, &v32);
    v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36 = v26;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36 = v27;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    _os_log_impl(&dword_269912000, v30, v31, "Handling %@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v17, 1, v15);
    destroyStorage<A>(_:count:)(v18, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v19[41] = 0;
  v9 = v19[37];
  v10 = v19[34];
  v11 = v19[26];
  v8 = v19[35];
  MEMORY[0x277D82BD8](v30);
  v4 = *(v8 + 8);
  v19[42] = v4;
  v19[43] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v9, v10);
  outlined init with copy of QuantityPersisting(v11 + OBJC_IVAR____TtC19SiriWellnessIntents29GetSleepAnalysisIntentHandler_store, (v19 + 2));
  v14 = v19[5];
  v12 = v19[6];
  __swift_project_boxed_opaque_existential_1(v19 + 2, v14);
  v13 = (*(v12 + 8) + **(v12 + 8));
  v5 = *(*(v12 + 8) + 4);
  v6 = swift_task_alloc();
  v19[44] = v6;
  *v6 = v19[18];
  v6[1] = GetSleepAnalysisIntentHandler.handle(intent:);

  return v13(v14, v12);
}

{
  v58 = *(v0 + 376);
  *(v0 + 144) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if ((v58 & 1) == 0)
  {
    type metadata accessor for GetSleepAnalysisIntentResponse();
    v56 = GetSleepAnalysisIntentResponse.__allocating_init(code:userActivity:)(101, 0);
LABEL_22:
    v10 = *(v57 + 296);
    v13 = *(v57 + 288);
    v14 = *(v57 + 264);
    v15 = *(v57 + 256);
    v16 = *(v57 + 248);
    v17 = *(v57 + 224);
    v18 = *(v57 + 216);

    v11 = *(*(v57 + 144) + 8);
    v12 = *(v57 + 144);

    return v11(v56);
  }

  v55 = [*(v57 + 200) start];
  if (v55)
  {
    v52 = *(v57 + 256);
    v53 = *(v57 + 232);
    v54 = *(v57 + 224);
    v51 = *(v57 + 240);
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v51 + 32))(v54, v52, v53);
    (*(v51 + 56))(v54, 0, 1, v53);
    MEMORY[0x277D82BD8](v55);
  }

  else
  {
    (*(*(v57 + 240) + 56))(*(v57 + 224), 1, 1, *(v57 + 232));
  }

  v1 = (*(v57 + 240) + 48);
  v50 = *v1;
  if ((*v1)(*(v57 + 224), 1, *(v57 + 232)) == 1)
  {
    outlined destroy of Date?(*(v57 + 224));
LABEL_16:
    v32 = *(v57 + 320);
    v30 = *(v57 + 312);
    v31 = *(v57 + 304);
    v8 = *(v57 + 288);
    v29 = *(v57 + 272);
    v28 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v31(v8, v28, v29);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    v35 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v33))
    {
      v9 = *(v57 + 328);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v25 = createStorage<A>(capacity:type:)(0);
      v26 = createStorage<A>(capacity:type:)(0);
      *(v57 + 168) = buf;
      *(v57 + 176) = v25;
      *(v57 + 184) = v26;
      serialize(_:at:)(0, (v57 + 168));
      serialize(_:at:)(0, (v57 + 168));
      *(v57 + 192) = v35;
      v27 = swift_task_alloc();
      v27[2] = v57 + 168;
      v27[3] = v57 + 176;
      v27[4] = v57 + 184;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v9)
      {
      }

      _os_log_impl(&dword_269912000, oslog, v33, "Must provide a start and end Date for querying sleep", buf, 2u);
      destroyStorage<A>(_:count:)(v25, 0, v23);
      destroyStorage<A>(_:count:)(v26, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v21 = *(v57 + 344);
    v22 = *(v57 + 336);
    v19 = *(v57 + 288);
    v20 = *(v57 + 272);
    MEMORY[0x277D82BD8](oslog);
    v22(v19, v20);
    type metadata accessor for GetSleepAnalysisIntentResponse();
    v56 = GetSleepAnalysisIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    goto LABEL_22;
  }

  v48 = *(v57 + 200);
  v2 = (*(v57 + 240) + 32);
  v47 = *v2;
  (*v2)(*(v57 + 264), *(v57 + 224), *(v57 + 232));
  v49 = [v48 end];
  if (v49)
  {
    v43 = *(v57 + 256);
    v45 = *(v57 + 232);
    v46 = *(v57 + 216);
    v44 = *(v57 + 240);
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v47(v46, v43, v45);
    (*(v44 + 56))(v46, 0, 1, v45);
    MEMORY[0x277D82BD8](v49);
  }

  else
  {
    (*(*(v57 + 240) + 56))(*(v57 + 216), 1, 1, *(v57 + 232));
  }

  if (v50(*(v57 + 216), 1, *(v57 + 232)) == 1)
  {
    v42 = *(v57 + 264);
    v41 = *(v57 + 232);
    v40 = *(v57 + 240);
    outlined destroy of Date?(*(v57 + 216));
    (*(v40 + 8))(v42, v41);
    goto LABEL_16;
  }

  v36 = *(v57 + 208);
  v47(*(v57 + 248), *(v57 + 216), *(v57 + 232));
  outlined init with copy of QuantityPersisting(v36 + OBJC_IVAR____TtC19SiriWellnessIntents29GetSleepAnalysisIntentHandler_store, v57 + 56);
  v37 = *(v57 + 80);
  v38 = *(v57 + 88);
  __swift_project_boxed_opaque_existential_1((v57 + 56), v37);
  v39 = (*(v38 + 16) + **(v38 + 16));
  v3 = *(*(v38 + 16) + 4);
  v4 = swift_task_alloc();
  *(v57 + 360) = v4;
  *v4 = *(v57 + 144);
  v4[1] = GetSleepAnalysisIntentHandler.handle(intent:);
  v5 = *(v57 + 264);
  v6 = *(v57 + 248);

  return v39(v5, v6, v37, v38);
}

{
  v7 = v0[33];
  v6 = v0[31];
  v5 = v0[30];
  v8 = v0[29];
  v0[18] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v9 = *(v5 + 8);
  v9(v6, v8);
  v9(v7, v8);
  v16 = v0[46];
  v1 = v0[37];
  v10 = v0[36];
  v11 = v0[33];
  v12 = v0[32];
  v13 = v0[31];
  v14 = v0[28];
  v15 = v0[27];

  v2 = *(v0[18] + 8);
  v3 = v0[18];

  return v2(v16);
}

uint64_t GetSleepAnalysisIntentHandler.handle(intent:)(char a1)
{
  v6 = *v1;
  v3 = *(*v1 + 352);
  *(v6 + 144) = *v1;
  *(v6 + 376) = a1;

  v4 = *(v6 + 144);

  return MEMORY[0x2822009F8](GetSleepAnalysisIntentHandler.handle(intent:), 0);
}

uint64_t @objc closure #1 in GetSleepAnalysisIntentHandler.handle(intent:)(uint64_t a1, const void *a2, uint64_t a3)
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

  return GetSleepAnalysisIntentHandler.handle(intent:)(a1);
}

id GetSleepAnalysisIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id SleepAnalysisFetcher.morningIndexRange(for:duration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  v22 = a2;
  v10 = a3;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v7[1] = 0;
  v17 = type metadata accessor for Calendar();
  v15 = *(v17 - 8);
  v16 = v17 - 8;
  v8 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v18 = v7 - v8;
  v13 = type metadata accessor for Date();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v3 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v14 = v7 - v4;
  v27 = v5;
  v26 = v22;
  v25 = v10;
  (*(v11 + 16))(v7 - v4);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v24 = isa;
  (*(v11 + 8))(v14, v13);
  static Calendar.autoupdatingCurrent.getter();
  v19 = Calendar._bridgeToObjectiveC()().super.isa;
  (*(v15 + 8))(v18, v17);
  v21 = [(objc_class *)isa hk_morningIndexWithCalendar:v19];
  MEMORY[0x277D82BD8](v19);
  v23 = v21;
  MEMORY[0x277D82BD8](isa);
  return v21;
}

Swift::Double __swiftcall SleepAnalysisFetcher.roundToMinute(_:)(Swift::Double a1)
{
  v11 = a1;
  v15 = v1;
  v8 = "Fatal error";
  v9 = "Unexpectedly found nil while unwrapping an Optional value";
  v10 = "Swift/FloatingPointTypes.swift";
  v26 = 0.0;
  v25 = 0;
  v20 = type metadata accessor for FloatingPointRoundingRule();
  v18 = *(v20 - 8);
  v19 = v20 - 8;
  v13 = *(v18 + 64);
  v12 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20);
  v21 = &v5 - v12;
  v14 = v12;
  v2 = MEMORY[0x28223BE20](&v5 - v12);
  v17 = &v5 - v14;
  v26 = v2;
  v25 = v15;
  v16 = v2 / 60.0;
  v22 = MEMORY[0x277D84678];
  v3 = *MEMORY[0x277D84678];
  (*(v18 + 104))();
  v24 = v16;
  (*(v18 + 16))(v21, v17, v20);
  v23 = (*(v18 + 88))(v21, v20);
  if (v23 == *v22)
  {
    v24 = round(v16);
    goto LABEL_15;
  }

  if (v23 == *MEMORY[0x277D84670])
  {
    v24 = rint(v16);
    goto LABEL_15;
  }

  if (v23 == *MEMORY[0x277D84680])
  {
    goto LABEL_13;
  }

  if (v23 == *MEMORY[0x277D84688])
  {
LABEL_14:
    v24 = floor(v16);
    goto LABEL_15;
  }

  if (v23 == *MEMORY[0x277D84660])
  {
    v24 = trunc(v16);
    goto LABEL_15;
  }

  if (v23 != *MEMORY[0x277D84668])
  {
    Double._roundSlowPath(_:)();
    (*(v18 + 8))(v21, v20);
LABEL_15:
    v6 = v24;
    (*(v18 + 8))(v17, v20);
    return v6 * 60.0;
  }

  v7 = *&v16 >> 63;
  if (v16 >= 0.0)
  {
LABEL_13:
    v24 = ceil(v16);
    goto LABEL_15;
  }

  if (v7 == 1)
  {
    goto LABEL_14;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t SleepAnalysisFetcher.query(start:end:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a3;
  v3[11] = a2;
  v3[10] = a1;
  v3[4] = v3;
  v3[5] = 0;
  v3[6] = 0;
  v3[7] = 0;
  v3[8] = 0;
  v3[2] = 0;
  v3[3] = 0;
  v4 = type metadata accessor for Calendar();
  v3[13] = v4;
  v10 = *(v4 - 8);
  v3[14] = v10;
  v5 = *(v10 + 64) + 15;
  v3[15] = swift_task_alloc();
  v6 = type metadata accessor for DateComponents();
  v3[16] = v6;
  v11 = *(v6 - 8);
  v3[17] = v11;
  v7 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[5] = a1;
  v3[6] = a2;
  v3[7] = a3;
  v8 = v3[4];

  return MEMORY[0x2822009F8](SleepAnalysisFetcher.query(start:end:), 0);
}

uint64_t SleepAnalysisFetcher.query(start:end:)()
{
  v34 = v0[18];
  v33 = v0[17];
  v35 = v0[16];
  v31 = v0[15];
  v30 = v0[14];
  v32 = v0[13];
  v29 = v0[11];
  v28 = v0[10];
  v0[4] = v0;
  static Calendar.current.getter();
  v27 = type metadata accessor for Calendar.Component();
  _allocateUninitializedArray<A>(_:)();
  (*(*(v27 - 8) + 104))(v1, *MEMORY[0x277CC9968]);
  _finalizeUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type Calendar.Component and conformance Calendar.Component();
  Set.init(arrayLiteral:)();
  Calendar.dateComponents(_:from:to:)();

  (*(v30 + 8))(v31, v32);
  v36 = DateComponents.day.getter();
  v37 = v2;
  (*(v33 + 8))(v34, v35);
  v9 = v36;
  v10 = v37;
  if (v37)
  {
    v25 = 0;
  }

  else
  {
    v25 = v36;
  }

  v24 = v25 + 1;
  if (__OFADD__(v25, 1))
  {
    __break(1u);
  }

  else
  {
    v12 = v26[12];
    v22 = v12;
    v13 = v26[10];
    v26[8] = v24;
    v20 = SleepAnalysisFetcher.morningIndexRange(for:duration:)(v13, v24, v12);
    v21 = v14;
    v26[2] = v20;
    v26[3] = v14;
    v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("query(start:end:)", 0x11uLL, 1);
    v26[19] = v15._object;
    MEMORY[0x277D82BE0](v22);
    v23 = swift_task_alloc();
    v26[20] = v23;
    v23[2] = v20;
    v23[3] = v21;
    v23[4] = v22;
    v16 = *(MEMORY[0x277D859E0] + 4);
    v17 = swift_task_alloc();
    v26[21] = v17;
    SleepAnalysisIntentResponse = type metadata accessor for GetSleepAnalysisIntentResponse();
    v3 = 0;
    countAndFlagsBits = v15._countAndFlagsBits;
    object = v15._object;
    v6 = partial apply for closure #1 in SleepAnalysisFetcher.query(start:end:);
    v7 = v23;
    v8 = SleepAnalysisIntentResponse;
    *v17 = v26[4];
    v17[1] = SleepAnalysisFetcher.query(start:end:);
    v9 = v26 + 9;
    v10 = 0;
  }

  return MEMORY[0x2822007B8](v9, v10, v3, countAndFlagsBits, object, v6, v7, v8);
}

{
  v7 = *v0;
  v1 = *(*v0 + 168);
  v4 = *(*v0 + 160);
  v6 = *(*v0 + 152);
  v5 = *(*v0 + 96);
  *(v7 + 32) = *v0;

  v2 = *(v7 + 32);

  return MEMORY[0x2822009F8](SleepAnalysisFetcher.query(start:end:), 0);
}

{
  v1 = v0[18];
  v5 = v0[15];
  v0[4] = v0;
  v6 = v0[9];

  v2 = *(v0[4] + 8);
  v3 = v0[4];

  return v2(v6);
}

uint64_t closure #1 in SleepAnalysisFetcher.query(start:end:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v22 = a1;
  v36 = a2;
  v31 = a3;
  v37 = a4;
  v34 = partial apply for closure #1 in closure #1 in SleepAnalysisFetcher.query(start:end:);
  v44 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v39 = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetSleepAnalysisIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents30GetSleepAnalysisIntentResponseCs5NeverOGMR);
  v25 = *(v29 - 8);
  v26 = v29 - 8;
  v23 = v25;
  v24 = *(v25 + 64);
  v18 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v28 = &v17 - v18;
  v44 = v4;
  v42 = v5;
  v43 = v6;
  v41 = v7;
  v19 = 0;
  v21 = type metadata accessor for HKSleepDaySummaryQuery();
  v32 = 0;
  type metadata accessor for HKSleepDaySummaryQueryOptions();
  v8 = _allocateUninitializedArray<A>(_:)();
  *v9 = 2;
  _finalizeUninitializedArray<A>(_:)();
  v20 = v8;
  lazy protocol witness table accessor for type HKSleepDaySummaryQueryOptions and conformance HKSleepDaySummaryQueryOptions();
  SetAlgebra<>.init(arrayLiteral:)();
  v33 = v40;
  (*(v25 + 16))(v28, v22, v29);
  MEMORY[0x277D82BE0](v37);
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v30 = (v27 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  (*(v25 + 32))(v35 + v27, v28, v29);
  v10 = v31;
  v11 = v32;
  v12 = v33;
  v13 = v34;
  v14 = v35;
  v15 = v36;
  *(v35 + v30) = v37;
  v38 = HKSleepDaySummaryQuery.__allocating_init(morningIndexRange:ascending:limit:options:resultsHandler:)(v15, v10, 1, v11, v12, v13, v14);
  v39 = v38;
  MEMORY[0x277D82BE0](v37);
  [v37 executeQuery_];
  MEMORY[0x277D82BD8](v37);
  return MEMORY[0x277D82BD8](v38);
}

uint64_t closure #1 in closure #1 in SleepAnalysisFetcher.query(start:end:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v310 = a5;
  v309 = a4;
  v321 = a3;
  v311 = a2;
  v308 = a1;
  v303 = 0;
  v375 = 0;
  v374 = 0;
  v373 = 0;
  v372 = 0;
  v371 = 0;
  v298 = 0;
  v365 = 0;
  v355 = 0;
  v353 = 0;
  v352 = 0;
  v351 = 0;
  v347 = 0.0;
  v343 = 0.0;
  v328 = 0;
  v299 = type metadata accessor for DateInterval();
  v300 = *(v299 - 8);
  v301 = v300;
  v5 = *(v300 + 64);
  MEMORY[0x28223BE20](v299 - 8);
  v302 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  MEMORY[0x28223BE20](v303);
  v306 = (v304 + 15) & 0xFFFFFFFFFFFFFFF0;
  v305 = &v84 - v306;
  MEMORY[0x28223BE20](v7);
  v307 = &v84 - v306;
  v312 = type metadata accessor for Logger();
  v313 = *(v312 - 8);
  v314 = v313;
  v317 = *(v313 + 64);
  MEMORY[0x28223BE20](v321);
  v319 = (v317 + 15) & 0xFFFFFFFFFFFFFFF0;
  v315 = &v84 - v319;
  MEMORY[0x28223BE20](v8);
  v316 = &v84 - v319;
  MEMORY[0x28223BE20](v9);
  v318 = &v84 - v319;
  MEMORY[0x28223BE20](v10);
  v320 = &v84 - v319;
  v375 = v11;
  v374 = v12;
  v373 = v13;
  v372 = v14;
  v371 = v15;
  v16 = v13;
  if (v321)
  {
    v297 = v321;
    v17 = v320;
    v276 = v321;
    v328 = v321;
    v274 = Logger.wellnessIntents.unsafeMutableAddressor();
    v279 = 32;
    v283 = 32;
    v275 = &v327;
    swift_beginAccess();
    (*(v314 + 16))(v17, v274, v312);
    swift_endAccess();
    v18 = v276;
    v284 = 7;
    v285 = swift_allocObject();
    *(v285 + 16) = v276;
    v295 = Logger.logObject.getter();
    v277 = v295;
    v294 = static os_log_type_t.error.getter();
    v278 = v294;
    v280 = 17;
    v288 = swift_allocObject();
    v281 = v288;
    *(v288 + 16) = v279;
    v289 = swift_allocObject();
    v282 = v289;
    *(v289 + 16) = 8;
    v19 = swift_allocObject();
    v20 = v285;
    v286 = v19;
    *(v19 + 16) = partial apply for implicit closure #5 in HealthKitPersistor.save(quantityIdentifier:value:units:);
    *(v19 + 24) = v20;
    v21 = swift_allocObject();
    v22 = v286;
    v292 = v21;
    v287 = v21;
    *(v21 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v21 + 24) = v22;
    v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v290 = _allocateUninitializedArray<A>(_:)();
    v291 = v23;

    v24 = v288;
    v25 = v291;
    *v291 = partial apply for closure #1 in OSLogArguments.append(_:);
    v25[1] = v24;

    v26 = v289;
    v27 = v291;
    v291[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v27[3] = v26;

    v28 = v291;
    v29 = v292;
    v291[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v28[5] = v29;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v295, v294))
    {
      v31 = v298;
      v267 = static UnsafeMutablePointer.allocate(capacity:)();
      v264 = v267;
      v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v268 = createStorage<A>(capacity:type:)(0);
      v266 = v268;
      v270 = 1;
      v269 = createStorage<A>(capacity:type:)(1);
      v326[0] = v267;
      v325 = v268;
      v324 = v269;
      v271 = v326;
      serialize(_:at:)(2, v326);
      serialize(_:at:)(v270, v271);
      v322 = partial apply for closure #1 in OSLogArguments.append(_:);
      v323 = v281;
      closure #1 in osLogInternal(_:log:type:)(&v322, v271, &v325, &v324);
      v272 = v31;
      v273 = v31;
      if (v31)
      {
        v262 = 0;

        __break(1u);
      }

      else
      {
        v322 = partial apply for closure #1 in OSLogArguments.append(_:);
        v323 = v282;
        closure #1 in osLogInternal(_:log:type:)(&v322, v326, &v325, &v324);
        v260 = 0;
        v261 = 0;
        v322 = partial apply for closure #1 in OSLogArguments.append(_:);
        v323 = v287;
        closure #1 in osLogInternal(_:log:type:)(&v322, v326, &v325, &v324);
        v258 = 0;
        v259 = 0;
        _os_log_impl(&dword_269912000, v277, v278, "Error executing sleep query: %s", v264, 0xCu);
        destroyStorage<A>(_:count:)(v266, 0, v265);
        destroyStorage<A>(_:count:)(v269, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v264, MEMORY[0x277D84B78]);

        v263 = v258;
      }
    }

    else
    {
      v32 = v298;

      v263 = v32;
    }

    v33 = v263;

    (*(v314 + 8))(v320, v312);
    v256 = 0;
    type metadata accessor for GetSleepAnalysisIntentResponse();
    v326[1] = GetSleepAnalysisIntentResponse.__allocating_init(code:userActivity:)(5, v256);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetSleepAnalysisIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents30GetSleepAnalysisIntentResponseCs5NeverOGMR);
    CheckedContinuation.resume(returning:)();

    return v33;
  }

  if (!v311)
  {
    v34 = v318;
    v248 = Logger.wellnessIntents.unsafeMutableAddressor();
    v249 = &v370;
    v252 = 0;
    swift_beginAccess();
    (*(v314 + 16))(v34, v248, v312);
    swift_endAccess();
    v254 = Logger.logObject.getter();
    v250 = v254;
    v253 = static os_log_type_t.error.getter();
    v251 = v253;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v255 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v254, v253))
    {
      v81 = v298;
      v93 = static UnsafeMutablePointer.allocate(capacity:)();
      v89 = v93;
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v91 = 0;
      v94 = createStorage<A>(capacity:type:)(0);
      v92 = v94;
      v95 = createStorage<A>(capacity:type:)(v91);
      v369[0] = v93;
      v368 = v94;
      v367 = v95;
      v96 = 0;
      v97 = v369;
      serialize(_:at:)(0, v369);
      serialize(_:at:)(v96, v97);
      v366 = v255;
      v98 = &v84;
      MEMORY[0x28223BE20](&v84);
      v99 = &v84 - 6;
      *(&v84 - 4) = v82;
      *(&v84 - 3) = &v368;
      *(&v84 - 2) = &v367;
      v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v101 = v81;
      if (v81)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_269912000, v250, v251, "Could not unwrap day Summaries", v89, 2u);
        v87 = 0;
        destroyStorage<A>(_:count:)(v92, 0, v90);
        destroyStorage<A>(_:count:)(v95, v87, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v89, MEMORY[0x277D84B78]);

        v88 = v101;
      }
    }

    else
    {

      v88 = v298;
    }

    v86 = v88;

    (*(v314 + 8))(v318, v312);
    v85 = 0;
    type metadata accessor for GetSleepAnalysisIntentResponse();
    v369[1] = GetSleepAnalysisIntentResponse.__allocating_init(code:userActivity:)(5, v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetSleepAnalysisIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents30GetSleepAnalysisIntentResponseCs5NeverOGMR);
    CheckedContinuation.resume(returning:)();
    return v86;
  }

  v296 = v311;
  v244 = v311;
  v365 = v311;
  v364 = v311;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17HKSleepDaySummaryCGMd, &_sSaySo17HKSleepDaySummaryCGMR);
  v245 = v246;
  v247 = lazy protocol witness table accessor for type [HKSleepDaySummary] and conformance [A]();
  v35 = Collection.isEmpty.getter();
  if (v35)
  {
    v67 = v315;
    v121 = Logger.wellnessIntents.unsafeMutableAddressor();
    v128 = 32;
    v122 = &v363;
    swift_beginAccess();
    (*(v314 + 16))(v67, v121, v312);
    swift_endAccess();

    v129 = 7;
    v130 = swift_allocObject();
    *(v130 + 16) = v244;
    v140 = Logger.logObject.getter();
    v123 = v140;
    v139 = static os_log_type_t.error.getter();
    v124 = v139;
    v125 = 17;
    v133 = swift_allocObject();
    v126 = v133;
    *(v133 + 16) = 0;
    v134 = swift_allocObject();
    v127 = v134;
    *(v134 + 16) = 8;
    v68 = swift_allocObject();
    v69 = v130;
    v131 = v68;
    *(v68 + 16) = partial apply for implicit closure #2 in closure #1 in closure #1 in SleepAnalysisFetcher.query(start:end:);
    *(v68 + 24) = v69;
    v70 = swift_allocObject();
    v71 = v131;
    v137 = v70;
    v132 = v70;
    *(v70 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
    *(v70 + 24) = v71;
    v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v135 = _allocateUninitializedArray<A>(_:)();
    v136 = v72;

    v73 = v133;
    v74 = v136;
    *v136 = partial apply for closure #1 in OSLogArguments.append(_:);
    v74[1] = v73;

    v75 = v134;
    v76 = v136;
    v136[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v76[3] = v75;

    v77 = v136;
    v78 = v137;
    v136[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v77[5] = v78;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v140, v139))
    {
      v79 = v298;
      v115 = static UnsafeMutablePointer.allocate(capacity:)();
      v111 = v115;
      v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v113 = 0;
      v116 = createStorage<A>(capacity:type:)(0);
      v114 = v116;
      v117 = createStorage<A>(capacity:type:)(v113);
      v362[0] = v115;
      v361 = v116;
      v360 = v117;
      v118 = v362;
      serialize(_:at:)(0, v362);
      serialize(_:at:)(1, v118);
      v358 = partial apply for closure #1 in OSLogArguments.append(_:);
      v359 = v126;
      closure #1 in osLogInternal(_:log:type:)(&v358, v118, &v361, &v360);
      v119 = v79;
      v120 = v79;
      if (v79)
      {
        v109 = 0;

        __break(1u);
      }

      else
      {
        v358 = partial apply for closure #1 in OSLogArguments.append(_:);
        v359 = v127;
        closure #1 in osLogInternal(_:log:type:)(&v358, v362, &v361, &v360);
        v107 = 0;
        v108 = 0;
        v358 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
        v359 = v132;
        closure #1 in osLogInternal(_:log:type:)(&v358, v362, &v361, &v360);
        v105 = 0;
        v106 = 0;
        _os_log_impl(&dword_269912000, v123, v124, "No logged data found in the given date range (Day Summaries count is %ld)", v111, 0xCu);
        v104 = 0;
        destroyStorage<A>(_:count:)(v114, 0, v112);
        destroyStorage<A>(_:count:)(v117, v104, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v111, MEMORY[0x277D84B78]);

        v110 = v105;
      }
    }

    else
    {
      v80 = v298;

      v110 = v80;
    }

    v103 = v110;

    (*(v314 + 8))(v315, v312);
    v102 = 0;
    type metadata accessor for GetSleepAnalysisIntentResponse();
    v362[1] = GetSleepAnalysisIntentResponse.__allocating_init(code:userActivity:)(102, v102);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetSleepAnalysisIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents30GetSleepAnalysisIntentResponseCs5NeverOGMR);
    CheckedContinuation.resume(returning:)();

    return v103;
  }

  v36 = v316;
  v224 = Logger.wellnessIntents.unsafeMutableAddressor();
  v231 = 32;
  v225 = &v357;
  swift_beginAccess();
  (*(v314 + 16))(v36, v224, v312);
  swift_endAccess();

  v232 = 7;
  v233 = swift_allocObject();
  *(v233 + 16) = v244;
  v243 = Logger.logObject.getter();
  v226 = v243;
  v242 = static os_log_type_t.debug.getter();
  v227 = v242;
  v228 = 17;
  v236 = swift_allocObject();
  v229 = v236;
  *(v236 + 16) = 0;
  v237 = swift_allocObject();
  v230 = v237;
  *(v237 + 16) = 8;
  v37 = swift_allocObject();
  v38 = v233;
  v234 = v37;
  *(v37 + 16) = partial apply for implicit closure #2 in closure #1 in closure #1 in SleepAnalysisFetcher.query(start:end:);
  *(v37 + 24) = v38;
  v39 = swift_allocObject();
  v40 = v234;
  v240 = v39;
  v235 = v39;
  *(v39 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
  *(v39 + 24) = v40;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v238 = _allocateUninitializedArray<A>(_:)();
  v239 = v41;

  v42 = v236;
  v43 = v239;
  *v239 = partial apply for closure #1 in OSLogArguments.append(_:);
  v43[1] = v42;

  v44 = v237;
  v45 = v239;
  v239[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v45[3] = v44;

  v46 = v239;
  v47 = v240;
  v239[4] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
  v46[5] = v47;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v243, v242))
  {
    v48 = v298;
    v218 = static UnsafeMutablePointer.allocate(capacity:)();
    v214 = v218;
    v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v216 = 0;
    v219 = createStorage<A>(capacity:type:)(0);
    v217 = v219;
    v220 = createStorage<A>(capacity:type:)(v216);
    v333[0] = v218;
    v332 = v219;
    v331 = v220;
    v221 = v333;
    serialize(_:at:)(0, v333);
    serialize(_:at:)(1, v221);
    v329 = partial apply for closure #1 in OSLogArguments.append(_:);
    v330 = v229;
    closure #1 in osLogInternal(_:log:type:)(&v329, v221, &v332, &v331);
    v222 = v48;
    v223 = v48;
    if (v48)
    {
      v212 = 0;

      __break(1u);
    }

    else
    {
      v329 = partial apply for closure #1 in OSLogArguments.append(_:);
      v330 = v230;
      closure #1 in osLogInternal(_:log:type:)(&v329, v333, &v332, &v331);
      v210 = 0;
      v211 = 0;
      v329 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
      v330 = v235;
      closure #1 in osLogInternal(_:log:type:)(&v329, v333, &v332, &v331);
      v208 = 0;
      v209 = 0;
      _os_log_impl(&dword_269912000, v226, v227, "Day Summaries: %ld", v214, 0xCu);
      v207 = 0;
      destroyStorage<A>(_:count:)(v217, 0, v215);
      destroyStorage<A>(_:count:)(v220, v207, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v214, MEMORY[0x277D84B78]);

      v213 = v208;
    }
  }

  else
  {
    v49 = v298;

    v213 = v49;
  }

  v50 = v213;

  (*(v314 + 8))(v316, v312);

  v356 = v244;
  v204 = lazy protocol witness table accessor for type [HKSleepDaySummary] and conformance [A]();
  v51 = _ArrayProtocol.filter(_:)();
  v205 = v50;
  v206 = v51;
  if (v50)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v199 = v206;
    v201 = 0;
    v197 = type metadata accessor for HKSleepDaySummary();
    v198 = v197;
    v200 = MEMORY[0x26D6494A0](v199);
    v355 = v200;

    v354 = v244;
    v52 = _ArrayProtocol.filter(_:)();
    v202 = 0;
    v203 = v52;
    v195 = v52;
    v196 = MEMORY[0x26D6494A0]();
    v353 = v196;

    if (v200)
    {
      v194 = 0;
    }

    else
    {
      v194 = v196 == 0;
    }

    if (v194)
    {
      v53 = v202;
      v193 = 0;
      type metadata accessor for GetSleepAnalysisIntentResponse();
      v333[1] = GetSleepAnalysisIntentResponse.__allocating_init(code:userActivity:)(102, v193);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetSleepAnalysisIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents30GetSleepAnalysisIntentResponseCs5NeverOGMR);
      CheckedContinuation.resume(returning:)();

      return v53;
    }

    v54 = v202;
    v190 = 0;
    type metadata accessor for HKSHSleepMetricsEngine();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

    isa = Array._bridgeToObjectiveC()().super.isa;

    v187 = [ObjCClassFromMetadata sleepMetricsForDaySummaries_];
    v186 = v187;

    v352 = v187;
    type metadata accessor for GetSleepAnalysisIntentResponse();
    v189 = GetSleepAnalysisIntentResponse.__allocating_init(code:userActivity:)(4, v190);
    v188 = v189;
    v351 = v189;
    v55 = MEMORY[0x26D6494A0](v244, v198);
    [v189 setDaysSummarized_];
    [v189 setDaysWithAsleepData_];
    v349[1] = v244;
    v57 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #3 in closure #1 in closure #1 in SleepAnalysisFetcher.query(start:end:), v190, v245, MEMORY[0x277D839F8], MEMORY[0x277D84A98], v247, MEMORY[0x277D84AC0], v56);
    v191 = v54;
    v192 = v57;
    if (!v54)
    {
      v349[0] = v192;
      v180 = 0;
      v348 = 0;
      v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
      v179 = v181;
      v182 = lazy protocol witness table accessor for type [Double] and conformance [A]();
      Sequence.reduce<A>(_:_:)();
      v183 = 0;
      outlined destroy of [HKQuantityType](v349);
      v347 = v350;
      v58 = SleepAnalysisFetcher.roundToMinute(_:)(v350);
      [v188 setTotalInBedDuration_];
      v345[1] = v244;
      v60 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #4 in closure #1 in closure #1 in SleepAnalysisFetcher.query(start:end:), 0, v245, MEMORY[0x277D839F8], MEMORY[0x277D84A98], v247, MEMORY[0x277D84AC0], v59);
      v177 = 0;
      v178 = v60;
      v345[0] = v60;
      v344 = 0;
      Sequence.reduce<A>(_:_:)();
      v176 = 0;
      outlined destroy of [HKQuantityType](v345);
      v343 = v346;
      v61 = SleepAnalysisFetcher.roundToMinute(_:)(v346);
      [v188 setTotalAsleepDuration_];
      if (v196 >= 1)
      {
        v175 = [v186 averageInBedDuration];
        if (v175)
        {
          v174 = v175;
          v170 = v175;
          v169 = [objc_opt_self() secondUnit];
          [v170 doubleValueForUnit_];
          v171 = v62;

          v172 = v171;
          v173 = 0;
        }

        else
        {
          v172 = 0.0;
          v173 = 1;
        }

        v334 = v172;
        v335 = v173 & 1;
        if (v173)
        {
          v168 = 0.0;
        }

        else
        {
          v168 = v334;
        }

        [v188 setAverageInBedDuration_];
      }

      if (v200 >= 1)
      {
        v167 = [v186 averageSleepDuration];
        if (v167)
        {
          v166 = v167;
          v162 = v167;
          v161 = [objc_opt_self() secondUnit];
          [v162 doubleValueForUnit_];
          v163 = v63;

          v164 = v163;
          v165 = 0;
        }

        else
        {
          v164 = 0.0;
          v165 = 1;
        }

        v336 = v164;
        v337 = v165 & 1;
        if (v165)
        {
          v160 = 0.0;
        }

        else
        {
          v160 = v336;
        }

        [v188 setAverageAsleepDuration_];
      }

      v342 = v244;
      Collection.first.getter();
      v159 = v341;
      if (v341)
      {
        v158 = v159;
        v156 = v159;
        v157 = [v159 dateInterval];
        static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

        DateInterval.start.getter();
        (*(v301 + 8))(v302, v299);
        v65 = type metadata accessor for Date();
        (*(*(v65 - 8) + 56))(v307, 0, 1);
      }

      else
      {
        v64 = type metadata accessor for Date();
        (*(*(v64 - 8) + 56))(v307, 1);
      }

      v151 = type metadata accessor for Date();
      v152 = *(v151 - 8);
      v153 = v152;
      v154 = *(v152 + 48);
      v155 = (v152 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v154(v307, 1) == 1)
      {
        v150 = 0;
      }

      else
      {
        v149 = Date._bridgeToObjectiveC()().super.isa;
        (*(v153 + 8))(v307, v151);
        v150 = v149;
      }

      v147 = v150;
      [v188 setSummaryStartDate_];

      v340 = v244;
      lazy protocol witness table accessor for type [HKSleepDaySummary] and conformance [A]();
      BidirectionalCollection.last.getter();
      v148 = v339;
      if (v339)
      {
        v146 = v148;
        v144 = v148;
        v145 = [v148 dateInterval];
        static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

        DateInterval.end.getter();
        (*(v301 + 8))(v302, v299);
        (*(v153 + 56))(v305, 0, 1, v151);
      }

      else
      {
        (*(v153 + 56))(v305, 1, 1, v151);
      }

      if ((v154)(v305, 1, v151) == 1)
      {
        v143 = 0;
      }

      else
      {
        v142 = Date._bridgeToObjectiveC()().super.isa;
        (*(v153 + 8))(v305, v151);
        v143 = v142;
      }

      v141 = v143;
      [v188 setSummaryEndDate_];

      v66 = v188;
      v338 = v188;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetSleepAnalysisIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents30GetSleepAnalysisIntentResponseCs5NeverOGMR);
      CheckedContinuation.resume(returning:)();

      return v176;
    }
  }

  __break(1u);
  __break(1u);
  __break(1u);
  result = 0;
  __break(1u);
  return result;
}

id closure #3 in closure #1 in closure #1 in SleepAnalysisFetcher.query(start:end:)@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 inBedDuration];
  *a2 = v3;
  return result;
}

id closure #4 in closure #1 in closure #1 in SleepAnalysisFetcher.query(start:end:)@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sleepDuration];
  *a2 = v3;
  return result;
}

uint64_t protocol witness for SleepAnalysisFetching.isReadingAuthorized() in conformance SleepAnalysisFetcher()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v5 = *v0;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = protocol witness for QuantityPersisting.isLoggingAuthorized(for:) in conformance HealthKitPersistor;

  return CycleTrackingFetcher.isReadingAuthorized()(v5);
}

uint64_t protocol witness for SleepAnalysisFetching.query(start:end:) in conformance SleepAnalysisFetcher(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *v2;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for QuantityPersisting.save(quantityIdentifier:value:units:) in conformance HealthKitPersistor;

  return SleepAnalysisFetcher.query(start:end:)(a1, a2, v8);
}

id @nonobjc HKSleepDaySummaryQuery.init(morningIndexRange:ascending:limit:options:resultsHandler:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a6;
  v22 = a7;
  aBlock = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = 0;
  v19 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKSleepDaySummaryQuery, @guaranteed [HKSleepDaySummary]?, @guaranteed Error?) -> ();
  v20 = &block_descriptor_9;
  v14 = _Block_copy(&aBlock);
  v15 = [v13 initWithMorningIndexRange:a1 ascending:a2 limit:a3 & 1 options:a4 resultsHandler:a5];
  _Block_release(v14);

  return v15;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKSleepDaySummaryQuery, @guaranteed [HKSleepDaySummary]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);

  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  if (a3)
  {
    type metadata accessor for HKSleepDaySummary();
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

uint64_t sub_269A09768()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A097A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A097E8()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t partial apply for @objc closure #1 in GetSleepAnalysisIntentHandler.handle(intent:)()
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

  return @objc closure #1 in GetSleepAnalysisIntentHandler.handle(intent:)(v7, v5, v6);
}

unint64_t type metadata accessor for HKSleepDaySummaryQuery()
{
  v2 = lazy cache variable for type metadata for HKSleepDaySummaryQuery;
  if (!lazy cache variable for type metadata for HKSleepDaySummaryQuery)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKSleepDaySummaryQuery);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_269A099E4()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetSleepAnalysisIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents30GetSleepAnalysisIntentResponseCs5NeverOGMR) - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = (v1 + *(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v1);
  MEMORY[0x277D82BD8](*(v0 + v4));
  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in SleepAnalysisFetcher.query(start:end:)(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetSleepAnalysisIntentResponseCs5NeverOGMd, &_sScCy19SiriWellnessIntents30GetSleepAnalysisIntentResponseCs5NeverOGMR) - 8);
  v4 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v5 = *(v3 + ((v4 + *(v10 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in SleepAnalysisFetcher.query(start:end:)(a1, a2, a3, v3 + v4, v5);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t type metadata accessor for HKSleepDaySummary()
{
  v2 = lazy cache variable for type metadata for HKSleepDaySummary;
  if (!lazy cache variable for type metadata for HKSleepDaySummary)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKSleepDaySummary);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [HKSleepDaySummary] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HKSleepDaySummary] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKSleepDaySummary] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17HKSleepDaySummaryCGMd, &_sSaySo17HKSleepDaySummaryCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKSleepDaySummary] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [HKSleepDaySummary] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKSleepDaySummary] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17HKSleepDaySummaryCGMd, &_sSaySo17HKSleepDaySummaryCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKSleepDaySummary] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [HKSleepDaySummary] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKSleepDaySummary] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17HKSleepDaySummaryCGMd, &_sSaySo17HKSleepDaySummaryCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKSleepDaySummary] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_269A09CFC()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269A09D9C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A09DDC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A09E1C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269A09EB4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A09EF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t type metadata accessor for HKSHSleepMetricsEngine()
{
  v2 = lazy cache variable for type metadata for HKSHSleepMetricsEngine;
  if (!lazy cache variable for type metadata for HKSHSleepMetricsEngine)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKSHSleepMetricsEngine);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_269A0A140()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A0A180()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

id GetHealthQuantityIntent.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for GetHealthQuantityIntent();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id GetHealthQuantityIntent.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetHealthQuantityIntent.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for GetHealthQuantityIntent();
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

id GetHealthQuantityIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

id GetHealthQuantityIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v10.super_class = type metadata accessor for GetHealthQuantityIntent();
  v4 = objc_msgSendSuper2(&v10, sel_initWithIdentifier_backingStore_, v6, a3);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v4);
  v14 = v4;
  MEMORY[0x277D82BD8](a3);

  MEMORY[0x277D82BD8](v14);
  return v4;
}

id GetHealthQuantityIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

id GetHealthQuantityIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v16.super_class = type metadata accessor for GetHealthQuantityIntent();
  v6 = objc_msgSendSuper2(&v16, sel_initWithDomain_verb_parametersByName_, v11, v14, v8);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BE0](v6);
  v22 = v6;

  MEMORY[0x277D82BD8](v22);
  return v6;
}

id GetHealthQuantityIntent.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetHealthQuantityIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t GetHealthQuantityIntentResponseCode.init(rawValue:)(uint64_t a1)
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
    case 103:
      return 103;
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GetHealthQuantityIntentResponseCode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GetHealthQuantityIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance GetHealthQuantityIntentResponseCode(void *a1@<X8>)
{
  v2 = *v1;
  GetHealthQuantityIntentResponseCode.rawValue.getter();
  *a1 = v3;
}

uint64_t GetHealthQuantityIntentResponse.code.getter()
{
  v2 = (v0 + OBJC_IVAR___GetHealthQuantityIntentResponse_code);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t GetHealthQuantityIntentResponse.code.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___GetHealthQuantityIntentResponse_code);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for GetHealthQuantityIntentResponse.code : GetHealthQuantityIntentResponse@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = GetHealthQuantityIntentResponse.code.getter();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path setter for GetHealthQuantityIntentResponse.code : GetHealthQuantityIntentResponse(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  GetHealthQuantityIntentResponse.code.setter(v4);
  return MEMORY[0x277D82BD8](v3);
}

char *GetHealthQuantityIntentResponse.init(code:userActivity:)(uint64_t a1, uint64_t a2)
{
  v6 = [v7 init];
  MEMORY[0x277D82BE0](v6);
  v3 = &v6[OBJC_IVAR___GetHealthQuantityIntentResponse_code];
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

id GetHealthQuantityIntentResponse.init()()
{
  v3 = 0;
  *OBJC_IVAR___GetHealthQuantityIntentResponse_code = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for GetHealthQuantityIntentResponse();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id GetHealthQuantityIntentResponse.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetHealthQuantityIntentResponse.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___GetHealthQuantityIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for GetHealthQuantityIntentResponse();
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

id GetHealthQuantityIntentResponse.__allocating_init(backingStore:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithBackingStore_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetHealthQuantityIntentResponse.init(backingStore:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___GetHealthQuantityIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for GetHealthQuantityIntentResponse();
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

id GetHealthQuantityIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
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

id GetHealthQuantityIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  v9 = 0;
  v8 = a1;
  *OBJC_IVAR___GetHealthQuantityIntentResponse_code = 0;

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
  v7.super_class = type metadata accessor for GetHealthQuantityIntentResponse();
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

id GetHealthQuantityIntentResponse.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetHealthQuantityIntentResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type GetHealthQuantityIntentResponseCode and conformance GetHealthQuantityIntentResponseCode()
{
  v2 = lazy protocol witness table cache variable for type GetHealthQuantityIntentResponseCode and conformance GetHealthQuantityIntentResponseCode;
  if (!lazy protocol witness table cache variable for type GetHealthQuantityIntentResponseCode and conformance GetHealthQuantityIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type GetHealthQuantityIntentResponseCode and conformance GetHealthQuantityIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type GetHealthQuantityIntentResponseCode and conformance GetHealthQuantityIntentResponseCode;
  if (!lazy protocol witness table cache variable for type GetHealthQuantityIntentResponseCode and conformance GetHealthQuantityIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type GetHealthQuantityIntentResponseCode and conformance GetHealthQuantityIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

SiriWellnessIntents::DataProviderFactory __swiftcall DataProviderFactory.init()()
{
  isa = 0;
  type metadata accessor for HKHealthStore();
  v1.store.super.isa = NSDateFormatter.__allocating_init()();
  MEMORY[0x277D82BE0](v1.store.super.isa);
  isa = v1.store.super.isa;
  outlined destroy of HealthKitPersistor(&isa);
  return v1;
}

void *DataProviderFactory.ambiguousDistanceProvider()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x277D82BE0](a1);
  static HealthKitDistanceProvider<A>.ambiguousDistance(store:)(a1, v6);
  MEMORY[0x277D82BD8](a1);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents25HealthKitDistanceProviderVyAA012GetAmbiguousF14IntentResponseCGMd, &_s19SiriWellnessIntents25HealthKitDistanceProviderVyAA012GetAmbiguousF14IntentResponseCGMR);
  a2[4] = &protocol witness table for <A> HealthKitDistanceProvider<A>;
  v2 = swift_allocObject();
  *a2 = v2;
  return memcpy((v2 + 16), v6, 0x30uLL);
}

uint64_t sub_269A0BD4C()
{
  MEMORY[0x277D82BD8](v0[2]);
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocObject();
}

void *DataProviderFactory.bloodPressureProvider()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x277D82BE0](a1);
  static HealthKitCorrelationProvider<A>.bloodPressure(store:)(a1, v6);
  MEMORY[0x277D82BD8](a1);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents28HealthKitCorrelationProviderVyAA30GetBloodPressureIntentResponseCGMd, &_s19SiriWellnessIntents28HealthKitCorrelationProviderVyAA30GetBloodPressureIntentResponseCGMR);
  a2[4] = &protocol witness table for <A> HealthKitCorrelationProvider<A>;
  v2 = swift_allocObject();
  *a2 = v2;
  return memcpy((v2 + 16), v6, 0x40uLL);
}

uint64_t sub_269A0BE6C()
{
  MEMORY[0x277D82BD8](v0[2]);
  MEMORY[0x277D82BD8](v0[3]);
  MEMORY[0x277D82BD8](v0[4]);
  MEMORY[0x277D82BD8](v0[5]);
  v1 = v0[7];

  v2 = v0[9];

  return swift_deallocObject();
}

uint64_t PeriodFlow.init(healthLogValueCategoryValue:)(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v26 = a2;

  v24 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("light", 5uLL, 1);
  v22 = a1;
  v23 = a2;
  v11 = MEMORY[0x26D649310](v24._countAndFlagsBits, v24._object, a1, a2);
  outlined destroy of String.UTF8View(&v24);
  if (v11)
  {

    v27 = 3;
    v8 = 3;
LABEL_13:

    return v8;
  }

  v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("medium", 6uLL, 1);
  v19 = a1;
  v20 = a2;
  v7 = MEMORY[0x26D649310](v21._countAndFlagsBits, v21._object, a1, a2);
  outlined destroy of String.UTF8View(&v21);
  if (v7)
  {

    v27 = 4;
    v8 = 4;
    goto LABEL_13;
  }

  v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("heavy", 5uLL, 1);
  v16 = a1;
  v17 = a2;
  v6 = MEMORY[0x26D649310](v18._countAndFlagsBits, v18._object, a1, a2);
  outlined destroy of String.UTF8View(&v18);
  if (v6)
  {

    v27 = 5;
    v8 = 5;
    goto LABEL_13;
  }

  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("not", 3uLL, 1);
  v13 = a1;
  v14 = a2;
  v5 = MEMORY[0x26D649310](v15._countAndFlagsBits, v15._object, a1, a2);
  outlined destroy of String.UTF8View(&v15);
  if (v5)
  {

LABEL_11:
    v27 = 1;
    v8 = 1;
    goto LABEL_13;
  }

  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("none", 4uLL, 1);
  v4 = MEMORY[0x26D649310](v12._countAndFlagsBits, v12._object, a1, a2);
  outlined destroy of String.UTF8View(&v12);
  if (v4)
  {

    goto LABEL_11;
  }

  return 0;
}

uint64_t PeriodFlow.init(rawDoubleValue:)(unint64_t a1, char a2)
{
  if (a2)
  {
    return 2;
  }

  if (((a1 >> 52) & 0x7FF) == 0x7FF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (*&a1 <= -9.22337204e18)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (*&a1 >= 9.22337204e18)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v5 = PeriodFlow.init(rawValue:)(*&a1);
  if (v2)
  {
    return 2;
  }

  else
  {
    return v5;
  }
}

BOOL WellnessMagnitudeUnit.init(rawValue:)(uint64_t a1, void *a2)
{
  string._countAndFlagsBits = a1;
  string._object = a2;
  v2 = _allocateUninitializedArray<A>(_:)();
  *v3 = "none";
  *(v3 + 8) = 4;
  *(v3 + 16) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v6 = _findStringSwitchCase(cases:string:)(v2, string);

  return v6 != 0;
}

unint64_t lazy protocol witness table accessor for type WellnessMagnitudeUnit and conformance WellnessMagnitudeUnit()
{
  v2 = lazy protocol witness table cache variable for type WellnessMagnitudeUnit and conformance WellnessMagnitudeUnit;
  if (!lazy protocol witness table cache variable for type WellnessMagnitudeUnit and conformance WellnessMagnitudeUnit)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WellnessMagnitudeUnit and conformance WellnessMagnitudeUnit);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type WellnessMagnitudeUnit and conformance WellnessMagnitudeUnit;
  if (!lazy protocol witness table cache variable for type WellnessMagnitudeUnit and conformance WellnessMagnitudeUnit)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WellnessMagnitudeUnit and conformance WellnessMagnitudeUnit);
    return WitnessTable;
  }

  return v2;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance WellnessMagnitudeUnit@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = WellnessMagnitudeUnit.init(rawValue:)(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WellnessMagnitudeUnit@<X0>(uint64_t *a1@<X8>)
{
  result = WellnessMagnitudeUnit.rawValue.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

id DeleteHealthSampleIntent.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for DeleteHealthSampleIntent();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id DeleteHealthSampleIntent.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id DeleteHealthSampleIntent.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for DeleteHealthSampleIntent();
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

id DeleteHealthSampleIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

id DeleteHealthSampleIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v10.super_class = type metadata accessor for DeleteHealthSampleIntent();
  v4 = objc_msgSendSuper2(&v10, sel_initWithIdentifier_backingStore_, v6, a3);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v4);
  v14 = v4;
  MEMORY[0x277D82BD8](a3);

  MEMORY[0x277D82BD8](v14);
  return v4;
}

id DeleteHealthSampleIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

id DeleteHealthSampleIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v16.super_class = type metadata accessor for DeleteHealthSampleIntent();
  v6 = objc_msgSendSuper2(&v16, sel_initWithDomain_verb_parametersByName_, v11, v14, v8);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BE0](v6);
  v22 = v6;

  MEMORY[0x277D82BD8](v22);
  return v6;
}