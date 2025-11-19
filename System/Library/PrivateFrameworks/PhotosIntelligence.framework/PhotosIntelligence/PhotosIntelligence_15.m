id OUTLINED_FUNCTION_250_0()
{
  v3 = *(*(v0 + 48) + 8 * v1);

  return v3;
}

uint64_t OUTLINED_FUNCTION_251_0()
{

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_253_0()
{

  return sub_1C7551DBC();
}

uint64_t OUTLINED_FUNCTION_255_0()
{

  return sub_1C6FD7F70();
}

uint64_t OUTLINED_FUNCTION_256_0()
{
}

void *OUTLINED_FUNCTION_257_0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __dst)
{

  return memcpy(&__dst, (v11 - 208), 0x78uLL);
}

id OUTLINED_FUNCTION_260_1()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

id OUTLINED_FUNCTION_261_0(float a1)
{
  *v2 = a1;

  return v1;
}

BOOL OUTLINED_FUNCTION_262_0()
{

  return os_log_type_enabled(v0, v1);
}

void *OUTLINED_FUNCTION_281_0(void *result)
{
  *(v2 + 80) = result;
  result[2] = v4;
  result[3] = v1;
  result[4] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_283_0(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void *OUTLINED_FUNCTION_288_0()
{
  *v2 = v3;
  v2[1] = v1;
  v2[2] = v0;
  return v2;
}

uint64_t OUTLINED_FUNCTION_311_0(uint64_t a1)
{
  *(v1 + 192) = a1;

  return sub_1C7550CCC();
}

uint64_t OUTLINED_FUNCTION_312_0()
{

  return swift_task_create();
}

void OUTLINED_FUNCTION_313_0()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_314_0()
{

  return sub_1C7550A5C();
}

uint64_t OUTLINED_FUNCTION_315_0()
{

  return sub_1C7550A5C();
}

void OUTLINED_FUNCTION_317_0()
{

  sub_1C6F7ED9C();
}

uint64_t OUTLINED_FUNCTION_318_0()
{
}

uint64_t OUTLINED_FUNCTION_319_0()
{
  *(v0 + v2) = v1;
}

uint64_t OUTLINED_FUNCTION_320()
{
  __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t sub_1C7081F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C75604F0;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = sub_1C6F6D524();
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
  *(v12 + 104) = sub_1C7067A60();
  *(v12 + 72) = a2;
  sub_1C75504FC();
  v13 = sub_1C755112C();
  v14 = *(a1 + 24);
  v15 = [v14 predicate];
  if (v15)
  {
    v16 = v15;
    sub_1C6F65BE8(0, &qword_1EDD0FA80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
    v17 = OUTLINED_FUNCTION_13_1();
    *(v17 + 16) = xmmword_1C7564A90;
    *(v17 + 32) = v13;
    *(v17 + 40) = v16;
    v18 = v13;
    v19 = v16;
    v20 = sub_1C6F6E5C4();
    [v14 setPredicate_];
  }

  else
  {
    [v14 setPredicate_];
  }

  a5(0);
  v21 = a6(a1);

  return v21;
}

id static PHSuggestion.fetchRelatedCollection(with:options:)(void *a1, void *a2)
{
  [a1 type];
  v4 = [a1 relatedCollectionUUID];
  v5 = sub_1C755068C();
  v7 = v6;

  v8 = static PHSuggestion.fetchRelatedCollection(with:suggestionSubtype:options:)(v5, v7, [a1 subtype], a2);

  return v8;
}

id static PHSuggestion.fetchRelatedCollection(with:suggestionSubtype:options:)(uint64_t a1, int a2, __int16 a3, id a4)
{
  switch(a3)
  {
    case 910:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1C7565670;
      *(v4 + 32) = sub_1C7551EFC();
      sub_1C7082AAC(v4, a4);
      sub_1C6F65BE8(0, &qword_1EDD100F0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      OUTLINED_FUNCTION_2_18(ObjCClassFromMetadata);
      if (!v7)
      {
        return 0;
      }

      goto LABEL_14;
    case 911:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1C7565670;
      *(v4 + 32) = sub_1C7551EFC();
      sub_1C7082AAC(v4, a4);
      sub_1C6F65BE8(0, &qword_1EDD100F0);
      v27 = swift_getObjCClassFromMetadata();
      OUTLINED_FUNCTION_2_18(v27);
      if (!v28)
      {
        return 0;
      }

LABEL_14:
      OUTLINED_FUNCTION_5_5();
      objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
      v29 = OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_6_24(v29, xmmword_1C755BAB0);
      sub_1C7550B3C();
      v30 = OUTLINED_FUNCTION_9_17();
      v13 = OUTLINED_FUNCTION_3_21(v30, sel_fetchPersonsWithLocalIdentifiers_options_);
      goto LABEL_15;
    case 912:
      sub_1C6F65BE8(0, &qword_1EDD0FA88);
      v14 = swift_getObjCClassFromMetadata();
      OUTLINED_FUNCTION_2_18(v14);
      if (v15)
      {
        goto LABEL_7;
      }

      return 0;
    case 913:
      result = [a4 photoLibrary];
      if (result)
      {
        OUTLINED_FUNCTION_8_16();
        swift_initStackObject();
        v19 = a4;
        v20 = OUTLINED_FUNCTION_1_29();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
        inited = swift_initStackObject();
        OUTLINED_FUNCTION_4_19(inited, xmmword_1C755BAB0);
        sub_1C707DA44();
        v23 = sub_1C7081F9C(v20, v22, 1684632949, 0xE400000000000000, type metadata accessor for TripHighlightFetcher, sub_1C74B8450);

        if ([v23 count] < 1)
        {

          v42 = swift_initStackObject();
          OUTLINED_FUNCTION_4_19(v42, xmmword_1C755BAB0);
          sub_1C707DA44();
          v34 = v43;
          v35 = type metadata accessor for TripFetcher;
          v36 = static TripFetcher.fetchCollections(using:);
LABEL_22:
          v23 = sub_1C7081F9C(v20, v34, 1684632949, 0xE400000000000000, v35, v36);
LABEL_23:
        }

        else
        {
        }

        return v23;
      }

      else
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
      }

      return result;
    case 914:
      v8 = OUTLINED_FUNCTION_10_19(a1, sel_setIncludePendingMemories_);
      OUTLINED_FUNCTION_10_19(v8, sel_setIncludeLocalMemories_);
      sub_1C6F65BE8(0, &qword_1EDD0FA88);
      v9 = swift_getObjCClassFromMetadata();
      OUTLINED_FUNCTION_2_18(v9);
      if (!v10)
      {
        return 0;
      }

      OUTLINED_FUNCTION_5_5();
      v11 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
      v12 = OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_6_24(v12, xmmword_1C755BAB0);
      sub_1C7550B3C();
      OUTLINED_FUNCTION_9_17();
      v13 = [v11 fetchAssetCollectionsWithType:4 localIdentifiers:v4 options:a4];
      goto LABEL_15;
    case 915:
      result = [a4 photoLibrary];
      if (!result)
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_8_16();
      swift_initStackObject();
      v31 = a4;
      v20 = OUTLINED_FUNCTION_1_29();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
      v32 = swift_initStackObject();
      OUTLINED_FUNCTION_4_19(v32, xmmword_1C755BAB0);
      sub_1C707DA44();
      v34 = v33;
      v35 = type metadata accessor for DayEventsFetcher;
      v36 = sub_1C74B8438;
      goto LABEL_22;
    case 916:
      result = [a4 photoLibrary];
      if (!result)
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_8_16();
      swift_initStackObject();
      v37 = a4;
      v38 = OUTLINED_FUNCTION_1_29();
      type metadata accessor for SocialGroupFetcher();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
      v39 = swift_initStackObject();
      OUTLINED_FUNCTION_4_19(v39, xmmword_1C755BAB0);
      sub_1C707DA44();
      static SocialGroupFetcher.fetchCollections(using:uuids:)(v38, v40);
      v23 = v41;
      goto LABEL_23;
    case 917:
      v24 = OUTLINED_FUNCTION_10_19(a1, sel_setIncludeScreenRecordingsSmartAlbum_);
      OUTLINED_FUNCTION_10_19(v24, sel_setIncludeProResSmartAlbum_);
      sub_1C6F65BE8(0, &qword_1EDD0FA88);
      v25 = swift_getObjCClassFromMetadata();
      OUTLINED_FUNCTION_2_18(v25);
      if (!v26)
      {
        return 0;
      }

LABEL_7:
      OUTLINED_FUNCTION_5_5();
      objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
      v16 = OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_6_24(v16, xmmword_1C755BAB0);
      sub_1C7550B3C();
      v17 = OUTLINED_FUNCTION_9_17();
      v13 = OUTLINED_FUNCTION_3_21(v17, sel_fetchAssetCollectionsWithLocalIdentifiers_options_);
LABEL_15:
      v23 = v13;

      return v23;
    default:
      return 0;
  }
}

void *sub_1C7082A30(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C755065C();
  v5 = [a3 localIdentifierWithUUID_];

  if (!v5)
  {
    return 0;
  }

  sub_1C755068C();
  OUTLINED_FUNCTION_5_5();

  return v4;
}

void sub_1C7082AAC(uint64_t a1, void *a2)
{
  sub_1C6F65BE8(0, &qword_1EDD108E0);
  v3 = sub_1C7550B3C();

  [a2 setIncludedDetectionTypes_];
}

uint64_t sub_1C7082B30(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v31 = MEMORY[0x1E69E7CC0];
  sub_1C716E25C();
  v3 = v31;
  result = sub_1C7117368(a1);
  v7 = result;
  v9 = v8;
  v10 = 0;
  v25 = v2;
  while (1)
  {
    v11 = 0;
    v12 = 1 << *(a1 + 32);
    v13 = (v12 + 63) >> 6;
    v14 = 64;
    if (v13)
    {
      while (1)
      {
        v15 = *(a1 + v14);
        if (v15)
        {
          break;
        }

        v11 -= 64;
        --v13;
        v14 += 8;
        if (!v13)
        {
          goto LABEL_6;
        }
      }

      v16 = __clz(__rbit64(v15)) - v11;
      if (v6)
      {
        goto LABEL_20;
      }
    }

    else
    {
LABEL_6:
      v16 = 1 << *(a1 + 32);
      if (v6)
      {
        goto LABEL_20;
      }
    }

    if (v7 < v16)
    {
      break;
    }

    if (*(a1 + 36) != v9)
    {
      goto LABEL_18;
    }

    if (v7 >= v12)
    {
      goto LABEL_19;
    }

    v27 = v10 + 1;
    v17 = sub_1C7114FD0(v7, v9, 0, a1);
    a2(&v28, v10, v17);

    v18 = v28;
    v19 = v29;
    v20 = v30;
    v31 = v3;
    v21 = *(v3 + 16);
    if (v21 >= *(v3 + 24) >> 1)
    {
      v24 = v29;
      sub_1C716E25C();
      v19 = v24;
      v3 = v31;
    }

    *(v3 + 16) = v21 + 1;
    v22 = v3 + 32 * v21;
    *(v22 + 32) = v18;
    *(v22 + 40) = v19;
    *(v22 + 56) = v20;
    result = sub_1C733EECC(v7, v9, 0, a1);
    v7 = result;
    v9 = v23;
    ++v10;
    if (v27 == v25)
    {
      sub_1C6F9ED50(result, v23, v6 & 1);
      return v3;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C7082D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 53);
  if (qword_1EC213D38 != -1)
  {
    OUTLINED_FUNCTION_13_18();
  }

  v9 = sub_1C754FF1C();
  v10 = __swift_project_value_buffer(v9, qword_1EC216898);
  (*(*(v9 - 8) + 16))(a4, v10, v9);
  v11 = type metadata accessor for Hastings.TimeBasedClusterer();
  *(a4 + v11[5]) = 10;
  *(a4 + v11[6]) = 1202241536;
  v12 = a4 + v11[7];
  v13 = *(a1 + 16);
  *v12 = *a1;
  *(v12 + 16) = v13;
  *(v12 + 32) = *(a1 + 32);
  *(v12 + 45) = *(a1 + 45);
  *(v12 + 53) = v8;
  *(a4 + v11[8]) = a2;
  *(a4 + v11[9]) = a3;
  v14 = sub_1C754FEEC();
  v15 = sub_1C75511BC();
  v16 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 16777472;
    v18[4] = v8;
    _os_log_impl(&dword_1C6F5C000, v14, v15, "Initializing clusterer with random seed %hhu", v18, 5u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  type metadata accessor for Random();
  swift_allocObject();
  Random.init(randomSeed:)(v8);
  v19 = type metadata accessor for AgglomerativeKMeans();
  swift_allocObject();
  result = AgglomerativeKMeans.init(maxNumberOfClusters:distanceBlock:minDistance:random:randomSampler:)();
  v21 = (a4 + v11[10]);
  v21[3] = v19;
  v21[4] = &protocol witness table for KMeans;
  *v21 = result;
  return result;
}

uint64_t sub_1C7082F3C()
{
  v39 = *(v0 + 32);
  v41 = *(v0 + 56);
  sub_1C7083C34();
  v2 = sub_1C706D154(v1);
  sub_1C7083C34();
  v4 = sub_1C706D154(v3);
  sub_1C75504FC();
  sub_1C75504FC();
  v5 = v39;
  v38 = v4;
  v40 = v2;
  v6 = sub_1C708F3B0(v5, v2, v4);
  sub_1C7083C34();
  v8 = sub_1C706D154(v7);
  sub_1C75504FC();
  v9 = sub_1C708F1C4(v6, v8, 0.666666667);

  sub_1C7083C34();
  v11 = sub_1C706D154(v10);
  sub_1C75504FC();
  v12 = sub_1C708F1C4(v6, v11, 0.666666667);

  v13 = sub_1C7084DD8(v12, v9);
  v14 = *(sub_1C708F59C(v13, sub_1C708FA30, sub_1C708FA30) + 16);

  v15 = sub_1C75504FC();
  v16 = sub_1C708F59C(v15, sub_1C708F944, sub_1C708F944);

  v17 = *(v16 + 16);

  if (v14 != v17)
  {

    v27 = v17 < v14;
    if (v41)
    {
      goto LABEL_25;
    }

    return v27 & 1;
  }

  v18 = sub_1C75504FC();
  v19 = COERCE_DOUBLE(sub_1C7424890(v18));
  v21 = v20;

  v22 = 0.0;
  if (v21)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v19;
  }

  v24 = sub_1C725CBA4(v13);
  v26 = v25;

  if (v26)
  {
    if (v23 != 0.0)
    {
      goto LABEL_7;
    }

LABEL_12:
    v28 = *(v40 + 16);
    v29 = *(v38 + 16);
    if (v28 == v29)
    {
      v30 = sub_1C725CCB0(v40);
      v32 = v31;

      if (v32 && (v33 = sub_1C725CCB0(v38), v35 = v34, , v35))
      {
        if (v30 == v33 && v32 == v35)
        {
          v27 = 0;
        }

        else
        {
          v27 = sub_1C7551DBC();
        }

        if (v41)
        {
          goto LABEL_25;
        }
      }

      else
      {

        v27 = 1;
      }
    }

    else
    {

      v27 = v29 < v28;
      if (v41)
      {
        goto LABEL_25;
      }
    }

    return v27 & 1;
  }

  *&v22 = v24 & 0x7FFFFFFFFFFFFFFFLL;
  if (v23 == COERCE_DOUBLE(v24 & 0x7FFFFFFFFFFFFFFFLL))
  {
    goto LABEL_12;
  }

LABEL_7:

  v27 = v22 < v23;
  if (v41)
  {
LABEL_25:
    sub_1C7084754();
  }

  return v27 & 1;
}

uint64_t sub_1C7083304(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_76_4(), (sub_1C7551DBC() & 1) != 0))
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x737465737361 && a2 == 0xE600000000000000;
    if (v6 || (OUTLINED_FUNCTION_76_4(), (sub_1C7551DBC() & 1) != 0))
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001BLL && 0x80000001C759B660 == a2)
    {

      return 2;
    }

    else
    {
      OUTLINED_FUNCTION_76_4();
      v8 = sub_1C7551DBC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C7083404(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x737465737361;
  }

  return 0xD00000000000001BLL;
}

uint64_t sub_1C7083458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7083304(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7083480(uint64_t a1)
{
  v2 = sub_1C7083B2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70834BC(uint64_t a1)
{
  v2 = sub_1C7083B2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Hastings.Cluster.init(id:assets:eligibleAssetsByFeature:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t Hastings.Cluster.encode(to:)(void *a1)
{
  v4 = type metadata accessor for Hastings.Asset(0);
  v5 = OUTLINED_FUNCTION_18(v4);
  v76 = v6;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v77 = (v8 - v7);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_2();
  v82 = v10;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_63_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B8);
  OUTLINED_FUNCTION_3_0();
  v13 = v12;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v66 - v15;
  v17 = *(v1 + 24);
  v78 = *(v1 + 16);
  v80 = v17;
  v18 = a1[3];
  v19 = a1;
  v21 = v20;
  __swift_project_boxed_opaque_existential_1(v19, v18);
  sub_1C7083B2C();
  sub_1C755200C();
  LOBYTE(v84) = 0;
  v22 = v81;
  sub_1C7551CCC();
  if (v22)
  {
    return (*(v13 + 8))(v16, v21);
  }

  v73 = v13;
  v74 = v2;
  v84 = v78;
  v83 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168C8);
  sub_1C7083B80();
  sub_1C7551D2C();
  v66 = v21;
  v24 = v80;
  v25 = v80 + 64;
  OUTLINED_FUNCTION_11();
  v28 = v27 & v26;
  v30 = (v29 + 63) >> 6;
  sub_1C75504FC();
  v31 = 0;
  v32 = MEMORY[0x1E69E7CC8];
  v33 = v79;
  v70 = v25;
  v71 = 0;
  v34 = v74;
  v69 = v30;
  v67 = v16;
  if (!v28)
  {
    goto LABEL_5;
  }

  while (1)
  {
    v81 = v32;
LABEL_9:
    v75 = v28;
    v78 = v31;
    v36 = __clz(__rbit64(v28)) | (v31 << 6);
    v68 = type metadata accessor for Hastings.Feature();
    OUTLINED_FUNCTION_12();
    v38 = *(v37 + 72);
    OUTLINED_FUNCTION_2_19();
    sub_1C708CA24();
    v39 = *(*(v24 + 56) + 8 * v36);
    *(v34 + *(v33 + 48)) = v39;
    sub_1C6FD7F70();
    sub_1C75504FC();

    v40 = *(v39 + 16);
    if (v40)
    {
      v72 = v38;
      v84 = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C();
      v41 = v84;
      v42 = v77;
      OUTLINED_FUNCTION_15_4();
      v44 = v39 + v43;
      v46 = *(v45 + 72);
      do
      {
        OUTLINED_FUNCTION_3_22();
        OUTLINED_FUNCTION_90();
        sub_1C708CA24();
        v47 = *v42;
        v48 = v42[1];
        sub_1C75504FC();
        OUTLINED_FUNCTION_1_30();
        sub_1C7091C1C(v42, v49);
        v84 = v41;
        v51 = *(v41 + 16);
        v50 = *(v41 + 24);
        if (v51 >= v50 >> 1)
        {
          OUTLINED_FUNCTION_15(v50);
          sub_1C6F7ED9C();
          v42 = v77;
          v41 = v84;
        }

        *(v41 + 16) = v51 + 1;
        v52 = v41 + 16 * v51;
        *(v52 + 32) = v47;
        *(v52 + 40) = v48;
        v44 += v46;
        --v40;
      }

      while (v40);
      v16 = v67;
      v33 = v79;
    }

    else
    {
      v41 = MEMORY[0x1E69E7CC0];
    }

    v53 = v81;
    swift_isUniquelyReferenced_nonNull_native();
    v84 = v53;
    sub_1C6FC27A8();
    OUTLINED_FUNCTION_82_4();
    if (v56)
    {
      break;
    }

    v57 = v54;
    v58 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168E0);
    if (sub_1C7551A2C())
    {
      v59 = v82;
      v60 = sub_1C6FC27A8();
      v24 = v80;
      if ((v58 & 1) != (v61 & 1))
      {
        goto LABEL_31;
      }

      v57 = v60;
    }

    else
    {
      v59 = v82;
      v24 = v80;
    }

    v32 = v84;
    if (v58)
    {
      *(*(v84 + 56) + 8 * v57) = v41;
    }

    else
    {
      OUTLINED_FUNCTION_1_3(v84 + 8 * (v57 >> 6));
      OUTLINED_FUNCTION_2_19();
      sub_1C708CA24();
      *(*(v32 + 56) + 8 * v57) = v41;
      v62 = *(v32 + 16);
      v56 = __OFADD__(v62, 1);
      v63 = v62 + 1;
      if (v56)
      {
        goto LABEL_30;
      }

      *(v32 + 16) = v63;
    }

    v28 = (v75 - 1) & v75;
    OUTLINED_FUNCTION_0_32();
    sub_1C7091C1C(v59, v64);
    v34 = v74;
    sub_1C6FD7FC8(v74, &qword_1EC2168B0);
    v25 = v70;
    v30 = v69;
    v31 = v78;
    if (!v28)
    {
LABEL_5:
      while (1)
      {
        v35 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v35 >= v30)
        {

          v84 = v32;
          v83 = 2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168E8);
          sub_1C708CA7C();
          v65 = v66;
          sub_1C7551D2C();
          (*(v73 + 8))(v16, v65);
        }

        v28 = *(v25 + 8 * v35);
        ++v31;
        if (v28)
        {
          v81 = v32;
          v31 = v35;
          goto LABEL_9;
        }
      }

      __break(1u);
      break;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

unint64_t sub_1C7083B2C()
{
  result = qword_1EC2168C0;
  if (!qword_1EC2168C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2168C0);
  }

  return result;
}

unint64_t sub_1C7083B80()
{
  result = qword_1EC2168D0;
  if (!qword_1EC2168D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2168C8);
    sub_1C7091C74(&qword_1EC2168D8, type metadata accessor for Hastings.Asset);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2168D0);
  }

  return result;
}

void sub_1C7083C34()
{
  OUTLINED_FUNCTION_33();
  v1 = type metadata accessor for Hastings.Asset(0);
  v2 = OUTLINED_FUNCTION_18(v1);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14_0();
  v7 = (v6 - v5);
  v8 = *(v0 + 16);
  v9 = *(v8 + 16);
  if (v9)
  {
    OUTLINED_FUNCTION_32_8();
    sub_1C6F7ED9C();
    OUTLINED_FUNCTION_191();
    v11 = v8 + v10;
    v12 = *(v4 + 72);
    do
    {
      sub_1C708CA24();
      v14 = *v7;
      v13 = v7[1];
      sub_1C75504FC();
      OUTLINED_FUNCTION_1_30();
      sub_1C7091C1C(v7, v15);
      v16 = *(v18 + 16);
      if (v16 >= *(v18 + 24) >> 1)
      {
        sub_1C6F7ED9C();
      }

      *(v18 + 16) = v16 + 1;
      v17 = v18 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v13;
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C7083DA0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001C759B6A0 == a2;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E695774736562 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5372657473756C63 && a2 == 0xEB00000000657A69;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x4955557465737361 && a2 == 0xE900000000000044)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C7551DBC();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1C7083F0C(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_106();
  MEMORY[0x1CCA5E460](a1);
  return sub_1C7551FAC();
}

unint64_t sub_1C7083F4C(char a1)
{
  result = 0x6E695774736562;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x5372657473756C63;
      break;
    case 3:
      result = 0x4955557465737361;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_1C7083FE0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E69577473726966 && a2 == 0xE900000000000073)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_76_4();
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C708405C(void *a1, int a2)
{
  v38 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216958);
  OUTLINED_FUNCTION_3_0();
  v36 = v4;
  v37 = v3;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v29 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216960);
  OUTLINED_FUNCTION_3_0();
  v33 = v8;
  v34 = v7;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  v32 = &v29 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216968);
  OUTLINED_FUNCTION_3_0();
  v30 = v12;
  v31 = v11;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216970);
  OUTLINED_FUNCTION_3_0();
  v29 = v17;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v29 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216978);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v21);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7091764();
  v22 = v38;
  sub_1C755200C();
  switch(v22 >> 6)
  {
    case 1:
      v40 = 1;
      sub_1C7091860();
      OUTLINED_FUNCTION_55_7();
      v16 = v31;
      sub_1C7551CDC();
      v23 = *(v30 + 8);
      v24 = v15;
      goto LABEL_7;
    case 2:
      v41 = 2;
      sub_1C709180C();
      OUTLINED_FUNCTION_55_7();
      sub_1C7551CDC();
      goto LABEL_5;
    case 3:
      v42 = 3;
      sub_1C70917B8();
      OUTLINED_FUNCTION_55_7();
      sub_1C7551CDC();
LABEL_5:
      v24 = OUTLINED_FUNCTION_35_0();
      break;
    default:
      v39 = 0;
      sub_1C70918B4();
      OUTLINED_FUNCTION_55_7();
      sub_1C7551CDC();
      v23 = *(v29 + 8);
      v24 = v20;
LABEL_7:
      v25 = v16;
      break;
  }

  v23(v24, v25);
  v26 = OUTLINED_FUNCTION_94_2();
  return v27(v26);
}

uint64_t sub_1C70844B0(uint64_t a1)
{
  v2 = sub_1C70917B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70844EC(uint64_t a1)
{
  v2 = sub_1C70917B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7084528(uint64_t a1)
{
  v2 = sub_1C7091860();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7084564(uint64_t a1)
{
  v2 = sub_1C7091860();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C70845A0(uint64_t a1)
{
  v2 = sub_1C709180C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70845DC(uint64_t a1)
{
  v2 = sub_1C709180C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7084620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7083DA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7084648(uint64_t a1)
{
  v2 = sub_1C7091764();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7084684(uint64_t a1)
{
  v2 = sub_1C7091764();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C70846C0(uint64_t a1)
{
  v2 = sub_1C70918B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70846FC(uint64_t a1)
{
  v2 = sub_1C70918B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7084754()
{
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](120, 0xE100000000000000);
  v1 = OUTLINED_FUNCTION_216();
  MEMORY[0x1CCA5CD70](v1);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 16);
  sub_1C6FC7FC8();
  *(v0 + 16) = v3;

  return swift_endAccess();
}

uint64_t sub_1C7084814(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001C759B5C0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C7084894()
{
  OUTLINED_FUNCTION_106();
  MEMORY[0x1CCA5E460](0);
  return sub_1C7551FAC();
}

uint64_t sub_1C70848F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7084814(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C708491C(uint64_t a1)
{
  v2 = sub_1C7091A34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7084958(uint64_t a1)
{
  v2 = sub_1C7091A34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7084994()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C70849CC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2169D0);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_85_4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7091A34();
  sub_1C755200C();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2169E0);
  sub_1C7091A88();
  sub_1C7551D2C();
  return (*(v5 + 8))(v1, v3);
}

void sub_1C7084B50(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = 0;
  v29 = *a1;
  v30 = *(*a1 + 16);
  v28 = *a1 + 32;
  v7 = a2 + 56;
  v32 = a3 + 56;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
LABEL_2:
    if (v6 == v30)
    {
      *a4 = v8;
      return;
    }

    if (v6 >= *(v29 + 16))
    {
      break;
    }

    v9 = (v28 + 24 * v6);
    v11 = *v9;
    v10 = v9[1];
    v12 = v9[2];
    ++v6;
    if (*(a2 + 16))
    {
      sub_1C7551F3C();
      swift_bridgeObjectRetain_n();
      sub_1C75505AC();
      v13 = sub_1C7551FAC();
      v14 = ~(-1 << *(a2 + 32));
      while (1)
      {
        v15 = v13 & v14;
        if (((*(v7 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        v16 = (*(a2 + 48) + 16 * v15);
        if (*v16 != v11 || v16[1] != v10)
        {
          v18 = sub_1C7551DBC();
          v13 = v15 + 1;
          if ((v18 & 1) == 0)
          {
            continue;
          }
        }

LABEL_22:

        v31 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C716E1F0();
        }

        v25 = *(v8 + 16);
        if (v25 >= *(v8 + 24) >> 1)
        {
          sub_1C716E1F0();
        }

        *(v8 + 16) = v25 + 1;
        v26 = (v8 + 24 * v25);
        v26[4] = v11;
        v26[5] = v10;
        v26[6] = v12;
        v6 = v31;
        goto LABEL_2;
      }
    }

    else
    {
      swift_bridgeObjectRetain_n();
    }

    if (*(a3 + 16))
    {
      sub_1C7551F3C();
      sub_1C75505AC();
      v19 = sub_1C7551FAC();
      v20 = ~(-1 << *(a3 + 32));
      while (1)
      {
        v21 = v19 & v20;
        if (((*(v32 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {
          break;
        }

        v22 = (*(a3 + 48) + 16 * v21);
        if (*v22 != v11 || v22[1] != v10)
        {
          v24 = sub_1C7551DBC();
          v19 = v21 + 1;
          if ((v24 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_22;
      }
    }

    swift_bridgeObjectRelease_n();
  }

  __break(1u);
}

uint64_t sub_1C7084DD8(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1C708FF78(a1, sub_1C725130C, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

void sub_1C7084E5C(uint64_t *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>, long double a4@<D0>)
{
  v4 = a3;
  v5 = *a1;
  v6 = *(*a1 + 16);
  if (v6)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1C716DA70();
    v9 = 0;
    v28 = v5;
    v29 = *(v5 + 16);
    v27 = v5 + 32;
    v10 = v30;
    while (v9 != v29)
    {
      if (v9 >= *(v5 + 16))
      {
        goto LABEL_26;
      }

      v11 = 0.0;
      if (*(a2 + 16))
      {
        v12 = v6;
        v13 = (v27 + 24 * v9);
        v15 = *v13;
        v14 = v13[1];
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75505AC();
        v16 = sub_1C7551FAC();
        v17 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v18 = v16 & v17;
          if (((*(a2 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
          {
            break;
          }

          v19 = (*(a2 + 48) + 16 * v18);
          if (*v19 != v15 || v19[1] != v14)
          {
            v21 = sub_1C7551DBC();
            v16 = v18 + 1;
            if ((v21 & 1) == 0)
            {
              continue;
            }
          }

          v11 = pow(a4, v9);
          goto LABEL_15;
        }

LABEL_15:
        v6 = v12;
        v5 = v28;
      }

      v22 = *(v30 + 16);
      v23 = v22 + 1;
      if (v22 >= *(v30 + 24) >> 1)
      {
        sub_1C716DA70();
      }

      ++v9;
      *(v30 + 16) = v23;
      *(v30 + 8 * v22 + 32) = v11;
      if (v9 == v6)
      {
        v4 = a3;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
    v23 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v23)
    {
LABEL_21:
      v24 = 0.0;
      v25 = 32;
      do
      {
        v24 = v24 + *(v10 + v25);
        v25 += 8;
        --v23;
      }

      while (v23);
    }

    else
    {
      v24 = 0.0;
    }

    *v4 = v24;
  }
}

uint64_t sub_1C7085094()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC216898);
  v1 = __swift_project_value_buffer(v0, qword_1EC216898);
  if (qword_1EC213E88 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EC25B6F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1C708515C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000019 && 0x80000001C759B630 == a2;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C43646574726F73 && a2 == 0xEE00737265747375)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C7085234(char a1)
{
  OUTLINED_FUNCTION_106();
  MEMORY[0x1CCA5E460](a1 & 1);
  return sub_1C7551FAC();
}

uint64_t sub_1C7085274(char a1)
{
  if (a1)
  {
    return 0x6C43646574726F73;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_1C70852C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C708515C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C70852EC(uint64_t a1)
{
  v2 = sub_1C7091908();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7085328(uint64_t a1)
{
  v2 = sub_1C7091908();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7085364()
{

  return v0;
}

uint64_t sub_1C708538C()
{
  sub_1C7085364();
  OUTLINED_FUNCTION_30();

  return swift_deallocClassInstance();
}

uint64_t sub_1C70853BC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2169A8);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7091908();
  sub_1C755200C();
  v13 = *(v3 + 16);
  HIBYTE(v12) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  sub_1C6FC18BC();
  OUTLINED_FUNCTION_54_8();
  if (!v2)
  {
    v13 = *(v3 + 24);
    HIBYTE(v12) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2169B8);
    sub_1C709195C();
    OUTLINED_FUNCTION_54_8();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C7085530()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

float sub_1C7085560(uint64_t *a1, uint64_t *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v6 = *a2;
  __C = v2;
  static FloatVector.- infix(_:_:)(&__C, &v6, v8);
  v3 = *(v8[0] + 16);
  LODWORD(__C) = 2143289344;
  vDSP_svesq((v8[0] + 32), 1, &__C, v3);
  v4 = *&__C;

  return sqrtf(v4);
}

uint64_t Hastings.TimeBasedClusterer.cluster(_:progressReporter:)(uint64_t a1, uint64_t a2)
{
  v97 = a1;
  v6 = type metadata accessor for Hastings.Asset(0);
  v7 = OUTLINED_FUNCTION_18(v6);
  v95 = v8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_66_9();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v85 - v10;
  v98 = sub_1C754F2FC();
  OUTLINED_FUNCTION_3_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_206_1();
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v85 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v85 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v85 - v22;
  v99 = a2;
  sub_1C754F2CC();
  if (!v3)
  {
    v93 = v4;
    v94 = v11;
    v92 = v2;
    sub_1C754F2BC();
    sub_1C754F2BC();
    v26 = *(v13 + 32);
    v27 = v23;
    v28 = v98;
    v26(v17, v27, v98);
    v30 = sub_1C7085D18(v97, v17);
    v85 = v26;
    v86 = v13 + 32;
    v87 = 0;
    v88 = v13;
    v31 = (v96 + *(type metadata accessor for Hastings.TimeBasedClusterer() + 28));
    if (*(v31 + 48) == 1)
    {
      v100[0] = *(v31 + 4);
      sub_1C75504FC();
      static Hastings.TimeBasedClusterer.shotlistDrivenClusters(from:shotlist:)(v30, v100, v32, v33, v34, v35, v36, v37, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
      a2 = v38;

      if (*(a2 + 16))
      {
        v39 = OUTLINED_FUNCTION_22_16();
        v31(v39, v28);
      }

      else
      {

        v31 = *(v31 + 5);
        v41 = *(v31 + 2);
        v42 = MEMORY[0x1E69E7CC0];
        v91 = v20;
        if (v41)
        {
          v100[0] = MEMORY[0x1E69E7CC0];
          sub_1C716E23C(0, v41, 0);
          v42 = v100[0];
          v31 = (v31 + 32);
          do
          {
            v43 = *v31;
            v100[0] = v42;
            v45 = *(v42 + 16);
            v44 = *(v42 + 24);
            sub_1C75504FC();
            if (v45 >= v44 >> 1)
            {
              sub_1C716E23C((v44 > 1), v45 + 1, 1);
              v42 = v100[0];
            }

            *(v42 + 16) = v45 + 1;
            *(v42 + 8 * v45 + 32) = v43;
            v31 = (v31 + 24);
            --v41;
          }

          while (v41);
          v28 = v98;
        }

        v46 = sub_1C7069D48(v42);

        if (v46)
        {
          if (*(v46 + 16))
          {
            v47 = v28;
            v48 = sub_1C754FEEC();
            v49 = sub_1C75511BC();
            v50 = OUTLINED_FUNCTION_72();
            if (os_log_type_enabled(v50, v51))
            {
              OUTLINED_FUNCTION_96_0();
              v52 = swift_slowAlloc();
              *v52 = 0;
              _os_log_impl(&dword_1C6F5C000, v48, v49, "No shotlist-driven clusters, falling back to only retrieved assets", v52, 2u);
              OUTLINED_FUNCTION_235();
              MEMORY[0x1CCA5F8E0]();
            }

            v53 = 0;
            v90 = *(v97 + 16);
            v89 = MEMORY[0x1E69E7CC0];
            v25 = v47;
LABEL_22:
            v54 = v53;
            while (v54 != v90)
            {
              v55 = v54 + 1;
              v26 = *(v95 + 72);
              OUTLINED_FUNCTION_3_22();
              sub_1C708CA24();
              if (*(v46 + 16))
              {
                v57 = *v94;
                v56 = v94[1];
                sub_1C7551F3C();
                sub_1C75505AC();
                sub_1C7551FAC();
                OUTLINED_FUNCTION_38_7();
                while (1)
                {
                  v59 = v58 & v100;
                  if (((*(v46 + 56 + (((v58 & v100) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v58 & (&vars0 + 88))) & 1) == 0)
                  {
                    break;
                  }

                  v60 = (*(v46 + 48) + 16 * v59);
                  if (*v60 != v57 || v60[1] != v56)
                  {
                    v62 = sub_1C7551DBC();
                    v58 = v59 + 1;
                    if ((v62 & 1) == 0)
                    {
                      continue;
                    }
                  }

                  v53 = v55;
                  OUTLINED_FUNCTION_4_20();
                  OUTLINED_FUNCTION_92_5();
                  sub_1C7091B68();
                  v65 = v89;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v67 = v65;
                  v101 = v65;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v68 = OUTLINED_FUNCTION_90_0();
                    sub_1C716E298(v68, v69, v70);
                    v67 = v101;
                  }

                  v72 = *(v67 + 16);
                  v71 = *(v67 + 24);
                  if (v72 >= v71 >> 1)
                  {
                    v73 = OUTLINED_FUNCTION_15(v71);
                    sub_1C716E298(v73, v72 + 1, 1);
                    v67 = v101;
                  }

                  *(v67 + 16) = v72 + 1;
                  v89 = v67;
                  OUTLINED_FUNCTION_4_20();
                  sub_1C7091B68();
                  v25 = v98;
                  goto LABEL_22;
                }
              }

              OUTLINED_FUNCTION_1_30();
              v63 = OUTLINED_FUNCTION_92_5();
              sub_1C7091C1C(v63, v64);
              v54 = v55;
              v25 = v98;
            }

            v74 = OUTLINED_FUNCTION_216();
            v85(v74);
            v75 = OUTLINED_FUNCTION_173();
            a2 = v96;
            v76 = v87;
            v78 = sub_1C7085D18(v75, v77);
            if (!v76)
            {
              a2 = v78;

              OUTLINED_FUNCTION_100_3();
              (*(v26 + 1))(v99, v25);
              return a2;
            }

            v24 = v99;
            v13 = v88;
            goto LABEL_4;
          }
        }

        v79 = sub_1C754FEEC();
        v80 = sub_1C75511BC();
        v81 = OUTLINED_FUNCTION_72();
        if (os_log_type_enabled(v81, v82))
        {
          OUTLINED_FUNCTION_96_0();
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&dword_1C6F5C000, v79, v80, "No shotlist-driven clusters and no anchor assets, nothing to curate", v83, 2u);
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        v84 = OUTLINED_FUNCTION_22_16();
        v31(v84, v28);
        a2 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v40 = OUTLINED_FUNCTION_22_16();
      v31(v40, v28);
      a2 = v30;
    }

    v31(v99, v28);
    return a2;
  }

  v25 = v98;
  v24 = v99;
LABEL_4:
  (*(v13 + 8))(v24, v25);
  return a2;
}

uint64_t sub_1C7085D18(uint64_t a1, uint64_t *a2)
{
  v353 = a1;
  v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215148);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_2();
  v347 = v8;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_108_0(v12);
  *&v327 = sub_1C754F2FC();
  OUTLINED_FUNCTION_3_0();
  v326 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_108_0(v16);
  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A10);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_108_0(v19);
  v356 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v317 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_130();
  v355 = v24;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_108_0(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  v33 = OUTLINED_FUNCTION_76(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_14_2();
  v346 = v34;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_130();
  v351 = v39;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v40);
  v42 = (&v311 - v41);
  v354 = type metadata accessor for Hastings.Asset(0);
  OUTLINED_FUNCTION_3_0();
  v338 = v43;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_78();
  v47 = v45 - v46;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_66_9();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v311 - v50;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_99_5();
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v311 - v54;
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_206_1();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_63_7();
  v58 = v352;
  sub_1C754F2CC();
  *&v328 = v58;
  if (v58)
  {
    return (*(v326 + 8))(a2, v327);
  }

  v315 = v55;
  v349 = v5;
  v335 = v51;
  v324 = v2;
  v343 = v47;
  v312 = a2;
  v60 = *(v353 + 16);
  i = v60;
  if (v60)
  {
    v345 = v42;
    v61 = *(v354 + 32);
    OUTLINED_FUNCTION_14_17();
    a2 = (v63 + v62);
    v352 = MEMORY[0x1E69E7CC0];
    v65 = *(v64 + 72);
    v66 = v356;
    v340 = v61;
    v339 = v65;
    *&v344 = v3;
    do
    {
      OUTLINED_FUNCTION_3_22();
      sub_1C708CA24();
      v67 = v61;
      v68 = v345;
      sub_1C6FD7F70();
      if (__swift_getEnumTagSinglePayload(v68, 1, v66) == 1)
      {
        sub_1C6FD7FC8(v68, &unk_1EC219230);
        v69 = *v4;
        v70 = v4[1];
        sub_1C75504FC();
        OUTLINED_FUNCTION_1_30();
        sub_1C7091C1C(v4, v71);
        v72 = v352;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB1814();
          v72 = v79;
        }

        v3 = v344;
        v73 = v72;
        v74 = *(v72 + 16);
        v352 = v73;
        v75 = *(v73 + 24);
        if (v74 >= v75 >> 1)
        {
          OUTLINED_FUNCTION_15(v75);
          sub_1C6FB1814();
          v352 = v80;
        }

        v76 = v352;
        *(v352 + 16) = v74 + 1;
        v77 = v76 + 16 * v74;
        *(v77 + 32) = v69;
        *(v77 + 40) = v70;
        v66 = v356;
        v61 = v340;
        v65 = v339;
      }

      else
      {
        OUTLINED_FUNCTION_1_30();
        sub_1C7091C1C(v4, v78);
        sub_1C6FD7FC8(v68, &unk_1EC219230);
        v3 = v344;
        v61 = v67;
      }

      a2 = &v65[a2];
      --v60;
    }

    while (v60);
  }

  else
  {
    v352 = MEMORY[0x1E69E7CC0];
    v66 = v356;
  }

  v81 = v66;
  if (*(v352 + 16))
  {
    v82 = v352;
    sub_1C75504FC();
    OUTLINED_FUNCTION_52_8();
    v83 = sub_1C754FEEC();
    a2 = sub_1C755119C();

    if (os_log_type_enabled(v83, a2))
    {
      v84 = OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_98();
      v85 = swift_slowAlloc();
      v358 = v85;
      *v84 = 136315138;
      v86 = MEMORY[0x1CCA5D090](v82, MEMORY[0x1E69E6158]);
      v88 = sub_1C6F765A4(v86, v87, &v358);

      *(v84 + 4) = v88;
      OUTLINED_FUNCTION_56_1();
      _os_log_impl(v89, v90, v91, v92, v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v85);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v93 = *(v336 + *(type metadata accessor for Hastings.TimeBasedClusterer() + 36));
    v81 = v356;
    if (v93)
    {
      *(v93 + 16) = v352;
      sub_1C75504FC();
    }
  }

  v94 = 0;
  v340 = MEMORY[0x1E69E7CC0];
  v95 = &unk_1C7563720;
  OUTLINED_FUNCTION_74_3();
  while (i != v94)
  {
    OUTLINED_FUNCTION_3_22();
    sub_1C708CA24();
    v96 = v351;
    sub_1C6FD7F70();
    if (__swift_getEnumTagSinglePayload(v96, 1, v81) == 1)
    {
      OUTLINED_FUNCTION_1_30();
      sub_1C7091C1C(v3, v97);
      v98 = OUTLINED_FUNCTION_117_0();
      sub_1C6FD7FC8(v98, v99);
      ++v94;
    }

    else
    {
      v100 = OUTLINED_FUNCTION_117_0();
      sub_1C6FD7FC8(v100, v101);
      OUTLINED_FUNCTION_4_20();
      sub_1C7091B68();
      v102 = v340;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v358 = v102;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        a2 = &v358;
        sub_1C716E298(0, *(v102 + 16) + 1, 1);
        OUTLINED_FUNCTION_74_3();
        v102 = v358;
      }

      v105 = *(v102 + 16);
      v104 = *(v102 + 24);
      v106 = v105 + 1;
      if (v105 >= v104 >> 1)
      {
        v107 = OUTLINED_FUNCTION_15(v104);
        a2 = &v358;
        sub_1C716E298(v107, v108, 1);
        OUTLINED_FUNCTION_74_3();
        v102 = v358;
      }

      ++v94;
      *(v102 + 16) = v106;
      v340 = v102;
      OUTLINED_FUNCTION_4_20();
      sub_1C7091B68();
      v81 = v356;
    }
  }

  v109 = v340;

  sub_1C75504FC();
  OUTLINED_FUNCTION_52_8();
  v110 = sub_1C754FEEC();
  sub_1C755118C();
  v111 = OUTLINED_FUNCTION_23();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    *v113 = 134218240;
    *(v113 + 4) = *(v109 + 16);

    *(v113 + 12) = 2048;
    *(v113 + 14) = i;

    OUTLINED_FUNCTION_56_1();
    _os_log_impl(v114, v115, v116, v117, v113, 0x16u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_101_3();
  v118 = *(v109 + 16);
  v119 = v356;
  if (v118)
  {
    v351 = *(v354 + 32);
    OUTLINED_FUNCTION_15_4();
    v121 = v109 + v120;
    i = *(v122 + 72);
    v345 = (v123 + 32);
    v124 = (v123 + 8);
    v353 = MEMORY[0x1E69E7CC0];
    v344 = xmmword_1C755BAB0;
    do
    {
      OUTLINED_FUNCTION_3_22();
      v125 = v349;
      sub_1C708CA24();
      sub_1C6FD7F70();
      if (__swift_getEnumTagSinglePayload(v95, 1, v119) == 1)
      {
        OUTLINED_FUNCTION_1_30();
        sub_1C7091C1C(v125, v126);
        sub_1C6FD7FC8(v95, &unk_1EC219230);
      }

      else
      {
        (*v345)(a2, v95, v119);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2150D0);
        v127 = v119;
        v128 = swift_allocObject();
        *(v128 + 16) = v344;
        sub_1C754DE3C();
        *&v129 = v129;
        *(v128 + 32) = LODWORD(v129);
        (*v124)(a2, v127);
        OUTLINED_FUNCTION_1_30();
        sub_1C7091C1C(v125, v130);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v131 = v353;
        }

        else
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB2DBC();
          v131 = v133;
        }

        v95 = *(v131 + 16);
        v132 = *(v131 + 24);
        a2 = (v95 + 1);
        if (v95 >= v132 >> 1)
        {
          OUTLINED_FUNCTION_15(v132);
          sub_1C6FB2DBC();
          v131 = v134;
        }

        *(v131 + 16) = a2;
        v353 = v131;
        *(v131 + 8 * v95 + 32) = v128;
        v119 = v356;
        OUTLINED_FUNCTION_101_3();
      }

      v121 += i;
      --v118;
    }

    while (v118);
  }

  else
  {
    v353 = MEMORY[0x1E69E7CC0];
  }

  v135 = type metadata accessor for Hastings.TimeBasedClusterer();
  v136 = v336 + *(v135 + 40);
  v137 = *(v136 + 24);
  v138 = *(v136 + 32);
  v139 = OUTLINED_FUNCTION_173();
  __swift_project_boxed_opaque_existential_1(v139, v140);
  v141 = v328;
  (*(v138 + 16))(v353, v137, v138);
  if (v141)
  {

    return (*(v326 + 8))(v312, v327);
  }

  v142 = OUTLINED_FUNCTION_173();
  __swift_project_boxed_opaque_existential_1(v142, v143);
  v144 = OUTLINED_FUNCTION_216();
  v146 = v145(v144);
  v147 = v340;
  if (!v146)
  {

    sub_1C7091BC0();
    swift_allocError();
    *v191 = 1;
    swift_willThrow();
    return (*(v326 + 8))(v312, v327);
  }

  v148 = v146;
  v349 = v135;
  *&v328 = 0;
  v351 = *(v146 + 16);

  sub_1C75504FC();
  v149 = 0;
  v150 = MEMORY[0x1E69E7CC8];
  for (i = v148; ; v148 = i)
  {
    v151 = v331;
    if (v351 == v149)
    {
      break;
    }

    if (v149 >= *(v148 + 16))
    {
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
      sub_1C7551E4C();
      __break(1u);

      __break(1u);
      return result;
    }

    v152 = *(v147 + 16);
    if (v149 == v152)
    {
      break;
    }

    if (v149 >= v152)
    {
      goto LABEL_107;
    }

    *v337 = *(v148 + 8 * v149 + 32);
    sub_1C708CA24();
    OUTLINED_FUNCTION_94_2();
    sub_1C6FD7F70();
    v153 = *v151;
    OUTLINED_FUNCTION_4_20();
    sub_1C7091B68();
    sub_1C708CA24();
    swift_isUniquelyReferenced_nonNull_native();
    v358 = v150;
    v154 = sub_1C6FCABD0(v153);
    if (__OFADD__(v150[2], (v155 & 1) == 0))
    {
      goto LABEL_108;
    }

    v156 = v154;
    v157 = v155;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A20);
    v158 = sub_1C7551A2C();
    v150 = v358;
    if (v158)
    {
      v159 = sub_1C6FCABD0(v153);
      if ((v157 & 1) != (v160 & 1))
      {
        goto LABEL_111;
      }

      v156 = v159;
    }

    if ((v157 & 1) == 0)
    {
      OUTLINED_FUNCTION_1_3(&v150[v156 >> 6]);
      *(v150[6] + 8 * v156) = v153;
      *(v150[7] + 8 * v156) = MEMORY[0x1E69E7CC0];
      v161 = v150[2];
      v162 = __OFADD__(v161, 1);
      v163 = v161 + 1;
      if (v162)
      {
        goto LABEL_109;
      }

      v150[2] = v163;
    }

    v164 = v150[7];
    v165 = *(v164 + 8 * v156);
    v166 = swift_isUniquelyReferenced_nonNull_native();
    *(v164 + 8 * v156) = v165;
    if ((v166 & 1) == 0)
    {
      v171 = OUTLINED_FUNCTION_24_0();
      sub_1C6FB2ED4(v171, v172, v173, v165);
      v165 = v174;
      *(v164 + 8 * v156) = v174;
    }

    v168 = *(v165 + 16);
    v167 = *(v165 + 24);
    if (v168 >= v167 >> 1)
    {
      OUTLINED_FUNCTION_15(v167);
      OUTLINED_FUNCTION_89_5();
      sub_1C6FB2ED4(v175, v176, v177, v165);
      *(v164 + 8 * v156) = v178;
    }

    OUTLINED_FUNCTION_1_30();
    sub_1C7091C1C(v169, v170);
    sub_1C6FD7FC8(v337, &qword_1EC216A10);
    *(*(v164 + 8 * v156) + 16) = v168 + 1;
    OUTLINED_FUNCTION_4_20();
    sub_1C7091B68();
    ++v149;
    v147 = v340;
  }

  sub_1C75504FC();
  OUTLINED_FUNCTION_52_8();
  v179 = sub_1C754FEEC();
  sub_1C755117C();
  v180 = OUTLINED_FUNCTION_23();
  v182 = os_log_type_enabled(v180, v181);
  v183 = v330;
  v184 = v326;
  v185 = v314;
  if (v182)
  {
    v186 = OUTLINED_FUNCTION_41_0();
    *v186 = 134217984;
    *(v186 + 4) = v150[2];

    OUTLINED_FUNCTION_56_1();
    _os_log_impl(v187, v188, v189, v190, v186, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v192 = v327;
  v193 = v313;
  sub_1C754F2BC();
  (*(v184 + 32))(v185, v193, v192);
  OUTLINED_FUNCTION_52_8();
  v141 = v328;
  sub_1C708826C(v194, v195);
  if (v141)
  {

    v197 = OUTLINED_FUNCTION_216();
    return v198(v197);
  }

  v199 = v196;
  v358 = v196;
  sub_1C75504FC();
  sub_1C708C988(&v358, sub_1C7422CE4, &type metadata for Hastings.Cluster, sub_1C708D190, sub_1C708CC90);
  v326 = 0;

  v200 = v358;
  v201 = *(v336 + SHIDWORD(v349[4].isa));
  if (v201)
  {
    v141 = *(v201 + 24);
    *(v201 + 24) = v358;
  }

  v335 = v200;
  sub_1C75504FC();
  v202 = sub_1C754FEEC();
  v203 = sub_1C755117C();
  v204 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v204, v205))
  {
    v206 = OUTLINED_FUNCTION_41_0();
    *v206 = 134217984;
    v207 = *(v199 + 16);

    *(v206 + 4) = v207;

    _os_log_impl(&dword_1C6F5C000, v202, v203, "There are %ld sorted clusters with the extracted features", v206, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v208 = v347;
  v209 = v323;
  v210 = v329;
  v211 = v322;
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v212, v213, v214, v356);
  v216 = v335;
  v217 = v348;
  v218 = v321;
  v332 = *(v335 + 2);
  if (v332)
  {
    v219 = 0;
    v331 = (v335 + 32);
    v220 = (v317 + 32);
    *&v344 = v317 + 8;
    *&v215 = 136316162;
    v328 = v215;
    *&v215 = 136315138;
    v327 = v215;
    i = v317 + 32;
    v345 = (v317 + 16);
    while (v219 < *(v216 + 2))
    {
      v341 = v219;
      v221 = &v331[4 * v219];
      v222 = v221[1];
      v337 = *v221;
      v223 = v221[2];
      v141 = v221[3];
      v340 = v222;
      sub_1C75504FC();
      sub_1C75504FC();
      v339 = v141;
      sub_1C75504FC();
      sub_1C754DE8C();
      sub_1C754DE6C();
      v224 = *(v217 + 48);
      v225 = *v220;
      v226 = v218;
      v227 = v356;
      (*v220)(v210, v226, v356);
      v351 = v225;
      v225(v210 + v224, v211, v227);
      OUTLINED_FUNCTION_216();
      sub_1C6FD7F70();
      v342 = v223;
      v228 = *(v223 + 16);
      v229 = v346;
      v230 = v343;
      if (v228)
      {
        v353 = *(v354 + 32);
        OUTLINED_FUNCTION_14_17();
        v232 = v342 + v231;
        v352 = *(v233 + 72);
        do
        {
          OUTLINED_FUNCTION_3_22();
          sub_1C708CA24();
          sub_1C6FD7F70();
          v234 = v356;
          if (__swift_getEnumTagSinglePayload(v229, 1, v356) == 1)
          {
            OUTLINED_FUNCTION_1_30();
            sub_1C7091C1C(v230, v235);
            sub_1C6FD7FC8(v229, &unk_1EC219230);
            sub_1C7091CBC();
          }

          else
          {
            v236 = v355;
            (v351)(v355, v229, v234);
            sub_1C7091C74(&qword_1EDD0F9E0, MEMORY[0x1E6969530]);
            v237 = sub_1C755060C();
            v238 = *v345;
            if (v237)
            {
              v239 = v236;
            }

            else
            {
              v239 = v209;
            }

            v349 = *v345;
            (v238)(v208, v239, v234);
            v240 = *(v348 + 48);
            v241 = sub_1C755061C();
            OUTLINED_FUNCTION_1_30();
            sub_1C7091C1C(v230, v242);
            if (v241)
            {
              sub_1C6FD7FC8(v209, &qword_1EC215148);
              v208 = v347;
              (v351)(v347 + v240, v355, v234);
            }

            else
            {
              (*v344)(v355, v234);
              v208 = v347;
              (v349)(v347 + v240, v209 + v240, v234);
              sub_1C6FD7FC8(v209, &qword_1EC215148);
            }

            v229 = v346;
            v230 = v343;
          }

          OUTLINED_FUNCTION_94_2();
          sub_1C7091CBC();
          v232 += v352;
          --v228;
        }

        while (v228);
      }

      sub_1C6FD7FC8(v329, &qword_1EC215148);
      v243 = v320;
      sub_1C7091CBC();
      v244 = *(v348 + 48);
      v245 = v333;
      v246 = v356;
      v247 = v351;
      (v351)(v333, v243, v356);
      v248 = v334;
      v247(v334, v243 + v244, v246);
      v249 = v318;
      sub_1C6FD7F70();
      if (__swift_getEnumTagSinglePayload(v249, 1, v246) == 1)
      {
        sub_1C6FD7FC8(v249, &unk_1EC219230);
      }

      else
      {
        v250 = v316;
        v247(v316, v249, v246);
        sub_1C754DEAC();
        sub_1C7089E3C(v251);
        OUTLINED_FUNCTION_52_8();
        v252 = sub_1C754FEEC();
        sub_1C755117C();
        v253 = OUTLINED_FUNCTION_23();
        if (os_log_type_enabled(v253, v254))
        {
          v255 = OUTLINED_FUNCTION_41_0();
          OUTLINED_FUNCTION_98();
          v256 = swift_slowAlloc();
          v357 = v256;
          *v255 = v327;
          v257 = OUTLINED_FUNCTION_117_0();
          v260 = sub_1C6F765A4(v257, v258, v259);

          *(v255 + 4) = v260;
          _os_log_impl(&dword_1C6F5C000, v252, v245, "%s between clusters", v255, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v256);
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        else
        {
        }

        (*v344)(v250, v246);
        v248 = v334;
        v245 = v333;
      }

      sub_1C754DEAC();
      *(swift_allocObject() + 16) = v261;
      *(swift_allocObject() + 16) = 0;
      *(swift_allocObject() + 16) = 0;
      OUTLINED_FUNCTION_30();
      v262 = swift_allocObject();
      OUTLINED_FUNCTION_95_5(v262);
      OUTLINED_FUNCTION_27_12(1918985593, 0xE400000000000000, 31536000.0);
      v263 = OUTLINED_FUNCTION_91_4();
      OUTLINED_FUNCTION_27_12(v263, v264, 2592000.0);
      OUTLINED_FUNCTION_27_12(7954788, 0xE300000000000000, 86400.0);
      OUTLINED_FUNCTION_27_12(1920298856, 0xE400000000000000, 3600.0);
      v265 = OUTLINED_FUNCTION_53_10();
      OUTLINED_FUNCTION_27_12(v265, v266, v267);
      OUTLINED_FUNCTION_27_12(0x646E6F636573, 0xE600000000000000, 1.0);
      swift_beginAccess();
      sub_1C75504FC();

      v268 = *v345;
      v269 = v325;
      (*v345)(v325, v245, v246);
      v270 = v319;
      (v268)(v319, v248, v246);
      v271 = v340;
      sub_1C75504FC();
      v272 = v342;
      sub_1C75504FC();
      sub_1C75504FC();
      OUTLINED_FUNCTION_52_8();
      v273 = sub_1C754FEEC();
      LODWORD(v353) = sub_1C755117C();
      v274 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v274, v275))
      {
        v276 = swift_slowAlloc();
        v352 = swift_slowAlloc();
        v357 = v352;
        *v276 = v328;
        sub_1C75504FC();
        v277 = sub_1C6F765A4(v337, v271, &v357);
        v349 = v273;
        v278 = v277;

        *(v276 + 4) = v278;
        *(v276 + 12) = 2048;
        v279 = *(v272 + 16);

        *(v276 + 14) = v279;

        *(v276 + 22) = 2080;
        v280 = OUTLINED_FUNCTION_94_2();
        v283 = sub_1C6F765A4(v280, v281, v282);

        *(v276 + 24) = v283;
        *(v276 + 32) = 2080;
        objc_opt_self();
        v284 = v270;
        v285 = v246;
        v286 = v325;
        v287 = sub_1C754DECC();
        v288 = OUTLINED_FUNCTION_104_3(v287, sel_localizedStringFromDate_dateStyle_timeStyle_);

        v289 = sub_1C755068C();
        v291 = v290;

        v292 = *v344;
        v293 = v286;
        v246 = v285;
        (*v344)(v293, v285);
        v294 = v292;
        v295 = sub_1C6F765A4(v289, v291, &v357);

        *(v276 + 34) = v295;
        *(v276 + 42) = 2080;
        v296 = sub_1C754DECC();
        v297 = OUTLINED_FUNCTION_104_3(v296, sel_localizedStringFromDate_dateStyle_timeStyle_);

        v298 = sub_1C755068C();
        v300 = v299;

        v294(v284, v246);
        v301 = sub_1C6F765A4(v298, v300, &v357);

        *(v276 + 44) = v301;
        v302 = v349;
        _os_log_impl(&dword_1C6F5C000, v349, v353, "Cluster %s (%ld assets) lasts %s, from %s to %s", v276, 0x34u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();

        v294(v333, v246);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();

        v303 = *v344;
        v304 = OUTLINED_FUNCTION_35_0();
        v303(v304);
        (v303)(v269, v246);
        (v303)(v333, v246);
      }

      v183 = v330;
      sub_1C6FD7FC8(v330, &unk_1EC219230);
      v218 = v321;
      v305 = v341 + 1;
      v220 = i;
      (v351)(v183, v334, v246);
      OUTLINED_FUNCTION_25_8();
      __swift_storeEnumTagSinglePayload(v306, v307, v308, v246);
      v219 = v305;
      v309 = v305 == v332;
      v208 = v347;
      v217 = v348;
      v209 = v323;
      v210 = v329;
      v211 = v322;
      v216 = v335;
      if (v309)
      {
        goto LABEL_103;
      }
    }

    goto LABEL_110;
  }

LABEL_103:
  v310 = v326;
  sub_1C754F2EC();
  sub_1C6FD7FC8(v183, &unk_1EC219230);
  if (v310)
  {
  }

  else
  {
    return v335;
  }
}

void static Hastings.TimeBasedClusterer.shotlistDrivenClusters(from:shotlist:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = type metadata accessor for Hastings.Asset(0);
  v28 = OUTLINED_FUNCTION_18(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_85_4();
  if (!*(*v24 + 16))
  {
    if (qword_1EC213D38 == -1)
    {
LABEL_28:
      v56 = sub_1C754FF1C();
      __swift_project_value_buffer(v56, qword_1EC216898);
      v57 = sub_1C754FEEC();
      sub_1C755117C();
      v58 = OUTLINED_FUNCTION_23();
      if (os_log_type_enabled(v58, v59))
      {
        OUTLINED_FUNCTION_96_0();
        v60 = swift_slowAlloc();
        *v60 = 0;
        OUTLINED_FUNCTION_56_1();
        _os_log_impl(v61, v62, v63, v64, v60, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      sub_1C75504FC();
      goto LABEL_57;
    }

LABEL_61:
    OUTLINED_FUNCTION_13_18();
    goto LABEL_28;
  }

  v113[0] = *v24;
  Hastings.ShotlistRetrieval.assetUUIDs.getter();
  v30 = v29;
  v31 = *(v26 + 16);
  if (v31)
  {
    v109 = MEMORY[0x1E69E7CC0];
    sub_1C716E2F0(0, v31, 0);
    v32 = v109;
    v100 = v26 + 32;
    v33 = 0;
    v34 = v31;
    v99 = v31;
    while (1)
    {
      v35 = (v100 + 32 * v33);
      v102 = *v35;
      v36 = v35[2];
      v107 = *(v36 + 16);
      v104 = v35[3];
      v105 = v35[1];
      if (v107)
      {
        break;
      }

      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v37 = 0;
LABEL_23:
      v109 = v32;
      v51 = *(v32 + 16);
      v50 = *(v32 + 24);
      if (v51 >= v50 >> 1)
      {
        OUTLINED_FUNCTION_15(v50);
        OUTLINED_FUNCTION_89_5();
        sub_1C716E2F0(v53, v54, v55);
        v32 = v109;
      }

      ++v33;
      *(v32 + 16) = v51 + 1;
      v52 = (v32 + 40 * v51);
      v52[4] = v102;
      v52[5] = v105;
      v52[6] = v36;
      v52[7] = v104;
      v52[8] = v37;
      if (v33 == v34)
      {

        goto LABEL_32;
      }
    }

    v101 = v33;
    v103 = v32;
    OUTLINED_FUNCTION_191();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v37 = 0;
    v38 = 0;
    while (v38 < *(v36 + 16))
    {
      OUTLINED_FUNCTION_3_22();
      sub_1C708CA24();
      if (*(v30 + 16))
      {
        v39 = v36;
        v41 = *v20;
        v40 = v20[1];
        sub_1C7551F3C();
        sub_1C75505AC();
        sub_1C7551FAC();
        OUTLINED_FUNCTION_38_7();
        while (1)
        {
          v43 = v42 & v113;
          if (((*(v30 + 56 + (((v42 & v113) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v42 & (&a19 + 96))) & 1) == 0)
          {
            break;
          }

          v44 = (*(v30 + 48) + 16 * v43);
          if (*v44 != v41 || v44[1] != v40)
          {
            v46 = sub_1C7551DBC();
            v42 = v43 + 1;
            if ((v46 & 1) == 0)
            {
              continue;
            }
          }

          v47 = 1;
          goto LABEL_18;
        }

        v47 = 0;
LABEL_18:
        v36 = v39;
      }

      else
      {
        v47 = 0;
      }

      OUTLINED_FUNCTION_1_30();
      sub_1C7091C1C(v20, v48);
      v49 = __OFADD__(v37, v47);
      v37 += v47;
      if (v49)
      {
        goto LABEL_59;
      }

      if (++v38 == v107)
      {

        v32 = v103;
        v34 = v99;
        v33 = v101;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v32 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v65 = *(v32 + 16);
  v66 = MEMORY[0x1E69E7CC0];
  if (v65)
  {
    v113[0] = MEMORY[0x1E69E7CC0];
    sub_1C716D854();
    v66 = v113[0];
    v67 = *(v113[0] + 16);
    v68 = v32;
    v69 = (v32 + 64);
    do
    {
      v71 = *v69;
      v69 += 5;
      v70 = v71;
      v113[0] = v66;
      v72 = *(v66 + 24);
      if (v67 >= v72 >> 1)
      {
        OUTLINED_FUNCTION_15(v72);
        sub_1C716D854();
        v66 = v113[0];
      }

      *(v66 + 16) = v67 + 1;
      *(v66 + 8 * v67++ + 32) = v70;
      --v65;
    }

    while (v65);
  }

  else
  {
    v68 = v32;
  }

  v73 = static Hastings.TimeBasedClusterer.thresholdForShotlistDrivenClusters(from:)(v66);

  v106 = v73;
  if (v73 <= 0)
  {

    if (qword_1EC213D38 != -1)
    {
      OUTLINED_FUNCTION_13_18();
    }

    v90 = sub_1C754FF1C();
    __swift_project_value_buffer(v90, qword_1EC216898);
    v91 = sub_1C754FEEC();
    sub_1C75511BC();
    v92 = OUTLINED_FUNCTION_23();
    if (os_log_type_enabled(v92, v93))
    {
      OUTLINED_FUNCTION_96_0();
      v94 = swift_slowAlloc();
      *v94 = 0;
      OUTLINED_FUNCTION_56_1();
      _os_log_impl(v95, v96, v97, v98, v94, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }
  }

  else
  {
    v74 = 0;
    v108 = *(v68 + 16);
    v75 = (v68 + 64);
    v76 = MEMORY[0x1E69E7CC0];
    while (v108 != v74)
    {
      if (v74 >= *(v68 + 16))
      {
        goto LABEL_60;
      }

      v78 = *(v75 - 1);
      v77 = *v75;
      v79 = *(v75 - 3);
      v80 = *(v75 - 2);
      v113[0] = *(v75 - 4);
      v113[1] = v79;
      v113[2] = v80;
      v113[3] = v78;
      v113[4] = v77;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C708B560(v113, v106, &v109);

      v82 = v109;
      v81 = v110;
      v84 = v111;
      v83 = v112;
      if (v110)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB2EA4();
          v76 = v88;
        }

        v86 = *(v76 + 16);
        v85 = *(v76 + 24);
        if (v86 >= v85 >> 1)
        {
          OUTLINED_FUNCTION_15(v85);
          sub_1C6FB2EA4();
          v76 = v89;
        }

        *(v76 + 16) = v86 + 1;
        v87 = (v76 + 32 * v86);
        v87[4] = v82;
        v87[5] = v81;
        v87[6] = v84;
        v87[7] = v83;
      }

      else
      {
        sub_1C7090ECC(v109, 0);
      }

      v75 += 5;
      ++v74;
    }
  }

LABEL_57:
  OUTLINED_FUNCTION_25_0();
}

void sub_1C708826C(void *a1, uint64_t a2)
{
  v204 = a2;
  v205 = type metadata accessor for Hastings.Feature();
  OUTLINED_FUNCTION_3_0();
  v187 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_2();
  v202 = v9;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_130();
  v213 = v13;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_206_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v181 - v17;
  v203 = type metadata accessor for Hastings.Asset(0);
  OUTLINED_FUNCTION_3_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_85_4();
  v22 = type metadata accessor for Hastings.FeatureSelector(0);
  v23 = OUTLINED_FUNCTION_76(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_14_0();
  v182 = v25 - v24;
  v208 = v2;
  v188 = sub_1C7082B30(a1, sub_1C7091C14);
  v26 = v3;
  sub_1C754FEFC();
  v27 = *(v2 + *(type metadata accessor for Hastings.TimeBasedClusterer() + 28) + 16);
  v206 = v18;
  if (v27)
  {
    sub_1C75504FC();
    OUTLINED_FUNCTION_292();
    goto LABEL_32;
  }

  v207 = v20;
  v196 = v5;
  v198 = v3;
  v197 = v2;
  v28 = a1 + 8;
  OUTLINED_FUNCTION_11();
  v31 = v30 & v29;
  v33 = (v32 + 63) >> 6;
  sub_1C75504FC();
  v34 = MEMORY[0x1E69E7CC0];
  v200 = a1 + 8;
  v201 = a1;
  while (2)
  {
    while (2)
    {
      if (v31)
      {
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_102_6();
      do
      {
        v35 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
          return;
        }

        if (v35 >= v33)
        {
          goto LABEL_24;
        }

        v31 = v28[v35];
        ++v27;
      }

      while (!v31);
      v198 = v26;
      v27 = v35;
LABEL_10:
      v36 = *(a1[7] + ((v27 << 9) | (8 * __clz(__rbit64(v31)))));
      v26 = *(v36 + 16);
      v28 = *(v34 + 16);
      v37 = v28 + v26;
      if (__OFADD__(v28, v26))
      {
        goto LABEL_204;
      }

      sub_1C75504FC();
      a1 = v34;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v37 > *(v34 + 24) >> 1)
      {
        if (v28 <= v37)
        {
          v39 = v28 + v26;
        }

        else
        {
          v39 = v28;
        }

        sub_1C6FB2ED4(isUniquelyReferenced_nonNull_native, v39, 1, v34);
        a1 = v40;
      }

      v31 &= v31 - 1;
      if (*(v36 + 16))
      {
        if ((a1[3] >> 1) - a1[2] < v26)
        {
          goto LABEL_205;
        }

        swift_arrayInitWithCopy();

        OUTLINED_FUNCTION_69_9();
        if (v26)
        {
          v41 = *(v34 + 16);
          v42 = __OFADD__(v41, v26);
          v43 = v41 + v26;
          if (v42)
          {
            goto LABEL_206;
          }

          *(v34 + 16) = v43;
        }

        continue;
      }

      break;
    }

    OUTLINED_FUNCTION_69_9();
    if (!v26)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_24:
  v203 = v34;

  v44 = *(v203 + 16);
  if (v44)
  {
    v198 = v26;
    v211 = MEMORY[0x1E69E7CC0];
    v45 = v203;
    sub_1C6F7ED9C();
    a1 = v211;
    OUTLINED_FUNCTION_15_4();
    v26 = v45 + v46;
    v207 = *(v47 + 72);
    OUTLINED_FUNCTION_74_3();
    do
    {
      OUTLINED_FUNCTION_3_22();
      sub_1C708CA24();
      v48 = v211;
      v49 = v212;
      sub_1C75504FC();
      OUTLINED_FUNCTION_1_30();
      sub_1C7091C1C(&v211, v50);
      v211 = a1;
      v52 = a1[2];
      v51 = a1[3];
      if (v52 >= v51 >> 1)
      {
        OUTLINED_FUNCTION_15(v51);
        sub_1C6F7ED9C();
        OUTLINED_FUNCTION_74_3();
        a1 = v211;
      }

      a1[2] = v52 + 1;
      v53 = &a1[2 * v52];
      v53[4] = v48;
      v53[5] = v49;
      v26 += v207;
      --v44;
    }

    while (v44);

    OUTLINED_FUNCTION_102_6();
  }

  else
  {

    a1 = MEMORY[0x1E69E7CC0];
  }

  sub_1C706D154(a1);

  OUTLINED_FUNCTION_292();
  v18 = v206;
LABEL_32:
  v54 = v204;
  sub_1C708AAB0();
  v56 = v55;

  v57 = v188;
  v58 = v182;
  Hastings.FeatureSelector.selectSignificantFeatures(for:scopingAssetUUIDs:progressReporter:)(v188, v56, v54);
  v195 = v26;
  if (v26)
  {
    sub_1C7091C1C(v58, type metadata accessor for Hastings.FeatureSelector);

    return;
  }

  v185 = v59;

  v60 = 0;
  v211 = MEMORY[0x1E69E7CD0];
  v196 = v57[2];
  v183 = v57 + 4;
  v61 = 56;
  while (v196 != v60)
  {
    if (v60 >= v188[2])
    {
      goto LABEL_203;
    }

    ++v60;
    sub_1C75504FC();
    sub_1C7397BDC();
    v61 += 32;
  }

  v62 = v211;
  v63 = v185 + 64;
  OUTLINED_FUNCTION_90_1();
  v193 = v65 & v64;
  v67 = (v66 + 63) >> 6;
  sub_1C75504FC();
  v68 = 0;
  v69 = MEMORY[0x1E69E7CD0];
LABEL_39:
  v70 = v193;
  while (2)
  {
    if (v70)
    {
LABEL_45:
      OUTLINED_FUNCTION_36_7();
      v74 = v73 | (v68 << 6);
      v75 = *(*(*(v72 + 56) + 8 * v74) + 16);
      if (!v75)
      {
        continue;
      }

      v193 = v70;
      v190 = v67;
      v191 = v63;
      v192 = v62;
      v76 = (*(v72 + 48) + 32 * v74);
      v77 = v76[1];
      v78 = v76[2];
      v79 = v76[3];
      v200 = *(v205 + 24);
      v80 = v187;
      OUTLINED_FUNCTION_191();
      v194 = v82 + v81;
      v189 = v82;
      swift_bridgeObjectRetain_n();
      v186 = v77;
      sub_1C75504FC();
      v184 = v78;
      sub_1C75504FC();
      v181[1] = v79;
      sub_1C75504FC();
      v204 = *(v80 + 72);
      v83 = v69;
      v84 = 0;
      v197 = v75;
LABEL_47:
      v203 = v83 + 56;
      while (1)
      {
        OUTLINED_FUNCTION_2_19();
        sub_1C708CA24();
        sub_1C7551F3C();
        a1 = *(v18 + 1);
        v207 = *v18;
        sub_1C75505AC();
        switch(v18[16])
        {
          case 1:
            OUTLINED_FUNCTION_25_10();
            break;
          case 2:
            OUTLINED_FUNCTION_43_8();
            break;
          case 3:
            OUTLINED_FUNCTION_65_7();
            break;
          case 4:
            OUTLINED_FUNCTION_44_8();
            break;
          case 5:
            OUTLINED_FUNCTION_24_14();
            break;
          default:
            break;
        }

        v198 = v84 + 1;
        sub_1C75505AC();

        v84 = sub_1C754F58C();
        OUTLINED_FUNCTION_5_23();
        sub_1C7091C74(&qword_1EC215238, v85);
        OUTLINED_FUNCTION_93_4();
        sub_1C755059C();
        sub_1C7551FAC();
        OUTLINED_FUNCTION_40_12();
        if (((*(v203 + v87) >> v75) & 1) == 0)
        {
LABEL_91:
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_2_19();
          v84 = v199;
          sub_1C708CA24();
          v211 = v83;
          sub_1C72ED3C8();
          v83 = v211;
          OUTLINED_FUNCTION_0_32();
          sub_1C7091C1C(v18, v103);
          OUTLINED_FUNCTION_73_5();
          if (v89)
          {
LABEL_93:
            v69 = v83;

            swift_bridgeObjectRelease_n();
            OUTLINED_FUNCTION_292();
            v62 = v192;
            v63 = v191;
            v67 = v190;
            goto LABEL_39;
          }

          goto LABEL_47;
        }

        v201 = ~v86;
        while (1)
        {
          v88 = v83;
          OUTLINED_FUNCTION_2_19();
          sub_1C708CA24();
          v89 = *v4 == v207 && *(v4 + 8) == a1;
          if (!v89 && (sub_1C7551DBC() & 1) == 0)
          {
LABEL_78:
            OUTLINED_FUNCTION_0_32();
            sub_1C7091C1C(v4, v96);
            goto LABEL_85;
          }

          switch(*(v4 + 16))
          {
            case 1:
              OUTLINED_FUNCTION_33_9();
              break;
            case 2:
              OUTLINED_FUNCTION_46_8();
              break;
            case 3:
              OUTLINED_FUNCTION_64_0();
              break;
            case 4:
              OUTLINED_FUNCTION_45_8();
              break;
            case 5:
              OUTLINED_FUNCTION_21_17();
              break;
            default:
              break;
          }

          OUTLINED_FUNCTION_42_10();
          v92 = 0xE900000000000072;
          switch(v93)
          {
            case 1:
              v92 = 0xE800000000000000;
              OUTLINED_FUNCTION_41_8();
              break;
            case 2:
              v92 = 0xE500000000000000;
              OUTLINED_FUNCTION_61_7();
              break;
            case 3:
              v92 = 0xE400000000000000;
              v91 = 1885958740;
              break;
            case 4:
              v92 = 0xE500000000000000;
              OUTLINED_FUNCTION_62_8();
              break;
            case 5:
              OUTLINED_FUNCTION_39_9();
              v92 = 0xEA00000000007265;
              break;
            default:
              break;
          }

          if (v90 == v91 && v92 == 0xE900000000000072)
          {
          }

          else
          {
            v95 = sub_1C7551DBC();

            v18 = v206;
            if ((v95 & 1) == 0)
            {
              goto LABEL_78;
            }
          }

          OUTLINED_FUNCTION_80_5();
          OUTLINED_FUNCTION_5_23();
          sub_1C7091C74(&qword_1EC2147A0, v97);
          sub_1C7550A5C();
          sub_1C7550A5C();
          if (v211 == v209 && v212 == v210)
          {
            break;
          }

          v99 = sub_1C7551DBC();

          OUTLINED_FUNCTION_0_32();
          sub_1C7091C1C(v4, v100);
          v18 = v206;
          if (v99)
          {
            goto LABEL_88;
          }

LABEL_85:
          v75 = (v75 + 1) & v201;
          v83 = v88;
          if (((*(v203 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) == 0)
          {
            goto LABEL_91;
          }
        }

        OUTLINED_FUNCTION_0_32();
        sub_1C7091C1C(v4, v101);
        v18 = v206;
LABEL_88:
        OUTLINED_FUNCTION_0_32();
        sub_1C7091C1C(v18, v102);
        OUTLINED_FUNCTION_73_5();
        v83 = v88;
        if (v89)
        {
          goto LABEL_93;
        }
      }
    }

    break;
  }

  while (1)
  {
    v71 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      goto LABEL_202;
    }

    if (v71 >= v67)
    {
      break;
    }

    ++v68;
    if (*(v63 + 8 * v71))
    {
      v68 = v71;
      goto LABEL_45;
    }
  }

  v104 = sub_1C72387A4(v69, v62);

  v184 = Hastings.FeatureSelector.selectNonsignificantFeatures(from:for:)(v104, v188);

  if (v196)
  {
    v105 = 0;
    v106 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v189 = v105;
      v107 = &v183[4 * v105];
      v109 = *v107;
      v108 = v107[1];
      v110 = v107[2];
      v111 = v107[3];
      v112 = v185;
      v113 = *(v185 + 16);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      if (v113)
      {
        v114 = OUTLINED_FUNCTION_105_5();
        v115 = v202;
        if (v116)
        {
          v117 = *(*(v112 + 56) + 8 * v114);
          sub_1C75504FC();
        }

        else
        {
          v117 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {
        v117 = MEMORY[0x1E69E7CC0];
        v115 = v202;
      }

      v118 = *(v117 + 16);
      OUTLINED_FUNCTION_34_7();
      v197 = sub_1C7091C74(&qword_1EC216778, v119);
      v207 = MEMORY[0x1CCA5D4D0](v118, v205);
      v200 = *(v117 + 16);
      v194 = v106;
      v193 = v108;
      v192 = v109;
      v191 = v110;
      v190 = v111;
      if (!v200)
      {

        goto LABEL_146;
      }

      OUTLINED_FUNCTION_14_17();
      v186 = v117;
      v198 = v117 + v121;
      v206 = *(v122 + 72);
      v123 = v213;
      do
      {
        v201 = v120;
        OUTLINED_FUNCTION_2_19();
        sub_1C708CA24();
        sub_1C7551F3C();
        a1 = *v123;
        v124 = *(v123 + 8);
        sub_1C75505AC();
        switch(*(v123 + 16))
        {
          case 1:
            OUTLINED_FUNCTION_25_10();
            break;
          case 2:
            OUTLINED_FUNCTION_43_8();
            break;
          case 4:
            OUTLINED_FUNCTION_44_8();
            break;
          case 5:
            OUTLINED_FUNCTION_24_14();
            break;
          default:
            break;
        }

        sub_1C75505AC();

        v125 = *(v205 + 24);
        sub_1C754F58C();
        OUTLINED_FUNCTION_5_23();
        sub_1C7091C74(&qword_1EC215238, v126);
        OUTLINED_FUNCTION_93_4();
        v203 = v125;
        sub_1C755059C();
        v127 = &v211;
        v128 = sub_1C7551FAC();
        v106 = v207 + 56;
        v129 = -1 << *(v207 + 32);
        v108 = v128 & ~v129;
        if (((*(v207 + 56 + ((v108 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v108) & 1) == 0)
        {
LABEL_140:
          OUTLINED_FUNCTION_92_5();
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_2_19();
          v141 = v213;
          v106 = v199;
          sub_1C708CA24();
          v211 = v127;
          OUTLINED_FUNCTION_15_1();
          sub_1C72ED3C8();
          v207 = v211;
          goto LABEL_143;
        }

        v204 = ~v129;
        OUTLINED_FUNCTION_100_3();
        while (1)
        {
          OUTLINED_FUNCTION_2_19();
          sub_1C708CA24();
          v130 = *v109 == a1 && *(v109 + 8) == v124;
          if (!v130 && (sub_1C7551DBC() & 1) == 0)
          {
LABEL_132:
            OUTLINED_FUNCTION_0_32();
            sub_1C7091C1C(v109, v136);
            goto LABEL_139;
          }

          v127 = 0xE900000000000072;
          switch(*(v109 + 16))
          {
            case 1:
              OUTLINED_FUNCTION_33_9();
              break;
            case 2:
              OUTLINED_FUNCTION_46_8();
              break;
            case 3:
              OUTLINED_FUNCTION_64_0();
              break;
            case 4:
              OUTLINED_FUNCTION_45_8();
              break;
            case 5:
              OUTLINED_FUNCTION_21_17();
              break;
            default:
              break;
          }

          OUTLINED_FUNCTION_42_10();
          v110 = 0xE900000000000072;
          switch(v133)
          {
            case 1:
              v110 = 0xE800000000000000;
              OUTLINED_FUNCTION_41_8();
              break;
            case 2:
              v110 = 0xE500000000000000;
              OUTLINED_FUNCTION_61_7();
              break;
            case 3:
              v110 = 0xE400000000000000;
              v132 = 1885958740;
              break;
            case 4:
              v110 = 0xE500000000000000;
              OUTLINED_FUNCTION_62_8();
              break;
            case 5:
              OUTLINED_FUNCTION_39_9();
              v110 = 0xEA00000000007265;
              break;
            default:
              break;
          }

          if (v131 == v132 && v110 == 0xE900000000000072)
          {

            OUTLINED_FUNCTION_100_3();
          }

          else
          {
            v135 = sub_1C7551DBC();

            OUTLINED_FUNCTION_100_3();
            if ((v135 & 1) == 0)
            {
              goto LABEL_132;
            }
          }

          OUTLINED_FUNCTION_80_5();
          OUTLINED_FUNCTION_5_23();
          sub_1C7091C74(&qword_1EC2147A0, v137);
          OUTLINED_FUNCTION_173();
          sub_1C7550A5C();
          OUTLINED_FUNCTION_173();
          sub_1C7550A5C();
          v127 = v210;
          if (v211 == v209 && v212 == v210)
          {
            break;
          }

          v110 = sub_1C7551DBC();

          OUTLINED_FUNCTION_0_32();
          sub_1C7091C1C(v109, v139);
          if (v110)
          {
            goto LABEL_142;
          }

LABEL_139:
          v108 = (v108 + 1) & v204;
          OUTLINED_FUNCTION_88_4();
          if ((v140 & 1) == 0)
          {
            goto LABEL_140;
          }
        }

        OUTLINED_FUNCTION_0_32();
        sub_1C7091C1C(v109, v142);
LABEL_142:
        v141 = v213;
LABEL_143:
        OUTLINED_FUNCTION_0_32();
        sub_1C7091C1C(v141, v143);
        v120 = v201 + 1;
        v123 = v141;
        v115 = v202;
      }

      while ((v201 + 1) != v200);

      OUTLINED_FUNCTION_292();
      OUTLINED_FUNCTION_35_5();
LABEL_146:
      v144 = v184;
      if (*(v184 + 16) && (v145 = OUTLINED_FUNCTION_105_5(), (v146 & 1) != 0))
      {
        v147 = *(v144[7] + 8 * v145);
        sub_1C75504FC();
      }

      else
      {
        v147 = MEMORY[0x1E69E7CC0];
      }

      v206 = MEMORY[0x1CCA5D4D0](*(v147 + 16), v205, v197);
      v198 = *(v147 + 16);
      if (v198)
      {
        break;
      }

LABEL_195:
      OUTLINED_FUNCTION_92_5();
      sub_1C75504FC();
      v171 = v206;
      sub_1C75504FC();
      v172 = sub_1C75504FC();
      v173 = v195;
      v174 = sub_1C708F710(v172, v144, v171);
      v195 = v173;
      swift_bridgeObjectRelease_n();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB2EA4();
        v106 = v179;
      }

      v176 = *(v106 + 16);
      v175 = *(v106 + 24);
      v177 = v189;
      if (v176 >= v175 >> 1)
      {
        OUTLINED_FUNCTION_15(v175);
        sub_1C6FB2EA4();
        v177 = v189;
        v106 = v180;
      }

      v105 = v177 + 1;
      *(v106 + 16) = v176 + 1;
      v178 = (v106 + 32 * v176);
      v178[4] = v109;
      v178[5] = v108;
      v178[6] = v110;
      v178[7] = v174;
      if (v105 == v196)
      {
        goto LABEL_200;
      }
    }

    OUTLINED_FUNCTION_14_17();
    v186 = v147;
    v197 = v147 + v149;
    v204 = *(v150 + 72);
    while (2)
    {
      v200 = v148;
      OUTLINED_FUNCTION_2_19();
      sub_1C708CA24();
      sub_1C7551F3C();
      v152 = *a1;
      v151 = a1[1];
      sub_1C75505AC();
      v153 = 0xE900000000000072;
      switch(*(a1 + 16))
      {
        case 1:
          v153 = 0xE800000000000000;
          OUTLINED_FUNCTION_25_10();
          break;
        case 2:
          v153 = 0xE500000000000000;
          OUTLINED_FUNCTION_43_8();
          break;
        case 3:
          OUTLINED_FUNCTION_65_7();
          break;
        case 4:
          v153 = 0xE500000000000000;
          OUTLINED_FUNCTION_44_8();
          break;
        case 5:
          OUTLINED_FUNCTION_24_14();
          v153 = 0xEA00000000007265;
          break;
        default:
          break;
      }

      sub_1C75505AC();

      OUTLINED_FUNCTION_80_5();
      v108 = sub_1C754F58C();
      OUTLINED_FUNCTION_5_23();
      sub_1C7091C74(&qword_1EC215238, v154);
      OUTLINED_FUNCTION_93_4();
      v201 = v153;
      sub_1C755059C();
      sub_1C7551FAC();
      v109 = v206 + 56;
      OUTLINED_FUNCTION_40_12();
      if (((*(v109 + v156) >> v110) & 1) == 0)
      {
LABEL_190:
        v168 = v206;
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_2_19();
        v106 = v199;
        sub_1C708CA24();
        v211 = v168;
        v144 = &v211;
        sub_1C72ED3C8();
        v206 = v211;
        goto LABEL_192;
      }

      v203 = ~v155;
LABEL_160:
      OUTLINED_FUNCTION_2_19();
      sub_1C708CA24();
      v157 = *v115 == v152 && *(v115 + 8) == v151;
      if (v157 || (OUTLINED_FUNCTION_76_4(), (sub_1C7551DBC() & 1) != 0))
      {
        switch(*(v115 + 16))
        {
          case 1:
            OUTLINED_FUNCTION_33_9();
            break;
          case 2:
            OUTLINED_FUNCTION_46_8();
            break;
          case 3:
            OUTLINED_FUNCTION_64_0();
            break;
          case 4:
            OUTLINED_FUNCTION_45_8();
            break;
          case 5:
            OUTLINED_FUNCTION_21_17();
            break;
          default:
            break;
        }

        OUTLINED_FUNCTION_42_10();
        v160 = 0xE900000000000072;
        switch(v161)
        {
          case 1:
            v160 = 0xE800000000000000;
            OUTLINED_FUNCTION_41_8();
            break;
          case 2:
            v160 = 0xE500000000000000;
            OUTLINED_FUNCTION_61_7();
            break;
          case 3:
            v160 = 0xE400000000000000;
            v159 = 1885958740;
            break;
          case 4:
            v160 = 0xE500000000000000;
            OUTLINED_FUNCTION_62_8();
            break;
          case 5:
            OUTLINED_FUNCTION_39_9();
            v160 = 0xEA00000000007265;
            break;
          default:
            break;
        }

        if (v158 == v159 && v160 == 0xE900000000000072)
        {

          v115 = v202;
        }

        else
        {
          v163 = sub_1C7551DBC();

          v115 = v202;
          if ((v163 & 1) == 0)
          {
            goto LABEL_182;
          }
        }

        OUTLINED_FUNCTION_80_5();
        OUTLINED_FUNCTION_5_23();
        sub_1C7091C74(&qword_1EC2147A0, v165);
        v106 = a1;
        a1 = v115;
        OUTLINED_FUNCTION_35_0();
        sub_1C7550A5C();
        OUTLINED_FUNCTION_35_0();
        sub_1C7550A5C();
        v144 = v210;
        if (v211 == v209 && v212 == v210)
        {

          OUTLINED_FUNCTION_0_32();
          sub_1C7091C1C(v115, v169);
          OUTLINED_FUNCTION_292();
LABEL_192:
          OUTLINED_FUNCTION_0_32();
          sub_1C7091C1C(a1, v170);
          v148 = (v200 + 1);
          if ((v200 + 1) == v198)
          {

            OUTLINED_FUNCTION_35_5();
            goto LABEL_195;
          }

          continue;
        }

        v106 = sub_1C7551DBC();

        OUTLINED_FUNCTION_0_32();
        sub_1C7091C1C(v115, v167);
        OUTLINED_FUNCTION_292();
        if (v106)
        {
          goto LABEL_192;
        }
      }

      else
      {
LABEL_182:
        OUTLINED_FUNCTION_0_32();
        sub_1C7091C1C(v115, v164);
      }

      break;
    }

    v110 = (v110 + 1) & v203;
    if (((*(v109 + ((v110 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v110) & 1) == 0)
    {
      goto LABEL_190;
    }

    goto LABEL_160;
  }

LABEL_200:

  sub_1C7091C1C(v182, type metadata accessor for Hastings.FeatureSelector);
}

uint64_t sub_1C7089A10(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A28);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  v15 = sub_1C754DF6C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v27 - v20;
  v22 = *(a1 + 16);
  v28 = *(v28 + 16);
  sub_1C710D798(v22);
  v23 = type metadata accessor for Hastings.Asset(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v23) == 1)
  {
    sub_1C6FD7FC8(v8, &qword_1EC216A28);
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  }

  else
  {
    sub_1C6FD7F70();
    sub_1C7091C1C(v8, type metadata accessor for Hastings.Asset);
    if (__swift_getEnumTagSinglePayload(v14, 1, v15) != 1)
    {
      (*(v16 + 32))(v21, v14, v15);
      goto LABEL_7;
    }
  }

  sub_1C754DE6C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) != 1)
  {
    sub_1C6FD7FC8(v14, &unk_1EC219230);
  }

LABEL_7:
  sub_1C710D798(v28);
  if (__swift_getEnumTagSinglePayload(v5, 1, v23) == 1)
  {
    sub_1C6FD7FC8(v5, &qword_1EC216A28);
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v15);
  }

  else
  {
    sub_1C6FD7F70();
    sub_1C7091C1C(v5, type metadata accessor for Hastings.Asset);
    if (__swift_getEnumTagSinglePayload(v11, 1, v15) != 1)
    {
      (*(v16 + 32))(v18, v11, v15);
      goto LABEL_13;
    }
  }

  sub_1C754DE6C();
  if (__swift_getEnumTagSinglePayload(v11, 1, v15) != 1)
  {
    sub_1C6FD7FC8(v11, &unk_1EC219230);
  }

LABEL_13:
  v24 = sub_1C754DEDC();
  v25 = *(v16 + 8);
  v25(v18, v15);
  v25(v21, v15);
  return v24 & 1;
}

uint64_t sub_1C7089E3C(double a1)
{
  *(swift_allocObject() + 16) = a1;
  *(swift_allocObject() + 16) = 0;
  *(swift_allocObject() + 16) = 0;
  OUTLINED_FUNCTION_30();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_95_5(v1);
  OUTLINED_FUNCTION_26_12(1918985593, 0xE400000000000000, 31536000.0);
  v2 = OUTLINED_FUNCTION_91_4();
  OUTLINED_FUNCTION_26_12(v2, v3, v4);
  OUTLINED_FUNCTION_26_12(7954788, 0xE300000000000000, 86400.0);
  OUTLINED_FUNCTION_26_12(1920298856, 0xE400000000000000, 3600.0);
  v5 = OUTLINED_FUNCTION_53_10();
  OUTLINED_FUNCTION_26_12(v5, v6, v7);
  OUTLINED_FUNCTION_26_12(0x646E6F636573, 0xE600000000000000, 1.0);
  swift_beginAccess();
  sub_1C75504FC();

  return OUTLINED_FUNCTION_15_1();
}

void sub_1C708A024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  type metadata accessor for Hastings.Feature();
  OUTLINED_FUNCTION_3_0();
  v170 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_14_2();
  v166 = v29;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_66_9();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_140_1();
  v169 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A30);
  v34 = OUTLINED_FUNCTION_76(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_14_2();
  v171 = v35;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_140_1();
  v173 = v37;
  v38 = type metadata accessor for Hastings.Asset(0);
  v39 = OUTLINED_FUNCTION_18(v38);
  v165 = v40;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_78();
  v43 = v41 - v42;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_130();
  v175 = v45;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_99_5();
  MEMORY[0x1EEE9AC00](v47);
  v49 = (v162 - v48);
  v50 = v21 + *(type metadata accessor for Hastings.TimeBasedClusterer() + 28);
  v172 = *(v50 + 24);
  if (v172)
  {
    v168 = v22;
    v162[2] = v43;
    v51 = *(v26 + 16);
    v164 = v20;
    v167 = v26;
    if (v51)
    {
      v176 = v50;
      v177[0] = MEMORY[0x1E69E7CC0];
      sub_1C75504FC();
      sub_1C6F7ED9C();
      v52 = v177[0];
      OUTLINED_FUNCTION_14_17();
      v54 = v26 + v53;
      v56 = *(v55 + 72);
      v57 = v51;
      do
      {
        OUTLINED_FUNCTION_3_22();
        OUTLINED_FUNCTION_64();
        sub_1C708CA24();
        v58 = *v49;
        v59 = v49[1];
        sub_1C75504FC();
        OUTLINED_FUNCTION_1_30();
        sub_1C7091C1C(v49, v60);
        v177[0] = v52;
        v62 = *(v52 + 16);
        v61 = *(v52 + 24);
        if (v62 >= v61 >> 1)
        {
          OUTLINED_FUNCTION_15(v61);
          OUTLINED_FUNCTION_89_5();
          sub_1C6F7ED9C();
          v52 = v177[0];
        }

        *(v52 + 16) = v62 + 1;
        v63 = v52 + 16 * v62;
        *(v63 + 32) = v58;
        *(v63 + 40) = v59;
        v54 += v56;
        --v57;
      }

      while (v57);
      v50 = v176;
    }

    else
    {
      sub_1C75504FC();
      v52 = MEMORY[0x1E69E7CC0];
    }

    v67 = *(v50 + 16);
    if (v67)
    {
      v68 = 0;
      v176 = *(v52 + 16);
      v174 = v52 + 32;
      v69 = MEMORY[0x1E69E7CC0];
LABEL_14:
      while (v68 != v176)
      {
        v70 = v68;
        if (v68 >= *(v52 + 16))
        {
          goto LABEL_80;
        }

        ++v68;
        if (*(v67 + 16))
        {
          v71 = (v174 + 16 * v70);
          v72 = *v71;
          v73 = v71[1];
          sub_1C7551F3C();
          sub_1C75504FC();
          sub_1C75505AC();
          sub_1C7551FAC();
          OUTLINED_FUNCTION_38_7();
          do
          {
            v75 = v74 & v177;
            if (((*(v67 + 56 + (((v74 & v177) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v74 & (&a19 + 88))) & 1) == 0)
            {

              goto LABEL_14;
            }

            v76 = (*(v67 + 48) + 16 * v75);
            if (*v76 == v72 && v76[1] == v73)
            {
              break;
            }

            v78 = sub_1C7551DBC();
            v74 = v75 + 1;
          }

          while ((v78 & 1) == 0);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v178 = v69;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_90_0();
            sub_1C6F7ED9C();
            v69 = v178;
          }

          v80 = v69;
          v81 = *(v69 + 16);
          v82 = *(v80 + 24);
          if (v81 >= v82 >> 1)
          {
            OUTLINED_FUNCTION_15(v82);
            sub_1C6F7ED9C();
            v80 = v178;
          }

          *(v80 + 16) = v81 + 1;
          v83 = v80 + 16 * v81;
          *(v83 + 32) = v72;
          *(v83 + 40) = v73;
          v69 = v80;
        }
      }
    }

    else
    {
      v69 = v52;
    }

    v174 = v69;
    if (v51)
    {
      OUTLINED_FUNCTION_14_17();
      v84 = v168;
      v86 = v167 + v85;
      v176 = MEMORY[0x1E69E7CC8];
      v88 = *(v87 + 72);
      while (1)
      {
        sub_1C708CA24();
        v89 = *v84;
        v90 = v84[1];
        sub_1C708CA24();
        v91 = v176;
        swift_isUniquelyReferenced_nonNull_native();
        v177[0] = v91;
        v92 = OUTLINED_FUNCTION_64();
        sub_1C6F78124(v92, v93);
        OUTLINED_FUNCTION_82_4();
        if (v96)
        {
          break;
        }

        v97 = v94;
        v98 = v95;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A38);
        if (sub_1C7551A2C())
        {
          v99 = OUTLINED_FUNCTION_64();
          v101 = sub_1C6F78124(v99, v100);
          v84 = v168;
          if ((v98 & 1) != (v102 & 1))
          {
            goto LABEL_82;
          }

          v97 = v101;
        }

        else
        {
          v84 = v168;
        }

        v103 = v177[0];
        v176 = v177[0];
        if (v98)
        {
          sub_1C7091D14(v175, *(v177[0] + 56) + v97 * v88);
        }

        else
        {
          OUTLINED_FUNCTION_1_3(v177[0] + 8 * (v97 >> 6));
          v104 = (*(v103 + 48) + 16 * v97);
          *v104 = v89;
          v104[1] = v90;
          OUTLINED_FUNCTION_4_20();
          sub_1C7091B68();
          v105 = *(v103 + 16);
          v96 = __OFADD__(v105, 1);
          v106 = v105 + 1;
          if (v96)
          {
            goto LABEL_81;
          }

          *(v103 + 16) = v106;
          sub_1C75504FC();
        }

        OUTLINED_FUNCTION_1_30();
        sub_1C7091C1C(v84, v107);
        v86 += v88;
        if (!--v51)
        {
          goto LABEL_46;
        }
      }
    }

    else
    {
      v176 = MEMORY[0x1E69E7CC8];
LABEL_46:
      v108 = 0;
      OUTLINED_FUNCTION_90_1();
      v112 = v111 & v110;
      v114 = (v113 + 63) >> 6;
      v167 = MEMORY[0x1E69E7CC8];
      v115 = v164;
      v116 = v173;
      v175 = v109;
      if ((v111 & v110) == 0)
      {
        goto LABEL_48;
      }

      while (1)
      {
        v117 = v108;
LABEL_52:
        v118 = __clz(__rbit64(v112));
        v112 &= v112 - 1;
        v119 = v118 | (v117 << 6);
        v120 = v172;
        OUTLINED_FUNCTION_2_19();
        sub_1C708CA24();
        v121 = *(*(v120 + 56) + 8 * v119);
        v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A40);
        v123 = *(v122 + 48);
        OUTLINED_FUNCTION_6_10();
        v124 = v171;
        sub_1C7091B68();
        *(v124 + v123) = v121;
        OUTLINED_FUNCTION_25_8();
        __swift_storeEnumTagSinglePayload(v125, v126, v127, v122);
        sub_1C75504FC();
        v116 = v173;
LABEL_53:
        OUTLINED_FUNCTION_173();
        sub_1C7091CBC();
        v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A40);
        if (__swift_getEnumTagSinglePayload(v116, 1, v128) == 1)
        {

          OUTLINED_FUNCTION_25_0();
          return;
        }

        v129 = *(v116 + *(v128 + 48));
        OUTLINED_FUNCTION_6_10();
        sub_1C7091B68();
        v130 = sub_1C72B8CBC(v174, v129);
        if (*(v130 + 16))
        {
          break;
        }

        OUTLINED_FUNCTION_0_32();
        sub_1C7091C1C(v115, v131);

LABEL_56:
        v109 = v175;
        if (!v112)
        {
LABEL_48:
          while (1)
          {
            v117 = v108 + 1;
            if (__OFADD__(v108, 1))
            {
              break;
            }

            if (v117 >= v114)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A40);
              OUTLINED_FUNCTION_84();
              __swift_storeEnumTagSinglePayload(v132, v133, v134, v135);
              v112 = 0;
              goto LABEL_53;
            }

            v112 = *(v109 + 8 * v117);
            ++v108;
            if (v112)
            {
              v108 = v117;
              goto LABEL_52;
            }
          }

          __break(1u);
          goto LABEL_78;
        }
      }

      OUTLINED_FUNCTION_2_19();
      sub_1C708CA24();
      OUTLINED_FUNCTION_90_1();
      v138 = v137 & v136;
      v140 = (v139 + 63) >> 6;

      v141 = 0;
      v163 = MEMORY[0x1E69E7CC0];
LABEL_60:
      v142 = v176;
      while (v138)
      {
        v143 = v138;
LABEL_67:
        v138 = (v143 - 1) & v143;
        if (*(v142 + 16))
        {
          v168 = (v143 - 1) & v143;
          v145 = (*(v130 + 48) + ((v141 << 10) | (16 * __clz(__rbit64(v143)))));
          v147 = *v145;
          v146 = v145[1];
          sub_1C75504FC();
          sub_1C6F78124(v147, v146);
          if (v148)
          {
            v149 = *(v165 + 72);
            OUTLINED_FUNCTION_3_22();
            sub_1C708CA24();

            v150 = swift_isUniquelyReferenced_nonNull_native();
            v162[1] = v149;
            if ((v150 & 1) == 0)
            {
              v153 = OUTLINED_FUNCTION_24_0();
              sub_1C6FB2ED4(v153, v154, v155, v156);
              v163 = v157;
            }

            v138 = v168;
            v152 = *(v163 + 16);
            v151 = *(v163 + 24);
            if (v152 >= v151 >> 1)
            {
              v158 = OUTLINED_FUNCTION_15(v151);
              sub_1C6FB2ED4(v158, v152 + 1, 1, v163);
              v163 = v159;
            }

            *(v163 + 16) = v152 + 1;
            OUTLINED_FUNCTION_191();
            OUTLINED_FUNCTION_4_20();
            sub_1C7091B68();
            v116 = v173;
            goto LABEL_60;
          }

          v116 = v173;
          v142 = v176;
          v138 = v168;
        }
      }

      while (1)
      {
        v144 = v141 + 1;
        if (__OFADD__(v141, 1))
        {
          break;
        }

        if (v144 >= v140)
        {

          v160 = v167;
          swift_isUniquelyReferenced_nonNull_native();
          v177[0] = v160;
          v161 = v166;
          sub_1C6FC8748();
          sub_1C7091C1C(v161, type metadata accessor for Hastings.Feature);
          v115 = v164;
          sub_1C7091C1C(v164, type metadata accessor for Hastings.Feature);
          v167 = v177[0];
          goto LABEL_56;
        }

        v143 = *(v130 + 56 + 8 * v144);
        ++v141;
        if (v143)
        {
          v141 = v144;
          goto LABEL_67;
        }
      }

LABEL_78:
      __break(1u);
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    sub_1C7551E4C();
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168C8);
    OUTLINED_FUNCTION_34_7();
    sub_1C7091C74(v64, v65);
    OUTLINED_FUNCTION_25_0();

    sub_1C75504DC();
  }
}

void sub_1C708AAB0()
{
  v64 = v0 + *(type metadata accessor for Hastings.TimeBasedClusterer() + 28);
  v1 = *(v64 + 40);
  v2 = v1[2];
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = OUTLINED_FUNCTION_32_8();
    sub_1C716E23C(v4, v5, v6);
    v3 = v70;
    v7 = v1 + 4;
    do
    {
      v8 = *v7;
      v70 = v3;
      v9 = *(v3 + 16);
      v10 = *(v3 + 24);
      sub_1C75504FC();
      if (v9 >= v10 >> 1)
      {
        sub_1C716E23C((v10 > 1), v9 + 1, 1);
      }

      *(v3 + 16) = v9 + 1;
      *(v3 + 8 * v9 + 32) = v8;
      v7 += 3;
      --v2;
    }

    while (v2);
  }

  v11 = sub_1C7069D48(v3);

  if (v11)
  {
    sub_1C75504FC();
    sub_1C7069A44();
    v13 = v12;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CD0];
  }

  v14 = v1[2];
  v15 = MEMORY[0x1E69E7CC0];
  v68 = v1;
  if (v14)
  {
    v16 = OUTLINED_FUNCTION_32_8();
    sub_1C716E23C(v16, v17, v18);
    v15 = v70;
    v19 = v1 + 5;
    do
    {
      v20 = *v19;
      v21 = *(v70 + 16);
      v22 = *(v70 + 24);
      sub_1C75504FC();
      if (v21 >= v22 >> 1)
      {
        OUTLINED_FUNCTION_89_5();
        sub_1C716E23C(v23, v24, v25);
      }

      *(v70 + 16) = v21 + 1;
      *(v70 + 8 * v21 + 32) = v20;
      v19 += 3;
      --v14;
    }

    while (v14);
  }

  v26 = sub_1C7069D48(v15);

  if (v26)
  {
    sub_1C75504FC();
    OUTLINED_FUNCTION_15_1();
    sub_1C7069A44();
    v28 = v27;
  }

  else
  {
    v28 = MEMORY[0x1E69E7CD0];
  }

  sub_1C75504FC();
  v29 = OUTLINED_FUNCTION_216();
  v31 = sub_1C7238810(v29, v30);
  v62 = v28;
  v32 = sub_1C7238810(v28, v31);
  Hastings.ShotlistRetrieval.assetUUIDs.getter();
  v33 = v68;
  v63 = v32;
  if (*(v64 + 49) == 1)
  {
    sub_1C7069A44();
    v13 = v34;
  }

  v35 = 0;
  v71 = MEMORY[0x1E69E7CC0];
  v67 = *(v68 + 16);
LABEL_20:
  if (v35 == v67)
  {
    v56 = sub_1C706D154(v71);
    if (*(v64 + 50) == 1)
    {
      sub_1C7069A44();
      v58 = v57;
    }

    else
    {
      v58 = v62;
    }

    sub_1C75504FC();
    v59 = sub_1C7090218(v58, v33, v56);
    if (*(v64 + 51) == 1)
    {
      sub_1C7069A44();
      v61 = v60;
    }

    else
    {
      v61 = v63;
    }

    sub_1C739796C(v59);
    sub_1C739796C(v61);
  }

  else
  {
    if (v35 < *(v33 + 16))
    {
      v36 = *(v68 + 32 + 24 * v35++ + 16);
      v37 = 1 << *(v13 + 32);
      if (v37 < 64)
      {
        v38 = ~(-1 << v37);
      }

      else
      {
        v38 = -1;
      }

      v39 = v38 & *(v13 + 56);
      v40 = (v37 + 63) >> 6;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v41 = 0;
      v69 = MEMORY[0x1E69E7CC0];
      while (v39)
      {
        v42 = v39;
LABEL_32:
        v39 = (v42 - 1) & v42;
        if (*(v36 + 16))
        {
          v44 = (*(v13 + 48) + ((v41 << 10) | (16 * __clz(__rbit64(v42)))));
          v46 = *v44;
          v45 = v44[1];
          sub_1C75504FC();
          v47 = sub_1C6F78124(v46, v45);
          if (v48)
          {
            v49 = (*(v36 + 56) + 16 * v47);
            v50 = v49[1];
            v65 = *v49;
            sub_1C75504FC();

            v66 = v50;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_24_0();
              sub_1C6FB1814();
              v69 = v54;
            }

            v52 = *(v69 + 16);
            v51 = *(v69 + 24);
            if (v52 >= v51 >> 1)
            {
              OUTLINED_FUNCTION_15(v51);
              sub_1C6FB1814();
              v69 = v55;
            }

            *(v69 + 16) = v52 + 1;
            v53 = v69 + 16 * v52;
            *(v53 + 32) = v65;
            *(v53 + 40) = v66;
          }

          else
          {
          }
        }
      }

      while (1)
      {
        v43 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          break;
        }

        if (v43 >= v40)
        {

          sub_1C6FD2568(v69);
          v33 = v68;
          goto LABEL_20;
        }

        v42 = *(v13 + 56 + 8 * v43);
        ++v41;
        if (v42)
        {
          v41 = v43;
          goto LABEL_32;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_1C708AF7C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  v6 = *a1;
  v7 = a1[1];
  v8 = a2 + 32;
  v9 = a3 + 56;
  v24 = *a1;
  v25 = a2 + 32;
  do
  {
    v10 = *(v8 + 24 * v5 + 16);
    if (*(v10 + 16))
    {
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v11 = sub_1C6F78124(v6, v7);
      if (v12)
      {
        v13 = (*(v10 + 56) + 16 * v11);
        v15 = *v13;
        v14 = v13[1];
        sub_1C75504FC();

        if (*(a3 + 16))
        {
          sub_1C7551F3C();
          sub_1C75505AC();
          v16 = sub_1C7551FAC();
          v17 = ~(-1 << *(a3 + 32));
          while (1)
          {
            v18 = v16 & v17;
            if (((*(v9 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
            {
              break;
            }

            v19 = (*(a3 + 48) + 16 * v18);
            if (*v19 != v15 || v19[1] != v14)
            {
              v21 = sub_1C7551DBC();
              v16 = v18 + 1;
              if ((v21 & 1) == 0)
              {
                continue;
              }
            }

            return 1;
          }
        }

        v7 = v23;
        v6 = v24;
      }

      else
      {
      }

      v8 = v25;
    }

    ++v5;
  }

  while (v5 != v3);
  return 0;
}

uint64_t static Hastings.TimeBasedClusterer.thresholdForShotlistDrivenClusters(from:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (qword_1EC213D38 != -1)
  {
    OUTLINED_FUNCTION_13_18();
  }

  v4 = v3;
  v5 = sub_1C754FF1C();
  __swift_project_value_buffer(v5, qword_1EC216898);
  sub_1C75504FC();
  v6 = sub_1C754FEEC();
  v7 = sub_1C75511BC();

  if (!os_log_type_enabled(v6, v7))
  {

    if (!v3)
    {
LABEL_7:
      v15 = 0.0;
      v16 = MEMORY[0x1E69E7CC0];
      v1 = *(MEMORY[0x1E69E7CC0] + 16);
      v17 = 0.0 / v4;
      if (!v1)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

LABEL_21:
    v31 = 0;
    v32 = (a1 + 32);
    v33 = 0.0;
    do
    {
      v33 = v33 + v32[v31++];
    }

    while (v3 != v31);
    v39 = MEMORY[0x1E69E7CC0];
    v17 = v33 / v4;
    sub_1C716DA70();
    v16 = v39;
    v34 = *(v39 + 16);
    do
    {
      v36 = *v32++;
      v35 = v36;
      v39 = v16;
      v37 = *(v16 + 24);
      v1 = v34 + 1;
      if (v34 >= v37 >> 1)
      {
        OUTLINED_FUNCTION_15(v37);
        sub_1C716DA70();
        v16 = v39;
      }

      *(v16 + 16) = v1;
      *(v16 + 8 * v34++ + 32) = (v35 - v17) * (v35 - v17);
      --v3;
    }

    while (v3);
LABEL_8:
    v15 = 0.0;
    v18 = 32;
    do
    {
      v15 = v15 + *(v16 + v18);
      v18 += 8;
      --v1;
    }

    while (v1);
LABEL_10:

    v19 = sqrt(v15 / v4);
    v20 = v19 * 0.5;
    if (v19 * 0.5 <= v17 * 0.6)
    {
      v20 = v17 * 0.6;
    }

    if (v17 * 0.95 < v20)
    {
      v20 = v17 * 0.95;
    }

    v21 = v17 - v20;
    v22 = sub_1C754FEEC();
    sub_1C75511BC();
    v23 = OUTLINED_FUNCTION_23();
    if (os_log_type_enabled(v23, v24))
    {
      OUTLINED_FUNCTION_98();
      v1 = swift_slowAlloc();
      *v1 = 134218496;
      *(v1 + 4) = v17;
      *(v1 + 12) = 2048;
      *(v1 + 14) = v19;
      *(v1 + 22) = 2048;
      *(v1 + 24) = v21;
      OUTLINED_FUNCTION_56_1();
      _os_log_impl(v25, v26, v27, v28, v1, 0x20u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v29 = ceil(v21);
    if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v29 > -9.22337204e18)
    {
      if (v29 < 9.22337204e18)
      {
        return v29;
      }

      goto LABEL_30;
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v8 = swift_slowAlloc();
  OUTLINED_FUNCTION_98();
  v9 = swift_slowAlloc();
  v39 = v9;
  *v8 = 134218242;
  if (v4 <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v4 < 9.22337204e18)
  {
    v10 = v9;
    *(v8 + 4) = v4;
    *(v8 + 12) = 2080;
    v38 = a1;
    sub_1C75504FC();
    sub_1C708C988(&v38, sub_1C7422AA4, MEMORY[0x1E69E6530], sub_1C708E0FC, sub_1C7040590);
    v11 = MEMORY[0x1CCA5D090](v38, MEMORY[0x1E69E6530]);
    v13 = v12;

    v14 = sub_1C6F765A4(v11, v13, &v39);

    *(v8 + 14) = v14;
    _os_log_impl(&dword_1C6F5C000, v6, v7, "[shotlistDrivenClusters] filtering from %ld clusters: %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();

    if (!v3)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_32:
  __break(1u);

  __break(1u);
  return result;
}

double sub_1C708B560@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = qword_1EC213D38;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  if (v8 >= a2)
  {
    if (v9 != -1)
    {
      swift_once();
    }

    v17 = sub_1C754FF1C();
    __swift_project_value_buffer(v17, qword_1EC216898);
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v18 = sub_1C754FEEC();
    v19 = sub_1C755117C();

    if (os_log_type_enabled(v18, v19))
    {
      v27 = a2;
      v20 = swift_slowAlloc();
      v25 = v8;
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136315650;
      sub_1C75504FC();
      v22 = v19;
      v23 = sub_1C6F765A4(v5, v4, &v29);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2048;
      *(v20 + 14) = v25;
      *(v20 + 22) = 2048;
      *(v20 + 24) = v27;
      _os_log_impl(&dword_1C6F5C000, v18, v22, "[shotlistDrivenClusters] Keeping cluster %s because it has enough assets matching the shotlist (%ld >= %ld)", v20, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1CCA5F8E0](v21, -1, -1);
      MEMORY[0x1CCA5F8E0](v20, -1, -1);
    }

    *a3 = v5;
    a3[1] = v4;
    a3[2] = v6;
    a3[3] = v7;
  }

  else
  {
    v26 = v5;
    if (v9 != -1)
    {
      swift_once();
    }

    v10 = sub_1C754FF1C();
    __swift_project_value_buffer(v10, qword_1EC216898);
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v11 = sub_1C754FEEC();
    v12 = sub_1C755117C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = v8;
      v15 = swift_slowAlloc();
      v29 = v15;
      *v13 = 136315650;

      v16 = sub_1C6F765A4(v26, v4, &v29);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2048;
      *(v13 + 14) = v14;
      *(v13 + 22) = 2048;
      *(v13 + 24) = a2;
      _os_log_impl(&dword_1C6F5C000, v11, v12, "[shotlistDrivenClusters] Dropping cluster %s because it doesn't have enough assets matching the shotlist (%ld < %ld)", v13, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1CCA5F8E0](v15, -1, -1);
      MEMORY[0x1CCA5F8E0](v13, -1, -1);
    }

    else
    {
    }

    result = 0.0;
    *a3 = 0u;
    *(a3 + 1) = 0u;
  }

  return result;
}

uint64_t sub_1C708B8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  result = swift_beginAccess();
  if (*(a3 + 16))
  {
    return result;
  }

  swift_beginAccess();
  v13 = *(a4 + 16);
  swift_beginAccess();
  *(a3 + 16) = v13;
  swift_beginAccess();
  v14 = *(a4 + 16);
  if (v14 == 1)
  {
    result = swift_beginAccess();
    v15 = round(*(a5 + 16) / a6);
    if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v15 <= -9.22337204e18)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v15 < 9.22337204e18)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  result = swift_beginAccess();
  v15 = floor(*(a5 + 16) / a6);
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    return result;
  }

LABEL_10:
  v16 = v15;
  if (v15 >= 1)
  {
    if (v14)
    {
      v17 = 32;
    }

    else
    {
      v17 = 0;
    }

    if (v14)
    {
      v18 = 0xE100000000000000;
    }

    else
    {
      v18 = 0xE000000000000000;
    }

    v20 = sub_1C7551D8C();
    v21 = v19;
    MEMORY[0x1CCA5CD70](32, 0xE100000000000000);
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](v20, v21);

    sub_1C75504FC();
    if (v16 != 1)
    {
      MEMORY[0x1CCA5CD70](115, 0xE100000000000000);
    }

    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](a1, a2);

    swift_beginAccess();
    MEMORY[0x1CCA5CD70](v17, v18);
    swift_endAccess();

    swift_beginAccess();
    *(a5 + 16) = *(a5 + 16) - v16 * a6;
    result = swift_beginAccess();
    *(a4 + 16) = 1;
  }

  return result;
}

void static Hastings.Cluster.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (sub_1C7551DBC() & 1) != 0)
  {
    v3 = OUTLINED_FUNCTION_64();
    sub_1C7001EBC(v3, v4);
    if (v5)
    {
      OUTLINED_FUNCTION_90();

      sub_1C708BC78();
    }
  }
}

void sub_1C708BC78()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for Hastings.Asset(0);
  v7 = OUTLINED_FUNCTION_18(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_206_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_63_7();
  v9 = type metadata accessor for Hastings.Feature();
  v10 = OUTLINED_FUNCTION_18(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_2();
  v54 = v11;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_140_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A08);
  v14 = OUTLINED_FUNCTION_76(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_78();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_140_1();
  v55 = v19;
  if (v5 == v3 || *(v5 + 16) != *(v3 + 16))
  {
LABEL_34:
    OUTLINED_FUNCTION_25_0();
    return;
  }

  v20 = 0;
  v50 = v3;
  v51 = v5 + 64;
  v21 = 1 << *(v5 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = (v21 + 63) >> 6;
  v58 = v17;
  v52 = v23;
  v53 = v5;
  if ((v22 & *(v5 + 64)) != 0)
  {
    do
    {
      OUTLINED_FUNCTION_36_7();
      v56 = v25;
      v57 = v24;
      v27 = v26 | (v25 << 6);
LABEL_11:
      OUTLINED_FUNCTION_2_19();
      sub_1C708CA24();
      v30 = *(*(v5 + 56) + 8 * v27);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0);
      v32 = *(v31 + 48);
      OUTLINED_FUNCTION_6_10();
      sub_1C7091B68();
      *(v58 + v32) = v30;
      OUTLINED_FUNCTION_25_8();
      __swift_storeEnumTagSinglePayload(v33, v34, v35, v31);
      sub_1C75504FC();
LABEL_12:
      sub_1C7091CBC();
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0);
      if (__swift_getEnumTagSinglePayload(v55, 1, v36) == 1)
      {
        goto LABEL_34;
      }

      v37 = *(v36 + 48);
      OUTLINED_FUNCTION_6_10();
      sub_1C7091B68();
      v38 = *(v55 + v37);
      v39 = sub_1C6FC27A8();
      LOBYTE(v37) = v40;
      OUTLINED_FUNCTION_0_32();
      sub_1C7091C1C(v54, v41);
      if ((v37 & 1) == 0 || (v42 = *(*(v3 + 56) + 8 * v39), v43 = *(v42 + 16), v43 != *(v38 + 16)))
      {
LABEL_33:

        goto LABEL_34;
      }

      if (v43 && v42 != v38)
      {
        OUTLINED_FUNCTION_191();
        sub_1C75504FC();
        v44 = 0;
        while (v44 < *(v42 + 16))
        {
          OUTLINED_FUNCTION_3_22();
          sub_1C708CA24();
          if (v44 >= *(v38 + 16))
          {
            goto LABEL_36;
          }

          sub_1C708CA24();
          if (*v1 == *v0 && v1[1] == v0[1])
          {
            sub_1C7091C1C(v0, type metadata accessor for Hastings.Asset);
            sub_1C7091C1C(v1, type metadata accessor for Hastings.Asset);
          }

          else
          {
            v59 = sub_1C7551DBC();
            sub_1C7091C1C(v0, type metadata accessor for Hastings.Asset);
            sub_1C7091C1C(v1, type metadata accessor for Hastings.Asset);
            if ((v59 & 1) == 0)
            {

              goto LABEL_33;
            }
          }

          if (v43 == ++v44)
          {

            v3 = v50;
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

LABEL_29:

      v23 = v52;
      v5 = v53;
      v20 = v56;
    }

    while (v57);
  }

  while (1)
  {
    v28 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v28 >= v23)
    {
      v56 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0);
      OUTLINED_FUNCTION_84();
      __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
      v57 = 0;
      goto LABEL_12;
    }

    v29 = *(v51 + 8 * v28);
    ++v20;
    if (v29)
    {
      v56 = v28;
      v57 = (v29 - 1) & v29;
      v27 = __clz(__rbit64(v29)) | (v28 << 6);
      goto LABEL_11;
    }
  }

LABEL_37:
  __break(1u);
}

void sub_1C708C178(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = a2;
    v3 = a1;
    OUTLINED_FUNCTION_109_5();
    if (v36)
    {
      v4 = 0;
      v5 = v3 + 64;
      OUTLINED_FUNCTION_90_1();
      v8 = v7 & v6;
      v10 = (v9 + 63) >> 6;
LABEL_5:
      while (v8)
      {
        OUTLINED_FUNCTION_86();
LABEL_12:
        v15 = v11 | (v4 << 6);
        v16 = (*(v3 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(v3 + 56) + 8 * v15);
        sub_1C75504FC();
        sub_1C75504FC();
        v20 = sub_1C6F78124(v17, v18);
        v22 = v21;

        if ((v22 & 1) == 0 || (v23 = *(*(v2 + 56) + 8 * v20), v24 = *(v23 + 16), v24 != *(v19 + 16)))
        {
LABEL_56:

          return;
        }

        if (v24 && v23 != v19)
        {
          v66 = v19 + 32;
          v67 = v23 + 32;
          sub_1C75504FC();
          v25 = 0;
          v60 = v3;
          v61 = v2;
          v64 = v10;
          v65 = v5;
          v62 = v24;
          v63 = v8;
          while (v25 != v24)
          {
            v26 = (v67 + 56 * v25);
            v27 = *v26;
            v28 = v26[1];
            v29 = v26[2];
            v30 = v26[3];
            v31 = v26[5];
            v71 = v26[4];
            v73 = v26[6];
            v68 = v25;
            v32 = (v66 + 56 * v25);
            v34 = v32[2];
            v33 = v32[3];
            v69 = v32[5];
            v70 = v32[4];
            v35 = v32[6];
            v36 = v27 == *v32 && v28 == v32[1];
            if (!v36)
            {
              v37 = v32[3];
              v38 = sub_1C7551DBC();
              v33 = v37;
              if ((v38 & 1) == 0)
              {
                goto LABEL_55;
              }
            }

            v39 = v29 == v34 && v30 == v33;
            if (!v39 && (sub_1C7551DBC() & 1) == 0 || v71 != v70 || v31 != v69)
            {
              goto LABEL_55;
            }

            v40 = v73;
            if (v73 != v35)
            {
              if (*(v73 + 16) != *(v35 + 16))
              {
LABEL_55:

                goto LABEL_56;
              }

              OUTLINED_FUNCTION_90_1();
              v43 = v42 & v41;
              v45 = (v44 + 63) >> 6;
              sub_1C75504FC();
              sub_1C75504FC();
              sub_1C75504FC();
              sub_1C75504FC();
              sub_1C75504FC();
              sub_1C75504FC();
              v46 = 0;
              if (v43)
              {
                while (2)
                {
                  v47 = __clz(__rbit64(v43));
                  v72 = (v43 - 1) & v43;
LABEL_39:
                  v51 = (*(v40 + 48) + 16 * (v47 | (v46 << 6)));
                  v53 = *v51;
                  v52 = v51[1];
                  sub_1C7551F3C();
                  sub_1C75504FC();
                  sub_1C75505AC();
                  sub_1C7551FAC();
                  OUTLINED_FUNCTION_38_7();
                  do
                  {
                    v55 = v54 & &v74;
                    OUTLINED_FUNCTION_88_4();
                    if ((v56 & 1) == 0)
                    {

                      goto LABEL_56;
                    }

                    v57 = (*(v35 + 48) + 16 * v55);
                    if (*v57 == v53 && v57[1] == v52)
                    {
                      break;
                    }

                    v59 = sub_1C7551DBC();
                    v54 = v55 + 1;
                  }

                  while ((v59 & 1) == 0);

                  v43 = v72;
                  v40 = v73;
                  if (v72)
                  {
                    continue;
                  }

                  break;
                }
              }

              v48 = v46;
              while (1)
              {
                v46 = v48 + 1;
                if (__OFADD__(v48, 1))
                {
                  goto LABEL_58;
                }

                if (v46 >= v45)
                {

                  v3 = v60;
                  v2 = v61;
                  break;
                }

                ++v48;
                if (*(v73 + 56 + 8 * v46))
                {
                  OUTLINED_FUNCTION_78_0();
                  v72 = v50 & v49;
                  goto LABEL_39;
                }
              }
            }

            v25 = v68 + 1;
            v24 = v62;
            v8 = v63;
            v10 = v64;
            v5 = v65;
            if (v68 + 1 == v62)
            {

              goto LABEL_5;
            }
          }

          goto LABEL_59;
        }
      }

      v12 = v4;
      while (1)
      {
        v4 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v4 >= v10)
        {
          return;
        }

        ++v12;
        if (*(v5 + 8 * v4))
        {
          OUTLINED_FUNCTION_78_0();
          v8 = v14 & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
    }
  }
}

void sub_1C708C5DC(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    OUTLINED_FUNCTION_109_5();
    if (v4)
    {
      v5 = 0;
      OUTLINED_FUNCTION_11();
      v8 = v7 & v6;
      v10 = (v9 + 63) >> 6;
      while (v8)
      {
        OUTLINED_FUNCTION_86();
LABEL_12:
        v15 = *(*(a1 + 56) + 8 * (v11 | (v5 << 6)));
        sub_1C75504FC();
        v16 = OUTLINED_FUNCTION_64();
        v18 = sub_1C6F78124(v16, v17);
        v20 = v19;

        if ((v20 & 1) == 0 || *(*(a2 + 56) + 8 * v18) != v15)
        {
          return;
        }
      }

      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v10)
        {
          return;
        }

        ++v12;
        if (*(a1 + 64 + 8 * v5))
        {
          OUTLINED_FUNCTION_78_0();
          v8 = v14 & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

void sub_1C708C6E4(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    OUTLINED_FUNCTION_109_5();
    if (v26)
    {
      v4 = 0;
      v5 = v3 + 64;
      OUTLINED_FUNCTION_11();
      v8 = v7 & v6;
      v10 = (v9 + 63) >> 6;
      while (v8)
      {
        OUTLINED_FUNCTION_36_7();
        v28 = v13;
LABEL_12:
        v17 = (*(v11 + 56) + 16 * (v12 | (v4 << 6)));
        v19 = *v17;
        v18 = v17[1];
        sub_1C75504FC();
        sub_1C75504FC();
        v20 = OUTLINED_FUNCTION_15_1();
        v22 = sub_1C6F78124(v20, v21);
        v24 = v23;

        if ((v24 & 1) == 0)
        {

          return;
        }

        v25 = (*(a2 + 56) + 16 * v22);
        v26 = *v25 == v19 && v25[1] == v18;
        if (v26)
        {

          v8 = v28;
        }

        else
        {
          v27 = sub_1C7551DBC();

          v8 = v28;
          if ((v27 & 1) == 0)
          {
            return;
          }
        }
      }

      v14 = v4;
      while (1)
      {
        v4 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v4 >= v10)
        {
          return;
        }

        ++v14;
        if (*(v5 + 8 * v4))
        {
          OUTLINED_FUNCTION_78_0();
          v28 = v16 & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

void Hastings.Cluster.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1C75505AC();
  sub_1C70413CC(a1, v3);
  OUTLINED_FUNCTION_90();

  sub_1C70906F0();
}

uint64_t Hastings.Cluster.hashValue.getter()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_106();
  sub_1C75505AC();
  sub_1C70413CC(v3, v1);
  sub_1C70906F0();
  return sub_1C7551FAC();
}

uint64_t sub_1C708C918()
{
  v1 = *(v0 + 16);
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C70413CC(v3, v1);
  sub_1C70906F0();
  return sub_1C7551FAC();
}

uint64_t sub_1C708C988(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_1C708CB84(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

uint64_t sub_1C708CA24()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

unint64_t sub_1C708CA7C()
{
  result = qword_1EC2168F0;
  if (!qword_1EC2168F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2168E8);
    sub_1C7091C74(&qword_1EC2168F8, type metadata accessor for Hastings.Feature);
    sub_1C6FC18BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2168F0);
  }

  return result;
}

uint64_t type metadata accessor for Hastings.TimeBasedClusterer()
{
  result = qword_1EC216920;
  if (!qword_1EC216920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C708CB84(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_1C7551D7C();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v11 = sub_1C7550BBC();
        *(v11 + 16) = v10;
      }

      v12[0] = v11 + 32;
      v12[1] = v10;
      a3(v12, v13, a1, v9);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

void sub_1C708CC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v52 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v43 - v11;
  v12 = sub_1C754DF6C();
  MEMORY[0x1EEE9AC00](v12);
  v50 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v43 - v16;
  v44 = a2;
  if (a3 == a2)
  {
    return;
  }

  v17 = *a4;
  v48 = (v15 + 32);
  v49 = (v15 + 8);
  v53 = v17;
  v18 = (v17 + 32 * a3);
  v19 = a1 - a3;
  while (2)
  {
    v46 = v18;
    v47 = a3;
    v20 = v53 + 32 * a3;
    v22 = *(v20 + 8);
    v21 = *(v20 + 16);
    v45 = v19;
    v23 = v18;
    do
    {
      v56 = v19;
      v24 = *(v23 - 3);
      v25 = *(v23 - 2);
      v58 = *(v23 - 1);
      if (*(v21 + 16))
      {
        type metadata accessor for Hastings.Asset(0);
        v26 = v51;
        sub_1C6FD7F70();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v26, 1, v12);
        v28 = v52;
        if (EnumTagSinglePayload != 1)
        {
          (*v48)(v57, v26, v12);
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          goto LABEL_10;
        }
      }

      else
      {
        v26 = v51;
        __swift_storeEnumTagSinglePayload(v51, 1, 1, v12);
        v28 = v52;
      }

      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C754DE6C();
      if (__swift_getEnumTagSinglePayload(v26, 1, v12) != 1)
      {
        sub_1C6FD7FC8(v26, &unk_1EC219230);
      }

LABEL_10:
      v29 = *(v25 + 16);
      v54 = v22;
      v55 = v24;
      if (!v29)
      {
        __swift_storeEnumTagSinglePayload(v28, 1, 1, v12);
        v31 = v50;
LABEL_14:
        sub_1C754DE6C();
        v32 = v12;
        if (__swift_getEnumTagSinglePayload(v28, 1, v12) != 1)
        {
          sub_1C6FD7FC8(v28, &unk_1EC219230);
        }

        goto LABEL_16;
      }

      type metadata accessor for Hastings.Asset(0);
      sub_1C6FD7F70();
      v30 = __swift_getEnumTagSinglePayload(v28, 1, v12);
      v31 = v50;
      if (v30 == 1)
      {
        goto LABEL_14;
      }

      (*v48)(v50, v28, v12);
      v32 = v12;
LABEL_16:
      v33 = v57;
      v34 = sub_1C754DEDC();
      v35 = v31;
      v36 = v34;
      v37 = *v49;
      (*v49)(v35, v32);
      v37(v33, v32);

      v12 = v32;
      v38 = v56;
      if ((v36 & 1) == 0)
      {
        break;
      }

      if (!v53)
      {
        __break(1u);
        return;
      }

      v39 = *v23;
      v22 = v23[1];
      v21 = v23[2];
      v40 = v23[3];
      v41 = *(v23 - 1);
      *v23 = *(v23 - 2);
      *(v23 + 1) = v41;
      *(v23 - 3) = v22;
      *(v23 - 2) = v21;
      *(v23 - 1) = v40;
      *(v23 - 4) = v39;
      v23 -= 4;
      v42 = __CFADD__(v38, 1);
      v19 = v38 + 1;
    }

    while (!v42);
    a3 = v47 + 1;
    v18 = v46 + 4;
    v19 = v45 - 1;
    if (v47 + 1 != v44)
    {
      continue;
    }

    break;
  }
}

void sub_1C708D190(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v153 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v149 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v149 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v159 = &v149 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v158 = &v149 - v15;
  v175 = sub_1C754DF6C();
  MEMORY[0x1EEE9AC00](v175);
  MEMORY[0x1EEE9AC00](v16);
  v174 = &v149 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v157 = &v149 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v161 = &v149 - v23;
  v160 = a3;
  v24 = a3[1];
  if (v24 < 1)
  {
    v26 = MEMORY[0x1E69E7CC0];
LABEL_118:
    v28 = *v153;
    if (!*v153)
    {
      goto LABEL_160;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_120;
    }

    goto LABEL_154;
  }

  v165 = v22;
  v150 = a4;
  v25 = 0;
  v164 = (v21 + 32);
  v167 = (v21 + 8);
  v26 = MEMORY[0x1E69E7CC0];
  v168 = v8;
  v169 = v11;
  while (1)
  {
    v27 = v25;
    v28 = v25 + 1;
    if ((v25 + 1) >= v24)
    {
      goto LABEL_36;
    }

    v170 = v24;
    v29 = v11;
    v152 = v26;
    v30 = *v160;
    v31 = v25 + 1;
    v32 = (*v160 + 32 * v28);
    v33 = v32[1];
    v35 = v32[2];
    v34 = v32[3];
    v177[0] = *v32;
    v177[1] = v33;
    v177[2] = v35;
    v177[3] = v34;
    v36 = (v30 + 32 * v27);
    v37 = v36[1];
    v38 = v36[2];
    v39 = v36[3];
    v176[0] = *v36;
    v176[1] = v37;
    v176[2] = v38;
    v176[3] = v39;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v40 = v162;
    LODWORD(v166) = sub_1C7089A10(v177, v176);
    v162 = v40;
    if (v40)
    {

LABEL_128:

      return;
    }

    v156 = 32 * v27;
    v41 = v27;
    v42 = v36 + 6;
    v151 = v41;
    v43 = (v41 + 2);
    v28 = v31;
    v11 = v29;
    v44 = v170;
    while (1)
    {
      v45 = v43;
      if ((v28 + 1) >= v44)
      {
        break;
      }

      v173 = v43;
      v163 = v28;
      v46 = v42[3];
      v47 = v42[4];
      v178 = v42[5];
      v48 = *v42;
      if (*(v47 + 16))
      {
        type metadata accessor for Hastings.Asset(0);
        v49 = v158;
        sub_1C6FD7F70();
        v50 = v175;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v49, 1, v175);
        v52 = v159;
        if (EnumTagSinglePayload != 1)
        {
          (*v164)(v161, v49, v50);
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          goto LABEL_13;
        }
      }

      else
      {
        v49 = v158;
        v50 = v175;
        __swift_storeEnumTagSinglePayload(v158, 1, 1, v175);
        v52 = v159;
      }

      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C754DE6C();
      if (__swift_getEnumTagSinglePayload(v49, 1, v50) != 1)
      {
        sub_1C6FD7FC8(v49, &unk_1EC219230);
      }

LABEL_13:
      v53 = *(v48 + 16);
      v171 = v48;
      v172 = v46;
      if (!v53)
      {
        v54 = v175;
        __swift_storeEnumTagSinglePayload(v52, 1, 1, v175);
        v56 = v157;
LABEL_17:
        sub_1C754DE6C();
        if (__swift_getEnumTagSinglePayload(v52, 1, v54) != 1)
        {
          sub_1C6FD7FC8(v52, &unk_1EC219230);
        }

        goto LABEL_19;
      }

      type metadata accessor for Hastings.Asset(0);
      sub_1C6FD7F70();
      v54 = v175;
      v55 = __swift_getEnumTagSinglePayload(v52, 1, v175);
      v56 = v157;
      if (v55 == 1)
      {
        goto LABEL_17;
      }

      (*v164)(v157, v52, v54);
LABEL_19:
      v57 = v161;
      v58 = sub_1C754DEDC();
      v59 = v56;
      v60 = *v167;
      (*v167)(v59, v54);
      v60(v57, v54);

      v61 = v166 ^ v58;
      v42 += 4;
      v28 = v163 + 1;
      v45 = v173;
      v43 = v173 + 1;
      v8 = v168;
      v11 = v169;
      v44 = v170;
      if (v61)
      {
        goto LABEL_22;
      }
    }

    v28 = v44;
LABEL_22:
    if ((v166 & 1) == 0)
    {
      v26 = v152;
      v27 = v151;
      goto LABEL_36;
    }

    v27 = v151;
    if (v28 < v151)
    {
      goto LABEL_153;
    }

    if (v151 >= v28)
    {
      v26 = v152;
    }

    else
    {
      v62 = v44 >= v45 ? v45 : v44;
      v63 = 32 * v62 - 8;
      v64 = v28;
      v65 = v151;
      v26 = v152;
      v66 = v156;
      do
      {
        if (v65 != --v64)
        {
          v67 = *v160;
          if (!*v160)
          {
            goto LABEL_158;
          }

          v68 = (v67 + v66);
          v69 = (v67 + v63);
          v70 = *v68;
          v71 = v68[3];
          v72 = *(v68 + 1);
          v73 = *(v69 - 1);
          *v68 = *(v69 - 3);
          *(v68 + 1) = v73;
          *(v69 - 3) = v70;
          *(v69 - 1) = v72;
          *v69 = v71;
        }

        ++v65;
        v63 -= 32;
        v66 += 32;
      }

      while (v65 < v64);
    }

LABEL_36:
    v74 = v160[1];
    if (v28 < v74)
    {
      if (__OFSUB__(v28, v27))
      {
        goto LABEL_150;
      }

      if (&v28[-v27] < v150)
      {
        break;
      }
    }

LABEL_66:
    if (v28 < v27)
    {
      goto LABEL_149;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC();
      v26 = v138;
    }

    v95 = *(v26 + 2);
    v96 = v95 + 1;
    if (v95 >= *(v26 + 3) >> 1)
    {
      sub_1C6FB17EC();
      v26 = v139;
    }

    *(v26 + 2) = v96;
    v97 = v26 + 32;
    v98 = &v26[16 * v95 + 32];
    *v98 = v27;
    *(v98 + 1) = v28;
    v163 = v28;
    v28 = *v153;
    if (!*v153)
    {
      goto LABEL_159;
    }

    if (v95)
    {
      while (1)
      {
        v99 = v96 - 1;
        v100 = &v97[16 * v96 - 16];
        v101 = &v26[16 * v96];
        if (v96 >= 4)
        {
          break;
        }

        if (v96 == 3)
        {
          v102 = *(v26 + 4);
          v103 = *(v26 + 5);
          v112 = __OFSUB__(v103, v102);
          v104 = v103 - v102;
          v105 = v112;
LABEL_86:
          if (v105)
          {
            goto LABEL_136;
          }

          v117 = *v101;
          v116 = *(v101 + 1);
          v118 = __OFSUB__(v116, v117);
          v119 = v116 - v117;
          v120 = v118;
          if (v118)
          {
            goto LABEL_139;
          }

          v121 = *(v100 + 1);
          v122 = v121 - *v100;
          if (__OFSUB__(v121, *v100))
          {
            goto LABEL_142;
          }

          if (__OFADD__(v119, v122))
          {
            goto LABEL_144;
          }

          if (v119 + v122 >= v104)
          {
            if (v104 < v122)
            {
              v99 = v96 - 2;
            }

            goto LABEL_108;
          }

          goto LABEL_101;
        }

        if (v96 < 2)
        {
          goto LABEL_138;
        }

        v124 = *v101;
        v123 = *(v101 + 1);
        v112 = __OFSUB__(v123, v124);
        v119 = v123 - v124;
        v120 = v112;
LABEL_101:
        if (v120)
        {
          goto LABEL_141;
        }

        v126 = *v100;
        v125 = *(v100 + 1);
        v112 = __OFSUB__(v125, v126);
        v127 = v125 - v126;
        if (v112)
        {
          goto LABEL_143;
        }

        if (v127 < v119)
        {
          goto LABEL_115;
        }

LABEL_108:
        if (v99 - 1 >= v96)
        {
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        if (!*v160)
        {
          goto LABEL_156;
        }

        v131 = v26;
        v132 = &v97[16 * v99 - 16];
        v133 = *v132;
        v134 = &v97[16 * v99];
        v135 = *(v134 + 1);
        v136 = v162;
        sub_1C708E6C8((*v160 + 32 * *v132), *v160 + 32 * *v134, (*v160 + 32 * v135), v28);
        v162 = v136;
        if (v136)
        {
          goto LABEL_128;
        }

        if (v135 < v133)
        {
          goto LABEL_131;
        }

        v137 = *(v131 + 2);
        if (v99 > v137)
        {
          goto LABEL_132;
        }

        *v132 = v133;
        *(v132 + 1) = v135;
        if (v99 >= v137)
        {
          goto LABEL_133;
        }

        v96 = v137 - 1;
        sub_1C7423CF4(v134 + 16, v137 - 1 - v99, &v97[16 * v99]);
        v26 = v131;
        *(v131 + 2) = v137 - 1;
        v11 = v169;
        if (v137 <= 2)
        {
          goto LABEL_115;
        }
      }

      v106 = &v97[16 * v96];
      v107 = *(v106 - 8);
      v108 = *(v106 - 7);
      v112 = __OFSUB__(v108, v107);
      v109 = v108 - v107;
      if (v112)
      {
        goto LABEL_134;
      }

      v111 = *(v106 - 6);
      v110 = *(v106 - 5);
      v112 = __OFSUB__(v110, v111);
      v104 = v110 - v111;
      v105 = v112;
      if (v112)
      {
        goto LABEL_135;
      }

      v113 = *(v101 + 1);
      v114 = v113 - *v101;
      if (__OFSUB__(v113, *v101))
      {
        goto LABEL_137;
      }

      v112 = __OFADD__(v104, v114);
      v115 = v104 + v114;
      if (v112)
      {
        goto LABEL_140;
      }

      if (v115 >= v109)
      {
        v129 = *v100;
        v128 = *(v100 + 1);
        v112 = __OFSUB__(v128, v129);
        v130 = v128 - v129;
        if (v112)
        {
          goto LABEL_148;
        }

        if (v104 < v130)
        {
          v99 = v96 - 2;
        }

        goto LABEL_108;
      }

      goto LABEL_86;
    }

LABEL_115:
    v24 = v160[1];
    v25 = v163;
    v8 = v168;
    if (v163 >= v24)
    {
      goto LABEL_118;
    }
  }

  v75 = (v27 + v150);
  if (__OFADD__(v27, v150))
  {
    goto LABEL_151;
  }

  if (v75 >= v74)
  {
    v75 = v160[1];
  }

  if (v75 < v27)
  {
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    v26 = sub_1C7420830();
LABEL_120:
    v140 = v26 + 16;
    v141 = *(v26 + 2);
    while (v141 >= 2)
    {
      if (!*v160)
      {
        goto LABEL_157;
      }

      v142 = v26;
      v143 = &v26[16 * v141];
      v144 = *v143;
      v145 = &v140[2 * v141];
      v146 = *(v145 + 1);
      v147 = v162;
      sub_1C708E6C8((*v160 + 32 * *v143), *v160 + 32 * *v145, (*v160 + 32 * v146), v28);
      v162 = v147;
      if (v147)
      {
        break;
      }

      if (v146 < v144)
      {
        goto LABEL_145;
      }

      if (v141 - 2 >= *v140)
      {
        goto LABEL_146;
      }

      *v143 = v144;
      *(v143 + 1) = v146;
      v148 = *v140 - v141;
      if (*v140 < v141)
      {
        goto LABEL_147;
      }

      v141 = *v140 - 1;
      sub_1C7423CF4(v145 + 16, v148, v145);
      *v140 = v141;
      v26 = v142;
    }

    goto LABEL_128;
  }

  if (v28 == v75)
  {
    goto LABEL_66;
  }

  v152 = v26;
  v166 = *v160;
  v151 = v27;
  v76 = v27 - v28;
  v77 = (v166 + 32 * v28);
  v154 = v75;
  while (2)
  {
    v163 = v28;
    v78 = v166 + 32 * v28;
    v80 = *(v78 + 8);
    v79 = *(v78 + 16);
    v155 = v76;
    v156 = v77;
LABEL_46:
    v170 = v76;
    v81 = *(v77 - 3);
    v82 = *(v77 - 2);
    v178 = *(v77 - 1);
    if (*(v79 + 16))
    {
      type metadata accessor for Hastings.Asset(0);
      sub_1C6FD7F70();
      v83 = v175;
      if (__swift_getEnumTagSinglePayload(v11, 1, v175) != 1)
      {
        (*v164)(v174, v11, v83);
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        goto LABEL_52;
      }
    }

    else
    {
      v83 = v175;
      __swift_storeEnumTagSinglePayload(v11, 1, 1, v175);
    }

    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C754DE6C();
    if (__swift_getEnumTagSinglePayload(v11, 1, v83) != 1)
    {
      sub_1C6FD7FC8(v11, &unk_1EC219230);
    }

LABEL_52:
    v84 = *(v82 + 16);
    v172 = v81;
    v173 = v80;
    v171 = v82;
    if (v84)
    {
      type metadata accessor for Hastings.Asset(0);
      sub_1C6FD7F70();
      v85 = v175;
      if (__swift_getEnumTagSinglePayload(v8, 1, v175) != 1)
      {
        v86 = v165;
        (*v164)(v165, v8, v85);
        goto LABEL_58;
      }
    }

    else
    {
      v85 = v175;
      __swift_storeEnumTagSinglePayload(v8, 1, 1, v175);
    }

    v86 = v165;
    sub_1C754DE6C();
    if (__swift_getEnumTagSinglePayload(v8, 1, v85) != 1)
    {
      sub_1C6FD7FC8(v8, &unk_1EC219230);
    }

LABEL_58:
    v87 = v174;
    v88 = sub_1C754DEDC();
    v89 = *v167;
    (*v167)(v86, v85);
    v89(v87, v85);

    if ((v88 & 1) == 0)
    {
      v8 = v168;
      v11 = v169;
LABEL_64:
      v28 = v163 + 1;
      v77 = (v156 + 32);
      v76 = v155 - 1;
      if (v163 + 1 == v154)
      {
        v28 = v154;
        v26 = v152;
        v27 = v151;
        goto LABEL_66;
      }

      continue;
    }

    break;
  }

  v11 = v169;
  v90 = v170;
  if (v166)
  {
    v91 = *v77;
    v80 = v77[1];
    v79 = v77[2];
    v92 = v77[3];
    v93 = *(v77 - 1);
    *v77 = *(v77 - 2);
    *(v77 + 1) = v93;
    *(v77 - 3) = v80;
    *(v77 - 2) = v79;
    *(v77 - 1) = v92;
    *(v77 - 4) = v91;
    v77 -= 4;
    v94 = __CFADD__(v90, 1);
    v76 = v90 + 1;
    v8 = v168;
    if (v94)
    {
      goto LABEL_64;
    }

    goto LABEL_46;
  }

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
}

void sub_1C708E0FC(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v77 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v72 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + 8 * v16);
                *(v17 + 8 * v16) = *(v17 + 8 * v15);
                *(v17 + 8 * v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + 8 * v8 - 8;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 8 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (v23 >= *v25)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              v21 += 8;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v74 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC();
        v7 = v70;
      }

      v28 = v7[2];
      v29 = v28 + 1;
      if (v28 >= v7[3] >> 1)
      {
        sub_1C6FB17EC();
        v7 = v71;
      }

      v7[2] = v29;
      v30 = v7 + 4;
      v31 = &v7[2 * v28 + 4];
      *v31 = v6;
      v31[1] = v8;
      v75 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v28)
      {
        while (1)
        {
          v32 = v29 - 1;
          v33 = &v30[2 * v29 - 2];
          v34 = &v7[2 * v29];
          if (v29 >= 4)
          {
            break;
          }

          if (v29 == 3)
          {
            v35 = v7[4];
            v36 = v7[5];
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_56:
            if (v38)
            {
              goto LABEL_96;
            }

            v50 = *v34;
            v49 = v34[1];
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_99;
            }

            v54 = v33[1];
            v55 = v54 - *v33;
            if (__OFSUB__(v54, *v33))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v52, v55))
            {
              goto LABEL_104;
            }

            if (v52 + v55 >= v37)
            {
              if (v37 < v55)
              {
                v32 = v29 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v29 < 2)
          {
            goto LABEL_98;
          }

          v57 = *v34;
          v56 = v34[1];
          v45 = __OFSUB__(v56, v57);
          v52 = v56 - v57;
          v53 = v45;
LABEL_71:
          if (v53)
          {
            goto LABEL_101;
          }

          v59 = *v33;
          v58 = v33[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_103;
          }

          if (v60 < v52)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v32 - 1 >= v29)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v64 = &v30[2 * v32 - 2];
          v65 = *v64;
          v66 = &v30[2 * v32];
          v67 = v66[1];
          sub_1C708F050((*a3 + 8 * *v64), (*a3 + 8 * *v66), (*a3 + 8 * v67), v75);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v67 < v65)
          {
            goto LABEL_91;
          }

          v68 = v7;
          v69 = v7[2];
          if (v32 > v69)
          {
            goto LABEL_92;
          }

          *v64 = v65;
          v64[1] = v67;
          if (v32 >= v69)
          {
            goto LABEL_93;
          }

          v29 = v69 - 1;
          memmove(&v30[2 * v32], v66 + 2, 16 * (v69 - 1 - v32));
          v68[2] = v69 - 1;
          v19 = v69 > 2;
          v7 = v68;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v39 = &v30[2 * v29];
        v40 = *(v39 - 8);
        v41 = *(v39 - 7);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_94;
        }

        v44 = *(v39 - 6);
        v43 = *(v39 - 5);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_95;
        }

        v46 = v34[1];
        v47 = v46 - *v34;
        if (__OFSUB__(v46, *v34))
        {
          goto LABEL_97;
        }

        v45 = __OFADD__(v37, v47);
        v48 = v37 + v47;
        if (v45)
        {
          goto LABEL_100;
        }

        if (v48 >= v42)
        {
          v62 = *v33;
          v61 = v33[1];
          v45 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v45)
          {
            goto LABEL_105;
          }

          if (v37 < v63)
          {
            v32 = v29 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v74;
      a4 = v72;
      if (v74 >= v5)
      {
        v77 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1C708E59C(&v77, *a1, a3);
LABEL_89:
}

uint64_t sub_1C708E59C(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C7420830();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1C708F050((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1C708E6C8(char *a1, unint64_t a2, _OWORD *a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v78 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v83 = &v78 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v82 = &v78 - v17;
  v18 = sub_1C754DF6C();
  MEMORY[0x1EEE9AC00](v18);
  v86 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v88 = &v78 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v81 = &v78 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v87 = &v78 - v25;
  v26 = (a2 - a1) / 32;
  v84 = (v27 + 32);
  v89 = (v27 + 8);
  v28 = (a3 - a2) / 32;
  if (v26 < v28)
  {
    sub_1C7423D00(a1, (a2 - a1) / 32, a4);
    v29 = &a4[32 * v26];
    v93 = a3;
    v79 = v29;
    while (1)
    {
      if (a4 >= v29 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_51;
      }

      v31 = *(a2 + 8);
      v32 = *(a2 + 16);
      v90 = *(a2 + 24);
      v33 = *(a4 + 1);
      v91 = *(a4 + 2);
      v92 = v31;
      v34 = *(v32 + 2);
      i = *(a4 + 3);
      v86 = v32;
      if (v34)
      {
        type metadata accessor for Hastings.Asset(0);
        v35 = v82;
        sub_1C6FD7F70();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v18);
        v37 = v83;
        if (EnumTagSinglePayload != 1)
        {
          v38 = v18;
          (*v84)(v87, v35, v18);
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          v39 = v91;
          sub_1C75504FC();
          sub_1C75504FC();
          goto LABEL_13;
        }
      }

      else
      {
        v35 = v82;
        __swift_storeEnumTagSinglePayload(v82, 1, 1, v18);
        v37 = v83;
      }

      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v40 = v18;
      v39 = v91;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C754DE6C();
      v38 = v40;
      if (__swift_getEnumTagSinglePayload(v35, 1, v40) != 1)
      {
        sub_1C6FD7FC8(v35, &unk_1EC219230);
      }

LABEL_13:
      v41 = *(v39 + 16);
      v88 = v33;
      if (v41)
      {
        type metadata accessor for Hastings.Asset(0);
        sub_1C6FD7F70();
        if (__swift_getEnumTagSinglePayload(v37, 1, v38) != 1)
        {
          v42 = a1;
          v43 = a4;
          v44 = v81;
          (*v84)(v81, v37, v38);
          goto LABEL_19;
        }
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v37, 1, 1, v38);
      }

      v42 = a1;
      v43 = a4;
      v44 = v81;
      sub_1C754DE6C();
      if (__swift_getEnumTagSinglePayload(v37, 1, v38) != 1)
      {
        sub_1C6FD7FC8(v37, &unk_1EC219230);
      }

LABEL_19:
      v45 = v87;
      v46 = sub_1C754DEDC();
      v47 = v44;
      v48 = v46;
      v49 = *v89;
      (*v89)(v47, v38);
      v49(v45, v38);

      v18 = v38;
      if (v48)
      {
        v50 = a2;
        v51 = v42;
        v52 = v42 == a2;
        a2 += 32;
        a4 = v43;
      }

      else
      {
        v50 = v43;
        a4 = v43 + 32;
        v51 = v42;
        v52 = v42 == v43;
      }

      v29 = v79;
      if (!v52)
      {
        v53 = v50[1];
        *v51 = *v50;
        *(v51 + 1) = v53;
      }

      a1 = v51 + 32;
      a3 = v93;
    }
  }

  sub_1C7423D00(a2, (a3 - a2) / 32, a4);
  v29 = &a4[32 * v28];
  v82 = v13;
  v83 = a4;
  v80 = a1;
LABEL_26:
  v54 = a3 - 2;
  for (i = a2; v29 > a4 && a2 > a1; a2 = i)
  {
    v93 = v54;
    v56 = *(v29 - 3);
    v57 = *(v29 - 2);
    v58 = *(v29 - 1);
    v92 = *(a2 - 16);
    v59 = *(a2 - 8);
    v90 = v58;
    v91 = v59;
    if (*(v57 + 16))
    {
      type metadata accessor for Hastings.Asset(0);
      sub_1C6FD7F70();
      v60 = __swift_getEnumTagSinglePayload(v13, 1, v18);
      v61 = v86;
      if (v60 != 1)
      {
        (*v84)(v88, v13, v18);
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        v62 = v92;
        sub_1C75504FC();
        sub_1C75504FC();
        goto LABEL_38;
      }
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v13, 1, 1, v18);
      v61 = v86;
    }

    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v62 = v92;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C754DE6C();
    if (__swift_getEnumTagSinglePayload(v13, 1, v18) != 1)
    {
      sub_1C6FD7FC8(v13, &unk_1EC219230);
    }

LABEL_38:
    v63 = *(v62 + 16);
    v87 = v56;
    if (v63)
    {
      type metadata accessor for Hastings.Asset(0);
      sub_1C6FD7F70();
      if (__swift_getEnumTagSinglePayload(v10, 1, v18) != 1)
      {
        v64 = v29;
        (*v84)(v61, v10, v18);
        goto LABEL_44;
      }
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v10, 1, 1, v18);
    }

    v64 = v29;
    sub_1C754DE6C();
    if (__swift_getEnumTagSinglePayload(v10, 1, v18) != 1)
    {
      sub_1C6FD7FC8(v10, &unk_1EC219230);
    }

LABEL_44:
    v65 = v10;
    v66 = v88;
    v67 = sub_1C754DEDC();
    v68 = v61;
    v69 = v67;
    v70 = *v89;
    (*v89)(v68, v18);
    v70(v66, v18);

    if (v69)
    {
      v73 = i;
      a3 = v93;
      a1 = v80;
      v29 = v64;
      v10 = v65;
      a2 = (i - 2);
      v13 = v82;
      a4 = v83;
      if (v93 + 2 != i)
      {
        v74 = *(i - 1);
        *v93 = *(i - 2);
        a3[1] = v74;
        a2 = (v73 - 2);
      }

      goto LABEL_26;
    }

    v71 = v93;
    a1 = v80;
    if (v64 != (v93 + 2))
    {
      v72 = *(v64 - 1);
      *v93 = *(v64 - 2);
      v71[1] = v72;
    }

    v54 = v71 - 2;
    v29 = v64 - 32;
    v13 = v82;
    a4 = v83;
    v10 = v65;
  }

LABEL_51:
  v75 = (v29 - a4) / 32;
  if (a2 != a4 || a2 >= &a4[32 * v75])
  {
    memmove(a2, a4, 32 * v75);
  }

  return 1;
}

uint64_t sub_1C708F050(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_1C7423CF8(a1);
    v10 = &a4[v8];
    while (1)
    {
      if (a4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *a4)
      {
        break;
      }

      v13 = v7 == v6++;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
    }

    v12 = *a4;
    v13 = v7 == a4++;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_1C7423CF8(a2);
  v10 = &a4[v9];
LABEL_15:
  v14 = v6 - 1;
  for (--v5; v10 > a4 && v6 > v7; --v5)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 1 == v6--;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 1)
    {
      *v5 = v16;
    }

    --v10;
  }

LABEL_28:
  v17 = v10 - a4;
  if (v6 != a4 || v6 >= &a4[v17])
  {
    memmove(v6, a4, 8 * v17);
  }

  return 1;
}

uint64_t sub_1C708F1C4(uint64_t a1, uint64_t a2, long double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2169F8);
  result = sub_1C7551AEC();
  v7 = result;
  v8 = 0;
  v28 = a1;
  v29 = result;
  v11 = *(a1 + 64);
  v10 = a1 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v27 = result + 64;
  if ((v13 & v9) != 0)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_10:
      v19 = v16 | (v8 << 6);
      v20 = (*(v28 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      v32 = *(*(v28 + 56) + 8 * v19);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C7084E5C(&v32, a2, &v31, a3);
      if (v3)
      {
        break;
      }

      *(v27 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v7 = v29;
      v23 = (v29[6] + 16 * v19);
      *v23 = v21;
      v23[1] = v22;
      *(v29[7] + 8 * v19) = v31;
      v24 = v29[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_18;
      }

      v29[2] = v26;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v7 = v29;

    return v7;
  }

  else
  {
LABEL_5:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v15)
      {

        return v7;
      }

      v18 = *(v10 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C708F3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A00);
  result = sub_1C7551AEC();
  v6 = result;
  v7 = 0;
  v27 = a1;
  v28 = result;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v26 = result + 64;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v19 = (*(v27 + 48) + 16 * v18);
      v20 = *v19;
      v21 = v19[1];
      v32 = *(*(v27 + 56) + 8 * v18);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C7084B50(&v32, a2, a3, &v31);
      if (v3)
      {
        break;
      }

      *(v26 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v6 = v28;
      v22 = (v28[6] + 16 * v18);
      *v22 = v20;
      v22[1] = v21;
      *(v28[7] + 8 * v18) = v31;
      v23 = v28[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_18;
      }

      v28[2] = v25;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v6 = v28;

    return v6;
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {

        return v6;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C708F59C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  v5 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      v5 = sub_1C708FE24(v12, v7, v5, a3);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      return v5;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  sub_1C71FAC38(0, v7, v13 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0));
  v8 = OUTLINED_FUNCTION_117_0();
  v9 = a2(v8);
  if (!v3)
  {
    return v9;
  }

  swift_willThrow();
  return v5;
}

void *sub_1C708F710(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = a1[32];
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v10 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();
      sub_1C75504FC();
      sub_1C75504FC();
      v6 = sub_1C708FEA8(v14, v9, v6, a2, a3, sub_1C708FB1C);
      MEMORY[0x1CCA5F8E0](v14, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v10);
  v11 = v15 - ((8 * v9 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C71FAC38(0, v9, v11);
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C708FB1C(v11, v9, v6, a2, a3);
  if (v3)
  {
    swift_willThrow();
  }

  else
  {
    v6 = v12;
  }

LABEL_6:
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  return v6;
}

void sub_1C708F944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11) < 0.0)
    {
      *(a1 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1C7483DE0(a1, a2, v4);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      goto LABEL_15;
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1C708FA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11) > 0.0)
    {
      *(a1 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1C7483DE0(a1, a2, v4);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      goto LABEL_15;
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1C708FB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a2;
  v34 = a5;
  v36 = a4;
  v30 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0);
  MEMORY[0x1EEE9AC00](v33);
  v7 = &v29 - v6;
  v8 = type metadata accessor for Hastings.Feature();
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0;
  v11 = 0;
  v35 = a3;
  v14 = *(a3 + 64);
  v13 = a3 + 64;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_11:
    v22 = v19 | (v11 << 6);
    v23 = v35;
    sub_1C708CA24();
    v24 = *(*(v23 + 56) + 8 * v22);
    sub_1C708CA24();
    *&v7[*(v33 + 48)] = v24;
    swift_bridgeObjectRetain_n();
    sub_1C700A254();
    if (v25)
    {
      sub_1C6FD7FC8(v7, &qword_1EC2168B0);

      sub_1C7091C1C(v10, type metadata accessor for Hastings.Feature);
LABEL_15:
      *(v30 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_18:
        sub_1C7484374();

        return;
      }
    }

    else
    {
      sub_1C700A254();
      v27 = v26;
      sub_1C6FD7FC8(v7, &qword_1EC2168B0);

      sub_1C7091C1C(v10, type metadata accessor for Hastings.Feature);
      if (v27)
      {
        goto LABEL_15;
      }
    }
  }

  v20 = v11;
  while (1)
  {
    v11 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      goto LABEL_18;
    }

    v21 = *(v13 + 8 * v11);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v17 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1C708FE24(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v5 = OUTLINED_FUNCTION_117_0();
    v6 = a4(v5);

    return v6;
  }

  return result;
}

void *sub_1C708FEA8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v12 = a6(v11, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v12;
  }

  return result;
}

uint64_t sub_1C708FF78(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v42 = a5;
  sub_1C6F78034(v41);
  v6 = v41[1];
  v7 = v41[3];
  v8 = v41[4];
  v34 = v41[5];
  v35 = v41[0];
  v9 = (v41[2] + 64) >> 6;
  sub_1C75504FC();

  if (v8)
  {
    while (1)
    {
      v36 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v35 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v35 + 56) + 8 * v12);
      v40[0] = *v13;
      v40[1] = v14;
      v40[2] = v15;
      sub_1C75504FC();
      v34(&v37, v40);

      v16 = v37;
      v17 = v38;
      v18 = v39;
      v19 = *v42;
      v21 = sub_1C6F78124(v37, v38);
      v22 = v19[2];
      v23 = (v20 & 1) == 0;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v24 = v20;
      if (v19[3] >= v22 + v23)
      {
        if ((v36 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DE0);
          sub_1C7551A3C();
        }
      }

      else
      {
        sub_1C7354094();
        v25 = sub_1C6F78124(v16, v17);
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_24;
        }

        v21 = v25;
      }

      v8 &= v8 - 1;
      v27 = *v42;
      if (v24)
      {
        v28 = *(v27[7] + 8 * v21);

        *(v27[7] + 8 * v21) = v28 - v18;
      }

      else
      {
        v27[(v21 >> 6) + 8] |= 1 << v21;
        v29 = (v27[6] + 16 * v21);
        *v29 = v16;
        v29[1] = v17;
        *(v27[7] + 8 * v21) = v18;
        v30 = v27[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_23;
        }

        v27[2] = v32;
      }

      a4 = 1;
      v7 = v10;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_1C6F61E88();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v36 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C7090218(uint64_t a1, int64_t a2, uint64_t a3)
{
  v4 = v3;
  v33[2] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;
  sub_1C75504FC();
  v12 = sub_1C75504FC();
  if (v9 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v31 = a3;
    v32 = a2;
    v29 = v27;
    MEMORY[0x1EEE9AC00](v12);
    v27[1] = v10;
    v28 = v27 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1C71FAC38(0, v10, v28);
    v30 = 0;
    v13 = 0;
    v10 = a1 + 56;
    v14 = 1 << *(a1 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    a3 = v15 & *(a1 + 56);
    a2 = (v14 + 63) >> 6;
    while (a3)
    {
      v16 = __clz(__rbit64(a3));
      a3 &= a3 - 1;
LABEL_12:
      v11 = v16 | (v13 << 6);
      v19 = (*(a1 + 48) + 16 * v11);
      v20 = v19[1];
      v33[0] = *v19;
      v33[1] = v20;
      sub_1C75504FC();
      v21 = sub_1C708AF7C(v33, v32, v31);
      if (v4)
      {

        swift_willThrow();

        goto LABEL_18;
      }

      v22 = v21;

      if (v22)
      {
        *(v28 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
LABEL_17:
          sub_1C71FFA70();
          v13 = v24;

          goto LABEL_18;
        }
      }
    }

    v17 = v13;
    while (1)
    {
      v13 = (v17 + 1);
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v13 >= a2)
      {
        goto LABEL_17;
      }

      v18 = *(v10 + 8 * v13);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        a3 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v26 = swift_slowAlloc();
  sub_1C75504FC();
  sub_1C75504FC();
  v13 = sub_1C708FEA8(v26, v10, a1, a2, a3, sub_1C7090550);

  MEMORY[0x1CCA5F8E0](v26, -1, -1);

LABEL_18:

  return v13;
}

uint64_t sub_1C7090550(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v25 = 0;
  v24 = result;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v17 = (*(a3 + 48) + 16 * v16);
    v18 = v17[1];
    v27[0] = *v17;
    v27[1] = v18;
    sub_1C75504FC();
    v19 = sub_1C708AF7C(v27, v28, a5);
    if (v5)
    {
    }

    v20 = v19;

    if (v20)
    {
      *(v24 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
LABEL_16:

        sub_1C71FFA70();
        v23 = v22;

        return v23;
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_16;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1C70906F0()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v60 = v3;
  v4 = type metadata accessor for Hastings.Asset(0);
  v5 = OUTLINED_FUNCTION_18(v4);
  v56[0] = v6;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_85_4();
  v59 = type metadata accessor for Hastings.Feature();
  OUTLINED_FUNCTION_3_0();
  v56[2] = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_2();
  v58 = v9;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_140_1();
  v56[1] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A08);
  v13 = OUTLINED_FUNCTION_76(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_78();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v56 - v18;
  v20 = v2 + 64;
  OUTLINED_FUNCTION_11();
  v23 = v22 & v21;
  v25 = (v24 + 63) >> 6;
  v57 = v2;
  sub_1C75504FC();
  v26 = 0;
  v27 = 0;
  v61 = v16;
  v62 = v19;
  while (1)
  {
    v63 = v26;
    if (!v23)
    {
      break;
    }

    v28 = v27;
LABEL_8:
    v29 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v30 = v29 | (v28 << 6);
    v31 = v57;
    OUTLINED_FUNCTION_2_19();
    sub_1C708CA24();
    v32 = *(*(v31 + 56) + 8 * v30);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0);
    v34 = *(v33 + 48);
    OUTLINED_FUNCTION_6_10();
    v35 = v61;
    sub_1C7091B68();
    *(v35 + v34) = v32;
    OUTLINED_FUNCTION_25_8();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v33);
    sub_1C75504FC();
    v19 = v62;
LABEL_9:
    sub_1C7091CBC();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0);
    if (__swift_getEnumTagSinglePayload(v19, 1, v39) == 1)
    {

      MEMORY[0x1CCA5E460](v63);
      OUTLINED_FUNCTION_25_0();
      return;
    }

    v40 = *(v39 + 48);
    OUTLINED_FUNCTION_6_10();
    v41 = v58;
    sub_1C7091B68();
    v42 = *&v19[v40];
    memcpy(v64, v60, sizeof(v64));
    sub_1C75505AC();
    switch(*(v41 + 16))
    {
      case 1:
        OUTLINED_FUNCTION_25_10();
        break;
      case 2:
        OUTLINED_FUNCTION_43_8();
        break;
      case 3:
        OUTLINED_FUNCTION_65_7();
        break;
      case 4:
        OUTLINED_FUNCTION_44_8();
        break;
      case 5:
        OUTLINED_FUNCTION_24_14();
        break;
      default:
        break;
    }

    sub_1C75505AC();

    sub_1C754F58C();
    OUTLINED_FUNCTION_5_23();
    sub_1C7091C74(&qword_1EC215238, v47);
    OUTLINED_FUNCTION_93_4();
    sub_1C755059C();
    OUTLINED_FUNCTION_0_32();
    sub_1C7091C1C(v41, v48);
    MEMORY[0x1CCA5E460](*(v42 + 16));
    v49 = *(v42 + 16);
    if (v49)
    {
      OUTLINED_FUNCTION_15_4();
      v51 = v42 + v50;
      v53 = *(v52 + 72);
      do
      {
        OUTLINED_FUNCTION_3_22();
        sub_1C708CA24();
        sub_1C75505AC();
        OUTLINED_FUNCTION_1_30();
        sub_1C7091C1C(v0, v54);
        v51 += v53;
        --v49;
      }

      while (v49);
    }

    v55 = sub_1C7551FAC();
    v19 = v62;
    v26 = v55 ^ v63;
  }

  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v25)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0);
      OUTLINED_FUNCTION_84();
      __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
      v23 = 0;
      goto LABEL_9;
    }

    v23 = *(v20 + 8 * v28);
    ++v27;
    if (v23)
    {
      v27 = v28;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_1C7090B94(const void *a1, uint64_t a2)
{
  v2 = a2 + 64;
  OUTLINED_FUNCTION_11();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  result = sub_1C75504FC();
  v9 = 0;
  v10 = 0;
  v24 = v7;
  v25 = v2;
  if (!v5)
  {
    goto LABEL_3;
  }

  do
  {
    v29 = v9;
LABEL_7:
    v28 = v5;
    v12 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v5)) | (v10 << 6)));
    memcpy(__dst, a1, sizeof(__dst));
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75505AC();

    MEMORY[0x1CCA5E460](*(v12 + 16));
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = (v12 + 80);
      do
      {
        v15 = *(v14 - 2);
        v16 = *(v14 - 1);
        v17 = *v14;
        v14 += 7;
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75505AC();
        sub_1C75505AC();
        MEMORY[0x1CCA5E460](v15);
        MEMORY[0x1CCA5E460](v16);
        sub_1C7041DF0(__dst, v17, v18, v19, v20, v21, v22, v23);

        --v13;
      }

      while (v13);
    }

    v5 = (v28 - 1) & v28;

    result = sub_1C7551FAC();
    v9 = result ^ v29;
    v7 = v24;
    v2 = v25;
  }

  while (v5);
LABEL_3:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1CCA5E460](v9);
    }

    v5 = *(v2 + 8 * v11);
    ++v10;
    if (v5)
    {
      v29 = v9;
      v10 = v11;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C7090D88(const void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  OUTLINED_FUNCTION_11();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  result = sub_1C75504FC();
  v11 = 0;
  v12 = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  do
  {
    v13 = v12;
LABEL_7:
    v14 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v15 = *(*(a2 + 56) + 8 * (v14 | (v13 << 6)));
    memcpy(__dst, a1, sizeof(__dst));
    sub_1C75504FC();
    sub_1C75505AC();

    if (v15 == 0.0)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v15;
    }

    MEMORY[0x1CCA5E4A0](*&v16);
    result = sub_1C7551FAC();
    v11 ^= result;
  }

  while (v7);
LABEL_3:
  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return MEMORY[0x1CCA5E460](v11);
    }

    v7 = *(v4 + 8 * v13);
    ++v12;
    if (v7)
    {
      v12 = v13;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C7090ECC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1C7090F20()
{
  result = qword_1EC216900;
  if (!qword_1EC216900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216900);
  }

  return result;
}

unint64_t sub_1C7090F78()
{
  result = qword_1EC216908;
  if (!qword_1EC216908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216908);
  }

  return result;
}

unint64_t sub_1C7091018()
{
  result = qword_1EC216918;
  if (!qword_1EC216918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216918);
  }

  return result;
}

uint64_t sub_1C709106C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C70910AC(uint64_t result, int a2, int a3)
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

void sub_1C7091148()
{
  sub_1C754FF1C();
  if (v0 <= 0x3F)
  {
    sub_1C7091218();
    if (v1 <= 0x3F)
    {
      sub_1C709125C();
      if (v2 <= 0x3F)
      {
        sub_1C70912D4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1C7091218()
{
  result = qword_1EDD10110;
  if (!qword_1EDD10110)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD10110);
  }

  return result;
}

void sub_1C709125C()
{
  if (!qword_1EC216930)
  {
    _s18TimeBasedClustererV18DiagnosticReporterCMa();
    v0 = sub_1C755149C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC216930);
    }
  }
}

unint64_t sub_1C70912D4()
{
  result = qword_1EC216938;
  if (!qword_1EC216938)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC216938);
  }

  return result;
}

uint64_t _s17ClusterComparatorV18DiagnosticReporterC6ReasonOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x7D)
  {
    if (a2 + 131 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 131) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 132;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v5 >= 0x7C)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *_s17ClusterComparatorV18DiagnosticReporterC6ReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 131 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 131) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x7D)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x7C)
  {
    v6 = ((a2 - 125) >> 8) + 1;
    *result = a2 - 125;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C70914E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}