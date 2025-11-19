uint64_t sub_1C74A2DCC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1C74A2E18(uint64_t a1)
{
  result = sub_1C74A2EEC(&qword_1EC21C450, type metadata accessor for PersonalTraitGenerator.VUAssetSampler);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C74A2E94(uint64_t a1)
{
  result = sub_1C74A2EEC(&qword_1EC21C458, type metadata accessor for PersonalTraitGenerator.MomentSampler);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C74A2EEC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of PersonalTraitGenerator.AssetSampler.sample(maximumNumberOfClusters:maximumNumberOfSamplesPerCluster:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C74A3094;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1C74A3094(uint64_t a1)
{

  OUTLINED_FUNCTION_116();

  return v2(a1);
}

uint64_t dispatch thunk of PersonalTraitGenerator.VUAssetSampler.sample(maximumNumberOfClusters:maximumNumberOfSamplesPerCluster:)()
{
  OUTLINED_FUNCTION_19_27();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_12_34(v1);

  return v3(v2);
}

uint64_t dispatch thunk of PersonalTraitGenerator.MomentSampler.sample(maximumNumberOfClusters:maximumNumberOfSamplesPerCluster:)()
{
  OUTLINED_FUNCTION_19_27();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_12_34(v1);

  return v3(v2);
}

uint64_t sub_1C74A3420(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C74A34D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C74A3540()
{
  result = qword_1EC21C468;
  if (!qword_1EC21C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C468);
  }

  return result;
}

_BYTE *_s14descr1F469BF11V13MomentSamplerC5ErrorOwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C74A3644()
{
  result = qword_1EC21C470;
  if (!qword_1EC21C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C470);
  }

  return result;
}

void static SpatialAnalyticsUtils.sendPersistEvent(asset:outputURL:spatialType:)()
{
  OUTLINED_FUNCTION_33();
  v45 = v2;
  v46 = v0;
  v4 = v3;
  v6 = v5;
  sub_1C755001C();
  OUTLINED_FUNCTION_3_0();
  v50 = v8;
  v51 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_0();
  v48 = v10 - v9;
  v49 = sub_1C755006C();
  OUTLINED_FUNCTION_3_0();
  v47 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_111();
  v44 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = *v4;
  if (qword_1EC2141B8 != -1)
  {
    OUTLINED_FUNCTION_3_120();
  }

  v18 = sub_1C754FF1C();
  __swift_project_value_buffer(v18, qword_1EC21C478);
  v19 = v6;
  v20 = sub_1C754FEEC();
  v21 = sub_1C755118C();
  if (OUTLINED_FUNCTION_128(v21))
  {
    v42 = v1;
    v22 = swift_slowAlloc();
    v53[0] = swift_slowAlloc();
    *v22 = 136315394;
    OUTLINED_FUNCTION_14_71();
    *(v22 + 4) = sub_1C6F765A4(0xD000000000000023, v23, v24);
    *(v22 + 12) = 2080;
    v25 = sub_1C70CAC04(v19);
    v27 = v26;

    if (!v27)
    {
      __break(1u);
      return;
    }

    v28 = sub_1C6F765A4(v25, v27, v53);

    *(v22 + 14) = v28;
    _os_log_impl(&dword_1C6F5C000, v20, v21, "Preparing %s payload for %s", v22, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_79();

    v1 = v42;
  }

  else
  {
  }

  if (qword_1EC2141C0 != -1)
  {
    OUTLINED_FUNCTION_5_101();
  }

  v29 = v44;
  (*(v14 + 16))(&v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v45, v44);
  v30 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v31 = swift_allocObject();
  v32 = v46;
  *(v31 + 16) = v19;
  *(v31 + 24) = v32;
  (*(v14 + 32))(v31 + v30, &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
  *(v31 + v30 + v16) = v43;
  v53[4] = sub_1C74A5B5C;
  v53[5] = v31;
  OUTLINED_FUNCTION_1_142();
  OUTLINED_FUNCTION_0_197(COERCE_DOUBLE(1107296256));
  v53[2] = v33;
  v53[3] = &block_descriptor_44;
  v34 = _Block_copy(v53);
  v35 = v19;
  sub_1C755003C();
  v52 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_2_132();
  sub_1C74A6A84(v36, v37);
  v38 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21AFC0);
  sub_1C6F65C70(&qword_1EDD0CF90, &unk_1EC21AFC0);
  v39 = v48;
  v40 = v51;
  sub_1C75515FC();
  MEMORY[0x1CCA5D7B0](0, v38, v39, v34);
  _Block_release(v34);
  (*(v50 + 8))(v39, v40);
  (*(v47 + 8))(v38, v49);

  OUTLINED_FUNCTION_25_0();
}

void static SpatialAnalyticsUtils.sendGenerationEvent(asset:mxiScene:spatialType:)()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_16_70();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_111();
  sub_1C755006C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_13_93();
  v30 = v5;
  if (qword_1EC2141B8 != -1)
  {
    OUTLINED_FUNCTION_3_120();
  }

  v6 = sub_1C754FF1C();
  __swift_project_value_buffer(v6, qword_1EC21C478);
  v7 = v0;
  v8 = sub_1C754FEEC();
  v9 = sub_1C755118C();
  if (OUTLINED_FUNCTION_128(v9))
  {
    v29 = v1;
    v10 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v10 = 136315394;
    OUTLINED_FUNCTION_14_71();
    *(v10 + 4) = sub_1C6F765A4(0xD000000000000024, v11, v12);
    *(v10 + 12) = 2080;
    v13 = sub_1C70CAC04(v7);
    v15 = v14;

    if (!v15)
    {
      __break(1u);
      return;
    }

    v16 = sub_1C6F765A4(v13, v15, v31);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_1C6F5C000, v8, v9, "Preparing %s payload for %s", v10, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_109();

    v1 = v29;
  }

  else
  {
  }

  if (qword_1EC2141C0 != -1)
  {
    OUTLINED_FUNCTION_5_101();
  }

  OUTLINED_FUNCTION_99_0();
  v17 = swift_allocObject();
  *(v17 + 16) = v30;
  *(v17 + 24) = v1;
  *(v17 + 32) = v7;
  *(v17 + 40) = v2;
  v31[4] = sub_1C74A6750;
  v31[5] = v17;
  OUTLINED_FUNCTION_1_142();
  OUTLINED_FUNCTION_0_197(COERCE_DOUBLE(1107296256));
  v31[2] = v18;
  v31[3] = &block_descriptor_6;
  v19 = _Block_copy(v31);
  v20 = v1;
  v21 = v7;
  sub_1C755003C();
  OUTLINED_FUNCTION_2_132();
  sub_1C74A6A84(v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21AFC0);
  sub_1C6F65C70(&qword_1EDD0CF90, &unk_1EC21AFC0);
  OUTLINED_FUNCTION_8_94();
  v24 = OUTLINED_FUNCTION_12_84();
  MEMORY[0x1CCA5D7B0](v24);
  _Block_release(v19);
  v25 = OUTLINED_FUNCTION_9_94();
  v26(v25);
  v27 = OUTLINED_FUNCTION_15_84();
  v28(v27);

  OUTLINED_FUNCTION_25_0();
}

void static SpatialAnalyticsUtils.sendToggleEvent(_:asset:spatialType:isNavigationSourceWidget:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v34 = v6;
  sub_1C755001C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_111();
  sub_1C755006C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_13_93();
  v33 = v9;
  if (qword_1EC2141B8 != -1)
  {
    OUTLINED_FUNCTION_3_120();
  }

  v10 = sub_1C754FF1C();
  __swift_project_value_buffer(v10, qword_1EC21C478);
  v11 = v5;
  v12 = sub_1C754FEEC();
  v13 = sub_1C755118C();
  if (OUTLINED_FUNCTION_128(v13))
  {
    v32 = v1;
    v14 = swift_slowAlloc();
    v35[0] = swift_slowAlloc();
    *v14 = 136315394;
    OUTLINED_FUNCTION_14_71();
    *(v14 + 4) = sub_1C6F765A4(0xD000000000000022, v15, v16);
    *(v14 + 12) = 2080;
    v17 = sub_1C70CAC04(v11);
    v19 = v18;

    if (!v19)
    {
      __break(1u);
      return;
    }

    v20 = sub_1C6F765A4(v17, v19, v35);

    *(v14 + 14) = v20;
    _os_log_impl(&dword_1C6F5C000, v12, v13, "Preparing %s payload for %s", v14, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_109();

    v1 = v32;
  }

  else
  {
  }

  if (qword_1EC2141C0 != -1)
  {
    OUTLINED_FUNCTION_5_101();
  }

  v21 = swift_allocObject();
  *(v21 + 16) = v11;
  *(v21 + 24) = v1;
  *(v21 + 32) = v34 & 1;
  *(v21 + 33) = v3;
  *(v21 + 34) = v33;
  v35[4] = sub_1C74A6784;
  v35[5] = v21;
  OUTLINED_FUNCTION_1_142();
  OUTLINED_FUNCTION_0_197(COERCE_DOUBLE(1107296256));
  v35[2] = v22;
  v35[3] = &block_descriptor_12_1;
  v23 = _Block_copy(v35);
  v24 = v11;
  sub_1C755003C();
  OUTLINED_FUNCTION_2_132();
  sub_1C74A6A84(v25, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21AFC0);
  sub_1C6F65C70(&qword_1EDD0CF90, &unk_1EC21AFC0);
  OUTLINED_FUNCTION_8_94();
  v27 = OUTLINED_FUNCTION_12_84();
  MEMORY[0x1CCA5D7B0](v27);
  _Block_release(v23);
  v28 = OUTLINED_FUNCTION_9_94();
  v29(v28);
  v30 = OUTLINED_FUNCTION_15_84();
  v31(v30);

  OUTLINED_FUNCTION_25_0();
}

PNSpatialAnalyticsUtils __swiftcall PNSpatialAnalyticsUtils.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1C74A4480()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21C478);
  __swift_project_value_buffer(v0, qword_1EC21C478);
  return sub_1C754FEFC();
}

uint64_t sub_1C74A4500()
{
  v7 = sub_1C755125C();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C755124C();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C755006C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1C6F65BE8(0, &unk_1EDD0FA90);
  sub_1C755003C();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1C74A6A84(&qword_1EDD0FAA0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215B30);
  sub_1C6F65C70(&qword_1EDD0FAE0, &unk_1EC215B30);
  sub_1C75515FC();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1C75512AC();
  qword_1EC21C490 = result;
  return result;
}

PhotosIntelligence::SpatialAnalyticsUtils::SignpostType_optional __swiftcall SpatialAnalyticsUtils.SignpostType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SpatialAnalyticsUtils.SignpostType.rawValue.getter()
{
  result = 0xD00000000000002BLL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000033;
      break;
    case 2:
      result = 0xD00000000000002FLL;
      break;
    case 3:
      result = 0xD000000000000037;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C74A4864@<X0>(unint64_t *a1@<X8>)
{
  result = SpatialAnalyticsUtils.SignpostType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

PhotosIntelligence::SpatialAnalyticsUtils::SpatialType_optional __swiftcall SpatialAnalyticsUtils.SpatialType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t SpatialAnalyticsUtils.SpatialType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6F6572657473;
  }

  else
  {
    return 17459;
  }
}

uint64_t sub_1C74A494C@<X0>(uint64_t *a1@<X8>)
{
  result = SpatialAnalyticsUtils.SpatialType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1C74A4974(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = a4;
  [a1 fetchPropertySetsIfNeeded];
  v6 = sub_1C74A4DF8(a1);
  sub_1C6F65BE8(0, &qword_1EDD108E0);
  sub_1C75513BC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C6FC7E40();
  sub_1C74A5198(a1);
  sub_1C75513BC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C6FC7E40();
  if (v5 != 2)
  {
    sub_1C75513BC();
    swift_isUniquelyReferenced_nonNull_native();
    v24 = v6;
    sub_1C6FC7E40();
  }

  sub_1C6F65BE8(0, &qword_1EC21B178);
  sub_1C75037BC();
  swift_isUniquelyReferenced_nonNull_native();
  v24 = v6;
  sub_1C6FC7E40();
  v7 = objc_opt_self();
  v8 = sub_1C755065C();
  sub_1C6F65BE8(0, &qword_1EDD10100);
  sub_1C75504FC();
  v9 = sub_1C755048C();

  [v7 sendEvent:v8 withPayload:v9];

  if (qword_1EC2141B8 != -1)
  {
    swift_once();
  }

  v10 = sub_1C754FF1C();
  __swift_project_value_buffer(v10, qword_1EC21C478);
  v11 = a1;
  oslog = sub_1C754FEEC();
  v12 = sub_1C755118C();
  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315650;
    *(v13 + 4) = sub_1C6F765A4(0xD000000000000022, 0x80000001C75B1EA0, &v24);
    *(v13 + 12) = 2080;
    v15 = sub_1C70CAC04(v11);
    v17 = v16;

    if (!v17)
    {
      __break(1u);
      return;
    }

    v18 = sub_1C6F765A4(v15, v17, &v24);

    *(v13 + 14) = v18;
    *(v13 + 22) = 2080;

    v19 = sub_1C75504BC();
    v21 = v20;

    v22 = sub_1C6F765A4(v19, v21, &v24);

    *(v13 + 24) = v22;
    _os_log_impl(&dword_1C6F5C000, oslog, v12, "Sent %s analytics for event '%s' with payload: %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1CCA5F8E0](v14, -1, -1);
    MEMORY[0x1CCA5F8E0](v13, -1, -1);
  }

  else
  {
  }
}

id sub_1C74A4DF8(void *a1)
{
  sub_1C755068C();
  v2 = objc_opt_self();
  result = [v2 descriptionForMediaType_];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  sub_1C6F65BE8(0, &qword_1EC21B178);
  sub_1C755068C();

  sub_1C75037BC();
  v5 = MEMORY[0x1E69E7CC8];
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C6FC7E40();

  v6 = v5;
  sub_1C755068C();
  result = [v2 descriptionForMediaSubtypes_];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  sub_1C755068C();

  sub_1C75037BC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C6FC7E40();

  v8 = [a1 photosInfoPanelExtendedProperties];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 focalLengthIn35mm];
    if (v10)
    {
    }

    sub_1C6F65BE8(0, &qword_1EDD108E0);
    sub_1C75513BC();
    swift_isUniquelyReferenced_nonNull_native();
    v13 = v6;
    sub_1C6FC7E40();
  }

  else
  {
    sub_1C6F65BE8(0, &qword_1EDD108E0);
    sub_1C75513BC();
    swift_isUniquelyReferenced_nonNull_native();
    v13 = v6;
    sub_1C6FC7E40();
  }

  v11 = [a1 pixelHeight];
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C6FC7E40();
  v12 = [a1 pixelWidth];
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C6FC7E40();
  return v13;
}

id sub_1C74A5198(void *a1)
{
  result = [a1 spatialMediaProperties];
  if (result)
  {
    v2 = result;
    v3 = [result spatialMediaType];

    return (v3 == 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C74A51F0(int a1, int a2, id a3)
{
  [a3 fetchPropertySetsIfNeeded];
  v4 = sub_1C74A4DF8(a3);
  sub_1C6F65BE8(0, &qword_1EDD108E0);
  sub_1C74A5198(a3);
  sub_1C75513BC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C6FC7E40();
  sub_1C6F65BE8(0, &qword_1EC21B178);
  sub_1C75037BC();
  swift_isUniquelyReferenced_nonNull_native();
  v22 = v4;
  sub_1C6FC7E40();
  v5 = objc_opt_self();
  v6 = sub_1C755065C();
  sub_1C6F65BE8(0, &qword_1EDD10100);
  sub_1C75504FC();
  v7 = sub_1C755048C();

  [v5 sendEvent:v6 withPayload:v7];

  if (qword_1EC2141B8 != -1)
  {
    swift_once();
  }

  v8 = sub_1C754FF1C();
  __swift_project_value_buffer(v8, qword_1EC21C478);
  v9 = a3;
  oslog = sub_1C754FEEC();
  v10 = sub_1C755118C();
  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_1C6F765A4(0xD000000000000024, 0x80000001C75B1E70, &v22);
    *(v11 + 12) = 2080;
    v13 = sub_1C70CAC04(v9);
    v15 = v14;

    if (!v15)
    {
      __break(1u);
      return;
    }

    v16 = sub_1C6F765A4(v13, v15, &v22);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2080;

    v17 = sub_1C75504BC();
    v19 = v18;

    v20 = sub_1C6F765A4(v17, v19, &v22);

    *(v11 + 24) = v20;
    _os_log_impl(&dword_1C6F5C000, oslog, v10, "Sent %s analytics for event '%s' with payload: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1CCA5F8E0](v12, -1, -1);
    MEMORY[0x1CCA5F8E0](v11, -1, -1);
  }

  else
  {
  }
}

void sub_1C74A55CC(void *a1)
{
  v2 = sub_1C754DB4C();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v33[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 fetchPropertySetsIfNeeded];
  v7 = sub_1C74A4DF8(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C4B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  v9 = *MEMORY[0x1E695DB50];
  *(inited + 32) = *MEMORY[0x1E695DB50];
  v10 = v9;
  sub_1C707F654();
  sub_1C754DC3C();

  v11 = sub_1C754DB3C();
  v13 = v12;
  (*(v3 + 8))(v6, v2);
  if ((v13 & 1) == 0)
  {
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    swift_isUniquelyReferenced_nonNull_native();
    v33[0] = v7;
    sub_1C6FC7E40();
    v14 = v33[0];
    sub_1C6F65BE8(0, &qword_1EC21B178);
    sub_1C75037BC();
    swift_isUniquelyReferenced_nonNull_native();
    v33[0] = v14;
    sub_1C6FC7E40();
    v15 = objc_opt_self();
    v16 = sub_1C755065C();
    sub_1C6F65BE8(0, &qword_1EDD10100);
    sub_1C75504FC();
    v17 = sub_1C755048C();

    [v15 sendEvent:v16 withPayload:v17];

    if (qword_1EC2141B8 != -1)
    {
      swift_once();
    }

    v18 = sub_1C754FF1C();
    __swift_project_value_buffer(v18, qword_1EC21C478);
    v19 = a1;
    v20 = sub_1C754FEEC();
    v21 = sub_1C755118C();
    if (!os_log_type_enabled(v20, v21))
    {

      goto LABEL_8;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v33[0] = v23;
    *v22 = 136315650;
    *(v22 + 4) = sub_1C6F765A4(0xD000000000000023, 0x80000001C75B1E40, v33);
    *(v22 + 12) = 2080;
    v24 = sub_1C70CAC04(v19);
    v26 = v25;

    if (v26)
    {
      v27 = sub_1C6F765A4(v24, v26, v33);

      *(v22 + 14) = v27;
      *(v22 + 22) = 2080;

      v28 = sub_1C75504BC();
      v30 = v29;

      v31 = sub_1C6F765A4(v28, v30, v33);

      *(v22 + 24) = v31;
      _os_log_impl(&dword_1C6F5C000, v20, v21, "Sent %s analytics for event '%s' with payload: %s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v23, -1, -1);
      MEMORY[0x1CCA5F8E0](v22, -1, -1);

LABEL_8:

      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1C74A5B5C()
{
  sub_1C754DD2C();
  v1 = *(v0 + 16);

  sub_1C74A55CC(v1);
}

void static SpatialAnalyticsUtils.sendGenerationFailure(asset:error:spatialType:)()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_16_70();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_111();
  sub_1C755006C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_13_93();
  v30 = v5;
  if (qword_1EC2141B8 != -1)
  {
    OUTLINED_FUNCTION_3_120();
  }

  v6 = sub_1C754FF1C();
  __swift_project_value_buffer(v6, qword_1EC21C478);
  v7 = v0;
  v8 = sub_1C754FEEC();
  v9 = sub_1C755118C();
  if (OUTLINED_FUNCTION_128(v9))
  {
    v28 = v2;
    v29 = v1;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v31[0] = v11;
    *v10 = 136315138;
    v12 = sub_1C70CAC04(v7);
    v14 = v13;

    if (!v14)
    {
      __break(1u);
      return;
    }

    v15 = sub_1C6F765A4(v12, v14, v31);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1C6F5C000, v8, v9, "Preparing payload for %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_109();

    v2 = v28;
    v1 = v29;
  }

  else
  {
  }

  if (qword_1EC2141C0 != -1)
  {
    OUTLINED_FUNCTION_5_101();
  }

  OUTLINED_FUNCTION_99_0();
  v16 = swift_allocObject();
  *(v16 + 16) = v7;
  *(v16 + 24) = v1;
  *(v16 + 32) = v30;
  *(v16 + 40) = v2;
  v31[4] = sub_1C74A6798;
  v31[5] = v16;
  OUTLINED_FUNCTION_1_142();
  OUTLINED_FUNCTION_0_197(COERCE_DOUBLE(1107296256));
  v31[2] = v17;
  v31[3] = &block_descriptor_19_0;
  v18 = _Block_copy(v31);
  v19 = v7;
  v20 = v1;
  sub_1C755003C();
  OUTLINED_FUNCTION_2_132();
  sub_1C74A6A84(v21, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21AFC0);
  sub_1C6F65C70(&qword_1EDD0CF90, &unk_1EC21AFC0);
  OUTLINED_FUNCTION_8_94();
  v23 = OUTLINED_FUNCTION_12_84();
  MEMORY[0x1CCA5D7B0](v23);
  _Block_release(v18);
  v24 = OUTLINED_FUNCTION_9_94();
  v25(v24);
  v26 = OUTLINED_FUNCTION_15_84();
  v27(v26);

  OUTLINED_FUNCTION_25_0();
}

void sub_1C74A5F24(void *a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C75604F0;
  *(inited + 32) = sub_1C755068C();
  *(inited + 40) = v6;
  *(inited + 48) = a1;
  *(inited + 56) = sub_1C755068C();
  *(inited + 64) = v7;
  v8 = a1;
  *(inited + 72) = sub_1C754DBDC();
  sub_1C6F65BE8(0, &qword_1EDD10100);
  sub_1C75504DC();
  v9 = (a3 & 1) == 0;
  if (a3)
  {
    v10 = 0xD000000000000030;
  }

  else
  {
    v10 = 0xD00000000000002CLL;
  }

  if (v9)
  {
    v11 = "ionStereoFailure";
  }

  else
  {
    v11 = "endToEndStereoSignpost";
  }

  v12 = objc_opt_self();
  v13 = sub_1C755065C();

  v14 = sub_1C755048C();
  [v12 sendEvent:v13 withPayload:v14];

  if (qword_1EC2141B8 != -1)
  {
    swift_once();
  }

  v15 = sub_1C754FF1C();
  __swift_project_value_buffer(v15, qword_1EC21C478);
  v16 = v8;
  sub_1C75504FC();
  sub_1C75504FC();
  v17 = sub_1C754FEEC();
  v18 = sub_1C755118C();

  if (!os_log_type_enabled(v17, v18))
  {
    swift_bridgeObjectRelease_n();

    goto LABEL_13;
  }

  v19 = swift_slowAlloc();
  v20 = swift_slowAlloc();
  v30 = v20;
  *v19 = 136315650;
  v21 = sub_1C6F765A4(v10, v11 | 0x8000000000000000, &v30);

  *(v19 + 4) = v21;
  *(v19 + 12) = 2080;
  v22 = sub_1C70CAC04(v16);
  v24 = v23;

  if (v24)
  {
    v25 = sub_1C6F765A4(v22, v24, &v30);

    *(v19 + 14) = v25;
    *(v19 + 22) = 2080;
    v26 = sub_1C75504BC();
    v28 = v27;

    v29 = sub_1C6F765A4(v26, v28, &v30);

    *(v19 + 24) = v29;
    _os_log_impl(&dword_1C6F5C000, v17, v18, "Sent %s analytics for event '%s' with payload: %s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1CCA5F8E0](v20, -1, -1);
    MEMORY[0x1CCA5F8E0](v19, -1, -1);
LABEL_13:

    return;
  }

  __break(1u);
}

id sub_1C74A62B0(unsigned __int8 *a1)
{
  v2 = *a1;
  result = [objc_opt_self() startSignpost];
  v4 = v1 + 16 * v2;
  *(v4 + 16) = result;
  *(v4 + 24) = 0;
  return result;
}

void sub_1C74A62F4(_BYTE *a1, void *a2)
{
  v3 = *a1;
  LOBYTE(v30) = *a1;
  v4 = sub_1C74A66F8(&v30);
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    v7 = 0xD00000000000002BLL;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158D8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C75604F0;
    *(inited + 32) = sub_1C755068C();
    *(inited + 40) = v9;
    v10 = "ssetCurationOutlier";
    v11 = sub_1C755065C();

    *(inited + 48) = v11;
    *(inited + 56) = sub_1C755068C();
    *(inited + 64) = v12;
    *(inited + 72) = a2;
    sub_1C6F65BE8(0, &qword_1EDD10100);
    v13 = a2;
    sub_1C75504DC();
    if (qword_1EC2141B8 != -1)
    {
      OUTLINED_FUNCTION_3_120();
    }

    v14 = sub_1C754FF1C();
    __swift_project_value_buffer(v14, qword_1EC21C478);
    v15 = v13;
    sub_1C75504FC();
    v16 = sub_1C754FEEC();
    v17 = sub_1C755118C();
    if (OUTLINED_FUNCTION_128(v17))
    {
      v18 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v18 = 136315650;
      switch(v3)
      {
        case 1:
          v10 = ".spatial.generate3DInterval";
          v7 = 0xD000000000000033;
          break;
        case 2:
          v10 = "dGenerate3DInterval";
          v7 = 0xD00000000000002FLL;
          break;
        case 3:
          v10 = ".spatial.generateStereoInterval";
          v7 = 0xD000000000000037;
          break;
        default:
          break;
      }

      v19 = sub_1C6F765A4(v7, v10 | 0x8000000000000000, &v30);

      *(v18 + 4) = v19;
      *(v18 + 12) = 2080;
      v20 = sub_1C70CAC04(v15);
      v22 = v21;

      if (!v22)
      {

        __break(1u);
        return;
      }

      v23 = sub_1C6F765A4(v20, v22, &v30);

      *(v18 + 14) = v23;
      *(v18 + 22) = 2080;
      v24 = sub_1C75504BC();
      v26 = sub_1C6F765A4(v24, v25, &v30);

      *(v18 + 24) = v26;
      _os_log_impl(&dword_1C6F5C000, v16, v17, "Sent %s analytics for event '%s' with payload: %s", v18, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_79();
    }

    else
    {
    }

    v27 = objc_opt_self();
    v28 = *MEMORY[0x1E6991C98];
    v29 = sub_1C755048C();

    [v27 endSignpost:v6 forEventName:v28 withPayload:v29];
  }
}

uint64_t sub_1C74A6724()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  return result;
}

unint64_t sub_1C74A67AC()
{
  result = qword_1EC21C498;
  if (!qword_1EC21C498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C498);
  }

  return result;
}

unint64_t sub_1C74A6804()
{
  result = qword_1EC21C4A0;
  if (!qword_1EC21C4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C4A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SpatialAnalyticsUtils.SignpostType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SpatialAnalyticsUtils.SpatialType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C74A6A84(unint64_t *a1, void (*a2)(uint64_t))
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

PhotosIntelligence::AssetRichDescriptionOptions __swiftcall AssetRichDescriptionOptions.init(useDateInformation:useTimeOfDayInformation:useLocationInformation:useCharacterInformation:useCaption:useShadowNames:)(Swift::Bool useDateInformation, Swift::Bool useTimeOfDayInformation, Swift::Bool useLocationInformation, Swift::Bool useCharacterInformation, Swift::Bool useCaption, Swift::Bool useShadowNames)
{
  *v6 = useDateInformation;
  v6[1] = useTimeOfDayInformation;
  v6[2] = useLocationInformation;
  v6[3] = useCharacterInformation;
  v6[4] = useCaption;
  v6[5] = useShadowNames;
  result.useDateInformation = useDateInformation;
  return result;
}

uint64_t AssetDescriptionInfo.init(creationDate:timeZone:location:locationType:personUUIDs:petUUIDs:meaningLabels:mediaType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  sub_1C74A6C98(a1, a9, &unk_1EC219230);
  v18 = type metadata accessor for AssetDescriptionInfo(0);
  result = sub_1C74A6C98(a2, a9 + v18[5], &unk_1EC218C70);
  v20 = (a9 + v18[6]);
  *v20 = a3;
  v20[1] = a4;
  v21 = a9 + v18[7];
  *v21 = a5;
  *(v21 + 2) = BYTE2(a5) & 1;
  *(a9 + v18[8]) = a6;
  *(a9 + v18[9]) = a7;
  *(a9 + v18[10]) = a8;
  v22 = (a9 + v18[11]);
  *v22 = a10;
  v22[1] = a11;
  return result;
}

uint64_t AssetSummaryInfo.init(uuid:caption:descriptionInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  v8 = type metadata accessor for AssetSummaryInfo(0);
  return sub_1C74A6C98(a5, a6 + *(v8 + 24), &qword_1EC21B088);
}

uint64_t sub_1C74A6C98(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_164(a1, a2, a3);
  OUTLINED_FUNCTION_84_0();
  v4 = OUTLINED_FUNCTION_90();
  v5(v4);
  return v3;
}

PhotosIntelligence::AssetRichDescriptionResult __swiftcall AssetRichDescriptionResult.init(uuid:richDescription:)(Swift::String uuid, Swift::String richDescription)
{
  *v2 = uuid;
  v2[1] = richDescription;
  result.richDescription = richDescription;
  result.uuid = uuid;
  return result;
}

uint64_t AssetDescriptionInfo.location.getter()
{
  type metadata accessor for AssetDescriptionInfo(0);
  sub_1C75504FC();
  return OUTLINED_FUNCTION_90();
}

uint64_t AssetDescriptionInfo.personUUIDs.getter()
{
  type metadata accessor for AssetDescriptionInfo(0);

  return sub_1C75504FC();
}

uint64_t AssetDescriptionInfo.petUUIDs.getter()
{
  type metadata accessor for AssetDescriptionInfo(0);

  return sub_1C75504FC();
}

uint64_t AssetDescriptionInfo.meaningLabels.getter()
{
  type metadata accessor for AssetDescriptionInfo(0);

  return sub_1C75504FC();
}

uint64_t AssetDescriptionInfo.mediaType.getter()
{
  type metadata accessor for AssetDescriptionInfo(0);
  sub_1C75504FC();
  return OUTLINED_FUNCTION_90();
}

uint64_t sub_1C74A6F50(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_164(a1, a2, a3);
  OUTLINED_FUNCTION_84_0();
  v4 = OUTLINED_FUNCTION_90();
  v5(v4);
  return v3;
}

void sub_1C74A7058()
{
  sub_1C74A71D0(319, &qword_1EDD0F9D0, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    sub_1C74A71D0(319, &qword_1EDD0CB68, MEMORY[0x1E6969BC0]);
    if (v1 <= 0x3F)
    {
      sub_1C74A7224(319, &qword_1EDD0D078, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C74A71D0(319, &qword_1EDD068C0, type metadata accessor for PHMomentProcessedLocationType);
        if (v3 <= 0x3F)
        {
          sub_1C74A7224(319, &qword_1EDD0CF70, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            sub_1C7028C3C();
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

void sub_1C74A71D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C755149C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C74A7224(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C74A72A0()
{
  sub_1C74A7224(319, &qword_1EDD0D078, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C74A71D0(319, qword_1EDD0A300, type metadata accessor for AssetDescriptionInfo);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_memcpy6_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AssetRichDescriptionOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[6])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetRichDescriptionOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

double MusicKeywordCompletion.__allocating_init(keyword:score:)(uint64_t a1, uint64_t a2, double a3)
{
  OUTLINED_FUNCTION_0_198();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  result = round(a3 * 1000.0) / 1000.0;
  *(v6 + 32) = result;
  return result;
}

uint64_t MusicKeywordCompletion.description.getter()
{
  v6 = *(v0 + 16);
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C755BAB0;
  v2 = *(v0 + 32);
  v3 = MEMORY[0x1E69E6438];
  *(v1 + 56) = MEMORY[0x1E69E63B0];
  *(v1 + 64) = v3;
  *(v1 + 32) = v2;
  v4 = sub_1C75506BC();
  MEMORY[0x1CCA5CD70](v4);

  return v6;
}

uint64_t static MusicKeywordCompletion.removeLowerScoringDuplicates(from:)(uint64_t a1)
{
  v15 = MEMORY[0x1E69E7CC0];
  v2 = sub_1C6FB6304();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
LABEL_2:
  if (v3 == v2)
  {
    v12 = sub_1C706F768(v15);
    sub_1C739CF54(v12);

    v15 = sub_1C71CC894(v13);
    sub_1C70CCDF0(&v15);

    return v15;
  }

  else
  {
    v5 = sub_1C6FB6330(v3, v4 == 0, a1);
    if (v4)
    {
      v6 = MEMORY[0x1CCA5DDD0](v3, a1, v5);
    }

    else
    {
      v6 = *(a1 + 32 + 8 * v3);
    }

    v7 = __OFADD__(v3, 1);
    v3 = v3 + 1;
    if (!v7)
    {
      for (i = 0; ; ++i)
      {
        if (v2 == i)
        {
          sub_1C755192C();
          sub_1C755196C();
          sub_1C755197C();
          sub_1C755193C();
          goto LABEL_2;
        }

        if (v4)
        {
          v9 = MEMORY[0x1CCA5DDD0](i, a1);
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v9 = *(a1 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          break;
        }

        v10 = *(v9 + 16) == *(v6 + 16) && *(v9 + 24) == *(v6 + 24);
        if (v10 || (sub_1C7551DBC() & 1) != 0)
        {
          v11 = *(v9 + 32);

          if (*(v6 + 32) < v11)
          {

            goto LABEL_2;
          }
        }

        else
        {
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
    }

    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t MusicKeywordCompletion.keyword.getter()
{
  v1 = *(v0 + 16);
  sub_1C75504FC();
  return v1;
}

uint64_t MusicKeywordCompletion.init(keyword:score:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = round(a3 * 1000.0) / 1000.0;
  return v3;
}

uint64_t MusicKeywordCompletion.toDictionary()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C75604F0;
  *(inited + 32) = 0x64726F7779656BLL;
  *(inited + 40) = 0xE700000000000000;
  v2 = v0[3];
  v3 = MEMORY[0x1E69E6158];
  *(inited + 48) = v0[2];
  *(inited + 56) = v2;
  *(inited + 72) = v3;
  *(inited + 80) = 0x65726F6373;
  *(inited + 88) = 0xE500000000000000;
  v4 = v0[4];
  *(inited + 120) = MEMORY[0x1E69E63B0];
  *(inited + 96) = v4;
  sub_1C75504FC();
  return sub_1C75504DC();
}

void *static MusicKeywordCompletion.toArrayOfDictionaries(from:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1C75516BC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v9 = MEMORY[0x1E69E7CC0];
  result = sub_1C716E748(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v9;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1CCA5DDD0](v5, a1);
      }

      else
      {
      }

      v6 = MusicKeywordCompletion.toDictionary()();

      v8 = *(v9 + 16);
      v7 = *(v9 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1C716E748((v7 > 1), v8 + 1, 1);
      }

      ++v5;
      *(v9 + 16) = v8 + 1;
      *(v9 + 8 * v8 + 32) = v6;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

BOOL static MusicKeywordCompletion.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return *(a1 + 32) == *(a2 + 32);
  }

  v5 = sub_1C7551DBC();
  result = 0;
  if (v5)
  {
    return *(a1 + 32) == *(a2 + 32);
  }

  return result;
}

uint64_t sub_1C74A7A34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64726F7779656BLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
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

uint64_t sub_1C74A7AF8(char a1)
{
  if (a1)
  {
    return 0x65726F6373;
  }

  else
  {
    return 0x64726F7779656BLL;
  }
}

uint64_t sub_1C74A7B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C74A7A34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C74A7B5C(uint64_t a1)
{
  v2 = sub_1C74A8190();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C74A7B98(uint64_t a1)
{
  v2 = sub_1C74A8190();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MusicKeywordCompletion.__deallocating_deinit()
{

  OUTLINED_FUNCTION_0_198();

  return swift_deallocClassInstance();
}

uint64_t MusicKeywordCompletion.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C4B8);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C74A8190();
  sub_1C755200C();
  v10[15] = 0;
  sub_1C7551CCC();
  if (!v1)
  {
    v10[14] = 1;
    sub_1C7551CEC();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t MusicKeywordCompletion.hashValue.getter()
{
  sub_1C7551F3C();
  sub_1C75505AC();
  return sub_1C7551FAC();
}

uint64_t MusicKeywordCompletion.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_0_198();
  v2 = swift_allocObject();
  MusicKeywordCompletion.init(from:)(a1);
  return v2;
}

void *MusicKeywordCompletion.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C4C0);
  OUTLINED_FUNCTION_3_0();
  v14 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C74A8190();
  sub_1C7551FFC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v14;
    v16 = 0;
    v1[2] = sub_1C7551BBC();
    v1[3] = v10;
    v15 = 1;
    sub_1C7551BDC();
    v12 = v11;
    (*(v9 + 8))(v8, v4);
    v1[4] = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_1C74A801C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C755183C();
  *a1 = result;
  return result;
}

uint64_t sub_1C74A8048@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = MusicKeywordCompletion.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C74A8128()
{
  sub_1C7551F3C();
  sub_1C75505AC();
  return sub_1C7551FAC();
}

unint64_t sub_1C74A8190()
{
  result = qword_1EDD09B30;
  if (!qword_1EDD09B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09B30);
  }

  return result;
}

unint64_t sub_1C74A81E4()
{
  result = qword_1EDD09B08;
  if (!qword_1EDD09B08)
  {
    type metadata accessor for MusicKeywordCompletion();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09B08);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicKeywordCompletion.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C74A8390()
{
  result = qword_1EC21C4C8;
  if (!qword_1EC21C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C4C8);
  }

  return result;
}

unint64_t sub_1C74A83E8()
{
  result = qword_1EDD09B20;
  if (!qword_1EDD09B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09B20);
  }

  return result;
}

unint64_t sub_1C74A8440()
{
  result = qword_1EDD09B28;
  if (!qword_1EDD09B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09B28);
  }

  return result;
}

void *sub_1C74A8498@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  if (qword_1EC213FC0 != -1)
  {
    swift_once();
  }

  if (*algn_1EC21A168)
  {
    v4 = qword_1EC21A160;
  }

  else
  {
    v4 = 0;
  }

  if (*algn_1EC21A168)
  {
    v5 = *algn_1EC21A168;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v6 = objc_opt_self();
  sub_1C75504FC();
  v7 = sub_1C7550B3C();
  v8 = [v6 generateTripAnnotationWithTripUUIDs_];

  v9 = v8;
  v10 = [v9 suggestion];
  if (v10)
  {
    v11 = v10;
    static StoryGenerationUtilities.queryTokenCategoryTypeString(for:)([v6 PHSearchEntityCategoryTypeFromPHSearchSuggestionCategoriesType_], &v35);
    sub_1C72D5B04();
  }

  else
  {
    v13 = [v9 QUToken];
    if (!v13)
    {
      v18 = MEMORY[0x1E69E7CC0];
      goto LABEL_14;
    }

    v11 = v13;
    sub_1C72D5FAC(v13, v4, v5, 0, v14, v15, v16, v17, v27, v28, v29, v30, v31, v32, v33, v34, v35, __src[0], __src[1], __src[2]);
  }

  v18 = v12;

LABEL_14:
  sub_1C72D533C();
  v20 = v19;
  v22 = v21;

  LOBYTE(v35) = 1;
  sub_1C75504FC();

  __src[0] = v20;
  __src[1] = v22;
  __src[2] = v4;
  __src[3] = v5;
  LOBYTE(__src[4]) = 0;
  __src[5] = 0;
  __src[6] = 0;
  LOBYTE(__src[7]) = v35;
  __src[8] = 0;
  __src[9] = 0;
  __src[10] = v18;
  LOBYTE(__src[11]) = 0;
  memset(&__src[12], 0, 24);
  if (a1 && *(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C755BAB0;
    *(inited + 32) = v4;
    *(inited + 40) = v5;
    v24 = sub_1C75504FC();
    *(inited + 48) = sub_1C706D154(v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
    v25 = sub_1C75504DC();
    QueryToken.addRetrievalResults(_:)(v25);
  }

  return memcpy(a2, __src, 0x78uLL);
}

uint64_t QueryGenerator.llmQUAnnotatedQueryString(of:eventRecorder:progressReporter:storyGenerationDiagnosticsContext:)()
{
  OUTLINED_FUNCTION_42();
  v1[29] = v2;
  v1[30] = v0;
  v1[27] = v3;
  v1[28] = v4;
  v1[25] = v5;
  v1[26] = v6;
  v1[24] = v7;
  v8 = type metadata accessor for PhotoAnalysisMomentGraphService(0);
  OUTLINED_FUNCTION_76(v8);
  v1[31] = OUTLINED_FUNCTION_77();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0);
  OUTLINED_FUNCTION_76(v9);
  v1[32] = OUTLINED_FUNCTION_77();
  v10 = sub_1C754F38C();
  v1[33] = v10;
  OUTLINED_FUNCTION_18(v10);
  v1[34] = v11;
  v1[35] = OUTLINED_FUNCTION_77();
  v12 = sub_1C754F61C();
  v1[36] = v12;
  OUTLINED_FUNCTION_18(v12);
  v1[37] = v13;
  v1[38] = OUTLINED_FUNCTION_77();
  v14 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C74A887C()
{
  v60 = v0;
  type metadata accessor for LLMDefaults();
  static LLMDefaults.backendType.getter(v59);
  switch(v59[0])
  {
    case 3:

      break;
    default:
      sub_1C7551DBC();

      break;
  }

  sub_1C754F60C();
  v1 = v0[36];
  v2 = v0[32];
  v57 = v0[30];
  v3 = v0[27];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  OUTLINED_FUNCTION_99_3();
  v4();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v1);
  sub_1C754F16C();
  sub_1C6FD7FC8(v2, &qword_1EC214BF0);
  v5 = *(v57 + *(type metadata accessor for QueryGenerator() + 24));
  if ([objc_opt_self() enableQueryAnnotationPipelineInPhotos])
  {
    v6 = sub_1C754FEEC();
    v7 = sub_1C755117C();
    if (OUTLINED_FUNCTION_128(v7))
    {
      v8 = OUTLINED_FUNCTION_127();
      *v8 = 0;
      _os_log_impl(&dword_1C6F5C000, v6, v7, "Using the new Query Annotation V2", v8, 2u);
      OUTLINED_FUNCTION_109();
    }

    v9 = swift_task_alloc();
    v0[39] = v9;
    *v9 = v0;
    v9[1] = sub_1C74A8EFC;
    OUTLINED_FUNCTION_129();

    return QueryAnnotatorV2.queryAnnotation(with:photoLibrary:eventRecorder:progressReporter:diagnosticContext:aiEventReporting:)(v10, v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {
    v20 = [v5 photoAnalysisClient];
    v0[41] = v20;
    if (!v20)
    {
      v46 = v0[37];
      v48 = v0[35];
      v47 = v0[36];
      v50 = v0[33];
      v49 = v0[34];
      v51 = v0[27];
      v56 = v0[38];
      v58 = v0[28];
      sub_1C74A96EC();
      swift_allocError();
      v52[1] = 0;
      v52[2] = 0;
      *v52 = 0;
      swift_willThrow();
      OUTLINED_FUNCTION_70(v51, v3[3]);
      sub_1C754F1AC();
      (*(v49 + 8))(v48, v50);
      (*(v46 + 8))(v56, v47);
      sub_1C754F2FC();
      OUTLINED_FUNCTION_12();
      (*(v53 + 8))(v58);
      OUTLINED_FUNCTION_28_42();

      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_129();

      __asm { BRAA            X1, X16 }
    }

    v21 = v20;
    v22 = [objc_opt_self() processInfo];
    v23 = [v22 processIdentifier];

    v24 = v23;
    v25 = sub_1C754FEEC();
    v26 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v26))
    {
      v27 = OUTLINED_FUNCTION_41_0();
      *v27 = 134217984;
      *(v27 + 4) = v24;
      _os_log_impl(&dword_1C6F5C000, v25, v26, "Sending a request for query annotation from pid(%ld)", v27, 0xCu);
      OUTLINED_FUNCTION_109();
    }

    v28 = objc_allocWithZone(MEMORY[0x1E69BE620]);
    v29 = v21;
    v30 = [v28 initWithServiceProvider_];
    if (qword_1EC213F98 != -1)
    {
      swift_once();
    }

    v31 = v0[31];
    v32 = sub_1C754FF1C();
    v33 = __swift_project_value_buffer(v32, qword_1EC219F58);
    (*(*(v32 - 8) + 16))(v31, v33, v32);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20);
    v35 = (v31 + *(v34 + 28));
    v36 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
    v37 = [v36 processName];

    v38 = sub_1C755068C();
    v40 = v39;

    *v35 = v38;
    v35[1] = v40;
    *(v31 + *(v34 + 32)) = v30;
    v41 = swift_task_alloc();
    v0[42] = v41;
    *v41 = v0;
    v41[1] = sub_1C74A9108;
    OUTLINED_FUNCTION_129();

    return PhotoAnalysisMomentGraphService.requestQueryAnnotation(for:originatorPID:)(v42, v43, v44);
  }
}

uint64_t sub_1C74A8EFC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_40();
  *v5 = v4;
  *(v6 + 320) = v0;

  if (v0)
  {
    v7 = sub_1C74A94A4;
  }

  else
  {
    v7 = sub_1C74A9004;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C74A9004()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v4 = *(v0 + 280);
  v3 = *(v0 + 288);
  v5 = *(v0 + 264);
  v6 = *(v0 + 272);
  v7 = *(v0 + 216);
  memcpy(*(v0 + 192), (v0 + 104), 0x51uLL);
  OUTLINED_FUNCTION_70(v7, v7[3]);
  sub_1C754F1AC();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_28_42();

  OUTLINED_FUNCTION_43();

  return v8();
}

uint64_t sub_1C74A9108()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  v2[43] = v4;
  v2[44] = v5;
  v2[45] = v0;

  if (v0)
  {
    v6 = sub_1C74A95A0;
  }

  else
  {
    v6 = sub_1C74A9218;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

void sub_1C74A9218()
{
  v1 = v0[45];
  sub_1C754D73C();
  swift_allocObject();
  sub_1C754D72C();
  sub_1C7318854();
  sub_1C754D71C();
  v2 = v0[43];
  v3 = v0[44];
  v4 = v0[41];
  v5 = v0[37];
  v6 = v0[35];
  v18 = v0[36];
  v19 = v0[38];
  v7 = v0[34];
  v17 = v0[33];
  v8 = v0[31];
  v9 = v0[27];
  v20 = v0[28];
  if (v1)
  {

    sub_1C6FC1640(v2, v3);
    OUTLINED_FUNCTION_5_102();
    sub_1C74ACF14(v8, v10);
    OUTLINED_FUNCTION_70(v9, v9[3]);
    sub_1C754F1AC();
    (*(v7 + 8))(v6, v17);
    (*(v5 + 8))(v19, v18);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_12();
    (*(v11 + 8))(v20);
  }

  else
  {
    v12 = v0[24];

    sub_1C6FC1640(v2, v3);
    OUTLINED_FUNCTION_5_102();
    sub_1C74ACF14(v8, v13);
    memcpy(v12, v0 + 2, 0x51uLL);
    OUTLINED_FUNCTION_70(v9, v9[3]);
    sub_1C754F1AC();
    (*(v7 + 8))(v6, v17);
    (*(v5 + 8))(v19, v18);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_12();
    (*(v14 + 8))(v20);
    OUTLINED_FUNCTION_28_42();
  }

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_129();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C74A94A4()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v4 = *(v0 + 280);
  v3 = *(v0 + 288);
  v5 = *(v0 + 264);
  v6 = *(v0 + 272);
  OUTLINED_FUNCTION_70(*(v0 + 216), *(*(v0 + 216) + 24));
  sub_1C754F1AC();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_43();

  return v7();
}

uint64_t sub_1C74A95A0()
{
  v1 = *(v0 + 296);
  v3 = *(v0 + 280);
  v2 = *(v0 + 288);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v0 + 248);
  v7 = *(v0 + 216);
  v12 = *(v0 + 304);
  v13 = *(v0 + 224);

  OUTLINED_FUNCTION_5_102();
  sub_1C74ACF14(v6, v8);
  OUTLINED_FUNCTION_70(v7, v7[3]);
  sub_1C754F1AC();
  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v12, v2);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_12();
  (*(v9 + 8))(v13);

  OUTLINED_FUNCTION_43();

  return v10();
}

unint64_t sub_1C74A96EC()
{
  result = qword_1EC21C4D0;
  if (!qword_1EC21C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C4D0);
  }

  return result;
}

void sub_1C74A9740()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v131 = v8;
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_78();
  v138 = v10 - v11;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_130();
  v137 = v13;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_130();
  v136 = v15;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_130();
  v129 = v17;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_130();
  v127 = v19;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v20);
  v128 = &v120 - v21;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216368);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v22);
  v132 = (&v120 - v23);
  v24 = OUTLINED_FUNCTION_37_3();
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(v24);
  v26 = OUTLINED_FUNCTION_18(TokenSuggestion);
  v134 = v27;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14_0();
  v139 = v29 - v28;
  OUTLINED_FUNCTION_37_3();
  sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v123 = v31;
  v124 = v30;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_14_0();
  v34 = (v33 - v32);
  v35 = v3[3];
  v125 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v35);
  v126 = v34;
  sub_1C754F1CC();
  v130 = v1;
  v36 = sub_1C736A8E8(v7, v5, &unk_1F46A89C8);
  v37 = sub_1C6FB6304();
  v38 = 0;
  v133 = MEMORY[0x1E69E7CC0];
  v39 = &selRef_mergedPersonIdentifiers;
  while (1)
  {
    v40 = v139;
    if (v37 == v38)
    {
      break;
    }

    if ((v36 & 0xC000000000000001) != 0)
    {
      v41 = MEMORY[0x1CCA5DDD0](v38, v36);
    }

    else
    {
      if (v38 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_89;
      }

      v41 = *(v36 + 8 * v38 + 32);
    }

    v42 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      sub_1C70E4308();
      v116 = v119;
      goto LABEL_85;
    }

    v43 = v41;
    v44 = [v43 uuid];
    if (v44)
    {
      v45 = v44;
      v46 = sub_1C755068C();
      v122 = v47;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_99();
        sub_1C6FB1814();
        v133 = v52;
      }

      v7 = *(v133 + 16);
      v48 = *(v133 + 24);
      if (v7 >= v48 >> 1)
      {
        OUTLINED_FUNCTION_15(v48);
        sub_1C6FB1814();
        v133 = v53;
      }

      v49 = v133;
      *(v133 + 16) = v7 + 1;
      v50 = v49 + 16 * v7;
      v51 = v122;
      *(v50 + 32) = v46;
      *(v50 + 40) = v51;
      v38 = v42;
    }

    else
    {

      ++v38;
    }
  }

  v54 = sub_1C7366788(v36);
  sub_1C74A8498(v54, &v143);

  sub_1C75504FC();
  sub_1C75504FC();
  v55 = sub_1C754FEEC();
  v56 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_128(v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 134218240;
    v7 = sub_1C6FB6304();

    *(v57 + 4) = v7;

    *(v57 + 12) = 2048;
    v58 = v131;
    v39 = v132;
    if (v54)
    {
      v59 = *(v54 + 16);
    }

    else
    {
      v59 = 0;
    }

    *(v57 + 14) = v59;

    _os_log_impl(&dword_1C6F5C000, v55, v56, "Retrieved %ld matching trips that contain %ld assets", v57, 0x16u);
    OUTLINED_FUNCTION_109();

    v60 = v58;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v60 = v131;
    v39 = v132;
  }

  v122 = *(v60 + 16);
  if (!v122)
  {
LABEL_70:
    v96 = sub_1C754FEEC();
    v97 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v97))
    {
      v98 = OUTLINED_FUNCTION_127();
      *v98 = 0;
      _os_log_impl(&dword_1C6F5C000, v96, v97, "Add trip query token at the end of the query tokens (array)", v98, 2u);
      OUTLINED_FUNCTION_109();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215040);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C755BAB0;
    OUTLINED_FUNCTION_48_31((inited + 32));
    v142[0] = v60;
    sub_1C75504FC();
    sub_1C6FD33F0(inited);
    OUTLINED_FUNCTION_70(v125, v125[3]);
    v39 = v126;
LABEL_87:
    OUTLINED_FUNCTION_154();
    sub_1C754F1AC();
    (*(v123 + 8))(v39, v124);
    OUTLINED_FUNCTION_25_0();
    return;
  }

  v61 = 0;
  v62 = v60 + 32;
  v121 = v60 + 32;
  while (1)
  {
    v133 = v61;
    memcpy(v142, (v62 + 120 * v61), sizeof(v142));
    v63 = v142[10];
    v64 = *(v142[10] + 16);
    sub_1C6FCA6E4(v142, v141);
    sub_1C75504FC();
    for (i = 0; v64 != i; ++i)
    {
      if (i >= *(v63 + 16))
      {
        goto LABEL_90;
      }

      OUTLINED_FUNCTION_15_4();
      OUTLINED_FUNCTION_4_86();
      sub_1C71AC0CC(v66, v40, v67);
      if (qword_1EDD099E8 != -1)
      {
        OUTLINED_FUNCTION_11_79();
        swift_once();
      }

      v68 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD099F0);
      v69 = v39 + *(v135 + 48);
      sub_1C71AC0CC(v40, v39, type metadata accessor for QueryTokenCategoryType);
      sub_1C71AC0CC(v68, v69, type metadata accessor for QueryTokenCategoryType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v7 = v137;
      v71 = v138;
      v72 = v136;
      switch(EnumCaseMultiPayload)
      {
        case 1:
          if (OUTLINED_FUNCTION_16_71() != 1)
          {
            goto LABEL_68;
          }

          goto LABEL_73;
        case 2:
          v84 = OUTLINED_FUNCTION_0_199();
          v7 = v128;
          sub_1C71AC0CC(v84, v128, v85);
          v86 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CC0) + 48);
          if (OUTLINED_FUNCTION_16_71() == 2)
          {
            OUTLINED_FUNCTION_40_1();
            sub_1C6FD7FC8(v104, v105);
            OUTLINED_FUNCTION_40_1();
            sub_1C6FD7FC8(v106, v107);
LABEL_80:
            OUTLINED_FUNCTION_40_1();
            sub_1C6FD7FC8(v108, v109);
            OUTLINED_FUNCTION_40_1();
            v39 = v132;
            goto LABEL_81;
          }

          sub_1C6FD7FC8(v7 + v86, &qword_1EC218C50);
          v82 = v7;
          v83 = &qword_1EC218C50;
          break;
        case 3:
          if (OUTLINED_FUNCTION_16_71() == 3)
          {
            goto LABEL_73;
          }

          goto LABEL_68;
        case 4:
          v73 = OUTLINED_FUNCTION_0_199();
          v74 = v127;
          sub_1C71AC0CC(v73, v127, v75);
          v7 = OUTLINED_FUNCTION_16_71();
          v76 = sub_1C754F09C();
          OUTLINED_FUNCTION_12();
          v78 = *(v77 + 8);
          if (v7 == 4)
          {
            goto LABEL_75;
          }

          goto LABEL_56;
        case 5:
          v90 = OUTLINED_FUNCTION_0_199();
          v74 = v129;
          sub_1C71AC0CC(v90, v129, v91);
          v7 = OUTLINED_FUNCTION_16_71();
          v76 = sub_1C754F5FC();
          OUTLINED_FUNCTION_12();
          v78 = *(v92 + 8);
          if (v7 == 5)
          {
LABEL_75:
            v78(v69, v76);
            v78(v74, v76);
            v39 = v132;
            v40 = v139;
            goto LABEL_82;
          }

LABEL_56:
          v78(v74, v76);
          v39 = v132;
          v40 = v139;
          goto LABEL_68;
        case 6:
          if (OUTLINED_FUNCTION_16_71() == 6)
          {
            goto LABEL_73;
          }

          goto LABEL_68;
        case 7:
          v87 = OUTLINED_FUNCTION_0_199();
          sub_1C71AC0CC(v87, v72, v88);
          if (OUTLINED_FUNCTION_16_71() != 7)
          {
            OUTLINED_FUNCTION_6_112();
            sub_1C74ACF14(v72, v89);
            goto LABEL_68;
          }

          sub_1C74ACF14(v69, type metadata accessor for GroundedGenericLocation);
          v101 = v72;
          v100 = type metadata accessor for GroundedGenericLocation;
LABEL_74:
          sub_1C74ACF14(v101, v100);
LABEL_82:
          OUTLINED_FUNCTION_1_143();
          sub_1C74ACF14(v39, v110);
          OUTLINED_FUNCTION_3_121();
          sub_1C74ACF14(v40, v111);
          sub_1C6FDD548(v142);

          v112 = sub_1C754FEEC();
          v113 = sub_1C75511BC();
          v114 = OUTLINED_FUNCTION_128(v113);
          v7 = v133;
          if (v114)
          {
            v115 = OUTLINED_FUNCTION_41_0();
            *v115 = 134217984;
            *(v115 + 4) = v7;
            _os_log_impl(&dword_1C6F5C000, v112, v113, "Update trip query token at index %ld", v115, 0xCu);
            OUTLINED_FUNCTION_109();
          }

          v116 = v131;
          sub_1C75504FC();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v39 = v126;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            goto LABEL_91;
          }

LABEL_85:
          if (v7 < *(v116 + 16))
          {
            v118 = v116 + 120 * v7;
            memcpy(v141, (v118 + 32), sizeof(v141));
            OUTLINED_FUNCTION_48_31((v118 + 32));
            sub_1C6FDD548(v141);
            OUTLINED_FUNCTION_70(v125, v125[3]);
            goto LABEL_87;
          }

          __break(1u);
          return;
        case 8:
          v93 = OUTLINED_FUNCTION_0_199();
          sub_1C71AC0CC(v93, v7, v94);
          if (OUTLINED_FUNCTION_16_71() == 8)
          {
            goto LABEL_80;
          }

          v82 = v7;
          v83 = &qword_1EC216328;
          break;
        case 9:
          v79 = OUTLINED_FUNCTION_0_199();
          sub_1C71AC0CC(v79, v71, v80);
          v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0) + 48);
          if (OUTLINED_FUNCTION_16_71() == 9)
          {
            sub_1C74ACF14(v69 + v7, type metadata accessor for PersonalEventBackingItem);
            sub_1C6FD7FC8(v69, &qword_1EC216320);
            sub_1C74ACF14(v71 + v7, type metadata accessor for PersonalEventBackingItem);
            v102 = v71;
            v103 = &qword_1EC216320;
            v39 = v132;
LABEL_81:
            sub_1C6FD7FC8(v102, v103);
            goto LABEL_82;
          }

          OUTLINED_FUNCTION_7_101();
          sub_1C74ACF14(v71 + v7, v81);
          v82 = v71;
          v83 = &qword_1EC216320;
          break;
        case 10:
          if (OUTLINED_FUNCTION_16_71() == 10)
          {
            goto LABEL_73;
          }

          goto LABEL_68;
        case 11:
          if (OUTLINED_FUNCTION_16_71() == 11)
          {
            goto LABEL_82;
          }

          goto LABEL_68;
        case 12:
          if (OUTLINED_FUNCTION_16_71() == 12)
          {
            goto LABEL_73;
          }

          goto LABEL_68;
        case 13:
          if (OUTLINED_FUNCTION_16_71() == 13)
          {
            goto LABEL_82;
          }

          goto LABEL_68;
        case 14:
          if (OUTLINED_FUNCTION_16_71() == 14)
          {
            goto LABEL_82;
          }

          goto LABEL_68;
        case 15:
          if (OUTLINED_FUNCTION_16_71() == 15)
          {
            goto LABEL_82;
          }

          goto LABEL_68;
        case 16:
          if (OUTLINED_FUNCTION_16_71() == 16)
          {
            goto LABEL_82;
          }

          goto LABEL_68;
        case 17:
          if (OUTLINED_FUNCTION_16_71() == 17)
          {
            goto LABEL_82;
          }

          goto LABEL_68;
        case 18:
          if (OUTLINED_FUNCTION_16_71() == 18)
          {
            goto LABEL_82;
          }

          goto LABEL_68;
        default:
          if (OUTLINED_FUNCTION_16_71())
          {
            goto LABEL_68;
          }

LABEL_73:
          OUTLINED_FUNCTION_1_143();
          v101 = v69;
          goto LABEL_74;
      }

      sub_1C6FD7FC8(v82, v83);
LABEL_68:
      sub_1C6FD7FC8(v39, &qword_1EC216368);
      OUTLINED_FUNCTION_3_121();
      sub_1C74ACF14(v40, v95);
    }

    sub_1C6FDD548(v142);

    v61 = v133 + 1;
    v62 = v121;
    v60 = v131;
    if (v133 + 1 == v122)
    {
      goto LABEL_70;
    }
  }
}

void sub_1C74AA32C()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_78();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v85 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v85 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v85 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v85 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v90 = &v85 - v20;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216368);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v21);
  v22 = OUTLINED_FUNCTION_13_16();
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(v22);
  v24 = OUTLINED_FUNCTION_18(TokenSuggestion);
  v99 = v25;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14_0();
  v101 = v27 - v26;
  v92 = *(v2 + 16);
  if (!v92)
  {
    v95 = MEMORY[0x1E69E7CC0];
    goto LABEL_70;
  }

  v28 = 0;
  v91 = v2 + 32;
  v94 = v6;
  v95 = MEMORY[0x1E69E7CC0];
  v88 = v12;
  v89 = v9;
  v86 = v18;
  v87 = v15;
LABEL_3:
  OUTLINED_FUNCTION_35_31(v105);
  v29 = v105[10];
  v98 = v28 + 1;
  OUTLINED_FUNCTION_35_31(&v104);
  sub_1C6FCA6E4(v105, &v103);
  sub_1C72D36F8();
  v97 = v30;
  v31 = 0;
  v102 = *(v29 + 16);
  v32 = TokenCategoryType;
  v33 = v101;
  while (1)
  {
    if (v102 == v31)
    {
      if (v97 == 2)
      {
        goto LABEL_62;
      }

LABEL_50:
      sub_1C6FDD548(v105);
      v28 = v98;
      goto LABEL_67;
    }

    if (v31 >= *(v29 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_15_4();
    v34 = v29;
    OUTLINED_FUNCTION_4_86();
    sub_1C71AC0CC(v35, v33, v36);
    if (qword_1EDD0E058 != -1)
    {
      swift_once();
    }

    v37 = __swift_project_value_buffer(v32, qword_1EDD0E060);
    v38 = v0 + *(v100 + 48);
    sub_1C71AC0CC(v33, v0, type metadata accessor for QueryTokenCategoryType);
    sub_1C71AC0CC(v37, v38, type metadata accessor for QueryTokenCategoryType);
    OUTLINED_FUNCTION_154();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        if (OUTLINED_FUNCTION_17_80() != 1)
        {
          goto LABEL_48;
        }

        goto LABEL_51;
      case 2u:
        v51 = OUTLINED_FUNCTION_0_199();
        v52 = v90;
        sub_1C71AC0CC(v51, v90, v53);
        v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CC0) + 48);
        if (OUTLINED_FUNCTION_17_80() == 2)
        {
          sub_1C6FD7FC8(v38 + v54, &qword_1EC218C50);
          OUTLINED_FUNCTION_99_3();
          sub_1C6FD7FC8(v70, v71);
          OUTLINED_FUNCTION_99_3();
          sub_1C6FD7FC8(v72, v73);
LABEL_57:
          OUTLINED_FUNCTION_99_3();
          sub_1C6FD7FC8(v74, v75);
          goto LABEL_61;
        }

        sub_1C6FD7FC8(v52 + v54, &qword_1EC218C50);
        v49 = v52;
        v50 = &qword_1EC218C50;
        break;
      case 3u:
        if (OUTLINED_FUNCTION_17_80() == 3)
        {
          goto LABEL_51;
        }

        goto LABEL_48;
      case 4u:
        v39 = OUTLINED_FUNCTION_0_199();
        v40 = v86;
        sub_1C71AC0CC(v39, v86, v41);
        v93 = OUTLINED_FUNCTION_17_80();
        v42 = sub_1C754F09C();
        OUTLINED_FUNCTION_12();
        v44 = *(v43 + 8);
        if (v93 == 4)
        {
          v44(v38, v42);
          v76 = v40;
          goto LABEL_60;
        }

        v44(v40, v42);
        v6 = v94;
        goto LABEL_48;
      case 5u:
        v59 = OUTLINED_FUNCTION_0_199();
        v60 = v87;
        sub_1C71AC0CC(v59, v87, v61);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v42 = sub_1C754F5FC();
        OUTLINED_FUNCTION_12();
        v44 = *(v63 + 8);
        if (EnumCaseMultiPayload != 5)
        {
          v44(v60, v42);
          v6 = v94;
          v32 = TokenCategoryType;
          goto LABEL_48;
        }

        v44(v38, v42);
        v76 = v60;
LABEL_60:
        v44(v76, v42);
        v6 = v94;
LABEL_61:
        OUTLINED_FUNCTION_1_143();
        sub_1C74ACF14(v0, v77);
        OUTLINED_FUNCTION_3_121();
        sub_1C74ACF14(v101, v78);
        if (!v97)
        {
          goto LABEL_50;
        }

LABEL_62:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v98;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_99();
          sub_1C6FB3514();
          v95 = v83;
        }

        v81 = *(v95 + 16);
        v80 = *(v95 + 24);
        if (v81 >= v80 >> 1)
        {
          OUTLINED_FUNCTION_15(v80);
          sub_1C6FB3514();
          v95 = v84;
        }

        v82 = v95;
        *(v95 + 16) = v81 + 1;
        OUTLINED_FUNCTION_48_31((v82 + 120 * v81 + 32));
LABEL_67:
        if (v28 == v92)
        {
LABEL_70:
          OUTLINED_FUNCTION_25_0();
          return;
        }

        goto LABEL_3;
      case 6u:
        if (OUTLINED_FUNCTION_17_80() == 6)
        {
          goto LABEL_51;
        }

        goto LABEL_48;
      case 7u:
        v55 = OUTLINED_FUNCTION_0_199();
        v56 = v88;
        sub_1C71AC0CC(v55, v88, v57);
        if (OUTLINED_FUNCTION_17_80() == 7)
        {
          sub_1C74ACF14(v38, type metadata accessor for GroundedGenericLocation);
          v69 = v56;
          v68 = type metadata accessor for GroundedGenericLocation;
LABEL_52:
          sub_1C74ACF14(v69, v68);
          goto LABEL_61;
        }

        OUTLINED_FUNCTION_6_112();
        sub_1C74ACF14(v56, v58);
        goto LABEL_48;
      case 8u:
        v64 = OUTLINED_FUNCTION_0_199();
        v65 = v89;
        sub_1C71AC0CC(v64, v89, v66);
        if (OUTLINED_FUNCTION_17_80() == 8)
        {
          sub_1C6FD7FC8(v38, &qword_1EC216328);
          goto LABEL_57;
        }

        v49 = v65;
        v50 = &qword_1EC216328;
        break;
      case 9u:
        v45 = OUTLINED_FUNCTION_0_199();
        sub_1C71AC0CC(v45, v6, v46);
        v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0) + 48);
        if (OUTLINED_FUNCTION_17_80() == 9)
        {
          sub_1C74ACF14(v38 + v47, type metadata accessor for PersonalEventBackingItem);
          sub_1C6FD7FC8(v38, &qword_1EC216320);
          sub_1C74ACF14(v6 + v47, type metadata accessor for PersonalEventBackingItem);
          goto LABEL_57;
        }

        OUTLINED_FUNCTION_7_101();
        sub_1C74ACF14(v6 + v47, v48);
        v49 = v6;
        v50 = &qword_1EC216320;
        break;
      case 0xAu:
        if (OUTLINED_FUNCTION_17_80() == 10)
        {
          goto LABEL_51;
        }

        goto LABEL_48;
      case 0xBu:
        if (OUTLINED_FUNCTION_17_80() == 11)
        {
          goto LABEL_61;
        }

        goto LABEL_48;
      case 0xCu:
        if (OUTLINED_FUNCTION_17_80() == 12)
        {
          goto LABEL_51;
        }

        goto LABEL_48;
      case 0xDu:
        if (OUTLINED_FUNCTION_17_80() == 13)
        {
          goto LABEL_61;
        }

        goto LABEL_48;
      case 0xEu:
        if (OUTLINED_FUNCTION_17_80() == 14)
        {
          goto LABEL_61;
        }

        goto LABEL_48;
      case 0xFu:
        if (OUTLINED_FUNCTION_17_80() == 15)
        {
          goto LABEL_61;
        }

        goto LABEL_48;
      case 0x10u:
        if (OUTLINED_FUNCTION_17_80() == 16)
        {
          goto LABEL_61;
        }

        goto LABEL_48;
      case 0x11u:
        if (OUTLINED_FUNCTION_17_80() == 17)
        {
          goto LABEL_61;
        }

        goto LABEL_48;
      case 0x12u:
        if (OUTLINED_FUNCTION_17_80() == 18)
        {
          goto LABEL_61;
        }

        goto LABEL_48;
      default:
        if (OUTLINED_FUNCTION_17_80())
        {
          goto LABEL_48;
        }

LABEL_51:
        OUTLINED_FUNCTION_1_143();
        v69 = v38;
        goto LABEL_52;
    }

    sub_1C6FD7FC8(v49, v50);
LABEL_48:
    sub_1C6FD7FC8(v0, &qword_1EC216368);
    OUTLINED_FUNCTION_3_121();
    v33 = v101;
    sub_1C74ACF14(v101, v67);
    ++v31;
    v29 = v34;
  }

  __break(1u);
}

NSAttributedString __swiftcall QueryGenerator.annotateQueryString(_:with:)(Swift::String _, Swift::OpaquePointer with)
{
  OUTLINED_FUNCTION_33();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217FD8);
  OUTLINED_FUNCTION_76(v5);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  v101 = v93 - v7;
  v8 = OUTLINED_FUNCTION_37_3();
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(v8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_78();
  v93[0] = v10 - v11;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_130();
  v111 = v13;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v93 - v15;
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v18 = OUTLINED_FUNCTION_18(TokenSuggestion);
  v93[1] = v19;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_13_16();
  v100 = sub_1C754E2FC();
  OUTLINED_FUNCTION_3_0();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_14_0();
  v114 = v24 - v23;
  OUTLINED_FUNCTION_37_3();
  sub_1C74ACE78();
  sub_1C75504FC();
  v106 = sub_1C71C75E8();
  v25 = 0;
  v26 = *(v4 + 16);
  v27 = MEMORY[0x1E69E7CC8];
  v105 = v4;
LABEL_2:
  for (i = 120 * v25 + 32; ; i += 120)
  {
    if (v26 == v25)
    {
      v41 = 0;
      v42 = v27 + 64;
      v43 = 1 << *(v27 + 32);
      v44 = -1;
      if (v43 < 64)
      {
        v44 = ~(-1 << v43);
      }

      v45 = v44 & *(v27 + 64);
      v46 = (v43 + 63) >> 6;
      v96 = (v21 + 16);
      v47 = *MEMORY[0x1E6978F98];
      v94 = (v21 + 8);
      v95 = v47;
      v97 = v46;
      v98 = v27 + 64;
      v99 = v27;
      if (v45)
      {
        goto LABEL_24;
      }

      while (1)
      {
        v48 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          __break(1u);
          goto LABEL_50;
        }

        if (v48 >= v46)
        {
          break;
        }

        v45 = *(v42 + 8 * v48);
        ++v41;
        if (v45)
        {
          v41 = v48;
          do
          {
LABEL_24:
            v49 = __clz(__rbit64(v45)) | (v41 << 6);
            v50 = *(v27 + 56);
            v51 = (*(v27 + 48) + 16 * v49);
            v52 = *v51;
            v108 = v51[1];
            v109 = v52;
            v53 = (v50 + 120 * v49);
            v54 = v53[2];
            v55 = v53[10];
            v107 = v53[3];
            sub_1C75504FC();
            sub_1C75504FC();
            sub_1C754E2EC();
            v56 = *(v55 + 16);
            if (v56)
            {
              v102 = v41;
              v103 = v55;
              v104 = v54;
              v110 = v45;
              OUTLINED_FUNCTION_15_4();
              v58 = v55 + v57;
              v60 = *(v59 + 72);
              v61 = MEMORY[0x1E69E7CC8];
              *&v112 = v60;
              do
              {
                OUTLINED_FUNCTION_4_86();
                sub_1C71AC0CC(v58, v2, v62);
                sub_1C743D994(v2, v16);
                QueryTokenCategoryType.string.getter(v117);
                v63 = QueryTokenCategoryTypeString.searchEntityCategoryType()();
                QueryTokenCategoryType.string.getter(v117);
                if (sub_1C705D134(v117[0], &unk_1F46A8928) || (v64 = [objc_opt_self() entityCategoryTypeKeyForEntityTypeCategory_]) == 0)
                {
                  OUTLINED_FUNCTION_1_143();
                  sub_1C74ACF14(v16, v69);
                }

                else
                {
                  v65 = v64;
                  sub_1C755068C();

                  if (v63 < 0)
                  {
                    goto LABEL_52;
                  }

                  sub_1C754E2AC();
                  v66 = v111;
                  sub_1C71AC0CC(v16, v111, type metadata accessor for QueryTokenCategoryType);
                  if (swift_getEnumCaseMultiPayload())
                  {
                    sub_1C74ACF14(v66, type metadata accessor for QueryTokenCategoryType);
                    swift_isUniquelyReferenced_nonNull_native();
                    v117[0] = v61;
                    OUTLINED_FUNCTION_75();
                    sub_1C6FC918C();

                    v67 = v16;
                    v68 = type metadata accessor for QueryTokenCategoryType;
                  }

                  else
                  {
                    sub_1C71BA98C(*v66);

                    swift_isUniquelyReferenced_nonNull_native();
                    v117[0] = v61;
                    OUTLINED_FUNCTION_75();
                    sub_1C6FC918C();

                    OUTLINED_FUNCTION_1_143();
                    v67 = v16;
                  }

                  sub_1C74ACF14(v67, v68);
                  v61 = v117[0];
                  v60 = v112;
                }

                v58 += v60;
                --v56;
              }

              while (v56);

              *&v112 = v61;
              v70 = v106;
              v45 = v110;
              v54 = v104;
              v41 = v102;
            }

            else
            {

              *&v112 = MEMORY[0x1E69E7CC8];
              v70 = v106;
            }

            v110 = (v45 - 1) & v45;
            v72 = v100;
            v71 = v101;
            v73 = v114;
            (*v96)(v101, v114, v100);
            __swift_storeEnumTagSinglePayload(v71, 0, 1, v72);
            v74 = objc_allocWithZone(MEMORY[0x1E6978A78]);
            v75 = sub_1C7349A54(v54, v107, v71, v112);
            v76 = [objc_allocWithZone(MEMORY[0x1E6978A50]) initWithQueryToken_];
            [v70 addAttribute:v95 value:v76 range:{v109, v108}];

            v45 = v110;
            (*v94)(v73, v72);
            v42 = v98;
            v27 = v99;
            v46 = v97;
          }

          while (v45);
        }
      }

      if (qword_1EDD099E8 != -1)
      {
        goto LABEL_53;
      }

      goto LABEL_40;
    }

    if (v25 >= v26)
    {
      break;
    }

    memcpy(v117, (v4 + i), 0x78uLL);
    v29 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_51;
    }

    if ((v117[7] & 1) == 0)
    {
      v109 = v21;
      v110 = v2;
      v112 = *&v117[5];
      sub_1C6FCA6E4(v117, v116);
      sub_1C6FCA6E4(v117, v116);
      swift_isUniquelyReferenced_nonNull_native();
      v115 = v27;
      v30 = *(&v112 + 1);
      v108 = v112;
      v31 = sub_1C6FC31EC(v112, *(&v112 + 1));
      if (__OFADD__(*(v27 + 16), (v32 & 1) == 0))
      {
        __break(1u);
      }

      else
      {
        v33 = v31;
        v34 = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C4D8);
        if (sub_1C7551A2C())
        {
          v35 = sub_1C6FC31EC(v108, v30);
          if ((v34 & 1) == (v36 & 1))
          {
            v33 = v35;
            if ((v34 & 1) == 0)
            {
              goto LABEL_12;
            }

LABEL_15:
            v27 = v115;
            v40 = (*(v115 + 56) + 120 * v33);
            OUTLINED_FUNCTION_35_31(v116);
            memcpy(v40, v117, 0x78uLL);
            sub_1C6FDD548(v116);
            sub_1C6FDD548(v117);
LABEL_16:
            v25 = v29;
            v4 = v105;
            v21 = v109;
            v2 = v110;
            goto LABEL_2;
          }

          goto LABEL_56;
        }

        if (v34)
        {
          goto LABEL_15;
        }

LABEL_12:
        v27 = v115;
        *(v115 + 8 * (v33 >> 6) + 64) |= 1 << v33;
        *(*(v27 + 48) + 16 * v33) = v112;
        OUTLINED_FUNCTION_48_31((*(v27 + 56) + 120 * v33));
        sub_1C6FDD548(v117);
        v37 = *(v27 + 16);
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (!v38)
        {
          *(v27 + 16) = v39;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_56:
      type metadata accessor for _NSRange(0);
      result.super.isa = sub_1C7551E4C();
      __break(1u);
      return result;
    }

    ++v25;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  OUTLINED_FUNCTION_11_79();
  swift_once();
LABEL_40:
  v77 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD099F0);
  MEMORY[0x1EEE9AC00](v77);
  v93[-2] = v78;
  v79 = sub_1C707351C();
  v80 = v106;
  if (v79)
  {
    v81 = *MEMORY[0x1E6978FB8];
    v82 = sub_1C7550C7C();
    [v80 addAttribute:v81 value:v82 range:{0, objc_msgSend(v80, sel_length)}];
  }

  v83 = v93[0];
  v84 = swift_storeEnumTagMultiPayload();
  MEMORY[0x1EEE9AC00](v84);
  v93[-2] = v83;
  v85 = sub_1C707351C();
  OUTLINED_FUNCTION_1_143();
  sub_1C74ACF14(v83, v86);
  if (v85)
  {
    v87 = *MEMORY[0x1E6978F90];
    v88 = sub_1C7550C7C();
    [v80 addAttribute:v87 value:v88 range:{0, objc_msgSend(v80, sel_length)}];
  }

  static StoryGenerationUtilities.querySortOrder(in:)();
  if (LOBYTE(v117[0]))
  {
    v89 = sub_1C7551DBC();

    if ((v89 & 1) == 0)
    {
      v90 = *MEMORY[0x1E6978FB0];
      v91 = sub_1C755065C();

      [v80 addAttribute:v90 value:v91 range:{0, objc_msgSend(v80, sel_length)}];
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_25_0();
  return result;
}

void sub_1C74AB58C()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v65[15] = *MEMORY[0x1E69E9840];
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v4 = OUTLINED_FUNCTION_13_16();
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(v4);
  v6 = OUTLINED_FUNCTION_18(TokenSuggestion);
  v55 = v7;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v10 = v9 - v8;
  if (qword_1EDD08708 != -1)
  {
LABEL_48:
    swift_once();
  }

  v11 = 0;
  v12 = 0;
  v57 = v2 + 32;
  v58 = *(v2 + 16);
  v54 = MEMORY[0x1E69E7CC0];
  v56 = qword_1EDD08710;
  while (1)
  {
    if (v11 == v58)
    {
      OUTLINED_FUNCTION_25_0();
      return;
    }

    if (v11 >= v58)
    {
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    memcpy(v65, (v57 + 120 * v11), 0x78uLL);
    v13 = __OFADD__(v11, 1);
    v14 = v11 + 1;
    if (v13)
    {
      goto LABEL_47;
    }

    v60 = v14;
    v61 = v12;
    v15 = v65[10];
    v16 = *(v65[10] + 16);
    if (v16)
    {
      sub_1C6FCA6E4(v65, v64);
      v64[0] = MEMORY[0x1E69E7CC0];
      sub_1C75504FC();
      sub_1C716E928();
      v17 = v64[0];
      OUTLINED_FUNCTION_15_4();
      v59 = v15;
      v19 = v15 + v18;
      v21 = *(v20 + 72);
      do
      {
        sub_1C71AC0CC(v19, v10, type metadata accessor for QueryTokenSuggestion);
        sub_1C743D994(v10, v0);
        v22 = 9;
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            OUTLINED_FUNCTION_1_143();
            sub_1C74ACF14(v0, v26);
            v22 = 2;
            break;
          case 2u:
            v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CC0);
            sub_1C6FD7FC8(v0 + *(v27 + 48), &qword_1EC218C50);
            sub_1C6FD7FC8(v0, &qword_1EC218C50);
            v22 = 3;
            break;
          case 3u:
            OUTLINED_FUNCTION_1_143();
            sub_1C74ACF14(v0, v25);
            v22 = 4;
            break;
          case 4u:
            sub_1C754F09C();
            OUTLINED_FUNCTION_12();
            (*(v29 + 8))(v0);
            v22 = 5;
            break;
          case 5u:
            sub_1C754F5FC();
            OUTLINED_FUNCTION_12();
            (*(v31 + 8))(v0);
            v22 = 6;
            break;
          case 6u:
            OUTLINED_FUNCTION_1_143();
            sub_1C74ACF14(v0, v28);
            v22 = 7;
            break;
          case 7u:
            OUTLINED_FUNCTION_6_112();
            sub_1C74ACF14(v0, v34);
            v22 = 8;
            break;
          case 8u:
            sub_1C6FD7FC8(v0, &qword_1EC216328);
            v22 = 10;
            break;
          case 9u:
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0);
            OUTLINED_FUNCTION_7_101();
            sub_1C74ACF14(v0 + v32, v33);
            sub_1C6FD7FC8(v0, &qword_1EC216320);
            v22 = 11;
            break;
          case 0xAu:
            OUTLINED_FUNCTION_1_143();
            sub_1C74ACF14(v0, v24);
            v22 = 15;
            break;
          case 0xBu:
            v22 = 16;
            break;
          case 0xCu:
            OUTLINED_FUNCTION_1_143();
            sub_1C74ACF14(v0, v30);
            v22 = 17;
            break;
          case 0xDu:
            v22 = 19;
            break;
          case 0xEu:
            break;
          case 0xFu:
            v22 = 12;
            break;
          case 0x10u:
            v22 = 13;
            break;
          case 0x11u:
            v22 = 14;
            break;
          case 0x12u:
            v22 = 18;
            break;
          default:
            OUTLINED_FUNCTION_1_143();
            sub_1C74ACF14(v0, v23);
            v22 = 1;
            break;
        }

        v64[0] = v17;
        v36 = *(v17 + 16);
        v35 = *(v17 + 24);
        if (v36 >= v35 >> 1)
        {
          OUTLINED_FUNCTION_15(v35);
          sub_1C716E928();
          v17 = v64[0];
        }

        *(v17 + 16) = v36 + 1;
        *(v17 + v36 + 32) = v22;
        v19 += v21;
        --v16;
      }

      while (v16);
    }

    else
    {
      v37 = sub_1C6FCA6E4(v65, v64);
      v17 = MEMORY[0x1E69E7CC0];
    }

    v64[0] = v17;
    v38 = v56;
    v39 = *(v56 + 32) & 0x3F;
    MEMORY[0x1EEE9AC00](v37);
    *(&v53 - 2) = v64;
    *(&v53 - 1) = v38;
    v41 = (v40 + 63) >> 6;
    v42 = 8 * v41;
    isStackAllocationSafe = sub_1C75504FC();
    if (v39 <= 0xD)
    {
      break;
    }

    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
      break;
    }

    v50 = swift_slowAlloc();
    v51 = v41;
    v12 = v61;
    v52 = sub_1C71FD078(v50, v51, sub_1C74ACEEC);
    v44 = v12;
    if (v12)
    {
      goto LABEL_50;
    }

    v47 = v52;

    OUTLINED_FUNCTION_109();

LABEL_35:
    v11 = v60;
    v2 = v47[2];

    if (v2)
    {
      v2 = v54;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_99();
        sub_1C716D7D8();
        v2 = v63;
      }

      v49 = *(v2 + 16);
      if (v49 >= *(v2 + 24) >> 1)
      {
        sub_1C716D7D8();
        v2 = v63;
      }

      *(v2 + 16) = v49 + 1;
      v54 = v2;
      memcpy((v2 + 120 * v49 + 32), v65, 0x78uLL);
      v12 = 0;
    }

    else
    {
      sub_1C6FDD548(v65);
    }
  }

  v44 = &v53;
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  bzero(&v53 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0), v42);
  v45 = v41;
  v12 = v61;
  sub_1C71FC358(&v53 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0), v45, v17, v38);
  if (!v12)
  {
    v47 = v46;

    goto LABEL_35;
  }

  swift_willThrow();

  __break(1u);
LABEL_50:

  OUTLINED_FUNCTION_109();
  __break(1u);
}

void sub_1C74ABC44()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF8);
  OUTLINED_FUNCTION_76(v2);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v39 - v4;
  v45[0] = 0;
  v45[1] = 0;
  v6 = sub_1C754E5EC();
  v44[3] = v6;
  v44[4] = sub_1C70B881C();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v44);
  (*(*(v6 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x1E69BDD40], v6);
  LOBYTE(v6) = sub_1C754E3AC();
  __swift_destroy_boxed_opaque_existential_1(v44);
  if (v6)
  {
    sub_1C754F28C();
    v8 = sub_1C754F27C();
    v9 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
    v10 = [v1 string];
    v11 = sub_1C755068C();
    v13 = v12;

    sub_1C7374F18(v11, v13, v9);
    MEMORY[0x1EEE9AC00](v14);
    v39[-4] = v11;
    v39[-3] = v13;
    v37 = v8;
    v38 = v45;
    sub_1C755111C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
    inited = swift_initStackObject();
    v16 = 0;
    *(inited + 16) = xmmword_1C755D200;
    *(inited + 32) = 0x747265636E6F63;
    *(inited + 40) = 0xE700000000000000;
    v17 = inited + 40;
    *(inited + 48) = 0x6C61766974736566;
    *(inited + 56) = 0xE800000000000000;
    *(inited + 64) = 0x776F68732B735CLL;
    *(inited + 72) = 0xE700000000000000;
    *(inited + 80) = 0x2B735C776F6873;
    *(inited + 88) = 0xE700000000000000;
    *(inited + 96) = 0x6769672B735CLL;
    *(inited + 104) = 0xE600000000000000;
    *(inited + 112) = 0x2B735C676967;
    *(inited + 120) = 0xE600000000000000;
    v39[1] = inited;
    v40 = MEMORY[0x1E69E7CC0];
    v39[0] = inited + 40;
LABEL_4:
    v18 = (v17 + 16 * v16++);
    while (v16 != 7)
    {
      if ((v16 - 1) > 5)
      {
        __break(1u);
        return;
      }

      v19 = *(v18 - 1);
      v20 = *v18;
      sub_1C75504FC();
      v21 = v1;
      v22 = [v1 string];
      v23 = sub_1C755068C();
      v25 = v24;

      v44[0] = v23;
      v44[1] = v25;
      v41 = v19;
      v42 = v20;
      v26 = sub_1C754E15C();
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v26);
      v37 = sub_1C6FB5E8C();
      v38 = v37;
      v27 = sub_1C755157C();
      v29 = v28;
      v31 = v30;
      sub_1C6FD7FC8(v5, &qword_1EC214DF8);

      if ((v31 & 1) == 0 && (v27 ^ v29) >> 14)
      {
        v32 = v40;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_99();
          sub_1C6F7ED9C();
          v32 = v43;
        }

        v1 = v21;
        v35 = *(v32 + 16);
        v34 = *(v32 + 24);
        if (v35 >= v34 >> 1)
        {
          OUTLINED_FUNCTION_15(v34);
          sub_1C6F7ED9C();
          v32 = v43;
        }

        *(v32 + 16) = v35 + 1;
        v40 = v32;
        v36 = v32 + 16 * v35;
        *(v36 + 32) = v19;
        *(v36 + 40) = v20;
        v17 = v39[0];
        goto LABEL_4;
      }

      ++v16;
      v18 += 2;
      v1 = v21;
    }

    swift_setDeallocating();
    sub_1C6FDC9DC();
    if (*(v40 + 16))
    {
      sub_1C75504FC();
    }
  }

  OUTLINED_FUNCTION_25_0();
}

BOOL sub_1C74AC114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v8 = sub_1C755098C();
  v9 = MEMORY[0x1CCA5CC40](v8);
  v11 = v10;

  v12 = sub_1C70735F4();
  if (v12)
  {
    *a7 = v9;
    a7[1] = v11;
  }

  return !v12;
}

uint64_t sub_1C74AC1C8()
{
  OUTLINED_FUNCTION_42();
  v1[34] = v2;
  v1[35] = v0;
  v1[32] = v3;
  v1[33] = v4;
  v5 = type metadata accessor for AppleMusicSubscriptionState();
  OUTLINED_FUNCTION_76(v5);
  v1[36] = OUTLINED_FUNCTION_77();
  v6 = sub_1C754F38C();
  v1[37] = v6;
  OUTLINED_FUNCTION_18(v6);
  v1[38] = v7;
  v1[39] = OUTLINED_FUNCTION_77();
  v8 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C74AC290()
{
  OUTLINED_FUNCTION_46_40();
  sub_1C754F1CC();
  type metadata accessor for StoryMusicCurator();
  v1 = swift_task_alloc();
  *(v0 + 320) = v1;
  *v1 = v0;
  v1[1] = sub_1C74AC370;

  return static StoryMusicCurator.queryAppleMusicSubscriptionState(cacheValueInSeconds:)();
}

uint64_t sub_1C74AC370()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_40();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C74AC45C()
{
  v59 = v0;
  v1 = v0[36];
  switch(*(v1 + 1))
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
      v2 = sub_1C7551DBC();

      if (v2)
      {
        goto LABEL_4;
      }

      sub_1C74ABC44();
      if (!v8)
      {
        switch(*(v1 + 1))
        {
          case 2:

            goto LABEL_18;
          default:
            v24 = sub_1C7551DBC();

            if ((v24 & 1) == 0)
            {
              v35 = v0[36];
              v36 = v0[34];
              v37 = v0[32];
              __dst[0] = *(v1 + 1);
              v4 = sub_1C74ACB70(v37, v25, __dst);
              OUTLINED_FUNCTION_2_133();
              sub_1C74ACF14(v35, v38);
              OUTLINED_FUNCTION_70(v36, v36[3]);
              goto LABEL_5;
            }

LABEL_18:
            sub_1C74AB58C();
            v27 = v26;
            v28 = *(v26 + 16);
            if (!v28)
            {
              v51 = v0[34];
              OUTLINED_FUNCTION_2_133();
              sub_1C74ACF14(v52, v53);

              __swift_project_boxed_opaque_existential_1(v51, v51[3]);
              OUTLINED_FUNCTION_17_18();
              OUTLINED_FUNCTION_75();
              goto LABEL_12;
            }

            v55 = MEMORY[0x1E69E7CC0];
            sub_1C716D7D8();
            v4 = v55;
            v29 = v28 - 1;
            for (i = (v27 + 121); ; i = (i + 120))
            {
              OUTLINED_FUNCTION_35_31(v0 + 2);
              memcpy(__dst, i - 89, sizeof(__dst));
              v57[0] = *i;
              *(v57 + 15) = *(i + 15);
              sub_1C6FCA6E4((v0 + 2), (v0 + 17));
              v32 = *(v55 + 16);
              v31 = *(v55 + 24);
              if (v32 >= v31 >> 1)
              {
                OUTLINED_FUNCTION_15(v31);
                sub_1C716D7D8();
              }

              *(v55 + 16) = v32 + 1;
              v33 = v55 + 120 * v32;
              memcpy((v33 + 32), __dst, 0x58uLL);
              *(v33 + 120) = 9;
              v34 = *(v57 + 15);
              *(v33 + 121) = v57[0];
              *(v33 + 136) = v34;
              if (!v29)
              {
                break;
              }

              --v29;
            }

            sub_1C75504FC();
            v39 = sub_1C754FEEC();
            v40 = sub_1C755119C();

            v41 = os_log_type_enabled(v39, v40);
            v42 = v0[36];
            if (v41)
            {
              v43 = OUTLINED_FUNCTION_41_0();
              v44 = swift_slowAlloc();
              v58 = v44;
              *v43 = 136642819;
              v45 = MEMORY[0x1CCA5D090](v27, &type metadata for QueryToken);
              v47 = v46;

              v48 = sub_1C6F765A4(v45, v47, &v58);

              *(v43 + 4) = v48;
              OUTLINED_FUNCTION_47_28(&dword_1C6F5C000, v49, v50, "[Music] Throw an ambiguousPrompt error since Flex music can't resolve music titles or artists in the prompt. tokensFlexMusicCantResolve = %{sensitive}s");
              __swift_destroy_boxed_opaque_existential_1(v44);
              OUTLINED_FUNCTION_109();
              OUTLINED_FUNCTION_109();
            }

            else
            {
            }

            OUTLINED_FUNCTION_2_133();
            sub_1C74ACF14(v42, v54);
            __swift_project_boxed_opaque_existential_1(v0[34], *(v0[34] + 24));
            OUTLINED_FUNCTION_17_18();
            OUTLINED_FUNCTION_75();
            break;
        }

        goto LABEL_5;
      }

      v9 = sub_1C754FEEC();
      v10 = sub_1C755117C();
      v11 = OUTLINED_FUNCTION_128(v10);
      v12 = v0[36];
      if (v11)
      {
        v13 = OUTLINED_FUNCTION_41_0();
        v14 = swift_slowAlloc();
        *__dst = v14;
        *v13 = 136642819;
        v15 = OUTLINED_FUNCTION_154();
        v18 = sub_1C6F765A4(v15, v16, v17);

        *(v13 + 4) = v18;
        OUTLINED_FUNCTION_47_28(&dword_1C6F5C000, v19, v20, "[Music] Skip music ambiguity checks for concerts because prompt contains concert synonym %{sensitive}s");
        __swift_destroy_boxed_opaque_existential_1(v14);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      else
      {
      }

      OUTLINED_FUNCTION_2_133();
      sub_1C74ACF14(v12, v21);
      OUTLINED_FUNCTION_46_40();
      OUTLINED_FUNCTION_17_18();
LABEL_12:
      sub_1C754F1AC();
      v4 = 0;
      break;
    default:

LABEL_4:
      v3 = v0[36];
      v4 = sub_1C74ACA34(v0[32]);
      OUTLINED_FUNCTION_2_133();
      sub_1C74ACF14(v3, v5);
      v6 = OUTLINED_FUNCTION_154();
      __swift_project_boxed_opaque_existential_1(v6, v7);
      OUTLINED_FUNCTION_17_18();
LABEL_5:
      sub_1C754F1AC();
      break;
  }

  (*(v0[38] + 8))(v0[39], v0[37]);

  v22 = v0[1];

  return v22(v4);
}

uint64_t sub_1C74ACA34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1 || !static AppleMusicPrivacyPromptStateTracker.isDisclosureNeeded()())
  {
    return 0;
  }

  v15 = MEMORY[0x1E69E7CC0];
  sub_1C716D7D8();
  v3 = v15;
  v4 = v1 - 1;
  for (i = (a1 + 121); ; i = (i + 120))
  {
    OUTLINED_FUNCTION_35_31(v12);
    memcpy(__dst, i - 89, sizeof(__dst));
    v13[0] = *i;
    *(v13 + 15) = *(i + 15);
    sub_1C6FCA6E4(v12, &v11);
    v15 = v3;
    v7 = *(v3 + 16);
    v6 = *(v3 + 24);
    if (v7 >= v6 >> 1)
    {
      OUTLINED_FUNCTION_15(v6);
      sub_1C716D7D8();
      v3 = v15;
    }

    *(v3 + 16) = v7 + 1;
    v8 = v3 + 120 * v7;
    memcpy((v8 + 32), __dst, 0x58uLL);
    *(v8 + 120) = 8;
    v9 = *(v13 + 15);
    *(v8 + 121) = v13[0];
    *(v8 + 136) = v9;
    if (!v4)
    {
      break;
    }

    --v4;
  }

  return v3;
}

uint64_t sub_1C74ACB70(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *a3;
  sub_1C74AB58C();
  v6 = v5;
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = 15;
    switch(v4)
    {
      case 1:
        v8 = 16;
        break;
      case 2:

        v9 = sub_1C754FEEC();
        v14 = sub_1C755119C();
        if (!OUTLINED_FUNCTION_7_0(v14))
        {
          goto LABEL_12;
        }

        v11 = OUTLINED_FUNCTION_127();
        *v11 = 0;
        v12 = "[Music] Should never get notEligibleReasonNotSignedIn since this is the flex music case";
        goto LABEL_11;
      case 3:
        v8 = 13;
        break;
      case 4:
        v8 = 14;
        break;
      case 5:
        break;
      default:

        v9 = sub_1C754FEEC();
        v10 = sub_1C755119C();
        if (!OUTLINED_FUNCTION_7_0(v10))
        {
          goto LABEL_12;
        }

        v11 = OUTLINED_FUNCTION_127();
        *v11 = 0;
        v12 = "[Music] Should never get isEligible since expecting Apple Music to not be available here";
        goto LABEL_11;
    }

    v16 = sub_1C754FEEC();
    v17 = sub_1C755117C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_41_0();
      v19 = swift_slowAlloc();
      __dst[0] = v19;
      *v18 = 136315138;
      v30[0] = v8;
      QueryTokenAmbiguityReason.rawValue.getter();
      v22 = sub_1C6F765A4(v20, v21, __dst);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1C6F5C000, v16, v17, "[Music] Returning ambiguousMusicQueryTokens with reason: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v34 = MEMORY[0x1E69E7CC0];
    sub_1C716D7D8();
    v15 = v34;
    v23 = v7 - 1;
    for (i = (v6 + 121); ; i = (i + 120))
    {
      memcpy(__dst, i - 89, sizeof(__dst));
      memcpy(__src, i - 89, sizeof(__src));
      v32[0] = *i;
      *(v32 + 15) = *(i + 15);
      sub_1C6FCA6E4(__dst, v30);
      v34 = v15;
      v26 = *(v15 + 16);
      v25 = *(v15 + 24);
      if (v26 >= v25 >> 1)
      {
        OUTLINED_FUNCTION_15(v25);
        sub_1C716D7D8();
        v15 = v34;
      }

      *(v15 + 16) = v26 + 1;
      v27 = v15 + 120 * v26;
      memcpy((v27 + 32), __src, 0x58uLL);
      *(v27 + 120) = v8;
      v28 = *(v32 + 15);
      *(v27 + 121) = v32[0];
      *(v27 + 136) = v28;
      if (!v23)
      {
        break;
      }

      --v23;
    }
  }

  else
  {

    v9 = sub_1C754FEEC();
    v13 = sub_1C755117C();
    if (OUTLINED_FUNCTION_7_0(v13))
    {
      v11 = OUTLINED_FUNCTION_127();
      *v11 = 0;
      v12 = "[Music] All the query tokens can be resolved by Flex";
LABEL_11:
      _os_log_impl(&dword_1C6F5C000, v9, v3, v12, v11, 2u);
      OUTLINED_FUNCTION_109();
    }

LABEL_12:

    return 0;
  }

  return v15;
}

unint64_t sub_1C74ACE78()
{
  result = qword_1EDD0CD98;
  if (!qword_1EDD0CD98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD0CD98);
  }

  return result;
}

void sub_1C74ACEBC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1C71FC358(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = v7;
  }
}

uint64_t sub_1C74ACF14(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

void *OUTLINED_FUNCTION_35_31(void *a1)
{

  return memcpy(a1, v1, 0x78uLL);
}

void OUTLINED_FUNCTION_47_28(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1C74AD2A8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422F38();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C74AFE28(v6);
  *a1 = v2;
  return result;
}

uint64_t static LocationCuration.requiredFetchPropertySets()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C755BAA0;
  *(v0 + 32) = sub_1C755068C();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1C755068C();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_1C755068C();
  *(v0 + 72) = v3;
  return v0;
}

void static LocationCuration.representativeAssetsForMapDisplay(from:)()
{
  OUTLINED_FUNCTION_72_13();
  v221 = v1;
  v222 = v2;
  v209 = v0;
  v4 = v3;
  v198 = sub_1C754FE9C();
  OUTLINED_FUNCTION_3_0();
  v203 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_78();
  v208 = v7 - v8;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_130();
  v191 = v10;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_130();
  v218 = v12;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_130();
  v210 = v14;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v15);
  v204 = v190 - v16;
  v217 = sub_1C754FE4C();
  OUTLINED_FUNCTION_3_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_78();
  v213 = v20 - v21;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_130();
  v195 = v23;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_130();
  v211 = v25;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_130();
  v193 = v27;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_130();
  v214 = v29;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_130();
  v206 = v31;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_130();
  v205 = v33;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_130();
  v207 = v35;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v36);
  v38 = v190 - v37;
  v200 = sub_1C754FE8C();
  OUTLINED_FUNCTION_3_0();
  v199 = v39;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_14_0();
  v43 = v42 - v41;
  v202 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v201 = v44;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_14_0();
  v48 = v47 - v46;
  v49 = [v4 count];
  v212 = v48;
  v50 = v43;
  sub_1C754FEFC();
  sub_1C754FE7C();
  sub_1C754FE3C();
  v51 = sub_1C754FE6C();
  v52 = sub_1C755131C();
  if (sub_1C755144C())
  {
    v53 = OUTLINED_FUNCTION_41_0();
    *v53 = 134217984;
    *(v53 + 4) = v49;
    v54 = sub_1C754FE2C();
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v51, v52, v54, "RepresentativeAssetsForMapDisplay", "Count: %ld", v53, 0xCu);
    OUTLINED_FUNCTION_109();
  }

  v55 = v217;
  v197 = *(v18 + 16);
  v197(v207, v38, v217);
  sub_1C754FECC();
  OUTLINED_FUNCTION_40_4();
  v196 = v56;
  swift_allocObject();
  v57 = sub_1C754FEBC();
  v215 = *(v18 + 8);
  v216 = v18 + 8;
  v215(v38, v55);
  if (v49 < 1)
  {
    v68 = v212;
    v69 = sub_1C754FEEC();
    v70 = sub_1C755119C();
    if (OUTLINED_FUNCTION_7_0(v70))
    {
      v71 = OUTLINED_FUNCTION_127();
      *v71 = 0;
      OUTLINED_FUNCTION_56_1();
      _os_log_impl(v72, v73, v74, v75, v71, 2u);
      OUTLINED_FUNCTION_109();
    }

    v76 = sub_1C754FE6C();
    v77 = v213;
    sub_1C754FEAC();
    v78 = sub_1C755130C();
    if (sub_1C755144C())
    {

      v79 = v208;
      sub_1C754FEDC();

      v80 = v203;
      OUTLINED_FUNCTION_3_123();
      if (v81() == *MEMORY[0x1E69E93E8])
      {
        v82 = "[Error] Interval already ended";
      }

      else
      {
        (*(v80 + 8))(v79, v76);
        v82 = "";
      }

      v179 = OUTLINED_FUNCTION_127();
      *v179 = 0;
      v180 = v213;
      v181 = sub_1C754FE2C();
      _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v76, v78, v181, "RepresentativeAssetsForMapDisplay", v82, v179, 2u);
      OUTLINED_FUNCTION_109();

      v147 = v180;
    }

    else
    {

      v147 = v77;
    }

    v215(v147, v217);
    v182 = OUTLINED_FUNCTION_2_135();
    v183(v182);
    OUTLINED_FUNCTION_14_72();
    v185 = v68;
    goto LABEL_75;
  }

  sub_1C74AE5D4();
  v59 = v58;
  if (!*(v58 + 16))
  {

    v83 = sub_1C754FEEC();
    v84 = sub_1C755119C();
    if (OUTLINED_FUNCTION_7_0(v84))
    {
      v85 = OUTLINED_FUNCTION_127();
      *v85 = 0;
      OUTLINED_FUNCTION_56_1();
      _os_log_impl(v86, v87, v88, v89, v85, 2u);
      OUTLINED_FUNCTION_109();
    }

    v90 = sub_1C754FE6C();
    v91 = v205;
    sub_1C754FEAC();
    v92 = sub_1C755130C();
    v93 = sub_1C755144C();
    v94 = v57;
    v95 = v203;
    v96 = v204;
    if (v93)
    {

      sub_1C754FEDC();

      OUTLINED_FUNCTION_3_123();
      if (v97() == *MEMORY[0x1E69E93E8])
      {
        v98 = "[Error] Interval already ended";
      }

      else
      {
        (*(v95 + 8))(v96, v94);
        v98 = "";
      }

      v186 = OUTLINED_FUNCTION_127();
      *v186 = 0;
      v187 = sub_1C754FE2C();
      _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v90, v92, v187, "RepresentativeAssetsForMapDisplay", v98, v186, 2u);
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    v215(v91, v217);
    v188 = OUTLINED_FUNCTION_2_135();
    v189(v188);
    OUTLINED_FUNCTION_14_72();
    v185 = v212;
LABEL_75:
    v184(v185, v202);
    goto LABEL_76;
  }

  v190[4] = v18 + 16;
  v190[3] = v49;
  sub_1C75504FC();
  v60 = sub_1C754FEEC();
  v61 = sub_1C755117C();
  v62 = OUTLINED_FUNCTION_7_0(v61);
  v190[1] = v57;
  v208 = v59;
  if (v62)
  {
    v63 = OUTLINED_FUNCTION_41_0();
    *v63 = 134217984;
    *(v63 + 4) = *(v59 + 16);

    OUTLINED_FUNCTION_56_1();
    _os_log_impl(v64, v65, v66, v67, v63, 0xCu);
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  v99 = v211;
  v100 = v214;
  v101 = v206;
  sub_1C754FE3C();
  v190[2] = v50;
  v102 = sub_1C754FE6C();
  v103 = sub_1C755131C();
  if (sub_1C755144C())
  {
    v104 = OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_24_52(v104, 3.852e-34);
    v105 = sub_1C754FE2C();
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v102, v103, v105, "SortedFilteredAssetContainersForMapDisplay", "Count: %ld", v104, 0xCu);
    v100 = v214;
    OUTLINED_FUNCTION_109();
  }

  v106 = v217;
  OUTLINED_FUNCTION_21_63();
  v107();
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  v192 = sub_1C754FEBC();
  v215(v101, v106);
  v194 = [objc_opt_self() locationCurationAvoidPeople];
  v108 = 0;
  v219 = MEMORY[0x1E69E7CC8];
  v220 = MEMORY[0x1E69E7CC8];
  v109 = (v208 + 64);
  v110 = 1 << *(v208 + 32);
  v111 = -1;
  if (v110 < 64)
  {
    v111 = ~(-1 << v110);
  }

  v112 = v111 & *(v208 + 64);
  v113 = (v110 + 63) >> 6;
  v205 = v113;
  v206 = MEMORY[0x1E69E7CC0];
  v114 = v218;
  v204 = (v208 + 64);
LABEL_23:
  v115 = v210;
  if (v112)
  {
    goto LABEL_28;
  }

  while (1)
  {
LABEL_24:
    v116 = v108 + 1;
    if (__OFADD__(v108, 1))
    {
LABEL_78:
      __break(1u);
      return;
    }

    if (v116 >= v113)
    {
      break;
    }

    v112 = *&v109[8 * v116];
    ++v108;
    if (v112)
    {
      v108 = v116;
      while (1)
      {
LABEL_28:
        v213 = (v112 - 1) & v112;
        v117 = sub_1C75504FC();
        v118 = sub_1C74AED2C(v117, &v219, &v220);

        v112 = v118;
        v119 = *(v118 + 16);
        if (v119)
        {
          if (!v194)
          {
            v122 = *(v118 + 40);
            v124 = *(v118 + 48);
            v123 = *(v118 + 56);
            v125 = *(v118 + 64);
            v126 = *(v118 + 32);
            sub_1C75504FC();

            v129 = v206;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_24_0();
              sub_1C6FB4F8C();
              v129 = v138;
            }

            OUTLINED_FUNCTION_16_72();
            v99 = v211;
            if (v131)
            {
              OUTLINED_FUNCTION_15(v134);
              sub_1C6FB4F8C();
              v113 = v205;
              v206 = v135;
            }

LABEL_42:
            v132 = v206;
            *(v206 + 16) = v129;
            v133 = (v132 + 40 * v119);
            v133[4] = v126;
            v133[5] = v122;
            v133[6] = v124;
            v133[7] = v123;
            v133[8] = v125;
            v100 = v214;
            v109 = v204;
            goto LABEL_23;
          }

          v120 = 0;
          v121 = (v118 + 64);
          while (v119 != v120)
          {
            if (v120 >= *(v112 + 16))
            {
              __break(1u);
              goto LABEL_78;
            }

            v122 = *(v121 - 3);
            v124 = *(v121 - 2);
            v123 = *(v121 - 1);
            v125 = *v121;
            v126 = *(v121 - 4);
            sub_1C75504FC();
            v127 = [v126 mediaAnalysisProperties];
            v128 = [v127 faceCount];

            if (!v128)
            {

              v129 = v206;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_24_0();
                sub_1C6FB4F8C();
                v129 = v136;
              }

              v99 = v211;
              v114 = v218;
              OUTLINED_FUNCTION_16_72();
              if (v131)
              {
                OUTLINED_FUNCTION_15(v130);
                sub_1C6FB4F8C();
                v206 = v137;
              }

              v113 = v205;
              goto LABEL_42;
            }

            ++v120;
            v121 += 5;
            v114 = v218;
          }
        }

        v115 = v210;
        v99 = v211;
        v112 = v213;
        v100 = v214;
        v109 = v204;
        v113 = v205;
        if (!v213)
        {
          goto LABEL_24;
        }
      }
    }
  }

  v139 = sub_1C754FE6C();
  sub_1C754FEAC();
  v140 = v100;
  v141 = sub_1C755130C();
  v142 = sub_1C755144C();
  v143 = v193;
  if (v142)
  {
    v144 = v192;

    sub_1C754FEDC();

    v145 = v203;
    OUTLINED_FUNCTION_3_123();
    if (v146() != *MEMORY[0x1E69E93E8])
    {
      (*(v145 + 8))(v115, v144);
    }

    *OUTLINED_FUNCTION_127() = 0;
    v140 = v214;
    v148 = sub_1C754FE2C();
    OUTLINED_FUNCTION_18_69(&dword_1C6F5C000, v139, v141, v148, "SortedFilteredAssetContainersForMapDisplay");
    OUTLINED_FUNCTION_109();
  }

  v215(v140, v217);
  v149 = v206;
  sub_1C75504FC();
  v150 = sub_1C754FEEC();
  v151 = sub_1C755117C();
  if (OUTLINED_FUNCTION_7_0(v151))
  {
    v152 = OUTLINED_FUNCTION_41_0();
    *v152 = 134217984;
    *(v152 + 4) = *(v149 + 16);
    OUTLINED_FUNCTION_56_1();
    _os_log_impl(v153, v154, v155, v156, v152, 0xCu);
    OUTLINED_FUNCTION_109();
  }

  sub_1C754FE3C();
  v157 = sub_1C754FE6C();
  v158 = sub_1C755131C();
  if (sub_1C755144C())
  {
    v159 = OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_24_52(v159, 3.852e-34);
    v160 = sub_1C754FE2C();
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v157, v158, v160, "RankRepresentativeAssetsForMapDisplay", "Count: %ld", v159, 0xCu);

    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  v161 = v195;

  v162 = v217;
  OUTLINED_FUNCTION_21_63();
  v163();
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  sub_1C754FEBC();
  v215(v143, v162);
  sub_1C74AF6E8(v149, &v219);

  v164 = sub_1C754FE6C();
  sub_1C754FEAC();
  v165 = sub_1C755130C();
  if (sub_1C755144C())
  {

    sub_1C754FEDC();

    v166 = v203;
    OUTLINED_FUNCTION_3_123();
    if (v167() != *MEMORY[0x1E69E93E8])
    {
      (*(v166 + 8))(v114, v164);
    }

    *OUTLINED_FUNCTION_127() = 0;
    v168 = sub_1C754FE2C();
    OUTLINED_FUNCTION_18_69(&dword_1C6F5C000, v164, v165, v168, "RankRepresentativeAssetsForMapDisplay");
    OUTLINED_FUNCTION_109();
    v161 = v195;
  }

  v215(v99, v217);
  v169 = sub_1C754FE6C();
  v170 = v161;
  sub_1C754FEAC();
  v171 = sub_1C755130C();
  if (sub_1C755144C())
  {

    v172 = v191;
    sub_1C754FEDC();

    v173 = v203;
    OUTLINED_FUNCTION_3_123();
    if (v174() != *MEMORY[0x1E69E93E8])
    {
      (*(v173 + 8))(v172, v169);
    }

    *OUTLINED_FUNCTION_127() = 0;
    v170 = v195;
    v175 = sub_1C754FE2C();
    OUTLINED_FUNCTION_18_69(&dword_1C6F5C000, v169, v171, v175, "RepresentativeAssetsForMapDisplay");
    OUTLINED_FUNCTION_109();
  }

  v215(v170, v217);
  v176 = OUTLINED_FUNCTION_2_135();
  v177(v176);
  OUTLINED_FUNCTION_14_72();
  v178(v212, v202);
LABEL_76:
  OUTLINED_FUNCTION_73_13();
}

void sub_1C74AE5D4()
{
  OUTLINED_FUNCTION_72_13();
  v99 = v0;
  v100 = v1;
  v3 = v2;
  sub_1C754FE9C();
  OUTLINED_FUNCTION_3_0();
  v85 = v5;
  v86 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v84 = v7 - v6;
  v8 = sub_1C754FE4C();
  OUTLINED_FUNCTION_3_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_78();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v83 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v83 - v19;
  sub_1C754FE8C();
  OUTLINED_FUNCTION_3_0();
  v90 = v22;
  v91 = v21;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_14_0();
  v25 = v24 - v23;
  sub_1C754FE7C();
  v26 = v3;
  sub_1C754FE3C();
  v94 = v25;
  v27 = sub_1C754FE6C();
  v28 = sub_1C755131C();
  v29 = sub_1C755144C();
  v96 = v26;
  if (v29)
  {
    v30 = OUTLINED_FUNCTION_41_0();
    *v30 = 134217984;
    *(v30 + 4) = [v96 count];

    v31 = sub_1C754FE2C();
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v27, v28, v31, "AssetContainersByGeoHashForMapDisplay", "Count: %ld", v30, 0xCu);
    v26 = v96;
    OUTLINED_FUNCTION_109();
  }

  else
  {

    v27 = v26;
  }

  (*(v10 + 16))(v17, v20, v8);
  sub_1C754FECC();
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  v32 = sub_1C754FEBC();
  v35 = *(v10 + 8);
  v34 = v10 + 8;
  v33 = v35;
  v35(v20, v8);
  v36 = [v26 count];
  if (v36 >= 1000)
  {
    v37 = 1000;
  }

  else
  {
    v37 = v36;
  }

  if (v36 < 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    sub_1C7551E4C();
    __break(1u);
    return;
  }

  v92 = v32;
  v93 = v14;
  v87 = v33;
  v88 = v34;
  v89 = v8;
  if (v36)
  {
    v97 = objc_opt_self();
    v38 = 0;
    v39 = 0;
    v40 = MEMORY[0x1E69E7CC8];
    v95 = v37;
    while (v37 != v39)
    {
      v41 = [v26 objectAtIndexedSubscript:v39];
      [v41 locationCoordinate];
      v43 = v42;
      [v41 locationCoordinate];
      v44 = [v97 poiGeoHashWithGeoHashSize:6 latitude:v43 longitude:?];
      if (v44)
      {
        v45 = v44;
        v46 = sub_1C755068C();
        v48 = v47;

        v49 = [v41 iconicScoreProperties];
        if (!v49)
        {
          goto LABEL_40;
        }

        v50 = v49;
        [v49 iconicScore];
        v52 = v51;

        v53 = [v41 mediaAnalysisProperties];
        [v53 wallpaperScore];
        v55 = v54;

        sub_1C75504FC();
        sub_1C6F6E5B4(v38);
        swift_isUniquelyReferenced_nonNull_native();
        v98 = v40;
        v56 = sub_1C6F78124(v46, v48);
        if (__OFADD__(v40[2], (v57 & 1) == 0))
        {
          goto LABEL_37;
        }

        v58 = v56;
        v59 = v57;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C508);
        if (sub_1C7551A2C())
        {
          v60 = sub_1C6F78124(v46, v48);
          if ((v59 & 1) != (v61 & 1))
          {
            goto LABEL_41;
          }

          v58 = v60;
        }

        v40 = v98;
        if (v59)
        {
        }

        else
        {
          v98[(v58 >> 6) + 8] |= 1 << v58;
          v62 = (v40[6] + 16 * v58);
          *v62 = v46;
          v62[1] = v48;
          *(v40[7] + 8 * v58) = MEMORY[0x1E69E7CC0];
          v63 = v40[2];
          v64 = __OFADD__(v63, 1);
          v65 = v63 + 1;
          if (v64)
          {
            goto LABEL_38;
          }

          v40[2] = v65;
        }

        v66 = v40[7];
        v67 = *(v66 + 8 * v58);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v66 + 8 * v58) = v67;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB4F8C();
          v67 = v72;
          *(v66 + 8 * v58) = v72;
        }

        v70 = *(v67 + 16);
        v69 = *(v67 + 24);
        if (v70 >= v69 >> 1)
        {
          OUTLINED_FUNCTION_15(v69);
          sub_1C6FB4F8C();
          v67 = v73;
          *(v66 + 8 * v58) = v73;
        }

        *(v67 + 16) = v70 + 1;
        v71 = v67 + 40 * v70;
        *(v71 + 32) = v41;
        *(v71 + 40) = v52;
        *(v71 + 48) = v46;
        *(v71 + 56) = v48;
        *(v71 + 64) = v55;
        v38 = sub_1C6FC0A88;
        v37 = v95;
        v26 = v96;
      }

      else
      {
      }

      if (v37 == ++v39)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v38 = 0;
LABEL_30:
  v74 = sub_1C754FE6C();
  v75 = v93;
  sub_1C754FEAC();
  v76 = sub_1C755130C();
  if (sub_1C755144C())
  {

    v77 = v84;
    sub_1C754FEDC();

    v79 = v85;
    v78 = v86;
    if ((*(v85 + 88))(v77, v86) == *MEMORY[0x1E69E93E8])
    {
      v80 = "[Error] Interval already ended";
    }

    else
    {
      (*(v79 + 8))(v77, v78);
      v80 = "";
    }

    v81 = OUTLINED_FUNCTION_127();
    *v81 = 0;
    v75 = v93;
    v82 = sub_1C754FE2C();
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v74, v76, v82, "AssetContainersByGeoHashForMapDisplay", v80, v81, 2u);
    OUTLINED_FUNCTION_109();
  }

  v87(v75, v89);
  (*(v90 + 8))(v94, v91);
  sub_1C6F6E5B4(v38);
  OUTLINED_FUNCTION_73_13();
}

uint64_t sub_1C74AED2C(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a3;
    v5 = (a1 + 64);
    v6 = MEMORY[0x1E69E7CC0];
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      v8 = *(v5 - 3);
      v9 = *(v5 - 2);
      v10 = *(v5 - 1);
      v11 = *v5;
      v12 = *(v5 - 4);
      sub_1C75504FC();
      if ((sub_1C74AEFF8(v12) & 1) == 0)
      {
        goto LABEL_12;
      }

      v13 = sub_1C74AF120(v12, a2);
      [v13 minimumMeaningfulIconicScore];
      v15 = v14;

      if (v15 <= v8)
      {
        v16 = v12;
        sub_1C75504FC();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB4F8C();
          v7 = v24;
        }

        v18 = *(v7 + 16);
        v17 = *(v7 + 24);
        if (v18 >= v17 >> 1)
        {
          OUTLINED_FUNCTION_15(v17);
          sub_1C6FB4F8C();
          v7 = v25;
        }

        *(v7 + 16) = v18 + 1;
        v19 = v7 + 40 * v18;
        *(v19 + 32) = v16;
        *(v19 + 40) = v8;
        *(v19 + 48) = v9;
        *(v19 + 56) = v10;
        *(v19 + 64) = v11;
        v4 = a3;
      }

      sub_1C74AF20C(v12, v4);
      if (v20 > 0.0 && v20 <= v11)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB4F8C();
          v6 = v26;
        }

        v22 = *(v6 + 16);
        v21 = *(v6 + 24);
        if (v22 >= v21 >> 1)
        {
          OUTLINED_FUNCTION_15(v21);
          sub_1C6FB4F8C();
          v6 = v27;
        }

        *(v6 + 16) = v22 + 1;
        v23 = v6 + 40 * v22;
        *(v23 + 32) = v12;
        *(v23 + 40) = v8;
        *(v23 + 48) = v9;
        *(v23 + 56) = v10;
        *(v23 + 64) = v11;
      }

      else
      {
LABEL_12:
      }

      v5 += 5;
      --v3;
    }

    while (v3);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
    v7 = MEMORY[0x1E69E7CC0];
  }

  if (*(v7 + 16))
  {

    sub_1C74AF340();
    v29 = v28;
  }

  else
  {

    if (*(v6 + 16))
    {
      sub_1C74AF528();
      v29 = v30;
    }

    else
    {
      v29 = MEMORY[0x1E69E7CC0];
    }
  }

  return v29;
}

id sub_1C74AEFF8(void *a1)
{
  result = [a1 sceneAnalysisProperties];
  if (result)
  {
    v3 = result;
    v4 = [result sceneAnalysisVersion];

    v5 = [objc_allocWithZone(MEMORY[0x1E69C1A68]) initWithSceneAnalysisVersion_];
    [a1 curationScore];
    if (*MEMORY[0x1E69BECD8] >= v6)
    {

      return 0;
    }

    else
    {
      v7 = [a1 mediaAnalysisProperties];
      [v7 blurrinessScore];
      v9 = v8;

      v10 = v9;
      v11 = [v5 sharpnessNode];
      [v11 highRecallOperatingPoint];
      v13 = v12;

      return (v13 <= v10);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C74AF120(void *a1, void *a2)
{
  result = [a1 sceneAnalysisProperties];
  if (result)
  {
    v4 = result;
    v5 = [result sceneAnalysisVersion];

    [objc_opt_self() baseSceneAnalysisVersionWithSceneAnalysisVersion_];
    v6 = sub_1C6FE3764();
    if (v6)
    {
      return v6;
    }

    v7 = [objc_allocWithZone(MEMORY[0x1E69C1A50]) initWithSceneAnalysisVersion_];
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_20_62();
    sub_1C6FC9EC0();
    *a2 = v8;
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C74AF20C(void *a1, void *a2)
{
  v3 = [a1 sceneAnalysisProperties];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 sceneAnalysisVersion];

    [objc_opt_self() baseSceneAnalysisVersionWithSceneAnalysisVersion_];
    v6 = sub_1C6FE3764();
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = [objc_allocWithZone(MEMORY[0x1E69C1AA8]) initWithSceneAnalysisVersion_];
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_20_62();
      sub_1C6FC9FE0();
      v6 = 0;
      *a2 = v10;
    }

    v8 = v6;
    v9 = [v7 minimumWallpaperScoreNode];

    [v9 operatingPoint];
  }

  else
  {
    __break(1u);
  }
}

void sub_1C74AF340()
{
  OUTLINED_FUNCTION_72_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C4E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C4E8);
  OUTLINED_FUNCTION_14_5();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C755BAA0;
  swift_getKeyPath();
  sub_1C754DB1C();
  swift_getKeyPath();
  sub_1C754DB1C();
  swift_getKeyPath();
  sub_1C754DB2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C4F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C4F8);
  OUTLINED_FUNCTION_6_113();
  sub_1C7099594(v1, &qword_1EC21C4F0);
  sub_1C7099594(&qword_1EDD06BF8, &qword_1EC21C4F8);
  OUTLINED_FUNCTION_5_104();
  v3 = sub_1C7099594(v2, &qword_1EC21C4E8);
  OUTLINED_FUNCTION_9_95(v3, v4, v5, v6, v7, v8, v9, v10, v0);

  OUTLINED_FUNCTION_73_13();
}

void sub_1C74AF528()
{
  OUTLINED_FUNCTION_72_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C4E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C4E8);
  OUTLINED_FUNCTION_14_5();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C75604F0;
  swift_getKeyPath();
  sub_1C754DB1C();
  swift_getKeyPath();
  sub_1C754DB2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C4F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C4F8);
  OUTLINED_FUNCTION_6_113();
  sub_1C7099594(v1, &qword_1EC21C4F0);
  sub_1C7099594(&qword_1EDD06BF8, &qword_1EC21C4F8);
  OUTLINED_FUNCTION_5_104();
  v3 = sub_1C7099594(v2, &qword_1EC21C4E8);
  OUTLINED_FUNCTION_9_95(v3, v4, v5, v6, v7, v8, v9, v10, v0);

  OUTLINED_FUNCTION_73_13();
}

uint64_t sub_1C74AF6E8(uint64_t a1, void *a2)
{
  v2 = sub_1C74AFAE8(a1, a2);
  sub_1C739D344(v2, v3, v4, v5, v6, v7, v8, v9, v41, v43, v44, v45, v47, v49, v51, v53[0], v53[1], v53[2], v53[3], v53[4], v53[5], v53[6], v53[7], v53[8], v53[9], v53[10]);
  v53[0] = v10;
  v11 = 0;
  sub_1C74AD2A8(v53);

  v12 = v53[0];
  v46 = *(v53[0] + 16);
  if (!v46)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v13 = 0;
  v14 = MEMORY[0x1E69E7CC0];
  v15 = &unk_1EC215150;
  v42 = v53[0];
  while (v13 < *(v12 + 16))
  {
    v16 = v15;
    sub_1C75504FC();
    sub_1C74AF528();
    v18 = v17;

    v19 = *(v18 + 16);
    if (v19)
    {
      v53[0] = MEMORY[0x1E69E7CC0];
      sub_1C755195C();
      v20 = 32;
      do
      {
        v21 = *(v18 + v20);
        sub_1C755192C();
        sub_1C755196C();
        sub_1C755197C();
        sub_1C755193C();
        v20 += 40;
        --v19;
      }

      while (v19);

      v22 = v53[0];
    }

    else
    {

      v22 = MEMORY[0x1E69E7CC0];
    }

    if (v22 >> 62)
    {
      v23 = sub_1C75516BC();
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = (v14 >> 62);
    if (v14 >> 62)
    {
      v24 = sub_1C75516BC();
    }

    else
    {
      v24 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = v24 + v23;
    if (__OFADD__(v24, v23))
    {
      goto LABEL_43;
    }

    v48 = v13;
    v50 = v23;
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v11)
      {
        v26 = v14 & 0xFFFFFFFFFFFFFF8;
        if (v25 <= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_19:
      sub_1C75516BC();
      goto LABEL_20;
    }

    if (v11)
    {
      goto LABEL_19;
    }

LABEL_20:
    v14 = sub_1C75518CC();
    v26 = v14 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
    v52 = v14;
    v27 = *(v26 + 16);
    v28 = (*(v26 + 24) >> 1) - v27;
    v11 = (v26 + 8 * v27);
    if (v22 >> 62)
    {
      v30 = sub_1C75516BC();
      if (v30)
      {
        v31 = v30;
        v32 = sub_1C75516BC();
        if (v28 < v32)
        {
          goto LABEL_46;
        }

        if (v31 < 1)
        {
          goto LABEL_48;
        }

        v29 = v32;
        v11 += 4;
        sub_1C7099594(&qword_1EDD06A58, v15);
        for (i = 0; i != v31; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(v15);
          v34 = sub_1C6FDD09C(v53, i, v22);
          v36 = *v35;
          v34(v53, 0);
          v15 = v16;
          v11[i] = v36;
        }

        v12 = v42;
        goto LABEL_31;
      }
    }

    else
    {
      v29 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
        if (v28 < v29)
        {
          goto LABEL_47;
        }

        sub_1C6FDEC1C();
        swift_arrayInitWithCopy();
LABEL_31:

        v14 = v52;
        if (v29 < v50)
        {
          goto LABEL_44;
        }

        if (v29 > 0)
        {
          v37 = *(v26 + 16);
          v38 = __OFADD__(v37, v29);
          v39 = v37 + v29;
          if (v38)
          {
            goto LABEL_45;
          }

          *(v26 + 16) = v39;
        }

        goto LABEL_36;
      }
    }

    if (v50 > 0)
    {
      goto LABEL_44;
    }

LABEL_36:
    v13 = v48 + 1;
    if (v48 + 1 == v46)
    {

      return v14;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C74AFAE8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (a1 + 64);
    v5 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v33 = v2;
      v6 = *(v4 - 3);
      v7 = *(v4 - 1);
      v32 = *(v4 - 2);
      v8 = *v4;
      v9 = *(v4 - 4);
      sub_1C75504FC();
      v10 = sub_1C74AF120(v9, a2);
      v11 = [v10 bucketForIconicScore_];
      sub_1C6F6E5B4(v3);
      swift_isUniquelyReferenced_nonNull_native();
      v12 = sub_1C6FCABD0(v11);
      if (__OFADD__(v5[2], (v13 & 1) == 0))
      {
        break;
      }

      v14 = v12;
      v15 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C500);
      if (sub_1C7551A2C())
      {
        v16 = sub_1C6FCABD0(v11);
        if ((v15 & 1) != (v17 & 1))
        {
          goto LABEL_20;
        }

        v14 = v16;
      }

      if ((v15 & 1) == 0)
      {
        v5[(v14 >> 6) + 8] |= 1 << v14;
        *(v5[6] + 8 * v14) = v11;
        *(v5[7] + 8 * v14) = MEMORY[0x1E69E7CC0];
        v18 = v5[2];
        v19 = __OFADD__(v18, 1);
        v20 = v18 + 1;
        if (v19)
        {
          goto LABEL_19;
        }

        v5[2] = v20;
      }

      v21 = v5[7];
      v22 = *(v21 + 8 * v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v21 + 8 * v14) = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB4F8C();
        v22 = v28;
        *(v21 + 8 * v14) = v28;
      }

      v25 = *(v22 + 16);
      v24 = *(v22 + 24);
      if (v25 >= v24 >> 1)
      {
        OUTLINED_FUNCTION_15(v24);
        sub_1C6FB4F8C();
        *(v21 + 8 * v14) = v29;
      }

      v26 = *(v21 + 8 * v14);
      *(v26 + 16) = v25 + 1;
      v27 = (v26 + 40 * v25);
      *(v27 + 4) = v9;
      v27[5] = v6;
      *(v27 + 6) = v32;
      *(v27 + 7) = v7;
      v27[8] = v8;
      v4 += 5;
      v3 = sub_1C6FC0A88;
      v2 = v33 - 1;
      if (v33 == 1)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    result = sub_1C7551E4C();
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id LocationCuration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LocationCuration.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationCuration();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LocationCuration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationCuration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C74AFE28(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C7551D7C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218150);
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C74AFF9C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C74AFF2C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C74AFF2C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*v9 >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 24);
        *(v9 + 16) = *v9;
        *v9 = v7;
        *(v9 + 8) = v10;
        v9 -= 16;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C74AFF9C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v87 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v82 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9);
        v11 = (*a3 + 16 * v7);
        v12 = 16 * v7;
        v15 = *v11;
        v14 = v11 + 4;
        v13 = v15;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v14;
          v14 += 2;
          v20 = (v13 < v10) ^ (v17 >= v19);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 16 * v6;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = v24 + v21;
                v27 = *v25;
                v28 = v25[1];
                *v25 = *(v26 - 16);
                *(v26 - 16) = v27;
                *(v26 - 8) = v28;
              }

              ++v23;
              v21 -= 16;
              v12 += 16;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
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

          if (v9 != v6)
          {
            v29 = *a3;
            v30 = *a3 + 16 * v9 - 16;
            v31 = v7 - v9;
            do
            {
              v32 = *(v29 + 16 * v9);
              v33 = v31;
              v34 = v30;
              do
              {
                if (*v34 >= v32)
                {
                  break;
                }

                if (!v29)
                {
                  goto LABEL_111;
                }

                v35 = *(v34 + 24);
                *(v34 + 16) = *v34;
                *v34 = v32;
                *(v34 + 8) = v35;
                v34 -= 16;
              }

              while (!__CFADD__(v33++, 1));
              ++v9;
              v30 += 16;
              --v31;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v84 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC();
        v8 = v80;
      }

      v37 = v8[2];
      v38 = v37 + 1;
      if (v37 >= v8[3] >> 1)
      {
        sub_1C6FB17EC();
        v8 = v81;
      }

      v8[2] = v38;
      v39 = v8 + 4;
      v40 = &v8[2 * v37 + 4];
      *v40 = v7;
      v40[1] = v9;
      v85 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v37)
      {
        while (1)
        {
          v41 = v38 - 1;
          v42 = &v39[2 * v38 - 2];
          v43 = &v8[2 * v38];
          if (v38 >= 4)
          {
            break;
          }

          if (v38 == 3)
          {
            v44 = v8[4];
            v45 = v8[5];
            v54 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            v47 = v54;
LABEL_56:
            if (v47)
            {
              goto LABEL_96;
            }

            v59 = *v43;
            v58 = v43[1];
            v60 = __OFSUB__(v58, v59);
            v61 = v58 - v59;
            v62 = v60;
            if (v60)
            {
              goto LABEL_99;
            }

            v63 = v42[1];
            v64 = v63 - *v42;
            if (__OFSUB__(v63, *v42))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v61, v64))
            {
              goto LABEL_104;
            }

            if (v61 + v64 >= v46)
            {
              if (v46 < v64)
              {
                v41 = v38 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v38 < 2)
          {
            goto LABEL_98;
          }

          v66 = *v43;
          v65 = v43[1];
          v54 = __OFSUB__(v65, v66);
          v61 = v65 - v66;
          v62 = v54;
LABEL_71:
          if (v62)
          {
            goto LABEL_101;
          }

          v68 = *v42;
          v67 = v42[1];
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_103;
          }

          if (v69 < v61)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v41 - 1 >= v38)
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

          v73 = &v39[2 * v41 - 2];
          v74 = *v73;
          v75 = &v39[2 * v41];
          v76 = v75[1];
          sub_1C74B05A0((*a3 + 16 * *v73), (*a3 + 16 * *v75), (*a3 + 16 * v76), v85);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v76 < v74)
          {
            goto LABEL_91;
          }

          v77 = v8;
          v78 = v8[2];
          if (v41 > v78)
          {
            goto LABEL_92;
          }

          *v73 = v74;
          v73[1] = v76;
          if (v41 >= v78)
          {
            goto LABEL_93;
          }

          v38 = v78 - 1;
          memmove(&v39[2 * v41], v75 + 2, 16 * (v78 - 1 - v41));
          v77[2] = v78 - 1;
          v79 = v78 > 2;
          v8 = v77;
          v5 = 0;
          if (!v79)
          {
            goto LABEL_85;
          }
        }

        v48 = &v39[2 * v38];
        v49 = *(v48 - 8);
        v50 = *(v48 - 7);
        v54 = __OFSUB__(v50, v49);
        v51 = v50 - v49;
        if (v54)
        {
          goto LABEL_94;
        }

        v53 = *(v48 - 6);
        v52 = *(v48 - 5);
        v54 = __OFSUB__(v52, v53);
        v46 = v52 - v53;
        v47 = v54;
        if (v54)
        {
          goto LABEL_95;
        }

        v55 = v43[1];
        v56 = v55 - *v43;
        if (__OFSUB__(v55, *v43))
        {
          goto LABEL_97;
        }

        v54 = __OFADD__(v46, v56);
        v57 = v46 + v56;
        if (v54)
        {
          goto LABEL_100;
        }

        if (v57 >= v51)
        {
          v71 = *v42;
          v70 = v42[1];
          v54 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v54)
          {
            goto LABEL_105;
          }

          if (v46 < v72)
          {
            v41 = v38 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v84;
      a4 = v82;
      if (v84 >= v6)
      {
        v87 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1C74B0474(&v87, *a1, a3);
LABEL_89:
}

uint64_t sub_1C74B0474(uint64_t *a1, char *a2, void *a3)
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
    sub_1C74B05A0((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
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

uint64_t sub_1C74B05A0(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1C6F9EE08(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v4 >= *v6)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_1C6F9EE08(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_15:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    if (*v14 < *(v10 - 2))
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

uint64_t OUTLINED_FUNCTION_24_52(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = *(v2 - 360);
  return result;
}

uint64_t sub_1C74B075C(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[94] = a7;
  v7[93] = a6;
  v7[92] = a5;
  v7[91] = a4;
  v7[90] = a2;
  v7[89] = a1;
  v9 = sub_1C754F2FC();
  v7[95] = v9;
  v7[96] = *(v9 - 8);
  v7[97] = swift_task_alloc();
  v7[98] = swift_task_alloc();
  v7[99] = swift_task_alloc();
  v7[100] = swift_task_alloc();
  v7[101] = swift_task_alloc();
  v7[102] = swift_task_alloc();
  v7[103] = swift_task_alloc();
  v7[104] = swift_task_alloc();
  v10 = sub_1C754F38C();
  v7[105] = v10;
  v7[106] = *(v10 - 8);
  v7[107] = swift_task_alloc();
  v7[108] = swift_task_alloc();
  memcpy(v7 + 2, a3, 0x68uLL);

  return MEMORY[0x1EEE6DFA0](sub_1C74B0900, 0, 0);
}

uint64_t sub_1C74B0900()
{
  v1 = v0[92];
  v2 = OUTLINED_FUNCTION_457();
  __swift_project_boxed_opaque_existential_1(v2, v3);
  sub_1C754F1CC();
  sub_1C754F2CC();
  v4 = v0[89];
  OUTLINED_FUNCTION_70(v0[92], *(v1 + 24));
  sub_1C754F15C();
  v5 = [v4 fetchedObjects];
  if (!v5)
  {
    if (qword_1EDD09ED8 != -1)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  v6 = v5;
  v0[109] = sub_1C6F65BE8(0, &qword_1EDD0FA70);
  v1 = sub_1C7550B5C();
  v0[110] = v1;

  v34 = MEMORY[0x1E69E7CC0];
  v7 = sub_1C6FB6304();
  v8 = 0;
  v0[111] = v7;
  while (v7 != v8)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v11 = OUTLINED_FUNCTION_41_3();
      v9 = MEMORY[0x1CCA5DDD0](v11);
    }

    else
    {
      if (v8 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v9 = *(v1 + 8 * v8 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      OUTLINED_FUNCTION_0_201();
      swift_once();
LABEL_17:
      v21 = sub_1C754FF1C();
      __swift_project_value_buffer(v21, qword_1EDD09EE0);
      v22 = sub_1C754FEEC();
      v23 = sub_1C755119C();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1C6F5C000, v22, v23, "Unable to fetch asset captions for assets due to fetch error.", v24, 2u);
        OUTLINED_FUNCTION_37();
      }

      v25 = v0[108];
      v26 = v0[106];
      v27 = v0[105];
      v28 = v0[96];
      v33 = v0[95];
      v29 = v0[93];
      v30 = v0[92];

      sub_1C75504DC();
      __swift_destroy_boxed_opaque_existential_1((v0 + 65));
      OUTLINED_FUNCTION_70(v30, *(v1 + 24));
      sub_1C754F1AC();
      (*(v26 + 8))(v25, v27);
      (*(v28 + 8))(v29, v33);
      OUTLINED_FUNCTION_9_96();
      OUTLINED_FUNCTION_1_145();

      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_129();

      __asm { BRAA            X2, X16 }
    }

    if (([v9 mediaSubtypes] & 8) != 0)
    {
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
    }

    else
    {
    }

    ++v8;
  }

  v12 = v0[96];
  v0[112] = v34;
  sub_1C754F2BC();
  v0[113] = type metadata accessor for AssetCaptionGenerator();
  v0[114] = *(v12 + 32);
  v0[115] = (v12 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v13 = OUTLINED_FUNCTION_50_35();
  v14(v13);
  v15 = swift_task_alloc();
  v0[116] = v15;
  *v15 = v0;
  v15[1] = sub_1C74B0E74;
  OUTLINED_FUNCTION_129();

  return static AssetCaptionGenerator.localIdentifiersPreferringVideoCaption(for:eventRecorder:progressReporter:)(v16, v17, v18);
}

uint64_t sub_1C74B0E74()
{
  OUTLINED_FUNCTION_39_0();
  v4 = v3;
  OUTLINED_FUNCTION_6_4();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  *(v4 + 936) = v0;

  if (!v0)
  {
    *(v4 + 944) = v1;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1C74B0F7C()
{
  OUTLINED_FUNCTION_75_0();
  v2 = v0[118];
  v0[119] = v2;
  v3 = v0[112];
  sub_1C75504FC();
  v37 = MEMORY[0x1E69E7CC0];
  v4 = 0;
  v35 = v3 & 0xC000000000000001;
  v36 = sub_1C6FB6304();
  v33 = v3 + 32;
  v34 = v3;
LABEL_2:
  while (v4 != v36)
  {
    if (v35)
    {
      v5 = MEMORY[0x1CCA5DDD0](v4, v0[112]);
    }

    else
    {
      if (v4 >= *(v34 + 16))
      {
        goto LABEL_37;
      }

      v5 = *(v33 + 8 * v4);
    }

    v6 = v5;
    if (__OFADD__(v4++, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return;
    }

    v8 = [v5 localIdentifier];
    v9 = sub_1C755068C();
    v1 = v10;

    if (*(v2 + 16))
    {
      sub_1C7551F3C();
      sub_1C75505AC();
      v11 = sub_1C7551FAC();
      v12 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v13 = v11 & v12;
        if (((*(v2 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
        {
          break;
        }

        v14 = (*(v2 + 48) + 16 * v13);
        if (*v14 != v9 || v14[1] != v1)
        {
          v16 = sub_1C7551DBC();
          v11 = v13 + 1;
          if ((v16 & 1) == 0)
          {
            continue;
          }
        }

        sub_1C755192C();
        v1 = *(v37 + 16);
        sub_1C755196C();
        sub_1C755197C();
        sub_1C755193C();
        goto LABEL_2;
      }
    }
  }

  v17 = 0;
  v0[120] = v37;
  v0[79] = MEMORY[0x1E69E7CC0];
  while (v17 != v0[111])
  {
    v18 = v0[110];
    if ((v18 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1CCA5DDD0](v17);
    }

    else
    {
      if (v17 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v19 = *(v18 + 8 * v17 + 32);
    }

    v20 = v19;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_38;
    }

    if ([v19 isVideo])
    {
      sub_1C755192C();
      v4 = *(v0[79] + 16);
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
    }

    else
    {
    }

    ++v17;
  }

  v21 = v0[79];
  v0[121] = v21;

  sub_1C6FD242C(v22);
  v0[122] = v21;
  OUTLINED_FUNCTION_51_31();
  OUTLINED_FUNCTION_52_32();
  OUTLINED_FUNCTION_77_18();
  if (v4)
  {
    OUTLINED_FUNCTION_34_47();
    sub_1C6FC061C((v0 + 15), (v0 + 28));
    sub_1C754F2BC();
    type metadata accessor for FreeformStoryGenerator();
    OUTLINED_FUNCTION_56_33();
    v23 = OUTLINED_FUNCTION_50_35();
    v1(v23);
    v24 = swift_task_alloc();
    v0[123] = v24;
    *v24 = v0;
    OUTLINED_FUNCTION_15_85(v24);
    OUTLINED_FUNCTION_130_0();

    static FreeformStoryGenerator.findBestHighlightsForChapter(chapter:curatedAssets:characterUUIDs:storyGenerationCache:progressReporter:)();
  }

  else
  {
    OUTLINED_FUNCTION_40_51();
    sub_1C754F2BC();
    type metadata accessor for AssetMediaAnalyzer();
    v26 = OUTLINED_FUNCTION_7_103();
    (selRef_clsSceneClassifications)(v26);
    v27 = swift_task_alloc();
    v0[126] = v27;
    *v27 = v0;
    OUTLINED_FUNCTION_23_56(v27);
    OUTLINED_FUNCTION_130_0();

    static AssetMediaAnalyzer.requestHighlightInformation(for:queries:characterUUIDs:progressReporter:)(v28, v29, v30, v31);
  }
}

uint64_t sub_1C74B1378()
{
  v2 = *v1;
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 992) = v4;
  *(v2 + 1000) = v0;

  if (v0)
  {

    v5 = sub_1C74B37A4;
  }

  else
  {
    v5 = sub_1C74B14DC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C74B207C()
{
  OUTLINED_FUNCTION_39_0();
  v4 = v3;
  OUTLINED_FUNCTION_6_4();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  *(v4 + 1016) = v0;

  if (!v0)
  {
    *(v4 + 1024) = v1;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C74B2C94()
{
  v2 = *v1;
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1064) = v4;
  *(v2 + 1072) = v0;

  if (v0)
  {

    v5 = sub_1C74B45BC;
  }

  else
  {
    v5 = sub_1C74B2E18;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1C74B2E18()
{
  v1 = v0[133];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = v0 + 83;
  v6 = -1;
  v7 = -1 << *(v0[133] + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v2;
  v9 = (63 - v7) >> 6;
  v51 = v0[133];
  sub_1C75504FC();
  v10 = 0;
  v49 = v3;
  v50 = v0;
  v47 = v9;
  v48 = v0 + 83;
  if (v8)
  {
LABEL_8:
    while (1)
    {
      v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = (*(v51 + 48) + v12);
      v15 = *v13;
      v14 = v13[1];
      v16 = (*(v51 + 56) + v12);
      v17 = v16[1];
      v52 = *v16;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_1C75504FC();
      sub_1C75504FC();
      v19 = sub_1C74B7450(v15, v14, ObjCClassFromMetadata);
      if (!v20)
      {
        break;
      }

      v21 = v19;
      v22 = v20;

      swift_isUniquelyReferenced_nonNull_native();
      v53 = *v5;
      sub_1C6F78124(v21, v22);
      OUTLINED_FUNCTION_68_25();
      if (v25)
      {
        goto LABEL_30;
      }

      v26 = v23;
      v27 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215328);
      if (sub_1C7551A2C())
      {
        v28 = sub_1C6F78124(v21, v22);
        if ((v27 & 1) != (v29 & 1))
        {
          OUTLINED_FUNCTION_20_4();

          sub_1C7551E4C();
          return;
        }

        v26 = v28;
      }

      if (v27)
      {

        v30 = v53;
        v31 = (*(v53 + 56) + 16 * v26);
        *v31 = v52;
        v31[1] = v17;
      }

      else
      {
        v30 = v53;
        OUTLINED_FUNCTION_2_27(v53 + 8 * (v26 >> 6));
        v33 = (v32 + 16 * v26);
        *v33 = v21;
        v33[1] = v22;
        v34 = (*(v53 + 56) + 16 * v26);
        *v34 = v52;
        v34[1] = v17;
        v35 = *(v53 + 16);
        v25 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v25)
        {
          goto LABEL_31;
        }

        *(v53 + 16) = v36;
      }

      v8 &= v8 - 1;
      v9 = v47;
      v5 = v48;
      *v48 = v30;
      v3 = v49;
      v0 = v50;
      if (!v8)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {

        v37 = v0[134];
        sub_1C754F2EC();
        v38 = v0[92];
        v39 = *(v0[106] + 8);
        (v39)(v0[107], v0[105]);
        if (v37)
        {

          __swift_destroy_boxed_opaque_existential_1((v0 + 65));
          OUTLINED_FUNCTION_70(v38, v38[3]);
          sub_1C754F1AC();
          v40 = OUTLINED_FUNCTION_457();
          v39(v40);
          OUTLINED_FUNCTION_9_96();
          OUTLINED_FUNCTION_1_145();

          OUTLINED_FUNCTION_43();
          OUTLINED_FUNCTION_20_4();

          __asm { BRAA            X1, X16 }
        }

        __swift_destroy_boxed_opaque_existential_1((v0 + 65));
        OUTLINED_FUNCTION_70(v38, v38[3]);
        sub_1C754F1AC();
        v43 = OUTLINED_FUNCTION_457();
        v39(v43);
        OUTLINED_FUNCTION_9_96();
        OUTLINED_FUNCTION_1_145();

        OUTLINED_FUNCTION_116();
        OUTLINED_FUNCTION_20_4();

        __asm { BRAA            X2, X16 }
      }

      v8 = *(v3 + 8 * v11);
      ++v10;
      if (v8)
      {
        v10 = v11;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C74B32EC()
{
  if (qword_1EDD09ED8 != -1)
  {
LABEL_43:
    OUTLINED_FUNCTION_0_201();
    swift_once();
  }

  v3 = sub_1C754FF1C();
  __swift_project_value_buffer(v3, qword_1EDD09EE0);
  v4 = sub_1C754FEEC();
  sub_1C755117C();
  OUTLINED_FUNCTION_16_1();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[117];
  if (v6)
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_91();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    OUTLINED_FUNCTION_37();
  }

  v13 = MEMORY[0x1E69E7CD0];
  v0[119] = MEMORY[0x1E69E7CD0];
  v14 = v0[112];
  v42 = MEMORY[0x1E69E7CC0];
  v15 = 0;
  v41 = sub_1C6FB6304();
LABEL_5:
  while (v15 != v41)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1CCA5DDD0](v15, v0[112]);
    }

    else
    {
      if (v15 >= *(v14 + 16))
      {
        goto LABEL_40;
      }

      v16 = *(v14 + 32 + 8 * v15);
    }

    v1 = v16;
    if (__OFADD__(v15++, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v18 = [v16 localIdentifier];
    v2 = sub_1C755068C();
    v20 = v19;

    if (*(v13 + 16))
    {
      sub_1C7551F3C();
      sub_1C75505AC();
      v21 = sub_1C7551FAC();
      v22 = ~(-1 << *(v13 + 32));
      while (1)
      {
        v23 = v21 & v22;
        if (((*(v13 + (((v21 & v22) >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> (v21 & v22)) & 1) == 0)
        {
          break;
        }

        v24 = (*(v13 + 48) + 16 * v23);
        if (*v24 != v2 || v24[1] != v20)
        {
          v26 = sub_1C7551DBC();
          v21 = v23 + 1;
          if ((v26 & 1) == 0)
          {
            continue;
          }
        }

        sub_1C755192C();
        sub_1C755196C();
        sub_1C755197C();
        sub_1C755193C();
        goto LABEL_5;
      }
    }
  }

  v27 = 0;
  v0[120] = v42;
  v0[79] = MEMORY[0x1E69E7CC0];
  while (v27 != v0[111])
  {
    v28 = v0[110];
    if ((v28 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x1CCA5DDD0](v27);
    }

    else
    {
      if (v27 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v29 = *(v28 + 8 * v27 + 32);
    }

    v30 = v29;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_41;
    }

    if ([v29 isVideo])
    {
      sub_1C755192C();
      v1 = *(v0[79] + 16);
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
    }

    else
    {
    }

    ++v27;
  }

  v31 = v0[79];
  v0[121] = v31;

  sub_1C6FD242C(v32);
  v0[122] = v31;
  OUTLINED_FUNCTION_51_31();
  OUTLINED_FUNCTION_52_32();
  OUTLINED_FUNCTION_77_18();
  if (v1)
  {
    OUTLINED_FUNCTION_34_47();
    sub_1C6FC061C((v0 + 15), (v0 + 28));
    sub_1C754F2BC();
    type metadata accessor for FreeformStoryGenerator();
    OUTLINED_FUNCTION_56_33();
    v33 = OUTLINED_FUNCTION_50_35();
    v2(v33);
    v34 = swift_task_alloc();
    v0[123] = v34;
    *v34 = v0;
    OUTLINED_FUNCTION_15_85(v34);

    return static FreeformStoryGenerator.findBestHighlightsForChapter(chapter:curatedAssets:characterUUIDs:storyGenerationCache:progressReporter:)();
  }

  else
  {
    OUTLINED_FUNCTION_40_51();
    sub_1C754F2BC();
    type metadata accessor for AssetMediaAnalyzer();
    v36 = OUTLINED_FUNCTION_7_103();
    (selRef_clsSceneClassifications)(v36);
    v37 = swift_task_alloc();
    v0[126] = v37;
    *v37 = v0;
    OUTLINED_FUNCTION_23_56(v37);
    v39 = MEMORY[0x1E69E7CC0];
    v40 = MEMORY[0x1E69E7CC0];

    return static AssetMediaAnalyzer.requestHighlightInformation(for:queries:characterUUIDs:progressReporter:)(v31, v39, v40, v38);
  }
}

uint64_t sub_1C74B37A4()
{
  v1 = v0[108];
  v2 = v0[105];
  v3 = v0[96];
  v9 = v0[95];
  v4 = v0[93];
  v5 = v0[92];
  v6 = *(v0[106] + 8);
  v6(v0[107], v2);
  sub_1C7030CDC((v0 + 2), &qword_1EC217EF8);
  __swift_destroy_boxed_opaque_existential_1((v0 + 65));
  OUTLINED_FUNCTION_70(v5, v5[3]);
  sub_1C754F1AC();
  v6(v1, v2);
  (*(v3 + 8))(v4, v9);
  OUTLINED_FUNCTION_1_145();

  OUTLINED_FUNCTION_43();

  return v7();
}

uint64_t sub_1C74B3928()
{
  v75 = v0;
  if (qword_1EDD09ED8 != -1)
  {
    OUTLINED_FUNCTION_0_201();
    swift_once();
  }

  v1 = v0[127];
  v2 = sub_1C754FF1C();
  __swift_project_value_buffer(v2, qword_1EDD09EE0);

  v3 = v1;
  v4 = sub_1C754FEEC();
  v5 = sub_1C755119C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[127];
    v7 = OUTLINED_FUNCTION_23_1();
    v8 = swift_slowAlloc();
    *v7 = 134218242;
    *(v7 + 4) = sub_1C6FB6304();

    *(v7 + 12) = 2112;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1C6F5C000, v4, v5, "Error getting video highlight captions for %ld video assets: %@", v7, 0x16u);
    sub_1C7030CDC(v8, &qword_1EC215190);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  v11 = v0[127];
  v12 = sub_1C75504DC();

  v0[80] = v12;
  v13 = v0[110];
  __swift_project_boxed_opaque_existential_1(v0 + 65, v0[68]);
  OUTLINED_FUNCTION_138();
  sub_1C754F1AC();
  OUTLINED_FUNCTION_37_42();
  *(swift_task_alloc() + 16) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C580);
  OUTLINED_FUNCTION_5_105();
  OUTLINED_FUNCTION_43_40();
  sub_1C754F1DC();

  v14 = v0[81];
  v0[129] = v14;
  sub_1C754F2DC();
  v15 = v0[122];
  v72 = v2;
  v65 = v14;
  __swift_project_boxed_opaque_existential_1(v0 + 65, v0[68]);
  *(swift_task_alloc() + 16) = v15;
  OUTLINED_FUNCTION_6_114();
  sub_1C754F1DC();

  v16 = v0[82];
  v0[130] = v16;
  sub_1C754F2DC();
  v17 = v0[121];
  v18 = v0[112];
  v66 = v0[110];
  v67 = v0[119];
  v19 = MEMORY[0x1E69E7CC8];
  v0[83] = MEMORY[0x1E69E7CC8];
  v0[84] = MEMORY[0x1E69E7CC0];
  v0[85] = 0;
  v0[86] = 0;
  v0[87] = 0;
  v0[88] = v19;
  LOBYTE(v73) = 0;
  v20 = v65;
  static AssetCaptionDataSource.updatePlayableAssetsStillAndMovieCaptions(for:assetsMediaType:stillDescriptionByAssetLocalIdentifier:movieDescriptionByAssetLocalIdentifier:playableAssetCaptionOptionsByAssetUUID:)(v18, &v73, v65, v16, v0 + 88);
  LOBYTE(v73) = 1;
  static AssetCaptionDataSource.updatePlayableAssetsStillAndMovieCaptions(for:assetsMediaType:stillDescriptionByAssetLocalIdentifier:movieDescriptionByAssetLocalIdentifier:playableAssetCaptionOptionsByAssetUUID:)(v17, &v73, v65, v16, v0 + 88);
  OUTLINED_FUNCTION_51_31();
  v21 = swift_task_alloc();
  v21[2] = v66;
  v21[3] = v0 + 80;
  v21[4] = v0 + 85;
  v21[5] = v0 + 83;
  v21[6] = v0 + 88;
  v21[7] = v16;
  v21[8] = v0 + 86;
  v21[9] = v67;
  v21[10] = v65;
  v21[11] = v0 + 87;
  v21[12] = v0 + 84;
  OUTLINED_FUNCTION_4_109();
  sub_1C754F1DC();

  if (v0[3])
  {
    v22 = v0[94];
    v23 = v0[4];
    v20 = v0[5];
    if (sub_1C75507FC() < 1)
    {
      if (v22)
      {
        v26 = OUTLINED_FUNCTION_21_64();
        sub_1C716A8F4(v26);
      }
    }

    else if (v22)
    {
      v16 = v0[94];
      v73 = 0;
      v74 = 0xE000000000000000;
      sub_1C755180C();

      OUTLINED_FUNCTION_30_51();
      v73 = v25;
      v74 = v24;
      MEMORY[0x1CCA5CD70](v23, v20);
      OUTLINED_FUNCTION_59_29();
      sub_1C716A8F4(v73);
    }
  }

  if (qword_1EDD09ED8 != -1)
  {
    OUTLINED_FUNCTION_0_201();
    swift_once();
  }

  v27 = v0[89];
  __swift_project_value_buffer(v72, qword_1EDD09EE0);
  v28 = v27;
  v29 = sub_1C754FEEC();
  v30 = sub_1C75511BC();
  if (os_log_type_enabled(v29, v30))
  {
    v16 = v0[89];
    v20 = swift_slowAlloc();
    *v20 = 134218752;
    *(v20 + 4) = [v16 count];

    *(v20 + 12) = 2048;
    OUTLINED_FUNCTION_5();
    *(v20 + 14) = v0[85];
    *(v20 + 22) = 2048;
    OUTLINED_FUNCTION_5();
    *(v20 + 24) = v0[86];
    *(v20 + 32) = 2048;
    OUTLINED_FUNCTION_5();
    *(v20 + 34) = v0[87];
    _os_log_impl(&dword_1C6F5C000, v29, v30, "Out of %ld assets in chapter, using %ld video highlight captions, %ld video captions, and %ld still captions.", v20, 0x2Au);
    OUTLINED_FUNCTION_109();
  }

  else
  {

    v29 = v0[89];
  }

  sub_1C754F2DC();
  if (OUTLINED_FUNCTION_57_32() < 1)
  {
    v43 = OUTLINED_FUNCTION_26_51();
    v68 = v44;
    v69 = v45;
    v46 = v0[96];
    v71 = v0[95];
    v70 = v0[93];
    v47 = v16[1];
    v47(v43);

    __swift_destroy_boxed_opaque_existential_1((v0 + 65));
    OUTLINED_FUNCTION_13_94();
    OUTLINED_FUNCTION_60_27();
    (v47)(v69, v68);
    (*(v46 + 8))(v70, v71);
    goto LABEL_29;
  }

  if (![objc_opt_self() enableOnDemandCaptionGeneration])
  {
    OUTLINED_FUNCTION_38_41();

    v48 = v0 + 87;
    v49 = sub_1C754FEEC();
    sub_1C755119C();
    OUTLINED_FUNCTION_16_1();
    v51 = os_log_type_enabled(v49, v50);
    v52 = v0[89];
    if (v51)
    {
      v53 = OUTLINED_FUNCTION_23_1();
      *(OUTLINED_FUNCTION_69_27(v53, 3.8521e-34) + 12) = 2048;
      *(v53 + 14) = [v52 count];

      OUTLINED_FUNCTION_91();
      _os_log_impl(v54, v55, v56, v57, v58, 0x16u);
      OUTLINED_FUNCTION_37();
    }

    else
    {
    }

    sub_1C754F2EC();
    v59 = OUTLINED_FUNCTION_31_48();
    v65(v59);

    __swift_destroy_boxed_opaque_existential_1((v0 + 65));
    v60 = OUTLINED_FUNCTION_43_2();
    __swift_project_boxed_opaque_existential_1(v60, v61);
    OUTLINED_FUNCTION_7_103();
    sub_1C754F1AC();
    v62 = OUTLINED_FUNCTION_455();
    v65(v62);
LABEL_29:
    OUTLINED_FUNCTION_1_145();

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_38_4();

    __asm { BRAA            X2, X16 }
  }

  v31 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_16_1();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_69_27(v33, 3.852e-34);
    OUTLINED_FUNCTION_75_21(&dword_1C6F5C000, v34, v35, "Requesting on demand captions for %ld assets.");
    OUTLINED_FUNCTION_37();
  }

  OUTLINED_FUNCTION_19_79();

  OUTLINED_FUNCTION_58_32();
  v36 = OUTLINED_FUNCTION_41_3();
  (v20)(v36);
  v37 = swift_task_alloc();
  v0[132] = v37;
  *v37 = v0;
  OUTLINED_FUNCTION_3_124(v37);
  OUTLINED_FUNCTION_38_4();

  return static AssetCaptionGenerator.assetCaptionByLocalIdentifier(for:eventRecorder:progressReporter:)(v38, v39, v40);
}

uint64_t sub_1C74B45BC()
{
  v1 = v0[108];
  v2 = v0[105];
  v3 = v0[96];
  v8 = v0[93];
  v9 = v0[95];
  v4 = v0[92];
  v5 = *(v0[106] + 8);
  v5(v0[107], v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + 65));
  OUTLINED_FUNCTION_70(v4, v4[3]);
  sub_1C754F1AC();
  v5(v1, v2);
  (*(v3 + 8))(v8, v9);
  OUTLINED_FUNCTION_1_145();

  OUTLINED_FUNCTION_43();

  return v6();
}

uint64_t AssetCaptionDataSource.init(storyPhotoLibraryContext:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  return result;
}

uint64_t AssetCaptionDataSource.captions(for:characterUUIDs:chapter:eventRecorder:progressReporter:diagnosticContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 152) = a5;
  *(v7 + 160) = a6;
  *(v7 + 136) = a3;
  *(v7 + 144) = a4;
  *(v7 + 120) = a1;
  *(v7 + 128) = a2;
  v8 = *v6;
  *(v7 + 224) = *(v6 + 4);
  v9 = v6[2];
  *(v7 + 168) = v8;
  *(v7 + 176) = v9;
  return MEMORY[0x1EEE6DFA0](sub_1C74B47A0, 0, 0);
}

void sub_1C74B47A0()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 120);
  v3 = *(v0 + 168);

  v4 = [v3 librarySpecificFetchOptions];
  *(v0 + 184) = v4;
  [v4 setSharingFilter_];

  v5 = objc_opt_self();
  v6 = v4;
  v7 = sub_1C6FCA158(v2, v4, v5);
  *(v0 + 192) = v7;

  if (v7)
  {
    memcpy((v0 + 16), *(v0 + 136), 0x68uLL);
    v8 = swift_task_alloc();
    *(v0 + 200) = v8;
    *v8 = v0;
    v8[1] = sub_1C74B48F8;
    v9 = *(v0 + 176);
    v10 = *(v0 + 152);
    v11 = *(v0 + 160);
    v12 = *(v0 + 144);
    v13 = *(v0 + 128);

    sub_1C74B075C(v7, v13, (v0 + 16), v9, v12, v10, v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C74B48F8()
{
  OUTLINED_FUNCTION_39_0();
  v4 = v3;
  OUTLINED_FUNCTION_6_4();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  *(v4 + 208) = v0;

  if (!v0)
  {
    *(v4 + 216) = v1;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C74B4A00()
{
  v1 = *(v0 + 192);

  OUTLINED_FUNCTION_116();
  v3 = *(v0 + 216);

  return v2(v3);
}

uint64_t sub_1C74B4A68()
{
  v1 = *(v0 + 192);

  OUTLINED_FUNCTION_43();

  return v2();
}

PhotosIntelligence::CaptionType_optional __swiftcall CaptionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CaptionType.rawValue.getter()
{
  v1 = 0x6569766F6DLL;
  if (*v0 != 1)
  {
    v1 = 0x6867696C68676968;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6C697473;
  }
}

uint64_t sub_1C74B4BA4@<X0>(uint64_t *a1@<X8>)
{
  result = CaptionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

PhotosIntelligence::PlayableAssetMediaType_optional __swiftcall PlayableAssetMediaType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t PlayableAssetMediaType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6F65646976;
  }

  else
  {
    return 0x746F68506576696CLL;
  }
}

uint64_t sub_1C74B4D58@<X0>(uint64_t *a1@<X8>)
{
  result = PlayableAssetMediaType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t PlayableAssetCaptionOptions.stillCaption.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

uint64_t PlayableAssetCaptionOptions.stillCaption.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PlayableAssetCaptionOptions.movieCaption.getter()
{
  v1 = *(v0 + 16);
  sub_1C75504FC();
  return v1;
}

uint64_t PlayableAssetCaptionOptions.movieCaption.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PlayableAssetCaptionOptions.highlightCaption.getter()
{
  v1 = *(v0 + 32);
  sub_1C75504FC();
  return v1;
}

uint64_t PlayableAssetCaptionOptions.highlightCaption.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall PlayableAssetCaptionOptions.init(assetMediaType:stillCaption:movieCaption:highlightCaption:typeUsed:)(PhotosIntelligence::PlayableAssetCaptionOptions *__return_ptr retstr, PhotosIntelligence::PlayableAssetMediaType assetMediaType, Swift::String stillCaption, Swift::String movieCaption, Swift::String highlightCaption, PhotosIntelligence::CaptionType typeUsed)
{
  v6 = *typeUsed;
  retstr->assetMediaType = *assetMediaType;
  retstr->stillCaption = stillCaption;
  retstr->movieCaption = movieCaption;
  retstr->highlightCaption = highlightCaption;
  retstr->typeUsed = v6;
}

uint64_t sub_1C74B5058(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7061436C6C697473 && a2 == 0xEC0000006E6F6974;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7061436569766F6DLL && a2 == 0xEC0000006E6F6974;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001C75B2360 == a2;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6465735565707974 && a2 == 0xE800000000000000;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x64654D7465737361 && a2 == 0xEE00657079546169)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C7551DBC();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C74B5214(char a1)
{
  result = 0x7061436C6C697473;
  switch(a1)
  {
    case 1:
      result = 0x7061436569766F6DLL;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6465735565707974;
      break;
    case 4:
      result = 0x64654D7465737361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C74B52CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C74B5058(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C74B52F4(uint64_t a1)
{
  v2 = sub_1C74B6C04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C74B5330(uint64_t a1)
{
  v2 = sub_1C74B6C04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PlayableAssetCaptionOptions.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C510);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = *(v1 + 16);
  v19 = *(v1 + 24);
  v20 = v9;
  v10 = *(v1 + 32);
  v17 = *(v1 + 40);
  v18 = v10;
  LODWORD(v10) = *(v1 + 48);
  v15 = *(v1 + 49);
  v16 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C74B6C04();
  sub_1C755200C();
  v28 = 0;
  v11 = v21;
  sub_1C7551CCC();
  if (!v11)
  {
    v12 = v15;
    v13 = v16;
    v27 = 1;
    OUTLINED_FUNCTION_97();
    sub_1C7551CCC();
    v26 = 2;
    OUTLINED_FUNCTION_97();
    sub_1C7551CCC();
    v25 = v13;
    v24 = 3;
    sub_1C74B6C58();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    v23 = v12;
    v22 = 4;
    sub_1C74B6CAC();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t PlayableAssetCaptionOptions.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C530);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_457();
  __swift_project_boxed_opaque_existential_1(v6, v7);
  sub_1C74B6C04();
  sub_1C7551FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_49_36();
  v8 = sub_1C7551BBC();
  v22 = v9;
  OUTLINED_FUNCTION_49_36();
  v10 = sub_1C7551BBC();
  v21 = v11;
  v19 = v10;
  LOBYTE(v27[0]) = 2;
  OUTLINED_FUNCTION_49_36();
  v18 = sub_1C7551BBC();
  v20 = v12;
  sub_1C74B6D00();
  OUTLINED_FUNCTION_76_24();
  v30 = 2;
  v31 = 4;
  sub_1C74B6D54();
  OUTLINED_FUNCTION_76_24();
  v13 = OUTLINED_FUNCTION_2_10();
  v14(v13);
  v17 = v32;
  *&v23 = v8;
  *(&v23 + 1) = v22;
  *&v24 = v19;
  *(&v24 + 1) = v21;
  *&v25 = v18;
  *(&v25 + 1) = v20;
  LOBYTE(v26) = 2;
  HIBYTE(v26) = v32;
  v15 = v24;
  *a2 = v23;
  *(a2 + 16) = v15;
  *(a2 + 32) = v25;
  *(a2 + 48) = v26;
  sub_1C74B6DA8(&v23, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v27[0] = v8;
  v27[1] = v22;
  v27[2] = v19;
  v27[3] = v21;
  v27[4] = v18;
  v27[5] = v20;
  v28 = v30;
  v29 = v17;
  return sub_1C74B6DE0(v27);
}

uint64_t sub_1C74B58F0()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD09EE0);
  __swift_project_value_buffer(v0, qword_1EDD09EE0);
  return sub_1C754FEFC();
}

uint64_t static AssetCaptionDataSource.updatePlayableAssetsStillAndMovieCaptions(for:assetsMediaType:stillDescriptionByAssetLocalIdentifier:movieDescriptionByAssetLocalIdentifier:playableAssetCaptionOptionsByAssetUUID:)(unint64_t a1, char *a2, uint64_t isUniquelyReferenced_nonNull_native, unint64_t a4, void *a5)
{
  v8 = a1;
  v75 = *a2;
  if (a1 >> 62)
  {
LABEL_41:
    result = sub_1C75516BC();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v10 = 0;
  v71 = v8 & 0xC000000000000001;
  v66 = v8 & 0xFFFFFFFFFFFFFF8;
  v67 = isUniquelyReferenced_nonNull_native;
  v68 = a4;
  v69 = result;
  v70 = v8;
  while (1)
  {
    if (v71)
    {
      v11 = MEMORY[0x1CCA5DDD0](v10, v8);
    }

    else
    {
      if (v10 >= *(v66 + 16))
      {
        goto LABEL_39;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v12 = v11;
    v8 = [v12 localIdentifier];
    v13 = sub_1C755068C();
    v15 = v14;

    v77 = sub_1C6FCA214(v12);
    v78 = v16;
    if (!v16)
    {
      break;
    }

    v73 = v10 + 1;
    if (*(isUniquelyReferenced_nonNull_native + 16) && (v17 = sub_1C6F78124(v13, v15), (v18 & 1) != 0))
    {
      v8 = *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v17);
      v19 = [v8 descriptionText];
      v20 = sub_1C755068C();
      v76 = v21;
    }

    else
    {
      v20 = 0;
      v76 = 0xE000000000000000;
    }

    v74 = v12;
    v72 = v10;
    if (*(a4 + 16))
    {
      v8 = sub_1C6F78124(v13, v15);
      v23 = v22;

      if (v23)
      {
        v8 = *(*(a4 + 56) + 8 * v8);
        v24 = [v8 descriptionText];
        v25 = sub_1C755068C();
        a4 = v26;

        v27 = 1;
        goto LABEL_24;
      }
    }

    else
    {
    }

    v25 = 0;
    v27 = 0;
    a4 = 0xE000000000000000;
LABEL_24:
    v39 = v20;
    *&v84 = v20;
    *(&v84 + 1) = v76;
    v40 = v25;
    *&v85 = v25;
    *(&v85 + 1) = a4;
    v41 = a4;
    *&v86 = 0;
    *(&v86 + 1) = 0xE000000000000000;
    v42 = v27;
    LOBYTE(v87) = v27;
    HIBYTE(v87) = v75;
    sub_1C74B6DA8(&v84, &v80);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = a5;
    v79 = *a5;
    sub_1C6F78124(v77, v78);
    OUTLINED_FUNCTION_68_25();
    if (v46)
    {
      goto LABEL_38;
    }

    v8 = v44;
    a5 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215218);
    if (sub_1C7551A2C())
    {
      v47 = sub_1C6F78124(v77, v78);
      isUniquelyReferenced_nonNull_native = v67;
      a4 = v68;
      if ((a5 & 1) != (v48 & 1))
      {
        goto LABEL_44;
      }

      v8 = v47;
      if ((a5 & 1) == 0)
      {
LABEL_28:
        v49 = v79;
        OUTLINED_FUNCTION_2_27(v79 + 8 * (v8 >> 6));
        v51 = (v50 + 16 * v8);
        *v51 = v77;
        v51[1] = v78;
        v52 = *(v79 + 56) + 56 * v8;
        v53 = v87;
        v55 = v85;
        v54 = v86;
        *v52 = v84;
        *(v52 + 16) = v55;
        *(v52 + 32) = v54;
        *(v52 + 48) = v53;
        v56 = *(v79 + 16);
        v46 = __OFADD__(v56, 1);
        v57 = v56 + 1;
        if (v46)
        {
          goto LABEL_40;
        }

        *(v79 + 16) = v57;

        goto LABEL_32;
      }
    }

    else
    {
      isUniquelyReferenced_nonNull_native = v67;
      a4 = v68;
      if ((a5 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v49 = v79;
    v58 = *(v79 + 56) + 56 * v8;
    v60 = *(v58 + 16);
    v59 = *(v58 + 32);
    v61 = *v58;
    v83 = *(v58 + 48);
    v81 = v60;
    v82 = v59;
    v80 = v61;
    v62 = v84;
    v63 = v85;
    v64 = v86;
    *(v58 + 48) = v87;
    *(v58 + 16) = v63;
    *(v58 + 32) = v64;
    *v58 = v62;
    sub_1C74B6DE0(&v80);

LABEL_32:
    a5 = v43;
    *v43 = v49;
    *&v80 = v39;
    *(&v80 + 1) = v76;
    *&v81 = v40;
    *(&v81 + 1) = v41;
    *&v82 = 0;
    *(&v82 + 1) = 0xE000000000000000;
    LOBYTE(v83) = v42;
    HIBYTE(v83) = v75;
    result = sub_1C74B6DE0(&v80);
    v65 = v69;
    v8 = v70;
    v10 = v72;
    v28 = v73;
LABEL_35:
    ++v10;
    if (v28 == v65)
    {
      return result;
    }
  }

  v28 = v10 + 1;

  if (qword_1EDD09ED8 != -1)
  {
    OUTLINED_FUNCTION_0_201();
    swift_once();
  }

  v29 = sub_1C754FF1C();
  __swift_project_value_buffer(v29, qword_1EDD09EE0);
  v30 = v12;
  v31 = sub_1C754FEEC();
  v32 = sub_1C75511BC();
  if (!os_log_type_enabled(v31, v32))
  {

    goto LABEL_34;
  }

  v33 = OUTLINED_FUNCTION_41_0();
  v34 = swift_slowAlloc();
  *&v84 = v34;
  *v33 = 136315138;
  v35 = sub_1C70CAC04(v30);
  v37 = v36;

  if (v37)
  {
    v38 = sub_1C6F765A4(v35, v37, &v84);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_1C6F5C000, v31, v32, "Cannot find assetUUID for asset %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_109();

    isUniquelyReferenced_nonNull_native = v67;
    a4 = v68;
LABEL_34:
    v8 = v70;
    *&v84 = 0;
    *(&v84 + 1) = 0xE000000000000000;
    *&v85 = 0;
    *(&v85 + 1) = 0xE000000000000000;
    *&v86 = 0;
    *(&v86 + 1) = 0xE000000000000000;
    LOBYTE(v87) = 0;
    HIBYTE(v87) = v75;
    result = sub_1C74B6DE0(&v84);
    v65 = v69;
    goto LABEL_35;
  }

  __break(1u);
LABEL_44:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

void static AssetCaptionDataSource.updateVideoAssetHighlightCaption(for:with:captionByAssetUUID:playableAssetCaptionOptionsByAssetUUID:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t *a6)
{
  sub_1C75504FC();
  swift_isUniquelyReferenced_nonNull_native();
  *&v34[0] = *a5;
  sub_1C6FC80A4();
  *a5 = *&v34[0];
  if (qword_1EDD09ED8 != -1)
  {
    OUTLINED_FUNCTION_0_201();
    swift_once();
  }

  v12 = sub_1C754FF1C();
  __swift_project_value_buffer(v12, qword_1EDD09EE0);
  sub_1C75504FC();
  sub_1C75504FC();
  v13 = sub_1C754FEEC();
  v14 = sub_1C755118C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_23_1();
    *&v34[0] = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_1C6F765A4(a1, a2, v34);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1C6F765A4(a3, a4, v34);
    _os_log_impl(&dword_1C6F5C000, v13, v14, "Using highlight caption for video asset: %s. Using: %s. ", v15, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v16 = *a6;
  if (*(*a6 + 16))
  {
    v17 = sub_1C6F78124(a1, a2);
    if (v18)
    {
      v19 = *(v16 + 56) + 56 * v17;
      v20 = *v19;
      v21 = *(v19 + 48);
      v22 = *(v19 + 32);
      v25[1] = *(v19 + 16);
      v25[2] = v22;
      v26 = v21;
      v25[0] = v20;
      v23 = *(v19 + 16);
      v32 = *v19;
      v33 = v23;
      v24 = HIBYTE(v21);
      sub_1C75504FC();
      sub_1C74B6DA8(v25, v34);

      v34[0] = v32;
      v34[1] = v33;
      v35 = a3;
      v36 = a4;
      v37 = 2;
      v38 = v24;
      sub_1C75504FC();
      sub_1C74B6DA8(v34, v27);
      swift_isUniquelyReferenced_nonNull_native();
      *&v27[0] = *a6;
      sub_1C6FC8440();

      *a6 = *&v27[0];
      v27[0] = v32;
      v27[1] = v33;
      v28 = a3;
      v29 = a4;
      v30 = 2;
      v31 = v24;
      sub_1C74B6DE0(v27);
    }
  }
}

void sub_1C74B6178(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = objc_opt_self();
  sub_1C6F65BE8(0, &qword_1EDD0FA70);
  v5 = sub_1C7550B3C();
  v6 = [v4 fetchGeneratedAssetDescriptionsGroupedByAssetLocalIdentifierWithType:a1 forAssets:v5];

  sub_1C6F65BE8(0, &unk_1EDD068E0);
  v7 = sub_1C75504AC();

  *a2 = v7;
}

void sub_1C74B6258(unint64_t a1, uint64_t *a2, void *a3, uint64_t *a4, uint64_t *a5, uint64_t isUniquelyReferenced_nonNull_native, void *a7, uint64_t a8, uint64_t a9, void *a10, void *a11)
{
  v12 = a1;
  if (a1 >> 62)
  {
LABEL_72:
    v13 = sub_1C75516BC();
    if (!v13)
    {
      return;
    }
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      return;
    }
  }

  v14 = 0;
  v97 = v12 & 0xC000000000000001;
  v91 = v12 & 0xFFFFFFFFFFFFFF8;
  v95 = isUniquelyReferenced_nonNull_native;
  v98 = v12;
  v96 = v13;
  while (1)
  {
    if (v97)
    {
      v15 = MEMORY[0x1CCA5DDD0](v14, v12);
    }

    else
    {
      if (v14 >= *(v91 + 16))
      {
        goto LABEL_64;
      }

      v15 = *(v12 + 8 * v14 + 32);
    }

    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
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
      __break(1u);
      goto LABEL_72;
    }

    v17 = v15;
    v18 = [v17 localIdentifier];
    v101 = sub_1C755068C();
    v20 = v19;

    v21 = sub_1C6FCA214(v17);
    if (!v22)
    {
      break;
    }

    v23 = v22;
    v24 = *a2;
    v99 = v21;
    v100 = v17;
    if (*(*a2 + 16) && (v25 = sub_1C6F78124(v21, v22), (v26 & 1) != 0))
    {
      v27 = (*(v24 + 56) + 40 * v25);
      v28 = *(v27 + 1);
      isUniquelyReferenced_nonNull_native = *(v27 + 2);
      v12 = *(v27 + 4);
      v29 = *v27;
      v30 = v27[1] << 32;
      sub_1C75504FC();
      sub_1C75504FC();
      if (isUniquelyReferenced_nonNull_native)
      {

        sub_1C75504FC();
        sub_1C74B74CC(v30 | v29, v28, isUniquelyReferenced_nonNull_native);
        if (__OFADD__(*a3, 1))
        {
          goto LABEL_67;
        }

        ++*a3;
        static AssetCaptionDataSource.updateVideoAssetHighlightCaption(for:with:captionByAssetUUID:playableAssetCaptionOptionsByAssetUUID:)(v99, v23, v28, isUniquelyReferenced_nonNull_native, a4, a5);

        isUniquelyReferenced_nonNull_native = v95;
        v12 = v98;
LABEL_59:
        v13 = v96;
        v16 = v14 + 1;
        goto LABEL_60;
      }

      isUniquelyReferenced_nonNull_native = v95;
    }

    else
    {
      v30 = 0;
      v29 = 0;
      v28 = 0;
    }

    sub_1C74B74CC(v29 | v30, v28, 0);
    if (!*(isUniquelyReferenced_nonNull_native + 16) || (v31 = sub_1C6F78124(v101, v20), (v32 & 1) == 0))
    {
      isUniquelyReferenced_nonNull_native = v98;
      v13 = v96;
      if (!*(a9 + 16))
      {

LABEL_38:

        v64 = v100;
        MEMORY[0x1CCA5D040]();
        if (*((*a11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C7550B9C();
        }

        sub_1C7550BEC();

        v16 = v14 + 1;
        v12 = v98;
        isUniquelyReferenced_nonNull_native = v95;
        goto LABEL_60;
      }

      v51 = sub_1C6F78124(v101, v20);
      v53 = v52;

      if ((v53 & 1) == 0)
      {
        goto LABEL_38;
      }

      v12 = [*(*(a9 + 56) + 8 * v51) descriptionText];
      v54 = sub_1C755068C();
      v56 = v55;

      if (__OFADD__(*a10, 1))
      {
        goto LABEL_68;
      }

      ++*a10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v102 = *a4;
      v12 = v102;
      *a4 = 0x8000000000000000;
      v57 = sub_1C6F78124(v99, v23);
      if (__OFADD__(*(v12 + 16), (v58 & 1) == 0))
      {
        goto LABEL_69;
      }

      v59 = v57;
      v60 = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215328);
      if (sub_1C7551A2C())
      {
        v61 = sub_1C6F78124(v99, v23);
        v12 = v98;
        v63 = v100;
        if ((v60 & 1) != (v62 & 1))
        {
          goto LABEL_75;
        }

        v59 = v61;
      }

      else
      {
        v12 = v98;
        v63 = v100;
      }

      isUniquelyReferenced_nonNull_native = v102;
      if (v60)
      {
        v81 = (v102[7] + 16 * v59);
        *v81 = v54;
        v81[1] = v56;
      }

      else
      {
        v102[(v59 >> 6) + 8] |= 1 << v59;
        v82 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v59);
        *v82 = v99;
        v82[1] = v23;
        v83 = (*(isUniquelyReferenced_nonNull_native + 56) + 16 * v59);
        *v83 = v54;
        v83[1] = v56;
        v84 = *(isUniquelyReferenced_nonNull_native + 16);
        v70 = __OFADD__(v84, 1);
        v85 = v84 + 1;
        if (v70)
        {
          goto LABEL_71;
        }

        *(isUniquelyReferenced_nonNull_native + 16) = v85;
      }

      *a4 = isUniquelyReferenced_nonNull_native;

      isUniquelyReferenced_nonNull_native = v95;
      goto LABEL_59;
    }

    v33 = [*(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v31) descriptionText];
    v90 = sub_1C755068C();
    v12 = v34;

    if (__OFADD__(*a7, 1))
    {
      goto LABEL_65;
    }

    ++*a7;
    v92 = v12;
    sub_1C75504FC();
    swift_isUniquelyReferenced_nonNull_native();
    v102 = *a4;
    v12 = v102;
    *a4 = 0x8000000000000000;
    v35 = sub_1C6F78124(v99, v23);
    if (__OFADD__(*(v12 + 16), (v36 & 1) == 0))
    {
      goto LABEL_66;
    }

    v37 = v35;
    isUniquelyReferenced_nonNull_native = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215328);
    if (sub_1C7551A2C())
    {
      v38 = sub_1C6F78124(v99, v23);
      v12 = v98;
      v16 = v14 + 1;
      v40 = v100;
      if ((isUniquelyReferenced_nonNull_native & 1) != (v39 & 1))
      {
        goto LABEL_75;
      }

      v37 = v38;
    }

    else
    {
      v12 = v98;
      v16 = v14 + 1;
      v40 = v100;
    }

    v65 = v102;
    if (isUniquelyReferenced_nonNull_native)
    {
      v66 = (v102[7] + 16 * v37);
      *v66 = v90;
      v66[1] = v92;
    }

    else
    {
      v102[(v37 >> 6) + 8] |= 1 << v37;
      v67 = (v65[6] + 16 * v37);
      *v67 = v99;
      v67[1] = v23;
      v68 = (v65[7] + 16 * v37);
      *v68 = v90;
      v68[1] = v92;
      v69 = v65[2];
      v70 = __OFADD__(v69, 1);
      v71 = v69 + 1;
      if (v70)
      {
        goto LABEL_70;
      }

      v65[2] = v71;
      sub_1C75504FC();
    }

    *a4 = v65;

    v72 = sub_1C7009C30(v101, v20, a8);

    isUniquelyReferenced_nonNull_native = v95;
    v13 = v96;
    if ((v72 & 1) == 0)
    {

      goto LABEL_60;
    }

    if (qword_1EDD09ED8 != -1)
    {
      swift_once();
    }

    v73 = sub_1C754FF1C();
    __swift_project_value_buffer(v73, qword_1EDD09EE0);
    sub_1C75504FC();
    sub_1C75504FC();
    v74 = sub_1C754FEEC();
    v75 = sub_1C755118C();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v102 = v77;
      *v76 = 136315394;
      v78 = sub_1C6F765A4(v99, v23, &v102);

      *(v76 + 4) = v78;
      v13 = v96;
      *(v76 + 12) = 2080;
      v79 = sub_1C6F765A4(v90, v92, &v102);

      *(v76 + 14) = v79;
      _os_log_impl(&dword_1C6F5C000, v74, v75, "Video caption preferred for LP with asset UUID: %s. Using: %s.", v76, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v77, -1, -1);
      v80 = v76;
      v16 = v14 + 1;
      MEMORY[0x1CCA5F8E0](v80, -1, -1);
    }

    else
    {
    }

LABEL_36:
    v12 = v98;
LABEL_60:
    ++v14;
    if (v16 == v13)
    {
      return;
    }
  }

  if (qword_1EDD09ED8 != -1)
  {
    swift_once();
  }

  v41 = sub_1C754FF1C();
  __swift_project_value_buffer(v41, qword_1EDD09EE0);
  v42 = v17;
  v43 = sub_1C754FEEC();
  v44 = sub_1C75511BC();
  if (!os_log_type_enabled(v43, v44))
  {

    goto LABEL_36;
  }

  v45 = swift_slowAlloc();
  v46 = swift_slowAlloc();
  v102 = v46;
  *v45 = 136315138;
  v47 = sub_1C70CAC04(v42);
  v49 = v48;

  if (v49)
  {
    v50 = sub_1C6F765A4(v47, v49, &v102);

    *(v45 + 4) = v50;
    _os_log_impl(&dword_1C6F5C000, v43, v44, "Cannot find assetUUID for asset %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x1CCA5F8E0](v46, -1, -1);
    MEMORY[0x1CCA5F8E0](v45, -1, -1);

    isUniquelyReferenced_nonNull_native = v95;
    v13 = v96;
    v16 = v14 + 1;
    goto LABEL_36;
  }

  __break(1u);
LABEL_75:
  sub_1C7551E4C();
  __break(1u);
}

unint64_t sub_1C74B6C04()
{
  result = qword_1EC21C518;
  if (!qword_1EC21C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C518);
  }

  return result;
}

unint64_t sub_1C74B6C58()
{
  result = qword_1EC21C520;
  if (!qword_1EC21C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C520);
  }

  return result;
}

unint64_t sub_1C74B6CAC()
{
  result = qword_1EC21C528;
  if (!qword_1EC21C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C528);
  }

  return result;
}

unint64_t sub_1C74B6D00()
{
  result = qword_1EC21C538;
  if (!qword_1EC21C538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C538);
  }

  return result;
}

unint64_t sub_1C74B6D54()
{
  result = qword_1EC21C540;
  if (!qword_1EC21C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C540);
  }

  return result;
}

unint64_t sub_1C74B6E14()
{
  result = qword_1EC21C548;
  if (!qword_1EC21C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C548);
  }

  return result;
}

unint64_t sub_1C74B6E6C()
{
  result = qword_1EC21C550;
  if (!qword_1EC21C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C550);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CaptionType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlayableAssetMediaType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C74B7094(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 50))
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

uint64_t sub_1C74B70D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlayableAssetCaptionOptions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}