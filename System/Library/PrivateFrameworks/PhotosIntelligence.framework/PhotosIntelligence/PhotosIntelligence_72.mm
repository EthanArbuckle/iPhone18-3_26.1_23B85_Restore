unint64_t sub_1C74B7224()
{
  result = qword_1EC21C558;
  if (!qword_1EC21C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C558);
  }

  return result;
}

unint64_t sub_1C74B727C()
{
  result = qword_1EC21C560;
  if (!qword_1EC21C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C560);
  }

  return result;
}

unint64_t sub_1C74B72D4()
{
  result = qword_1EC21C568;
  if (!qword_1EC21C568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C568);
  }

  return result;
}

unint64_t sub_1C74B7328()
{
  result = qword_1EC21C570;
  if (!qword_1EC21C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C570);
  }

  return result;
}

unint64_t sub_1C74B737C()
{
  result = qword_1EC21C578;
  if (!qword_1EC21C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C578);
  }

  return result;
}

uint64_t sub_1C74B7450(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C755065C();
  v5 = [a3 uuidFromLocalIdentifier_];

  if (v5)
  {
    sub_1C755068C();
  }

  return OUTLINED_FUNCTION_43_2();
}

uint64_t sub_1C74B74CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

void *OUTLINED_FUNCTION_56_33()
{
  v0[41] = v1;
  v0[42] = v2;

  return memcpy(v0 + 43, v0 + 54, 0x58uLL);
}

uint64_t OUTLINED_FUNCTION_60_27()
{

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_69_27(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v2;
  return result;
}

id OUTLINED_FUNCTION_74_18(uint64_t a1)
{
  *(a1 + 12) = 2048;

  return [v1 (v2 + 888)];
}

void OUTLINED_FUNCTION_75_21(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_76_24()
{

  return sub_1C7551C1C();
}

void *OUTLINED_FUNCTION_77_18()
{

  return memcpy((v0 + 432), (v0 + 32), 0x58uLL);
}

uint64_t OUTLINED_FUNCTION_78_19()
{

  return sub_1C755180C();
}

uint64_t AssetCurationCompletion.description.getter()
{
  v1 = MEMORY[0x1CCA5D090](*v0, MEMORY[0x1E69E6158]);
  MEMORY[0x1CCA5CD70](v1);

  return 0x7344497465737361;
}

uint64_t sub_1C74B7740(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7344497465737361 && a2 == 0xE800000000000000)
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

uint64_t sub_1C74B77D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C74B7740(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C74B7800(uint64_t a1)
{
  v2 = sub_1C74B79F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C74B783C(uint64_t a1)
{
  v2 = sub_1C74B79F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssetCurationCompletion.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C588);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C74B79F8();
  sub_1C7551FFC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C704233C();
    sub_1C7551C1C();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1C74B79F8()
{
  result = qword_1EC21C590;
  if (!qword_1EC21C590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C590);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetCurationCompletion.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C74B7B28()
{
  result = qword_1EC21C598;
  if (!qword_1EC21C598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C598);
  }

  return result;
}

unint64_t sub_1C74B7B80()
{
  result = qword_1EC21C5A0;
  if (!qword_1EC21C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C5A0);
  }

  return result;
}

unint64_t sub_1C74B7BD8()
{
  result = qword_1EC21C5A8;
  if (!qword_1EC21C5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C5A8);
  }

  return result;
}

void static SafetyControllerDiagnosticsGenerator.save(with:diagnosticReport:)()
{
  if (PFOSVariantHasInternalDiagnostics())
  {
    sub_1C754DBCC();
    swift_allocObject();
    sub_1C754DBBC();
    sub_1C754DB9C();
    sub_1C74B7D6C();
    v1 = sub_1C754DBAC();
    if (v0)
    {

      sub_1C74B7DC0();
      swift_allocError();
      swift_willThrow();
    }

    else
    {
      v3 = v1;
      v4 = v2;
      sub_1C7161C08();
      sub_1C6FC1640(v3, v4);
    }
  }
}

unint64_t sub_1C74B7D6C()
{
  result = qword_1EDD077A0;
  if (!qword_1EDD077A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD077A0);
  }

  return result;
}

unint64_t sub_1C74B7DC0()
{
  result = qword_1EC21C5B0;
  if (!qword_1EC21C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C5B0);
  }

  return result;
}

_BYTE *sub_1C74B7E40(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C74B7EF0()
{
  result = qword_1EC21C5B8;
  if (!qword_1EC21C5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C5B8);
  }

  return result;
}

uint64_t static AssetSampler.sample(assetUUIDs:maxNumberOfAssetsToSample:seed:)(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (!*(a1 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (a4)
  {
    v19 = 0;
    MEMORY[0x1CCA5F900](&v19, 8);
    v6 = v19;
  }

  else
  {
    v6 = a3;
  }

  v8 = [objc_allocWithZone(MEMORY[0x1E69C0838]) initWithSeed_];
  v9 = sub_1C7259910(v8, a1);

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (*(v9 + 16) >= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = *(v9 + 16);
  }

  sub_1C74B8224(0, v10, v9);
  v12 = v11;
  v14 = v13;

  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1C7551DEC();
  swift_unknownObjectRetain_n();
  v16 = swift_dynamicCastClass();
  if (!v16)
  {
    swift_unknownObjectRelease();
    v16 = MEMORY[0x1E69E7CC0];
  }

  v17 = *(v16 + 16);

  if (__OFSUB__(v14 >> 1, v12))
  {
    goto LABEL_21;
  }

  if (v17 != (v14 >> 1) - v12)
  {
LABEL_22:
    swift_unknownObjectRelease_n();
LABEL_11:
    sub_1C739C274();
    v7 = v15;
    swift_unknownObjectRelease();

    return v7;
  }

  v7 = swift_dynamicCastClass();

  swift_unknownObjectRelease();
  if (!v7)
  {
    swift_unknownObjectRelease();
    v7 = MEMORY[0x1E69E7CC0];
  }

  swift_unknownObjectRelease();
  return v7;
}

unint64_t sub_1C74B8178(unint64_t result, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(a3 + 16);
  if (v4 < result || v4 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    a4(0);
    return sub_1C75504FC();
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_1C74B8224(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return sub_1C75504FC();
  }

LABEL_10:
  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetSampler(_BYTE *result, int a2, int a3)
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

id sub_1C74B8340()
{
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  v0 = sub_1C7550B3C();

  v1 = [swift_getObjCClassFromMetadata() orPredicateWithSubpredicates_];

  return v1;
}

id sub_1C74B8468(uint64_t a1, void (*a2)(void))
{
  a2();
  v3 = [objc_opt_self() fetchHighlightsWithOptions_];

  return v3;
}

id static HighlightCollectionFetcher.fetchCollections(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C70B7154(a1, a2, *(a3 + 8));
  v4 = [objc_opt_self() fetchHighlightsWithOptions_];

  return v4;
}

uint64_t sub_1C74B854C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  v7 = (v6 + 16);
  v12[4] = a2;
  v12[5] = v6;
  OUTLINED_FUNCTION_4_78();
  OUTLINED_FUNCTION_0_173();
  v12[2] = v8;
  v12[3] = a3;
  v9 = _Block_copy(v12);

  [a1 enumerateObjectsUsingBlock_];
  _Block_release(v9);
  swift_beginAccess();
  v10 = *v7;
  sub_1C75504FC();

  return v10;
}

uint64_t static HighlightCollectionFetcher.describe(collections:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v12[4] = sub_1C74B9680;
  v12[5] = v7;
  OUTLINED_FUNCTION_4_78();
  OUTLINED_FUNCTION_0_173();
  v12[2] = v8;
  v12[3] = &block_descriptor_45;
  v9 = _Block_copy(v12);

  [a1 enumerateObjectsUsingBlock_];
  _Block_release(v9);
  swift_beginAccess();
  v10 = *(v6 + 16);
  sub_1C75504FC();

  return v10;
}

id static HighlightCollectionFetcher.basePredicate(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C75604F0;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1C6F6D524();
  *(v6 + 32) = 1684957547;
  *(v6 + 40) = 0xE400000000000000;
  v7 = (*(a3 + 16))(a2, a3);
  v8 = MEMORY[0x1E69E7660];
  *(v6 + 96) = MEMORY[0x1E69E75F8];
  *(v6 + 104) = v8;
  *(v6 + 72) = v7;
  result = sub_1C755112C();
  v10 = result;
  if (a1)
  {
    v11 = static HighlightCollectionFetcher.predicateForVisibilityState(sharingFilter:)([*(a1 + 24) sharingFilter], a2, a3);
    sub_1C6F65BE8(0, &qword_1EDD0FA80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C7564A90;
    *(v12 + 32) = v10;
    *(v12 + 40) = v11;
    return sub_1C6F6E5C4();
  }

  return result;
}

id static HighlightCollectionFetcher.predicateForFavorites(_:)(int a1, uint64_t a2, uint64_t a3)
{
  LODWORD(v5) = a1;
  v6 = sub_1C754FF1C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 8);
  (*(v11 + 16))(a2, v11, v8);
  v12 = sub_1C754FEEC();
  v13 = sub_1C755119C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    HIDWORD(v22) = v5;
    v5 = v14;
    v15 = swift_slowAlloc();
    v23 = v15;
    *v5 = 136315138;
    v16 = (*(*(v11 + 8) + 16))(a2);
    v18 = sub_1C6F765A4(v16, v17, &v23);

    *(v5 + 4) = v18;
    _os_log_impl(&dword_1C6F5C000, v12, v13, "CollectionFetcher.%s do not supports favorites", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1CCA5F8E0](v15, -1, -1);
    v19 = v5;
    LOBYTE(v5) = BYTE4(v22);
    MEMORY[0x1CCA5F8E0](v19, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v20 = [objc_opt_self() predicateWithValue_];

  return v20;
}

uint64_t static HighlightCollectionFetcher.defaultSortDescriptors(ascending:)(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C75650C0;
  v3 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v2 + 32) = sub_1C6F6AF98(0x7461447472617473, 0xE900000000000065, a1);
  v4 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v2 + 40) = sub_1C6F6AF98(0x65746144646E65, 0xE700000000000000, a1);
  v5 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v2 + 48) = sub_1C6F6AF98(0x44497463656A626FLL, 0xE800000000000000, 1);
  return v2;
}

id static HighlightCollectionFetcher.predicateForVisibilityState(sharingFilter:)(__int16 a1, uint64_t a2, uint64_t a3)
{
  sub_1C7065114(a1, v16);
  v5 = (*(a3 + 16))(a2, a3);
  if (v5 > 3u)
  {
    v6 = &unk_1F469F1F8;
  }

  else
  {
    v6 = *(&off_1E82A19F8 + v5);
  }

  v15 = MEMORY[0x1E69E7CC0];
  v7 = v6[2];
  if (v7)
  {
    sub_1C6F65BE8(0, &qword_1EDD0FAD0);
    v8 = 32;
    v9 = MEMORY[0x1E69E7660];
    do
    {
      v10 = *(v6 + v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1C75604F0;
      sub_1C6FB5E28(v16, v11 + 32);
      *(v11 + 96) = MEMORY[0x1E69E75F8];
      *(v11 + 104) = v9;
      *(v11 + 72) = v10;
      v12 = sub_1C755112C();
      MEMORY[0x1CCA5D040]();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C7550B9C();
      }

      sub_1C7550BEC();

      v8 += 2;
      --v7;
    }

    while (v7);
  }

  sub_1C6F65BE8(0, &qword_1EDD0FA80);
  v13 = sub_1C74B8340();
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v13;
}

uint64_t sub_1C74B9038(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = 0xE000000000000000;
  sub_1C755180C();
  sub_1C6F65BE8(0, &qword_1EC2155D8);
  v11 = sub_1C755204C();
  v13 = v12;

  MEMORY[0x1CCA5CD70](46, 0xE100000000000000);
  MEMORY[0x1CCA5CD70](a5, a6);
  MEMORY[0x1CCA5CD70](32, 0xE100000000000000);
  v14 = [a1 uuid];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1C755068C();
    v10 = v17;
  }

  else
  {
    v16 = 0;
  }

  MEMORY[0x1CCA5CD70](v16, v10);

  MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
  v18 = [a1 title];
  v19 = sub_1C755068C();
  v21 = v20;

  MEMORY[0x1CCA5CD70](v19, v21);

  MEMORY[0x1CCA5CD70](8236, 0xE200000000000000);
  v22 = [a1 subtitle];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1C755068C();
    v26 = v25;
  }

  else
  {
    v26 = 0xEB00000000656C74;
    v24 = 0x6974627573206F4ELL;
  }

  MEMORY[0x1CCA5CD70](v24, v26);

  MEMORY[0x1CCA5CD70](0x203A657079742820, 0xE800000000000000);
  v27 = MEMORY[0x1CCA5EA30]([a1 type]);
  v28 = sub_1C755068C();
  v30 = v29;

  MEMORY[0x1CCA5CD70](v28, v30);

  MEMORY[0x1CCA5CD70](0x203A646E696B202CLL, 0xE800000000000000);
  v31 = MEMORY[0x1CCA5EA20]([a1 kind]);
  v32 = sub_1C755068C();
  v34 = v33;

  MEMORY[0x1CCA5CD70](v32, v34);

  MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
  swift_beginAccess();
  sub_1C6FB0600();
  v35 = *(*(a4 + 16) + 16);
  sub_1C6FB0EFC();
  v36 = *(a4 + 16);
  *(v36 + 16) = v35 + 1;
  v37 = v36 + 16 * v35;
  *(v37 + 32) = v11;
  *(v37 + 40) = v13;
  *(a4 + 16) = v36;
  return swift_endAccess();
}

uint64_t sub_1C74B9348(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = 0xE000000000000000;
  sub_1C755180C();
  sub_1C6F65BE8(0, &qword_1EC2155D8);
  v11 = sub_1C755204C();
  v13 = v12;

  MEMORY[0x1CCA5CD70](46, 0xE100000000000000);
  v14 = (*(*(*(a6 + 8) + 8) + 16))(a5);
  MEMORY[0x1CCA5CD70](v14);

  MEMORY[0x1CCA5CD70](32, 0xE100000000000000);
  v15 = [a1 uuid];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1C755068C();
    v10 = v18;
  }

  else
  {
    v17 = 0;
  }

  MEMORY[0x1CCA5CD70](v17, v10);

  MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
  v19 = [a1 title];
  v20 = sub_1C755068C();
  v22 = v21;

  MEMORY[0x1CCA5CD70](v20, v22);

  MEMORY[0x1CCA5CD70](8236, 0xE200000000000000);
  v23 = [a1 subtitle];
  if (v23)
  {
    v24 = v23;
    v25 = sub_1C755068C();
    v27 = v26;
  }

  else
  {
    v27 = 0xEB00000000656C74;
    v25 = 0x6974627573206F4ELL;
  }

  MEMORY[0x1CCA5CD70](v25, v27);

  MEMORY[0x1CCA5CD70](0x203A657079742820, 0xE800000000000000);
  v28 = MEMORY[0x1CCA5EA30]([a1 type]);
  v29 = sub_1C755068C();
  v31 = v30;

  MEMORY[0x1CCA5CD70](v29, v31);

  MEMORY[0x1CCA5CD70](0x203A646E696B202CLL, 0xE800000000000000);
  v32 = MEMORY[0x1CCA5EA20]([a1 kind]);
  v33 = sub_1C755068C();
  v35 = v34;

  MEMORY[0x1CCA5CD70](v33, v35);

  MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
  swift_beginAccess();
  sub_1C6FB0600();
  v36 = *(*(a4 + 16) + 16);
  sub_1C6FB0EFC();
  v37 = *(a4 + 16);
  *(v37 + 16) = v36 + 1;
  v38 = v37 + 16 * v36;
  *(v38 + 32) = v11;
  *(v38 + 40) = v13;
  *(a4 + 16) = v37;
  return swift_endAccess();
}

void sub_1C74B97B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = a1;
    v72 = MEMORY[0x1E69E7CC0];
    sub_1C716EFDC(0, v1, 0);
    v65 = v72;
    v4 = sub_1C70D4544(v3);
    v7 = 0;
    v8 = v3 + 64;
    v48 = v3;
    v49 = v5;
    v46 = v3 + 72;
    v47 = v1;
    v50 = v3 + 64;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v3 + 32))
    {
      v9 = v4 >> 6;
      v10 = 1 << v4;
      if ((*(v8 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_47;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_48;
      }

      v11 = (*(v3 + 48) + 56 * v4);
      v67 = v11[2];
      v12 = v11[3];
      v13 = v11[4];
      v14 = v11[5];
      v15 = *(*(v3 + 56) + 8 * v4);
      v68 = v15;
      if (v15 >> 62)
      {
        v59 = v4;
        v62 = v6;
        v41 = v5;
        v42 = v4 >> 6;
        v71 = v11[3];
        v43 = 1 << v4;
        v44 = sub_1C75516BC();
        v10 = v43;
        v12 = v71;
        v9 = v42;
        v5 = v41;
        v15 = v68;
        v6 = v62;
        v16 = v44;
        v4 = v59;
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v64 = v7;
      if (v16)
      {
        v53 = v9;
        v54 = v10;
        v56 = v5;
        v58 = v4;
        v61 = v6;
        v69 = v16;
        sub_1C75504FC();
        sub_1C75504FC();
        v52 = v13;
        v51 = v14;
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C716EF90();
        if (v69 < 0)
        {
          goto LABEL_52;
        }

        v17 = 0;
        v18 = v2;
        v66 = v15 & 0xC000000000000001;
        do
        {
          if (v66)
          {
            v19 = MEMORY[0x1CCA5DDD0](v17, v15);
          }

          else
          {
            v19 = *(v15 + 8 * v17 + 32);
          }

          v20 = *(v19 + 80);
          v70 = *(v19 + 72);
          swift_beginAccess();
          v21 = *(v19 + 89);
          v22 = 7562585;
          if (v21 != 1)
          {
            v22 = 28494;
          }

          v23 = 0xE300000000000000;
          if (v21 != 1)
          {
            v23 = 0xE200000000000000;
          }

          if (*(v19 + 89))
          {
            v24 = v22;
          }

          else
          {
            v24 = 0x726577736E616E55;
          }

          if (*(v19 + 89))
          {
            v25 = v23;
          }

          else
          {
            v25 = 0xEA00000000006465;
          }

          sub_1C75504FC();
          sub_1C75504FC();

          v26 = v12;
          v27 = *(v18 + 16);
          if (v27 >= *(v18 + 24) >> 1)
          {
            sub_1C716EF90();
          }

          ++v17;
          *(v18 + 16) = v27 + 1;
          v28 = (v18 + 48 * v27);
          v28[4] = v67;
          v28[5] = v26;
          v28[6] = v70;
          v28[7] = v20;
          v28[8] = v24;
          v28[9] = v25;
          v15 = v68;
          v12 = v26;
        }

        while (v69 != v17);

        v2 = MEMORY[0x1E69E7CC0];
        v1 = v47;
        v3 = v48;
        v8 = v50;
        v6 = v61;
        v4 = v58;
        v10 = v54;
        v5 = v56;
        v9 = v53;
      }

      else
      {
        v18 = v2;
        v8 = v50;
      }

      v29 = v65;
      v31 = *(v65 + 16);
      v30 = *(v65 + 24);
      if (v31 >= v30 >> 1)
      {
        v60 = v4;
        v55 = v10;
        v57 = v5;
        v63 = v6;
        v45 = v9;
        sub_1C716EFDC((v30 > 1), v31 + 1, 1);
        v10 = v55;
        v5 = v57;
        v9 = v45;
        v4 = v60;
        v6 = v63;
        v29 = v65;
      }

      *(v29 + 16) = v31 + 1;
      *(v29 + 8 * v31 + 32) = v18;
      v32 = 1 << *(v3 + 32);
      if (v4 >= v32)
      {
        goto LABEL_49;
      }

      v33 = *(v8 + 8 * v9);
      if ((v33 & v10) == 0)
      {
        goto LABEL_50;
      }

      v65 = v29;
      if (*(v3 + 36) != v5)
      {
        goto LABEL_51;
      }

      v34 = v33 & (-2 << (v4 & 0x3F));
      if (v34)
      {
        v32 = __clz(__rbit64(v34)) | v4 & 0x7FFFFFFFFFFFFFC0;
        v35 = v64;
      }

      else
      {
        v36 = v9 << 6;
        v37 = v9 + 1;
        v38 = (v46 + 8 * v9);
        v35 = v64;
        while (v37 < (v32 + 63) >> 6)
        {
          v40 = *v38++;
          v39 = v40;
          v36 += 64;
          ++v37;
          if (v40)
          {
            sub_1C6F9ED50(v4, v5, v6 & 1);
            v32 = __clz(__rbit64(v39)) + v36;
            goto LABEL_42;
          }
        }

        sub_1C6F9ED50(v4, v5, v6 & 1);
      }

LABEL_42:
      v6 = 0;
      v7 = v35 + 1;
      v4 = v32;
      v5 = v49;
      if (v7 == v1)
      {
        return;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }
}

void sub_1C74B9C6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v42 = MEMORY[0x1E69E7CC0];
    sub_1C716EF90();
    v3 = v42;
    v6 = sub_1C70D4544(v2);
    v7 = 0;
    v8 = v2 + 64;
    v29 = v4;
    v30 = v1;
    v28 = v2 + 72;
    v31 = v2 + 64;
    v32 = v2;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v2 + 36) != v4)
      {
        goto LABEL_28;
      }

      v34 = v7;
      v35 = v4;
      v33 = v5;
      v10 = (*(v2 + 48) + 56 * v6);
      v40 = v10[2];
      v41 = v3;
      v12 = v10[3];
      v11 = v10[4];
      v13 = v10[5];
      v14 = *(*(v2 + 56) + 8 * v6);
      swift_retain_n();
      sub_1C75504FC();
      sub_1C75504FC();
      v36 = v11;
      v15 = v13;
      sub_1C75504FC();

      v16 = *(v14 + 80);
      v39 = *(v14 + 72);
      swift_beginAccess();
      if (*(v14 + 89))
      {
        if (*(v14 + 89) == 1)
        {
          v38 = 0xE300000000000000;
          v17 = 7562585;
        }

        else
        {
          v38 = 0xE200000000000000;
          v17 = 28494;
        }
      }

      else
      {
        v38 = 0xEA00000000006465;
        v17 = 0x726577736E616E55;
      }

      v37 = v17;
      sub_1C75504FC();
      sub_1C75504FC();

      v3 = v41;
      v18 = *(v41 + 16);
      if (v18 >= *(v41 + 24) >> 1)
      {
        sub_1C716EF90();
        v3 = v41;
      }

      *(v3 + 16) = v18 + 1;
      v19 = (v3 + 48 * v18);
      v19[4] = v40;
      v19[5] = v12;
      v19[6] = v39;
      v19[7] = v16;
      v19[8] = v37;
      v19[9] = v38;
      v2 = v32;
      v20 = 1 << *(v32 + 32);
      if (v6 >= v20)
      {
        goto LABEL_29;
      }

      v8 = v31;
      v21 = *(v31 + 8 * v9);
      if ((v21 & (1 << v6)) == 0)
      {
        goto LABEL_30;
      }

      if (*(v32 + 36) != v35)
      {
        goto LABEL_31;
      }

      v22 = v21 & (-2 << (v6 & 0x3F));
      if (v22)
      {
        v20 = __clz(__rbit64(v22)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v9 << 6;
        v24 = v9 + 1;
        v25 = (v28 + 8 * v9);
        while (v24 < (v20 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            sub_1C6F9ED50(v6, v35, v33 & 1);
            v20 = __clz(__rbit64(v26)) + v23;
            goto LABEL_24;
          }
        }

        sub_1C6F9ED50(v6, v35, v33 & 1);
      }

LABEL_24:
      v5 = 0;
      v7 = v34 + 1;
      v6 = v20;
      v4 = v29;
      if (v34 + 1 == v30)
      {
        return;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }
}

uint64_t sub_1C74B9FB4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736E6F6974636573 && a2 == 0xE800000000000000)
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

uint64_t sub_1C74BA044(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C5C0);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C74BB850();
  sub_1C755200C();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C5D0);
  sub_1C74BB94C(&qword_1EC21C5D8, &qword_1EC21C5D0, &unk_1C758F518, sub_1C74BB8A4);
  sub_1C7551D2C();
  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1C74BA1C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697473657571 && a2 == 0xE900000000000073)
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

uint64_t sub_1C74BA290(char a1)
{
  if (a1)
  {
    return 0x6E6F697473657571;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1C74BA2C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C5E8);
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C74BB8F8();
  sub_1C755200C();
  v15 = 0;
  OUTLINED_FUNCTION_1_146();
  sub_1C7551CCC();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218148);
    sub_1C74BB94C(&qword_1EC21C5F8, &qword_1EC218148, &unk_1C7570EE0, sub_1C74BB9C8);
    sub_1C7551D2C();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_1C74BA480(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7551686372616573 && a2 == 0xEB00000000797265;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697473657571 && a2 == 0xE800000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x726577736E61 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
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

uint64_t sub_1C74BA590(char a1)
{
  if (!a1)
  {
    return 0x7551686372616573;
  }

  if (a1 == 1)
  {
    return 0x6E6F697473657571;
  }

  return 0x726577736E61;
}

uint64_t sub_1C74BA5EC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C638);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C74BBE94();
  sub_1C755200C();
  v10[15] = 0;
  OUTLINED_FUNCTION_1_146();
  sub_1C7551C7C();
  if (!v1)
  {
    v10[14] = 1;
    OUTLINED_FUNCTION_1_146();
    sub_1C7551CCC();
    v10[13] = 2;
    OUTLINED_FUNCTION_1_146();
    sub_1C7551CCC();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1C74BA758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C74B9FB4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C74BA784(uint64_t a1)
{
  v2 = sub_1C74BB850();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C74BA7C0(uint64_t a1)
{
  v2 = sub_1C74BB850();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C74BA820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C74BA1C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C74BA848(uint64_t a1)
{
  v2 = sub_1C74BB8F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C74BA884(uint64_t a1)
{
  v2 = sub_1C74BB8F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C74BA8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C74BA480(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C74BA910(uint64_t a1)
{
  v2 = sub_1C74BBE94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C74BA94C(uint64_t a1)
{
  v2 = sub_1C74BBE94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void static StoryDiagnosticsUtils.createJsonDataForInternalSurvey(storylineQuestions:imageRetrievalQuestionsByImageQuery:imageQueryQuestionByImageQuery:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C6FB6304();
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
LABEL_21:
    sub_1C74B97B8(a2);
    v20 = sub_1C74BB590(v19);

    sub_1C74B9C6C(a3);
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214FA0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1C755BAA0;
    *(v23 + 32) = 0x6E696C79726F7453;
    *(v23 + 40) = 0xE900000000000065;
    *(v23 + 48) = v6;
    *(v23 + 56) = 0x6552206567616D49;
    *(v23 + 64) = 0xEF6C617665697274;
    *(v23 + 72) = v20;
    *(v23 + 80) = 0x736567616D49;
    *(v23 + 88) = 0xE600000000000000;
    *(v23 + 96) = v22;
    sub_1C754D7AC();
    swift_allocObject();
    sub_1C754D79C();
    sub_1C7238518();
    sub_1C754D78C();

    return;
  }

  v7 = v5;
  v28 = MEMORY[0x1E69E7CC0];
  sub_1C716EF90();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v24 = a2;
    v8 = 0;
    v6 = v28;
    v25 = a3;
    v26 = v7;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1CCA5DDD0](v8, a1);
      }

      else
      {
        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = *(v9 + 72);
      v11 = *(v9 + 80);
      swift_beginAccess();
      v12 = *(v9 + 89);
      v13 = 7562585;
      if (v12 != 1)
      {
        v13 = 28494;
      }

      v14 = 0xE300000000000000;
      if (v12 != 1)
      {
        v14 = 0xE200000000000000;
      }

      if (*(v9 + 89))
      {
        v15 = v13;
      }

      else
      {
        v15 = 0x726577736E616E55;
      }

      if (*(v9 + 89))
      {
        v16 = v14;
      }

      else
      {
        v16 = 0xEA00000000006465;
      }

      sub_1C75504FC();

      v17 = *(v28 + 16);
      if (v17 >= *(v28 + 24) >> 1)
      {
        sub_1C716EF90();
      }

      ++v8;
      *(v28 + 16) = v17 + 1;
      v18 = (v28 + 48 * v17);
      v18[4] = 0;
      v18[5] = 0;
      v18[6] = v10;
      v18[7] = v11;
      v18[8] = v15;
      v18[9] = v16;
    }

    while (v26 != v8);
    a3 = v25;
    a2 = v24;
    goto LABEL_21;
  }

  __break(1u);
}

uint64_t sub_1C74BAC90(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = result;
    result = sub_1C75504FC();
    v4 = 0;
    v5 = v2 + 4;
    v6 = 32;
    while (1)
    {
      v7 = *(v3 + v6);
      if (!v4)
      {
        v8 = v2[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2150D0);
        v11 = swift_allocObject();
        v12 = (_swift_stdlib_malloc_size(v11) - 32) / 4;
        v11[2] = v10;
        v11[3] = 2 * v12;
        v13 = (v11 + 4);
        v14 = v2[3];
        v15 = v14 >> 1;
        if (v2[2])
        {
          if (v11 != v2 || v13 >= v2 + 4 * v15 + 32)
          {
            memmove(v11 + 4, v2 + 4, 4 * v15);
          }

          v2[2] = 0;
        }

        v5 = (v13 + 4 * v15);
        v4 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - (v14 >> 1);

        v2 = v11;
      }

      v17 = __OFSUB__(v4--, 1);
      if (v17)
      {
        break;
      }

      *v5++ = v7;
      v6 += 4;
      if (!--v1)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v4 = 0;
LABEL_21:
  v18 = v2[3];
  if (v18 < 2)
  {
    return v2;
  }

  v19 = v18 >> 1;
  v17 = __OFSUB__(v19, v4);
  v20 = v19 - v4;
  if (!v17)
  {
    v2[2] = v20;
    return v2;
  }

LABEL_27:
  __break(1u);
  return result;
}

size_t sub_1C74BAE00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalTrait();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v64 - v9;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218328);
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v71 = &v64 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v77 = &v64 - v19;
  v20 = *(a1 + 16);
  v70 = a2;
  v21 = *(a2 + 16);
  v74 = v20;
  v72 = v21;
  if (v21 >= v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  v64 = v7;
  if (v22)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218320);
    v23 = *(v12 + 72);
    v24 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v67 = *(v12 + 80);
    v25 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v25);
    if (v23)
    {
      if (result - v24 != 0x8000000000000000 || v23 != -1)
      {
        v28 = 2 * ((result - v24) / v23);
        v25[2] = v22;
        v25[3] = v28;

        goto LABEL_12;
      }
    }

    else
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v29 = *(v12 + 80);
  v25 = MEMORY[0x1E69E7CC0];
  v28 = *(MEMORY[0x1E69E7CC0] + 24);
  v67 = v29;
  v24 = (v29 + 32) & ~v29;
LABEL_12:
  v68 = v10;
  v69 = v5;

  v30 = v28 >> 1;
  v65 = v25;
  v66 = v24;
  v31 = v25 + v24;
  v73 = a1;
  v75 = v12;
  if (v22)
  {
    v32 = (v70 + 32);
    v33 = a1 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
    v34 = *(v69 + 72);
    v35 = v22;
    v36 = v64;
    do
    {
      sub_1C72453B0(v33, v36);
      v37 = *v32++;
      v38 = *(v76 + 48);
      sub_1C74BBA1C(v36, v15);
      *&v15[v38] = v37;
      --v30;
      result = sub_1C74BBA80(v15, v31);
      v31 += *(v75 + 72);
      v33 += v34;
      --v35;
    }

    while (v35);
  }

  v39 = v69;
  v70 += 32;
  v40 = v68;
  v42 = v75;
  v41 = v76;
  v43 = v65;
  v44 = v71;
  while (v74 != v22)
  {
    if (v22 >= v74)
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    result = sub_1C72453B0(v73 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v22, v40);
    if (__OFADD__(v22, 1))
    {
      goto LABEL_51;
    }

    if (v72 == v22)
    {
      result = sub_1C7245414(v40);
      break;
    }

    if (v22 >= v72)
    {
      goto LABEL_52;
    }

    v45 = *(v70 + 8 * v22);
    v46 = *(v41 + 48);
    sub_1C74BBA1C(v40, v44);
    *(v44 + v46) = v45;
    result = sub_1C74BBA80(v44, v77);
    if (v30)
    {
      v47 = v43;
    }

    else
    {
      v48 = v43[3];
      if (((v48 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_54;
      }

      v49 = v48 & 0xFFFFFFFFFFFFFFFELL;
      if (v49 <= 1)
      {
        v50 = 1;
      }

      else
      {
        v50 = v49;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218320);
      v51 = *(v42 + 72);
      v52 = v66;
      v47 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v47);
      if (!v51)
      {
        goto LABEL_55;
      }

      v53 = result - v52;
      if (result - v52 == 0x8000000000000000 && v51 == -1)
      {
        goto LABEL_56;
      }

      v55 = v53 / v51;
      v47[2] = v50;
      v47[3] = 2 * (v53 / v51);
      v56 = v47 + v52;
      v57 = v43[3];
      v58 = (v57 >> 1) * v51;
      if (v43[2])
      {
        if (v47 < v43 || v56 >= v43 + v52 + v58)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v47 != v43)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v43[2] = 0;
      }

      v31 = &v56[v58];
      v30 = (v55 & 0x7FFFFFFFFFFFFFFFLL) - (v57 >> 1);

      v40 = v68;
      v39 = v69;
      v41 = v76;
    }

    v60 = __OFSUB__(v30--, 1);
    if (v60)
    {
      goto LABEL_53;
    }

    result = sub_1C74BBA80(v77, v31);
    v31 += *(v42 + 72);
    ++v22;
    v43 = v47;
  }

  v61 = v43[3];
  if (v61 >= 2)
  {
    v62 = v61 >> 1;
    v60 = __OFSUB__(v62, v30);
    v63 = v62 - v30;
    if (v60)
    {
      goto LABEL_58;
    }

    v43[2] = v63;
  }

  return v43;
}

void sub_1C74BB2E0(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v56 = 32;
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2182F0);
    v7 = swift_allocObject();
    v8 = 2 * ((_swift_stdlib_malloc_size(v7) - 32) / 48);
    v7[2] = v6;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
    v8 = *(MEMORY[0x1E69E7CC0] + 24);
  }

  v9 = v8 >> 1;
  if (v6)
  {
    v53 = v3;
    v10 = v3 + 32;
    v11 = (a2 + 32);
    v9 -= v6;
    v12 = v6;
    do
    {
      sub_1C6FB5E28(v10, &v61);
      v13 = *v11++;
      v14 = sub_1C6FD80E4(&v61, v64);
      *(&v65 + 1) = v13;
      OUTLINED_FUNCTION_3_125(v14, v15, v16, v17, v18, v19, v20, v21, v53, v54, v56, v57, *(&v57 + 1), v58, v59, v60, v61, *(&v61 + 1), v62, *(&v62 + 1), v63, *(&v63 + 1), v22, v23, v24);
      v10 += 40;
      --v12;
    }

    while (v12);
    v3 = v53;
  }

  v25 = a2 + 32;
  v26 = v3 + 40 * v6 + 32;
  v55 = v4;
  while (v4 != v6)
  {
    if (v6 >= v4)
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    sub_1C6FB5E28(v26, &v57);
    if (__OFADD__(v6, 1))
    {
      goto LABEL_39;
    }

    if (v5 == v6)
    {
      __swift_destroy_boxed_opaque_existential_1(&v57);
      break;
    }

    if (v6 >= v5)
    {
      goto LABEL_40;
    }

    v27 = *(v25 + 8 * v6);
    v28 = sub_1C6FD80E4(&v57, &v61);
    *(&v63 + 1) = v27;
    v37 = v62;
    v64[0] = v61;
    v64[1] = v62;
    v38 = v63;
    v65 = v63;
    if (!v9)
    {
      v39 = v7[3];
      if (((v39 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_42;
      }

      v40 = v5;
      v41 = v25;
      v42 = v39 & 0xFFFFFFFFFFFFFFFELL;
      if (v42 <= 1)
      {
        v43 = 1;
      }

      else
      {
        v43 = v42;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2182F0);
      v44 = swift_allocObject();
      v45 = (_swift_stdlib_malloc_size(v44) - 32) / 48;
      v44[2] = v43;
      v44[3] = 2 * v45;
      v46 = v7[3];
      v47 = v46 >> 1;
      if (v7[2])
      {
        if (v44 != v7 || v44 + 4 >= &v7[6 * v47 + 4])
        {
          memmove(v44 + 4, v7 + 4, 48 * v47);
        }

        v7[2] = 0;
      }

      v9 = (v45 & 0x7FFFFFFFFFFFFFFFLL) - (v46 >> 1);

      v7 = v44;
      v25 = v41;
      v5 = v40;
      v4 = v55;
    }

    v49 = __OFSUB__(v9--, 1);
    if (v49)
    {
      goto LABEL_41;
    }

    OUTLINED_FUNCTION_3_125(v28, v29, v30, v31, v32, v33, v34, v35, v53, v55, v56, v57, *(&v57 + 1), v58, v59, v60, v61, *(&v61 + 1), v62, *(&v62 + 1), v63, *(&v63 + 1), v38, v37, v36);
    ++v6;
    v26 += 40;
  }

  v50 = v7[3];
  if (v50 < 2)
  {
    return;
  }

  v51 = v50 >> 1;
  v49 = __OFSUB__(v51, v9);
  v52 = v51 - v9;
  if (!v49)
  {
    v7[2] = v52;
    return;
  }

LABEL_43:
  __break(1u);
}

uint64_t sub_1C74BB590(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = result + 32;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0] + 32;
  while (1)
  {
    while (v3)
    {
      v9 = *(v3 + 16);
      if (v2 == v9)
      {
        break;
      }

      if (v2 >= v9)
      {
        goto LABEL_31;
      }

      v12 = v3 + 48 * v2;
      v26 = *(v12 + 64);
      v27 = *(v12 + 32);
      v13 = *(v12 + 72);
      v29 = *(v12 + 40);
      v28 = *(v12 + 56);
      if (v4)
      {
        sub_1C75504FC();
        sub_1C75504FC();
        result = sub_1C75504FC();
        v14 = v7;
      }

      else
      {
        v15 = v7[3];
        if (((v15 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214FA8);
        v14 = swift_allocObject();
        v18 = (_swift_stdlib_malloc_size(v14) - 32) / 48;
        v14[2] = v17;
        v14[3] = 2 * v18;
        v19 = v14 + 4;
        v20 = v7[3] >> 1;
        v8 = &v14[6 * v20 + 4];
        v4 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;
        if (v7[2])
        {
          v21 = v14 < v7 || v19 >= &v7[6 * v20 + 4];
          if (v21 || v14 != v7)
          {
            memmove(v19, v7 + 4, 48 * v20);
          }

          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          v7[2] = 0;
        }

        else
        {
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
        }
      }

      v22 = __OFSUB__(v4--, 1);
      if (v22)
      {
        goto LABEL_32;
      }

      ++v2;
      *v8 = v27;
      *(v8 + 8) = v29;
      *(v8 + 24) = v28;
      *(v8 + 32) = v26;
      *(v8 + 40) = v13;
      v8 += 48;
      v7 = v14;
    }

    v10 = *(v1 + 16);
    if (v5 == v10)
    {

      v23 = v7[3];
      if (v23 >= 2)
      {
        v24 = v23 >> 1;
        v22 = __OFSUB__(v24, v4);
        v25 = v24 - v4;
        if (v22)
        {
          goto LABEL_33;
        }

        v7[2] = v25;
      }

      return v7;
    }

    if (v5 >= v10)
    {
      break;
    }

    v11 = *(v6 + 8 * v5);
    sub_1C75504FC();

    v2 = 0;
    v3 = v11;
    ++v5;
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

unint64_t sub_1C74BB850()
{
  result = qword_1EC21C5C8;
  if (!qword_1EC21C5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C5C8);
  }

  return result;
}

unint64_t sub_1C74BB8A4()
{
  result = qword_1EC21C5E0;
  if (!qword_1EC21C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C5E0);
  }

  return result;
}

unint64_t sub_1C74BB8F8()
{
  result = qword_1EC21C5F0;
  if (!qword_1EC21C5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C5F0);
  }

  return result;
}

uint64_t sub_1C74BB94C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C74BB9C8()
{
  result = qword_1EC21C600;
  if (!qword_1EC21C600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C600);
  }

  return result;
}

uint64_t sub_1C74BBA1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalTrait();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C74BBA80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218328);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for SurveyFileSectionRepresentation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SurveyFileRepresentation.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C74BBC88()
{
  result = qword_1EC21C608;
  if (!qword_1EC21C608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C608);
  }

  return result;
}

unint64_t sub_1C74BBCE0()
{
  result = qword_1EC21C610;
  if (!qword_1EC21C610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C610);
  }

  return result;
}

unint64_t sub_1C74BBD38()
{
  result = qword_1EC21C618;
  if (!qword_1EC21C618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C618);
  }

  return result;
}

unint64_t sub_1C74BBD90()
{
  result = qword_1EC21C620;
  if (!qword_1EC21C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C620);
  }

  return result;
}

unint64_t sub_1C74BBDE8()
{
  result = qword_1EC21C628;
  if (!qword_1EC21C628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C628);
  }

  return result;
}

unint64_t sub_1C74BBE40()
{
  result = qword_1EC21C630;
  if (!qword_1EC21C630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C630);
  }

  return result;
}

unint64_t sub_1C74BBE94()
{
  result = qword_1EC21C640;
  if (!qword_1EC21C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C640);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SurveyFileQuestionRepresentation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C74BBFC8()
{
  result = qword_1EC21C648;
  if (!qword_1EC21C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C648);
  }

  return result;
}

unint64_t sub_1C74BC020()
{
  result = qword_1EC21C650;
  if (!qword_1EC21C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C650);
  }

  return result;
}

unint64_t sub_1C74BC078()
{
  result = qword_1EC21C658[0];
  if (!qword_1EC21C658[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC21C658);
  }

  return result;
}

uint64_t AssetGating.GenericFailureReason.init(failureCode:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for AssetGating.GenericFailureReason();
  v9 = (a5 + *(result + 36));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t AssetGating.Ruleable.identifier.getter()
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return sub_1C75506EC();
}

uint64_t AssetGating.EligibilityChecker.passes(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(a2 + 24);
  type metadata accessor for AssetGating.GenericFailureReason();
  OUTLINED_FUNCTION_0_202();
  swift_getWitnessTable();
  v8 = sub_1C755045C();
  v20 = v8;
  v9 = *(v3 + *(a2 + 52));
  sub_1C75504FC();
  v16[0] = v7;
  swift_getExtendedExistentialTypeMetadata();
  OUTLINED_FUNCTION_55();
  v10 = sub_1C7550B6C();
  v19 = v10;
  OUTLINED_FUNCTION_55();
  if (v10 == sub_1C7550BFC())
  {

LABEL_6:
    result = sub_1C7550FDC();
    if (result)
    {

      v8 = 0;
    }

    *a3 = v8;
  }

  else
  {
    while (1)
    {
      OUTLINED_FUNCTION_55();
      v11 = sub_1C7550BDC();
      sub_1C7550B8C();
      if ((v11 & 1) == 0)
      {
        break;
      }

      sub_1C6FB5E28(v9 + 32 + 40 * v10, v16);
      sub_1C7550C2C();
      v12 = v17;
      v13 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      (*(v13 + 32))(a1, v12, v13);
      sub_1C755101C();
      swift_getWitnessTable();
      sub_1C755100C();
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_55();
      v14 = sub_1C7550BFC();
      v10 = v19;
      if (v19 == v14)
      {

        v8 = v20;
        goto LABEL_6;
      }
    }

    result = sub_1C75518AC();
    __break(1u);
  }

  return result;
}

uint64_t AssetGating.GenericFailureReason.message.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));
  sub_1C75504FC();
  return v2;
}

uint64_t AssetGating.GenericFailureReason.description.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;
    sub_1C7550A5C();
    v7 = v6;
    MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
    MEMORY[0x1CCA5CD70](v4, v3);
  }

  else
  {
    sub_1C7550A5C();
  }

  return v7;
}

uint64_t static AssetGating.GenericFailureReason.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1C755063C())
  {
    v4 = *(type metadata accessor for AssetGating.GenericFailureReason() + 36);
    v5 = (a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v7[1];
    if (v6)
    {
      if (v8)
      {
        v9 = *v5 == *v7 && v6 == v8;
        if (v9 || (sub_1C7551DBC() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t AssetGating.GenericFailureReason.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_1C755059C();
  if (!*(v2 + *(a2 + 36) + 8))
  {
    return sub_1C7551F5C();
  }

  sub_1C7551F5C();

  return sub_1C75505AC();
}

uint64_t AssetGating.GenericFailureReason.hashValue.getter(uint64_t a1)
{
  sub_1C7551F3C();
  AssetGating.GenericFailureReason.hash(into:)(v3, a1);
  return sub_1C7551FAC();
}

uint64_t sub_1C74BC840(uint64_t a1, uint64_t a2)
{
  sub_1C7551F3C();
  AssetGating.GenericFailureReason.hash(into:)(v4, a2);
  return sub_1C7551FAC();
}

uint64_t AssetGating.GenericGatingResult.failureReasons.getter(uint64_t a1)
{
  if (!*v1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  type metadata accessor for AssetGating.GenericFailureReason();
  OUTLINED_FUNCTION_0_202();
  swift_getWitnessTable();
  v3 = sub_1C7550FDC();
  if (v3)
  {
    return 0;
  }

  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  v6 = sub_1C755101C();
  WitnessTable = swift_getWitnessTable();
  sub_1C7424474(sub_1C74BCA68, KeyPath, v6, v2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v8);

  sub_1C7550C3C();
  swift_getWitnessTable();
  return sub_1C755102C();
}

_BYTE *storeEnumTagSinglePayload for AssetGating(_BYTE *result, int a2, int a3)
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

void sub_1C74BCB5C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C6FD5FFC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C74BCBE4(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFE)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      if ((v16 + 1) >= 2)
      {
        return v16;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C74BCD28(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFE)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              *v17 = 0;
              v17[1] = 0;
              *v17 = a2 - 0x7FFFFFFF;
            }

            else
            {
              v17[1] = a2;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C74BCF04()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C74BCF88()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getExtendedExistentialTypeMetadata();
    result = sub_1C7550C3C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C74BD038(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C74BD174(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t AssetSafetyFlag.description.getter()
{
  result = 0x6F6F626174;
  switch(*v0)
  {
    case 1:
      result = 2003202926;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x7974696C697475;
      break;
    case 4:
      result = 0x64657265746C6966;
      break;
    default:
      return result;
  }

  return result;
}

PhotosIntelligence::AssetSafetyFlag_optional __swiftcall AssetSafetyFlag.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1C74BD478@<X0>(unint64_t *a1@<X8>)
{
  result = AssetSafetyFlag.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SafeAssetAnalyzer.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t sub_1C74BD5FC()
{
  v1 = OBJC_IVAR____PNSafeAssetAnalyzer__hiddenPeopleUUIDs;
  if (*(v0 + OBJC_IVAR____PNSafeAssetAnalyzer__hiddenPeopleUUIDs))
  {
    v2 = *(v0 + OBJC_IVAR____PNSafeAssetAnalyzer__hiddenPeopleUUIDs);
  }

  else
  {
    swift_getObjectType();
    v2 = sub_1C74BD67C(*(v0 + OBJC_IVAR____PNSafeAssetAnalyzer_photoLibrary));
    *(v0 + v1) = v2;
    sub_1C75504FC();
  }

  sub_1C75504FC();
  return v2;
}

uint64_t sub_1C74BD67C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_1C74BE8D0(a1, &v4);
  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t sub_1C74BD6D0()
{
  v1 = OBJC_IVAR____PNSafeAssetAnalyzer__personOrPetUUIDsWithAvoidFeedback;
  if (*(v0 + OBJC_IVAR____PNSafeAssetAnalyzer__personOrPetUUIDsWithAvoidFeedback))
  {
    v2 = *(v0 + OBJC_IVAR____PNSafeAssetAnalyzer__personOrPetUUIDsWithAvoidFeedback);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E6978B08]) initWithPhotoLibrary_];
    v7[4] = sub_1C74BD81C;
    v7[5] = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1C74BD828;
    v7[3] = &block_descriptor_46;
    v4 = _Block_copy(v7);
    v5 = [v3 personUUIDsWithUserFeedbackFilterBlock_];
    _Block_release(v4);

    v2 = sub_1C7550F8C();
    *(v0 + v1) = v2;
    sub_1C75504FC();
  }

  sub_1C75504FC();
  return v2;
}

uint64_t sub_1C74BD828(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  LOBYTE(a2) = v3(a2);

  return a2 & 1;
}

uint64_t sub_1C74BD878()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21C728);
  __swift_project_value_buffer(v0, qword_1EC21C728);
  return sub_1C754FEFC();
}

id SafeAssetAnalyzer.init(photoLibrary:computeIsUtilityForMemories:)(void *a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____PNSafeAssetAnalyzer__hiddenPeopleUUIDs] = 0;
  *&v3[OBJC_IVAR____PNSafeAssetAnalyzer__personOrPetUUIDsWithAvoidFeedback] = 0;
  *&v3[OBJC_IVAR____PNSafeAssetAnalyzer_photoLibrary] = a1;
  v3[OBJC_IVAR____PNSafeAssetAnalyzer_computeIsUtilityForMemories] = a2;
  v7 = a1;
  *&v3[OBJC_IVAR____PNSafeAssetAnalyzer_knownUtilityOIDs] = sub_1C74BD9EC(v7);
  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

uint64_t sub_1C74BD9EC(id a1)
{
  v6 = MEMORY[0x1E69E7CD0];
  sub_1C74BE628(1u, a1);
  sub_1C7398074(v2);
  sub_1C74BE628(5u, a1);
  sub_1C7398074(v3);
  sub_1C74BE628(2u, a1);
  sub_1C7398074(v4);
  return v6;
}

uint64_t sub_1C74BDAA4(void *a1, void *a2)
{
  v5 = [a1 clsSceneClassifications];
  sub_1C6F65BE8(0, &qword_1EDD0CE08);
  sub_1C7080178(&qword_1EDD0CE00, &qword_1EDD0CE08);
  v6 = sub_1C7550F8C();

  if (sub_1C74BDD88(a1))
  {
    sub_1C6FB505C();
    v8 = v7;
    v9 = *(v7 + 16);
    if (v9 >= *(v7 + 24) >> 1)
    {
      sub_1C6FB505C();
      v8 = v16;
    }

    *(v8 + 16) = v9 + 1;
    *(v8 + v9 + 32) = 1;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  sub_1C74BDDE0(a1, v6);
  v11 = v10;

  if (v11)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB505C();
      v8 = v17;
    }

    v12 = *(v8 + 16);
    if (v12 >= *(v8 + 24) >> 1)
    {
      sub_1C6FB505C();
      v8 = v18;
    }

    *(v8 + 16) = v12 + 1;
    *(v8 + v12 + 32) = 0;
  }

  if (sub_1C74BE11C(a1))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB505C();
      v8 = v19;
    }

    v13 = *(v8 + 16);
    if (v13 >= *(v8 + 24) >> 1)
    {
      sub_1C6FB505C();
      v8 = v20;
    }

    *(v8 + 16) = v13 + 1;
    *(v8 + v13 + 32) = 3;
  }

  else if (*(v2 + OBJC_IVAR____PNSafeAssetAnalyzer_computeIsUtilityForMemories) == 1)
  {
    sub_1C74BE2C8(a1, a2);
  }

  if (sub_1C74BE378(a1))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB505C();
      v8 = v21;
    }

    v14 = *(v8 + 16);
    if (v14 >= *(v8 + 24) >> 1)
    {
      sub_1C6FB505C();
      v8 = v22;
    }

    *(v8 + 16) = v14 + 1;
    *(v8 + v14 + 32) = 2;
  }

  return v8;
}

id sub_1C74BDD88(void *a1)
{
  v1 = [a1 clsProcessedSignals];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 isNSFWExplicit];

  return v3;
}

void sub_1C74BDDE0(void *a1, uint64_t a2)
{
  v3 = [a1 sceneAnalysisProperties];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 sceneAnalysisVersion];

    v28 = [objc_allocWithZone(PNAssetSafeForDisplayModelSet) initWithSceneAnalysisVersion_];
    v29 = [v28 tabooEventModel];
    if ((a2 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1C755165C();
      sub_1C6F65BE8(0, &qword_1EDD0CE08);
      sub_1C7080178(&qword_1EDD0CE00, &qword_1EDD0CE08);
      sub_1C7550FEC();
      a2 = v31;
      v6 = v32;
      v7 = v33;
      v8 = v34;
      v9 = v35;
    }

    else
    {
      v10 = -1 << *(a2 + 32);
      v6 = a2 + 56;
      v7 = ~v10;
      v11 = -v10;
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      else
      {
        v12 = -1;
      }

      v9 = v12 & *(a2 + 56);
      sub_1C75504FC();
      v8 = 0;
    }

    v27 = v7;
    v13 = (v7 + 64) >> 6;
    while (1)
    {
      if (a2 < 0)
      {
        if (!sub_1C75516FC())
        {
          goto LABEL_28;
        }

        sub_1C6F65BE8(0, &qword_1EDD0CE08);
        swift_dynamicCast();
        v16 = v30;
        if (!v30)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v14 = v8;
        v15 = v9;
        if (!v9)
        {
          while (1)
          {
            v8 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            if (v8 >= v13)
            {
              goto LABEL_28;
            }

            v15 = *(v6 + 8 * v8);
            ++v14;
            if (v15)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          break;
        }

LABEL_14:
        v9 = (v15 - 1) & v15;
        v16 = *(*(a2 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v15)))));
        if (!v16)
        {
          goto LABEL_28;
        }
      }

      v17 = [v16 extendedSceneIdentifier];
      v18 = (v17 - 2147482871) > 8 || ((1 << (v17 + 9)) & 0x1B1) == 0;
      if (v18 || (v19 = v17, (v20 = [v29 nodeForSignalIdentifier_]) == 0))
      {
      }

      else
      {
        v21 = v20;
        v22 = &selRef_highPrecisionOperatingPoint;
        if ((v19 - 2147482875) >= 2)
        {
          v22 = &selRef_highRecallOperatingPoint;
        }

        [v20 *v22];
        v24 = v23;
        [v16 confidence];
        v26 = v25;

        if (v24 <= v26)
        {
LABEL_28:
          sub_1C7251404();

          return;
        }
      }
    }
  }

  __break(1u);
}

id sub_1C74BE11C(void *a1)
{
  [a1 clsContentScoreRecomputingIfNeeded_];
  v3 = v2;
  result = [a1 sceneAnalysisProperties];
  if (result)
  {
    v5 = result;
    v6 = [result sceneAnalysisVersion];

    if (v6 >= 100 && v3 > 0.25)
    {
      v9 = [a1 photosInfoPanelExtendedProperties];
      v10 = [v9 generativeAIType];

      if (!v10)
      {
        v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
      }

      if ([v10 integerValue] == 1 || (v11 = objc_msgSend(a1, sel_curationProperties), v12 = objc_msgSend(v11, sel_isDetectedScreenshot), v11, (v12 & 1) != 0) || !objc_msgSend(objc_opt_self(), sel_importedAssetInferredRelevant_, a1))
      {
        v8 = 1;
      }

      else
      {
        v13 = [a1 objectID];
        sub_1C700AB34();
        v8 = v14;
      }
    }

    else
    {
      v8 = 1;
    }

    return (v8 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C74BE2C8(uint64_t a1, id a2)
{
  v4 = [a2 curationSession];
  v5 = [v4 curationModelForAsset_];

  v6 = [a2 userFeedbackCalculator];
  v7 = [v5 isUtilityForMemoriesWithAsset:a1 userFeedbackCalculator:v6 blockSocialMediaImportedAssets:1];

  return v7;
}

uint64_t sub_1C74BE378(void *a1)
{
  result = [a1 clsFaceInformationSummary];
  if (result)
  {
    result = sub_1C74BF1AC(result);
    if (result)
    {
      v2 = sub_1C7080ED4(result);
      v3 = objc_opt_self();
      result = sub_1C74BF10C(v2, v3);
      if (result)
      {
        v4 = 0;
        v5 = result + 56;
        v6 = 1 << *(result + 32);
        if (v6 < 64)
        {
          v7 = ~(-1 << v6);
        }

        else
        {
          v7 = -1;
        }

        v8 = v7 & *(result + 56);
        v9 = (v6 + 63) >> 6;
        v28 = result;
        if (v8)
        {
          goto LABEL_12;
        }

        while (1)
        {
          v10 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            break;
          }

          if (v10 >= v9)
          {

            return 0;
          }

          v8 = *(v5 + 8 * v10);
          ++v4;
          if (v8)
          {
            v4 = v10;
            do
            {
LABEL_12:
              v11 = (*(result + 48) + ((v4 << 10) | (16 * __clz(__rbit64(v8)))));
              v13 = *v11;
              v12 = v11[1];
              sub_1C75504FC();
              v14 = sub_1C74BD6D0();
              if (*(v14 + 16))
              {
                sub_1C7551F3C();
                sub_1C75505AC();
                v15 = sub_1C7551FAC();
                v16 = ~(-1 << *(v14 + 32));
                while (1)
                {
                  v17 = v15 & v16;
                  if (((*(v14 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
                  {
                    break;
                  }

                  v18 = (*(v14 + 48) + 16 * v17);
                  if (*v18 != v13 || v18[1] != v12)
                  {
                    v20 = sub_1C7551DBC();
                    v15 = v17 + 1;
                    if ((v20 & 1) == 0)
                    {
                      continue;
                    }
                  }

                  return 1;
                }
              }

              v21 = sub_1C74BD5FC();
              if (*(v21 + 16))
              {
                sub_1C7551F3C();
                sub_1C75505AC();
                v22 = sub_1C7551FAC();
                v23 = ~(-1 << *(v21 + 32));
                while (1)
                {
                  v24 = v22 & v23;
                  if (((*(v21 + 56 + (((v22 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & v23)) & 1) == 0)
                  {
                    break;
                  }

                  v25 = (*(v21 + 48) + 16 * v24);
                  if (*v25 != v13 || v25[1] != v12)
                  {
                    v27 = sub_1C7551DBC();
                    v22 = v24 + 1;
                    if ((v27 & 1) == 0)
                    {
                      continue;
                    }
                  }

                  return 1;
                }
              }

              v8 &= v8 - 1;

              result = v28;
            }

            while (v8);
          }
        }

        __break(1u);
      }
    }
  }

  return result;
}

void sub_1C74BE628(unsigned __int16 a1, id a2)
{
  v3 = [a2 librarySpecificFetchOptions];
  v4 = [objc_opt_self() queryForAssetsInUtilityCollectionWithType:a1 options:v3];

  if (v4)
  {
    v5 = [v4 executeQuery];
    v6 = v5;
    if (v5 && (v7 = [v5 fetchedObjectIDsSet]) != 0)
    {
      v8 = v7;
      sub_1C6F65BE8(0, &qword_1EDD0FAB0);
      sub_1C7080178(&qword_1EDD0FAA8, &qword_1EDD0FAB0);
      sub_1C7550F8C();
    }

    else
    {
      if (sub_1C6FB6304())
      {
        sub_1C707F838(MEMORY[0x1E69E7CC0], v9, v10, v11, v12, v13, v14, v15, v31);
      }
    }
  }

  else
  {
    if (qword_1EC2141D0 != -1)
    {
      swift_once();
    }

    v16 = sub_1C754FF1C();
    __swift_project_value_buffer(v16, qword_1EC21C728);
    v17 = sub_1C754FEEC();
    v18 = sub_1C755119C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32 = v20;
      *v19 = 136315138;
      HIWORD(v31) = a1;
      type metadata accessor for PHUtilityCollectionType(0);
      v21 = sub_1C75506EC();
      v23 = sub_1C6F765A4(v21, v22, &v32);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1C6F5C000, v17, v18, "Unable to create query for PHUtilityCollectionType %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1CCA5F8E0](v20, -1, -1);
      MEMORY[0x1CCA5F8E0](v19, -1, -1);
    }

    if (sub_1C6FB6304())
    {
      sub_1C707F838(MEMORY[0x1E69E7CC0], v24, v25, v26, v27, v28, v29, v30, v31);
    }
  }
}

void sub_1C74BE8D0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C755BAB0;
  *(v4 + 32) = sub_1C755068C();
  *(v4 + 40) = v5;
  sub_1C6FCA0EC(v4, v3);
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C75604F0;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1C6F6D524();
  v8 = MEMORY[0x1E69E6530];
  v9 = MEMORY[0x1E69E65A8];
  *(v6 + 32) = 1701869940;
  *(v6 + 40) = 0xE400000000000000;
  *(v6 + 96) = v8;
  *(v6 + 104) = v9;
  *(v6 + 64) = v7;
  *(v6 + 72) = -1;
  v10 = sub_1C755112C();
  [v3 setPredicate_];

  v11 = [objc_opt_self() fetchPersonsWithOptions_];
  v12 = [v11 fetchedObjects];
  if (v12)
  {
    v13 = v12;
    v30 = v3;
    sub_1C6F65BE8(0, &qword_1EDD100F0);
    v14 = sub_1C7550B5C();

    v15 = sub_1C6FB6304();
    v16 = 0;
    v31 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v15 == v16)
      {

        v3 = v30;
        v28 = v31;
        goto LABEL_17;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1CCA5DDD0](v16, v14);
      }

      else
      {
        if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v17 = *(v14 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v20 = sub_1C70CAC04(v17);
      v22 = v21;

      ++v16;
      if (v22)
      {
        v23 = v31;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB1814();
          v23 = v26;
        }

        v24 = *(v23 + 16);
        v31 = v23;
        if (v24 >= *(v23 + 24) >> 1)
        {
          sub_1C6FB1814();
          v31 = v27;
        }

        *(v31 + 16) = v24 + 1;
        v25 = v31 + 16 * v24;
        *(v25 + 32) = v20;
        *(v25 + 40) = v22;
        v16 = v19;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v29 = sub_1C706D154(v28);

    *a2 = v29;
  }
}

uint64_t SafeAssetAnalyzer.eligibilityState(asset:curationContext:)(void *a1, void *a2)
{
  v3 = sub_1C74BDAA4(a1, a2);
  v5 = v4;
  [a1 clsContentScoreRecomputingIfNeeded_];
  if (v6 >= 0.5)
  {
    v8 = *(v3 + 16);

    if (v5)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    if (v8)
    {
      return 0;
    }

    else
    {
      return v9;
    }
  }

  else
  {

    return 0;
  }
}

id SafeAssetAnalyzer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SafeAssetAnalyzer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C74BED98()
{
  result = qword_1EC21C768;
  if (!qword_1EC21C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C768);
  }

  return result;
}

unint64_t sub_1C74BEDF0()
{
  result = qword_1EC21C770;
  if (!qword_1EC21C770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C770);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetSafetyFlag(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SafeAssetAnalyzer.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C74BF0B8()
{
  result = qword_1EC21C778;
  if (!qword_1EC21C778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C778);
  }

  return result;
}

uint64_t sub_1C74BF10C(uint64_t a1, void *a2)
{
  v3 = sub_1C7550F7C();

  v4 = [a2 uuidsFromLocalIdentifiers_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_1C7550F8C();

  return v5;
}

uint64_t sub_1C74BF1AC(void *a1)
{
  v2 = [a1 faceInformationByPersonLocalIdentifier];

  if (!v2)
  {
    return 0;
  }

  sub_1C6F65BE8(0, &unk_1EDD069A0);
  v3 = sub_1C75504AC();

  return v3;
}

uint64_t static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(uint64_t a1, void **a2)
{
  v3 = *a2;
  if (qword_1EDD0DBE8 != -1)
  {
    OUTLINED_FUNCTION_40_3();
    swift_once();
  }

  v4 = qword_1EDD28D40;
  type metadata accessor for PerformanceMeasure();
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  v5 = v4;
  PerformanceMeasure.init(name:log:)();
  if (*(a1 + 16))
  {
    StoryGenerationCache.momentUUIDByAssetUUID(for:)();
    v7 = v6;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C74C4334();
    v9 = v8;

    if (*(v9 + 16))
    {
      if (qword_1EDD0DBE0 != -1)
      {
        OUTLINED_FUNCTION_1_147();
      }

      v10 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v10, qword_1EDD28D28);
      sub_1C75504FC();

      v11 = sub_1C754FEEC();
      v12 = sub_1C755117C();
      if (OUTLINED_FUNCTION_128(v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 134218240;
        *(v13 + 4) = *(v7 + 16);

        *(v13 + 12) = 2048;
        *(v13 + 14) = *(v9 + 16);

        _os_log_impl(&dword_1C6F5C000, v11, v12, "Fetching moment UUIDs found %ld cached momentUUIDs, will fetch for remaining %ld assets", v13, 0x16u);
        OUTLINED_FUNCTION_109();
      }

      else
      {
      }

      v23 = sub_1C74C11E4(v9, v3);

      v24 = sub_1C75504FC();
      StoryGenerationCache.cache(momentUUIDByAssetUUID:)(v24);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v23;
      sub_1C74C9614(v7, sub_1C6F78094, 0, isUniquelyReferenced_nonNull_native, &v27);
      v7 = v27;
    }

    else
    {

      if (qword_1EDD0DBE0 != -1)
      {
        OUTLINED_FUNCTION_1_147();
      }

      v19 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v19, qword_1EDD28D28);
      sub_1C75504FC();
      v20 = sub_1C754FEEC();
      v21 = sub_1C755117C();
      if (OUTLINED_FUNCTION_128(v21))
      {
        v22 = swift_slowAlloc();
        OUTLINED_FUNCTION_159(v22, 3.852e-34);
        _os_log_impl(&dword_1C6F5C000, v20, v21, "Fetched moment UUIDs for %ld assets out of the cache", v22, 0xCu);
        OUTLINED_FUNCTION_109();
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_1EDD0DBE0 != -1)
    {
      OUTLINED_FUNCTION_1_147();
    }

    v14 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v14, qword_1EDD28D28);
    v15 = sub_1C754FEEC();
    v16 = sub_1C755117C();
    if (OUTLINED_FUNCTION_128(v16))
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_157_4(&dword_1C6F5C000, v17, v18, "No asset UUIDs provided, will not fetch moments");
      OUTLINED_FUNCTION_0_60();
    }

    v7 = MEMORY[0x1E69E7CC8];
  }

  sub_1C6F85170();

  return v7;
}

void static StoryGenerationUtilities.momentLocalStartDateByMomentUUID(for:storyPhotoLibraryContext:)()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_19_1();
  v1 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_14();
  v93 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  v7 = OUTLINED_FUNCTION_76(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_78();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v83 - v12;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217068);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_78();
  v94 = v15 - v16;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_137_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_99_18(v19, v20, v21, v22, v23, v24, v25, v26, v83[0]);
  if (v27)
  {
    v28 = OUTLINED_FUNCTION_79_21() + 64;
    OUTLINED_FUNCTION_13_75();
    v31 = v30 & v29;
    v33 = (v32 + 63) >> 6;
    v90 = (v3 + 32);
    v83[1] = v3 + 40;
    v95 = v34;
    sub_1C75504FC();
    v35 = 0;
    v97 = MEMORY[0x1E69E7CC8];
    v91 = v1;
    v92 = v13;
    v87 = v33;
    v88 = v28;
    v89 = v0;
    v86 = v3;
    v84 = v10;
    if (v31)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v33)
      {

        OUTLINED_FUNCTION_25_0();
        return;
      }

      v31 = *(v28 + 8 * v36);
      ++v35;
      if (v31)
      {
        v35 = v36;
        while (1)
        {
LABEL_7:
          v37 = __clz(__rbit64(v31)) | (v35 << 6);
          v38 = *(v95 + 56);
          v39 = (*(v95 + 48) + 16 * v37);
          v41 = *v39;
          v40 = v39[1];
          v42 = type metadata accessor for MomentInformation();
          OUTLINED_FUNCTION_76(v42);
          v44 = v38 + *(v43 + 72) * v37;
          v45 = v98;
          v46 = v99;
          sub_1C74C9C60(v44, v99 + *(v98 + 48));
          *v46 = v41;
          v46[1] = v40;
          sub_1C712A774(v46, v0, &qword_1EC217068);
          v47 = *v0;
          v96 = v0[1];
          v48 = v94;
          sub_1C712A774(v46, v94, &qword_1EC217068);
          sub_1C75504FC();

          v49 = *(v45 + 48);
          v50 = v92;
          sub_1C712A774(v48 + v49, v92, &unk_1EC219230);
          sub_1C74C9CB8(v48 + v49, type metadata accessor for MomentInformation);
          v51 = v91;
          if (__swift_getEnumTagSinglePayload(v50, 1, v91) == 1)
          {
            sub_1C6FD7FC8(v50, &unk_1EC219230);
            v52 = v47;
            v53 = v97;
            v54 = sub_1C6F78124(v52, v96);
            v56 = v55;

            v57 = v84;
            if (v56)
            {
              swift_isUniquelyReferenced_nonNull_native();
              v100 = v53;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216738);
              OUTLINED_FUNCTION_151_7();
              sub_1C7551A2C();
              OUTLINED_FUNCTION_160_7();
              (*(v86 + 32))(v57, *(v53 + 56) + *(v86 + 72) * v54, v51);
              v97 = v53;
              sub_1C7551A4C();
              sub_1C6FD7FC8(v99, &qword_1EC217068);
              v58 = 0;
            }

            else
            {
              sub_1C6FD7FC8(v99, &qword_1EC217068);
              v58 = 1;
            }

            v0 = v89;
            __swift_storeEnumTagSinglePayload(v57, v58, 1, v51);
            sub_1C6FD7FC8(v57, &unk_1EC219230);
          }

          else
          {
            v59 = v51;
            v85 = *v90;
            v85(v93, v50, v51);
            v60 = v97;
            swift_isUniquelyReferenced_nonNull_native();
            v100 = v60;
            v61 = v96;
            v62 = sub_1C6F78124(v47, v96);
            if (__OFADD__(*(v60 + 16), (v63 & 1) == 0))
            {
              goto LABEL_30;
            }

            v64 = v62;
            v65 = v63;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216738);
            OUTLINED_FUNCTION_151_7();
            if (sub_1C7551A2C())
            {
              sub_1C6F78124(v47, v61);
              OUTLINED_FUNCTION_5_1();
              if (!v67)
              {
                sub_1C7551E4C();
                __break(1u);
                return;
              }

              v64 = v66;
            }

            v68 = v59;
            v69 = v86;
            v0 = v89;
            if (v65)
            {

              v97 = v100;
              (*(v69 + 40))(*(v100 + 56) + *(v69 + 72) * v64, v93, v68);
              sub_1C6FD7FC8(v99, &qword_1EC217068);
            }

            else
            {
              v70 = v100;
              OUTLINED_FUNCTION_198_1();
              OUTLINED_FUNCTION_2_27(v71);
              v73 = (v72 + 16 * v64);
              *v73 = v74;
              v73[1] = v61;
              v85(*(v70 + 56) + *(v69 + 72) * v64, v93, v68);
              sub_1C6FD7FC8(v99, &qword_1EC217068);
              OUTLINED_FUNCTION_43_1();
              if (v76)
              {
                goto LABEL_31;
              }

              v97 = v70;
              *(v70 + 16) = v75;
            }
          }

          OUTLINED_FUNCTION_49_37();
        }
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (qword_1EDD0DBE0 != -1)
  {
LABEL_32:
    OUTLINED_FUNCTION_1_147();
  }

  v77 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v77, qword_1EDD28D28);
  v78 = sub_1C754FEEC();
  v79 = sub_1C755117C();
  if (os_log_type_enabled(v78, v79))
  {
    *OUTLINED_FUNCTION_127() = 0;
    OUTLINED_FUNCTION_9_87(&dword_1C6F5C000, v80, v81, "No moment UUIDs provided, will not fetch moment local start dates");
    OUTLINED_FUNCTION_109();
  }

  OUTLINED_FUNCTION_25_0();

  sub_1C75504DC();
}

uint64_t static StoryGenerationUtilities.assetObjectIDs(for:storyPhotoLibraryContext:)(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (qword_1EDD0DBE8 != -1)
  {
    OUTLINED_FUNCTION_40_3();
    swift_once();
  }

  v5 = qword_1EDD28D40;
  type metadata accessor for PerformanceMeasure();
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  v6 = v5;
  PerformanceMeasure.init(name:log:)();
  if (*(a1 + 16))
  {
    v7 = StoryGenerationCache.cachedObjectIDByAssetUUID(for:)();
    v8 = sub_1C75504FC();
    v9 = sub_1C71CDA94(v8);
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C74C4334();
    v11 = v10;

    if (*(v11 + 16))
    {
      if (qword_1EDD0DBE0 != -1)
      {
        OUTLINED_FUNCTION_1_147();
      }

      v12 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v12, qword_1EDD28D28);
      swift_retain_n();
      sub_1C75504FC();
      v13 = sub_1C754FEEC();
      v14 = sub_1C755117C();
      if (OUTLINED_FUNCTION_128(v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 134218240;
        v16 = v4;
        v17 = v3;
        v18 = *(v7 + 16);

        *(v15 + 4) = v18;

        *(v15 + 12) = 2048;
        v19 = *(v11 + 16);

        *(v15 + 14) = v19;
        v3 = v17;
        v4 = v16;

        _os_log_impl(&dword_1C6F5C000, v13, v14, "Fetching objectIDs UUIDs found %ld cached objectIDs, will fetch for remaining %ld assets", v15, 0x16u);
        OUTLINED_FUNCTION_109();
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v29 = objc_autoreleasePoolPush();
      sub_1C74C1FC0(v3, v4, &v32);
      objc_autoreleasePoolPop(v29);

      v30 = v32;
      v32 = v9;
      sub_1C6FD3044(v30);
      v9 = v32;
    }

    else
    {

      if (qword_1EDD0DBE0 != -1)
      {
        OUTLINED_FUNCTION_1_147();
      }

      v25 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v25, qword_1EDD28D28);
      sub_1C75504FC();
      v26 = sub_1C754FEEC();
      v27 = sub_1C755117C();
      if (OUTLINED_FUNCTION_128(v27))
      {
        v28 = swift_slowAlloc();
        OUTLINED_FUNCTION_158_5(v28, 3.852e-34);
        _os_log_impl(&dword_1C6F5C000, v26, v27, "Fetched objectIDs for %ld assets out of the cache", v28, 0xCu);
        OUTLINED_FUNCTION_109();
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_1EDD0DBE0 != -1)
    {
      OUTLINED_FUNCTION_1_147();
    }

    v20 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v20, qword_1EDD28D28);
    v21 = sub_1C754FEEC();
    v22 = sub_1C755117C();
    if (OUTLINED_FUNCTION_128(v22))
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_157_4(&dword_1C6F5C000, v23, v24, "No asset UUIDs provided, will not fetch objectIDs");
      OUTLINED_FUNCTION_0_60();
    }

    v9 = MEMORY[0x1E69E7CC0];
  }

  sub_1C6F85170();

  return v9;
}

uint64_t static StoryGenerationUtilities.assetUUIDsByTripUUID(for:in:)()
{
  v0 = objc_autoreleasePoolPush();
  v1 = OUTLINED_FUNCTION_90();
  sub_1C74C1C5C(v1, v2);
  objc_autoreleasePoolPop(v0);
  return v4;
}

uint64_t static StoryGenerationUtilities.assetUUIDsByMomentUUID(for:storyPhotoLibraryContext:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v7 = *a2;
  v8 = v3;
  v9 = v4;
  v5 = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(a1, &v7);
  static StoryGenerationUtilities.assetUUIDsByMomentUUID(for:)(v5);
  OUTLINED_FUNCTION_24_2();

  return v2;
}

uint64_t static StoryGenerationUtilities.momentByAssetUUID(for:storyPhotoLibraryContext:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 8);
  v4 = objc_autoreleasePoolPush();
  v5 = OUTLINED_FUNCTION_90();
  sub_1C74C0AD4(v5, v6, v3, v2, v7);
  objc_autoreleasePoolPop(v4);
  return v9;
}

uint64_t static StoryGenerationUtilities.assetUUIDsByMomentUUID(for:)(uint64_t a1)
{
  v1 = a1 + 64;
  OUTLINED_FUNCTION_13_75();
  v4 = v3 & v2;
  v6 = (v5 + 63) >> 6;
  v41 = v7;
  sub_1C75504FC();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC8];
  v39 = v6;
  v40 = v1;
  if (!v4)
  {
    goto LABEL_2;
  }

LABEL_6:
  while (1)
  {
    v11 = (v8 << 10) | (16 * __clz(__rbit64(v4)));
    v12 = (*(v41 + 48) + v11);
    v13 = v12[1];
    v42 = *v12;
    v14 = (*(v41 + 56) + v11);
    v16 = *v14;
    v15 = v14[1];
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C6F78124(v16, v15);
    OUTLINED_FUNCTION_31_1();
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v21 = v17;
    v22 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DC0);
    if (sub_1C7551A2C())
    {
      v23 = sub_1C6F78124(v16, v15);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_24;
      }

      v21 = v23;
    }

    if (v22)
    {
    }

    else
    {
      OUTLINED_FUNCTION_198_1();
      OUTLINED_FUNCTION_2_27(v25);
      v27 = (v26 + 16 * v21);
      *v27 = v16;
      v27[1] = v15;
      *(*(v9 + 56) + 8 * v21) = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_43_1();
      if (v29)
      {
        goto LABEL_23;
      }

      *(v9 + 16) = v28;
    }

    v30 = *(v9 + 56);
    v31 = *(v30 + 8 * v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v30 + 8 * v21) = v31;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C6FB1814();
      v31 = v36;
      *(v30 + 8 * v21) = v36;
    }

    v33 = *(v31 + 16);
    if (v33 >= *(v31 + 24) >> 1)
    {
      sub_1C6FB1814();
      *(v30 + 8 * v21) = v37;
    }

    v4 &= v4 - 1;

    v34 = *(v30 + 8 * v21);
    *(v34 + 16) = v33 + 1;
    v35 = v34 + 16 * v33;
    *(v35 + 32) = v42;
    *(v35 + 40) = v13;
    v6 = v39;
    v1 = v40;
    if (!v4)
    {
LABEL_2:
      while (1)
      {
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v10 >= v6)
        {

          return v9;
        }

        v4 = *(v1 + 8 * v10);
        ++v8;
        if (v4)
        {
          v8 = v10;
          goto LABEL_6;
        }
      }

      __break(1u);
      break;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

void static StoryGenerationUtilities.momentUniversalDateIntervalByMomentUUID(for:storyPhotoLibraryContext:)()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_19_1();
  v1 = sub_1C754D8BC();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_14();
  v90 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216FF8);
  v7 = OUTLINED_FUNCTION_76(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_78();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v92 = v83 - v12;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217068);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_78();
  v91 = v14 - v15;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_137_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_99_18(v18, v19, v20, v21, v22, v23, v24, v25, v83[0]);
  if (v26)
  {
    v84 = v10;
    v27 = OUTLINED_FUNCTION_79_21() + 64;
    OUTLINED_FUNCTION_13_75();
    v30 = v29 & v28;
    v32 = (v31 + 63) >> 6;
    v89 = (v3 + 32);
    v85 = v3;
    v83[1] = v3 + 40;
    v93 = v33;
    sub_1C75504FC();
    v34 = 0;
    v97 = MEMORY[0x1E69E7CC8];
    v86 = v32;
    v87 = v27;
    v94 = v1;
    v88 = v0;
    if (v30)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v35 >= v32)
      {

        OUTLINED_FUNCTION_25_0();
        return;
      }

      v30 = *(v27 + 8 * v35);
      ++v34;
      if (v30)
      {
        v34 = v35;
        while (1)
        {
LABEL_7:
          v36 = __clz(__rbit64(v30)) | (v34 << 6);
          v37 = *(v93 + 56);
          v38 = (*(v93 + 48) + 16 * v36);
          v40 = *v38;
          v39 = v38[1];
          v41 = (type metadata accessor for MomentInformation() - 8);
          v42 = v37 + *(*v41 + 72) * v36;
          v44 = v98;
          v43 = v99;
          sub_1C74C9C60(v42, v99 + *(v98 + 48));
          *v43 = v40;
          v43[1] = v39;
          sub_1C712A774(v43, v0, &qword_1EC217068);
          v45 = v0[1];
          v95 = *v0;
          v96 = v45;
          v46 = v91;
          sub_1C712A774(v43, v91, &qword_1EC217068);
          sub_1C75504FC();

          v47 = v46 + *(v44 + 48) + v41[7];
          v48 = v92;
          sub_1C712A774(v47, v92, &qword_1EC216FF8);
          v49 = OUTLINED_FUNCTION_90();
          sub_1C74C9CB8(v49, v50);
          v51 = v94;
          if (__swift_getEnumTagSinglePayload(v48, 1, v94) == 1)
          {
            sub_1C6FD7FC8(v48, &qword_1EC216FF8);
            v52 = v97;
            v53 = sub_1C6F78124(v95, v96);
            v55 = v54;

            if (v55)
            {
              swift_isUniquelyReferenced_nonNull_native();
              v100 = v52;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C780);
              OUTLINED_FUNCTION_151_7();
              sub_1C7551A2C();
              OUTLINED_FUNCTION_160_7();
              v56 = v84;
              (*(v85 + 32))(v84, *(v52 + 56) + *(v85 + 72) * v53, v51);
              v97 = v52;
              sub_1C7551A4C();
              sub_1C6FD7FC8(v99, &qword_1EC217068);
              v57 = 0;
            }

            else
            {
              sub_1C6FD7FC8(v99, &qword_1EC217068);
              v57 = 1;
              v56 = v84;
            }

            v0 = v88;
            __swift_storeEnumTagSinglePayload(v56, v57, 1, v51);
            sub_1C6FD7FC8(v56, &qword_1EC216FF8);
          }

          else
          {
            v58 = *v89;
            (*v89)(v90, v48, v51);
            v59 = v97;
            swift_isUniquelyReferenced_nonNull_native();
            v100 = v59;
            v61 = v95;
            v60 = v96;
            sub_1C6F78124(v95, v96);
            OUTLINED_FUNCTION_31_1();
            if (__OFADD__(v64, v65))
            {
              goto LABEL_30;
            }

            v66 = v62;
            v67 = v63;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C780);
            OUTLINED_FUNCTION_151_7();
            if (sub_1C7551A2C())
            {
              v68 = v61;
              sub_1C6F78124(v61, v60);
              OUTLINED_FUNCTION_5_1();
              v0 = v88;
              if (!v70)
              {
                sub_1C7551E4C();
                __break(1u);
                return;
              }

              v66 = v69;
              if (v67)
              {
LABEL_20:

                v97 = v100;
                (*(v85 + 40))(*(v100 + 56) + *(v85 + 72) * v66, v90, v94);
                sub_1C6FD7FC8(v99, &qword_1EC217068);
                goto LABEL_21;
              }
            }

            else
            {
              v68 = v61;
              v0 = v88;
              if (v67)
              {
                goto LABEL_20;
              }
            }

            v71 = v100;
            OUTLINED_FUNCTION_198_1();
            OUTLINED_FUNCTION_2_27(v72);
            v74 = (v73 + 16 * v66);
            *v74 = v68;
            v74[1] = v60;
            v58(*(v71 + 56) + *(v85 + 72) * v66, v90, v94);
            sub_1C6FD7FC8(v99, &qword_1EC217068);
            OUTLINED_FUNCTION_43_1();
            if (v76)
            {
              goto LABEL_31;
            }

            v97 = v71;
            *(v71 + 16) = v75;
          }

LABEL_21:
          OUTLINED_FUNCTION_49_37();
        }
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (qword_1EDD0DBE0 != -1)
  {
LABEL_32:
    OUTLINED_FUNCTION_1_147();
  }

  v77 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v77, qword_1EDD28D28);
  v78 = sub_1C754FEEC();
  v79 = sub_1C755117C();
  if (os_log_type_enabled(v78, v79))
  {
    *OUTLINED_FUNCTION_127() = 0;
    OUTLINED_FUNCTION_9_87(&dword_1C6F5C000, v80, v81, "No moment UUIDs provided, will not fetch moment date intervals");
    OUTLINED_FUNCTION_109();
  }

  OUTLINED_FUNCTION_25_0();

  sub_1C75504DC();
}

uint64_t sub_1C74C0AD4@<X0>(uint64_t a1@<X0>, uint64_t isUniquelyReferenced_nonNull_native@<X1>, __int16 a3@<W2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  LOWORD(v6) = a3;
  if (qword_1EDD0DBE8 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v9 = qword_1EDD28D40;
    type metadata accessor for PerformanceMeasure();
    OUTLINED_FUNCTION_40_4();
    swift_allocObject();
    v10 = v9;
    PerformanceMeasure.init(name:log:)();
    v11 = sub_1C75504FC();
    v70 = a1;
    v12 = sub_1C706D154(v11);
    v76 = isUniquelyReferenced_nonNull_native;
    v77 = v6;
    v78 = a4;
    v13 = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v12, &v76);

    v14 = sub_1C75504FC();
    v79 = v13;
    v15 = sub_1C706D87C(v14);
    a4 = [isUniquelyReferenced_nonNull_native librarySpecificFetchOptions];
    [a4 setSharingFilter_];
    sub_1C6F65BE8(0, &qword_1EDD0FAD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1C75604F0;
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1C6F6D524();
    *(v16 + 32) = 1684632949;
    *(v16 + 40) = 0xE400000000000000;
    *(v16 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
    *(v16 + 104) = sub_1C7067A60();
    *(v16 + 72) = v15;
    v17 = sub_1C755112C();
    [a4 setPredicate_];

    sub_1C6F65BE8(0, &qword_1EDD0CCF0);
    v72 = a4;
    v18 = [swift_getObjCClassFromMetadata() fetchMomentsWithOptions_];
    v19 = [v18 fetchedObjects];

    if (!v19)
    {
      break;
    }

    sub_1C6F65BE8(0, &qword_1EDD0FA88);
    isUniquelyReferenced_nonNull_native = sub_1C7550B5C();

    sub_1C71BC3B0();
    v21 = v20;

    if (!v21)
    {
      break;
    }

    if (sub_1C6FB6304() < 1)
    {

      break;
    }

    v6 = sub_1C6FB6304();
    v22 = 0;
    v74 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v6 == v22)
      {

        v39 = 0;
        v40 = *(v70 + 16);
        v69 = MEMORY[0x1E69E7CC8];
        v41 = v70 + 40;
        v42 = v79;
        v71 = v70 + 40;
LABEL_24:
        v6 = (v41 + 16 * v39);
        while (v40 != v39)
        {
          if (v39 >= v40)
          {
            goto LABEL_50;
          }

          v43 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            goto LABEL_51;
          }

          if (*(v42 + 16))
          {
            v44 = *(v6 - 1);
            a1 = *v6;
            sub_1C75504FC();
            v45 = sub_1C6F78124(v44, a1);
            if (v46)
            {
              if (v74[2])
              {
                v47 = (*(v79 + 56) + 16 * v45);
                v48 = *v47;
                isUniquelyReferenced_nonNull_native = v47[1];
                sub_1C75504FC();
                v49 = sub_1C6F78124(v48, isUniquelyReferenced_nonNull_native);
                a4 = v50;

                if (a4)
                {
                  v67 = *(v74[7] + 8 * v49);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v76 = v69;
                  sub_1C6F78124(v44, a1);
                  OUTLINED_FUNCTION_31_1();
                  if (__OFADD__(v53, v54))
                  {
                    goto LABEL_55;
                  }

                  a4 = v51;
                  v55 = v52;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C788);
                  if (sub_1C7551A2C())
                  {
                    sub_1C6F78124(v44, a1);
                    OUTLINED_FUNCTION_5_1();
                    if (!v57)
                    {
                      goto LABEL_57;
                    }

                    a4 = v56;
                  }

                  v42 = v79;
                  v58 = v76;
                  v69 = v76;
                  if (v55)
                  {
                    v59 = v76[7];
                    v60 = *(v59 + 8 * a4);
                    *(v59 + 8 * a4) = v67;
                  }

                  else
                  {
                    v76[(a4 >> 6) + 8] |= 1 << a4;
                    v61 = (v58[6] + 16 * a4);
                    *v61 = v44;
                    v61[1] = a1;
                    *(v58[7] + 8 * a4) = v67;

                    v62 = v58[2];
                    v36 = __OFADD__(v62, 1);
                    v63 = v62 + 1;
                    if (v36)
                    {
                      goto LABEL_56;
                    }

                    v58[2] = v63;
                  }

                  v41 = v71;
                  v39 = v43;
                  goto LABEL_24;
                }
              }
            }

            v42 = v79;
          }

          ++v39;
          v6 += 2;
        }

        v64 = v69;
        goto LABEL_47;
      }

      if ((v21 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1CCA5DDD0](v22, v21);
      }

      else
      {
        if (v22 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v23 = *(v21 + 8 * v22 + 32);
      }

      isUniquelyReferenced_nonNull_native = v23;
      v24 = (v22 + 1);
      if (__OFADD__(v22, 1))
      {
        break;
      }

      v25 = sub_1C70CAC04(v23);
      if (v26)
      {
        a1 = v25;
        a4 = v26;
        v68 = isUniquelyReferenced_nonNull_native;
        v27 = v74;
        swift_isUniquelyReferenced_nonNull_native();
        v76 = v74;
        v66 = sub_1C6F78124(a1, a4);
        v75 = v28;
        if (__OFADD__(v27[2], (v28 & 1) == 0))
        {
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          result = sub_1C7551E4C();
          __break(1u);
          return result;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C788);
        if (sub_1C7551A2C())
        {
          v29 = sub_1C6F78124(a1, a4);
          if ((v75 & 1) != (v30 & 1))
          {
            goto LABEL_57;
          }

          isUniquelyReferenced_nonNull_native = v29;
          if (v75)
          {
LABEL_20:

            v74 = v76;
            v37 = v76[7];
            v38 = *(v37 + 8 * isUniquelyReferenced_nonNull_native);
            *(v37 + 8 * isUniquelyReferenced_nonNull_native) = v68;

            goto LABEL_21;
          }
        }

        else
        {
          isUniquelyReferenced_nonNull_native = v66;
          if (v75)
          {
            goto LABEL_20;
          }
        }

        v31 = v76;
        OUTLINED_FUNCTION_198_1();
        OUTLINED_FUNCTION_2_27(v32);
        v34 = (v33 + 16 * isUniquelyReferenced_nonNull_native);
        *v34 = a1;
        v34[1] = a4;
        *(v31[7] + 8 * isUniquelyReferenced_nonNull_native) = v68;

        OUTLINED_FUNCTION_43_1();
        if (v36)
        {
          goto LABEL_54;
        }

        v74 = v31;
        v31[2] = v35;
LABEL_21:
        v22 = v24;
      }

      else
      {

        v22 = (v22 + 1);
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    OUTLINED_FUNCTION_40_3();
    swift_once();
  }

  sub_1C755119C();
  sub_1C754FDFC();
  v64 = sub_1C75504DC();

LABEL_47:
  *a5 = v64;
  sub_1C6F85170();
}

uint64_t sub_1C74C11E4(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  sub_1C74C1240(a1, a2, &v6);
  objc_autoreleasePoolPop(v4);
  return v6;
}

uint64_t sub_1C74C1240@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (qword_1EDD0DBE8 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDD28D40;
  type metadata accessor for PerformanceMeasure();
  swift_allocObject();
  v7 = v6;
  PerformanceMeasure.init(name:log:)();
  if (*(a1 + 16))
  {
    v8 = [a2 librarySpecificFetchOptions];
    v9 = objc_opt_self();
    v10 = sub_1C75504FC();
    sub_1C71CD85C(v10);
    v11 = sub_1C7550B3C();

    v12 = [v9 fetchMomentUUIDByAssetUUIDForAssetUUIDs:v11 options:v8];

    if (v12)
    {
      v13 = sub_1C75504AC();

      v8 = v12;
    }

    else
    {
      v13 = sub_1C75504DC();
    }
  }

  else
  {
    if (qword_1EDD0DBE0 != -1)
    {
      swift_once();
    }

    v14 = sub_1C754FF1C();
    __swift_project_value_buffer(v14, qword_1EDD28D28);
    v8 = sub_1C754FEEC();
    v15 = sub_1C755117C();
    if (os_log_type_enabled(v8, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1C6F5C000, v8, v15, "No asset UUIDs provided, will not fetch moments", v16, 2u);
      MEMORY[0x1CCA5F8E0](v16, -1, -1);
    }

    v13 = MEMORY[0x1E69E7CC8];
  }

  *a3 = v13;
  sub_1C6F85170();
}

uint64_t sub_1C74C14A4(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (qword_1EDD0DBE8 != -1)
  {
    OUTLINED_FUNCTION_40_3();
    swift_once();
  }

  v5 = qword_1EDD28D40;
  type metadata accessor for PerformanceMeasure();
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  v6 = v5;
  PerformanceMeasure.init(name:log:)();
  if (qword_1EDD0DBE0 != -1)
  {
    OUTLINED_FUNCTION_1_147();
  }

  v7 = sub_1C754FF1C();
  __swift_project_value_buffer(v7, qword_1EDD28D28);
  sub_1C75504FC();
  v8 = sub_1C754FEEC();
  v9 = sub_1C755117C();
  if (OUTLINED_FUNCTION_128(v9))
  {
    v10 = swift_slowAlloc();
    OUTLINED_FUNCTION_159(v10, 3.852e-34);
    _os_log_impl(&dword_1C6F5C000, v8, v9, "Fetching moment information for %ld moments", v10, 0xCu);
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  v11 = StoryGenerationCache.momentInformationByMomentUUID(for:)();
  sub_1C75504FC();
  sub_1C74C4334();
  v13 = v12;
  sub_1C75504FC();

  v14 = sub_1C754FEEC();
  v15 = sub_1C755117C();
  if (OUTLINED_FUNCTION_128(v15))
  {
    v16 = swift_slowAlloc();
    OUTLINED_FUNCTION_158_5(v16, 3.8521e-34);
    *(v16 + 12) = 2048;
    *(v16 + 14) = *(v13 + 16);

    _os_log_impl(&dword_1C6F5C000, v14, v15, "Fetching moment local start dates found %ld cached momentUUIDs, will fetch for remaining %ld moments", v16, 0x16u);
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  if (*(v13 + 16))
  {
    v17 = objc_autoreleasePoolPush();
    sub_1C74C178C(v2, v3, v4, v13, &v21);
    objc_autoreleasePoolPop(v17);

    v18 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v18;
    sub_1C74C98D0(v11, sub_1C70BAAFC, 0, isUniquelyReferenced_nonNull_native, &v21);
    v11 = v21;
  }

  else
  {
  }

  sub_1C6F85170();

  return v11;
}

void sub_1C74C178C(void *a1@<X0>, unsigned __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v48 = a3;
  v49 = a5;
  v8 = type metadata accessor for MomentInformation();
  v52 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = &v46 - v13;
  v15 = [a1 librarySpecificFetchOptions];
  [v15 setSharingFilter_];
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C75604F0;
  *(v16 + 56) = MEMORY[0x1E69E6158];
  *(v16 + 64) = sub_1C6F6D524();
  *(v16 + 32) = 1684632949;
  *(v16 + 40) = 0xE400000000000000;
  *(v16 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
  *(v16 + 104) = sub_1C7067A60();
  *(v16 + 72) = a4;
  sub_1C75504FC();
  v17 = sub_1C755112C();
  [v15 setPredicate_];

  sub_1C6F65BE8(0, &qword_1EDD0CCF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v47 = v15;
  v19 = [ObjCClassFromMetadata fetchMomentsWithOptions_];
  v20 = [v19 count];
  if ((v20 & 0x8000000000000000) != 0)
  {
    goto LABEL_24;
  }

  v21 = v20;
  if (!v20)
  {
    v23 = MEMORY[0x1E69E7CC8];
LABEL_21:
    StoryGenerationCache.cache(_:)(v23);

    *v49 = v23;
    return;
  }

  v22 = 0;
  v23 = MEMORY[0x1E69E7CC8];
  v50 = v19;
  v51 = v14;
  v53 = v20;
  while (1)
  {
    v24 = [v19 objectAtIndexedSubscript_];
    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (v25)
    {
      break;
    }

LABEL_18:
    if (v21 == ++v22)
    {
      goto LABEL_21;
    }
  }

  v26 = v25;
  v27 = v24;
  v28 = sub_1C6FCA214(v26);
  if (!v29)
  {

LABEL_17:
    v21 = v53;
    goto LABEL_18;
  }

  v30 = v28;
  v31 = v29;
  v54 = v27;
  sub_1C70B980C(v26, v14);
  v32 = v14;
  v33 = v10;
  sub_1C74C9C60(v32, v10);
  swift_isUniquelyReferenced_nonNull_native();
  v55 = v23;
  v34 = sub_1C6F78124(v30, v31);
  if (!__OFADD__(v23[2], (v35 & 1) == 0))
  {
    v36 = v34;
    v37 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217060);
    if (sub_1C7551A2C())
    {
      v38 = sub_1C6F78124(v30, v31);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_25;
      }

      v36 = v38;
    }

    if (v37)
    {

      v23 = v55;
      v40 = v55[7] + *(v52 + 72) * v36;
      v10 = v33;
      sub_1C74C9DB0(v33, v40);

      v14 = v51;
      sub_1C74C9CB8(v51, type metadata accessor for MomentInformation);
    }

    else
    {
      v23 = v55;
      v55[(v36 >> 6) + 8] |= 1 << v36;
      v41 = (v23[6] + 16 * v36);
      *v41 = v30;
      v41[1] = v31;
      v42 = v23[7] + *(v52 + 72) * v36;
      v10 = v33;
      sub_1C74C9D58(v33, v42);

      v14 = v51;
      sub_1C74C9CB8(v51, type metadata accessor for MomentInformation);
      v43 = v23[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_23;
      }

      v23[2] = v45;
    }

    v19 = v50;
    goto LABEL_17;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_1C7551E4C();
  __break(1u);
}

void sub_1C74C1C5C(void *a1@<X0>, void *a2@<X8>)
{
  v2 = [a1 librarySpecificFetchOptions];
  v3 = objc_opt_self();
  v4 = sub_1C75504FC();
  sub_1C71CD85C(v4);
  v5 = sub_1C7550B3C();

  v39 = v2;
  v6 = [v3 fetchTripHighlightUUIDByAssetUUIDForAssetUUIDs:v5 options:v2];

  v7 = sub_1C75504AC();
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v43 = v7;
  sub_1C75504FC();
  v13 = 0;
  v14 = MEMORY[0x1E69E7CC8];
  v41 = v12;
  v42 = v8;
  if (v11)
  {
LABEL_8:
    while (1)
    {
      v16 = (v13 << 10) | (16 * __clz(__rbit64(v11)));
      v17 = (*(v43 + 48) + v16);
      v44 = v17[1];
      v45 = *v17;
      v18 = (*(v43 + 56) + v16);
      v19 = *v18;
      v20 = v18[1];
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_isUniquelyReferenced_nonNull_native();
      v21 = sub_1C6F78124(v19, v20);
      if (__OFADD__(v14[2], (v22 & 1) == 0))
      {
        break;
      }

      v23 = v21;
      v24 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DC0);
      if (sub_1C7551A2C())
      {
        v25 = sub_1C6F78124(v19, v20);
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_26;
        }

        v23 = v25;
      }

      if (v24)
      {
      }

      else
      {
        v14[(v23 >> 6) + 8] |= 1 << v23;
        v27 = (v14[6] + 16 * v23);
        *v27 = v19;
        v27[1] = v20;
        *(v14[7] + 8 * v23) = MEMORY[0x1E69E7CC0];
        v28 = v14[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_25;
        }

        v14[2] = v30;
      }

      v31 = v14[7];
      v32 = *(v31 + 8 * v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v31 + 8 * v23) = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C6FB1814();
        v32 = v37;
        *(v31 + 8 * v23) = v37;
      }

      v34 = *(v32 + 16);
      if (v34 >= *(v32 + 24) >> 1)
      {
        sub_1C6FB1814();
        *(v31 + 8 * v23) = v38;
      }

      v11 &= v11 - 1;

      v35 = *(v31 + 8 * v23);
      *(v35 + 16) = v34 + 1;
      v36 = v35 + 16 * v34;
      *(v36 + 32) = v45;
      *(v36 + 40) = v44;
      v12 = v41;
      v8 = v42;
      if (!v11)
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
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= v12)
      {

        *a2 = v14;
        return;
      }

      v11 = *(v8 + 8 * v15);
      ++v13;
      if (v11)
      {
        v13 = v15;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_1C7551E4C();
  __break(1u);
}

void sub_1C74C1FC0(void *a1@<X0>, unsigned __int16 a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = static StoryGenerationUtilities.assetIdentifiersFetchOptions(for:sharingFilter:wantsIncrementalChangeDetails:)(a1, a2, 0);
  v5 = objc_opt_self();
  v6 = sub_1C75504FC();
  v7 = sub_1C71CD85C(v6);
  v8 = sub_1C739DA94(v7, v4, v5);
  if (v8)
  {
    v9 = v8;
    StoryGenerationCache.cacheObjectIDs(for:)();
    v10 = [v9 fetchedObjectIDs];
    if (v10)
    {
      v11 = v10;
      sub_1C6F65BE8(0, &qword_1EDD0FAB0);
      v12 = sub_1C7550B5C();
    }

    else
    {
      if (qword_1EDD0DBE0 != -1)
      {
        swift_once();
      }

      v16 = sub_1C754FF1C();
      __swift_project_value_buffer(v16, qword_1EDD28D28);
      v11 = sub_1C754FEEC();
      v17 = sub_1C755119C();
      if (os_log_type_enabled(v11, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1C6F5C000, v11, v17, "Unexpected nil fetchedObjectIDs from fetchResult", v18, 2u);
        MEMORY[0x1CCA5F8E0](v18, -1, -1);
      }

      v12 = MEMORY[0x1E69E7CC0];
      v4 = v9;
    }
  }

  else
  {
    if (qword_1EDD0DBE0 != -1)
    {
      swift_once();
    }

    v13 = sub_1C754FF1C();
    __swift_project_value_buffer(v13, qword_1EDD28D28);
    v11 = sub_1C754FEEC();
    v14 = sub_1C755119C();
    if (os_log_type_enabled(v11, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1C6F5C000, v11, v14, "Unexpected nil fetchResult from class PHAsset.fetchAssets(withUUIDs:options:) call", v15, 2u);
      MEMORY[0x1CCA5F8E0](v15, -1, -1);
    }

    v12 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v12;
}

void sub_1C74C2220()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v153 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BD80);
  v5 = OUTLINED_FUNCTION_76(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_78();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v119 - v10;
  v138 = type metadata accessor for Hastings.Feature();
  OUTLINED_FUNCTION_3_0();
  v122 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_78();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v143 = &v119 - v18;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v19);
  v125 = (&v119 - v20);
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v21);
  v139 = &v119 - v22;
  if (!*(v1 + 16))
  {

    goto LABEL_110;
  }

  v128 = v8;
  v120 = 0;
  v24 = v3 + 56;
  v23 = *(v3 + 56);
  v25 = -1 << *(v3 + 32);
  v133 = ~v25;
  if (-v25 < 64)
  {
    v26 = ~(-1 << -v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = (v26 & v23);
  OUTLINED_FUNCTION_88_20();
  v130 = v28 >> 6;
  v141 = (v1 + 56);
  sub_1C75504FC();
  v29 = 0;
  v132 = v3;
  v131 = v3 + 56;
  v121 = v11;
  while (1)
  {
    v30 = v29;
    if (v27)
    {
LABEL_11:
      OUTLINED_FUNCTION_92_19();
      v32 = v3;
      v35 = (v34 & v33);
      OUTLINED_FUNCTION_2_137();
      sub_1C74C9C60(v36, v11);
      v37 = 0;
      v31 = v30;
    }

    else
    {
      v31 = v29;
      while (1)
      {
        v30 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_113;
        }

        if (v30 >= v130)
        {
          break;
        }

        ++v31;
        if (*(v24 + 8 * v30))
        {
          goto LABEL_11;
        }
      }

      v32 = v3;
      v35 = 0;
      v37 = 1;
    }

    v38 = v138;
    __swift_storeEnumTagSinglePayload(v11, v37, 1, v138);
    v148 = v32;
    v149 = v24;
    v150 = v133;
    v151 = v31;
    v152 = v35;
    if (__swift_getEnumTagSinglePayload(v11, 1, v38) == 1)
    {
      sub_1C6FD7FC8(v11, &qword_1EC21BD80);
      goto LABEL_109;
    }

    v39 = v139;
    sub_1C74C9D58(v11, v139);
    sub_1C7551F3C();
    v40 = *v39;
    v41 = *(v39 + 8);
    sub_1C75505AC();
    v42 = *(v39 + 16);
    v134 = v35;
    switch(v42)
    {
      case 1:
        OUTLINED_FUNCTION_82_22();
        break;
      case 2:
        OUTLINED_FUNCTION_118_14();
        break;
      case 4:
        OUTLINED_FUNCTION_117_13();
        break;
      case 5:
        OUTLINED_FUNCTION_81_25();
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_163_5();

    OUTLINED_FUNCTION_100_18();
    v44 = *(v43 + 24);
    v45 = sub_1C754F58C();
    OUTLINED_FUNCTION_55_35();
    v47 = sub_1C74C9D10(&qword_1EC215238, v46);
    v124 = v44;
    v137 = v45;
    v129 = v47;
    sub_1C755059C();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_9_2();
    v11 = v49 & ~v48;
    v50 = v11 >> 6;
    v51 = 1 << v11;
    v52 = v125;
    if (((1 << v11) & v141[v11 >> 6]) != 0)
    {
      break;
    }

LABEL_51:
    sub_1C74C9CB8(v139, type metadata accessor for Hastings.Feature);
    v29 = v31;
    v27 = v134;
    v24 = v131;
    v11 = v121;
    v3 = v132;
  }

  v126 = ~v48;
  v142 = *(v122 + 72);
  while (1)
  {
    v127 = v51;
    OUTLINED_FUNCTION_2_137();
    sub_1C74C9C60(v53, v52);
    v54 = *v52 == v40 && *(v52 + 8) == v41;
    if (!v54 && (OUTLINED_FUNCTION_162_8() & 1) == 0)
    {
      goto LABEL_43;
    }

    v55 = *(v52 + 16);
    v56 = 0xE900000000000072;
    switch(v55)
    {
      case 1:
        v56 = 0xE800000000000000;
        OUTLINED_FUNCTION_79_4(0x61636F4Cu);
        break;
      case 2:
        OUTLINED_FUNCTION_46_8();
        break;
      case 3:
        v56 = 0xE400000000000000;
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
    v59 = 0xE900000000000072;
    switch(v60)
    {
      case 1:
        v59 = 0xE800000000000000;
        OUTLINED_FUNCTION_105_6();
        break;
      case 2:
        v59 = 0xE500000000000000;
        v58 = 0x746E657645;
        break;
      case 3:
        v59 = 0xE400000000000000;
        v58 = 1885958740;
        break;
      case 4:
        v59 = 0xE500000000000000;
        v58 = 0x7972657551;
        break;
      case 5:
        OUTLINED_FUNCTION_39_9();
        v59 = 0xEA00000000007265;
        break;
      default:
        break;
    }

    if (v57 == v58 && v56 == v59)
    {
      break;
    }

    v62 = sub_1C7551DBC();

    v52 = v125;
    if (v62)
    {
      goto LABEL_45;
    }

LABEL_43:
    OUTLINED_FUNCTION_0_203();
    sub_1C74C9CB8(v52, v63);
LABEL_50:
    v11 = (v11 + 1) & v126;
    v50 = v11 >> 6;
    v51 = 1 << v11;
    if ((v141[v11 >> 6] & (1 << v11)) == 0)
    {
      goto LABEL_51;
    }
  }

  v52 = v125;
LABEL_45:
  v123 = v50;
  v136 = v11;
  OUTLINED_FUNCTION_100_18();
  OUTLINED_FUNCTION_55_35();
  v65 = sub_1C74C9D10(&qword_1EC2147A0, v64);
  sub_1C7550A5C();
  v135 = v65;
  sub_1C7550A5C();
  if (v146 != v144 || v147 != v145)
  {
    v67 = sub_1C7551DBC();

    OUTLINED_FUNCTION_0_203();
    sub_1C74C9CB8(v52, v68);
    v11 = v136;
    if (v67)
    {
      goto LABEL_54;
    }

    goto LABEL_50;
  }

  OUTLINED_FUNCTION_0_203();
  sub_1C74C9CB8(v52, v69);
  v11 = v136;
LABEL_54:
  OUTLINED_FUNCTION_0_203();
  sub_1C74C9CB8(v139, v70);
  OUTLINED_FUNCTION_5_106();
  v29 = v72 >> 6;
  v27 = (8 * (v72 >> 6));
  v3 = v132;
  v30 = v123;
  if (v73 > 0xD)
  {
    goto LABEL_114;
  }

  while (2)
  {
    v124 = v29;
    v125 = &v119;
    MEMORY[0x1EEE9AC00](v71);
    v82 = OUTLINED_FUNCTION_27_52(v74, v75, v76, v77, v78, v79, v80, v81, v119);
    memcpy(v82, v141, v27);
    v83 = *(v29 + 8 * v30) & ~v127;
    v84 = *(v1 + 16);
    v127 = v29;
    *(v29 + 8 * v30) = v83;
    v85 = v84 - 1;
    v29 = v128;
    v30 = v131;
    v86 = v130;
    v87 = v134;
    v140 = v1;
LABEL_56:
    v126 = v85;
LABEL_57:
    while (2)
    {
      if (v87)
      {
LABEL_62:
        v89 = (v87 - 1) & v87;
        OUTLINED_FUNCTION_2_137();
        sub_1C74C9C60(v90, v29);
        v91 = 0;
LABEL_63:
        v92 = v138;
        __swift_storeEnumTagSinglePayload(v29, v91, 1, v138);
        v148 = v3;
        v149 = v30;
        v150 = v133;
        v151 = v31;
        v152 = v89;
        if (__swift_getEnumTagSinglePayload(v29, 1, v92) == 1)
        {
          sub_1C6FD7FC8(v29, &qword_1EC21BD80);
          sub_1C71FF5B8();
          goto LABEL_109;
        }

        v134 = v89;
        v93 = v29;
        v94 = v143;
        sub_1C74C9D58(v93, v143);
        sub_1C7551F3C();
        v11 = *v94;
        v95 = *(v94 + 8);
        OUTLINED_FUNCTION_106_10();
        switch(*(v94 + 16))
        {
          case 1:
            OUTLINED_FUNCTION_82_22();
            break;
          case 2:
            OUTLINED_FUNCTION_118_14();
            break;
          case 4:
            OUTLINED_FUNCTION_117_13();
            break;
          case 5:
            OUTLINED_FUNCTION_81_25();
            break;
          default:
            break;
        }

        OUTLINED_FUNCTION_163_5();

        OUTLINED_FUNCTION_100_18();
        v136 = *(v96 + 24);
        sub_1C755059C();
        v27 = &v146;
        sub_1C7551FAC();
        OUTLINED_FUNCTION_9_2();
        v99 = v98 & ~v97;
        v100 = v99 >> 6;
        v101 = 1 << v99;
        if (((1 << v99) & v141[v99 >> 6]) == 0)
        {
LABEL_102:
          sub_1C74C9CB8(v143, type metadata accessor for Hastings.Feature);
          v1 = v140;
          v3 = v132;
          v29 = v128;
          v30 = v131;
          v86 = v130;
          v87 = v134;
          continue;
        }

        v139 = ~v97;
        while (1)
        {
          OUTLINED_FUNCTION_2_137();
          sub_1C74C9C60(v102, v16);
          v103 = *v16 == v11 && *(v16 + 8) == v95;
          if (!v103 && (OUTLINED_FUNCTION_107_14() & 1) == 0)
          {
            break;
          }

          v27 = 0xE900000000000072;
          switch(*(v16 + 16))
          {
            case 1:
              v27 = 0xE800000000000000;
              OUTLINED_FUNCTION_79_4(0x61636F4Cu);
              break;
            case 2:
              OUTLINED_FUNCTION_46_8();
              break;
            case 3:
              v27 = 0xE400000000000000;
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
          v106 = 0xE900000000000072;
          switch(v107)
          {
            case 1:
              v106 = 0xE800000000000000;
              OUTLINED_FUNCTION_105_6();
              break;
            case 2:
              v106 = 0xE500000000000000;
              v105 = 0x746E657645;
              break;
            case 3:
              v106 = 0xE400000000000000;
              v105 = 1885958740;
              break;
            case 4:
              v106 = 0xE500000000000000;
              v105 = 0x7972657551;
              break;
            case 5:
              OUTLINED_FUNCTION_39_9();
              v106 = 0xEA00000000007265;
              break;
            default:
              break;
          }

          if (v104 == v105 && v27 == v106)
          {
          }

          else
          {
            v109 = sub_1C7551DBC();

            if ((v109 & 1) == 0)
            {
              break;
            }
          }

          OUTLINED_FUNCTION_100_18();
          sub_1C7550A5C();
          sub_1C7550A5C();
          v27 = v145;
          if (v146 == v144 && v147 == v145)
          {

            OUTLINED_FUNCTION_0_203();
            sub_1C74C9CB8(v16, v114);
LABEL_104:
            OUTLINED_FUNCTION_0_203();
            sub_1C74C9CB8(v143, v115);
            v116 = *(v127 + 8 * v100);
            *(v127 + 8 * v100) = v116 & ~v101;
            v54 = (v116 & v101) == 0;
            v1 = v140;
            v3 = v132;
            v29 = v128;
            v30 = v131;
            v86 = v130;
            v87 = v134;
            if (!v54)
            {
              v85 = v126 - 1;
              if (__OFSUB__(v126, 1))
              {
                __break(1u);
              }

              if (v126 == 1)
              {

                goto LABEL_109;
              }

              goto LABEL_56;
            }

            goto LABEL_57;
          }

          v112 = sub_1C7551DBC();

          OUTLINED_FUNCTION_0_203();
          sub_1C74C9CB8(v16, v113);
          if (v112)
          {
            goto LABEL_104;
          }

LABEL_101:
          v99 = (v99 + 1) & v139;
          v100 = v99 >> 6;
          v101 = 1 << v99;
          if ((v141[v99 >> 6] & (1 << v99)) == 0)
          {
            goto LABEL_102;
          }
        }

        OUTLINED_FUNCTION_0_203();
        sub_1C74C9CB8(v16, v110);
        goto LABEL_101;
      }

      break;
    }

    while (1)
    {
      v88 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v88 >= v86)
      {
        v89 = 0;
        v91 = 1;
        goto LABEL_63;
      }

      v87 = *(v30 + 8 * v88);
      ++v31;
      if (v87)
      {
        v31 = v88;
        goto LABEL_62;
      }
    }

    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v117 = swift_slowAlloc();
  v118 = v120;
  sub_1C74C914C(v117, v29, v141, v29, v1, v11, &v148);
  if (v118)
  {

    OUTLINED_FUNCTION_21_59();
    __break(1u);
  }

  else
  {

    OUTLINED_FUNCTION_21_59();
LABEL_109:
    sub_1C6F61E88();
LABEL_110:
    OUTLINED_FUNCTION_25_0();
  }
}

void sub_1C74C30F0()
{
  OUTLINED_FUNCTION_33();
  v5 = v4;
  OUTLINED_FUNCTION_71_21(*MEMORY[0x1E69E9840]);
  if (!v7)
  {

    goto LABEL_49;
  }

  v8 = v6;
  if ((v6 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    v1 = sub_1C755165C();
    sub_1C6F65BE8(0, &qword_1EDD0FA70);
    sub_1C725C844();
    OUTLINED_FUNCTION_161_7();
    v8 = v69;
    v9 = v70;
    v10 = v71;
    v11 = v72;
    v2 = v73;
  }

  else
  {
    OUTLINED_FUNCTION_9_2();
    v9 = v8;
    OUTLINED_FUNCTION_77_19();
    sub_1C75504FC();
    v10 = v0;
    v11 = 0;
  }

  v12 = (v10 + 64) >> 6;
  v67 = (v5 + 56);
  v63 = v9;
  v64 = v12;
  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_14:
    if (!sub_1C75516FC())
    {
      goto LABEL_48;
    }

    sub_1C6F65BE8(0, &qword_1EDD0FA70);
    OUTLINED_FUNCTION_155_4();
    swift_dynamicCast();
    v1 = v68;
    v13 = v11;
    v66 = v2;
    if (!v68)
    {
      goto LABEL_48;
    }
  }

  else
  {
LABEL_7:
    v13 = v11;
    v14 = v11;
    if (v2)
    {
LABEL_11:
      OUTLINED_FUNCTION_92_19();
      v3 = (v16 & v15);
      v1 = *(*(v8 + 48) + ((v14 << 9) | (8 * v17)));
      v18 = v1;
      v13 = v14;
    }

    else
    {
      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_52;
        }

        if (v14 >= v12)
        {
          break;
        }

        ++v13;
        if (*(v9 + 8 * v14))
        {
          goto LABEL_11;
        }
      }

      v1 = 0;
      v3 = 0;
    }

    OUTLINED_FUNCTION_134_12();
    v66 = v3;
    if (!v1)
    {
      goto LABEL_48;
    }
  }

  v14 = v1;
  sub_1C75513DC();
  OUTLINED_FUNCTION_9_2();
  v65 = ~v20;
  while (1)
  {
    v11 = v19 & v65;
    v9 = (v19 & v65) >> 6;
    OUTLINED_FUNCTION_68_26();
    v12 = v21 << v11;
    if (((v21 << v11) & v22) == 0)
    {

      v11 = v13;
      v2 = v66;
      v9 = v63;
      v12 = v64;
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }

    sub_1C6F65BE8(0, &qword_1EDD0FA70);
    v3 = *(*(v5 + 48) + 8 * v11);
    v1 = sub_1C75513EC();

    if (v1)
    {
      break;
    }

    v19 = v11 + 1;
  }

  OUTLINED_FUNCTION_4_110();
  OUTLINED_FUNCTION_142_6(v23);
  v1 = 8 * v32;
  v3 = v64;
  if (v33 > 0xD)
  {
    goto LABEL_53;
  }

  while (2)
  {
    OUTLINED_FUNCTION_61_24(v24, v25, v26, v27, v28, v29, v30, v31, v60);
    MEMORY[0x1EEE9AC00](v34);
    v43 = OUTLINED_FUNCTION_27_52(v35, v36, v37, v38, v39, v40, v41, v42, v61);
    memcpy(v43, v67, v1);
    v60 = 0;
    OUTLINED_FUNCTION_141_10(*(v14 + 8 * v9) & ~v12);
    v14 = v63;
    v9 = v66;
    v62 = v8;
    while (1)
    {
LABEL_25:
      if ((v8 & 0x8000000000000000) != 0)
      {
        if (!sub_1C75516FC())
        {
          goto LABEL_46;
        }

        OUTLINED_FUNCTION_155_4();
        swift_dynamicCast();
        v46 = v68;
        if (!v68)
        {
          goto LABEL_46;
        }

        goto LABEL_36;
      }

      if (!v9)
      {
        break;
      }

LABEL_31:
      OUTLINED_FUNCTION_49_16();
      v46 = *(*(v8 + 48) + ((v13 << 9) | (8 * v45)));
      v47 = v46;
LABEL_32:
      OUTLINED_FUNCTION_134_12();
      if (!v46)
      {
LABEL_46:
        OUTLINED_FUNCTION_39_45();
        sub_1C71FF8D4();
        goto LABEL_47;
      }

LABEL_36:
      v66 = v9;
      v1 = v46;
      sub_1C75513DC();
      v48 = v5;
      OUTLINED_FUNCTION_9_2();
      v11 = ~v50;
      do
      {
        v51 = v49 & v11;
        OUTLINED_FUNCTION_68_26();
        if (((v52 << v51) & v53) == 0)
        {

          v5 = v48;
          v8 = v62;
          v14 = v63;
          v3 = v64;
          goto LABEL_25;
        }

        v12 = *(*(v48 + 48) + 8 * v51);
        v1 = sub_1C75513EC();

        v49 = v51 + 1;
      }

      while ((v1 & 1) == 0);

      v3 = v64;
      OUTLINED_FUNCTION_136_6();
      v5 = v48;
      v8 = v62;
      v14 = v63;
      if (!v54)
      {
        OUTLINED_FUNCTION_62_29();
        if (v55)
        {
          __break(1u);
        }

        if (!v56)
        {

LABEL_47:
          OUTLINED_FUNCTION_59_30();
          goto LABEL_48;
        }
      }
    }

    while (1)
    {
      v44 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v44 >= v3)
      {
        v46 = 0;
        v9 = 0;
        goto LABEL_32;
      }

      v9 = *(v14 + 8 * v44);
      ++v13;
      if (v9)
      {
        v13 = v44;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  swift_slowAlloc();
  OUTLINED_FUNCTION_72_26();
  sub_1C74C91D4(v57, v58, v67, v58, v5, v11, v59);

  OUTLINED_FUNCTION_21_59();
LABEL_48:
  sub_1C6F61E88();
LABEL_49:
  OUTLINED_FUNCTION_25_0();
}

void sub_1C74C35FC()
{
  OUTLINED_FUNCTION_33();
  v7 = v6;
  OUTLINED_FUNCTION_71_21(*MEMORY[0x1E69E9840]);
  if (!v9)
  {

LABEL_43:
    OUTLINED_FUNCTION_87_23();
    OUTLINED_FUNCTION_25_0();
    return;
  }

  v10 = v8 + 56;
  OUTLINED_FUNCTION_114_16();
  v48[4] = v11;
  v12 = OUTLINED_FUNCTION_75_22();
  v13 = 0;
  v49 = v0;
  v50 = v10;
  v51 = v12;
  if (!v4)
  {
    v15 = 0;
    while (1)
    {
      v14 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_45;
      }

      if (v14 >= v0)
      {
        goto LABEL_42;
      }

      v4 = *(v10 + 8 * v14);
      ++v15;
      if (v4)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_3:
  v14 = v13;
LABEL_8:
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_65_30();
  v5 = *v16;
  v17 = v16[1];
  OUTLINED_FUNCTION_164_6();
  sub_1C75504FC();
  OUTLINED_FUNCTION_106_10();
  sub_1C7551FAC();
  v0 = ~(v1 << *(v7 + 32));
  do
  {
    OUTLINED_FUNCTION_85_16();
    if (v19)
    {

      OUTLINED_FUNCTION_137_11();
      goto LABEL_3;
    }

    v19 = OUTLINED_FUNCTION_94_20() == v5 && v18 == v17;
  }

  while (!v19 && (OUTLINED_FUNCTION_107_14() & 1) == 0);
  OUTLINED_FUNCTION_95_21();
  OUTLINED_FUNCTION_4_110();
  OUTLINED_FUNCTION_142_6(v20);
  v2 = 8 * v29;
  if (v30 > 0xD)
  {
    goto LABEL_46;
  }

  while (1)
  {
    OUTLINED_FUNCTION_61_24(v21, v22, v23, v24, v25, v26, v27, v28, v48[0]);
    MEMORY[0x1EEE9AC00](v31);
    v32 = OUTLINED_FUNCTION_19_80(v48);
    memcpy(v32, v3, v2);
    OUTLINED_FUNCTION_78_20();
    while (1)
    {
      v48[3] = v33;
LABEL_20:
      if (!v4)
      {
        break;
      }

LABEL_25:
      OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_65_30();
      v2 = *v36;
      v37 = v36[1];
      OUTLINED_FUNCTION_164_6();
      sub_1C75504FC();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_79_1();
      do
      {
        OUTLINED_FUNCTION_83_13();
        if (v19)
        {

          v5 = v50;
          v0 = v51;
          v34 = v49;
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_148_9();
        if (v19 && v38 == v37)
        {
          break;
        }

        OUTLINED_FUNCTION_109_15();
      }

      while ((sub_1C7551DBC() & 1) == 0);

      OUTLINED_FUNCTION_60_28();
      v5 = v50;
      v0 = v51;
      v34 = v49;
      if (v19)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_62_29();
      if (v40)
      {
        __break(1u);
      }

      if (!v33)
      {

LABEL_39:
        OUTLINED_FUNCTION_59_30();
        goto LABEL_40;
      }
    }

    while (1)
    {
      v35 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v35 >= v34)
      {
        OUTLINED_FUNCTION_39_45();
        sub_1C71FFA70();
        goto LABEL_39;
      }

      v4 = *(v5 + 8 * v35);
      ++v14;
      if (v4)
      {
        v14 = v35;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  swift_slowAlloc();
  OUTLINED_FUNCTION_72_26();
  OUTLINED_FUNCTION_58_33();
  sub_1C6F9D998(v41, v42, v43, v44, v45, v46, v47);
  if (!v0)
  {
    OUTLINED_FUNCTION_24_2();

    OUTLINED_FUNCTION_0_60();
    OUTLINED_FUNCTION_97_14();
LABEL_40:
    OUTLINED_FUNCTION_101_17();
LABEL_42:
    sub_1C6F61E88();
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_0_60();
  __break(1u);
}

void sub_1C74C3924()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  OUTLINED_FUNCTION_71_21(*MEMORY[0x1E69E9840]);
  if (!v3)
  {

    goto LABEL_35;
  }

  v47 = v2;
  v4 = *(v2 + 16);
  v45 = v2 + 32;
  v5 = (v1 + 56);
  v6 = 0;
  v46 = sub_1C75504FC();
  v44 = v4;
LABEL_3:
  if (v6 == v4)
  {
LABEL_33:

LABEL_35:
    OUTLINED_FUNCTION_87_23();
    OUTLINED_FUNCTION_25_0();
    return;
  }

  v7 = (v45 + 16 * v6);
  v9 = *v7;
  v8 = v7[1];
  ++v6;
  OUTLINED_FUNCTION_165_4();
  sub_1C75504FC();
  sub_1C75505AC();
  v10 = sub_1C7551FAC();
  v11 = ~(-1 << *(v1 + 32));
  while (1)
  {
    v12 = v10 & v11;
    v13 = (v10 & v11) >> 6;
    v14 = 1 << (v10 & v11);
    if ((v14 & v5[v13]) == 0)
    {

      v4 = v44;
      goto LABEL_3;
    }

    v16 = OUTLINED_FUNCTION_94_20() == v9 && v15 == v8;
    if (v16 || (OUTLINED_FUNCTION_107_14() & 1) != 0)
    {
      break;
    }

    v10 = v12 + 1;
  }

  v17 = v6;
  v48 = v6;

  OUTLINED_FUNCTION_5_106();
  v20 = v19 >> 6;
  v21 = 8 * (v19 >> 6);
  if (v22 > 0xD)
  {
LABEL_38:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      goto LABEL_41;
    }
  }

  v40[0] = v20;
  v40[1] = v40;
  MEMORY[0x1EEE9AC00](v18);
  v23 = OUTLINED_FUNCTION_19_80(v40);
  memcpy(v23, (v1 + 56), v21);
  v24 = *(v12 + 8 * v13) & ~v14;
  v42 = v12;
  *(v12 + 8 * v13) = v24;
  v25 = *(v1 + 16) - 1;
  v12 = v46;
  v44 = *(v46 + 16);
  v20 = v17;
  while (1)
  {
    v41 = v25;
    v43 = v17;
LABEL_16:
    while (2)
    {
      if (v20 == v44)
      {
        sub_1C71FFA70();
        goto LABEL_33;
      }

      if (v17 < 0)
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (v20 >= *(v12 + 16))
      {
        goto LABEL_37;
      }

      v26 = (v45 + 16 * v20);
      v14 = *v26;
      v13 = v26[1];
      ++v20;
      OUTLINED_FUNCTION_165_4();
      sub_1C75504FC();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_79_1();
      v21 = ~v28;
      do
      {
        v29 = v27 & v21;
        if (((1 << (v27 & v21)) & v5[(v27 & v21) >> 6]) == 0)
        {

          v12 = v46;
          v17 = v43;
          goto LABEL_16;
        }

        v30 = (*(v1 + 48) + 16 * v29);
        if (*v30 == v14 && v30[1] == v13)
        {
          break;
        }

        v32 = sub_1C7551DBC();
        v27 = v29 + 1;
      }

      while ((v32 & 1) == 0);

      OUTLINED_FUNCTION_60_28();
      v12 = v46;
      v17 = v43;
      if (v16)
      {
        continue;
      }

      break;
    }

    v25 = v41 - 1;
    if (__OFSUB__(v41, 1))
    {
      break;
    }

    v17 = v20;
    if (v41 == 1)
    {

      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_41:
  swift_slowAlloc();
  OUTLINED_FUNCTION_58_33();
  sub_1C74C925C(v33, v34, v35, v36, v37, v38, v39);
  if (v1 == -56)
  {
    OUTLINED_FUNCTION_24_2();

    OUTLINED_FUNCTION_10_1();

    goto LABEL_35;
  }

  OUTLINED_FUNCTION_10_1();
  __break(1u);
}

void sub_1C74C3CA4()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v44 = *MEMORY[0x1E69E9840];
  if (!*(v2 + 16))
  {

LABEL_35:
    OUTLINED_FUNCTION_87_23();
    OUTLINED_FUNCTION_25_0();
    return;
  }

  v35[0] = 0;
  v4 = 0;
  v6 = v1 + 56;
  v5 = *(v1 + 56);
  v7 = -1;
  v8 = -1 << *(v1 + 32);
  v37 = ~v8;
  v38 = v1 + 56;
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v5;
  OUTLINED_FUNCTION_88_20();
  v12 = v11 >> 6;
  v13 = v3 + 56;
  v14 = 1;
  v39 = v15;
  if (!v10)
  {
    v17 = 0;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_37;
      }

      if (v16 >= v12)
      {
        break;
      }

      v10 = *(v6 + 8 * v16);
      ++v17;
      if (v10)
      {
        goto LABEL_11;
      }
    }

    sub_1C75504FC();
    goto LABEL_34;
  }

LABEL_6:
  v16 = v4;
LABEL_11:
  OUTLINED_FUNCTION_51_0();
  v18 = OUTLINED_FUNCTION_105_13();
  v19 = -1 << *(v3 + 32);
  v20 = ~v19;
  while (1)
  {
    v4 = v18 & v20;
    v6 = (v18 & v20) >> 6;
    v7 = 1 << (v18 & v20);
    if ((v7 & *(v13 + 8 * v6)) == 0)
    {
      v4 = v16;
      goto LABEL_6;
    }

    if (*(*(v3 + 48) + 8 * v4) == v0)
    {
      break;
    }

    v18 = v4 + 1;
  }

  v41 = v37;
  v42 = v16;
  v43 = v10;
  v40[0] = v39;
  v40[1] = v38;
  v14 = (63 - v19) >> 6;
  v0 = 8 * v14;
  v21 = sub_1C75504FC();
  if (v14 > 0x80)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v35[1] = v14;
    v35[2] = v35;
    MEMORY[0x1EEE9AC00](v21);
    v14 = v35 - v22;
    memcpy(v35 - v22, (v3 + 56), v0);
    v23 = *(v3 + 16);
    *(v14 + 8 * v6) &= ~v7;
    v24 = v23 - 1;
    v4 = 1;
    v7 = v38;
    v6 = v39;
LABEL_18:
    v36 = v24;
LABEL_19:
    while (v10)
    {
LABEL_24:
      OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_105_13();
      OUTLINED_FUNCTION_79_1();
      v28 = ~v27;
      while (1)
      {
        v29 = v26 & v28;
        v30 = (v26 & v28) >> 6;
        v31 = 1 << (v26 & v28);
        if ((v31 & *(v13 + 8 * v30)) == 0)
        {
          break;
        }

        v26 = v29 + 1;
        if (*(*(v3 + 48) + 8 * v29) == v0)
        {
          v32 = *(v14 + 8 * v30);
          *(v14 + 8 * v30) = v32 & ~v31;
          if ((v32 & v31) == 0)
          {
            goto LABEL_19;
          }

          v24 = v36 - 1;
          if (__OFSUB__(v36, 1))
          {
            __break(1u);
          }

          if (v36 == 1)
          {

            goto LABEL_34;
          }

          goto LABEL_18;
        }
      }
    }

    while (1)
    {
      v25 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v25 >= v12)
      {
        sub_1C71FFDC0();
        goto LABEL_34;
      }

      v10 = *(v7 + 8 * v25);
      ++v16;
      if (v10)
      {
        v16 = v25;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v33 = swift_slowAlloc();
  v34 = v35[0];
  sub_1C74C92E4(v33, v14, (v3 + 56), v14, v3, v4, v40);
  if (!v34)
  {

    OUTLINED_FUNCTION_21_59();
    v37 = v41;
LABEL_34:
    sub_1C6F61E88();
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_21_59();
  __break(1u);
}

void sub_1C74C4018()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v35[2] = *MEMORY[0x1E69E9840];
  if (*(v1 + 16))
  {
    v35[0] = v0;
    v33 = *(v0 + 16);
    if (v33)
    {
      v3 = 0;
      v4 = v1 + 56;
      OUTLINED_FUNCTION_79_1();
      v31 = v6;
      v32 = v7;
      v8 = ~v6;
      v34 = v9;
      while (2)
      {
        v10 = v5;
        v11 = *(v5 + 8 * v3++);
        for (i = sub_1C7551F2C(); ; i = v13 + 1)
        {
          v13 = i & v8;
          v14 = (i & v8) >> 6;
          v15 = 1 << (i & v8);
          if ((v15 & *(v4 + 8 * v14)) == 0)
          {
            break;
          }

          if (*(*(v2 + 48) + 8 * v13) == v11)
          {
            v35[1] = v3;
            v16 = (63 - v31) >> 6;
            v17 = 8 * v16;
            v32 = v16;
            if (v16 > 0x80)
            {
              goto LABEL_31;
            }

            v18 = v34;
            v19 = sub_1C75504FC();
            while (1)
            {
              v33 = &v31;
              MEMORY[0x1EEE9AC00](v19);
              v13 = &v31 - v20;
              memcpy(&v31 - v20, (v2 + 56), v17);
              v21 = *(v2 + 16);
              *(v13 + 8 * v14) &= ~v15;
              v17 = v21 - 1;
              v22 = *(v18 + 16);
              if (v3 == v22)
              {
                break;
              }

              v14 = *(v2 + 40);
              v16 = ~(-1 << *(v2 + 32));
              while (v3 < v22)
              {
                v23 = *(v10 + 8 * v3++);
                v24 = sub_1C7551F2C();
                do
                {
                  v25 = v24 & v16;
                  v26 = (v24 & v16) >> 6;
                  v27 = 1 << (v24 & v16);
                  if ((v27 & *(v4 + 8 * v26)) == 0)
                  {
                    v15 = v34;
                    goto LABEL_25;
                  }

                  v24 = v25 + 1;
                }

                while (*(*(v2 + 48) + 8 * v25) != v23);
                v28 = *(v13 + 8 * v26);
                *(v13 + 8 * v26) = v28 & ~v27;
                v15 = v34;
                if ((v28 & v27) != 0)
                {
                  if (__OFSUB__(v17--, 1))
                  {
                    goto LABEL_30;
                  }

                  if (!v17)
                  {

                    goto LABEL_27;
                  }
                }

LABEL_25:
                v22 = *(v15 + 16);
                if (v3 == v22)
                {
                  goto LABEL_26;
                }
              }

              __break(1u);
LABEL_30:
              __break(1u);
LABEL_31:

              sub_1C75504FC();
              if (!swift_stdlib_isStackAllocationSafe())
              {
                v30 = swift_slowAlloc();
                sub_1C74C936C(v30, v16, (v2 + 56), v16, v2, v13, v35);

                OUTLINED_FUNCTION_10_1();

                goto LABEL_28;
              }

              v18 = v34;
            }

LABEL_26:
            sub_1C71FFDC0();
LABEL_27:

            goto LABEL_28;
          }
        }

        v5 = v10;
        if (v3 != v33)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
  }

LABEL_28:
  OUTLINED_FUNCTION_87_23();
  OUTLINED_FUNCTION_25_0();
}

void sub_1C74C4334()
{
  OUTLINED_FUNCTION_33();
  v7 = v6;
  OUTLINED_FUNCTION_71_21(*MEMORY[0x1E69E9840]);
  if (!v9)
  {

LABEL_43:
    OUTLINED_FUNCTION_87_23();
    OUTLINED_FUNCTION_25_0();
    return;
  }

  v10 = v8 + 64;
  OUTLINED_FUNCTION_114_16();
  v42[4] = v12;
  v43 = v11;
  v13 = OUTLINED_FUNCTION_75_22();
  v14 = 0;
  v44 = v0;
  v45 = v10;
  v46 = v13;
  if (!v4)
  {
    v16 = 0;
    while (1)
    {
      v15 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_45;
      }

      if (v15 >= v0)
      {
        goto LABEL_42;
      }

      v4 = *(v10 + 8 * v15);
      ++v16;
      if (v4)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_3:
  v15 = v14;
LABEL_8:
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_65_30();
  v5 = *v17;
  v18 = v17[1];
  OUTLINED_FUNCTION_164_6();
  sub_1C75504FC();
  OUTLINED_FUNCTION_106_10();
  sub_1C7551FAC();
  v0 = ~(v1 << *(v7 + 32));
  do
  {
    OUTLINED_FUNCTION_85_16();
    if (v20)
    {

      OUTLINED_FUNCTION_137_11();
      goto LABEL_3;
    }

    v20 = OUTLINED_FUNCTION_94_20() == v5 && v19 == v18;
  }

  while (!v20 && (OUTLINED_FUNCTION_107_14() & 1) == 0);
  OUTLINED_FUNCTION_95_21();
  OUTLINED_FUNCTION_4_110();
  OUTLINED_FUNCTION_142_6(v21);
  v2 = 8 * v30;
  if (v31 > 0xD)
  {
    goto LABEL_46;
  }

  while (1)
  {
    OUTLINED_FUNCTION_61_24(v22, v23, v24, v25, v26, v27, v28, v29, v42[0]);
    MEMORY[0x1EEE9AC00](v32);
    v33 = OUTLINED_FUNCTION_19_80(v42);
    memcpy(v33, v3, v2);
    OUTLINED_FUNCTION_78_20();
    while (1)
    {
      v42[3] = v34;
LABEL_20:
      if (!v4)
      {
        break;
      }

LABEL_25:
      OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_65_30();
      v2 = *v37;
      v38 = v37[1];
      OUTLINED_FUNCTION_164_6();
      sub_1C75504FC();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_79_1();
      do
      {
        OUTLINED_FUNCTION_83_13();
        if (v20)
        {

          v5 = v45;
          v0 = v46;
          v35 = v44;
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_148_9();
        if (v20 && v39 == v38)
        {
          break;
        }

        OUTLINED_FUNCTION_109_15();
      }

      while ((sub_1C7551DBC() & 1) == 0);

      OUTLINED_FUNCTION_60_28();
      v5 = v45;
      v0 = v46;
      v35 = v44;
      if (v20)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_62_29();
      if (v41)
      {
        __break(1u);
      }

      if (!v34)
      {

LABEL_39:
        OUTLINED_FUNCTION_59_30();
        goto LABEL_40;
      }
    }

    while (1)
    {
      v36 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v36 >= v35)
      {
        OUTLINED_FUNCTION_39_45();
        sub_1C71FFA70();
        goto LABEL_39;
      }

      v4 = *(v5 + 8 * v36);
      ++v15;
      if (v4)
      {
        v15 = v36;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  swift_slowAlloc();
  OUTLINED_FUNCTION_72_26();
  OUTLINED_FUNCTION_58_33();
  v43();
  if (!v0)
  {
    OUTLINED_FUNCTION_24_2();

    OUTLINED_FUNCTION_0_60();
    OUTLINED_FUNCTION_97_14();
LABEL_40:
    OUTLINED_FUNCTION_101_17();
LABEL_42:
    sub_1C6F61E88();
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_0_60();
  __break(1u);
}

void sub_1C74C4664()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  OUTLINED_FUNCTION_71_21(*MEMORY[0x1E69E9840]);
  if (!v3)
  {

    goto LABEL_175;
  }

  v92[9] = v2;
  v88 = *(v2 + 16);
  if (!v88)
  {
LABEL_175:
    OUTLINED_FUNCTION_87_23();
    OUTLINED_FUNCTION_25_0();
    return;
  }

  v4 = v1 + 7;
  v5 = v2 + 32;
  v89 = v2;
  sub_1C75504FC();
  v6 = 0;
  v90 = v5;
  while (1)
  {
    v7 = *(v5 + v6);
    OUTLINED_FUNCTION_165_4();
    OUTLINED_FUNCTION_112_9();
    switch(v7)
    {
      case 1:
        OUTLINED_FUNCTION_51_32();
        break;
      case 2:
        OUTLINED_FUNCTION_14_74();
        break;
      case 3:
        OUTLINED_FUNCTION_119_17();
        break;
      case 4:
        OUTLINED_FUNCTION_10_86();
        break;
      case 5:
        OUTLINED_FUNCTION_11_81();
        break;
      case 6:
        OUTLINED_FUNCTION_64_25();
        break;
      case 7:
        OUTLINED_FUNCTION_56_34();
        goto LABEL_17;
      case 8:
        OUTLINED_FUNCTION_6_115();
        break;
      case 9:
        OUTLINED_FUNCTION_123_12();
        break;
      case 10:
        OUTLINED_FUNCTION_8_96();
        break;
      case 11:
        OUTLINED_FUNCTION_13_95();
        break;
      case 12:
        OUTLINED_FUNCTION_17_81();
        break;
      case 13:
        OUTLINED_FUNCTION_7_104();
        break;
      case 14:
        OUTLINED_FUNCTION_12_86();
        break;
      case 15:
        OUTLINED_FUNCTION_120_13();
        break;
      case 16:
        OUTLINED_FUNCTION_57_33();
LABEL_17:
        OUTLINED_FUNCTION_82_22();
        break;
      case 17:
        OUTLINED_FUNCTION_34_48();
        break;
      case 18:
        OUTLINED_FUNCTION_16_73();
        break;
      case 19:
        OUTLINED_FUNCTION_9_97();
        break;
      default:
        break;
    }

    sub_1C75505AC();

    sub_1C7551FAC();
    OUTLINED_FUNCTION_79_1();
    v10 = v9 & ~v8;
    v11 = v10 >> 6;
    v12 = 1 << v10;
    if (((1 << v10) & v4[v10 >> 6]) != 0)
    {
      break;
    }

LABEL_81:
    v5 = v90;
    v6 = v91;
    if (v91 == v88)
    {
LABEL_174:

      goto LABEL_175;
    }
  }

  v13 = ~v8;
  while (1)
  {
    v14 = 0xE400000000000000;
    v15 = 1701736302;
    switch(*(v1[6] + v10))
    {
      case 1:
        v14 = 0xE600000000000000;
        v16 = OUTLINED_FUNCTION_50_36();
        goto LABEL_47;
      case 2:
        v21 = OUTLINED_FUNCTION_0_144();
        v15 = OUTLINED_FUNCTION_152_8(v21);
        goto LABEL_38;
      case 3:
        v15 = OUTLINED_FUNCTION_127_3();
        break;
      case 4:
        OUTLINED_FUNCTION_188();
        v14 = v20 + 20;
        v15 = OUTLINED_FUNCTION_4_82() & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
        break;
      case 5:
        OUTLINED_FUNCTION_437();
        v14 = v22 + 1529;
        v15 = OUTLINED_FUNCTION_4_82() & 0xFFFFFFFFFFFFLL | 0x6557000000000000;
        break;
      case 6:
        v14 = 0xE600000000000000;
        v16 = OUTLINED_FUNCTION_144_10();
LABEL_47:
        v15 = v16 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
        break;
      case 7:
        v14 = 0xE800000000000000;
        v17 = OUTLINED_FUNCTION_147_6();
        goto LABEL_42;
      case 8:
        OUTLINED_FUNCTION_25_40();
        OUTLINED_FUNCTION_140_10();
        break;
      case 9:
        v15 = OUTLINED_FUNCTION_129_2();
        break;
      case 0xA:
        v15 = OUTLINED_FUNCTION_22_56();
        v14 = 0xEB00000000746E65;
        break;
      case 0xB:
        v19 = OUTLINED_FUNCTION_0_144();
        v15 = OUTLINED_FUNCTION_108_13(v19);
LABEL_38:
        v14 = 0xED00000000000000;
        break;
      case 0xC:
        v15 = OUTLINED_FUNCTION_31_49();
        v14 = 0xEA0000000000656CLL;
        break;
      case 0xD:
        OUTLINED_FUNCTION_207();
        v14 = v23 + 1284;
        v15 = OUTLINED_FUNCTION_29_45();
        break;
      case 0xE:
        OUTLINED_FUNCTION_437();
        v14 = v18 + 6;
        v15 = OUTLINED_FUNCTION_30_52();
        break;
      case 0xF:
        v15 = OUTLINED_FUNCTION_128_3();
        break;
      case 0x10:
        v14 = 0xE800000000000000;
        v17 = OUTLINED_FUNCTION_110_13();
LABEL_42:
        v15 = OUTLINED_FUNCTION_79_4(v17);
        break;
      case 0x11:
        v14 = 0xE600000000000000;
        v15 = OUTLINED_FUNCTION_93_3();
        break;
      case 0x12:
        v15 = OUTLINED_FUNCTION_26_42();
        v14 = 0xE900000000000065;
        break;
      case 0x13:
        OUTLINED_FUNCTION_188();
        v14 = v24 + 13;
        v15 = OUTLINED_FUNCTION_21_5();
        break;
      default:
        break;
    }

    v25 = 0xE400000000000000;
    v26 = 1701736302;
    switch(v7)
    {
      case 1:
        v25 = 0xE600000000000000;
        OUTLINED_FUNCTION_54_36();
        goto LABEL_70;
      case 2:
        OUTLINED_FUNCTION_5_4();
        v26 = v33 & 0xFFFFFFFFFFFFLL | 0x6741000000000000;
        v30 = 0x6570795465;
        goto LABEL_61;
      case 3:
        OUTLINED_FUNCTION_129_9();
        break;
      case 4:
        OUTLINED_FUNCTION_188();
        v25 = v31 + 20;
        OUTLINED_FUNCTION_22_68();
        v26 = v32 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
        break;
      case 5:
        OUTLINED_FUNCTION_437();
        v25 = v34 + 1529;
        OUTLINED_FUNCTION_22_68();
        v26 = v35 & 0xFFFFFFFFFFFFLL | 0x6557000000000000;
        break;
      case 6:
        v25 = 0xE600000000000000;
        OUTLINED_FUNCTION_127_12();
LABEL_70:
        v26 = v27 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
        break;
      case 7:
        v25 = 0xE800000000000000;
        OUTLINED_FUNCTION_128_11();
        goto LABEL_65;
      case 8:
        OUTLINED_FUNCTION_36_42();
        v25 = 0xEF6E6F697461636FLL;
        break;
      case 9:
        OUTLINED_FUNCTION_132_11();
        break;
      case 10:
        OUTLINED_FUNCTION_37_43();
        v25 = 0xEB00000000746E65;
        break;
      case 11:
        OUTLINED_FUNCTION_5_4();
        v26 = v29 & 0xFFFFFFFFFFFFLL | 0x6C61000000000000;
        v30 = 0x746E657645;
LABEL_61:
        v25 = v30 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        break;
      case 12:
        OUTLINED_FUNCTION_42_40();
        v25 = 0xEA0000000000656CLL;
        break;
      case 13:
        OUTLINED_FUNCTION_207();
        v25 = v36 + 1284;
        OUTLINED_FUNCTION_43_41();
        break;
      case 14:
        OUTLINED_FUNCTION_437();
        v25 = v28 + 6;
        OUTLINED_FUNCTION_41_46();
        break;
      case 15:
        OUTLINED_FUNCTION_130_9();
        break;
      case 16:
        v25 = 0xE800000000000000;
        OUTLINED_FUNCTION_138_8();
LABEL_65:
        OUTLINED_FUNCTION_105_6();
        break;
      case 17:
        v25 = 0xE600000000000000;
        OUTLINED_FUNCTION_66_28();
        break;
      case 18:
        OUTLINED_FUNCTION_38_42();
        v25 = 0xE900000000000065;
        break;
      case 19:
        OUTLINED_FUNCTION_188();
        v25 = v37 + 13;
        OUTLINED_FUNCTION_35_32();
        break;
      default:
        break;
    }

    if (v15 == v26 && v14 == v25)
    {
      break;
    }

    v39 = sub_1C7551DBC();

    if (v39)
    {
      goto LABEL_85;
    }

    v10 = (v10 + 1) & v13;
    v11 = v10 >> 6;
    v12 = 1 << v10;
    if ((v4[v10 >> 6] & (1 << v10)) == 0)
    {
      goto LABEL_81;
    }
  }

LABEL_85:
  v40 = v91;
  v92[10] = v91;
  OUTLINED_FUNCTION_4_110();
  v86[1] = v42;
  v43 = 8 * v42;
  v44 = v89;
  if (v45 > 0xD)
  {
    goto LABEL_178;
  }

  while (1)
  {
    v86[2] = v86;
    MEMORY[0x1EEE9AC00](v41);
    v46 = OUTLINED_FUNCTION_19_80(v86);
    memcpy(v46, v1 + 7, v43);
    v47 = v1[2];
    *(v10 + 8 * v11) &= ~v12;
    v87 = v10;
    v88 = v47 - 1;
    while (1)
    {
      v48 = *(v44 + 16);
      if (v40 == v48)
      {
        sub_1C72003E4();
        goto LABEL_174;
      }

      if (v40 >= v48)
      {
        break;
      }

      v49 = *(v90 + v40);
      OUTLINED_FUNCTION_165_4();
      OUTLINED_FUNCTION_112_9();
      switch(v49)
      {
        case 1:
          OUTLINED_FUNCTION_51_32();
          break;
        case 2:
          OUTLINED_FUNCTION_14_74();
          break;
        case 3:
          OUTLINED_FUNCTION_119_17();
          break;
        case 4:
          OUTLINED_FUNCTION_10_86();
          break;
        case 5:
          OUTLINED_FUNCTION_11_81();
          break;
        case 6:
          OUTLINED_FUNCTION_64_25();
          break;
        case 7:
          OUTLINED_FUNCTION_56_34();
          goto LABEL_102;
        case 8:
          OUTLINED_FUNCTION_6_115();
          break;
        case 9:
          OUTLINED_FUNCTION_123_12();
          break;
        case 10:
          OUTLINED_FUNCTION_8_96();
          break;
        case 11:
          OUTLINED_FUNCTION_13_95();
          break;
        case 12:
          OUTLINED_FUNCTION_17_81();
          break;
        case 13:
          OUTLINED_FUNCTION_7_104();
          break;
        case 14:
          OUTLINED_FUNCTION_12_86();
          break;
        case 15:
          OUTLINED_FUNCTION_120_13();
          break;
        case 16:
          OUTLINED_FUNCTION_57_33();
LABEL_102:
          OUTLINED_FUNCTION_82_22();
          break;
        case 17:
          OUTLINED_FUNCTION_34_48();
          break;
        case 18:
          OUTLINED_FUNCTION_16_73();
          break;
        case 19:
          OUTLINED_FUNCTION_9_97();
          break;
        default:
          break;
      }

      sub_1C75505AC();

      v10 = v92;
      sub_1C7551FAC();
      OUTLINED_FUNCTION_79_1();
      v52 = v51 & ~v50;
      v53 = v52 >> 6;
      v43 = 1 << v52;
      if (((1 << v52) & v4[v52 >> 6]) == 0)
      {
        goto LABEL_172;
      }

      v54 = ~v50;
      while (1)
      {
        v10 = 0xE400000000000000;
        v55 = 1701736302;
        switch(*(v1[6] + v52))
        {
          case 1:
            v10 = 0xE600000000000000;
            v56 = OUTLINED_FUNCTION_50_36();
            goto LABEL_132;
          case 2:
            v55 = OUTLINED_FUNCTION_0_144() & 0xFFFFFFFFFFFFLL | 0x6741000000000000;
            v59 = 0x6570795465;
            goto LABEL_123;
          case 3:
            v55 = OUTLINED_FUNCTION_127_3();
            break;
          case 4:
            OUTLINED_FUNCTION_188();
            v10 = v60 + 20;
            v55 = OUTLINED_FUNCTION_4_82() & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
            break;
          case 5:
            OUTLINED_FUNCTION_437();
            v10 = v61 + 1529;
            v55 = OUTLINED_FUNCTION_4_82() & 0xFFFFFFFFFFFFLL | 0x6557000000000000;
            break;
          case 6:
            v10 = 0xE600000000000000;
            v56 = OUTLINED_FUNCTION_144_10();
LABEL_132:
            v55 = v56 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
            break;
          case 7:
            v10 = 0xE800000000000000;
            v57 = OUTLINED_FUNCTION_147_6();
            goto LABEL_127;
          case 8:
            v55 = OUTLINED_FUNCTION_25_40();
            v10 = 0xEF6E6F697461636FLL;
            break;
          case 9:
            v55 = OUTLINED_FUNCTION_129_2();
            break;
          case 0xA:
            v55 = OUTLINED_FUNCTION_22_56();
            v10 = 0xEB00000000746E65;
            break;
          case 0xB:
            v55 = OUTLINED_FUNCTION_0_144() & 0xFFFFFFFFFFFFLL | 0x6C61000000000000;
            v59 = 0x746E657645;
LABEL_123:
            v10 = v59 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 0xC:
            v55 = OUTLINED_FUNCTION_31_49();
            v10 = 0xEA0000000000656CLL;
            break;
          case 0xD:
            OUTLINED_FUNCTION_207();
            v10 = v62 + 1284;
            v55 = OUTLINED_FUNCTION_29_45();
            break;
          case 0xE:
            OUTLINED_FUNCTION_437();
            v10 = v58 + 6;
            v55 = OUTLINED_FUNCTION_30_52();
            break;
          case 0xF:
            v55 = OUTLINED_FUNCTION_128_3();
            break;
          case 0x10:
            v10 = 0xE800000000000000;
            v57 = OUTLINED_FUNCTION_110_13();
LABEL_127:
            v55 = OUTLINED_FUNCTION_79_4(v57);
            break;
          case 0x11:
            v10 = 0xE600000000000000;
            v55 = OUTLINED_FUNCTION_93_3();
            break;
          case 0x12:
            v55 = OUTLINED_FUNCTION_26_42();
            v10 = 0xE900000000000065;
            break;
          case 0x13:
            OUTLINED_FUNCTION_188();
            v10 = v63 + 13;
            v55 = OUTLINED_FUNCTION_21_5();
            break;
          default:
            break;
        }

        v11 = 0xE400000000000000;
        v64 = 1701736302;
        switch(v49)
        {
          case 1:
            v11 = 0xE600000000000000;
            OUTLINED_FUNCTION_54_36();
            goto LABEL_155;
          case 2:
            OUTLINED_FUNCTION_5_4();
            v64 = v71 & 0xFFFFFFFFFFFFLL | 0x6741000000000000;
            v68 = 0x6570795465;
            goto LABEL_146;
          case 3:
            OUTLINED_FUNCTION_129_9();
            break;
          case 4:
            OUTLINED_FUNCTION_188();
            v11 = v69 + 20;
            OUTLINED_FUNCTION_22_68();
            v64 = v70 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
            break;
          case 5:
            OUTLINED_FUNCTION_437();
            v11 = v72 + 1529;
            OUTLINED_FUNCTION_22_68();
            v64 = v73 & 0xFFFFFFFFFFFFLL | 0x6557000000000000;
            break;
          case 6:
            v11 = 0xE600000000000000;
            OUTLINED_FUNCTION_127_12();
LABEL_155:
            v64 = v65 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
            break;
          case 7:
            v11 = 0xE800000000000000;
            OUTLINED_FUNCTION_128_11();
            goto LABEL_150;
          case 8:
            OUTLINED_FUNCTION_36_42();
            v11 = 0xEF6E6F697461636FLL;
            break;
          case 9:
            OUTLINED_FUNCTION_132_11();
            break;
          case 10:
            OUTLINED_FUNCTION_37_43();
            v11 = 0xEB00000000746E65;
            break;
          case 11:
            OUTLINED_FUNCTION_5_4();
            v64 = v67 & 0xFFFFFFFFFFFFLL | 0x6C61000000000000;
            v68 = 0x746E657645;
LABEL_146:
            v11 = v68 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 12:
            OUTLINED_FUNCTION_42_40();
            v11 = 0xEA0000000000656CLL;
            break;
          case 13:
            OUTLINED_FUNCTION_207();
            v11 = v74 + 1284;
            OUTLINED_FUNCTION_43_41();
            break;
          case 14:
            OUTLINED_FUNCTION_437();
            v11 = v66 + 6;
            OUTLINED_FUNCTION_41_46();
            break;
          case 15:
            OUTLINED_FUNCTION_130_9();
            break;
          case 16:
            v11 = 0xE800000000000000;
            OUTLINED_FUNCTION_138_8();
LABEL_150:
            OUTLINED_FUNCTION_105_6();
            break;
          case 17:
            v11 = 0xE600000000000000;
            OUTLINED_FUNCTION_66_28();
            break;
          case 18:
            OUTLINED_FUNCTION_38_42();
            v11 = 0xE900000000000065;
            break;
          case 19:
            OUTLINED_FUNCTION_188();
            v11 = v75 + 13;
            OUTLINED_FUNCTION_35_32();
            break;
          default:
            break;
        }

        if (v55 == v64 && v10 == v11)
        {
          break;
        }

        OUTLINED_FUNCTION_109_15();
        v12 = sub_1C7551DBC();

        if (v12)
        {
          goto LABEL_168;
        }

        v52 = (v52 + 1) & v54;
        v53 = v52 >> 6;
        v43 = 1 << v52;
        if ((v4[v52 >> 6] & (1 << v52)) == 0)
        {
          v44 = v89;
          goto LABEL_172;
        }
      }

LABEL_168:
      v77 = *(v87 + 8 * v53);
      *(v87 + 8 * v53) = v77 & ~v43;
      v44 = v89;
      if ((v77 & v43) != 0)
      {
        v78 = v88 - 1;
        v40 = v91;
        if (__OFSUB__(v88, 1))
        {
          goto LABEL_177;
        }

        --v88;
        if (!v78)
        {

          goto LABEL_174;
        }
      }

      else
      {
LABEL_172:
        v40 = v91;
      }
    }

    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  swift_slowAlloc();
  OUTLINED_FUNCTION_58_33();
  sub_1C74C947C(v79, v80, v81, v82, v83, v84, v85);
  if (v1 == -56)
  {
    OUTLINED_FUNCTION_24_2();

    OUTLINED_FUNCTION_10_1();

    goto LABEL_175;
  }

  OUTLINED_FUNCTION_10_1();
  __break(1u);
}

void sub_1C74C5104()
{
  OUTLINED_FUNCTION_33();
  v6 = v5;
  OUTLINED_FUNCTION_71_21(*MEMORY[0x1E69E9840]);
  if (v8)
  {
    v9 = v7;
    v83 = 0;
    v10 = *(v7 + 56);
    v91 = v7 + 56;
    v11 = -1 << *(v7 + 32);
    v88 = ~v11;
    if (-v11 < 64)
    {
      v12 = ~(-1 << -v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & v10;
    OUTLINED_FUNCTION_88_20();
    v89 = v14 >> 6;
    v93 = (v6 + 56);
    sub_1C75504FC();
    v15 = 0;
    do
    {
LABEL_6:
      if (!v13)
      {
        v16 = v15;
        while (1)
        {
          v17 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_190;
          }

          if (v17 >= v89)
          {
            goto LABEL_187;
          }

          v13 = *(v91 + 8 * v17);
          ++v16;
          if (v13)
          {
            v15 = v17;
            break;
          }
        }
      }

      OUTLINED_FUNCTION_76_25();
      sub_1C7551F3C();
      OUTLINED_FUNCTION_113_15();
      switch(v18)
      {
        case 1:
          OUTLINED_FUNCTION_51_32();
          break;
        case 2:
          OUTLINED_FUNCTION_14_74();
          break;
        case 3:
          OUTLINED_FUNCTION_119_17();
          break;
        case 4:
          OUTLINED_FUNCTION_10_86();
          break;
        case 5:
          OUTLINED_FUNCTION_11_81();
          break;
        case 6:
          OUTLINED_FUNCTION_64_25();
          break;
        case 7:
          OUTLINED_FUNCTION_56_34();
          goto LABEL_25;
        case 8:
          OUTLINED_FUNCTION_6_115();
          break;
        case 9:
          OUTLINED_FUNCTION_123_12();
          break;
        case 10:
          OUTLINED_FUNCTION_8_96();
          break;
        case 11:
          OUTLINED_FUNCTION_13_95();
          break;
        case 12:
          OUTLINED_FUNCTION_17_81();
          break;
        case 13:
          OUTLINED_FUNCTION_7_104();
          break;
        case 14:
          OUTLINED_FUNCTION_12_86();
          break;
        case 15:
          OUTLINED_FUNCTION_120_13();
          break;
        case 16:
          OUTLINED_FUNCTION_57_33();
LABEL_25:
          OUTLINED_FUNCTION_82_22();
          break;
        case 17:
          OUTLINED_FUNCTION_34_48();
          break;
        case 18:
          OUTLINED_FUNCTION_16_73();
          break;
        case 19:
          OUTLINED_FUNCTION_9_97();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_163_5();

      v19 = sub_1C7551FAC();
      v20 = -1 << *(v6 + 32);
      v0 = v19 & ~v20;
      v3 = v0 >> 6;
      v2 = 1 << v0;
    }

    while (((1 << v0) & v93[v0 >> 6]) == 0);
    v90 = v9;
    v21 = ~v20;
    v1 = v1;
    v92 = v6;
    while (1)
    {
      v22 = 0xE400000000000000;
      v23 = 1701736302;
      switch(*(*(v6 + 48) + v0))
      {
        case 1:
          v22 = 0xE600000000000000;
          v24 = OUTLINED_FUNCTION_50_36();
          goto LABEL_55;
        case 2:
          v29 = OUTLINED_FUNCTION_0_144();
          v23 = OUTLINED_FUNCTION_152_8(v29);
          goto LABEL_46;
        case 3:
          v23 = OUTLINED_FUNCTION_127_3();
          break;
        case 4:
          OUTLINED_FUNCTION_188();
          v22 = v28 + 20;
          v23 = OUTLINED_FUNCTION_4_82() & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
          break;
        case 5:
          OUTLINED_FUNCTION_437();
          v22 = v30 + 1529;
          v23 = OUTLINED_FUNCTION_4_82() & 0xFFFFFFFFFFFFLL | 0x6557000000000000;
          break;
        case 6:
          v22 = 0xE600000000000000;
          v24 = OUTLINED_FUNCTION_144_10();
LABEL_55:
          v23 = v24 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
          break;
        case 7:
          v22 = 0xE800000000000000;
          v25 = OUTLINED_FUNCTION_147_6();
          goto LABEL_50;
        case 8:
          OUTLINED_FUNCTION_25_40();
          OUTLINED_FUNCTION_140_10();
          break;
        case 9:
          v23 = OUTLINED_FUNCTION_129_2();
          break;
        case 0xA:
          v23 = OUTLINED_FUNCTION_22_56();
          v22 = 0xEB00000000746E65;
          break;
        case 0xB:
          v27 = OUTLINED_FUNCTION_0_144();
          v23 = OUTLINED_FUNCTION_108_13(v27);
LABEL_46:
          v22 = 0xED00000000000000;
          break;
        case 0xC:
          v23 = OUTLINED_FUNCTION_31_49();
          v22 = 0xEA0000000000656CLL;
          break;
        case 0xD:
          OUTLINED_FUNCTION_207();
          v22 = v31 + 1284;
          v23 = OUTLINED_FUNCTION_29_45();
          break;
        case 0xE:
          OUTLINED_FUNCTION_437();
          v22 = v26 + 6;
          v23 = OUTLINED_FUNCTION_30_52();
          break;
        case 0xF:
          v23 = OUTLINED_FUNCTION_128_3();
          break;
        case 0x10:
          v22 = 0xE800000000000000;
          v25 = OUTLINED_FUNCTION_110_13();
LABEL_50:
          v23 = OUTLINED_FUNCTION_79_4(v25);
          break;
        case 0x11:
          v22 = 0xE600000000000000;
          v23 = OUTLINED_FUNCTION_93_3();
          break;
        case 0x12:
          v23 = OUTLINED_FUNCTION_26_42();
          v22 = 0xE900000000000065;
          break;
        case 0x13:
          OUTLINED_FUNCTION_188();
          v22 = v32 + 13;
          v23 = OUTLINED_FUNCTION_21_5();
          break;
        default:
          break;
      }

      v4 = 0xE400000000000000;
      v33 = 1701736302;
      switch(v1)
      {
        case 1:
          v4 = 0xE600000000000000;
          OUTLINED_FUNCTION_54_36();
          goto LABEL_78;
        case 2:
          OUTLINED_FUNCTION_5_4();
          OUTLINED_FUNCTION_131_7();
          goto LABEL_69;
        case 3:
          OUTLINED_FUNCTION_129_9();
          break;
        case 4:
          OUTLINED_FUNCTION_188();
          v4 = v36 + 20;
          OUTLINED_FUNCTION_22_68();
          v33 = v37 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
          break;
        case 5:
          OUTLINED_FUNCTION_437();
          v4 = v38 + 1529;
          OUTLINED_FUNCTION_22_68();
          v33 = v39 & 0xFFFFFFFFFFFFLL | 0x6557000000000000;
          break;
        case 6:
          v4 = 0xE600000000000000;
          OUTLINED_FUNCTION_127_12();
LABEL_78:
          v33 = v34 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
          break;
        case 7:
          v4 = 0xE800000000000000;
          OUTLINED_FUNCTION_128_11();
          goto LABEL_73;
        case 8:
          OUTLINED_FUNCTION_36_42();
          OUTLINED_FUNCTION_146_8();
          break;
        case 9:
          OUTLINED_FUNCTION_132_11();
          break;
        case 10:
          OUTLINED_FUNCTION_37_43();
          v4 = 0xEB00000000746E65;
          break;
        case 11:
          OUTLINED_FUNCTION_5_4();
          OUTLINED_FUNCTION_135_9();
LABEL_69:
          v4 = 0xED00000000000000;
          break;
        case 12:
          OUTLINED_FUNCTION_42_40();
          v4 = 0xEA0000000000656CLL;
          break;
        case 13:
          OUTLINED_FUNCTION_207();
          v4 = v40 + 1284;
          OUTLINED_FUNCTION_43_41();
          break;
        case 14:
          OUTLINED_FUNCTION_437();
          v4 = v35 + 6;
          OUTLINED_FUNCTION_41_46();
          break;
        case 15:
          OUTLINED_FUNCTION_130_9();
          break;
        case 16:
          v4 = 0xE800000000000000;
          OUTLINED_FUNCTION_138_8();
LABEL_73:
          OUTLINED_FUNCTION_105_6();
          break;
        case 17:
          v4 = 0xE600000000000000;
          OUTLINED_FUNCTION_66_28();
          break;
        case 18:
          OUTLINED_FUNCTION_38_42();
          v4 = 0xE900000000000065;
          break;
        case 19:
          OUTLINED_FUNCTION_188();
          v4 = v41 + 13;
          OUTLINED_FUNCTION_35_32();
          break;
        default:
          break;
      }

      if (v23 == v33 && v22 == v4)
      {
        OUTLINED_FUNCTION_84_17();

        goto LABEL_94;
      }

      v43 = OUTLINED_FUNCTION_162_8();

      if (v43)
      {
        break;
      }

      v0 = (v0 + 1) & v21;
      v3 = v0 >> 6;
      v6 = v92;
      v2 = 1 << v0;
      if ((v93[v0 >> 6] & (1 << v0)) == 0)
      {
        v9 = v90;
        goto LABEL_6;
      }
    }

    OUTLINED_FUNCTION_84_17();
LABEL_94:
    v4 = v92;
    OUTLINED_FUNCTION_4_110();
    v84 = v45;
    v1 = 8 * v45;
    if (v46 > 0xD)
    {
      goto LABEL_191;
    }

    while (1)
    {
      v85 = &v83;
      MEMORY[0x1EEE9AC00](v44);
      v47 = OUTLINED_FUNCTION_19_80(&v83);
      memcpy(v47, v93, v1);
      v48 = *(v0 + 8 * v3) & ~v2;
      v49 = *(v4 + 16);
      v87 = v0;
      *(v0 + 8 * v3) = v48;
      v50 = v49 - 1;
LABEL_96:
      v86 = v50;
LABEL_97:
      while (v13)
      {
LABEL_103:
        OUTLINED_FUNCTION_76_25();
        sub_1C7551F3C();
        OUTLINED_FUNCTION_113_15();
        switch(v52)
        {
          case 1:
            OUTLINED_FUNCTION_51_32();
            break;
          case 2:
            OUTLINED_FUNCTION_14_74();
            break;
          case 3:
            OUTLINED_FUNCTION_119_17();
            break;
          case 4:
            OUTLINED_FUNCTION_10_86();
            break;
          case 5:
            OUTLINED_FUNCTION_11_81();
            break;
          case 6:
            OUTLINED_FUNCTION_64_25();
            break;
          case 7:
            OUTLINED_FUNCTION_56_34();
            goto LABEL_116;
          case 8:
            OUTLINED_FUNCTION_6_115();
            break;
          case 9:
            OUTLINED_FUNCTION_123_12();
            break;
          case 10:
            OUTLINED_FUNCTION_8_96();
            break;
          case 11:
            OUTLINED_FUNCTION_13_95();
            break;
          case 12:
            OUTLINED_FUNCTION_17_81();
            break;
          case 13:
            OUTLINED_FUNCTION_7_104();
            break;
          case 14:
            OUTLINED_FUNCTION_12_86();
            break;
          case 15:
            OUTLINED_FUNCTION_120_13();
            break;
          case 16:
            OUTLINED_FUNCTION_57_33();
LABEL_116:
            OUTLINED_FUNCTION_82_22();
            break;
          case 17:
            OUTLINED_FUNCTION_34_48();
            break;
          case 18:
            OUTLINED_FUNCTION_16_73();
            break;
          case 19:
            OUTLINED_FUNCTION_9_97();
            break;
          default:
            break;
        }

        OUTLINED_FUNCTION_163_5();

        v0 = &v94;
        sub_1C7551FAC();
        OUTLINED_FUNCTION_9_2();
        v55 = v54 & ~v53;
        v2 = v55 >> 6;
        v3 = 1 << v55;
        if (((1 << v55) & v93[v55 >> 6]) != 0)
        {
          v56 = ~v53;
          v0 = v1;
          while (1)
          {
            v1 = 0xE400000000000000;
            v57 = 1701736302;
            switch(*(*(v4 + 48) + v55))
            {
              case 1:
                v1 = 0xE600000000000000;
                v58 = OUTLINED_FUNCTION_50_36();
                goto LABEL_146;
              case 2:
                v57 = OUTLINED_FUNCTION_0_144() & 0xFFFFFFFFFFFFLL | 0x6741000000000000;
                v61 = 0x6570795465;
                goto LABEL_137;
              case 3:
                v57 = OUTLINED_FUNCTION_127_3();
                break;
              case 4:
                OUTLINED_FUNCTION_188();
                v1 = v62 + 20;
                v57 = OUTLINED_FUNCTION_4_82() & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
                break;
              case 5:
                OUTLINED_FUNCTION_437();
                v1 = v63 + 1529;
                v57 = OUTLINED_FUNCTION_4_82() & 0xFFFFFFFFFFFFLL | 0x6557000000000000;
                break;
              case 6:
                v1 = 0xE600000000000000;
                v58 = OUTLINED_FUNCTION_144_10();
LABEL_146:
                v57 = v58 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
                break;
              case 7:
                v1 = 0xE800000000000000;
                v59 = OUTLINED_FUNCTION_147_6();
                goto LABEL_141;
              case 8:
                v57 = OUTLINED_FUNCTION_25_40();
                v1 = 0xEF6E6F697461636FLL;
                break;
              case 9:
                v57 = OUTLINED_FUNCTION_129_2();
                break;
              case 0xA:
                v57 = OUTLINED_FUNCTION_22_56();
                v1 = 0xEB00000000746E65;
                break;
              case 0xB:
                v57 = OUTLINED_FUNCTION_0_144() & 0xFFFFFFFFFFFFLL | 0x6C61000000000000;
                v61 = 0x746E657645;
LABEL_137:
                v1 = v61 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                break;
              case 0xC:
                v57 = OUTLINED_FUNCTION_31_49();
                v1 = 0xEA0000000000656CLL;
                break;
              case 0xD:
                OUTLINED_FUNCTION_207();
                v1 = v64 + 1284;
                v57 = OUTLINED_FUNCTION_29_45();
                break;
              case 0xE:
                OUTLINED_FUNCTION_437();
                v1 = v60 + 6;
                v57 = OUTLINED_FUNCTION_30_52();
                break;
              case 0xF:
                v57 = OUTLINED_FUNCTION_128_3();
                break;
              case 0x10:
                v1 = 0xE800000000000000;
                v59 = OUTLINED_FUNCTION_110_13();
LABEL_141:
                v57 = OUTLINED_FUNCTION_79_4(v59);
                break;
              case 0x11:
                v1 = 0xE600000000000000;
                v57 = OUTLINED_FUNCTION_93_3();
                break;
              case 0x12:
                v57 = OUTLINED_FUNCTION_26_42();
                v1 = 0xE900000000000065;
                break;
              case 0x13:
                OUTLINED_FUNCTION_188();
                v1 = v65 + 13;
                v57 = OUTLINED_FUNCTION_21_5();
                break;
              default:
                break;
            }

            v66 = 0xE400000000000000;
            v67 = 1701736302;
            switch(v0)
            {
              case 1uLL:
                v66 = 0xE600000000000000;
                OUTLINED_FUNCTION_54_36();
                goto LABEL_169;
              case 2uLL:
                OUTLINED_FUNCTION_5_4();
                OUTLINED_FUNCTION_131_7();
                goto LABEL_160;
              case 3uLL:
                OUTLINED_FUNCTION_129_9();
                break;
              case 4uLL:
                OUTLINED_FUNCTION_188();
                v66 = v70 + 20;
                OUTLINED_FUNCTION_22_68();
                v67 = v71 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
                break;
              case 5uLL:
                OUTLINED_FUNCTION_437();
                v66 = v72 + 1529;
                OUTLINED_FUNCTION_22_68();
                v67 = v73 & 0xFFFFFFFFFFFFLL | 0x6557000000000000;
                break;
              case 6uLL:
                v66 = 0xE600000000000000;
                OUTLINED_FUNCTION_127_12();
LABEL_169:
                v67 = v68 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
                break;
              case 7uLL:
                v66 = 0xE800000000000000;
                OUTLINED_FUNCTION_128_11();
                goto LABEL_164;
              case 8uLL:
                OUTLINED_FUNCTION_36_42();
                OUTLINED_FUNCTION_146_8();
                break;
              case 9uLL:
                OUTLINED_FUNCTION_132_11();
                break;
              case 0xAuLL:
                OUTLINED_FUNCTION_37_43();
                v66 = 0xEB00000000746E65;
                break;
              case 0xBuLL:
                OUTLINED_FUNCTION_5_4();
                OUTLINED_FUNCTION_135_9();
LABEL_160:
                v66 = 0xED00000000000000;
                break;
              case 0xCuLL:
                OUTLINED_FUNCTION_42_40();
                v66 = 0xEA0000000000656CLL;
                break;
              case 0xDuLL:
                OUTLINED_FUNCTION_207();
                v66 = v74 + 1284;
                OUTLINED_FUNCTION_43_41();
                break;
              case 0xEuLL:
                OUTLINED_FUNCTION_437();
                v66 = v69 + 6;
                OUTLINED_FUNCTION_41_46();
                break;
              case 0xFuLL:
                OUTLINED_FUNCTION_130_9();
                break;
              case 0x10uLL:
                v66 = 0xE800000000000000;
                OUTLINED_FUNCTION_138_8();
LABEL_164:
                OUTLINED_FUNCTION_105_6();
                break;
              case 0x11uLL:
                v66 = 0xE600000000000000;
                OUTLINED_FUNCTION_66_28();
                break;
              case 0x12uLL:
                OUTLINED_FUNCTION_38_42();
                v66 = 0xE900000000000065;
                break;
              case 0x13uLL:
                OUTLINED_FUNCTION_188();
                v66 = v75 + 13;
                OUTLINED_FUNCTION_35_32();
                break;
              default:
                break;
            }

            if (v57 == v67 && v1 == v66)
            {
              break;
            }

            v77 = OUTLINED_FUNCTION_162_8();

            if (v77)
            {
              goto LABEL_182;
            }

            v55 = (v55 + 1) & v56;
            v2 = v55 >> 6;
            v4 = v92;
            v3 = 1 << v55;
            if ((v93[v55 >> 6] & (1 << v55)) == 0)
            {
              goto LABEL_97;
            }
          }

LABEL_182:
          v78 = *(v87 + 8 * v2);
          *(v87 + 8 * v2) = v78 & ~v3;
          v4 = v92;
          if ((v78 & v3) != 0)
          {
            OUTLINED_FUNCTION_100_18();
            v80 = __OFSUB__(v79, 1);
            v50 = v79 - 1;
            if (v80)
            {
              __break(1u);
            }

            if (!v50)
            {

              goto LABEL_187;
            }

            goto LABEL_96;
          }
        }
      }

      v1 = v91;
      while (1)
      {
        v51 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v51 >= v89)
        {
          sub_1C72003E4();
          goto LABEL_187;
        }

        v13 = *(v91 + 8 * v51);
        ++v15;
        if (v13)
        {
          v15 = v51;
          goto LABEL_103;
        }
      }

      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }
    }

    v81 = swift_slowAlloc();
    v82 = v83;
    sub_1C74C93F4(v81, v84, v93, v84, v4, v0, v95);
    if (!v82)
    {

      OUTLINED_FUNCTION_0_60();
      v88 = v95[2];
LABEL_187:
      sub_1C6F61E88();
      goto LABEL_188;
    }

    OUTLINED_FUNCTION_0_60();
    __break(1u);
  }

  else
  {

LABEL_188:
    OUTLINED_FUNCTION_25_0();
  }
}

void sub_1C74C5C54()
{
  OUTLINED_FUNCTION_33();
  v4 = v3;
  OUTLINED_FUNCTION_71_21(*MEMORY[0x1E69E9840]);
  if (!v6)
  {

    goto LABEL_49;
  }

  v7 = v5;
  if ((v5 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1C755165C();
    OUTLINED_FUNCTION_19_1();
    type metadata accessor for Spatial3DCuration.WallpaperSuggester.SuggestionCandidate();
    sub_1C74C9D10(&qword_1EC2167A8, type metadata accessor for Spatial3DCuration.WallpaperSuggester.SuggestionCandidate);
    OUTLINED_FUNCTION_161_7();
    v7 = v71;
    v8 = v72;
    v9 = v73;
    v10 = v74;
    v2 = v75;
  }

  else
  {
    OUTLINED_FUNCTION_9_2();
    v8 = v7;
    OUTLINED_FUNCTION_77_19();
    sub_1C75504FC();
    v9 = v0;
    v10 = 0;
  }

  v11 = (v9 + 64) >> 6;
  v69 = (v4 + 56);
  v65 = v11;
  v66 = v8;
  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_14:
    if (!sub_1C75516FC())
    {
      goto LABEL_48;
    }

    type metadata accessor for Spatial3DCuration.WallpaperSuggester.SuggestionCandidate();
    OUTLINED_FUNCTION_155_4();
    swift_dynamicCast();
    v1 = v70;
    v12 = v10;
    v68 = v2;
    if (!v70)
    {
      goto LABEL_48;
    }
  }

  else
  {
LABEL_7:
    v12 = v10;
    v13 = v10;
    if (v2)
    {
LABEL_11:
      OUTLINED_FUNCTION_92_19();
      v16 = v15 & v14;
      v1 = *(*(v7 + 48) + ((v13 << 9) | (8 * v17)));
      v18 = v1;
      v12 = v13;
    }

    else
    {
      while (1)
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_52;
        }

        if (v13 >= v11)
        {
          break;
        }

        ++v12;
        if (*(v8 + 8 * v13))
        {
          goto LABEL_11;
        }
      }

      v1 = 0;
      v16 = 0;
    }

    OUTLINED_FUNCTION_134_12();
    v68 = v16;
    if (!v1)
    {
      goto LABEL_48;
    }
  }

  v13 = v1;
  sub_1C75513DC();
  OUTLINED_FUNCTION_9_2();
  v67 = ~v20;
  while (1)
  {
    v10 = v19 & v67;
    v8 = (v19 & v67) >> 6;
    OUTLINED_FUNCTION_68_26();
    v11 = v21 << v10;
    if (((v21 << v10) & v22) == 0)
    {

      v10 = v12;
      v2 = v68;
      v11 = v65;
      v8 = v66;
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }

    type metadata accessor for Spatial3DCuration.WallpaperSuggester.SuggestionCandidate();
    v23 = *(*(v4 + 48) + 8 * v10);
    v1 = sub_1C75513EC();

    if (v1)
    {
      break;
    }

    v19 = v10 + 1;
  }

  OUTLINED_FUNCTION_4_110();
  OUTLINED_FUNCTION_142_6(v24);
  v1 = 8 * v33;
  if (v34 > 0xD)
  {
    goto LABEL_53;
  }

  while (2)
  {
    OUTLINED_FUNCTION_61_24(v25, v26, v27, v28, v29, v30, v31, v32, v62);
    MEMORY[0x1EEE9AC00](v35);
    v44 = OUTLINED_FUNCTION_27_52(v36, v37, v38, v39, v40, v41, v42, v43, v63);
    memcpy(v44, v69, v1);
    v62 = 0;
    OUTLINED_FUNCTION_141_10(*(v13 + 8 * v8) & ~v11);
    v45 = v65;
    v13 = v66;
    v8 = v68;
    v64 = v7;
    while (1)
    {
LABEL_25:
      if ((v7 & 0x8000000000000000) != 0)
      {
        if (!sub_1C75516FC())
        {
          goto LABEL_46;
        }

        OUTLINED_FUNCTION_155_4();
        swift_dynamicCast();
        v10 = v70;
        if (!v70)
        {
          goto LABEL_46;
        }

        goto LABEL_36;
      }

      if (!v8)
      {
        break;
      }

LABEL_31:
      OUTLINED_FUNCTION_49_16();
      v10 = *(*(v7 + 48) + ((v12 << 9) | (8 * v47)));
      v48 = v10;
LABEL_32:
      OUTLINED_FUNCTION_134_12();
      if (!v10)
      {
LABEL_46:
        OUTLINED_FUNCTION_39_45();
        sub_1C7200738();
        goto LABEL_47;
      }

LABEL_36:
      v68 = v8;
      v1 = v10;
      sub_1C75513DC();
      v49 = v4;
      OUTLINED_FUNCTION_9_2();
      v11 = ~v51;
      do
      {
        v52 = v50 & v11;
        OUTLINED_FUNCTION_68_26();
        if (((v53 << v52) & v54) == 0)
        {

          v4 = v49;
          v7 = v64;
          v45 = v65;
          v13 = v66;
          goto LABEL_25;
        }

        v55 = *(*(v49 + 48) + 8 * v52);
        v1 = sub_1C75513EC();

        v50 = v52 + 1;
      }

      while ((v1 & 1) == 0);

      OUTLINED_FUNCTION_136_6();
      v4 = v49;
      v7 = v64;
      v45 = v65;
      v13 = v66;
      if (!v56)
      {
        OUTLINED_FUNCTION_62_29();
        if (v57)
        {
          __break(1u);
        }

        if (!v58)
        {

LABEL_47:
          OUTLINED_FUNCTION_59_30();
          goto LABEL_48;
        }
      }
    }

    while (1)
    {
      v46 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v10 = 0;
        v8 = 0;
        goto LABEL_32;
      }

      v8 = *(v13 + 8 * v46);
      ++v12;
      if (v8)
      {
        v12 = v46;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  swift_slowAlloc();
  OUTLINED_FUNCTION_72_26();
  sub_1C74C9504(v59, v60, v69, v60, v4, v10, v61);

  OUTLINED_FUNCTION_21_59();
LABEL_48:
  sub_1C6F61E88();
LABEL_49:
  OUTLINED_FUNCTION_25_0();
}

void sub_1C74C615C()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  OUTLINED_FUNCTION_71_21(*MEMORY[0x1E69E9840]);
  if (v5)
  {
    v6 = 0xD000000000000010;
    v8 = v4 + 56;
    v7 = *(v4 + 56);
    v9 = -1;
    v10 = -1 << *(v4 + 32);
    v59 = ~v10;
    if (-v10 < 64)
    {
      v11 = ~(-1 << -v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & v7;
    OUTLINED_FUNCTION_88_20();
    v14 = v13 >> 6;
    v71 = (v3 + 56);
    v15 = sub_1C75504FC();
    v16 = 0;
    v72 = "edMoodsInferredFallback";
    v65 = "appleMusicSimpleSearch";
    v66 = "appleMusicMaestro";
    v63 = v15;
    v64 = "appleMusicSmartSearch";
    v61 = v14;
    v62 = v8;
    v69 = v3;
LABEL_6:
    while (v12)
    {
      v17 = v16;
LABEL_12:
      OUTLINED_FUNCTION_98_19();
      memcpy(v77, (*(v19 + 48) + 192 * v20), sizeof(v77));
      sub_1C7551F3C();
      v21 = LOBYTE(v77[0]);
      v22 = v77[1];
      v1 = v77[2];
      sub_1C7080654(v77, v76);
      v70 = v22;
      sub_1C75505AC();
      v67 = v21;
      sub_1C75505AC();

      v23 = sub_1C7551FAC();
      v24 = -1 << *(v3 + 32);
      v8 = v23 & ~v24;
      v14 = v8 >> 6;
      v0 = 1 << v8;
      if (((1 << v8) & v71[v8 >> 6]) != 0)
      {
        v68 = ~v24;
        while (1)
        {
          memcpy(v76, (*(v3 + 48) + 192 * v8), sizeof(v76));
          v25 = v76[1] == v70 && v76[2] == v1;
          if (v25 || (OUTLINED_FUNCTION_162_8() & 1) != 0)
          {
            v26 = 0xD000000000000011;
            v27 = v72;
            switch(LOBYTE(v76[0]))
            {
              case 1:
                v26 = 0xD000000000000016;
                v27 = v66;
                break;
              case 2:
                v26 = 0xD000000000000015;
                v27 = v65;
                break;
              case 3:
                v26 = 0xD000000000000010;
                v27 = v64;
                break;
              default:
                break;
            }

            v28 = v27 | 0x8000000000000000;
            v29 = 0xD000000000000011;
            v30 = v72;
            switch(v67)
            {
              case 1:
                v29 = 0xD000000000000016;
                v30 = v66;
                break;
              case 2:
                v29 = 0xD000000000000015;
                v30 = v65;
                break;
              case 3:
                v29 = 0xD000000000000010;
                v30 = v64;
                break;
              default:
                break;
            }

            if (v26 == v29 && v28 == (v30 | 0x8000000000000000))
            {
              OUTLINED_FUNCTION_104_13();
              sub_1C7080654(v76, v75);

              sub_1C70806B0(v76);
              v3 = v69;
              goto LABEL_39;
            }

            v9 = OUTLINED_FUNCTION_107_14();
            sub_1C7080654(v76, v75);

            sub_1C70806B0(v76);
            v3 = v69;
            if (v9)
            {
              break;
            }
          }

          v8 = (v8 + 1) & v68;
          v14 = v8 >> 6;
          v0 = 1 << v8;
          if ((v71[v8 >> 6] & (1 << v8)) == 0)
          {
            sub_1C70806B0(v77);
            v16 = v17;
            v8 = v62;
            v6 = 0xD000000000000010;
            v14 = v61;
            v9 = -1;
            goto LABEL_6;
          }
        }

        OUTLINED_FUNCTION_104_13();
LABEL_39:
        sub_1C70806B0(v77);
        OUTLINED_FUNCTION_4_110();
        v56 = v33;
        v6 = 8 * v33;
        if (v34 > 0xD)
        {
          goto LABEL_81;
        }

        while (2)
        {
          v57 = &v55;
          MEMORY[0x1EEE9AC00](v32);
          v35 = OUTLINED_FUNCTION_19_80(&v55);
          memcpy(v35, v71, v6);
          v36 = *(v8 + 8 * v14) & ~v0;
          v58 = v8;
          *(v8 + 8 * v14) = v36;
          v37 = *(v3 + 16) - 1;
          v38 = v61;
LABEL_41:
          v8 = v17;
          v60 = v37;
LABEL_42:
          while (2)
          {
            if (v12)
            {
              v17 = v8;
LABEL_47:
              OUTLINED_FUNCTION_98_19();
              memcpy(v75, (*(v9 + 48) + 192 * v39), sizeof(v75));
              sub_1C7551F3C();
              v40 = LOBYTE(v75[0]);
              v41 = v75[1];
              v6 = v75[2];
              sub_1C7080654(v75, v74);
              v70 = v41;
              sub_1C75505AC();
              sub_1C75505AC();

              sub_1C7551FAC();
              OUTLINED_FUNCTION_9_2();
              v0 = v43 & ~v42;
              v44 = v0 >> 6;
              v14 = 1 << v0;
              if (((1 << v0) & v71[v0 >> 6]) == 0)
              {
LABEL_68:
                sub_1C70806B0(v75);
                v8 = v17;
                v1 = v62;
                v9 = v63;
                v38 = v61;
                continue;
              }

              v67 = v40;
              v68 = ~v42;
              while (1)
              {
                memcpy(v74, (*(v3 + 48) + 192 * v0), sizeof(v74));
                v45 = v74[1] == v70 && v74[2] == v6;
                if (v45 || (sub_1C7551DBC() & 1) != 0)
                {
                  v46 = 0xD000000000000011;
                  v47 = v72;
                  switch(LOBYTE(v74[0]))
                  {
                    case 1:
                      v46 = 0xD000000000000016;
                      v47 = v66;
                      break;
                    case 2:
                      v46 = 0xD000000000000015;
                      v47 = v65;
                      break;
                    case 3:
                      v46 = 0xD000000000000010;
                      v47 = v64;
                      break;
                    default:
                      break;
                  }

                  v48 = v47 | 0x8000000000000000;
                  v49 = 0xD000000000000011;
                  v50 = v72;
                  switch(v67)
                  {
                    case 1:
                      v49 = 0xD000000000000016;
                      v50 = v66;
                      break;
                    case 2:
                      v49 = 0xD000000000000015;
                      v50 = v65;
                      break;
                    case 3:
                      v49 = 0xD000000000000010;
                      v50 = v64;
                      break;
                    default:
                      break;
                  }

                  if (v46 == v49 && v48 == (v50 | 0x8000000000000000))
                  {
                    sub_1C7080654(v74, v73);

                    sub_1C70806B0(v74);
                    v3 = v69;
LABEL_70:
                    sub_1C70806B0(v75);
                    v53 = *(v58 + 8 * v44);
                    *(v58 + 8 * v44) = v53 & ~v14;
                    v25 = (v53 & v14) == 0;
                    v38 = v61;
                    if (!v25)
                    {
                      v37 = v60 - 1;
                      v1 = v62;
                      v9 = v63;
                      if (__OFSUB__(v60, 1))
                      {
                        __break(1u);
                      }

                      if (v60 == 1)
                      {

                        goto LABEL_77;
                      }

                      goto LABEL_41;
                    }

                    v8 = v17;
                    v1 = v62;
                    v9 = v63;
                    goto LABEL_42;
                  }

                  v52 = OUTLINED_FUNCTION_107_14();
                  sub_1C7080654(v74, v73);

                  sub_1C70806B0(v74);
                  v3 = v69;
                  if (v52)
                  {
                    goto LABEL_70;
                  }
                }

                v0 = (v0 + 1) & v68;
                v44 = v0 >> 6;
                v14 = 1 << v0;
                if ((v71[v0 >> 6] & (1 << v0)) == 0)
                {
                  goto LABEL_68;
                }
              }
            }

            break;
          }

          while (1)
          {
            v17 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              break;
            }

            if (v17 >= v38)
            {
              sub_1C7200888();
              goto LABEL_77;
            }

            v12 = *(v1 + 8 * v17);
            ++v8;
            if (v12)
            {
              goto LABEL_47;
            }
          }

          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:

          if (swift_stdlib_isStackAllocationSafe())
          {

            continue;
          }

          break;
        }

        v54 = swift_slowAlloc();
        sub_1C74C958C(v54, v56, v71, v56, v3, v8, v78);

        OUTLINED_FUNCTION_109();
        v59 = v78[2];
        goto LABEL_77;
      }

      sub_1C70806B0(v77);
      v16 = v17;
      v8 = v62;
      v14 = v61;
    }

    v18 = v16;
    while (1)
    {
      v17 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_80;
      }

      if (v17 >= v14)
      {
        break;
      }

      v12 = *(v8 + 8 * v17);
      ++v18;
      if (v12)
      {
        goto LABEL_12;
      }
    }

LABEL_77:
    sub_1C6F61E88();
  }

  else
  {
  }

  OUTLINED_FUNCTION_25_0();
}

void sub_1C74C69E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v49[0] = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BD80);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v49 - v10;
  v57 = type metadata accessor for Hastings.Feature();
  v54 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v66 = v49 - v15;
  v16 = *(a3 + 16);
  v17 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v18 = *(a1 + v17) & ((-1 << a4) - 1);
  v51 = a1;
  *(a1 + v17) = v18;
  v19 = v16 - 1;
  v60 = a3 + 56;
  v61 = a3;
  v52 = v11;
  v53 = a5;
  do
  {
    v50 = v19;
    do
    {
      while (1)
      {
        v20 = *a5;
        v21 = a5[1];
        v22 = a5[2];
        v23 = a5[3];
        v24 = a5[4];
        if (v24)
        {
          v25 = a5[3];
          goto LABEL_9;
        }

        do
        {
          v25 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            __break(1u);
LABEL_53:
            __break(1u);
            return;
          }

          if (v25 >= ((v22 + 64) >> 6))
          {
            v26 = 0;
            v27 = 1;
            goto LABEL_10;
          }

          v24 = *(v21 + 8 * v25);
          ++v23;
        }

        while (!v24);
        v23 = v25;
LABEL_9:
        v26 = (v24 - 1) & v24;
        sub_1C74C9C60(*(v20 + 48) + *(v54 + 72) * (__clz(__rbit64(v24)) | (v25 << 6)), v11);
        v27 = 0;
LABEL_10:
        v28 = v57;
        __swift_storeEnumTagSinglePayload(v11, v27, 1, v57);
        *a5 = v20;
        a5[1] = v21;
        a5[2] = v22;
        a5[3] = v23;
        a5[4] = v26;
        if (__swift_getEnumTagSinglePayload(v11, 1, v28) == 1)
        {
          sub_1C6FD7FC8(v11, &qword_1EC21BD80);

          sub_1C71FF5B8();
          return;
        }

        v29 = v66;
        sub_1C74C9D58(v11, v66);
        sub_1C7551F3C();
        v31 = *v29;
        v30 = v29[1];
        sub_1C75505AC();
        sub_1C75505AC();

        v32 = *(v57 + 24);
        v33 = sub_1C754F58C();
        sub_1C74C9D10(&qword_1EC215238, MEMORY[0x1E69C1928]);
        v55 = v33;
        v56 = v32;
        sub_1C755059C();
        v34 = sub_1C7551FAC();
        v35 = -1 << *(v61 + 32);
        v36 = v34 & ~v35;
        v37 = v36 >> 6;
        v38 = 1 << v36;
        if (((1 << v36) & *(v60 + 8 * (v36 >> 6))) != 0)
        {
          break;
        }

LABEL_45:
        sub_1C74C9CB8(v66, type metadata accessor for Hastings.Feature);
        v11 = v52;
        a5 = v53;
      }

      v58 = ~v35;
      v59 = *(v54 + 72);
      while (1)
      {
        sub_1C74C9C60(*(v61 + 48) + v59 * v36, v13);
        v39 = *v13 == v31 && *(v13 + 1) == v30;
        if (!v39 && (sub_1C7551DBC() & 1) == 0)
        {
LABEL_37:
          sub_1C74C9CB8(v13, type metadata accessor for Hastings.Feature);
          goto LABEL_44;
        }

        v40 = 0xE900000000000072;
        v41 = 0x6574636172616843;
        switch(v13[16])
        {
          case 1:
            v40 = 0xE800000000000000;
            v41 = 0x6E6F697461636F4CLL;
            break;
          case 2:
            v40 = 0xE500000000000000;
            v41 = 0x746E657645;
            break;
          case 3:
            v40 = 0xE400000000000000;
            v41 = 1885958740;
            break;
          case 4:
            v40 = 0xE500000000000000;
            v41 = 0x7972657551;
            break;
          case 5:
            v41 = 0x6B61657262656954;
            v40 = 0xEA00000000007265;
            break;
          default:
            break;
        }

        v42 = 0x6574636172616843;
        v43 = 0xE900000000000072;
        switch(*(v66 + 16))
        {
          case 1:
            v43 = 0xE800000000000000;
            v42 = 0x6E6F697461636F4CLL;
            break;
          case 2:
            v43 = 0xE500000000000000;
            v42 = 0x746E657645;
            break;
          case 3:
            v43 = 0xE400000000000000;
            v42 = 1885958740;
            break;
          case 4:
            v43 = 0xE500000000000000;
            v42 = 0x7972657551;
            break;
          case 5:
            v42 = 0x6B61657262656954;
            v43 = 0xEA00000000007265;
            break;
          default:
            break;
        }

        if (v41 == v42 && v40 == v43)
        {
        }

        else
        {
          v45 = sub_1C7551DBC();

          if ((v45 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        sub_1C74C9D10(&qword_1EC2147A0, MEMORY[0x1E69C1928]);
        sub_1C7550A5C();
        sub_1C7550A5C();
        if (v64 == v62 && v65 == v63)
        {
          break;
        }

        v47 = sub_1C7551DBC();

        sub_1C74C9CB8(v13, type metadata accessor for Hastings.Feature);
        if (v47)
        {
          goto LABEL_47;
        }

LABEL_44:
        v36 = (v36 + 1) & v58;
        v37 = v36 >> 6;
        v38 = 1 << v36;
        if ((*(v60 + 8 * (v36 >> 6)) & (1 << v36)) == 0)
        {
          goto LABEL_45;
        }
      }

      sub_1C74C9CB8(v13, type metadata accessor for Hastings.Feature);
LABEL_47:
      sub_1C74C9CB8(v66, type metadata accessor for Hastings.Feature);
      v48 = *(v51 + 8 * v37);
      *(v51 + 8 * v37) = v48 & ~v38;
      v11 = v52;
      a5 = v53;
    }

    while ((v48 & v38) == 0);
    v19 = v50 - 1;
    if (__OFSUB__(v50, 1))
    {
      goto LABEL_53;
    }
  }

  while (v50 != 1);
}

void sub_1C74C71E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v25 = v8;
LABEL_3:
    if ((*v5 & 0x8000000000000000) != 0)
    {
      if (!sub_1C75516FC())
      {
        goto LABEL_25;
      }

      sub_1C6F65BE8(0, &qword_1EDD0FA70);
      swift_dynamicCast();
      v13 = v28;
      if (!v28)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    v11 = v5[3];
    v10 = v5[4];
    if (!v10)
    {
      break;
    }

    v12 = v5[3];
LABEL_13:
    v14 = (v10 - 1) & v10;
    v13 = *(*(*v5 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v10)))));
    v15 = v13;
LABEL_14:
    v5[3] = v11;
    v5[4] = v14;
    if (!v13)
    {
LABEL_25:

      sub_1C71FF8D4();
      return;
    }

LABEL_15:
    v16 = sub_1C75513DC();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        v5 = a5;
        goto LABEL_3;
      }

      sub_1C6F65BE8(0, &qword_1EDD0FA70);
      v21 = *(*(a3 + 48) + 8 * v18);
      v22 = sub_1C75513EC();

      v16 = v18 + 1;
    }

    while ((v22 & 1) == 0);

    v23 = *(a1 + 8 * v19);
    *(a1 + 8 * v19) = v23 & ~v20;
    v24 = (v23 & v20) == 0;
    v5 = a5;
    if (v24)
    {
      goto LABEL_3;
    }

    v8 = v25 - 1;
    if (__OFSUB__(v25, 1))
    {
      goto LABEL_27;
    }

    if (v25 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= ((v5[2] + 64) >> 6))
    {
      v13 = 0;
      v14 = 0;
      goto LABEL_14;
    }

    v10 = *(v5[1] + 8 * v12);
    ++v11;
    if (v10)
    {
      v11 = v12;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_1C74C742C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v8 = a3 + 56;
  v25 = a5;
  while (1)
  {
    v23 = v7;
LABEL_3:
    v9 = a5[1];
    v10 = *(*a5 + 16);
    if (v9 == v10)
    {

      sub_1C71FFA70();
      return;
    }

    if (v9 >= v10)
    {
      break;
    }

    v11 = *a5 + 16 * v9;
    v13 = *(v11 + 32);
    v12 = *(v11 + 40);
    a5[1] = v9 + 1;
    sub_1C7551F3C();
    sub_1C75504FC();
    sub_1C75505AC();
    v14 = sub_1C7551FAC();
    v15 = ~(-1 << *(a3 + 32));
    do
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = 1 << (v14 & v15);
      if ((v18 & *(v8 + 8 * v17)) == 0)
      {

        a5 = v25;
        goto LABEL_3;
      }

      v19 = (*(a3 + 48) + 16 * v16);
      if (*v19 == v13 && v19[1] == v12)
      {
        break;
      }

      v21 = sub_1C7551DBC();
      v14 = v16 + 1;
    }

    while ((v21 & 1) == 0);

    v22 = *(a1 + 8 * v17);
    *(a1 + 8 * v17) = v22 & ~v18;
    a5 = v25;
    if ((v22 & v18) == 0)
    {
      goto LABEL_3;
    }

    v7 = v23 - 1;
    if (__OFSUB__(v23, 1))
    {
      goto LABEL_20;
    }

    if (v23 == 1)
    {
      return;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_1C74C75D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
LABEL_2:
  while (1)
  {
    v11 = a5[3];
    v12 = a5[4];
    if (!v12)
    {
      break;
    }

    v13 = a5[3];
LABEL_7:
    v14 = *(*(*a5 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    a5[3] = v13;
    a5[4] = (v12 - 1) & v12;
    v15 = sub_1C7551F2C();
    v16 = ~(-1 << *(a3 + 32));
    while (1)
    {
      v17 = v15 & v16;
      v18 = (v15 & v16) >> 6;
      v19 = 1 << (v15 & v16);
      if ((v19 & *(v10 + 8 * v18)) == 0)
      {
        break;
      }

      v15 = v17 + 1;
      if (*(*(a3 + 48) + 8 * v17) == v14)
      {
        v20 = *(a1 + 8 * v18);
        *(a1 + 8 * v18) = v20 & ~v19;
        if ((v20 & v19) == 0)
        {
          goto LABEL_2;
        }

        if (__OFSUB__(v9--, 1))
        {
          goto LABEL_16;
        }

        if (v9)
        {
          goto LABEL_2;
        }

        return;
      }
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v11;
      a5[4] = 0;

      sub_1C71FFDC0();
      return;
    }

    v12 = *(a5[1] + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1C74C7754(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = *a5;
  v10 = a5[1];
  v11 = *(*a5 + 16);
  if (v10 == v11)
  {
LABEL_11:

    sub_1C71FFDC0();
    return;
  }

  while (2)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v10 < v11)
    {
      v13 = *(v9 + 8 * v10 + 32);
      a5[1] = v10 + 1;
      v14 = sub_1C7551F2C();
      v15 = ~(-1 << *(a3 + 32));
      while (1)
      {
        v16 = v14 & v15;
        v17 = (v14 & v15) >> 6;
        v18 = 1 << (v14 & v15);
        if ((v18 & *(a3 + 56 + 8 * v17)) == 0)
        {
          break;
        }

        v14 = v16 + 1;
        if (*(*(a3 + 48) + 8 * v16) == v13)
        {
          v19 = *(a1 + 8 * v17);
          *(a1 + 8 * v17) = v19 & ~v18;
          if ((v19 & v18) != 0)
          {
            if (__OFSUB__(v8--, 1))
            {
              goto LABEL_15;
            }

            if (!v8)
            {
              return;
            }
          }

          break;
        }
      }

      v9 = *a5;
      v10 = a5[1];
      v11 = *(*a5 + 16);
      if (v10 != v11)
      {
        continue;
      }

      goto LABEL_11;
    }

    break;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_1C74C78AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    sub_1C7551F3C();
    sub_1C75504FC();
    sub_1C75505AC();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_9_2();
    v18 = ~v17;
    do
    {
      v19 = v16 & v18;
      v20 = (v16 & v18) >> 6;
      v21 = 1 << (v16 & v18);
      if ((v21 & *(v9 + 8 * v20)) == 0)
      {

        goto LABEL_3;
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 == v15 && v22[1] == v14)
      {
        break;
      }

      OUTLINED_FUNCTION_109_15();
      v24 = sub_1C7551DBC();
      v16 = v19 + 1;
    }

    while ((v24 & 1) == 0);

    v25 = *(a1 + 8 * v20);
    *(a1 + 8 * v20) = v25 & ~v21;
    if ((v25 & v21) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      sub_1C71FFA70();
      return;
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_1C74C7A90(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v34 = v6 - 1;
  v7 = *a5;
  v8 = a5[1];
  v9 = *(*a5 + 16);
  if (v8 == v9)
  {
LABEL_65:

    sub_1C72003E4();
  }

  else
  {
    v10 = a5;
    v35 = a3 + 56;
    while ((v8 & 0x8000000000000000) == 0)
    {
      if (v8 >= v9)
      {
        goto LABEL_68;
      }

      v11 = *(v7 + v8 + 32);
      v10[1] = v8 + 1;
      sub_1C7551F3C();
      sub_1C75505AC();

      v12 = sub_1C7551FAC();
      v13 = -1 << *(a3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if (((1 << v14) & *(v35 + 8 * (v14 >> 6))) != 0)
      {
        v17 = ~v13;
        while (1)
        {
          v18 = 0xE400000000000000;
          v19 = 1701736302;
          switch(*(*(a3 + 48) + v14))
          {
            case 1:
              v18 = 0xE600000000000000;
              v20 = 1936876912;
              goto LABEL_25;
            case 2:
              v19 = 0x67416E6F73726570;
              v22 = 0x6570795465;
              goto LABEL_16;
            case 3:
              v19 = 1702125924;
              break;
            case 4:
              v18 = 0xE900000000000079;
              v19 = 0x6144664F74726170;
              break;
            case 5:
              v18 = 0xEA00000000006B65;
              v19 = 0x6557664F74726170;
              break;
            case 6:
              v18 = 0xE600000000000000;
              v20 = 1935762803;
LABEL_25:
              v19 = v20 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
              break;
            case 7:
              v18 = 0xE800000000000000;
              v21 = 1633906540;
              goto LABEL_20;
            case 8:
              v19 = 0x4C636972656E6567;
              v18 = 0xEF6E6F697461636FLL;
              break;
            case 9:
              v19 = 1952540791;
              break;
            case 0xA:
              v19 = 0x764563696C627570;
              v18 = 0xEB00000000746E65;
              break;
            case 0xB:
              v19 = 0x6C616E6F73726570;
              v22 = 0x746E657645;
LABEL_16:
              v18 = v22 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
              break;
            case 0xC:
              v19 = 0x746954636973756DLL;
              v18 = 0xEA0000000000656CLL;
              break;
            case 0xD:
              v18 = 0xEB00000000747369;
              v19 = 0x747241636973756DLL;
              break;
            case 0xE:
              v18 = 0xEA00000000006572;
              v19 = 0x6E6547636973756DLL;
              break;
            case 0xF:
              v19 = 1685024621;
              break;
            case 0x10:
              v18 = 0xE800000000000000;
              v21 = 1634891108;
LABEL_20:
              v19 = v21 | 0x6E6F697400000000;
              break;
            case 0x11:
              v18 = 0xE600000000000000;
              v19 = 0x706972547369;
              break;
            case 0x12:
              v19 = 0x6D69546C6C417369;
              v18 = 0xE900000000000065;
              break;
            case 0x13:
              v18 = 0xE900000000000072;
              v19 = 0x6564724F74726F73;
              break;
            default:
              break;
          }

          v23 = 0xE400000000000000;
          v24 = 1701736302;
          switch(v11)
          {
            case 1:
              v23 = 0xE600000000000000;
              v25 = 1936876912;
              goto LABEL_48;
            case 2:
              v24 = 0x67416E6F73726570;
              v27 = 0x6570795465;
              goto LABEL_39;
            case 3:
              v24 = 1702125924;
              break;
            case 4:
              v23 = 0xE900000000000079;
              v24 = 0x6144664F74726170;
              break;
            case 5:
              v23 = 0xEA00000000006B65;
              v24 = 0x6557664F74726170;
              break;
            case 6:
              v23 = 0xE600000000000000;
              v25 = 1935762803;
LABEL_48:
              v24 = v25 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
              break;
            case 7:
              v23 = 0xE800000000000000;
              v26 = 1633906540;
              goto LABEL_43;
            case 8:
              v24 = 0x4C636972656E6567;
              v23 = 0xEF6E6F697461636FLL;
              break;
            case 9:
              v24 = 1952540791;
              break;
            case 10:
              v24 = 0x764563696C627570;
              v23 = 0xEB00000000746E65;
              break;
            case 11:
              v24 = 0x6C616E6F73726570;
              v27 = 0x746E657645;
LABEL_39:
              v23 = v27 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
              break;
            case 12:
              v24 = 0x746954636973756DLL;
              v23 = 0xEA0000000000656CLL;
              break;
            case 13:
              v23 = 0xEB00000000747369;
              v24 = 0x747241636973756DLL;
              break;
            case 14:
              v23 = 0xEA00000000006572;
              v24 = 0x6E6547636973756DLL;
              break;
            case 15:
              v24 = 1685024621;
              break;
            case 16:
              v23 = 0xE800000000000000;
              v26 = 1634891108;
LABEL_43:
              v24 = v26 | 0x6E6F697400000000;
              break;
            case 17:
              v23 = 0xE600000000000000;
              v24 = 0x706972547369;
              break;
            case 18:
              v24 = 0x6D69546C6C417369;
              v23 = 0xE900000000000065;
              break;
            case 19:
              v23 = 0xE900000000000072;
              v24 = 0x6564724F74726F73;
              break;
            default:
              break;
          }

          if (v19 == v24 && v18 == v23)
          {
            break;
          }

          v29 = sub_1C7551DBC();

          if (v29)
          {
            goto LABEL_61;
          }

          v14 = (v14 + 1) & v17;
          v15 = v14 >> 6;
          v16 = 1 << v14;
          if ((*(v35 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
          {
            v10 = a5;
            goto LABEL_64;
          }
        }

LABEL_61:
        v10 = a5;
        v30 = *(a1 + 8 * v15);
        *(a1 + 8 * v15) = v30 & ~v16;
        if ((v30 & v16) != 0)
        {
          v31 = v34 - 1;
          if (__OFSUB__(v34, 1))
          {
            goto LABEL_69;
          }

          --v34;
          if (!v31)
          {
            return;
          }
        }
      }

LABEL_64:
      v7 = *v10;
      v8 = v10[1];
      v9 = *(*v10 + 16);
      if (v8 == v9)
      {
        goto LABEL_65;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
  }
}

void sub_1C74C82C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v35 = a3 + 56;
  while (2)
  {
    v32 = v7;
    while (1)
    {
LABEL_3:
      v8 = a5[3];
      v9 = a5[4];
      if (!v9)
      {
        while (1)
        {
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v10 >= ((a5[2] + 64) >> 6))
          {
            a5[3] = v8;
            a5[4] = 0;

            sub_1C72003E4();
            return;
          }

          v9 = *(a5[1] + 8 * v10);
          ++v8;
          if (v9)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
        goto LABEL_70;
      }

      v10 = a5[3];
LABEL_8:
      v11 = *(*(*a5 + 48) + (__clz(__rbit64(v9)) | (v10 << 6)));
      a5[3] = v10;
      a5[4] = (v9 - 1) & v9;
      sub_1C7551F3C();
      sub_1C75505AC();

      v12 = sub_1C7551FAC();
      v13 = -1 << *(a3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if (((1 << v14) & *(v35 + 8 * (v14 >> 6))) != 0)
      {
        v17 = ~v13;
        v18 = v11;
        while (1)
        {
          v19 = 0xE400000000000000;
          v20 = 1701736302;
          switch(*(*(a3 + 48) + v14))
          {
            case 1:
              v19 = 0xE600000000000000;
              v21 = 1936876912;
              goto LABEL_28;
            case 2:
              v20 = 0x67416E6F73726570;
              v23 = 0x6570795465;
              goto LABEL_19;
            case 3:
              v20 = 1702125924;
              break;
            case 4:
              v19 = 0xE900000000000079;
              v20 = 0x6144664F74726170;
              break;
            case 5:
              v19 = 0xEA00000000006B65;
              v20 = 0x6557664F74726170;
              break;
            case 6:
              v19 = 0xE600000000000000;
              v21 = 1935762803;
LABEL_28:
              v20 = v21 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
              break;
            case 7:
              v19 = 0xE800000000000000;
              v22 = 1633906540;
              goto LABEL_23;
            case 8:
              v20 = 0x4C636972656E6567;
              v19 = 0xEF6E6F697461636FLL;
              break;
            case 9:
              v20 = 1952540791;
              break;
            case 0xA:
              v20 = 0x764563696C627570;
              v19 = 0xEB00000000746E65;
              break;
            case 0xB:
              v20 = 0x6C616E6F73726570;
              v23 = 0x746E657645;
LABEL_19:
              v19 = v23 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
              break;
            case 0xC:
              v20 = 0x746954636973756DLL;
              v19 = 0xEA0000000000656CLL;
              break;
            case 0xD:
              v19 = 0xEB00000000747369;
              v20 = 0x747241636973756DLL;
              break;
            case 0xE:
              v19 = 0xEA00000000006572;
              v20 = 0x6E6547636973756DLL;
              break;
            case 0xF:
              v20 = 1685024621;
              break;
            case 0x10:
              v19 = 0xE800000000000000;
              v22 = 1634891108;
LABEL_23:
              v20 = v22 | 0x6E6F697400000000;
              break;
            case 0x11:
              v19 = 0xE600000000000000;
              v20 = 0x706972547369;
              break;
            case 0x12:
              v20 = 0x6D69546C6C417369;
              v19 = 0xE900000000000065;
              break;
            case 0x13:
              v19 = 0xE900000000000072;
              v20 = 0x6564724F74726F73;
              break;
            default:
              break;
          }

          v24 = 0xE400000000000000;
          v25 = 1701736302;
          switch(v18)
          {
            case 1:
              v24 = 0xE600000000000000;
              v26 = 1936876912;
              goto LABEL_51;
            case 2:
              v25 = 0x67416E6F73726570;
              v28 = 0x6570795465;
              goto LABEL_42;
            case 3:
              v25 = 1702125924;
              break;
            case 4:
              v24 = 0xE900000000000079;
              v25 = 0x6144664F74726170;
              break;
            case 5:
              v24 = 0xEA00000000006B65;
              v25 = 0x6557664F74726170;
              break;
            case 6:
              v24 = 0xE600000000000000;
              v26 = 1935762803;
LABEL_51:
              v25 = v26 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
              break;
            case 7:
              v24 = 0xE800000000000000;
              v27 = 1633906540;
              goto LABEL_46;
            case 8:
              v25 = 0x4C636972656E6567;
              v24 = 0xEF6E6F697461636FLL;
              break;
            case 9:
              v25 = 1952540791;
              break;
            case 10:
              v25 = 0x764563696C627570;
              v24 = 0xEB00000000746E65;
              break;
            case 11:
              v25 = 0x6C616E6F73726570;
              v28 = 0x746E657645;
LABEL_42:
              v24 = v28 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
              break;
            case 12:
              v25 = 0x746954636973756DLL;
              v24 = 0xEA0000000000656CLL;
              break;
            case 13:
              v24 = 0xEB00000000747369;
              v25 = 0x747241636973756DLL;
              break;
            case 14:
              v24 = 0xEA00000000006572;
              v25 = 0x6E6547636973756DLL;
              break;
            case 15:
              v25 = 1685024621;
              break;
            case 16:
              v24 = 0xE800000000000000;
              v27 = 1634891108;
LABEL_46:
              v25 = v27 | 0x6E6F697400000000;
              break;
            case 17:
              v24 = 0xE600000000000000;
              v25 = 0x706972547369;
              break;
            case 18:
              v25 = 0x6D69546C6C417369;
              v24 = 0xE900000000000065;
              break;
            case 19:
              v24 = 0xE900000000000072;
              v25 = 0x6564724F74726F73;
              break;
            default:
              break;
          }

          if (v20 == v25 && v19 == v24)
          {
            break;
          }

          v30 = sub_1C7551DBC();

          if (v30)
          {
            goto LABEL_64;
          }

          v14 = (v14 + 1) & v17;
          v15 = v14 >> 6;
          v16 = 1 << v14;
          if ((*(v35 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
          {
            goto LABEL_3;
          }
        }

LABEL_64:
        v31 = *(a1 + 8 * v15);
        *(a1 + 8 * v15) = v31 & ~v16;
        if ((v31 & v16) != 0)
        {
          break;
        }
      }
    }

    v7 = v32 - 1;
    if (__OFSUB__(v32, 1))
    {
LABEL_70:
      __break(1u);
      return;
    }

    if (v32 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_1C74C8B0C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v24 = v8;
LABEL_3:
    if ((*v5 & 0x8000000000000000) != 0)
    {
      if (!sub_1C75516FC())
      {
        goto LABEL_25;
      }

      type metadata accessor for Spatial3DCuration.WallpaperSuggester.SuggestionCandidate();
      swift_dynamicCast();
      v13 = v27;
      if (!v27)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    v11 = v5[3];
    v10 = v5[4];
    if (!v10)
    {
      break;
    }

    v12 = v5[3];
LABEL_13:
    v14 = (v10 - 1) & v10;
    v13 = *(*(*v5 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v10)))));
    v15 = v13;
LABEL_14:
    v5[3] = v11;
    v5[4] = v14;
    if (!v13)
    {
LABEL_25:

      sub_1C7200738();
      return;
    }

LABEL_15:
    v16 = sub_1C75513DC();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        v5 = a5;
        goto LABEL_3;
      }

      type metadata accessor for Spatial3DCuration.WallpaperSuggester.SuggestionCandidate();
      v21 = *(*(a3 + 48) + 8 * v18);
      v22 = sub_1C75513EC();

      v16 = v18 + 1;
    }

    while ((v22 & 1) == 0);

    v23 = *(a1 + 8 * v19);
    *(a1 + 8 * v19) = v23 & ~v20;
    v5 = a5;
    if ((v23 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v24 - 1;
    if (__OFSUB__(v24, 1))
    {
      goto LABEL_27;
    }

    if (v24 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= ((v5[2] + 64) >> 6))
    {
      v13 = 0;
      v14 = 0;
      goto LABEL_14;
    }

    v10 = *(v5[1] + 8 * v12);
    ++v11;
    if (v10)
    {
      v11 = v12;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_1C74C8D30(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v6 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v34 = a3 + 56;
  v39 = "edMoodsInferredFallback";
  do
  {
    v30 = v7;
    do
    {
      while (1)
      {
LABEL_3:
        v8 = v5[3];
        v9 = v5[4];
        if (!v9)
        {
          while (1)
          {
            v10 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              break;
            }

            if (v10 >= ((v5[2] + 64) >> 6))
            {
              v5[3] = v8;
              v5[4] = 0;

              sub_1C7200888();
              return;
            }

            v9 = *(v5[1] + 8 * v10);
            ++v8;
            if (v9)
            {
              goto LABEL_8;
            }
          }

          __break(1u);
LABEL_38:
          __break(1u);
          return;
        }

        v10 = v5[3];
LABEL_8:
        v11 = (v9 - 1) & v9;
        memcpy(__dst, (*(*v5 + 48) + 192 * (__clz(__rbit64(v9)) | (v10 << 6))), 0xC0uLL);
        v5[3] = v10;
        v5[4] = v11;
        sub_1C7551F3C();
        v12 = LOBYTE(__dst[0]);
        v13 = __dst[1];
        v14 = __dst[2];
        sub_1C7080654(__dst, v37);
        sub_1C75505AC();
        sub_1C75505AC();

        v15 = sub_1C7551FAC();
        v16 = -1 << *(a3 + 32);
        v17 = v15 & ~v16;
        v18 = v17 >> 6;
        v19 = 1 << v17;
        if (((1 << v17) & *(v34 + 8 * (v17 >> 6))) != 0)
        {
          break;
        }

        sub_1C70806B0(__dst);
      }

      v33 = v12;
      v20 = ~v16;
      while (1)
      {
        memcpy(v37, (*(a3 + 48) + 192 * v17), sizeof(v37));
        v21 = v37[1] == v13 && v37[2] == v14;
        if (!v21 && (sub_1C7551DBC() & 1) == 0)
        {
          goto LABEL_28;
        }

        v22 = 0xD000000000000011;
        v23 = v39;
        switch(LOBYTE(v37[0]))
        {
          case 1:
            v22 = 0xD000000000000016;
            v23 = "appleMusicMaestro";
            break;
          case 2:
            v22 = 0xD000000000000015;
            v23 = "appleMusicSimpleSearch";
            break;
          case 3:
            v22 = 0xD000000000000010;
            v23 = "appleMusicSmartSearch";
            break;
          default:
            break;
        }

        v24 = v23 | 0x8000000000000000;
        v25 = 0xD000000000000011;
        v26 = v39;
        switch(v33)
        {
          case 1:
            v25 = 0xD000000000000016;
            v26 = "appleMusicMaestro";
            break;
          case 2:
            v25 = 0xD000000000000015;
            v26 = "appleMusicSimpleSearch";
            break;
          case 3:
            v25 = 0xD000000000000010;
            v26 = "appleMusicSmartSearch";
            break;
          default:
            break;
        }

        if (v22 == v25 && v24 == (v26 | 0x8000000000000000))
        {
          break;
        }

        v28 = sub_1C7551DBC();
        sub_1C7080654(v37, v36);

        sub_1C70806B0(v37);
        if (v28)
        {
          goto LABEL_32;
        }

LABEL_28:
        v17 = (v17 + 1) & v20;
        v18 = v17 >> 6;
        v19 = 1 << v17;
        if ((*(v34 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
        {
          sub_1C70806B0(__dst);
          v5 = a5;
          goto LABEL_3;
        }
      }

      sub_1C7080654(v37, v36);

      sub_1C70806B0(v37);
LABEL_32:
      sub_1C70806B0(__dst);
      v5 = a5;
      v29 = *(a1 + 8 * v18);
      *(a1 + 8 * v18) = v29 & ~v19;
    }

    while ((v29 & v19) == 0);
    v7 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
      goto LABEL_38;
    }
  }

  while (v30 != 1);
}

uint64_t sub_1C74C914C(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1C74C69E8(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1C74C91D4(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1C74C71E8(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1C74C925C(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1C74C742C(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1C74C92E4(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1C74C75D8(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1C74C936C(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1C74C7754(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1C74C93F4(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1C74C82C4(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1C74C947C(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1C74C7A90(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1C74C9504(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1C74C8B0C(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1C74C958C(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1C74C8D30(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1C74C9614(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v50 = a5;
  sub_1C6F78034(v49);
  v6 = v49[1];
  v7 = v49[3];
  v8 = v49[4];
  v41 = v49[5];
  v42 = v49[0];
  v9 = (v49[2] + 64) >> 6;
  sub_1C75504FC();

  v39 = v9;
  v40 = v6;
  if (v8)
  {
    while (1)
    {
      v43 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = (*(v42 + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v42 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];
      v48[0] = v14;
      v48[1] = v15;
      v48[2] = v17;
      v48[3] = v18;
      sub_1C75504FC();
      sub_1C75504FC();
      v41(&v44, v48);

      v19 = v44;
      v20 = v45;
      v21 = v46;
      v22 = v47;
      v23 = *v50;
      v25 = sub_1C6F78124(v44, v45);
      v26 = v23[2];
      v27 = (v24 & 1) == 0;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v28 = v24;
      if (v23[3] >= v26 + v27)
      {
        if ((v43 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215328);
          sub_1C7551A3C();
        }
      }

      else
      {
        sub_1C6F78194();
        v29 = sub_1C6F78124(v19, v20);
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_24;
        }

        v25 = v29;
      }

      v8 &= v8 - 1;
      v31 = *v50;
      if (v28)
      {

        v32 = (v31[7] + 16 * v25);
        *v32 = v21;
        v32[1] = v22;
      }

      else
      {
        v31[(v25 >> 6) + 8] |= 1 << v25;
        v33 = (v31[6] + 16 * v25);
        *v33 = v19;
        v33[1] = v20;
        v34 = (v31[7] + 16 * v25);
        *v34 = v21;
        v34[1] = v22;
        v35 = v31[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_23;
        }

        v31[2] = v37;
      }

      a4 = 1;
      v7 = v10;
      v9 = v39;
      v6 = v40;
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
        v43 = a4;
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

uint64_t sub_1C74C98D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v9 = type metadata accessor for MomentInformation();
  v45 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v38 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217078);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (v37 - v15);
  sub_1C6F78034(v43);
  v39 = v43[0];
  v40 = v43[1];
  v41 = v43[2];
  v42 = v44;
  v37[1] = a1;
  sub_1C75504FC();
  v37[0] = a3;

  while (1)
  {
    sub_1C73DAC08();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217070);
    if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
    {
      sub_1C6F61E88();
    }

    v18 = *(v17 + 48);
    v20 = *v16;
    v19 = v16[1];
    sub_1C74C9D58(v16 + v18, v13);
    v21 = *a5;
    v23 = sub_1C6F78124(v20, v19);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      break;
    }

    v27 = v22;
    if (v21[3] >= v26)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217060);
        sub_1C7551A3C();
      }
    }

    else
    {
      sub_1C7354244(v26, a4 & 1);
      v28 = sub_1C6F78124(v20, v19);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_16;
      }

      v23 = v28;
    }

    v30 = *a5;
    if (v27)
    {
      v31 = v38;
      sub_1C74C9C60(v13, v38);
      sub_1C74C9CB8(v13, type metadata accessor for MomentInformation);

      sub_1C74C9DB0(v31, v30[7] + *(v45 + 72) * v23);
      a4 = 1;
    }

    else
    {
      v30[(v23 >> 6) + 8] |= 1 << v23;
      v32 = (v30[6] + 16 * v23);
      *v32 = v20;
      v32[1] = v19;
      sub_1C74C9D58(v13, v30[7] + *(v45 + 72) * v23);
      v33 = v30[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_15;
      }

      v30[2] = v35;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C74C9C60(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_19_1();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_90();
  v6(v5);
  return a2;
}

uint64_t sub_1C74C9CB8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C74C9D10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C74C9D58(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_19_1();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_90();
  v6(v5);
  return a2;
}

uint64_t sub_1C74C9DB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MomentInformation();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_75_22()
{

  return sub_1C75504FC();
}

void OUTLINED_FUNCTION_78_20()
{
  v4 = *(v0 + 8 * v2) & ~v1;
  *(v3 - 248) = v0;
  *(v0 + 8 * v2) = v4;
}

uint64_t OUTLINED_FUNCTION_79_21()
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 8);
  *(v2 - 112) = *v1;
  *(v2 - 104) = v5;
  *(v2 - 96) = v4;

  return sub_1C74C14A4(v0, v2 - 112);
}

uint64_t OUTLINED_FUNCTION_95_21()
{
  *(v2 - 120) = *(v2 - 256);
  *(v2 - 112) = v0;
  *(v2 - 104) = v1;
  v4 = *(v2 - 232);
  *(v2 - 136) = *(v2 - 224);
  *(v2 - 128) = v4;
}

uint64_t OUTLINED_FUNCTION_105_13()
{

  return sub_1C7551F2C();
}

uint64_t OUTLINED_FUNCTION_106_10()
{

  return sub_1C75505AC();
}

uint64_t OUTLINED_FUNCTION_107_14()
{

  return sub_1C7551DBC();
}

void OUTLINED_FUNCTION_157_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_158_5(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_160_7()
{
}

uint64_t OUTLINED_FUNCTION_161_7()
{

  return sub_1C7550FEC();
}

uint64_t OUTLINED_FUNCTION_162_8()
{

  return sub_1C7551DBC();
}

uint64_t OUTLINED_FUNCTION_163_5()
{

  return sub_1C75505AC();
}

uint64_t OUTLINED_FUNCTION_164_6()
{

  return sub_1C7551F3C();
}

uint64_t OUTLINED_FUNCTION_165_4()
{

  return sub_1C7551F3C();
}

double static PersonalTraitScorer.calculateEntityNetScoreForCluster(clusterSize:numberOfRepresentativeAssetsWithTrait:numberOfRepresentativeAssetsForCluster:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    return a2 / a3 * a1;
  }

  if (qword_1EC2141D8 != -1)
  {
    OUTLINED_FUNCTION_0_204();
    swift_once();
  }

  v4 = sub_1C754FF1C();
  __swift_project_value_buffer(v4, qword_1EC21C790);
  v5 = sub_1C754FEEC();
  v6 = sub_1C755119C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1C6F5C000, v5, v6, "Cannot calculate EntityNet score for cluster: numberOfRepresentativeAssetsForCluster is zero", v7, 2u);
    MEMORY[0x1CCA5F8E0](v7, -1, -1);
  }

  return 0.0;
}

uint64_t sub_1C74CA4BC()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21C790);
  __swift_project_value_buffer(v0, qword_1EC21C790);
  return sub_1C754FEFC();
}

void sub_1C74CA53C(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  sub_1C75504FC();
  v9 = 0;
  v27 = MEMORY[0x1E69E7CC0];
  while (v7)
  {
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(a1 + 56) + 8 * v12);
    sub_1C75504FC();
    v17 = sub_1C74CA6EC(v14, v15, v16, a2);
    v19 = v18;
    v21 = v20;

    if (v19)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB37DC();
        v27 = v25;
      }

      v22 = *(v27 + 16);
      v23 = v22 + 1;
      if (v22 >= *(v27 + 24) >> 1)
      {
        sub_1C6FB37DC();
        v23 = v22 + 1;
        v27 = v26;
      }

      *(v27 + 16) = v23;
      v24 = (v27 + 24 * v22);
      v24[4] = v17;
      v24[5] = v19;
      v24[6] = v21;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  sub_1C70CD784(v27);
}

uint64_t sub_1C74CA6EC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  if (*(a4 + 16) && (v8 = sub_1C6F78124(a1, a2), (v9 & 1) != 0) && (v10 = *(*(a4 + 56) + 8 * v8), v10 >= 1))
  {
    if (v10 >= a3)
    {
      sub_1C75504FC();
    }

    else
    {
      if (qword_1EC2141D8 != -1)
      {
        swift_once();
      }

      v11 = sub_1C754FF1C();
      __swift_project_value_buffer(v11, qword_1EC21C790);
      sub_1C75504FC();
      v12 = sub_1C754FEEC();
      v13 = sub_1C755119C();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v22 = v15;
        *v14 = 136315650;
        *(v14 + 4) = sub_1C6F765A4(v5, a2, &v22);
        *(v14 + 12) = 2048;
        *(v14 + 14) = a3;
        *(v14 + 22) = 2048;
        *(v14 + 24) = v10;
        _os_log_impl(&dword_1C6F5C000, v12, v13, "Moment %s has more input assets (%ld) than total assets (%ld). Clamping weight to 1.0.", v14, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v15);
        MEMORY[0x1CCA5F8E0](v15, -1, -1);
        MEMORY[0x1CCA5F8E0](v14, -1, -1);
      }

      sub_1C75504FC();
    }
  }

  else
  {
    if (qword_1EC2141D8 != -1)
    {
      swift_once();
    }

    v16 = sub_1C754FF1C();
    __swift_project_value_buffer(v16, qword_1EC21C790);
    sub_1C75504FC();
    v17 = sub_1C754FEEC();
    v18 = sub_1C755119C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1C6F765A4(v5, a2, &v22);
      _os_log_impl(&dword_1C6F5C000, v17, v18, "Cannot calculate weight for moment %s: found unexpected moment or invalid number total number of assets in moment", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1CCA5F8E0](v20, -1, -1);
      MEMORY[0x1CCA5F8E0](v19, -1, -1);
    }

    return 0;
  }

  return v5;
}

void static PersonalTraitScorer.calculateMomentGraphScore(numberOfAssetsWithTraitByRelevantMomentUUID:numberOfInputAssetsByMomentUUID:totalNumberOfAssetsInMomentByMomentUUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16))
  {
    v3 = a1;
    sub_1C74CA53C(a2, a3);
    v5 = v4;
    v6 = v3 + 64;
    v7 = 1 << *(v3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v3 + 64);
    v10 = (v7 + 63) >> 6;
    sub_1C75504FC();
    v11 = 0;
    v12 = 0.0;
    v30 = v3;
    v31 = v5;
LABEL_5:
    v13 = v11;
    if (!v9)
    {
      goto LABEL_7;
    }

    do
    {
      v11 = v13;
LABEL_10:
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v15 = v14 | (v11 << 6);
      v16 = (*(v3 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = *(*(v3 + 56) + 8 * v15);
      v20 = *(v5 + 16);
      sub_1C75504FC();
      if (v20)
      {
        v21 = sub_1C6F78124(v18, v17);
        if (v22)
        {
          v29 = *(*(v5 + 56) + 8 * v21);

          v12 = v12 + v29 * v19;
          goto LABEL_5;
        }
      }

      if (qword_1EC2141D8 != -1)
      {
        OUTLINED_FUNCTION_0_204();
        swift_once();
      }

      v23 = sub_1C754FF1C();
      __swift_project_value_buffer(v23, qword_1EC21C790);
      sub_1C75504FC();
      v24 = sub_1C754FEEC();
      v25 = sub_1C755119C();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v32 = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_1C6F765A4(v18, v17, &v32);
        _os_log_impl(&dword_1C6F5C000, v24, v25, "Skipping moment %s for MomentGraph score: can't get the moment's weight", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v27);
        MEMORY[0x1CCA5F8E0](v27, -1, -1);
        v28 = v26;
        v3 = v30;
        MEMORY[0x1CCA5F8E0](v28, -1, -1);
      }

      v13 = v11;
      v5 = v31;
    }

    while (v9);
LABEL_7:
    while (1)
    {
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v11 >= v10)
      {

        return;
      }

      v9 = *(v6 + 8 * v11);
      ++v13;
      if (v9)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

_BYTE *storeEnumTagSinglePayload for PersonalTraitScorer(_BYTE *result, int a2, int a3)
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

uint64_t StoryMusicCurator.curateMusic(with:using:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  *(v1 + 3320) = v0;
  *(v1 + 3272) = v4;
  *(v1 + 3224) = v5;
  *(v1 + 3176) = v6;
  *(v1 + 3128) = v7;
  type metadata accessor for StoryMusicCuration();
  *(v1 + 3368) = swift_task_alloc();
  v8 = type metadata accessor for StoryMusicCurationOptions();
  OUTLINED_FUNCTION_18(v8);
  *(v1 + 3416) = v9;
  *(v1 + 3464) = *(v10 + 64);
  *(v1 + 3512) = swift_task_alloc();
  *(v1 + 3560) = swift_task_alloc();
  *(v1 + 3608) = swift_task_alloc();
  v11 = sub_1C754F38C();
  *(v1 + 3656) = v11;
  OUTLINED_FUNCTION_18(v11);
  *(v1 + 3704) = v12;
  *(v1 + 3752) = swift_task_alloc();
  *(v1 + 4188) = *v3;
  v13 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C74CAE8C()
{
  v1 = *(v0 + 3224);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  sub_1C754F2CC();
  v2 = *(v0 + 3320);
  type metadata accessor for StoryMusicCache();
  v3 = *(v2 + 16);
  StoryMusicCache.__allocating_init(photoLibrary:)();
  v4 = *(v0 + 3320);
  v5 = *(v4 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_storyMusicCache);
  *(v4 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_storyMusicCache) = v6;

  static StoryMusicCache.cacheVersion()();
  v7 = *(v0 + 3608);
  v25 = *(v0 + 3416);
  v26 = *(v0 + 3464);
  v8 = *(v0 + 3320);
  v9 = *(v0 + 3224);
  v10 = *(v0 + 3176);
  v11 = sub_1C7550F3C();
  v13 = v12;
  v14 = v8 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
  swift_beginAccess();
  v15 = (v14 + *(type metadata accessor for StoryMusicCurationDiagnostics() + 124));
  *v15 = v11;
  v15[1] = v13;

  OUTLINED_FUNCTION_70(v9, v1[3]);
  OUTLINED_FUNCTION_54_37();
  sub_1C754F15C();
  OUTLINED_FUNCTION_70((v0 + 2680), *(v0 + 2704));
  OUTLINED_FUNCTION_17_82();
  sub_1C754F17C();
  OUTLINED_FUNCTION_5_107();
  sub_1C74D0498(v10, v7, v16);
  sub_1C6FB5E28(v0 + 2360, v0 + 2600);
  v17 = *(v25 + 80);
  *(v0 + 4184) = v17;
  v18 = (v17 + 24) & ~v17;
  v19 = swift_allocObject();
  *(v0 + 3800) = v19;
  *(v19 + 16) = v8;
  OUTLINED_FUNCTION_10_87();
  sub_1C74CFCF8(v7, v20 + v18, v21);
  sub_1C6F699F8((v0 + 2600), v19 + ((v26 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155F0);
  swift_asyncLet_begin();
  sub_1C754F2DC();
  *(v0 + 3848) = 0;
  v22 = swift_task_alloc();
  *(v0 + 3896) = v22;
  *v22 = v0;
  v22[1] = sub_1C74CB288;
  OUTLINED_FUNCTION_129();

  return StoryMusicCurator.curateMood(using:eventRecorder:)();
}

uint64_t sub_1C74CB288()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 3944) = v0;

  if (v0)
  {
    v7 = sub_1C74CBE34;
  }

  else
  {
    v7 = sub_1C74CB388;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C74CB388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_49_0();
  v17 = v16[493];
  memcpy(v16 + 247, v16 + 263, 0x80uLL);
  sub_1C754F2DC();
  v16[499] = v17;
  if (v17)
  {
    sub_1C713A098((v16 + 247));
    v18 = OUTLINED_FUNCTION_9_98();

    return MEMORY[0x1EEE6DEB0](v18, v19, v20, v16 + 320);
  }

  else
  {
    v21 = OUTLINED_FUNCTION_9_98();

    return MEMORY[0x1EEE6DEC0](v21, v22, v23, v16 + 330, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_1C74CB454()
{
  *(v1 + 4040) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_67(sub_1C74CC00C);
  }

  else
  {
    return OUTLINED_FUNCTION_0_67(sub_1C74CB480);
  }
}

uint64_t sub_1C74CB480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = *(v16 + 4040);
  v18 = *(v16 + 3080);
  sub_1C75504FC();
  sub_1C754F2DC();
  *(v16 + 4088) = v17;
  if (v17)
  {

    sub_1C713A098(v16 + 1976);
    v19 = OUTLINED_FUNCTION_9_98();

    return MEMORY[0x1EEE6DEB0](v19, v20, v21, v16 + 2800);
  }

  else
  {
    v50 = *(v16 + 4188);
    v22 = *(v16 + 3560);
    v23 = *(v16 + 3176);
    v24 = (*(v16 + 4184) + 25) & ~*(v16 + 4184);
    v48 = *(v16 + 3464) + v24;
    v49 = *(v16 + 3320);
    OUTLINED_FUNCTION_70((v16 + 2680), *(v16 + 2704));
    OUTLINED_FUNCTION_49_38();
    sub_1C754F17C();
    OUTLINED_FUNCTION_5_107();
    v25 = v22;
    sub_1C74D0498(v23, v22, v26);
    sub_1C6FB5E28(v16 + 2440, v16 + 2520);
    v27 = (v48 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v28 + 135) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    *(v16 + 4096) = v30;
    *(v30 + 16) = v49;
    *(v30 + 24) = v50;
    OUTLINED_FUNCTION_10_87();
    v51 = v24;
    sub_1C74CFCF8(v25, v31 + v24, v32);
    *(v30 + v27) = v18;
    memcpy((v30 + v28), (v16 + 1976), 0x80uLL);
    sub_1C6F699F8((v16 + 2520), v30 + v29);

    sub_1C75504FC();
    sub_1C709D4BC(v16 + 1976, v16 + 2232);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216820);
    swift_asyncLet_begin();
    sub_1C754F2DC();
    *(v16 + 4104) = 0;
    LOBYTE(v48) = *(v16 + 4188);
    v47 = *(v16 + 3320);
    v33 = *(v16 + 3176);
    v46 = *(v16 + 3512);
    OUTLINED_FUNCTION_70((v16 + 2680), *(v16 + 2704));
    OUTLINED_FUNCTION_18_70();
    sub_1C754F17C();
    OUTLINED_FUNCTION_5_107();
    sub_1C74D0498(v33, v46, v34);
    sub_1C6FB5E28(v16 + 2760, v16 + 2840);
    v35 = swift_allocObject();
    *(v16 + 4112) = v35;
    *(v35 + 16) = v47;
    *(v35 + 24) = v48;
    OUTLINED_FUNCTION_10_87();
    sub_1C74CFCF8(v46, v36 + v51, v37);
    *(v35 + v27) = v18;
    memcpy((v35 + v28), (v16 + 1976), 0x80uLL);
    sub_1C6F699F8((v16 + 2840), v35 + v29);

    swift_asyncLet_begin();
    sub_1C754F2DC();
    *(v16 + 4120) = 0;
    v38 = OUTLINED_FUNCTION_12_87();

    return MEMORY[0x1EEE6DEC0](v38, v39, v40, v16 + 3280, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_1C74CB860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_42();
  v17[516] = v16;
  if (v16)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C74CC590, 0, 0);
  }

  else
  {
    v17[517] = v17[379];
    sub_1C75504FC();
    v18 = OUTLINED_FUNCTION_14_75();

    return MEMORY[0x1EEE6DEC0](v18, v19, v20, v17 + 434, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_1C74CB904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_42();
  v17[518] = v16;
  if (v16)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C74CC784, 0, 0);
  }

  else
  {
    v17[519] = v17[373];
    sub_1C75504FC();
    v18 = OUTLINED_FUNCTION_9_98();

    return MEMORY[0x1EEE6DEC0](v18, v19, v20, v17 + 458, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_1C74CB9A8()
{
  *(v1 + 4160) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_67(sub_1C74CC9B8);
  }

  else
  {
    return OUTLINED_FUNCTION_0_67(sub_1C74CB9D4);
  }
}

uint64_t sub_1C74CB9D4()
{
  OUTLINED_FUNCTION_75_1();
  v1 = v0[520];
  v2 = v0[519];
  v3 = v0[517];
  v4 = v0[421];
  v5 = v0[397];
  v6 = v0[385];
  sub_1C75504FC();
  sub_1C74CDD50(v3, v2, v6, v5, v4);
  v0[521] = v1;

  if (v1)
  {
    v7 = OUTLINED_FUNCTION_14_75();
    v10 = v0 + 482;
  }

  else
  {
    sub_1C754F2EC();
    v0[522] = 0;
    sub_1C74CFCF8(v0[421], v0[391], type metadata accessor for StoryMusicCuration);
    v7 = OUTLINED_FUNCTION_14_75();
    v10 = v0 + 380;
  }

  return MEMORY[0x1EEE6DEB0](v7, v8, v9, v10);
}

uint64_t sub_1C74CBB58()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2760);
  v1 = OUTLINED_FUNCTION_12_87();

  return MEMORY[0x1EEE6DEB0](v1, v2, v3, v0 + 2880);
}

uint64_t sub_1C74CBBCC()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2440);
  v1 = OUTLINED_FUNCTION_9_98();

  return MEMORY[0x1EEE6DEB0](v1, v2, v3, v0 + 1936);
}

void sub_1C74CBC40()
{
  v2 = v1[469];
  v3 = v1[463];
  v4 = v1[457];
  OUTLINED_FUNCTION_13_96();
  OUTLINED_FUNCTION_70(v0, v0[3]);
  sub_1C754F1AC();
  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_129();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C74CBD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_3_126();
  v11 = OUTLINED_FUNCTION_45_1();
  v12(v11);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v13 + 8))(v10);

  OUTLINED_FUNCTION_8_97();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_239_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1C74CBE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_3_126();
  v11 = OUTLINED_FUNCTION_45_1();
  v12(v11);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v13 + 8))(v10);

  OUTLINED_FUNCTION_8_97();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_239_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1C74CBF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_3_126();
  v11 = OUTLINED_FUNCTION_45_1();
  v12(v11);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v13 + 8))(v10);

  OUTLINED_FUNCTION_8_97();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_239_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1C74CC00C()
{
  OUTLINED_FUNCTION_42();
  sub_1C713A098(v0 + 1976);
  v1 = OUTLINED_FUNCTION_9_98();

  return MEMORY[0x1EEE6DEB0](v1, v2, v3, v0 + 2720);
}

uint64_t sub_1C74CC080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_3_126();
  v11 = OUTLINED_FUNCTION_45_1();
  v12(v11);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v13 + 8))(v10);

  OUTLINED_FUNCTION_8_97();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_239_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1C74CC15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_3_126();
  v11 = OUTLINED_FUNCTION_45_1();
  v12(v11);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v13 + 8))(v10);

  OUTLINED_FUNCTION_8_97();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_239_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1C74CC238()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2440);
  v1 = OUTLINED_FUNCTION_9_98();

  return MEMORY[0x1EEE6DEB0](v1, v2, v3, v0 + 2992);
}

uint64_t sub_1C74CC2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v14 = v13[469];
  v15 = v13[463];
  v16 = v13[457];
  v17 = v13[409];
  OUTLINED_FUNCTION_13_96();
  OUTLINED_FUNCTION_70(v12, v12[3]);
  sub_1C754F1AC();
  (*(v15 + 8))(v14, v16);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v18 + 8))(v17);

  OUTLINED_FUNCTION_8_97();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_1C74CC3D0()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2760);
  v1 = OUTLINED_FUNCTION_12_87();

  return MEMORY[0x1EEE6DEB0](v1, v2, v3, v0 + 3184);
}

uint64_t sub_1C74CC444()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2440);
  v1 = OUTLINED_FUNCTION_9_98();

  return MEMORY[0x1EEE6DEB0](v1, v2, v3, v0 + 3232);
}

uint64_t sub_1C74CC4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_1_148();
  v13 = OUTLINED_FUNCTION_141_0();
  v14(v13);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v15 + 8))(v12);

  OUTLINED_FUNCTION_8_97();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_1C74CC5C4()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2760);
  v1 = OUTLINED_FUNCTION_12_87();

  return MEMORY[0x1EEE6DEB0](v1, v2, v3, v0 + 3376);
}

uint64_t sub_1C74CC638()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2440);
  v1 = OUTLINED_FUNCTION_9_98();

  return MEMORY[0x1EEE6DEB0](v1, v2, v3, v0 + 3424);
}

uint64_t sub_1C74CC6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_1_148();
  v13 = OUTLINED_FUNCTION_141_0();
  v14(v13);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v15 + 8))(v12);

  OUTLINED_FUNCTION_8_97();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_1C74CC784()
{
  OUTLINED_FUNCTION_42();

  v1 = OUTLINED_FUNCTION_14_75();

  return MEMORY[0x1EEE6DEB0](v1, v2, v3, v0 + 3520);
}

uint64_t sub_1C74CC7F8()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2760);
  v1 = OUTLINED_FUNCTION_12_87();

  return MEMORY[0x1EEE6DEB0](v1, v2, v3, v0 + 3568);
}

uint64_t sub_1C74CC86C()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2440);
  v1 = OUTLINED_FUNCTION_9_98();

  return MEMORY[0x1EEE6DEB0](v1, v2, v3, v0 + 3616);
}

uint64_t sub_1C74CC8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_1_148();
  v13 = OUTLINED_FUNCTION_141_0();
  v14(v13);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v15 + 8))(v12);

  OUTLINED_FUNCTION_8_97();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_1C74CC9B8()
{
  OUTLINED_FUNCTION_42();

  v1 = OUTLINED_FUNCTION_14_75();

  return MEMORY[0x1EEE6DEB0](v1, v2, v3, v0 + 3712);
}

uint64_t sub_1C74CCA38()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2760);
  v1 = OUTLINED_FUNCTION_12_87();

  return MEMORY[0x1EEE6DEB0](v1, v2, v3, v0 + 3760);
}

uint64_t sub_1C74CCAAC()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2440);
  v1 = OUTLINED_FUNCTION_9_98();

  return MEMORY[0x1EEE6DEB0](v1, v2, v3, v0 + 3808);
}

uint64_t sub_1C74CCB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_1_148();
  v13 = OUTLINED_FUNCTION_141_0();
  v14(v13);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v15 + 8))(v12);

  OUTLINED_FUNCTION_8_97();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_1C74CCC0C()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2760);
  v1 = OUTLINED_FUNCTION_12_87();

  return MEMORY[0x1EEE6DEB0](v1, v2, v3, v0 + 3904);
}

uint64_t sub_1C74CCC80()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2440);
  v1 = OUTLINED_FUNCTION_9_98();

  return MEMORY[0x1EEE6DEB0](v1, v2, v3, v0 + 3952);
}

uint64_t sub_1C74CCCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_1_148();
  v13 = OUTLINED_FUNCTION_141_0();
  v14(v13);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v15 + 8))(v12);

  OUTLINED_FUNCTION_8_97();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_1C74CCDE0()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2760);
  v1 = OUTLINED_FUNCTION_12_87();

  return MEMORY[0x1EEE6DEB0](v1, v2, v3, v0 + 2400);
}

uint64_t sub_1C74CCE54()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2440);
  v1 = OUTLINED_FUNCTION_9_98();

  return MEMORY[0x1EEE6DEB0](v1, v2, v3, v0 + 3088);
}

uint64_t sub_1C74CCEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v14 = v13[469];
  v15 = v13[463];
  v16 = v13[457];
  OUTLINED_FUNCTION_13_96();
  OUTLINED_FUNCTION_70(v12, v12[3]);
  sub_1C754F1AC();
  (*(v15 + 8))(v14, v16);

  OUTLINED_FUNCTION_8_97();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

void static StoryMusicCurator.prewarm(with:)(uint8_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - v5;
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_35();
    swift_once();
  }

  v7 = sub_1C754FF1C();
  __swift_project_value_buffer(v7, &dword_1EDD28D48);
  v8 = sub_1C754FEEC();
  v9 = sub_1C755117C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_127();
    *v10 = 0;
    _os_log_impl(&dword_1C6F5C000, v8, v9, "StoryMusicCurator prewarm started...", v10, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  sub_1C7550D3C();
  v11 = sub_1C7550D5C();
  OUTLINED_FUNCTION_25_8();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v1;
  v16 = OUTLINED_FUNCTION_58_34();
  sub_1C7395CA4(v16, v17, v18, v19, v20);

  sub_1C6FB5FC8(v6, &qword_1EC2158F8);
  if (byte_1EC25B978)
  {
    v21 = sub_1C754FEEC();
    v22 = sub_1C755117C();
    v23 = OUTLINED_FUNCTION_40_40();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v25);
      _os_log_impl(&dword_1C6F5C000, v21, v22, "StoryMusicCurator cachedPrewarmOncePerProcessDone = true, so not prewarming again", a1, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }
  }

  else
  {
    sub_1C7550D2C();
    OUTLINED_FUNCTION_25_8();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v11);
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = a1;
    v29[5] = v2;
    v29[6] = v2;
    v30 = a1;
    v31 = OUTLINED_FUNCTION_58_34();
    sub_1C7395CA4(v31, v32, v33, v34, v29);

    sub_1C6FB5FC8(v6, &qword_1EC2158F8);
  }
}

uint64_t StoryMusicCurationError.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t sub_1C74CD49C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  __swift_allocate_value_buffer(v0, qword_1EDD28D60);
  v1 = OUTLINED_FUNCTION_90();
  v3 = __swift_project_value_buffer(v1, v2);
  v4 = sub_1C754DF6C();

  return __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
}

uint64_t sub_1C74CD514()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, &dword_1EDD28D48);
  v1 = OUTLINED_FUNCTION_90();
  __swift_project_value_buffer(v1, v2);
  return sub_1C754FEFC();
}

uint64_t sub_1C74CD5A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_0(a2, v7);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = a3(a1, v12, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v14;
}

uint64_t StoryMusicCurator.__allocating_init(storyPhotoLibraryContext:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 16);
  v3 = *(a1 + 8);
  type metadata accessor for SafetyController(0);
  v8 = v1;
  v9 = v3;
  v10 = v2;
  v4 = v1;

  v5 = SafetyController.__allocating_init(storyPhotoLibraryContext:)(&v8);
  v6 = swift_allocObject();

  return sub_1C74CFEA8(v4, v3, v2, v5, v6);
}

uint64_t sub_1C74CD75C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1C74CD810;

  return StoryMusicCurator.curateMaestroKeywords(in:eventRecorder:)();
}

uint64_t sub_1C74CD810()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_40();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;

    return MEMORY[0x1EEE6DFA0](sub_1C74CD948, 0, 0);
  }
}

uint64_t sub_1C74CD954(uint64_t a1, int a2, char a3, int a4, int a5, void *__src)
{
  *(v6 + 144) = a1;
  *(v6 + 176) = a3;
  memcpy((v6 + 16), __src, 0x80uLL);
  v7 = swift_task_alloc();
  *(v6 + 152) = v7;
  *v7 = v6;
  v7[1] = sub_1C74CDA38;

  return StoryMusicCurator.curateAppleMusic(using:with:maestroKeywords:mood:eventRecorder:)();
}

uint64_t sub_1C74CDA38()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_40();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 160) = v0;

  if (v0)
  {
    v9 = sub_1C7273DD0;
  }

  else
  {
    *(v5 + 168) = v3;
    v9 = sub_1C74CDB4C;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1C74CDB58(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5, void *__src, uint64_t a7)
{
  *(v7 + 144) = a1;
  *(v7 + 176) = a3;
  memcpy((v7 + 16), __src, 0x80uLL);
  v11 = swift_task_alloc();
  *(v7 + 152) = v11;
  *v11 = v7;
  v11[1] = sub_1C74CDC3C;

  return StoryMusicCurator.curateFlexMusic(using:with:maestroKeywords:mood:eventRecorder:)(v7 + 176, a4, a5, (v7 + 16), a7);
}

uint64_t sub_1C74CDC3C()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_40();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 160) = v0;

  if (v0)
  {
    v9 = sub_1C74D04F4;
  }

  else
  {
    *(v5 + 168) = v3;
    v9 = sub_1C74D04F8;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

void sub_1C74CDD50(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v66 = a3;
  v67 = a1;
  v68 = a2;
  v65 = type metadata accessor for StoryMusicCuration();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v8);
  v70 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v64 - v11;
  v13 = type metadata accessor for StoryMusicCurationOptions();
  v14 = a4 + *(v13 + 88);
  v15 = *(v14 + 16);
  v69 = v12;
  if (v15)
  {
    v16 = *(v14 + 8);
    v17 = v15;
  }

  else
  {
    v17 = 0xEB000000003E7470;
    v16 = 0x6D6F7250206F4E3CLL;
  }

  v64 = v16;
  v18 = v5 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
  swift_beginAccess();
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  v19 = type metadata accessor for StoryMusicCurationDiagnostics();
  v20 = *(v19 + 24);
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C6FB5FC8(v18 + v20, &qword_1EC217C28);
  OUTLINED_FUNCTION_5_107();
  sub_1C74D0498(a4, v18 + v20, v21);
  OUTLINED_FUNCTION_25_8();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v13);
  swift_endAccess();

  sub_1C74D0498(v18, a5 + *(v65 + 40), type metadata accessor for StoryMusicCurationDiagnostics);
  OUTLINED_FUNCTION_25_8();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v19);
  v28 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  v29 = [v28 UUIDString];

  v30 = sub_1C755068C();
  v32 = v31;

  a5[6] = v30;
  a5[7] = v32;
  *a5 = v64;
  a5[1] = v17;
  v33 = v66;
  v34 = v67;
  a5[2] = MEMORY[0x1E69E7CC0];
  a5[3] = v33;
  v35 = v68;
  a5[4] = v34;
  a5[5] = v35;
  v36 = qword_1EDD0ED88;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  if (v36 != -1)
  {
    OUTLINED_FUNCTION_0_35();
    swift_once();
  }

  v37 = sub_1C754FF1C();
  __swift_project_value_buffer(v37, &dword_1EDD28D48);
  v38 = OUTLINED_FUNCTION_26_52();
  v39 = v69;
  sub_1C74D0498(v38, v69, v40);
  v41 = sub_1C754FEEC();
  v42 = sub_1C755117C();
  v43 = OUTLINED_FUNCTION_40_40();
  if (os_log_type_enabled(v43, v44))
  {
    OUTLINED_FUNCTION_13_3();
    swift_slowAlloc();
    OUTLINED_FUNCTION_12_53();
    v45 = swift_slowAlloc();
    v71[0] = v45;
    *v32 = 136315138;
    v46 = StoryMusicCuration.keySongInfo()();
    OUTLINED_FUNCTION_6_116();
    sub_1C74D0114(v39, v47);
    v48 = sub_1C6F765A4(v46._countAndFlagsBits, v46._object, v71);

    *(v32 + 4) = v48;
    _os_log_impl(&dword_1C6F5C000, v41, v42, "KeySongs curated: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {

    OUTLINED_FUNCTION_6_116();
    sub_1C74D0114(v39, v49);
  }

  v50 = OUTLINED_FUNCTION_26_52();
  v51 = v70;
  sub_1C74D0498(v50, v70, v52);
  v53 = sub_1C754FEEC();
  v54 = sub_1C755117C();
  v55 = OUTLINED_FUNCTION_40_40();
  if (os_log_type_enabled(v55, v56))
  {
    OUTLINED_FUNCTION_13_3();
    swift_slowAlloc();
    OUTLINED_FUNCTION_12_53();
    v57 = swift_slowAlloc();
    v71[0] = v57;
    *v32 = 136642819;
    v58 = StoryMusicCuration.description.getter();
    v60 = v59;
    OUTLINED_FUNCTION_6_116();
    sub_1C74D0114(v51, v61);
    v62 = sub_1C6F765A4(v58, v60, v71);

    *(v32 + 4) = v62;
    _os_log_impl(&dword_1C6F5C000, v53, v54, "Story Music curation finished. Final musicCurationResults:%{sensitive}s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v57);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {

    OUTLINED_FUNCTION_6_116();
    sub_1C74D0114(v51, v63);
  }
}

uint64_t StoryMusicCurator.deinit()
{
  v1 = *(v0 + 16);

  sub_1C74D0114(v0 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics, type metadata accessor for StoryMusicCurationDiagnostics);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_safetyController);

  sub_1C6FB5FC8(v0 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_appleMusicSubscriptionState, &qword_1EC215C60);
  return v0;
}

uint64_t StoryMusicCurator.__deallocating_deinit()
{
  StoryMusicCurator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C74CE2BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C6F738F4;

  return static StoryMusicCurator.isUserEligibleForAppleMusic()();
}

uint64_t sub_1C74CE350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  return MEMORY[0x1EEE6DFA0](sub_1C74CE370, 0, 0);
}

uint64_t sub_1C74CE370()
{
  OUTLINED_FUNCTION_42();
  static StoryMusicCurator.prewarmFlexMusic()();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1C74CE408;
  v2 = *(v0 + 16);

  return sub_1C74CE66C(v2);
}

uint64_t sub_1C74CE408()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C74CE4EC()
{
  OUTLINED_FUNCTION_49_0();
  byte_1EC25B978 = 1;
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_35();
    swift_once();
  }

  v0 = sub_1C754FF1C();
  __swift_project_value_buffer(v0, &dword_1EDD28D48);
  v1 = sub_1C754FEEC();
  v2 = sub_1C755117C();
  v3 = OUTLINED_FUNCTION_40_40();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_127();
    *v5 = 0;
    _os_log_impl(&dword_1C6F5C000, v1, v2, "StoryMusicCurator prewarming MusicMobileAssetsConfigUtility...", v5, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  if (qword_1EC213DA8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for MusicMobileAssetsConfigUtility();
  __swift_project_value_buffer(v6, qword_1EC217400);
  v7 = sub_1C754FEEC();
  v8 = sub_1C755117C();
  if (OUTLINED_FUNCTION_21_0(v8))
  {
    v9 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v9);
    OUTLINED_FUNCTION_6(&dword_1C6F5C000, v10, v11, "StoryMusicCurator prewarm done");
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  OUTLINED_FUNCTION_43();

  return v12();
}

uint64_t sub_1C74CE68C()
{
  OUTLINED_FUNCTION_123();
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_35();
    swift_once();
  }

  v1 = sub_1C754FF1C();
  *(v0 + 24) = __swift_project_value_buffer(v1, &dword_1EDD28D48);
  v2 = sub_1C754FEEC();
  v3 = sub_1C755117C();
  if (OUTLINED_FUNCTION_21_0(v3))
  {
    v4 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v4);
    OUTLINED_FUNCTION_6(&dword_1C6F5C000, v5, v6, "prewarmMusicEmbeddings started");
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v7 = *(v0 + 16);

  type metadata accessor for StoryMusicCache();
  v8 = v7;
  StoryMusicCache.__allocating_init(photoLibrary:)();
  *(v0 + 32) = v9;
  v10 = v9;
  *(v0 + 80) = 0;
  *(v0 + 40) = type metadata accessor for MusicKeywordsGeneratorEmbedded();
  swift_allocObject();
  v11 = v10;
  v12 = swift_task_alloc();
  *(v0 + 48) = v12;
  *v12 = v0;
  v12[1] = sub_1C74CE918;
  v13 = MEMORY[0x1E69E7CC0];

  return MusicKeywordsGeneratorEmbedded.init(usingCache:embeddingType:with:maxKeywords:)(v10, (v0 + 80), v13, 1);
}

uint64_t sub_1C74CE918()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_24_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = *(v3 + 32);

    *(v3 + 81) = 1;
    v11 = (v3 + 81);
    swift_allocObject();
    v12 = swift_task_alloc();
    *(v11 - 17) = v12;
    *v12 = v5;
    v12[1] = sub_1C74CEABC;
    v13 = MEMORY[0x1E69E7CC0];

    return MusicKeywordsGeneratorEmbedded.init(usingCache:embeddingType:with:maxKeywords:)(v10, v11, v13, 1);
  }
}

uint64_t sub_1C74CEABC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 72) = v0;

  if (v0)
  {
    v7 = sub_1C74CEDA4;
  }

  else
  {

    v7 = sub_1C74CED00;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C74CEBC8()
{
  OUTLINED_FUNCTION_123();

  v2 = *(v0 + 56);
  v3 = v2;
  v4 = sub_1C754FEEC();
  v5 = sub_1C755119C();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_13_3();
    swift_slowAlloc();
    v6 = OUTLINED_FUNCTION_163_0();
    *v1 = 138412290;
    v7 = v2;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v8;
    *v6 = v8;
    OUTLINED_FUNCTION_52_2(&dword_1C6F5C000, v9, v5, "Error in prewarmMusicEmbeddings: %@");
    sub_1C6FB5FC8(v6, &qword_1EC215190);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_43();

  return v10();
}

uint64_t sub_1C74CED00()
{
  OUTLINED_FUNCTION_49_0();
  v1 = sub_1C754FEEC();
  v2 = sub_1C755117C();
  v3 = OUTLINED_FUNCTION_21_0(v2);
  v4 = *(v0 + 32);
  if (v3)
  {
    v5 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v5);
    OUTLINED_FUNCTION_6(&dword_1C6F5C000, v6, v7, "prewarmMusicEmbeddings done");
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  OUTLINED_FUNCTION_43();

  return v8();
}

uint64_t sub_1C74CEDA4()
{
  OUTLINED_FUNCTION_123();

  v2 = *(v0 + 72);
  v3 = v2;
  v4 = sub_1C754FEEC();
  v5 = sub_1C755119C();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_13_3();
    swift_slowAlloc();
    v6 = OUTLINED_FUNCTION_163_0();
    *v1 = 138412290;
    v7 = v2;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v8;
    *v6 = v8;
    OUTLINED_FUNCTION_52_2(&dword_1C6F5C000, v9, v5, "Error in prewarmMusicEmbeddings: %@");
    sub_1C6FB5FC8(v6, &qword_1EC215190);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_43();

  return v10();
}

uint64_t static StoryMusicCurator.allMusicEventRecorderMappings()()
{
  OUTLINED_FUNCTION_3_1();
  v61 = v0;
  v1 = v0;
  OUTLINED_FUNCTION_345();
  MEMORY[0x1CCA5CD70](0x73754D656C707041, 0xEF73676E6F536369);
  v58 = v61;
  sub_1C75504FC();
  OUTLINED_FUNCTION_345();
  MEMORY[0x1CCA5CD70](0x73754D656C707041, 0xEA00000000006369);
  v2 = v61;
  OUTLINED_FUNCTION_345();
  v3 = OUTLINED_FUNCTION_18_70();
  MEMORY[0x1CCA5CD70](v3);
  v59 = v1;
  v4 = v1;
  v57 = v1;
  OUTLINED_FUNCTION_345();
  v5 = OUTLINED_FUNCTION_17_82();
  MEMORY[0x1CCA5CD70](v5);
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C7586700;
  OUTLINED_FUNCTION_3_1();
  *(v8 + 32) = 0xD000000000000019;
  *(v8 + 40) = v9;
  OUTLINED_FUNCTION_345();
  v10 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v10);

  *(inited + 48) = 0xD000000000000027;
  *(inited + 56) = v4;
  OUTLINED_FUNCTION_3_1();
  *(inited + 64) = 0xD00000000000001CLL;
  *(inited + 72) = v11;
  sub_1C755180C();
  sub_1C75504FC();

  MEMORY[0x1CCA5CD70](0xD000000000000011, 0x80000001C75B27C0);
  v12 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v12);

  *(inited + 80) = 0xD000000000000027;
  *(inited + 88) = v6;
  OUTLINED_FUNCTION_3_1();
  *(inited + 96) = 0xD000000000000022;
  *(inited + 104) = v13;
  sub_1C755180C();
  sub_1C75504FC();

  MEMORY[0x1CCA5CD70](0xD000000000000011, 0x80000001C75B27C0);
  v14 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v14);

  *(inited + 112) = 0xD000000000000027;
  *(inited + 120) = v6;
  OUTLINED_FUNCTION_3_1();
  *(inited + 128) = 0xD000000000000024;
  *(inited + 136) = v15;
  sub_1C75504FC();
  OUTLINED_FUNCTION_345();
  v16 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v16);

  *(inited + 144) = 0xD000000000000027;
  *(inited + 152) = v6;
  OUTLINED_FUNCTION_3_1();
  *(inited + 160) = 0xD000000000000023;
  *(inited + 168) = v17;
  OUTLINED_FUNCTION_345();
  v18 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v18);

  *(inited + 176) = 0xD000000000000027;
  *(inited + 184) = v6;
  OUTLINED_FUNCTION_3_1();
  *(inited + 192) = 0xD00000000000001ALL;
  *(inited + 200) = v19;
  OUTLINED_FUNCTION_345();
  v20 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v20);

  *(inited + 208) = 0xD000000000000027;
  *(inited + 216) = v57;
  OUTLINED_FUNCTION_3_1();
  *(inited + 224) = 0xD000000000000019;
  *(inited + 232) = v21;
  v60 = 0xD000000000000027;
  v61 = v58;
  OUTLINED_FUNCTION_345();
  v22 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v22);

  *(inited + 240) = 0xD000000000000027;
  *(inited + 248) = v58;
  OUTLINED_FUNCTION_3_1();
  *(inited + 256) = 0xD00000000000001BLL;
  *(inited + 264) = v23;
  OUTLINED_FUNCTION_55_36();
  OUTLINED_FUNCTION_345();
  v24 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v24);

  v25 = v61;
  *(inited + 272) = v60;
  *(inited + 280) = v25;
  OUTLINED_FUNCTION_3_1();
  *(inited + 288) = 0xD00000000000001CLL;
  *(inited + 296) = v26;
  OUTLINED_FUNCTION_55_36();
  OUTLINED_FUNCTION_345();
  v27 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v27);

  v28 = v61;
  *(inited + 304) = v60;
  *(inited + 312) = v28;
  OUTLINED_FUNCTION_3_1();
  *(inited + 320) = 0xD00000000000001FLL;
  *(inited + 328) = v29;
  OUTLINED_FUNCTION_55_36();
  OUTLINED_FUNCTION_345();
  MEMORY[0x1CCA5CD70](0xD000000000000015, 0x80000001C75ACE40);
  OUTLINED_FUNCTION_345();
  v30 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v30);

  v31 = v61;
  *(inited + 336) = v60;
  *(inited + 344) = v31;
  OUTLINED_FUNCTION_3_1();
  *(inited + 352) = 0xD000000000000025;
  *(inited + 360) = v32;
  OUTLINED_FUNCTION_55_36();
  OUTLINED_FUNCTION_345();
  v33 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v33);

  v34 = v61;
  *(inited + 368) = v60;
  *(inited + 376) = v34;
  OUTLINED_FUNCTION_3_1();
  *(inited + 384) = 0xD000000000000025;
  *(inited + 392) = v35;
  OUTLINED_FUNCTION_55_36();
  OUTLINED_FUNCTION_345();
  v36 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v36);

  v37 = v61;
  *(inited + 400) = v60;
  *(inited + 408) = v37;
  OUTLINED_FUNCTION_3_1();
  *(inited + 416) = 0xD000000000000025;
  *(inited + 424) = v38;
  OUTLINED_FUNCTION_345();
  v39 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v39);

  *(inited + 432) = 0xD000000000000027;
  *(inited + 440) = v2;
  OUTLINED_FUNCTION_3_1();
  *(inited + 448) = 0xD000000000000018;
  *(inited + 456) = v40;
  sub_1C75504FC();
  OUTLINED_FUNCTION_345();
  v41 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v41);

  *(inited + 464) = 0xD000000000000027;
  *(inited + 472) = v59;
  OUTLINED_FUNCTION_3_1();
  *(inited + 480) = 0xD00000000000001CLL;
  *(inited + 488) = v42;
  sub_1C75504FC();
  OUTLINED_FUNCTION_345();
  v43 = sub_1C755184C();
  v45 = v44;
  MEMORY[0x1CCA5CD70](v43);

  *(inited + 496) = 0xD000000000000027;
  *(inited + 504) = v59;
  OUTLINED_FUNCTION_3_1();
  *(inited + 512) = 0xD00000000000001ELL;
  *(inited + 520) = v46;
  v60 = 0xD000000000000027;
  v61 = v59;
  OUTLINED_FUNCTION_345();
  v47 = sub_1C755184C();
  MEMORY[0x1CCA5CD70](v47);

  *(inited + 528) = 0xD000000000000027;
  *(inited + 536) = v59;
  v48 = sub_1C75504DC();
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_35();
    swift_once();
  }

  v49 = sub_1C754FF1C();
  __swift_project_value_buffer(v49, &dword_1EDD28D48);
  sub_1C75504FC();
  v50 = sub_1C754FEEC();
  v51 = sub_1C755118C();

  if (os_log_type_enabled(v50, v51))
  {
    OUTLINED_FUNCTION_13_3();
    swift_slowAlloc();
    OUTLINED_FUNCTION_12_53();
    v52 = swift_slowAlloc();
    v60 = v52;
    *v45 = 136315138;
    v53 = sub_1C75504BC();
    v55 = sub_1C6F765A4(v53, v54, &v60);

    *(v45 + 4) = v55;
    _os_log_impl(&dword_1C6F5C000, v50, v51, "musicPerfEventNameMappingDictionary = %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v52);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  return v48;
}

uint64_t sub_1C74CF670(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a2, a4);
  v13 = sub_1C74CFFC8(a1, v11, v12, a4, a5);
  (*(v9 + 8))(a2, a4);
  return v13;
}

uint64_t sub_1C74CF794()
{
  OUTLINED_FUNCTION_123();
  v0 = type metadata accessor for StoryMusicCurationOptions();
  OUTLINED_FUNCTION_18(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_5_2(v1);
  *v2 = v3;
  v2[1] = sub_1C6F738F4;
  v4 = OUTLINED_FUNCTION_54();

  return sub_1C74CD75C(v4);
}

uint64_t sub_1C74CF890()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_75_1();
  v1 = type metadata accessor for StoryMusicCurationOptions();
  OUTLINED_FUNCTION_18(v1);
  OUTLINED_FUNCTION_30_53();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_28_44(v2);
  OUTLINED_FUNCTION_239_3();

  return sub_1C74CD954(v3, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_10Tm_0()
{
  type metadata accessor for StoryMusicCurationOptions();
  OUTLINED_FUNCTION_14_5();
  v5 = *(v4 + 80);
  v6 = (v5 + 25) & ~v5;
  v8 = *(v7 + 64);

  v9 = v1 + v6 + *(v0 + 56);
  v10 = type metadata accessor for AppleMusicSubscriptionState();
  if (!OUTLINED_FUNCTION_61_25(v10))
  {

    v11 = *(v2 + 28);
    v12 = sub_1C754DF6C();
    if (!OUTLINED_FUNCTION_62_30(v12))
    {
      (*(*(v3 - 8) + 8))(v9 + v11, v3);
    }
  }

  v13 = (v1 + v6 + *(v0 + 88));

  if (v13[6])
  {
    if (v13[3])
    {
    }
  }

  if (v13[9])
  {
  }

  v14 = (((((v8 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 135) & 0xFFFFFFFFFFFFFFF8;

  __swift_destroy_boxed_opaque_existential_1(v1 + v14);

  return MEMORY[0x1EEE6BDD0](v1, v14 + 40, v5 | 7);
}

uint64_t sub_1C74CFC0C()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_75_1();
  v1 = type metadata accessor for StoryMusicCurationOptions();
  OUTLINED_FUNCTION_18(v1);
  OUTLINED_FUNCTION_30_53();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_28_44(v2);
  OUTLINED_FUNCTION_239_3();

  return sub_1C74CDB58(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C74CFCF8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  v4 = OUTLINED_FUNCTION_90();
  v5(v4);
  return a2;
}

uint64_t sub_1C74CFD54()
{
  OUTLINED_FUNCTION_49_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v1[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_54();

  return sub_1C74CE2BC();
}

uint64_t sub_1C74CFDF4()
{
  OUTLINED_FUNCTION_123();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_5_2(v5);
  *v6 = v7;
  v6[1] = sub_1C6F738F4;
  v8 = OUTLINED_FUNCTION_54();

  return sub_1C74CE350(v8, v9, v1, v2, v3, v4);
}

uint64_t sub_1C74CFEA8(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = type metadata accessor for SafetyController(0);
  v20 = &protocol witness table for SafetyController;
  *&v18 = a4;
  v10 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  v11 = [v10 UUIDString];

  v12 = sub_1C755068C();
  v14 = v13;

  *(a5 + 40) = v12;
  *(a5 + 48) = v14;
  *(a5 + 56) = 0;
  sub_1C7136038();
  *(a5 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_storyMusicCache) = 0;
  v15 = OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_appleMusicSubscriptionState;
  v16 = type metadata accessor for AppleMusicSubscriptionState();
  __swift_storeEnumTagSinglePayload(a5 + v15, 1, 1, v16);
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  sub_1C6F699F8(&v18, a5 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_safetyController);
  return a5;
}

uint64_t sub_1C74CFFC8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a4;
  v23 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v21);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a1;
  v11 = *(a1 + 4);
  v12 = a1[2];
  v13 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  v14 = [v13 UUIDString];

  v15 = sub_1C755068C();
  v17 = v16;

  *(a3 + 40) = v15;
  *(a3 + 48) = v17;
  *(a3 + 56) = 0;
  sub_1C7136038();
  *(a3 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_storyMusicCache) = 0;
  v18 = OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_appleMusicSubscriptionState;
  v19 = type metadata accessor for AppleMusicSubscriptionState();
  __swift_storeEnumTagSinglePayload(a3 + v18, 1, 1, v19);
  *(a3 + 16) = v10;
  *(a3 + 24) = v11;
  *(a3 + 32) = v12;
  sub_1C6F699F8(&v21, a3 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_safetyController);
  return a3;
}

uint64_t sub_1C74D0114(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C74D016C()
{
  result = qword_1EC21C7A8;
  if (!qword_1EC21C7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C7A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StoryMusicCurationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StoryMusicCurationError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for StoryMusicCurator()
{
  result = qword_1EDD0A9B0;
  if (!qword_1EDD0A9B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C74D0378()
{
  type metadata accessor for StoryMusicCurationDiagnostics();
  if (v0 <= 0x3F)
  {
    sub_1C6FF74D0();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1C74D0498(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  v4 = OUTLINED_FUNCTION_90();
  v5(v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_55_36()
{
  *(v2 - 104) = v1;
  *(v2 - 96) = v0;

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_61_25(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_62_30(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t static MusicCurationJsonParser.musicCurationSongs(fromFlexMusicJson:)(uint64_t a1, unint64_t a2)
{
  static MusicCurationJsonParser.dictionary(from:)(a1, a2);
  if (v3)
  {
    return v2;
  }

  sub_1C6FE3750(0xD000000000000013, 0x80000001C75B2AA0);

  if (v38)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACC0);
    if (OUTLINED_FUNCTION_13_97())
    {
      v4 = 0;
      v5 = v36;
      v2 = MEMORY[0x1E69E7CC0];
      v6 = *(v36 + 16);
      while (1)
      {
        if (v6 == v4)
        {

          return v2;
        }

        if (v4 >= *(v5 + 16))
        {
          break;
        }

        OUTLINED_FUNCTION_9_99(v5 + 8 * v4);
        v8 = sub_1C74D1D3C(v7);
        OUTLINED_FUNCTION_11_82(v8, v9, v10, v11, v12, v13, v14, v15, v32, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], __dst[23], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20], __src[21], __src[22], __src[23], v36);
        v16 = sub_1C70808D8(v37);
        if (v16 == 1)
        {
          OUTLINED_FUNCTION_2_138(1, v17, v18, v19, v20, v21, v22, v23, v33, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], __dst[23], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20], __src[21], __src[22], __src[23], v36);
          sub_1C7030CDC(__src, &qword_1EC21BDB0);
        }

        else
        {
          OUTLINED_FUNCTION_2_138(v16, v17, v18, v19, v20, v21, v22, v23, v33, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], __dst[23], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20], __src[21], __src[22], __src[23], v36);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB2CFC();
            v2 = v25;
          }

          v24 = *(v2 + 16);
          if (v24 >= *(v2 + 24) >> 1)
          {
            sub_1C6FB2CFC();
            v2 = v26;
          }

          memcpy(__dst, __src, sizeof(__dst));
          *(v2 + 16) = v24 + 1;
          memcpy((v2 + 192 * v24 + 32), __dst, 0xC0uLL);
        }

        ++v4;
      }

      __break(1u);
      goto LABEL_23;
    }
  }

  else
  {
    sub_1C7030CDC(v37, &qword_1EC219770);
  }

  if (qword_1EC2141E0 != -1)
  {
LABEL_23:
    OUTLINED_FUNCTION_0_205();
  }

  v27 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v27, qword_1EC21C7B0);
  v28 = sub_1C754FEEC();
  v2 = sub_1C755119C();
  if (os_log_type_enabled(v28, v2))
  {
    *OUTLINED_FUNCTION_127() = 0;
    OUTLINED_FUNCTION_24_7(&dword_1C6F5C000, v29, v30, "Couldn't extract bestMusicSuggestions for Flex Music curation json");
    OUTLINED_FUNCTION_109();
  }

  sub_1C74D1580();
  swift_allocError();
  swift_willThrow();
  return v2;
}

uint64_t sub_1C74D0820(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C754DC0C();
  v23 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C755137C();
  sub_1C74D394C();
  while (1)
  {
    sub_1C755150C();
    if (!v28)
    {
      return (*(v23 + 8))(v5, v3);
    }

    sub_1C6F9ED18(&v27, v26);
    sub_1C6F774EC(v26, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0);
    result = swift_dynamicCast();
    if (!result)
    {
      goto LABEL_20;
    }

    v7 = 0;
    v8 = 1 << *(v29 + 32);
    v9 = (v8 + 63) >> 6;
    v10 = 64;
    if (!v9)
    {
      goto LABEL_19;
    }

    while (1)
    {
      v11 = *(v29 + v10);
      if (v11)
      {
        break;
      }

      v10 += 8;
      v7 -= 64;
      if (!--v9)
      {
        goto LABEL_19;
      }
    }

    v12 = __clz(__rbit64(v11));
    if (v12 - v8 == v7)
    {
      goto LABEL_19;
    }

    if (-v7 < 0)
    {
      break;
    }

    v13 = v12 - v7;
    if (v13 >= v8)
    {
      break;
    }

    if (((*(v29 + v10) >> v12) & 1) == 0)
    {
      goto LABEL_23;
    }

    v14 = (*(v29 + 48) + 16 * v13);
    v15 = v14[1];
    v24 = *v14;
    sub_1C75504FC();

    v16 = *a2;
    if (!*a2)
    {
LABEL_19:

      goto LABEL_20;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C6FB1814();
      v16 = v20;
      *a2 = v20;
    }

    v18 = *(v16 + 16);
    if (v18 >= *(v16 + 24) >> 1)
    {
      sub_1C6FB1814();
      v16 = v21;
      *a2 = v21;
    }

    *(v16 + 16) = v18 + 1;
    v19 = v16 + 16 * v18;
    *(v19 + 32) = v24;
    *(v19 + 40) = v15;
LABEL_20:
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t static MusicCurationJsonParser.musicCurationSongs(fromAppleMusicInflationJson:songType:)(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = *a3;
  OUTLINED_FUNCTION_3_1();
  v7 = 0xD00000000000001CLL;
  v8 = v4;
  MEMORY[0x1CCA5CD70]();
  MEMORY[0x1CCA5CD70](32032, 0xE200000000000000);
  LOBYTE(v7) = v3;
  v5 = static MusicCurationJsonParser.musicCurationSongs(fromAppleMusicJson:from:songType:)(0xD00000000000001CLL, v8, 0xD000000000000017, 0x80000001C759F2F0, &v7);

  return v5;
}

uint64_t static MusicCurationJsonParser.musicCurationSongs(fromAppleMusicJson:from:songType:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v7 = *a5;
  static MusicCurationJsonParser.dictionary(from:)(a1, a2);
  if (v5)
  {
    return a4;
  }

  v8 = OUTLINED_FUNCTION_103();
  sub_1C6FE3750(v8, v9);

  if (v47[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACC0);
    if (OUTLINED_FUNCTION_13_97())
    {
      v10 = 0;
      v11 = v46;
      a4 = MEMORY[0x1E69E7CC0];
      v12 = *(v46 + 16);
      while (1)
      {
        if (v12 == v10)
        {

          return a4;
        }

        if (v10 >= *(v11 + 16))
        {
          break;
        }

        OUTLINED_FUNCTION_9_99(v11 + 8 * v10);
        v14 = sub_1C74D15D4(v7, v13);
        OUTLINED_FUNCTION_11_82(v14, v15, v16, v17, v18, v19, v20, v21, v42, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], __dst[23], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20], __src[21], __src[22], __src[23], v46);
        v22 = sub_1C70808D8(v47);
        if (v22 == 1)
        {
          OUTLINED_FUNCTION_2_138(1, v23, v24, v25, v26, v27, v28, v29, v43, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], __dst[23], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20], __src[21], __src[22], __src[23], v46);
          sub_1C7030CDC(__src, &qword_1EC21BDB0);
        }

        else
        {
          OUTLINED_FUNCTION_2_138(v22, v23, v24, v25, v26, v27, v28, v29, v43, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], __dst[23], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20], __src[21], __src[22], __src[23], v46);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB2CFC();
            a4 = v31;
          }

          v30 = *(a4 + 16);
          if (v30 >= *(a4 + 24) >> 1)
          {
            sub_1C6FB2CFC();
            a4 = v32;
          }

          memcpy(__dst, __src, sizeof(__dst));
          *(a4 + 16) = v30 + 1;
          memcpy((a4 + 192 * v30 + 32), __dst, 0xC0uLL);
        }

        ++v10;
      }

      __break(1u);
      goto LABEL_23;
    }
  }

  else
  {
    sub_1C7030CDC(v47, &qword_1EC219770);
  }

  if (qword_1EC2141E0 != -1)
  {
LABEL_23:
    OUTLINED_FUNCTION_0_205();
  }

  v33 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v33, qword_1EC21C7B0);
  sub_1C75504FC();
  v34 = sub_1C754FEEC();
  v35 = sub_1C755119C();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v47[0] = v37;
    *v36 = 136315138;
    v38 = OUTLINED_FUNCTION_103();
    *(v36 + 4) = sub_1C6F765A4(v38, v39, v40);
    _os_log_impl(&dword_1C6F5C000, v34, v35, "Couldn't extract '%s' for Apple Music curation json", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  sub_1C74D1580();
  swift_allocError();
  swift_willThrow();
  return a4;
}

uint64_t sub_1C74D0E84()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21C7B0);
  __swift_project_value_buffer(v0, qword_1EC21C7B0);
  return sub_1C754FEFC();
}

uint64_t MusicCurationJsonParser.Error.hashValue.getter()
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](0);
  return sub_1C7551FAC();
}

uint64_t static MusicCurationJsonParser.dictionary(from:)(uint64_t a1, unint64_t a2)
{
  v59[4] = *MEMORY[0x1E69E9840];
  v4 = sub_1C75506DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v59[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    sub_1C75506CC();
    sub_1C755069C();
    v10 = v9;
    (*(v5 + 8))(v7, v4);
    if (v10 >> 60 == 15)
    {
      if (qword_1EC2141E0 != -1)
      {
        OUTLINED_FUNCTION_0_205();
      }

      v11 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v11, qword_1EC21C7B0);
      v12 = sub_1C754FEEC();
      v13 = sub_1C755119C();
      if (OUTLINED_FUNCTION_23_0(v13))
      {
        *OUTLINED_FUNCTION_127() = 0;
        OUTLINED_FUNCTION_8();
        _os_log_impl(v14, v15, v16, v17, v18, 2u);
        OUTLINED_FUNCTION_109();
      }

      return sub_1C75504DC();
    }

    else
    {
      v29 = objc_opt_self();
      OUTLINED_FUNCTION_103();
      v30 = sub_1C754DDCC();
      v59[0] = 0;
      v31 = [v29 JSONObjectWithData:v30 options:5 error:v59];

      if (v31)
      {
        v32 = v59[0];
        sub_1C75515CC();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0);
        if (swift_dynamicCast())
        {
          v33 = OUTLINED_FUNCTION_103();
          sub_1C70B5C10(v33, v34);
          return v58;
        }

        else
        {
          if (qword_1EC2141E0 != -1)
          {
            OUTLINED_FUNCTION_0_205();
          }

          v52 = sub_1C754FF1C();
          OUTLINED_FUNCTION_23_2(v52, qword_1EC21C7B0);
          v53 = sub_1C754FEEC();
          v54 = sub_1C755119C();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = OUTLINED_FUNCTION_127();
            *v55 = 0;
            _os_log_impl(&dword_1C6F5C000, v53, v54, "Unable to parse StoryMusicCuration to JSON.", v55, 2u);
            OUTLINED_FUNCTION_109();
          }

          v19 = sub_1C75504DC();
          v56 = OUTLINED_FUNCTION_103();
          sub_1C70B5C10(v56, v57);
        }
      }

      else
      {
        v35 = v59[0];
        v36 = sub_1C754DBEC();

        swift_willThrow();
        v37 = OUTLINED_FUNCTION_103();
        sub_1C70B5C10(v37, v38);
        if (qword_1EC2141E0 != -1)
        {
          OUTLINED_FUNCTION_0_205();
        }

        v39 = sub_1C754FF1C();
        OUTLINED_FUNCTION_23_2(v39, qword_1EC21C7B0);
        v40 = v36;
        v41 = sub_1C754FEEC();
        v42 = sub_1C755119C();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *v43 = 138412290;
          v45 = v36;
          v46 = _swift_stdlib_bridgeErrorToNSError();
          *(v43 + 4) = v46;
          *v44 = v46;
          OUTLINED_FUNCTION_8();
          _os_log_impl(v47, v48, v49, v50, v51, 0xCu);
          sub_1C7030CDC(v44, &qword_1EC215190);
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_109();
        }

        else
        {
        }

        return sub_1C75504DC();
      }
    }

    return v19;
  }

  else
  {
    if (qword_1EC2141E0 != -1)
    {
      OUTLINED_FUNCTION_0_205();
    }

    v20 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v20, qword_1EC21C7B0);
    v21 = sub_1C754FEEC();
    v22 = sub_1C755118C();
    if (OUTLINED_FUNCTION_23_0(v22))
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_8();
      _os_log_impl(v23, v24, v25, v26, v27, 2u);
      OUTLINED_FUNCTION_109();
    }

    return sub_1C75504DC();
  }
}

unint64_t sub_1C74D1580()
{
  result = qword_1EC21C7C8;
  if (!qword_1EC21C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C7C8);
  }

  return result;
}

void *sub_1C74D15D4@<X0>(int a1@<W1>, void *a2@<X8>)
{
  sub_1C6FE3750(0x44496D616461, 0xE600000000000000);
  if (__src[3])
  {
    if (swift_dynamicCast())
    {
      v32 = v35;
      v33 = v34;
      sub_1C6FE3750(0x656C746974, 0xE500000000000000);
      if (swift_dynamicCast())
      {
        v30 = v34;
        v31 = v35;
      }

      else
      {
        v31 = 0xEA00000000003E65;
        v30 = 0x6C746974206F6E3CLL;
      }

      sub_1C6FE3750(0x747369747261, 0xE600000000000000);
      if (__src[3])
      {
        if (swift_dynamicCast())
        {
          v28 = v34;
          v29 = v35;
          goto LABEL_17;
        }
      }

      else
      {
        sub_1C7030CDC(__src, &qword_1EC219770);
      }

      v29 = 0xEB000000003E7473;
      v28 = 0x69747261206F6E3CLL;
LABEL_17:
      sub_1C6FE3750(0x6D614E65726E6567, 0xEA00000000007365);
      if (__src[3])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
        if (swift_dynamicCast())
        {
          v27 = v34;
          goto LABEL_22;
        }
      }

      else
      {
        sub_1C7030CDC(__src, &qword_1EC219770);
      }

      v27 = 0;
LABEL_22:
      sub_1C6FE3750(0x6C6173756F7261, 0xE700000000000000);
      if (__src[3])
      {
        if (swift_dynamicCast())
        {
          v25 = 0;
          v26 = v34;
          goto LABEL_27;
        }
      }

      else
      {
        sub_1C7030CDC(__src, &qword_1EC219770);
      }

      v26 = 0;
      v25 = 1;
LABEL_27:
      sub_1C6FE3750(0x65636E656C6176, 0xE700000000000000);
      if (__src[3])
      {
        if (swift_dynamicCast())
        {
          v23 = 0;
          v24 = v34;
          goto LABEL_32;
        }
      }

      else
      {
        sub_1C7030CDC(__src, &qword_1EC219770);
      }

      v24 = 0;
      v23 = 1;
LABEL_32:
      sub_1C6FE3750(0x6E65726566657270, 0xEF65726F63536563);
      if (__src[3])
      {
        if (swift_dynamicCast())
        {
          v13 = 0;
          v22 = v34;
          goto LABEL_37;
        }
      }

      else
      {
        sub_1C7030CDC(__src, &qword_1EC219770);
      }

      v22 = 0;
      v13 = 1;
LABEL_37:
      sub_1C6FE3750(0x504C5255676E6F73, 0xEB00000000687461);
      v39 = a1;
      if (__src[3])
      {
        if (swift_dynamicCast())
        {
          v14 = v34;
          v15 = v35;
          goto LABEL_42;
        }
      }

      else
      {
        sub_1C7030CDC(__src, &qword_1EC219770);
      }

      v14 = 0;
      v15 = 0;
LABEL_42:
      sub_1C6FE3750(0xD00000000000001CLL, 0x80000001C75B2C00);
      if (__src[3])
      {
        v16 = a2;
        if (swift_dynamicCast())
        {
          v17 = 0;
          v18 = v34;
          goto LABEL_47;
        }
      }

      else
      {
        v16 = a2;
        sub_1C7030CDC(__src, &qword_1EC219770);
      }

      v18 = 0;
      v17 = 1;
LABEL_47:
      sub_1C6FE3750(0xD00000000000001FLL, 0x80000001C75B2C20);
      if (v36)
      {
        if (swift_dynamicCast())
        {
          v20 = 0;
          v21 = __src[0];
LABEL_52:
          v38 = v23;
          LOBYTE(__src[0]) = v39;
          __src[1] = v33;
          __src[2] = v32;
          __src[3] = v30;
          __src[4] = v31;
          __src[5] = v28;
          __src[6] = v29;
          __src[7] = v26;
          LOBYTE(__src[8]) = v25;
          __src[9] = v24;
          LOBYTE(__src[10]) = v23;
          __src[11] = v27;
          __src[12] = 0;
          __src[13] = 0;
          __src[14] = v22;
          LOWORD(__src[15]) = v13;
          __src[16] = v14;
          __src[17] = v15;
          __src[18] = v18;
          LOBYTE(__src[19]) = v17;
          __src[20] = v21;
          LOBYTE(__src[21]) = v20;
          __src[22] = 0;
          __src[23] = 0;
          CGRectMake(v19);
          return memcpy(v16, __src, 0xC0uLL);
        }
      }

      else
      {
        sub_1C7030CDC(&v34, &qword_1EC219770);
      }

      v21 = 0;
      v20 = 1;
      goto LABEL_52;
    }
  }

  else
  {
    sub_1C7030CDC(__src, &qword_1EC219770);
  }

  if (qword_1EC2141E0 != -1)
  {
    swift_once();
  }

  v4 = sub_1C754FF1C();
  __swift_project_value_buffer(v4, qword_1EC21C7B0);
  sub_1C75504FC();
  v5 = sub_1C754FEEC();
  v6 = sub_1C755119C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    __src[0] = v8;
    *v7 = 136315138;
    v9 = sub_1C75504BC();
    v11 = sub_1C6F765A4(v9, v10, __src);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1C6F5C000, v5, v6, "Unable to get the adamID for song: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1CCA5F8E0](v8, -1, -1);
    MEMORY[0x1CCA5F8E0](v7, -1, -1);
  }

  sub_1C7423CA4(__src);
  return memcpy(a2, __src, 0xC0uLL);
}

void *sub_1C74D1D3C@<X0>(unint64_t a1@<X8>)
{
  sub_1C6FE3750(6580597, 0xE300000000000000);
  if (__src[3])
  {
    if (swift_dynamicCast())
    {
      v2 = v135;
      v3 = v136;
      sub_1C6FE3750(0x656C746974, 0xE500000000000000);
      if (swift_dynamicCast())
      {
        v128 = v135;
        v129 = v136;
      }

      else
      {
        v129 = 0xEA00000000003E65;
        v128 = 0x6C746974206F4E3CLL;
      }

      sub_1C6FE3750(0x747369747261, 0xE600000000000000);
      if (__src[3])
      {
        if (swift_dynamicCast())
        {
          v126 = v135;
          v127 = v136;
          goto LABEL_16;
        }
      }

      else
      {
        sub_1C7030CDC(__src, &qword_1EC219770);
      }

      v127 = 0xEB000000003E7473;
      v126 = 0x69747261206F4E3CLL;
LABEL_16:
      v138 = 0;
      sub_1C6FE3750(0xD000000000000010, 0x80000001C75A47B0);
      if (__src[3])
      {
        sub_1C74D3908();
        if (swift_dynamicCast())
        {
          v138 = MEMORY[0x1E69E7CC0];
          sub_1C74D0820(v135, &v138);
        }
      }

      else
      {
        sub_1C7030CDC(__src, &qword_1EC219770);
      }

      sub_1C6FE3750(0x734449676174, 0xE600000000000000);
      if (__src[3])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
        if (swift_dynamicCast())
        {
          v119 = a1;
          v13 = 0;
          v14 = v135;
          v15 = v135 + 5;
          v130 = v135[2];
          a1 = -v130;
          v120 = MEMORY[0x1E69E7CC0];
LABEL_23:
          v16 = &v15[2 * v13++];
          while (v13 - v130 != 1)
          {
            if ((v13 - 1) >= v135[2])
            {
              __break(1u);
LABEL_110:
              __break(1u);
LABEL_111:
              __break(1u);
LABEL_112:
              __break(1u);
LABEL_113:
              __break(1u);
              goto LABEL_114;
            }

            v18 = *(v16 - 1);
            v17 = *v16;
            __src[0] = v18;
            __src[1] = v17;
            sub_1C6FB5E8C();
            sub_1C75504FC();
            if (sub_1C75515AC())
            {
              v19 = v120;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1C6F7ED9C();
                v19 = v120;
              }

              v20 = *(v19 + 16);
              v21 = v20 + 1;
              if (v20 >= *(v19 + 24) >> 1)
              {
                sub_1C6F7ED9C();
                v21 = v20 + 1;
                v19 = v120;
              }

              *(v19 + 16) = v21;
              v120 = v19;
              v22 = v19 + 16 * v20;
              *(v22 + 32) = v18;
              *(v22 + 40) = v17;
              v15 = v135 + 5;
              goto LABEL_23;
            }

            ++v13;
            v16 += 2;
          }

          v35 = *(v120 + 16);
          if (v35)
          {
            v132 = MEMORY[0x1E69E7CC0];
            sub_1C6F7ED9C();
            v36 = v132;
            sub_1C6FB5E8C();
            v37 = (v120 + 40);
            do
            {
              v38 = *v37;
              __src[0] = *(v37 - 1);
              __src[1] = v38;
              v39 = sub_1C755155C();
              v41 = v40;
              v42 = *(v36 + 16);
              v43 = v36;
              if (v42 >= *(v36 + 24) >> 1)
              {
                sub_1C6F7ED9C();
                v43 = v36;
              }

              *(v43 + 16) = v42 + 1;
              v44 = v43 + 16 * v42;
              *(v44 + 32) = v39;
              *(v44 + 40) = v41;
              v37 += 2;
              --v35;
              v36 = v43;
            }

            while (v35);
            v116 = v43;

            v14 = v135;
          }

          else
          {

            v116 = MEMORY[0x1E69E7CC0];
          }

          v45 = 0;
          v46 = v14 + 5;
          a1 = -v130;
          v121 = MEMORY[0x1E69E7CC0];
          v117 = v14 + 5;
LABEL_43:
          v47 = &v46[2 * v45++];
          while (v45 - v130 != 1)
          {
            if ((v45 - 1) >= v14[2])
            {
              goto LABEL_110;
            }

            v49 = *(v47 - 1);
            v48 = *v47;
            __src[0] = v49;
            __src[1] = v48;
            sub_1C6FB5E8C();
            sub_1C75504FC();
            if (sub_1C75515AC())
            {
              v50 = v121;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1C6F7ED9C();
                v50 = v121;
              }

              v51 = *(v50 + 16);
              v52 = v50;
              if (v51 >= *(v50 + 24) >> 1)
              {
                sub_1C6F7ED9C();
                v52 = v121;
              }

              *(v52 + 16) = v51 + 1;
              v121 = v52;
              v53 = v52 + 16 * v51;
              *(v53 + 32) = v49;
              *(v53 + 40) = v48;
              v14 = v135;
              v46 = v117;
              goto LABEL_43;
            }

            ++v45;
            v47 += 2;
          }

          v54 = *(v121 + 16);
          if (v54)
          {
            v133 = MEMORY[0x1E69E7CC0];
            sub_1C6F7ED9C();
            v55 = v133;
            sub_1C6FB5E8C();
            v56 = (v121 + 40);
            do
            {
              v57 = *v56;
              __src[0] = *(v56 - 1);
              __src[1] = v57;
              v58 = sub_1C755155C();
              v60 = v59;
              v61 = *(v55 + 16);
              v62 = v55;
              if (v61 >= *(v55 + 24) >> 1)
              {
                sub_1C6F7ED9C();
                v62 = v55;
              }

              *(v62 + 16) = v61 + 1;
              v63 = v62 + 16 * v61;
              *(v63 + 32) = v58;
              *(v63 + 40) = v60;
              v56 += 2;
              --v54;
              v55 = v62;
            }

            while (v54);
            v118 = v62;

            v14 = v135;
          }

          else
          {

            v118 = MEMORY[0x1E69E7CC0];
          }

          a1 = 0;
          v64 = v14 + 5;
          v122 = MEMORY[0x1E69E7CC0];
          v114 = v14 + 5;
LABEL_61:
          v65 = &v64[2 * a1++];
          while (a1 - v130 != 1)
          {
            if (a1 - 1 >= v14[2])
            {
              goto LABEL_111;
            }

            v67 = *(v65 - 1);
            v66 = *v65;
            __src[0] = v67;
            __src[1] = v66;
            sub_1C6FB5E8C();
            sub_1C75504FC();
            if (sub_1C75515AC())
            {
              v68 = v122;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1C6F7ED9C();
                v68 = v122;
              }

              v64 = v114;
              v69 = v68[2];
              v70 = v69 + 1;
              if (v69 >= v68[3] >> 1)
              {
                sub_1C6F7ED9C();
                v70 = v69 + 1;
                v68 = v122;
              }

              v68[2] = v70;
              v122 = v68;
              v71 = &v68[2 * v69];
              v71[4] = v67;
              v71[5] = v66;
              v14 = v135;
              goto LABEL_61;
            }

            ++a1;
            v65 += 2;
          }

          if (v122[2])
          {
            v72 = v122[4];
            v73 = v122[5];
            sub_1C75504FC();

            __src[0] = v72;
            __src[1] = v73;
            sub_1C6FB5E8C();
            v74 = sub_1C755155C();
            v76 = v75;
          }

          else
          {

            v74 = 0;
            v76 = 0xE000000000000000;
          }

          v115 = sub_1C735B104(v74, v76);
          v113 = v77;
          a1 = 0;
          v78 = v14 + 5;
          v123 = MEMORY[0x1E69E7CC0];
          v112 = v14 + 5;
LABEL_75:
          v79 = &v78[2 * a1++];
          while (a1 - v130 != 1)
          {
            if (a1 - 1 >= v14[2])
            {
              goto LABEL_112;
            }

            v81 = *(v79 - 1);
            v80 = *v79;
            __src[0] = v81;
            __src[1] = v80;
            sub_1C6FB5E8C();
            sub_1C75504FC();
            if (sub_1C75515AC())
            {
              v82 = v123;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1C6F7ED9C();
                v82 = v123;
              }

              v78 = v112;
              v83 = v82[2];
              v84 = v83 + 1;
              if (v83 >= v82[3] >> 1)
              {
                sub_1C6F7ED9C();
                v84 = v83 + 1;
                v82 = v123;
              }

              v82[2] = v84;
              v123 = v82;
              v85 = &v82[2 * v83];
              v85[4] = v81;
              v85[5] = v80;
              v14 = v135;
              goto LABEL_75;
            }

            ++a1;
            v79 += 2;
          }

          if (v123[2])
          {
            v86 = v123[4];
            v87 = v123[5];
            sub_1C75504FC();

            __src[0] = v86;
            __src[1] = v87;
            sub_1C6FB5E8C();
            v88 = sub_1C755155C();
            v90 = v89;
          }

          else
          {

            v88 = 0;
            v90 = 0xE000000000000000;
          }

          v3 = v136;
          v23 = sub_1C735B104(v88, v90);
          v124 = v91;
          v92 = 0;
          v93 = v14 + 5;
          a1 = 0xE700000000000000;
          v125 = MEMORY[0x1E69E7CC0];
LABEL_89:
          v94 = &v93[2 * v92];
          while (v130 != v92)
          {
            if (v92 >= v14[2])
            {
              goto LABEL_113;
            }

            v96 = *(v94 - 1);
            v95 = *v94;
            __src[0] = v96;
            __src[1] = v95;
            sub_1C6FB5E8C();
            sub_1C75504FC();
            if (sub_1C75515AC())
            {
              v97 = v125;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1C6F7ED9C();
                v97 = v125;
              }

              v98 = *(v97 + 16);
              v99 = v97;
              if (v98 >= *(v97 + 24) >> 1)
              {
                sub_1C6F7ED9C();
                v99 = v125;
              }

              ++v92;
              *(v99 + 16) = v98 + 1;
              v125 = v99;
              v100 = v99 + 16 * v98;
              *(v100 + 32) = v96;
              *(v100 + 40) = v95;
              v3 = v136;
              v93 = v14 + 5;
              goto LABEL_89;
            }

            v94 += 2;
            ++v92;
          }

          v101 = *(v125 + 16);
          if (v101)
          {
            v131 = v23;
            v134 = MEMORY[0x1E69E7CC0];
            sub_1C6F7ED9C();
            v102 = v134;
            sub_1C6FB5E8C();
            v103 = (v125 + 40);
            do
            {
              v104 = *v103;
              __src[0] = *(v103 - 1);
              __src[1] = v104;
              v105 = sub_1C755155C();
              v107 = v106;
              v108 = *(v134 + 16);
              if (v108 >= *(v134 + 24) >> 1)
              {
                sub_1C6F7ED9C();
              }

              *(v134 + 16) = v108 + 1;
              v109 = v134 + 16 * v108;
              *(v109 + 32) = v105;
              *(v109 + 40) = v107;
              v103 += 2;
              --v101;
            }

            while (v101);

            v3 = v136;
            v23 = v131;
          }

          else
          {

            v102 = MEMORY[0x1E69E7CC0];
          }

          __src[0] = v102;
          sub_1C703328C();
          v25 = sub_1C75505FC();
          v26 = v110;

          a1 = v119;
          v27 = v118;
          v2 = v135;
          v32 = v128;
          v31 = v129;
          v34 = v126;
          v33 = v127;
          v24 = v115;
          v28 = v116;
          v30 = v113;
          v29 = v124;
          goto LABEL_107;
        }
      }

      else
      {
        sub_1C7030CDC(__src, &qword_1EC219770);
      }

      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 1;
      v30 = 1;
      v32 = v128;
      v31 = v129;
      v34 = v126;
      v33 = v127;
LABEL_107:
      LOBYTE(__src[0]) = 3;
      __src[1] = v2;
      __src[2] = v3;
      __src[3] = v32;
      __src[4] = v31;
      __src[5] = v34;
      __src[6] = v33;
      __src[7] = v24;
      LOBYTE(__src[8]) = v30 & 1;
      __src[9] = v23;
      LOBYTE(__src[10]) = v29 & 1;
      __src[11] = v27;
      __src[12] = v28;
      __src[13] = v138;
      __src[14] = 0;
      LOWORD(__src[15]) = 513;
      memset(&__src[16], 0, 24);
      LOBYTE(__src[19]) = 1;
      __src[20] = 0;
      LOBYTE(__src[21]) = 1;
      __src[22] = v25;
      __src[23] = v26;
      CGRectMake(v12);
      return memcpy(a1, __src, 0xC0uLL);
    }
  }

  else
  {
    sub_1C7030CDC(__src, &qword_1EC219770);
  }

  if (qword_1EC2141E0 != -1)
  {
LABEL_114:
    swift_once();
  }

  v4 = sub_1C754FF1C();
  __swift_project_value_buffer(v4, qword_1EC21C7B0);
  sub_1C75504FC();
  v5 = sub_1C754FEEC();
  v6 = sub_1C755119C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    __src[0] = v8;
    *v7 = 136315138;
    v9 = sub_1C75504BC();
    v11 = sub_1C6F765A4(v9, v10, __src);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1C6F5C000, v5, v6, "Unable to get the uid for song: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1CCA5F8E0](v8, -1, -1);
    MEMORY[0x1CCA5F8E0](v7, -1, -1);
  }

  sub_1C7423CA4(__src);
  return memcpy(a1, __src, 0xC0uLL);
}

id static MusicCurationJsonParser.trimmedMusicCurationJsonString(for:)(uint64_t a1, unint64_t a2)
{
  v42[26] = *MEMORY[0x1E69E9840];
  v6 = sub_1C75506DC();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v42[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static MusicCurationJsonParser.dictionary(from:)(a1, a2);
  if (!v3)
  {
    v11 = v9;
    if (*(v9 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C757E2F0;
      OUTLINED_FUNCTION_3_1();
      *(v13 + 32) = 0xD000000000000010;
      *(v13 + 40) = v14;
      OUTLINED_FUNCTION_3_1();
      v15[6] = 0xD000000000000010;
      v15[7] = v16;
      v15[8] = 0x6E6F697461727564;
      v15[9] = 0xE800000000000000;
      OUTLINED_FUNCTION_3_1();
      v17[10] = 0xD000000000000016;
      v17[11] = v18;
      v17[12] = 0x50746E65746E6F63;
      v17[13] = 0xEF72656469766F72;
      OUTLINED_FUNCTION_3_1();
      *(v19 + 112) = 0xD000000000000011;
      *(v19 + 120) = v20;
      strcpy((v19 + 128), "flexMLAnalysis");
      *(v19 + 143) = -18;
      *(v19 + 144) = 0xD000000000000010;
      *(v19 + 152) = 0x80000001C75B2BE0;
      *(v19 + 160) = 0x6C6173756F7261;
      *(v19 + 168) = 0xE700000000000000;
      *(v19 + 176) = 0x65636E656C6176;
      *(v19 + 184) = 0xE700000000000000;
      sub_1C74D31F8(v11, inited);

      swift_setDeallocating();
      sub_1C6FDC9DC();
      v21 = objc_opt_self();
      v22 = sub_1C755048C();
      v42[0] = 0;
      v23 = [v21 dataWithJSONObject:v22 options:9 error:v42];

      v24 = v42[0];
      if (v23)
      {
        v25 = sub_1C754DDEC();
        v27 = v26;

        sub_1C75506CC();
        v2 = sub_1C75506AC();
        v29 = v28;
        sub_1C6FC1640(v25, v27);

        if (!v29)
        {
          return 0;
        }
      }

      else
      {
        v34 = v24;
        v35 = sub_1C754DBEC();

        swift_willThrow();

        if (qword_1EC2141E0 != -1)
        {
          OUTLINED_FUNCTION_0_205();
        }

        v36 = sub_1C754FF1C();
        OUTLINED_FUNCTION_23_2(v36, qword_1EC21C7B0);
        v37 = sub_1C754FEEC();
        v38 = sub_1C755119C();
        if (os_log_type_enabled(v37, v38))
        {
          *OUTLINED_FUNCTION_127() = 0;
          OUTLINED_FUNCTION_24_7(&dword_1C6F5C000, v39, v40, "Error: Unable to parse trimmed JSON");
          OUTLINED_FUNCTION_109();
        }

        return 0;
      }
    }

    else
    {

      if (qword_1EC2141E0 != -1)
      {
        OUTLINED_FUNCTION_0_205();
      }

      v30 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v30, qword_1EC21C7B0);
      v31 = sub_1C754FEEC();
      v32 = sub_1C755119C();
      if (OUTLINED_FUNCTION_23_0(v32))
      {
        v33 = OUTLINED_FUNCTION_127();
        *v33 = 0;
        _os_log_impl(&dword_1C6F5C000, v31, v8, "Unable to get music curation dictionary.", v33, 2u);
        OUTLINED_FUNCTION_109();
      }

      v42[0] = 0;
      v42[1] = 0xE000000000000000;
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD000000000000027, 0x80000001C75B2AC0);
      MEMORY[0x1CCA5CD70](a1, a2);
      MEMORY[0x1CCA5CD70](0xD000000000000060, 0x80000001C75B2AF0);
      return v42[0];
    }
  }

  return v2;
}

uint64_t sub_1C74D31F8(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v39 = sub_1C754DC0C();
  MEMORY[0x1EEE9AC00](v39);
  v40 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  v38 = (v3 + 8);
  result = swift_bridgeObjectRetain_n();
  v11 = 0;
  v12 = 0;
  v13 = a1;
LABEL_4:
  v42 = v13;
  if (v8)
  {
    goto LABEL_9;
  }

LABEL_5:
  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v14 >= v9)
    {

      return v13;
    }

    v8 = *(v5 + 8 * v14);
    ++v11;
    if (v8)
    {
      v11 = v14;
LABEL_9:
      while (1)
      {
        v15 = (*(a1 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v8)))));
        v17 = *v15;
        v16 = v15[1];
        v8 &= v8 - 1;
        *&v47 = *v15;
        *(&v47 + 1) = v16;
        MEMORY[0x1EEE9AC00](result);
        *(&v34 - 2) = &v47;
        sub_1C75504FC();
        if (sub_1C70735F4())
        {
          break;
        }

        v13 = v42;
        if (*(v42 + 16))
        {
          v18 = sub_1C6F78124(v17, v16);
          if (v19)
          {
            sub_1C6F774EC(*(v13 + 56) + 32 * v18, &v47);
            v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0);
            if (swift_dynamicCast())
            {
              v36 = v12;
              v35 = sub_1C74D31F8(*&v46[0], v41);
              v12 = v36;

              *(&v48 + 1) = v20;
              *&v47 = v35;
              sub_1C6F9ED18(&v47, v46);
              swift_isUniquelyReferenced_nonNull_native();
              *&v44 = v13;
              sub_1C6FC7D4C();

              v13 = v44;
              goto LABEL_4;
            }
          }
        }

        if (*(v13 + 16))
        {
          v21 = sub_1C6F78124(v17, v16);
          if (v22)
          {
            sub_1C6F774EC(*(v13 + 56) + 32 * v21, &v47);
            sub_1C74D3908();
            if (swift_dynamicCast())
            {
              v36 = v12;
              v35 = *&v46[0];
              sub_1C755137C();
              v26 = MEMORY[0x1E69E7CC0];
              v37 = a1;
              while (1)
              {
                sub_1C754DBFC();
                if (!*(&v48 + 1))
                {
                  (*v38)(v40, v39);
                  *(&v48 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219750);
                  *&v47 = v26;
                  sub_1C6F9ED18(&v47, v46);
                  swift_isUniquelyReferenced_nonNull_native();
                  *&v44 = v13;
                  sub_1C6FC7D4C();

                  v13 = v44;
                  v12 = v36;
                  goto LABEL_4;
                }

                sub_1C6F9ED18(&v47, v46);
                sub_1C6F774EC(v46, &v44);
                v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0);
                if (swift_dynamicCast())
                {
                  v28 = sub_1C74D31F8(v43, v41);

                  v45 = v27;
                  *&v44 = v28;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_1C6FB5084();
                    v26 = v32;
                  }

                  v29 = *(v26 + 16);
                  v30 = v29 + 1;
                  a1 = v37;
                  if (v29 >= *(v26 + 24) >> 1)
                  {
                    goto LABEL_33;
                  }
                }

                else
                {
                  sub_1C6F774EC(v46, &v44);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_1C6FB5084();
                    v26 = v33;
                  }

                  v29 = *(v26 + 16);
                  v30 = v29 + 1;
                  if (v29 >= *(v26 + 24) >> 1)
                  {
LABEL_33:
                    sub_1C6FB5084();
                    v26 = v31;
                  }
                }

                __swift_destroy_boxed_opaque_existential_1(v46);
                *(v26 + 16) = v30;
                sub_1C6F9ED18(&v44, (v26 + 32 * v29 + 32));
                v13 = v42;
              }
            }
          }
        }

        if (!v8)
        {
          goto LABEL_5;
        }
      }

      v13 = v42;
      v23 = sub_1C6F78124(v17, v16);
      if (v24)
      {
        v25 = v23;
        swift_isUniquelyReferenced_nonNull_native();
        v36 = v12;
        *&v46[0] = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACB0);
        v12 = v36;
        sub_1C7551A2C();
        v13 = *&v46[0];

        sub_1C6F9ED18((*(v13 + 56) + 32 * v25), &v47);
        sub_1C7551A4C();
      }

      else
      {
        v47 = 0u;
        v48 = 0u;
      }

      result = sub_1C7030CDC(&v47, &qword_1EC219770);
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C74D37F8()
{
  result = qword_1EC21C7D0;
  if (!qword_1EC21C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C7D0);
  }

  return result;
}

_BYTE *sub_1C74D385C(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C74D3908()
{
  result = qword_1EDD06888;
  if (!qword_1EDD06888)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD06888);
  }

  return result;
}

unint64_t sub_1C74D394C()
{
  result = qword_1EDD0CBE0;
  if (!qword_1EDD0CBE0)
  {
    sub_1C754DC0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0CBE0);
  }

  return result;
}

uint64_t QueryGenerator.init(with:storyPhotoLibraryContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (qword_1EDD0F3C0 != -1)
  {
    swift_once();
  }

  v8 = sub_1C754FF1C();
  __swift_project_value_buffer(v8, qword_1EDD28DB0);
  OUTLINED_FUNCTION_62_2();
  v29 = *(v9 + 16);
  v29(a3);
  v10 = *a1;
  Generator = type metadata accessor for QueryGenerator();
  *(a3 + Generator[5]) = v10;
  v12 = a3 + Generator[6];
  *v12 = v5;
  v28 = v6;
  *(v12 + 8) = v6;
  *(v12 + 16) = v7;
  sub_1C7055874(a1 + 120, a3 + Generator[12]);
  *(a3 + Generator[7]) = *(a1 + 72);
  v13 = Generator[8];
  sub_1C7055874(a1 + 80, a3 + v13);
  v14 = a3 + Generator[9];
  v15 = (v14 + *(type metadata accessor for QueryAnnotatorV2() + 20));
  v15[3] = &type metadata for PersonGroundingProcessor;
  v15[4] = &protocol witness table for PersonGroundingProcessor;
  *v15 = v5;
  v16 = qword_1EDD0B040;
  v17 = v5;

  if (v16 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v8, qword_1EDD28C58);
  (v29)(v14, v18, v8);
  v19 = a3 + Generator[10];
  sub_1C7055874(a1 + 32, v19 + 24);
  sub_1C7055874(a3 + v13, v19 + 64);
  v20 = *(type metadata accessor for QueryAssetsRetrievalProcessor() + 28);
  v21 = qword_1EDD0D7A8;
  v22 = v17;

  if (v21 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v8, qword_1EDD28D00);
  (v29)(v19 + v20, v23, v8);
  *v19 = v22;
  *(v19 + 8) = v28;
  *(v19 + 16) = v7;
  v24 = Generator[11];
  if (qword_1EDD0D1F0 != -1)
  {
    swift_once();
  }

  v25 = qword_1EDD28CF8;
  sub_1C754FF2C();

  v26 = a3 + v24 + *(type metadata accessor for QueryDisambiguationSuggestionProducer() + 20);
  *v26 = v22;
  *(v26 + 8) = v28;
  *(v26 + 16) = v7;
  *(a3 + Generator[13]) = *(a1 + 160);
  sub_1C7055874(a1 + 168, a3 + Generator[14]);

  return sub_1C71F3078(a1);
}

uint64_t QueryGenerator.performQueryUnderstanding(for:previousUserPrompt:previousQueryTokens:userSuggestionByRange:customQueryTokenProvider:storyGenerationDiagnosticsContext:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_42();
  v1[121] = v0;
  v1[120] = v19;
  v1[119] = v2;
  v1[118] = v3;
  v1[117] = v4;
  v1[116] = v5;
  v1[115] = v6;
  v1[114] = v7;
  v1[113] = v8;
  v1[112] = v9;
  v10 = sub_1C754F2FC();
  v1[122] = v10;
  OUTLINED_FUNCTION_18(v10);
  v1[123] = v11;
  v1[124] = swift_task_alloc();
  v1[125] = swift_task_alloc();
  v1[126] = swift_task_alloc();
  v1[127] = swift_task_alloc();
  v1[128] = swift_task_alloc();
  v1[129] = swift_task_alloc();
  v1[130] = swift_task_alloc();
  v1[131] = swift_task_alloc();
  v1[132] = swift_task_alloc();
  v12 = sub_1C754F38C();
  v1[133] = v12;
  OUTLINED_FUNCTION_18(v12);
  v1[134] = v13;
  v1[135] = swift_task_alloc();
  v1[136] = swift_task_alloc();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C74D3E64()
{
  v1 = sub_1C754FEEC();
  v2 = sub_1C75511BC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_127();
    *v3 = 0;
    _os_log_impl(&dword_1C6F5C000, v1, v2, "Perform query understanding", v3, 2u);
    OUTLINED_FUNCTION_109();
  }

  v4 = *(v0 + 952);

  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  OUTLINED_FUNCTION_34_49();
  sub_1C754F2CC();
  v5 = v0 + 696;
  v6 = *(v0 + 912);
  v7 = *(v0 + 904);
  OUTLINED_FUNCTION_70(*(v0 + 952), v4[3]);
  v75 = v0 + 696;
  sub_1C754F15C();
  v8 = [v7 string];
  v9 = sub_1C755068C();
  v11 = v10;

  *(v0 + 1096) = v9;
  *(v0 + 1104) = v11;
  *(v0 + 760) = sub_1C754E5EC();
  *(v0 + 768) = sub_1C70B881C();
  __swift_allocate_boxed_opaque_existential_0((v0 + 736));
  OUTLINED_FUNCTION_62_2();
  (*(v12 + 104))();
  *(v0 + 385) = sub_1C754E3AC() & 1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 736);
  if (v6)
  {
    v5 = v0;
    v13 = *(v0 + 904);
    v14 = *(v0 + 912);
    v15 = [v13 string];
    v16 = sub_1C755068C();
    v18 = v17;

    v19 = [v14 string];
    v20 = sub_1C755068C();
    v22 = v21;

    if (v16 == v20 && v18 == v22)
    {

      v25 = 0;
    }

    else
    {
      v24 = sub_1C7551DBC();

      v25 = v24 ^ 1;
    }
  }

  else
  {
    v25 = 1;
  }

  *(v0 + 386) = v25 & 1;
  sub_1C74D64B8(*(v0 + 936), v0 + 816);
  if (*(v0 + 840))
  {
    sub_1C6F699F8((v0 + 816), v0 + 776);
    v26 = sub_1C754FEEC();
    v27 = sub_1C75511BC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_127();
      *v28 = 0;
      _os_log_impl(&dword_1C6F5C000, v26, v27, "CustomQueryTokenProvider included, skip default QU and use CustomQueryTokenProvider to get groundedQueryTokens", v28, 2u);
      OUTLINED_FUNCTION_109();
    }

    sub_1C754F2BC();
    OUTLINED_FUNCTION_70((v0 + 776), *(v0 + 800));
    v29 = OUTLINED_FUNCTION_54_38();
    v30(v29);
    OUTLINED_FUNCTION_15_3();
    v31 = swift_task_alloc();
    *(v0 + 1112) = v31;
    *v31 = v0;
    v31[1] = sub_1C74D4A50;
    OUTLINED_FUNCTION_36_43();

    __asm { BRAA            X6, X16 }
  }

  sub_1C6FF52C0(v0 + 816, &qword_1EC219018);
  v34 = MEMORY[0x1E69E7CC0];
  *(v0 + 1136) = MEMORY[0x1E69E7CC0];
  sub_1C754F2DC();
  if (*(v34 + 16))
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_1C75504FC();
    v36 = sub_1C754FEEC();
    v37 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_66(v37))
    {
      v38 = OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_68_1(v38, 3.852e-34);
      OUTLINED_FUNCTION_57_5();
      _os_log_impl(v39, v40, v41, v42, v38, 0xCu);
      OUTLINED_FUNCTION_10_1();
    }

    else
    {
    }

LABEL_26:
    *(v0 + 1168) = v35;
    sub_1C754F2DC();
    OUTLINED_FUNCTION_53_39();
    sub_1C754F2BC();
    if (v5)
    {
      OUTLINED_FUNCTION_74_19();
    }

    OUTLINED_FUNCTION_22_69();
    v52 = OUTLINED_FUNCTION_64_26();
    v53(v52);
    sub_1C75504FC();
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 1176) = v54;
    *v54 = v55;
    OUTLINED_FUNCTION_2_139(v54);
    v77 = v75;
    OUTLINED_FUNCTION_37_44();
    OUTLINED_FUNCTION_129();

    return QueryGenerator.generateQueryUnderstandingResult(with:currentQueryTokens:previousQueryTokens:isModifiedByUser:isLLMQU:promptBindings:llmQULatency:eventRecorder:progressReporter:storyGenerationDiagnosticsContext:)();
  }

  v43 = sub_1C754FEEC();
  v44 = sub_1C75511BC();
  if (os_log_type_enabled(v43, v44))
  {
    *OUTLINED_FUNCTION_127() = 0;
    OUTLINED_FUNCTION_75_23(&dword_1C6F5C000, v45, v46, "currentQueryTokens is empty. Use default LLM QU Provider");
    OUTLINED_FUNCTION_10_1();
  }

  v47 = v0;
  v48 = *(v0 + 984);
  v49 = *(v47 + 952);

  sub_1C754F2BC();
  v50 = *(v48 + 32);
  v51 = OUTLINED_FUNCTION_23_28();
  v50(v51);
  __swift_project_boxed_opaque_existential_1(v49, v49[3]);
  OUTLINED_FUNCTION_34_49();
  sub_1C754F2CC();
  if ((*(v47 + 386) & 1) == 0)
  {
    v67 = *(v47 + 968);
    v5 = *(v47 + 928);
    v68 = swift_task_alloc();
    *(v68 + 16) = v5;
    *(v68 + 24) = v67;
    sub_1C75504FC();
    v35 = OUTLINED_FUNCTION_20_64();

    *(v47 + 384) = 0;
    *(v47 + 352) = 0u;
    *(v47 + 368) = 0u;
    *(v47 + 320) = 0u;
    *(v47 + 336) = 0u;
    *(v47 + 304) = 0u;
    if (!*(v47 + 944))
    {
      sub_1C6FF52C0(v47 + 304, &qword_1EC21C7D8);
    }

    sub_1C754F2EC();
    OUTLINED_FUNCTION_70(*(v47 + 952), *(*(v47 + 952) + 24));
    sub_1C754F1AC();
    v69 = OUTLINED_FUNCTION_55();
    v70(v69);
    sub_1C75504FC();

    v71 = OUTLINED_FUNCTION_1_149();
    sub_1C717FBD4(v71, v72);

    v73 = OUTLINED_FUNCTION_1_149();
    sub_1C7318A10(v73, v74);
    v0 = v47;
    goto LABEL_26;
  }

  if (*(v47 + 944))
  {
    v76 = 3;
    StoryGenerationDiagnosticContext.generationStage.setter(&v76);
  }

  v58 = *(v47 + 1024);
  v59 = *(v47 + 1016);
  v60 = *(v47 + 976);
  v61 = *(v47 + 904);
  sub_1C754F2BC();
  v62 = [v61 string];
  sub_1C755068C();
  v64 = v63;

  *(v47 + 1144) = v64;
  (v50)(v59, v58, v60);
  v65 = swift_task_alloc();
  *(v47 + 1152) = v65;
  *v65 = v47;
  OUTLINED_FUNCTION_18_71(v65);
  OUTLINED_FUNCTION_36_43();

  return QueryGenerator.llmQUAnnotatedQueryString(of:eventRecorder:progressReporter:storyGenerationDiagnosticsContext:)();
}

uint64_t sub_1C74D4A50()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1120) = v5;
  *(v3 + 1128) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C74D4B5C()
{
  v4 = v0 + 696;
  v5 = sub_1C754FEEC();
  v6 = sub_1C75511BC();
  v7 = &unk_1C755C000;
  if (OUTLINED_FUNCTION_66(v6))
  {
    v8 = *(v0 + 1120);
    v9 = OUTLINED_FUNCTION_41_0();
    *v9 = 134217984;
    *(v9 + 4) = *(v8 + 16);
    OUTLINED_FUNCTION_57_5();
    _os_log_impl(v10, v11, v12, v13, v9, 0xCu);
    OUTLINED_FUNCTION_109();
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 776);
  v14 = *(v0 + 1128);
  v15 = *(v0 + 1120);
  *(v0 + 1136) = v15;
  sub_1C754F2DC();
  if (v14)
  {
    OUTLINED_FUNCTION_30_54();

    OUTLINED_FUNCTION_10_3(v3);
    sub_1C754F1AC();
    v16 = OUTLINED_FUNCTION_55();
    v17(v16);
    (*(v1 + 8))(v2);
    OUTLINED_FUNCTION_57_34();
    OUTLINED_FUNCTION_0_206();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_36_43();

    __asm { BRAA            X1, X16 }
  }

  if (*(v15 + 16))
  {
    sub_1C75504FC();
    v20 = sub_1C754FEEC();
    v21 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_66(v21))
    {
      v22 = OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_68_1(v22, 3.852e-34);
      OUTLINED_FUNCTION_57_5();
      _os_log_impl(v23, v24, v25, v26, v22, 0xCu);
      OUTLINED_FUNCTION_10_1();
    }

    else
    {
    }

LABEL_15:
    *(v0 + 1168) = v15;
    sub_1C754F2DC();
    OUTLINED_FUNCTION_53_39();
    sub_1C754F2BC();
    if (v7)
    {
      OUTLINED_FUNCTION_74_19();
    }

    OUTLINED_FUNCTION_22_69();
    v35 = OUTLINED_FUNCTION_64_26();
    v36(v35);
    sub_1C75504FC();
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 1176) = v37;
    *v37 = v38;
    OUTLINED_FUNCTION_2_139(v37);
    v62 = v4;
    OUTLINED_FUNCTION_37_44();
    OUTLINED_FUNCTION_129();

    return QueryGenerator.generateQueryUnderstandingResult(with:currentQueryTokens:previousQueryTokens:isModifiedByUser:isLLMQU:promptBindings:llmQULatency:eventRecorder:progressReporter:storyGenerationDiagnosticsContext:)();
  }

  v27 = sub_1C754FEEC();
  v28 = sub_1C75511BC();
  if (os_log_type_enabled(v27, v28))
  {
    *OUTLINED_FUNCTION_127() = 0;
    OUTLINED_FUNCTION_75_23(&dword_1C6F5C000, v29, v30, "currentQueryTokens is empty. Use default LLM QU Provider");
    OUTLINED_FUNCTION_10_1();
  }

  v31 = *(v0 + 984);
  v32 = *(v0 + 952);

  sub_1C754F2BC();
  v33 = *(v31 + 32);
  v34 = OUTLINED_FUNCTION_54_38();
  v33(v34);
  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  OUTLINED_FUNCTION_34_49();
  sub_1C754F2CC();
  if ((*(v0 + 386) & 1) == 0)
  {
    v51 = *(v0 + 968);
    v52 = *(v0 + 928);
    v53 = swift_task_alloc();
    *(v53 + 16) = v52;
    *(v53 + 24) = v51;
    sub_1C75504FC();
    v15 = OUTLINED_FUNCTION_20_64();

    *(v0 + 384) = 0;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 304) = 0u;
    if (!*(v0 + 944))
    {
      sub_1C6FF52C0(v0 + 304, &qword_1EC21C7D8);
    }

    sub_1C754F2EC();
    v54 = *(v0 + 1072);
    OUTLINED_FUNCTION_70(*(v0 + 952), *(*(v0 + 952) + 24));
    sub_1C754F1AC();
    v7 = (v54 + 8);
    v55 = OUTLINED_FUNCTION_55();
    v56(v55);
    sub_1C75504FC();

    v57 = OUTLINED_FUNCTION_1_149();
    sub_1C717FBD4(v57, v58);

    v59 = OUTLINED_FUNCTION_1_149();
    sub_1C7318A10(v59, v60);
    v4 = v0 + 696;
    goto LABEL_15;
  }

  if (*(v0 + 944))
  {
    v61 = 3;
    StoryGenerationDiagnosticContext.generationStage.setter(&v61);
  }

  v41 = *(v0 + 1024);
  v42 = *(v0 + 1016);
  v43 = *(v0 + 976);
  v44 = *(v0 + 904);
  sub_1C754F2BC();
  v45 = [v44 string];
  sub_1C755068C();
  v47 = v46;

  *(v0 + 1144) = v47;
  (v33)(v42, v41, v43);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 1152) = v48;
  *v48 = v49;
  OUTLINED_FUNCTION_18_71(v48);
  OUTLINED_FUNCTION_36_43();

  return QueryGenerator.llmQUAnnotatedQueryString(of:eventRecorder:progressReporter:storyGenerationDiagnosticsContext:)();
}

uint64_t sub_1C74D5264()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 1160) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C74D5378()
{
  v52 = v0;
  v1 = *(v0 + 1160);
  memcpy((v0 + 480), (v0 + 392), 0x51uLL);
  sub_1C754F2DC();
  if (v1)
  {
    v46 = *(v0 + 1032);
    v2 = *(v0 + 984);
    v3 = *(v0 + 976);
    v4 = *(v0 + 952);

    sub_1C70476BC(v0 + 480);
    OUTLINED_FUNCTION_70(v4, v4[3]);
    OUTLINED_FUNCTION_62_31();
    v5 = OUTLINED_FUNCTION_457();
    v48 = v6;
    v6(v5);
    (*(v2 + 8))(v46, v3);
    v27 = *(v0 + 984);
    v47 = *(v0 + 976);
    v28 = *(v0 + 960);
    v29 = *(v0 + 952);
    OUTLINED_FUNCTION_48_32(v0 + 696);

    OUTLINED_FUNCTION_70(v29, v29[3]);
    OUTLINED_FUNCTION_30_15();
    v30 = OUTLINED_FUNCTION_457();
    v48(v30);
    (*(v27 + 8))(v28, v47);
    OUTLINED_FUNCTION_57_34();
    OUTLINED_FUNCTION_0_206();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_73_25();

    return v31();
  }

  else
  {
    v7 = *(v0 + 952);
    v8 = *(v0 + 928);
    sub_1C754F2BC();
    memcpy(__dst, (v0 + 480), 0x51uLL);
    v9 = QueryGenerator.groundedQueryTokens(forAnnotation:userSuggestionByRange:eventRecorder:)(__dst, v8, v7);
    v10 = OUTLINED_FUNCTION_57_0();
    v11(v10);
    v12 = *(v0 + 512);
    v13 = *(v0 + 520);
    v14 = *(v0 + 528);
    v15 = *(v0 + 536);
    v16 = *(v0 + 544);
    v50 = *(v0 + 552);
    v45 = *(v0 + 560);
    memcpy(__dst, (v0 + 480), 0x51uLL);
    v49 = v12;
    OUTLINED_FUNCTION_26_53();
    sub_1C717FBD4(v17, v18);
    memcpy((v0 + 304), __dst, 0x51uLL);
    v19 = *(v0 + 944);
    if (v19)
    {
      v20 = *(v0 + 312);
      if (v20)
      {
        v21 = *(v0 + 904);
        v22 = *(v0 + 304);
        memcpy((v0 + 224), (v0 + 320), 0x41uLL);
        *(v0 + 160) = v21;
        *(v0 + 168) = v49;
        *(v0 + 176) = v13;
        *(v0 + 184) = v14;
        *(v0 + 192) = v15;
        *(v0 + 200) = v16;
        *(v0 + 208) = v22;
        *(v0 + 216) = v20;
        *(v0 + 296) = v9;
        sub_1C74DA454(v0 + 160);
        memcpy(__dst, (v0 + 160), 0x90uLL);

        v23 = v21;
        OUTLINED_FUNCTION_26_53();
        sub_1C717FBD4(v24, v25);
        sub_1C75504FC();
        sub_1C739F768(__dst, v19);

        memcpy((v0 + 16), __dst, 0x90uLL);
        sub_1C73A1F3C(v0 + 16);
      }
    }

    else
    {
      sub_1C6FF52C0(v0 + 304, &qword_1EC21C7D8);
    }

    sub_1C754F2EC();
    v26 = *(v0 + 1080);
    OUTLINED_FUNCTION_70(*(v0 + 952), *(*(v0 + 952) + 24));
    OUTLINED_FUNCTION_23_28();
    sub_1C754F1AC();
    v34 = OUTLINED_FUNCTION_457();
    v35(v34);
    sub_1C75504FC();

    OUTLINED_FUNCTION_26_53();
    sub_1C717FBD4(v36, v37);

    OUTLINED_FUNCTION_26_53();
    sub_1C7318A10(v38, v39);
    *(v0 + 1168) = v9;
    sub_1C754F2DC();
    OUTLINED_FUNCTION_53_39();
    sub_1C754F2BC();
    if (v26)
    {
      __dst[0] = 4;
      StoryGenerationDiagnosticContext.generationStage.setter(__dst);
    }

    v40 = OUTLINED_FUNCTION_22_69();
    *(v0 + 856) = v49;
    *(v0 + 864) = v13;
    *(v0 + 872) = v14;
    *(v0 + 880) = v15;
    *(v0 + 888) = v16;
    (*(v41 + 32))(v40);
    sub_1C75504FC();
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 1176) = v42;
    *v42 = v43;
    OUTLINED_FUNCTION_2_139(v42);
    v55 = v0 + 696;
    v54 = v45;
    v53 = v50;
    OUTLINED_FUNCTION_73_25();

    return QueryGenerator.generateQueryUnderstandingResult(with:currentQueryTokens:previousQueryTokens:isModifiedByUser:isLLMQU:promptBindings:llmQULatency:eventRecorder:progressReporter:storyGenerationDiagnosticsContext:)();
  }
}

uint64_t sub_1C74D59B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v15 = *(v14 + 1072);
  v16 = *(v14 + 1032);
  v17 = *(v14 + 984);
  v18 = *(v14 + 976);
  OUTLINED_FUNCTION_70(*(v14 + 952), *(*(v14 + 952) + 24));
  sub_1C754F1AC();
  v19 = *(v15 + 8);
  v20 = OUTLINED_FUNCTION_57_0();
  v19(v20);
  (*(v17 + 8))(v16, v18);
  v21 = *(v14 + 984);
  v34 = *(v14 + 976);
  v36 = *(v14 + 1160);
  v33 = *(v14 + 960);
  v22 = *(v14 + 952);
  OUTLINED_FUNCTION_48_32(v14 + 696);

  OUTLINED_FUNCTION_70(v22, v22[3]);
  OUTLINED_FUNCTION_30_15();
  v23 = OUTLINED_FUNCTION_0_11();
  v19(v23);
  (*(v21 + 8))(v33, v34);
  OUTLINED_FUNCTION_57_34();
  OUTLINED_FUNCTION_0_206();
  v35 = *(v14 + 992);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, v33, v35, v36, a12, a13, a14);
}

uint64_t sub_1C74D5B54()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 1184) = v0;

  OUTLINED_FUNCTION_49_39();

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C74D5C7C()
{
  v1 = *(v0 + 1184);
  v2 = *(v0 + 584);
  *(v0 + 632) = *(v0 + 568);
  *(v0 + 648) = v2;
  *(v0 + 664) = *(v0 + 600);
  *(v0 + 673) = *(v0 + 609);
  sub_1C754F2EC();
  v3 = *(v0 + 1088);
  if (v1)
  {
    v4 = *(v0 + 952);
    __swift_destroy_boxed_opaque_existential_1(v0 + 696);
    sub_1C7169EEC(v0 + 632);

    OUTLINED_FUNCTION_70(v4, v4[3]);
    OUTLINED_FUNCTION_457();
    sub_1C754F1AC();
    v5 = OUTLINED_FUNCTION_23_28();
    v6(v5);
    OUTLINED_FUNCTION_57_34();
    OUTLINED_FUNCTION_0_206();
  }

  else
  {
    v7 = *(v0 + 1072);
    v8 = *(v0 + 1064);
    v9 = *(v0 + 952);
    v10 = *(v0 + 896);
    OUTLINED_FUNCTION_48_32(v0 + 696);

    v11 = *(v0 + 632);
    v12 = *(v0 + 648);
    v13 = *(v0 + 664);
    *(v10 + 41) = *(v0 + 673);
    v10[1] = v12;
    v10[2] = v13;
    *v10 = v11;
    OUTLINED_FUNCTION_70(v9, v9[3]);
    OUTLINED_FUNCTION_457();
    sub_1C754F1AC();
    (*(v7 + 8))(v3, v8);
  }

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_20_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C74D5EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v15 = *(v14 + 952);
  __swift_destroy_boxed_opaque_existential_1(v14 + 696);
  __swift_destroy_boxed_opaque_existential_1(v14 + 776);
  OUTLINED_FUNCTION_70(v15, v15[3]);
  sub_1C754F1AC();
  v16 = OUTLINED_FUNCTION_57_0();
  v17(v16);
  v18 = OUTLINED_FUNCTION_117_0();
  v19(v18);
  OUTLINED_FUNCTION_0_206();
  v30 = *(v14 + 992);
  v31 = v20;

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v31, a12, a13, a14);
}

uint64_t sub_1C74D6028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v15 = v14[123];
  v31 = v14[122];
  v16 = v14[120];
  v17 = v14[119];
  OUTLINED_FUNCTION_48_32((v14 + 87));

  OUTLINED_FUNCTION_70(v17, v17[3]);
  OUTLINED_FUNCTION_62_31();
  v18 = OUTLINED_FUNCTION_57_0();
  v19(v18);
  (*(v15 + 8))(v16, v31);
  OUTLINED_FUNCTION_0_206();
  v30 = v14[124];
  v32 = v20;

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v32, a12, a13, a14);
}

char *sub_1C74D6168(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422E04();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C74DA82C(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C74D6374()
{
  sub_1C7047818();
  result = sub_1C755146C();
  qword_1EDD28DC8 = result;
  return result;
}

uint64_t sub_1C74D63E0()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD28DB0);
  __swift_project_value_buffer(v0, qword_1EDD28DB0);
  if (qword_1EDD0F3C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDD28DC8;
  return sub_1C754FF2C();
}

uint64_t type metadata accessor for QueryGenerator()
{
  result = qword_1EDD0FFB8;
  if (!qword_1EDD0FFB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C74D64B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219018);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t QueryGenerator.generateQueryUnderstandingResult(with:currentQueryTokens:previousQueryTokens:isModifiedByUser:isLLMQU:promptBindings:llmQULatency:eventRecorder:progressReporter:storyGenerationDiagnosticsContext:)()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  *(v1 + 776) = v0;
  *(v1 + 768) = v25;
  *(v1 + 760) = v24;
  *(v1 + 752) = v23;
  *(v1 + 77) = v22;
  *(v1 + 744) = v21;
  *(v1 + 76) = v4;
  *(v1 + 75) = v5;
  *(v1 + 736) = v6;
  *(v1 + 728) = v7;
  *(v1 + 720) = v8;
  *(v1 + 712) = v9;
  *(v1 + 704) = v10;
  v11 = sub_1C754F2FC();
  *(v1 + 784) = v11;
  OUTLINED_FUNCTION_18(v11);
  *(v1 + 792) = v12;
  *(v1 + 800) = swift_task_alloc();
  *(v1 + 808) = swift_task_alloc();
  *(v1 + 816) = swift_task_alloc();
  *(v1 + 824) = swift_task_alloc();
  *(v1 + 832) = swift_task_alloc();
  *(v1 + 840) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  *(v1 + 848) = swift_task_alloc();
  v13 = sub_1C754F38C();
  *(v1 + 856) = v13;
  OUTLINED_FUNCTION_18(v13);
  *(v1 + 864) = v14;
  *(v1 + 872) = swift_task_alloc();
  v15 = *(v3 + 16);
  *(v1 + 880) = *v3;
  *(v1 + 896) = v15;
  *(v1 + 912) = *(v3 + 32);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1C74D66F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v15 = OUTLINED_FUNCTION_457();
  __swift_project_boxed_opaque_existential_1(v15, v16);
  sub_1C754F1CC();
  v17 = OUTLINED_FUNCTION_457();
  OUTLINED_FUNCTION_70(v17, v18);
  sub_1C754F15C();
  sub_1C754F2CC();
  v19 = *(v14 + 848);
  v20 = *(v14 + 776);
  v21._rawValue = *(v14 + 728);
  v22 = *(v14 + 720);
  v23 = *(v14 + 712);
  v24._countAndFlagsBits = OUTLINED_FUNCTION_117_0();
  *(v14 + 920) = QueryGenerator.annotateQueryString(_:with:)(v24, v21);
  OUTLINED_FUNCTION_70((v14 + 336), *(v14 + 360));
  sub_1C754F17C();
  v25 = sub_1C7550D5C();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v25);
  v26 = (v20 + *(type metadata accessor for QueryGenerator() + 48));
  sub_1C7055874(v26, v14 + 416);
  sub_1C7055874(v14 + 376, v14 + 456);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  sub_1C6F699F8((v14 + 416), (v27 + 4));
  v27[9] = v23;
  v27[10] = v22;
  v27[11] = v21._rawValue;
  sub_1C6F699F8((v14 + 456), (v27 + 12));
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C7293D70();
  *(v14 + 928) = v28;
  v29 = v26[4];
  OUTLINED_FUNCTION_10_3(v26);
  *(v14 + 73) = 1;
  OUTLINED_FUNCTION_15_3();
  v44 = v30 + *v30;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v14 + 936) = v31;
  *v31 = v32;
  v31[1] = sub_1C74D6AC0;
  OUTLINED_FUNCTION_17_1();

  return v41(v33, v34, v35, v36, v37, v38, v39, v40, v29 + 56, v44, a11, a12, a13, a14);
}

uint64_t sub_1C74D6AC0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 944) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C74D6BBC()
{
  v1 = *(v0 + 792);
  v2 = *(v0 + 632);
  *(v0 + 952) = v2;
  v3 = *(v0 + 640);
  *(v0 + 78) = v3;
  v4 = *(v0 + 641);
  *(v0 + 79) = v4;
  sub_1C754F2BC();
  *(v0 + 648) = v2;
  *(v0 + 656) = v3;
  *(v0 + 657) = v4;
  *(v0 + 960) = *(v1 + 32);
  *(v0 + 968) = (v1 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v5 = OUTLINED_FUNCTION_0_11();
  v6(v5);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 976) = v7;
  *v7 = v8;
  v7[1] = sub_1C74D6CF0;

  return sub_1C73607FC();
}

uint64_t sub_1C74D6CF0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 984) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C74D6DEC()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 992) = *(v0 + 536);
  *(v0 + 1008) = *(v0 + 552);
  v1 = swift_task_alloc();
  *(v0 + 1016) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  *(v0 + 1024) = v2;
  *v1 = v0;
  v1[1] = sub_1C74D6EC8;
  v3 = *(v0 + 928);
  v4 = MEMORY[0x1E69E7288];
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA20](v0 + 680, v3, v5, v2, v4);
}

uint64_t sub_1C74D6EC8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C74D6FB0()
{
  v84 = v0;
  if (*(v0 + 688) == 1)
  {
    v1 = *(v0 + 1008);
    v2 = *(v0 + 680);

    v3 = v2;
    v4 = sub_1C754FEEC();
    v5 = sub_1C755119C();
    sub_1C6F9EDA4(v2, 1);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = OUTLINED_FUNCTION_41_0();
      v1 = swift_slowAlloc();
      *v6 = 138412290;
      v7 = v2;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v8;
      *v1 = v8;
      OUTLINED_FUNCTION_57_5();
      _os_log_impl(v9, v10, v11, v12, v6, 0xCu);
      sub_1C6FF52C0(v1, &qword_1EC215190);
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_109();
    }

    v13 = *(v0 + 920);
    v14 = *(v0 + 872);
    v15 = *(v0 + 864);
    OUTLINED_FUNCTION_42_41();
    v16 = *(v0 + 752);

    swift_willThrow();
    sub_1C7550E1C();

    OUTLINED_FUNCTION_51_33();
    OUTLINED_FUNCTION_70(v16, v16[3]);
    sub_1C754F1AC();
    (*(v15 + 8))(v14);
    (*(v1 + 8))();
LABEL_7:
    OUTLINED_FUNCTION_6_117();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_20_4();

    __asm { BRAA            X1, X16 }
  }

  v17 = *(v0 + 984);
  sub_1C754F2DC();
  if (v17)
  {
    OUTLINED_FUNCTION_59_31();
    v18 = *(v0 + 920);
    v19 = *(v0 + 864);
    v78 = *(v0 + 872);
    v79 = *(v0 + 856);
    v20 = *(v0 + 792);
    v80 = *(v0 + 760);
    v81 = *(v0 + 784);
    v21 = *(v0 + 752);

    sub_1C7550E1C();

    OUTLINED_FUNCTION_51_33();
    OUTLINED_FUNCTION_70(v21, v21[3]);
    OUTLINED_FUNCTION_57_0();
    sub_1C754F1AC();
    (*(v19 + 8))(v78, v79);
    (*(v20 + 8))(v80, v81);
    goto LABEL_7;
  }

  v24 = *(v0 + 1008);
  sub_1C75504FC();
  v25 = sub_1C6FE3758(1, v24);
  *(v0 + 1032) = v25;
  sub_1C75504FC();
  v26 = sub_1C754FEEC();
  v27 = sub_1C755117C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_41_0();
    v29 = OUTLINED_FUNCTION_20_1();
    v83[0] = v29;
    *v28 = 136315138;
    if (v25)
    {
      *(v0 + 696) = *(v25 + 16);
      sub_1C7025C9C();
      v30 = sub_1C75515BC();
      v32 = v31;
    }

    else
    {
      v32 = 0xE300000000000000;
      v30 = 7104878;
    }

    v33 = sub_1C6F765A4(v30, v32, v83);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_1C6F5C000, v26, v27, "%s person consolidated asset uuids during QU", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_109();
  }

  v34 = *(v0 + 768);
  if (v34)
  {
    v35 = *(v0 + 76);
    v36 = *(v0 + 75);
    v37 = *(v34 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics);
    swift_beginAccess();
    v38 = *(v37 + 16);
    swift_beginAccess();
    v38[16] = v36;
    v38[34] = v35;
  }

  else
  {
    v38 = 0;
  }

  *(v0 + 1040) = v38;
  sub_1C75504FC();
  sub_1C74AA32C();
  v40 = v39;

  v41 = *(v40 + 16);

  if (v41)
  {
    v42 = 1;
  }

  else if (*(v0 + 736))
  {
    sub_1C74AA32C();
    v44 = *(v43 + 16) != 0;

    v42 = 2 * v44;
  }

  else
  {
    v42 = 0;
  }

  *(v0 + 137) = v42;
  if (v38)
  {
    v38[33] = v42;
  }

  v45 = sub_1C754FEEC();
  v46 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_66(v46))
  {
    v47 = *(v0 + 75);
    v48 = swift_slowAlloc();
    v83[0] = swift_slowAlloc();
    *v48 = 136315394;
    if (v47)
    {
      v49 = 0x6465696669646F6DLL;
    }

    else
    {
      v49 = 0x69646F6D20746F6ELL;
    }

    if (v47)
    {
      v50 = 0xE800000000000000;
    }

    else
    {
      v50 = 0xEC00000064656966;
    }

    v51 = sub_1C6F765A4(v49, v50, v83);

    *(v48 + 4) = v51;
    *(v48 + 12) = 2080;
    OUTLINED_FUNCTION_31_50();
    v54 = 0xE900000000000073;
    v55 = 0x756F756769626D61;
    if (v42 != 1)
    {
      v55 = 0x6769626D61736964;
      v54 = 0xED00006465746175;
    }

    if (v42)
    {
      v56 = v55;
    }

    else
    {
      v56 = v53;
    }

    if (v42)
    {
      v57 = v54;
    }

    else
    {
      v57 = v52;
    }

    v58 = sub_1C6F765A4(v56, v57, v83);

    *(v48 + 14) = v58;
    OUTLINED_FUNCTION_57_5();
    _os_log_impl(v59, v60, v61, v62, v48, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v63 = *(v0 + 1008);
  v64 = *(v0 + 960);
  v65 = *(v0 + 79);
  v66 = *(v0 + 78);
  v67 = *(v0 + 952);
  v82 = *(v0 + 992);
  sub_1C754F2BC();
  *(v0 + 560) = v82;
  *(v0 + 576) = v63;
  *(v0 + 664) = v67;
  *(v0 + 672) = v66;
  *(v0 + 673) = v65;
  v68 = OUTLINED_FUNCTION_0_11();
  v64(v68);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 1048) = v69;
  *v69 = v70;
  v69[1] = sub_1C74D7714;
  OUTLINED_FUNCTION_20_4();

  return sub_1C7383694(v71, v72, v73, v74, v75);
}

uint64_t sub_1C74D7714()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  v3[132] = v5;
  v3[133] = v6;
  v3[134] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C74D7858()
{
  v78 = v0;
  v1 = *(v0 + 1056);
  v2 = *(v0 + 1032);
  v3 = *(v0 + 79);
  v4 = *(v0 + 78);
  v5 = *(v0 + 952);
  v6 = *(v0 + 920);
  v7 = *(v0 + 77);
  v8 = *(v0 + 744);
  *(v0 + 16) = *(v0 + 1064);
  v9 = (v0 + 16);
  v10 = *(v0 + 75);
  v7 &= 1u;
  LOBYTE(v76[0]) = v7;
  *(v0 + 24) = v1;
  *(v0 + 32) = v6;
  *(v0 + 40) = v5;
  *(v0 + 48) = v4;
  *(v0 + 49) = v3;
  *(v0 + 56) = v2;
  *(v0 + 64) = v8;
  *(v0 + 72) = v7;
  sub_1C75504FC();
  sub_1C75504FC();
  v11 = v6;
  v73 = (v0 + 336);
  if (v10 == 1)
  {
    v12 = *(v0 + 137);
    v13 = *(v0 + 960);
    v14 = *(v0 + 912);
    v68 = *(v0 + 896);
    v70 = *(v0 + 880);
    sub_1C754F2BC();
    v15 = *(v0 + 32);
    *(v0 + 272) = *v9;
    *(v0 + 288) = v15;
    *(v0 + 304) = *(v0 + 48);
    *(v0 + 313) = *(v0 + 57);
    *(v0 + 74) = v12;
    *(v0 + 496) = v70;
    *(v0 + 512) = v68;
    *(v0 + 528) = v14;
    v16 = OUTLINED_FUNCTION_54_38();
    v13(v16);
    v17 = swift_task_alloc();
    *(v0 + 1080) = v17;
    *v17 = v0;
    v17[1] = sub_1C74D7FA8;
    v80 = *(v0 + 800);
    v79 = v0 + 336;
    OUTLINED_FUNCTION_73_25();

    return sub_1C74D8FF8(v18, v19, v20, v21, v22, v23, v24, v25);
  }

  else
  {

    v28 = *(v0 + 1072);
    sub_1C74DA550(v0 + 16, v0 + 80);
    v29 = sub_1C754FEEC();
    v30 = sub_1C75511BC();
    sub_1C7169EEC(v0 + 16);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = OUTLINED_FUNCTION_41_0();
      v32 = OUTLINED_FUNCTION_20_1();
      *&v74[0] = v32;
      *v31 = 136315138;
      OUTLINED_FUNCTION_43_42();
      sub_1C74DA550(v0 + 16, v0 + 208);
      Understanding = QueryUnderstandingResult.description.getter();
      v35 = v34;
      v36 = v76[1];
      *(v0 + 144) = v76[0];
      *(v0 + 160) = v36;
      *(v0 + 176) = v77[0];
      *(v0 + 185) = *(v77 + 9);
      sub_1C7169EEC(v0 + 144);
      v37 = sub_1C6F765A4(Understanding, v35, v74);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_1C6F5C000, v29, v30, "Query understanding result = \n%s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v38 = *(v0 + 1040);
    if (v38)
    {
      v39 = *(v0 + 1056);
      v40 = *(v0 + 720);
      v41 = *(v0 + 712);
      *(v38 + 24) = *(*(v0 + 1064) + 16);

      sub_1C7461AB4(v39);

      sub_1C74620A4(v41, v40);
    }

    sub_1C754F2DC();
    v42 = *(v0 + 1064);
    v43 = *(v0 + 1056);
    if (v28)
    {
      v44 = *(v0 + 872);
      v45 = *(v0 + 864);
      v67 = *(v0 + 920);
      v69 = *(v0 + 856);
      v46 = *(v0 + 792);
      v72 = *(v0 + 784);
      v71 = *(v0 + 760);
      v47 = *(v0 + 752);

      sub_1C7169EEC(v0 + 16);

      sub_1C7550E1C();

      __swift_destroy_boxed_opaque_existential_1(v0 + 376);
      __swift_destroy_boxed_opaque_existential_1(v73);
      OUTLINED_FUNCTION_10_3(v47);
      sub_1C754F1AC();
      (*(v45 + 8))(v44, v69);
      (*(v46 + 8))(v71, v72);
      OUTLINED_FUNCTION_33_46();
    }

    else
    {
      OUTLINED_FUNCTION_47_29();
      OUTLINED_FUNCTION_43_42();
      v48 = *(v0 + 896);
      v74[0] = *(v0 + 880);
      v74[1] = v48;
      v75 = v49;
      sub_1C74D9B50(v50, v43, v42, v51, v52, v76, v53, v74, v73);

      sub_1C754F2EC();
      v56 = *(v0 + 920);
      v57 = *(v0 + 872);
      v58 = *(v0 + 864);
      v59 = *(v0 + 856);
      OUTLINED_FUNCTION_38_43();
      v60 = v59;
      v61 = *(v0 + 704);

      v62 = *v9;
      v63 = *(v0 + 32);
      v64 = *(v0 + 48);
      *(v61 + 41) = *(v0 + 57);
      v61[1] = v63;
      v61[2] = v64;
      *v61 = v62;
      OUTLINED_FUNCTION_41_47();
      sub_1C7550E1C();

      __swift_destroy_boxed_opaque_existential_1(v0 + 376);
      __swift_destroy_boxed_opaque_existential_1(v73);
      v65 = OUTLINED_FUNCTION_457();
      OUTLINED_FUNCTION_70(v65, v66);
      OUTLINED_FUNCTION_117_0();
      sub_1C754F1AC();
      (*(v58 + 8))(v57, v60);
    }

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_73_25();

    return v54();
  }
}

uint64_t sub_1C74D7FA8()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 1088) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C74D80D0()
{
  v1 = *(v0 + 1088);
  sub_1C74DA550(v0 + 16, v0 + 80);
  v2 = sub_1C754FEEC();
  v3 = sub_1C75511BC();
  sub_1C7169EEC(v0 + 16);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_41_0();
    v5 = OUTLINED_FUNCTION_20_1();
    *&v40[0] = v5;
    *v4 = 136315138;
    OUTLINED_FUNCTION_4_111();
    sub_1C74DA550(v0 + 16, v0 + 208);
    Understanding = QueryUnderstandingResult.description.getter();
    v8 = v7;
    v9 = v42[1];
    *(v0 + 144) = v42[0];
    *(v0 + 160) = v9;
    *(v0 + 176) = v43[0];
    *(v0 + 185) = *(v43 + 9);
    sub_1C7169EEC(v0 + 144);
    v10 = sub_1C6F765A4(Understanding, v8, v40);

    *(v4 + 4) = v10;
    _os_log_impl(&dword_1C6F5C000, v2, v3, "Query understanding result = \n%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_10_1();
  }

  v11 = *(v0 + 1040);
  if (v11)
  {
    v12 = *(v0 + 1056);
    v13 = *(v0 + 720);
    v14 = *(v0 + 712);
    *(v11 + 24) = *(*(v0 + 1064) + 16);

    sub_1C7461AB4(v12);

    sub_1C74620A4(v14, v13);
  }

  sub_1C754F2DC();
  v15 = *(v0 + 1064);
  v16 = *(v0 + 1056);
  if (v1)
  {
    v17 = *(v0 + 920);
    v18 = *(v0 + 872);
    v19 = *(v0 + 864);
    v20 = *(v0 + 792);
    OUTLINED_FUNCTION_63_28();
    v21 = *(v0 + 752);

    sub_1C7169EEC(v0 + 16);

    sub_1C7550E1C();

    __swift_destroy_boxed_opaque_existential_1(v0 + 376);
    __swift_destroy_boxed_opaque_existential_1(v0 + 336);
    OUTLINED_FUNCTION_10_3(v21);
    sub_1C754F1AC();
    (*(v19 + 8))(v18);
    (*(v20 + 8))();
    OUTLINED_FUNCTION_33_46();
  }

  else
  {
    OUTLINED_FUNCTION_47_29();
    OUTLINED_FUNCTION_4_111();
    v22 = *(v0 + 896);
    v40[0] = *(v0 + 880);
    v40[1] = v22;
    v41 = v23;
    sub_1C74D9B50(v24, v16, v15, v25, v26, v42, v27, v40, (v0 + 336));

    sub_1C754F2EC();
    v28 = *(v0 + 920);
    v29 = *(v0 + 872);
    v30 = *(v0 + 864);
    v31 = *(v0 + 856);
    OUTLINED_FUNCTION_38_43();
    v34 = v31;
    v35 = *(v0 + 752);
    v36 = *(v0 + 704);

    v37 = *(v0 + 16);
    v38 = *(v0 + 32);
    v39 = *(v0 + 48);
    *(v36 + 41) = *(v0 + 57);
    v36[1] = v38;
    v36[2] = v39;
    *v36 = v37;
    OUTLINED_FUNCTION_41_47();
    sub_1C7550E1C();

    __swift_destroy_boxed_opaque_existential_1(v0 + 376);
    __swift_destroy_boxed_opaque_existential_1(v0 + 336);
    OUTLINED_FUNCTION_10_3(v35);
    OUTLINED_FUNCTION_41_3();
    sub_1C754F1AC();
    (*(v30 + 8))(v29, v34);
  }

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_9_38();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C74D8664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_21_65();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  OUTLINED_FUNCTION_41_47();
  sub_1C7550E1C();

  OUTLINED_FUNCTION_51_33();
  OUTLINED_FUNCTION_18_0(v12, v12[3]);
  sub_1C754F1AC();
  v14 = OUTLINED_FUNCTION_15_1();
  v15(v14);
  v16 = OUTLINED_FUNCTION_52_33();
  v17(v16);
  OUTLINED_FUNCTION_5_108();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1C74D8784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_21_65();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  OUTLINED_FUNCTION_41_47();
  sub_1C7550E1C();

  OUTLINED_FUNCTION_51_33();
  OUTLINED_FUNCTION_18_0(v12, v12[3]);
  sub_1C754F1AC();
  v14 = OUTLINED_FUNCTION_15_1();
  v15(v14);
  v16 = OUTLINED_FUNCTION_52_33();
  v17(v16);
  OUTLINED_FUNCTION_5_108();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

void sub_1C74D88AC()
{
  OUTLINED_FUNCTION_59_31();
  v6 = v0[115];
  v7 = v0[109];
  v2 = v0[108];
  OUTLINED_FUNCTION_42_41();
  v3 = v0[94];

  sub_1C7550E1C();

  OUTLINED_FUNCTION_51_33();
  OUTLINED_FUNCTION_10_3(v3);
  OUTLINED_FUNCTION_0_11();
  sub_1C754F1AC();
  (*(v2 + 8))(v7);
  (*(v1 + 8))();
  OUTLINED_FUNCTION_5_108();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_129();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C74D8A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  v13 = v12[115];
  v14 = v12[109];
  v15 = v12[108];
  v16 = v12[107];
  v29 = v12[98];
  v17 = v12[94];

  sub_1C7169EEC((v12 + 2));
  sub_1C7550E1C();

  OUTLINED_FUNCTION_51_33();
  OUTLINED_FUNCTION_18_0(v17, v17[3]);
  sub_1C754F1AC();
  (*(v15 + 8))(v14, v16);
  v18 = OUTLINED_FUNCTION_52_33();
  v19(v18);
  OUTLINED_FUNCTION_5_108();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v29, a10, a11, a12);
}

uint64_t sub_1C74D8B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C74D8B8C, 0, 0);
}

uint64_t sub_1C74D8B8C()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  OUTLINED_FUNCTION_10_3(v1);
  *(v0 + 80) = 1;
  OUTLINED_FUNCTION_15_3();
  v11 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1C74D8CC8;
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);
  v9 = *(v0 + 24);

  return v11(v9, v8, v6, v0 + 80, v7, v2, v3);
}

uint64_t sub_1C74D8CC8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 64) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C74D8DD0()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  OUTLINED_FUNCTION_10_3(v1);
  OUTLINED_FUNCTION_15_3();
  v11 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1C74D8EF4;
  v6 = v0[5];
  v7 = v0[6];
  v9 = v0[3];
  v8 = v0[4];

  return v11(v9, v8, v6, v7, v2, v3);
}

uint64_t sub_1C74D8EF4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C74D8FF8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 384) = v14;
  *(v9 + 392) = v8;
  *(v9 + 368) = a8;
  *(v9 + 376) = v13;
  *(v9 + 73) = a3;
  *(v9 + 360) = a2;
  v10 = *(a1 + 16);
  *(v9 + 400) = *a1;
  *(v9 + 416) = v10;
  *(v9 + 74) = *(a1 + 32);
  *(v9 + 75) = *(a1 + 33);
  *(v9 + 432) = *(a1 + 40);
  *(v9 + 76) = *a5;
  v11 = *(a7 + 16);
  *(v9 + 440) = *a7;
  *(v9 + 456) = v11;
  *(v9 + 472) = *(a7 + 32);
  return MEMORY[0x1EEE6DFA0](sub_1C74D9068, 0, 0);
}

uint64_t sub_1C74D9068()
{
  if (v0[46])
  {
    swift_beginAccess();
  }

  else
  {
    v1 = 0;
  }

  v0[60] = v1;
  v0[37] = sub_1C754E5EC();
  v0[38] = sub_1C70B881C();
  __swift_allocate_boxed_opaque_existential_0(v0 + 34);
  OUTLINED_FUNCTION_62_2();
  (*(v2 + 104))();
  v3 = sub_1C754E3AC();
  __swift_destroy_boxed_opaque_existential_1((v0 + 34));
  if (v3)
  {
    v4 = swift_task_alloc();
    v0[61] = v4;
    *v4 = v0;
    v4[1] = sub_1C74D9278;

    return QueryGenerator.addDisambiguationSuggestions(to:retrievedAssetUUIDs:consolidatedAssetUUIDsByMetadataTokenCategoryTypeString:eventRecorder:progressReporter:)();
  }

  else
  {
    sub_1C754F2FC();
    OUTLINED_FUNCTION_62_2();
    v7 = *(v6 + 8);
    swift_bridgeObjectRetain_n();
    v8 = OUTLINED_FUNCTION_57_0();
    v7(v8);
    v0[65] = v0[51];
    v0[64] = 0;
    static StoryGenerationUtilities.musicRelatedQueryTokens(in:)();
    v0[66] = v9;
    v10 = swift_task_alloc();
    v0[67] = v10;
    *v10 = v0;
    OUTLINED_FUNCTION_14_76(v10);

    return sub_1C74AC1C8();
  }
}

uint64_t sub_1C74D9278()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 496) = v0;

  if (!v0)
  {
    *(v5 + 504) = v3;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C74D9384()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[62];
  v0[65] = v0[63];
  v0[64] = v1;
  sub_1C75504FC();
  static StoryGenerationUtilities.musicRelatedQueryTokens(in:)();
  v0[66] = v2;
  v3 = swift_task_alloc();
  v0[67] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_14_76(v3);

  return sub_1C74AC1C8();
}

uint64_t sub_1C74D940C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;
  *(v6 + 544) = v5;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C74D9514()
{
  v118 = v0;
  v2 = *(v0 + 544);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v113 = v2;
  v4 = *(v2 + 16);
  sub_1C74AA32C();
  v6 = v5;

  v112 = v6;
  v7 = *(v6 + 16);
  v8 = (v7 | v4) != 0;
  v9 = sub_1C754FEEC();
  v10 = sub_1C75511BC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 76);
    v12 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *&v116[0] = v97;
    *v12 = 136315906;
    if (v7 | v4)
    {
      v20 = 0x646C756F6853;
    }

    else
    {
      v20 = 0x6E20646C756F6853;
    }

    LODWORD(v106) = (v7 | v4) != 0;
    OUTLINED_FUNCTION_80_18(v20, v13, v14, v15, v16, v17, v18, v19, v81, v85, v4, v93, v97, v102, v106);
    OUTLINED_FUNCTION_81_26();
    *(v12 + 4) = v1;
    *(v12 + 12) = 2080;
    OUTLINED_FUNCTION_31_50();
    v29 = 0x6769626D61736964;
    if (v11 == 1)
    {
      v29 = 0x756F756769626D61;
    }

    if (v11)
    {
      v30 = v29;
    }

    else
    {
      v30 = v28;
    }

    OUTLINED_FUNCTION_80_18(v30, v21, v22, v23, v24, v25, v26, v27, v82, v86, v89, v94, v98, v103, v107);
    OUTLINED_FUNCTION_81_26();
    *(v12 + 14) = v1;
    *(v12 + 22) = 2080;
    if (v7)
    {
      v38 = 0x756F756769626D61;
    }

    else
    {
      v38 = 0x69626D6120746F6ELL;
    }

    OUTLINED_FUNCTION_80_18(v38, v31, v32, v33, v34, v35, v36, v37, v83, v87, v90, v95, v99, v104, v108);
    OUTLINED_FUNCTION_81_26();
    *(v12 + 24) = v1;
    *(v12 + 32) = 2080;
    if (v91)
    {
      v46 = 0x756F756769626D61;
    }

    else
    {
      v46 = 0x69626D6120746F6ELL;
    }

    OUTLINED_FUNCTION_80_18(v46, v39, v40, v41, v42, v43, v44, v45, v84, v88, v91, v96, v100, v105, v109);
    OUTLINED_FUNCTION_81_26();
    *(v12 + 34) = v1;
    _os_log_impl(&dword_1C6F5C000, v9, v10, "%s throw any ambiguity error.\nThe prompt ambiguity state is %s and the person/location/date/personal event query tokens are %s.\nThe music related query tokens are %s.", v12, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();

    v3 = MEMORY[0x1E69E7CC0];
    v8 = v110;
  }

  else
  {
  }

  v47 = *(v0 + 520);
  if (v8)
  {
    v49 = *(v0 + 424);
    v48 = *(v0 + 432);
    v50 = *(v0 + 75);
    v51 = *(v0 + 74);
    v52 = *(v0 + 416);
    LOBYTE(v116[0]) = 1;
    *(v0 + 16) = v3;
    *(v0 + 24) = v47;
    *(v0 + 32) = v52;
    *(v0 + 40) = v49;
    *(v0 + 48) = v51;
    *(v0 + 49) = v50;
    *(v0 + 56) = v48;
    *(v0 + 64) = 0;
    *(v0 + 72) = 1;
    sub_1C75504FC();
    sub_1C75504FC();
    v53 = v52;
    sub_1C75504FC();
    sub_1C74DA550(v0 + 16, v0 + 80);
    v54 = sub_1C754FEEC();
    v55 = sub_1C75511BC();
    sub_1C7169EEC(v0 + 16);
    if (os_log_type_enabled(v54, v55))
    {
      v56 = OUTLINED_FUNCTION_41_0();
      v57 = OUTLINED_FUNCTION_20_1();
      *&v114[0] = v57;
      *v56 = 136642819;
      OUTLINED_FUNCTION_4_111();
      sub_1C74DA550(v0 + 16, v0 + 208);
      QueryUnderstandingResult.description.getter();
      v58 = v116[1];
      *(v0 + 144) = v116[0];
      *(v0 + 160) = v58;
      *(v0 + 176) = v117[0];
      *(v0 + 185) = *(v117 + 9);
      sub_1C7169EEC(v0 + 144);
      v59 = OUTLINED_FUNCTION_148_0();
      v62 = sub_1C6F765A4(v59, v60, v61);

      *(v56 + 4) = v62;
      _os_log_impl(&dword_1C6F5C000, v54, v55, "The user prompt is ambiguous.\nQuery understanding result=\n%{sensitive}s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v63 = *(v0 + 480);
    if (v63)
    {
      v64 = *(v0 + 520);
      swift_beginAccess();
      *(v63 + 32) = 1;

      sub_1C7461AB4(v64);
    }

    v65 = *(v0 + 520);
    v111 = *(v0 + 512);
    v66 = *(v0 + 472);
    v68 = *(v0 + 368);
    v67 = *(v0 + 376);
    v69 = *(v0 + 73);
    v92 = *(v0 + 456);
    v101 = *(v0 + 440);
    v70 = [*(v0 + 416) string];
    v71 = sub_1C755068C();
    v73 = v72;

    OUTLINED_FUNCTION_4_111();
    v114[1] = v92;
    v114[0] = v101;
    v115 = v66;
    sub_1C74D9B50(v68, v65, MEMORY[0x1E69E7CC0], v71, v73, v116, v69, v114, v67);

    if (v111)
    {
    }

    else
    {
      *&v116[0] = v112;
      sub_1C6FD33F0(v113);
      sub_1C75504FC();
      sub_1C74D6168(v116);
      v76 = *(v0 + 520);
      v77 = *(v0 + 416);

      v78 = *&v116[0];
      sub_1C74A96EC();
      swift_allocError();
      *v79 = v77;
      v79[1] = v78;
      v79[2] = v76;
      swift_willThrow();
      v80 = v77;
    }

    sub_1C7169EEC(v0 + 16);
    OUTLINED_FUNCTION_43();
  }

  else
  {

    OUTLINED_FUNCTION_43();
  }

  OUTLINED_FUNCTION_9_38();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C74D9AF4()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C74D9B50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, int a7, uint64_t *a8, void *a9)
{
  v56 = a7;
  v57 = a3;
  v66 = sub_1C754F38C();
  v60 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v16 = a6[1];
  v64[0] = *a6;
  v64[1] = v16;
  v65[0] = a6[2];
  *(v65 + 9) = *(a6 + 41);
  v17 = a1;
  v18 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a8;
  v54 = a8[1];
  v55 = v19;
  v20 = a8[2];
  v52 = a8[3];
  v53 = v20;
  v51 = a8[4];
  __swift_project_boxed_opaque_existential_1(a9, a9[3]);
  v58 = v18;
  sub_1C754F1CC();
  if (!v17)
  {
    goto LABEL_8;
  }

  v62[0] = 1528845649;
  v62[1] = 0xE400000000000000;

  v49 = a4;
  v50 = a5;
  MEMORY[0x1CCA5CD70](a4, a5);
  MEMORY[0x1CCA5CD70](93, 0xE100000000000000);
  v21 = v57;
  v22 = sub_1C7164AD8(v57, v62[0], v62[1], 0xD000000000000010, 0x80000001C75B2D70);

  sub_1C74DA550(v64, v62);
  sub_1C75504FC();
  sub_1C7161B24();
  if (!PFOSVariantHasInternalDiagnostics())
  {

LABEL_8:
    __swift_project_boxed_opaque_existential_1(a9, a9[3]);
    v43 = v58;
    sub_1C754F1AC();
    return (*(v60 + 8))(v43, v66);
  }

  v62[0] = a2;
  sub_1C75504FC();
  v23 = v59;
  sub_1C735EDC8(v62);
  if (!v23)
  {
    v59 = v17;
    v24 = v62[0];
    v63 = v21;
    sub_1C75504FC();
    sub_1C70401E8();
    v48 = 0;
    v25 = *(v21 + 16);
    LOBYTE(v62[0]) = v56 & 1;
    v27 = v54;
    v26 = v55;
    v62[1] = v55;
    v62[2] = v54;
    v62[3] = v53;
    v62[4] = v52;
    v62[5] = v51;
    v62[6] = v49;
    v62[7] = v50;
    v62[8] = v24;
    v62[9] = v25;
    v62[10] = v63;
    sub_1C754DBCC();
    swift_allocObject();
    sub_1C717FBD4(v26, v27);
    sub_1C75504FC();
    sub_1C754DBBC();
    sub_1C754DB9C();
    memcpy(v61, v62, sizeof(v61));
    sub_1C735FCE0();
    v28 = v48;
    v29 = sub_1C754DBAC();
    if (v28)
    {
      sub_1C735FD34(v62);
      swift_getErrorValue();
      v31 = sub_1C7551EAC();
      v33 = v32;
      sub_1C735FD64();
      v34 = swift_allocError();
      *v35 = v31;
      v35[1] = v33;
      swift_willThrow();

      v36 = v34;
      v37 = sub_1C754FEEC();
      v38 = sub_1C755119C();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        v41 = v34;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v42;
        *v40 = v42;
        _os_log_impl(&dword_1C6F5C000, v37, v38, "Unable to save query generator diagnostics, error=%@", v39, 0xCu);
        sub_1C6FF52C0(v40, &qword_1EC215190);
        MEMORY[0x1CCA5F8E0](v40, -1, -1);
        MEMORY[0x1CCA5F8E0](v39, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v45 = v29;
      v46 = v30;
      sub_1C735FD34(v62);
      sub_1C7161C08();

      sub_1C6FC1640(v45, v46);
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C74DA0BC(void *a1, _OWORD *a2, uint64_t a3)
{
  v5 = a2[1];
  __dst[0] = *a2;
  __dst[1] = v5;
  __dst[2] = a2[2];
  *(&__dst[2] + 9) = *(a2 + 41);
  Understanding = QueryUnderstandingResult.description.getter();
  v8 = v7;

  a1[9] = Understanding;
  a1[10] = v8;
  swift_isUniquelyReferenced_nonNull_native();
  *&__dst[0] = a1[7];
  v9 = sub_1C6F78124(21841, 0xE200000000000000);
  if (__OFADD__(*(*&__dst[0] + 16), (v10 & 1) == 0))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A8);
  v13 = *&__dst[0];
  if (sub_1C7551A2C())
  {
    v14 = sub_1C6F78124(21841, 0xE200000000000000);
    if ((v12 & 1) != (v15 & 1))
    {
LABEL_40:
      result = sub_1C7551E4C();
      __break(1u);
      return result;
    }

    v11 = v14;
  }

  a1[7] = *&__dst[0];
  if ((v12 & 1) == 0)
  {
    sub_1C6FC6D3C(v11, 21841, 0xE200000000000000, 0, v13);
  }

  v16 = *(v13 + 56);
  v17 = *(v16 + 8 * v11);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v20 = 0;
  *(v16 + 8 * v11) = v19;
  v21 = *(a3 + 16);
  v22 = MEMORY[0x1E69E7CC0];
LABEL_9:
  v23 = (a3 + 32 + 120 * v20);
  while (v21 != v20)
  {
    if (v20 >= v21)
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    memcpy(__dst, v23, 0x78uLL);
    v24 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_35;
    }

    memcpy(v39, v23, sizeof(v39));
    sub_1C6FCA6E4(__dst, v38);
    sub_1C72D36F8();
    if (v25 == 2 || (memcpy(v39, __dst, sizeof(v39)), sub_1C72D36F8(), v26 == 1))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_77_20();
        v22 = v41;
      }

      v28 = *(v22 + 16);
      if (v28 >= *(v22 + 24) >> 1)
      {
        sub_1C716D7D8();
        v22 = v41;
      }

      *(v22 + 16) = v28 + 1;
      memcpy((v22 + 120 * v28 + 32), __dst, 0x78uLL);
      v20 = v24;
      goto LABEL_9;
    }

    sub_1C6FDD548(__dst);
    ++v20;
    v23 += 120;
  }

  v29 = 0;
  a1[11] = v22;
  v30 = a3 + 32;
  v31 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v32 = (v30 + 120 * v29);
  for (i = v29; v21 != i; ++i)
  {
    if (i >= v21)
    {
      goto LABEL_36;
    }

    memcpy(__dst, v32, 0x78uLL);
    v29 = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_37;
    }

    memcpy(v39, v32, sizeof(v39));
    sub_1C6FCA6E4(__dst, v38);
    sub_1C72D36F8();
    if (!v34)
    {
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v41 = v31;
      if ((v35 & 1) == 0)
      {
        OUTLINED_FUNCTION_77_20();
        v31 = v41;
      }

      v36 = *(v31 + 16);
      if (v36 >= *(v31 + 24) >> 1)
      {
        sub_1C716D7D8();
        v31 = v41;
      }

      *(v31 + 16) = v36 + 1;
      memcpy((v31 + 120 * v36 + 32), __dst, 0x78uLL);
      goto LABEL_22;
    }

    sub_1C6FDD548(__dst);
    v32 += 120;
  }

  a1[12] = v31;
  return result;
}

uint64_t sub_1C74DA454(uint64_t result)
{
  v1 = *(result + 128) & 1 | 0x8000000000000000;
  *(result + 72) &= 0x30101uLL;
  *(result + 128) = v1;
  return result;
}

uint64_t sub_1C74DA47C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v2 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_1C6F738F4;

  return sub_1C74D8B64(a1, v4, v5, (v1 + 4), v6, v7, v8, (v1 + 12));
}

uint64_t sub_1C74DA5D4()
{
  result = sub_1C754FF1C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MomentGroundingProcessor();
    if (v2 <= 0x3F)
    {
      result = sub_1C710A06C(319, &qword_1EDD0D1F8);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for QueryAnnotatorV2();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for QueryAssetsRetrievalProcessor();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for QueryDisambiguationSuggestionProducer();
            if (v6 <= 0x3F)
            {
              result = sub_1C710A06C(319, qword_1EDD0D4A0);
              if (v7 <= 0x3F)
              {
                result = sub_1C710A06C(319, qword_1EDD0CA28);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18PhotosIntelligence14QueryGeneratorV5ErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C74DA750(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 24))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C74DA7A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *sub_1C74DA7FC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

char *sub_1C74DA82C(uint64_t *a1)
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
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C7349D70(v7, v8, a1, v4);
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
    return sub_1C7349C88(0, v2, 1, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_62_31()
{

  return sub_1C754F1AC();
}

double OUTLINED_FUNCTION_64_26()
{
  *(v0 + 888) = 0;
  result = 0.0;
  *v1 = 0u;
  v1[1] = 0u;
  return result;
}

void OUTLINED_FUNCTION_74_19()
{
  *(v0 + 30) = 4;

  StoryGenerationDiagnosticContext.generationStage.setter((v0 + 30));
}

void OUTLINED_FUNCTION_75_23(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

void OUTLINED_FUNCTION_77_20()
{

  sub_1C716D7D8();
}

uint64_t OUTLINED_FUNCTION_80_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  return sub_1C6F765A4(a1, v15, va);
}

uint64_t OUTLINED_FUNCTION_81_26()
{
}

uint64_t sub_1C74DAA98()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21C7E0);
  __swift_project_value_buffer(v0, qword_1EC21C7E0);
  return sub_1C754FEFC();
}

uint64_t static FeaturedPhotoFetcher.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2141E8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C754FF1C();
  v3 = __swift_project_value_buffer(v2, qword_1EC21C7E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static FeaturedPhotoFetcher.defaultSortDescriptors(ascending:)(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C75650C0;
  v3 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v2 + 32) = sub_1C6F6AF98(0x6465727574616566, 0xED00006574617453, a1);
  v4 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v2 + 40) = sub_1C6F6AF98(0x6E6F697461657263, 0xEC00000065746144, a1);
  v5 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v2 + 48) = sub_1C6F6AF98(1684632949, 0xE400000000000000, a1);
  return v2;
}

id static FeaturedPhotoFetcher.basePredicate(using:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C7564A90;
  *(v2 + 32) = [objc_opt_self() predicateForAllFeaturedStateEnabledSuggestionTypesForWidget];
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C75604F0;
  v4 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v5 = sub_1C6F6D524();
  *(v3 + 64) = v5;
  *(v3 + 32) = 0x6574617473;
  *(v3 + 40) = 0xE500000000000000;
  v6 = MEMORY[0x1E69E75F8];
  v7 = MEMORY[0x1E69E7660];
  *(v3 + 96) = MEMORY[0x1E69E75F8];
  *(v3 + 104) = v7;
  *(v3 + 72) = 4;
  *(v2 + 40) = sub_1C755112C();
  if (a1)
  {
    switch(*(a1 + 32))
    {
      case 3:

        goto LABEL_6;
      default:
        v8 = sub_1C7551DBC();

        if (v8)
        {
LABEL_6:
          v9 = swift_allocObject();
          *(v9 + 16) = xmmword_1C75604F0;
          *(v9 + 56) = v4;
          *(v9 + 64) = v5;
          strcpy((v9 + 32), "featuredState");
          *(v9 + 46) = -4864;
          *(v9 + 96) = v6;
          *(v9 + 104) = v7;
          *(v9 + 72) = 1;
          sub_1C755112C();
          MEMORY[0x1CCA5D040]();
          if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C7550B9C();
          }

          sub_1C7550BEC();
        }

        break;
    }
  }

  sub_1C6F65BE8(0, &qword_1EDD0FA80);
  return sub_1C6F6E5C4();
}

id static FeaturedPhotoFetcher.fetchCollections(using:)(uint64_t a1)
{
  v1 = *(a1 + 24);
  sub_1C7066264();
  v2 = [objc_opt_self() fetchSuggestionsWithOptions_];

  return v2;
}

id PNTextEmbeddingResultWithBiasScale.init(from:)(void *a1)
{
  v4 = [a1 properties];
  sub_1C75504AC();

  sub_1C6FE3750(0x736169625F636576, 0xE800000000000000);

  if (!v16[3])
  {
    sub_1C6FE32F4(v16);
LABEL_8:
    sub_1C74DB304();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    goto LABEL_9;
  }

  if ((OUTLINED_FUNCTION_0_208() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = [a1 properties];
  sub_1C75504AC();

  sub_1C6FE3750(0x6C6163735F636576, 0xE900000000000065);

  if ((OUTLINED_FUNCTION_0_208() & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1C74DB3DC(a1);
  if (v2)
  {
LABEL_9:

    return v1;
  }

  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1C6FA7014();
  v7 = sub_1C7550B3C();

  v8 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  LODWORD(v9) = v17;
  v10 = [v8 initWithFloat_];
  v11 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  LODWORD(v12) = v17;
  v13 = [v11 initWithFloat_];
  v1 = [v6 initWithEmbedding:v7 calibrationVersion:0 bias:v10 scale:v13];

  return v1;
}

unint64_t sub_1C74DB304()
{
  result = qword_1EC21C810;
  if (!qword_1EC21C810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C810);
  }

  return result;
}

uint64_t sub_1C74DB358()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21C7F8);
  __swift_project_value_buffer(v0, qword_1EC21C7F8);
  return sub_1C754FEFC();
}

uint64_t sub_1C74DB3DC(void *a1)
{
  v2 = [a1 vectors];
  v3 = sub_1C7550B5C();

  if (!v3[2])
  {

    sub_1C74DB304();
    swift_allocError();
    *v10 = 1;
    return swift_willThrow();
  }

  v4 = v3[4];
  v5 = v3[5];
  sub_1C6FEB1B0(v4, v5);

  v6 = [a1 format];
  v7 = MEMORY[0x1E69E7CC0];
  if (v6 == 1)
  {
    v12 = MEMORY[0x1CCA5A320](v4, v5);
    v13.n128_u64[0] = 0;
    v14 = sub_1C725CFEC(v12 / 2, v13);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_10:
      if (*(v14 + 16) + 0x4000000000000000 >= 0)
      {
        sub_1C73C6FA4();
        sub_1C754D85C();
        v15 = *(v14 + 16);
        if (v15)
        {
          v38 = v4;
          sub_1C716DD68(0, v15, 0);
          v3 = v7;
          v16 = v7[2];
          v17 = 32;
          do
          {
            _H8 = *(v14 + v17);
            v19 = v7[3];
            if (v16 >= v19 >> 1)
            {
              sub_1C716DD68(v19 > 1, v16 + 1, 1);
            }

            __asm { FCVT            S0, H8 }

            v7[2] = v16 + 1;
            *(v7 + v16 + 8) = _S0;
            v17 += 2;
            ++v16;
            --v15;
          }

          while (v15);

          v4 = v38;
          v7 = MEMORY[0x1E69E7CC0];
        }

        else
        {

          v3 = MEMORY[0x1E69E7CC0];
        }

        goto LABEL_22;
      }

      __break(1u);
      goto LABEL_30;
    }

LABEL_28:
    sub_1C70E4384();
    v14 = v36;
    goto LABEL_10;
  }

  LODWORD(v3) = v6;
  if (!v6)
  {
    v8 = MEMORY[0x1CCA5A320](v4, v5);
    sub_1C725CE9C(v8 / 4, 0.0);
    v3 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C70E3D94();
      v3 = v35;
    }

    if (!(v3[2] >> 61))
    {
      sub_1C73C6FA4();
      sub_1C754D85C();
LABEL_22:
      v30 = v3[2];
      if (v30)
      {
        v37 = v5;
        sub_1C755195C();
        v31 = 32;
        do
        {
          v32 = *(v3 + v31);
          v33 = objc_allocWithZone(MEMORY[0x1E696AD98]);
          LODWORD(v34) = v32;
          [v33 initWithFloat_];
          sub_1C755192C();
          sub_1C755196C();
          sub_1C755197C();
          sub_1C755193C();
          v31 += 4;
          --v30;
        }

        while (v30);
        sub_1C6FC1640(v4, v37);

        return v7;
      }

      else
      {

        sub_1C6FC1640(v4, v5);
        return MEMORY[0x1E69E7CC0];
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  if (qword_1EC2141F0 != -1)
  {
LABEL_30:
    swift_once();
  }

  v25 = sub_1C754FF1C();
  __swift_project_value_buffer(v25, qword_1EC21C7F8);
  v26 = sub_1C754FEEC();
  v27 = sub_1C755119C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 67109120;
    *(v28 + 4) = v3;
    _os_log_impl(&dword_1C6F5C000, v26, v27, "Unsupported spotlight embedding format: %u", v28, 8u);
    MEMORY[0x1CCA5F8E0](v28, -1, -1);
  }

  sub_1C74DB304();
  swift_allocError();
  *v29 = 0;
  swift_willThrow();
  return sub_1C6FC1640(v4, v5);
}

_BYTE *_s5ErrorOwst_1(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C74DB918()
{
  result = qword_1EC21C818;
  if (!qword_1EC21C818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C818);
  }

  return result;
}

uint64_t sub_1C74DB96C()
{
  result = sub_1C75504DC();
  qword_1EC25B980 = result;
  return result;
}

uint64_t sub_1C74DB9AC()
{
  result = sub_1C75504DC();
  qword_1EC25B988 = result;
  return result;
}

uint64_t sub_1C74DB9EC()
{
  result = sub_1C75504DC();
  qword_1EC25B990 = result;
  return result;
}

uint64_t sub_1C74DBA2C()
{
  result = sub_1C75504DC();
  qword_1EC25B998 = result;
  return result;
}

uint64_t sub_1C74DBA6C()
{
  result = sub_1C75504DC();
  qword_1EDD28E10 = result;
  return result;
}

uint64_t sub_1C74DBAAC()
{
  result = sub_1C75504DC();
  qword_1EDD28E08 = result;
  return result;
}

uint64_t sub_1C74DBAEC()
{
  result = sub_1C75504DC();
  qword_1EDD28E00 = result;
  return result;
}

uint64_t sub_1C74DBB2C()
{
  result = sub_1C75504DC();
  qword_1EDD28DF8 = result;
  return result;
}

uint64_t sub_1C74DBB6C()
{
  result = sub_1C75504DC();
  qword_1EDD28E20 = result;
  return result;
}

uint64_t sub_1C74DBBAC()
{
  result = sub_1C75504DC();
  qword_1EDD28E18 = result;
  return result;
}

uint64_t sub_1C74DBBEC()
{
  result = sub_1C75504DC();
  qword_1EC25B9A0 = result;
  return result;
}

uint64_t sub_1C74DBC2C()
{
  result = sub_1C75504DC();
  qword_1EC25B9A8 = result;
  return result;
}

uint64_t sub_1C74DBC6C()
{
  result = sub_1C75504DC();
  qword_1EC25B9B0 = result;
  return result;
}

uint64_t sub_1C74DBCAC()
{
  sub_1C7047818();
  result = sub_1C755146C();
  qword_1EC21C820 = result;
  return result;
}

uint64_t sub_1C74DBD14()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21C828);
  __swift_project_value_buffer(v0, qword_1EC21C828);
  if (qword_1EC214230 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC21C820;
  return sub_1C754FF2C();
}

uint64_t QueryUnderstandingCompletionParseError.hashValue.getter()
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](0);
  return sub_1C7551FAC();
}

uint64_t sub_1C74DBE50()
{
  v0 = sub_1C754FDEC();
  __swift_allocate_value_buffer(v0, qword_1EC21C840);
  __swift_project_value_buffer(v0, qword_1EC21C840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C20);
  sub_1C754FDCC();
  *(swift_allocObject() + 16) = xmmword_1C755BAA0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216FA8);
  sub_1C74DC190();
  sub_1C754FDBC();
  sub_1C754FDBC();
  sub_1C754FDBC();
  return sub_1C754FDDC();
}

uint64_t QueryUnderstandingCompletionMusic.init(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216FA8);
  sub_1C74DC190();
  OUTLINED_FUNCTION_12_88();
  if (v2)
  {
    sub_1C754FD4C();
    OUTLINED_FUNCTION_3();
    return (*(v5 + 8))(a1);
  }

  else
  {
    OUTLINED_FUNCTION_12_88();
    OUTLINED_FUNCTION_12_88();
    sub_1C754FD4C();
    OUTLINED_FUNCTION_3();
    result = (*(v7 + 8))(a1);
    *a2 = v8;
    a2[1] = v8;
    a2[2] = v8;
  }

  return result;
}

unint64_t sub_1C74DC190()
{
  result = qword_1EC21C870;
  if (!qword_1EC21C870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC216FA8);
    sub_1C6FF60E4(&qword_1EDD06AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C870);
  }

  return result;
}

uint64_t sub_1C74DC238(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x747369747261 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65726E6567 && a2 == 0xE500000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1735290739 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
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

uint64_t sub_1C74DC340(char a1)
{
  if (!a1)
  {
    return 0x747369747261;
  }

  if (a1 == 1)
  {
    return 0x65726E6567;
  }

  return 1735290739;
}

uint64_t sub_1C74DC390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C74DC238(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C74DC3B8(uint64_t a1)
{
  v2 = sub_1C74DC670();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C74DC3F4(uint64_t a1)
{
  v2 = sub_1C74DC670();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t QueryUnderstandingCompletionMusic.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C878);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C74DC670();
  sub_1C7551FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216FA8);
  sub_1C74DC6C4();
  OUTLINED_FUNCTION_2_62();
  sub_1C7551C1C();
  OUTLINED_FUNCTION_2_62();
  sub_1C7551C1C();
  OUTLINED_FUNCTION_2_62();
  sub_1C7551C1C();
  v6 = OUTLINED_FUNCTION_19_0();
  v7(v6);
  *a2 = v9;
  a2[1] = v9;
  a2[2] = v9;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1C74DC670()
{
  result = qword_1EC21C880;
  if (!qword_1EC21C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C880);
  }

  return result;
}

unint64_t sub_1C74DC6C4()
{
  result = qword_1EC21C888;
  if (!qword_1EC21C888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC216FA8);
    sub_1C6FF60E4(&qword_1EDD0CF50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C888);
  }

  return result;
}

uint64_t QueryUnderstandingCompletion.music.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  sub_1C75504FC();
  sub_1C75504FC();

  return sub_1C75504FC();
}

uint64_t QueryUnderstandingCompletion.trip.getter()
{
  v1 = *(v0 + 72);
  sub_1C75504FC();
  return v1;
}

uint64_t QueryUnderstandingCompletion.all_time.getter()
{
  v1 = *(v0 + 88);
  sub_1C75504FC();
  return v1;
}

uint64_t sub_1C74DC874()
{
  v0 = sub_1C754FDEC();
  __swift_allocate_value_buffer(v0, qword_1EC21C858);
  __swift_project_value_buffer(v0, qword_1EC21C858);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C20);
  sub_1C754FDCC();
  *(swift_allocObject() + 16) = xmmword_1C7571600;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216FA8);
  sub_1C74DC190();
  sub_1C754FDBC();
  sub_1C754FDBC();
  sub_1C754FDBC();
  sub_1C754FDBC();
  sub_1C74DD0E4();
  sub_1C754FDBC();
  sub_1C754FDBC();
  sub_1C754FDBC();
  sub_1C754FDBC();
  sub_1C754FDBC();
  return sub_1C754FDDC();
}

uint64_t sub_1C74DCB24@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1C754FDEC();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t QueryUnderstandingCompletion.init(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216FA8);
  sub_1C74DC190();
  OUTLINED_FUNCTION_5_109();
  if (v2)
  {
    sub_1C754FD4C();
    OUTLINED_FUNCTION_3();
    return (*(v5 + 8))(a1);
  }

  else
  {
    OUTLINED_FUNCTION_5_109();
    OUTLINED_FUNCTION_5_109();
    OUTLINED_FUNCTION_5_109();
    sub_1C74DD0E4();
    sub_1C754FD3C();
    OUTLINED_FUNCTION_5_109();
    OUTLINED_FUNCTION_5_109();
    sub_1C754FD3C();
    sub_1C754FD3C();
    sub_1C754FD4C();
    OUTLINED_FUNCTION_3();
    result = (*(v7 + 8))(a1);
    *a2 = v8;
    a2[1] = v8;
    a2[2] = v8;
    a2[3] = v8;
    a2[4] = v8;
    a2[5] = v9;
    a2[6] = v10;
    a2[7] = v8;
    a2[8] = v8;
    a2[9] = v8;
    a2[10] = v9;
    a2[11] = v8;
    a2[12] = v9;
  }

  return result;
}

unint64_t sub_1C74DD0E4()
{
  result = qword_1EC21C890;
  if (!qword_1EC21C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C890);
  }

  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> QueryUnderstandingCompletion.init(jsonString:)(PhotosIntelligence::QueryUnderstandingCompletion *__return_ptr retstr, Swift::String jsonString)
{
  v3 = v2;
  object = jsonString._object;
  countAndFlagsBits = jsonString._countAndFlagsBits;
  v7 = sub_1C75506DC();
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC214238 != -1)
  {
    swift_once();
  }

  v13 = sub_1C754FF1C();
  __swift_project_value_buffer(v13, qword_1EC21C828);
  sub_1C75504FC();
  v14 = sub_1C754FEEC();
  v15 = sub_1C755118C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = v2;
    v17 = v16;
    v28 = swift_slowAlloc();
    v29 = v7;
    __src[0] = v28;
    *v17 = 136315138;
    sub_1C75504FC();
    v18 = sub_1C6F765A4(countAndFlagsBits, object, __src);
    v19 = retstr;
    v20 = v18;

    *(v17 + 4) = v20;
    retstr = v19;
    _os_log_impl(&dword_1C6F5C000, v14, v15, "Attempting to decode json string for Query Understanding Completion: %s", v17, 0xCu);
    v21 = v28;
    __swift_destroy_boxed_opaque_existential_1(v28);
    v22 = v21;
    v7 = v29;
    MEMORY[0x1CCA5F8E0](v22, -1, -1);
    v23 = v17;
    v3 = v31;
    MEMORY[0x1CCA5F8E0](v23, -1, -1);
  }

  sub_1C75506CC();
  v24 = sub_1C755069C();
  v26 = v25;

  (*(v9 + 8))(v12, v7);
  if (v26 >> 60 == 15)
  {
    sub_1C74DD440();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    sub_1C754D73C();
    swift_allocObject();
    sub_1C754D72C();
    sub_1C74DD494();
    sub_1C754D71C();
    sub_1C70B5C10(v24, v26);

    if (!v3)
    {
      memcpy(retstr, __src, sizeof(PhotosIntelligence::QueryUnderstandingCompletion));
    }
  }
}

unint64_t sub_1C74DD440()
{
  result = qword_1EC21C898;
  if (!qword_1EC21C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C898);
  }

  return result;
}

unint64_t sub_1C74DD494()
{
  result = qword_1EC21C8A0;
  if (!qword_1EC21C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C8A0);
  }

  return result;
}

uint64_t sub_1C74DD4E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7301239 && a2 == 0xE300000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1952540791 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1852139639 && a2 == 0xE400000000000000;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6572656877 && a2 == 0xE500000000000000;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x636973756DLL && a2 == 0xE500000000000000;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1685024621 && a2 == 0xE400000000000000;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x64726F5F74726F73 && a2 == 0xEA00000000007265;
              if (v11 || (sub_1C7551DBC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 1885958772 && a2 == 0xE400000000000000;
                if (v12 || (sub_1C7551DBC() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x656D69745F6C6C61 && a2 == 0xE800000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1C7551DBC();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t sub_1C74DD7B0(char a1)
{
  result = 7301239;
  switch(a1)
  {
    case 1:
      result = 1952540791;
      break;
    case 2:
      result = 1852139639;
      break;
    case 3:
      result = 0x6572656877;
      break;
    case 4:
      result = 0x636973756DLL;
      break;
    case 5:
      result = 1685024621;
      break;
    case 6:
      result = 0x64726F5F74726F73;
      break;
    case 7:
      result = 1885958772;
      break;
    case 8:
      result = 0x656D69745F6C6C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C74DD888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C74DD4E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C74DD8B0(uint64_t a1)
{
  v2 = sub_1C74DDF3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C74DD8EC(uint64_t a1)
{
  v2 = sub_1C74DDF3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t QueryUnderstandingCompletion.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C8A8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C74DDF3C();
  sub_1C7551FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216FA8);
  sub_1C74DC6C4();
  OUTLINED_FUNCTION_6_118();
  sub_1C7551C1C();
  v23 = v25;
  OUTLINED_FUNCTION_1_150(1);
  v22 = v25;
  OUTLINED_FUNCTION_1_150(2);
  v21 = v25;
  OUTLINED_FUNCTION_1_150(3);
  v20 = v25;
  sub_1C74DDF90();
  OUTLINED_FUNCTION_6_118();
  sub_1C7551C1C();
  v17 = v25;
  v19 = v26;
  v18 = v27;
  OUTLINED_FUNCTION_1_150(5);
  v16 = v25;
  OUTLINED_FUNCTION_1_150(6);
  v15 = v25;
  LOBYTE(v25) = 7;
  OUTLINED_FUNCTION_6_118();
  v6 = sub_1C7551BBC();
  v8 = v7;
  v38 = 8;
  OUTLINED_FUNCTION_6_118();
  v14 = sub_1C7551BBC();
  v10 = v9;
  v11 = OUTLINED_FUNCTION_2_140();
  v12(v11);
  __src[0] = v23;
  __src[1] = v22;
  __src[2] = v21;
  __src[3] = v20;
  __src[4] = v17;
  __src[5] = v26;
  __src[6] = v27;
  __src[7] = v16;
  __src[8] = v15;
  __src[9] = v6;
  __src[10] = v8;
  __src[11] = v14;
  __src[12] = v10;
  memcpy(a2, __src, 0x68uLL);
  sub_1C735E798(__src, &v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v25 = v23;
  v26 = v22;
  v27 = v21;
  v28 = v20;
  v29 = v17;
  v30 = v19;
  v31 = v18;
  v32 = v16;
  v33 = v15;
  v34 = v6;
  v35 = v8;
  v36 = v14;
  v37 = v10;
  return sub_1C7047668(&v25);
}

unint64_t sub_1C74DDF3C()
{
  result = qword_1EC21C8B0;
  if (!qword_1EC21C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C8B0);
  }

  return result;
}

unint64_t sub_1C74DDF90()
{
  result = qword_1EC21C8B8;
  if (!qword_1EC21C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C8B8);
  }

  return result;
}

unint64_t sub_1C74DDFE8()
{
  result = qword_1EC21C8C0;
  if (!qword_1EC21C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C8C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for QueryUnderstandingCompletionParseError(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C74DE0F0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C74DE130(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for QueryUnderstandingCompletion.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for QueryUnderstandingCompletionMusic.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C74DE350()
{
  result = qword_1EC21C8C8;
  if (!qword_1EC21C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C8C8);
  }

  return result;
}

unint64_t sub_1C74DE3A8()
{
  result = qword_1EC21C8D0;
  if (!qword_1EC21C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C8D0);
  }

  return result;
}

unint64_t sub_1C74DE400()
{
  result = qword_1EC21C8D8;
  if (!qword_1EC21C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C8D8);
  }

  return result;
}

unint64_t sub_1C74DE458()
{
  result = qword_1EC21C8E0;
  if (!qword_1EC21C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C8E0);
  }

  return result;
}

unint64_t sub_1C74DE4B0()
{
  result = qword_1EC21C8E8;
  if (!qword_1EC21C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C8E8);
  }

  return result;
}

unint64_t sub_1C74DE508()
{
  result = qword_1EC21C8F0;
  if (!qword_1EC21C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C8F0);
  }

  return result;
}

char *sub_1C74DE590(void *a1, uint64_t a2)
{
  v5 = *(v2 + qword_1EC21B180);
  type metadata accessor for PerformanceMeasure();
  swift_allocObject();
  v6 = v5;
  PerformanceMeasure.init(name:log:)();
  v7 = a1;
  v8 = sub_1C754FEEC();
  v9 = sub_1C755117C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45[0] = v44;
    *v10 = 136315138;
    v11 = [v7 localIdentifier];
    v12 = sub_1C755068C();
    v14 = v13;

    v15 = sub_1C6F765A4(v12, v14, v45);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1C6F5C000, v8, v9, "Start electing assets for social group %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v16 = sub_1C70A65EC(a2);
  type metadata accessor for PersonCuration();
  v17 = static PersonCuration.fetchCuratedAssets(for:options:useSummary:includeOthersInSocialGroupAssets:)(v7, v16, 0, 0);
  if ([v17 count])
  {
    sub_1C70A51A4();
    v19 = v18;
    v20 = objc_allocWithZone(type metadata accessor for AssetElectionResult());
    v21 = AssetElectionResult.init(fetchResult:)(v19);

    sub_1C6F85170();

    return v21;
  }

  else
  {
    v23 = v7;
    v24 = sub_1C754FEEC();
    v25 = sub_1C755117C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v45[0] = swift_slowAlloc();
      v27 = v45[0];
      *v26 = 136315138;
      v28 = [v23 localIdentifier];
      v29 = sub_1C755068C();
      v31 = v30;

      v32 = sub_1C6F765A4(v29, v31, v45);

      *(v26 + 4) = v32;
      _os_log_impl(&dword_1C6F5C000, v24, v25, "Found 0 curated asset for social group %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v33 = objc_allocWithZone(type metadata accessor for AssetElectionResult());
    v34 = v17;
    v35 = AssetElectionResult.init(fetchResult:)(v34);
    v36 = [v23 localIdentifier];
    v37 = sub_1C755068C();
    v39 = v38;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216E48);
    sub_1C74DE9B0();
    v40 = swift_allocError();
    *v41 = 6;
    *(v41 + 8) = v37;
    *(v41 + 16) = v39;
    *(v41 + 24) = 1;

    v42 = OBJC_IVAR____TtC18PhotosIntelligence19AssetElectionResult_error;
    swift_beginAccess();
    v43 = *&v35[v42];
    *&v35[v42] = v40;

    sub_1C6F85170();

    return v35;
  }
}

unint64_t sub_1C74DE9B0()
{
  result = qword_1EC216E50;
  if (!qword_1EC216E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC216E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216E50);
  }

  return result;
}

id SocialGroupAssetElector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SocialGroupAssetElector();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SocialGroupAssetElector()
{
  result = qword_1EC21C8F8;
  if (!qword_1EC21C8F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *PromptSuggestionSafetyValidator.__allocating_init(photoLibrary:)(void *a1)
{
  type metadata accessor for StoryGenerationCache();
  swift_allocObject();
  v2 = a1;
  v3 = StoryGenerationCache.init()();
  v4 = type metadata accessor for SafetyController(0);
  v7 = v2;
  v8 = 2;
  v9 = v3;
  v5 = SafetyController.__allocating_init(storyPhotoLibraryContext:)(&v7);

  result = swift_allocObject();
  result[5] = v4;
  result[6] = &protocol witness table for SafetyController;
  result[2] = v5;
  return result;
}

uint64_t sub_1C74DEB9C()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD07BD8);
  __swift_project_value_buffer(v0, qword_1EDD07BD8);
  return sub_1C754FEFC();
}

uint64_t sub_1C74DEC4C(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = __swift_mutable_project_boxed_opaque_existential_0(a1, v5);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = a2(v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

uint64_t PromptSuggestionSafetyValidator.safeFallbackPrompts(_:eventRecorder:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C74DED64, 0, 0);
}

void sub_1C74DED64()
{
  v2 = MEMORY[0x1E69E7CC0];
  v0[2] = MEMORY[0x1E69E7CC0];
  v3 = v0[3];
  if (v3 >> 62)
  {
    v4 = sub_1C75516BC();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[6] = v4;
  if (!v4)
  {
    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_93_0();

    __asm { BRAA            X2, X16 }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[3];
    v0[7] = 0;
    v0[8] = v2;
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1CCA5DDD0](0);
    }

    else
    {
      v6 = *(v5 + 32);
    }

    v2 = v6;
    v0[9] = v6;
    if (qword_1EDD07BD0 == -1)
    {
LABEL_12:
      v9 = sub_1C754FF1C();
      v0[10] = __swift_project_value_buffer(v9, qword_1EDD07BD8);
      v10 = v2;
      v11 = sub_1C754FEEC();
      v12 = sub_1C75511BC();

      if (os_log_type_enabled(v11, v12))
      {
        OUTLINED_FUNCTION_41_0();
        v13 = OUTLINED_FUNCTION_31_0();
        v25 = v13;
        *v1 = 136642819;
        v14 = [v10 description];
        v15 = sub_1C755068C();
        v17 = v16;

        v18 = sub_1C6F765A4(v15, v17, &v25);

        *(v1 + 4) = v18;
        OUTLINED_FUNCTION_12_4(&dword_1C6F5C000, v19, v20, "[Safety] Fallback prompt requires safety validation: %{sensitive}s");
        __swift_destroy_boxed_opaque_existential_1(v13);
        OUTLINED_FUNCTION_10_1();
        OUTLINED_FUNCTION_109();
      }

      OUTLINED_FUNCTION_4_112();
      v21 = [v10 string];
      sub_1C755068C();

      OUTLINED_FUNCTION_3_127();
      v22 = swift_task_alloc();
      v0[12] = v22;
      *v22 = v0;
      OUTLINED_FUNCTION_0_209(v22);
      OUTLINED_FUNCTION_2_141();
      OUTLINED_FUNCTION_12_89();
      OUTLINED_FUNCTION_93_0();

      __asm { BRAA            X7, X16 }
    }
  }

  OUTLINED_FUNCTION_1_151();
  goto LABEL_12;
}

uint64_t sub_1C74DF030()
{
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  *(v4 + 104) = v0;

  if (v0)
  {
    v5 = sub_1C74DF454;
  }

  else
  {

    v5 = sub_1C74DF16C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1C74DF16C()
{
  MEMORY[0x1CCA5D040](*(v0 + 72));
  if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C7550B9C();
  }

  v2 = *(v0 + 72);
  sub_1C7550BEC();

  v3 = *(v0 + 16);
  v4 = *(v0 + 56) + 1;
  if (v4 == *(v0 + 48))
  {
    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_93_0();

    __asm { BRAA            X2, X16 }
  }

  *(v0 + 56) = v4;
  *(v0 + 64) = v3;
  v7 = *(v0 + 24);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1CCA5DDD0]();
  }

  else
  {
    v8 = *(v7 + 8 * v4 + 32);
  }

  v9 = v8;
  *(v0 + 72) = v8;
  if (qword_1EDD07BD0 != -1)
  {
    OUTLINED_FUNCTION_1_151();
  }

  v10 = sub_1C754FF1C();
  *(v0 + 80) = __swift_project_value_buffer(v10, qword_1EDD07BD8);
  v11 = v9;
  v12 = sub_1C754FEEC();
  v13 = sub_1C75511BC();

  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_41_0();
    v14 = OUTLINED_FUNCTION_31_0();
    v26 = v14;
    *v1 = 136642819;
    v15 = [v11 description];
    v16 = sub_1C755068C();
    v18 = v17;

    v19 = sub_1C6F765A4(v16, v18, &v26);

    *(v1 + 4) = v19;
    OUTLINED_FUNCTION_12_4(&dword_1C6F5C000, v20, v21, "[Safety] Fallback prompt requires safety validation: %{sensitive}s");
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_109();
  }

  OUTLINED_FUNCTION_4_112();
  v22 = [v11 string];
  sub_1C755068C();

  OUTLINED_FUNCTION_3_127();
  v23 = swift_task_alloc();
  *(v0 + 96) = v23;
  *v23 = v0;
  OUTLINED_FUNCTION_0_209();
  OUTLINED_FUNCTION_2_141();
  OUTLINED_FUNCTION_12_89();
  OUTLINED_FUNCTION_93_0();

  __asm { BRAA            X7, X16 }
}

uint64_t sub_1C74DF454()
{
  v42 = v0;
  v1 = *(v0 + 72);
  v2 = sub_1C754FEEC();
  v3 = sub_1C755119C();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 104);
  v6 = *(v0 + 72);
  v7 = "ionType";
  v8 = &selRef_clsSceneClassifications;
  if (v4)
  {
    v9 = OUTLINED_FUNCTION_41_0();
    v10 = swift_slowAlloc();
    v41 = v10;
    *v9 = 136642819;
    v11 = [v6 description];
    v12 = sub_1C755068C();
    v14 = v13;

    v15 = v12;
    v7 = "PHUtilityCollectionType" + 16;
    v16 = sub_1C6F765A4(v15, v14, &v41);

    *(v9 + 4) = v16;
    v8 = &selRef_clsSceneClassifications;
    _os_log_impl(&dword_1C6F5C000, v2, v3, "[Safety] Fallback prompt didn't pass safety validation: %{sensitive}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_10_1();
  }

  else
  {
  }

  v17 = *(v0 + 56) + 1;
  if (v17 == *(v0 + 48))
  {
    OUTLINED_FUNCTION_116();

    return v18();
  }

  else
  {
    *(v0 + 56) = v17;
    v20 = *(v0 + 24);
    if ((v20 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x1CCA5DDD0]();
    }

    else
    {
      v21 = *(v20 + 8 * v17 + 32);
    }

    v22 = v21;
    *(v0 + 72) = v21;
    if (qword_1EDD07BD0 != -1)
    {
      OUTLINED_FUNCTION_1_151();
    }

    v23 = sub_1C754FF1C();
    *(v0 + 80) = __swift_project_value_buffer(v23, qword_1EDD07BD8);
    v24 = v22;
    v25 = sub_1C754FEEC();
    v26 = sub_1C75511BC();

    if (os_log_type_enabled(v25, v26))
    {
      OUTLINED_FUNCTION_41_0();
      v27 = OUTLINED_FUNCTION_31_0();
      v41 = v27;
      *v3 = *(v7 + 346);
      v28 = [v24 v8[72]];
      v29 = sub_1C755068C();
      v31 = v30;

      v32 = sub_1C6F765A4(v29, v31, &v41);

      *(v3 + 4) = v32;
      OUTLINED_FUNCTION_12_4(&dword_1C6F5C000, v33, v34, "[Safety] Fallback prompt requires safety validation: %{sensitive}s");
      __swift_destroy_boxed_opaque_existential_1(v27);
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_109();
    }

    OUTLINED_FUNCTION_4_112();
    v35 = [v24 string];
    sub_1C755068C();
    v37 = v36;

    *(v0 + 88) = v37;
    *(v0 + 112) = 0;
    v40 = (*(v3 + 16) + **(v3 + 16));
    v38 = swift_task_alloc();
    *(v0 + 96) = v38;
    *v38 = v0;
    OUTLINED_FUNCTION_0_209();
    v39 = OUTLINED_FUNCTION_2_141();

    return v40(v39);
  }
}

uint64_t PromptSuggestionSafetyValidator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1C74DF87C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C74DF924;

  return PromptSuggestionSafetyValidator.safeFallbackPrompts(_:eventRecorder:)(a1, a2);
}

uint64_t sub_1C74DF924(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_14();
  *v4 = v3;

  OUTLINED_FUNCTION_116();

  return v5(a1);
}

uint64_t *sub_1C74DFA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  v11 = sub_1C74DFB24(v9, v10, a3, a4);
  (*(v7 + 8))(a1, a3);
  return v11;
}

uint64_t *sub_1C74DFB24(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  return a2;
}

uint64_t dispatch thunk of PromptSuggestionSafetyValidating.safeFallbackPrompts(_:eventRecorder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C74DF924;

  return v11(a1, a2, a3, a4);
}

uint64_t SafeTokenAnalyzer.__allocating_init(photoLibrary:)(void *a1)
{
  OUTLINED_FUNCTION_0_210();
  v2 = swift_allocObject();
  SafeTokenAnalyzer.init(photoLibrary:)(a1);
  return v2;
}

uint64_t SafeTokenAnalyzer.personOrPetUUIDsWithNegativeFeedback.getter()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 24);
  v2 = v1;
  if ((*(v0 + 32) & 1) == 0)
  {
    if (qword_1EDD0EE28 != -1)
    {
      swift_once();
    }

    v3 = qword_1EDD0EE30;
    type metadata accessor for PerformanceMeasure();
    swift_allocObject();
    v4 = v3;
    PerformanceMeasure.init(name:log:)();
    v5 = [objc_allocWithZone(MEMORY[0x1E6978B08]) initWithPhotoLibrary_];
    v6 = [v5 personUUIDsWithNegativeFeedback];

    v2 = sub_1C7550F8C();
    sub_1C6F85170();
    sub_1C74E0014(v1, 0);

    *(v0 + 24) = v2;
    *(v0 + 32) = 1;
  }

  sub_1C75504FC();
  os_unfair_lock_unlock((v0 + 16));
  return v2;
}

uint64_t sub_1C74DFE98()
{
  sub_1C7047818();
  result = sub_1C755146C();
  qword_1EDD0EE30 = result;
  return result;
}

uint64_t SafeTokenAnalyzer.init(photoLibrary:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10[-v4];
  v10[8] = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = a1;
  *(v1 + 32) = 0;
  v6 = a1;
  v7 = sub_1C7550D5C();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;

  sub_1C6FEB80C(0, 0, v5, &unk_1C75908E0, v8);

  return v1;
}

void sub_1C74E0014(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1C74E0040()
{
  SafeTokenAnalyzer.personOrPetUUIDsWithNegativeFeedback.getter();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C74E00A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C72CCAE8;

  return sub_1C74E0020(a1, v4, v5, v6);
}

uint64_t SafeTokenAnalyzer.__allocating_init(personOrPetUUIDsWithNegativeFeedback:)(uint64_t a1)
{
  OUTLINED_FUNCTION_0_210();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 1;
  return result;
}

uint64_t SafeTokenAnalyzer.init(personOrPetUUIDsWithNegativeFeedback:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1;
  *(v1 + 32) = 1;
  return v1;
}

BOOL SafeTokenAnalyzer.isSafe(personExtendedToken:)()
{
  v0 = SafeTokenAnalyzer.personOrPetUUIDsWithNegativeFeedback.getter();
  v1 = OUTLINED_FUNCTION_1_152(v0);

  return (v1 & 1) == 0;
}

BOOL SafeTokenAnalyzer.isSafe(petExtendedToken:)()
{
  v0 = SafeTokenAnalyzer.personOrPetUUIDsWithNegativeFeedback.getter();
  v1 = OUTLINED_FUNCTION_1_152(v0);

  return (v1 & 1) == 0;
}

uint64_t SafeTokenAnalyzer.__deallocating_deinit()
{
  sub_1C74E0268(v0 + 24);
  OUTLINED_FUNCTION_0_210();

  return swift_deallocClassInstance();
}

Swift::Double __swiftcall PNTextEmbeddingResult.calibratedScoreForImageSearch(with:)(Swift::Double with)
{
  v2 = sub_1C7550F2C();
  v3 = [v1 calibratedScoreForImageSearchWithBaseScore_];

  [v3 doubleValue];
  v5 = v4;

  return v5;
}

uint64_t sub_1C74E0464(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_1C6FF5694(v4, v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21C910);
    v7 = sub_1C7550B5C();

    return sub_1C6FF5698(v4, v7);
  }
}

uint64_t PNTextEmbeddingResult.embeddingFloatValues.getter()
{
  v1 = [v0 embedding];
  sub_1C6FA7014();
  v2 = sub_1C7550B5C();

  v3 = sub_1C6FB6304();
  if (!v3)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v14 = MEMORY[0x1E69E7CC0];
  result = sub_1C716DD68(0, v3 & ~(v3 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v14;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1CCA5DDD0](v6, v2);
      }

      else
      {
        v8 = *(v2 + 8 * v6 + 32);
      }

      v9 = v8;
      [v8 floatValue];
      v11 = v10;

      v13 = *(v14 + 16);
      v12 = *(v14 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1C716DD68(v12 > 1, v13 + 1, 1);
      }

      ++v6;
      *(v14 + 16) = v13 + 1;
      *(v14 + 4 * v13 + 32) = v11;
    }

    while (v4 != v6);

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t PNTextEmbeddingService.encode(_:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C74E0690, 0, 0);
}

uint64_t sub_1C74E0690()
{
  v1 = v0[20];
  v2 = sub_1C7550B3C();
  v0[21] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1C74E07CC;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217AB0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C74E0464;
  v0[13] = &block_descriptor_47;
  v0[14] = v3;
  [v1 requestTextEmbeddings:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C74E07CC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1C74E0BE0;
  }

  else
  {
    v2 = sub_1C74E08DC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

unint64_t sub_1C74E08DC()
{
  v1 = *(v0 + 144);

  v2 = sub_1C6FB6304();
  if (!v2)
  {

    v5 = MEMORY[0x1E69E7CC0];
LABEL_27:
    v21 = *(v0 + 8);

    return v21(v5);
  }

  v3 = v2;
  v28 = MEMORY[0x1E69E7CC0];
  result = sub_1C716E42C(0, v2 & ~(v2 >> 63), 0);
  if (v3 < 0)
  {
    goto LABEL_33;
  }

  result = 0;
  v25 = v3;
  v26 = v1 & 0xC000000000000001;
  v5 = v28;
  v24 = v1 & 0xFFFFFFFFFFFFFF8;
  v22 = v0;
  v23 = v1 + 32;
  while (1)
  {
    v6 = result + 1;
    if (__OFADD__(result, 1))
    {
      break;
    }

    v27 = v5;
    if (v26)
    {
      v7 = MEMORY[0x1CCA5DDD0]();
    }

    else
    {
      if (result >= *(v24 + 16))
      {
        goto LABEL_32;
      }

      v7 = *(v23 + 8 * result);
      swift_unknownObjectRetain();
    }

    v8 = [v7 embedding];
    sub_1C6FA7014();
    v9 = sub_1C7550B5C();

    if (v9 >> 62)
    {
      v10 = sub_1C75516BC();
      if (!v10)
      {
LABEL_21:

        swift_unknownObjectRelease();
        v12 = MEMORY[0x1E69E7CC0];
        goto LABEL_22;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        goto LABEL_21;
      }
    }

    v29 = MEMORY[0x1E69E7CC0];
    result = sub_1C716DD68(0, v10 & ~(v10 >> 63), 0);
    if (v10 < 0)
    {
      goto LABEL_31;
    }

    v11 = 0;
    v12 = v29;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1CCA5DDD0](v11, v9);
      }

      else
      {
        v13 = *(v9 + 8 * v11 + 32);
      }

      v14 = v13;
      [v13 floatValue];
      v16 = v15;

      v18 = *(v29 + 16);
      v17 = *(v29 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1C716DD68(v17 > 1, v18 + 1, 1);
      }

      ++v11;
      *(v29 + 16) = v18 + 1;
      *(v29 + 4 * v18 + 32) = v16;
    }

    while (v10 != v11);

    swift_unknownObjectRelease();
LABEL_22:
    v5 = v27;
    v20 = *(v27 + 16);
    v19 = *(v27 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1C716E42C((v19 > 1), v20 + 1, 1);
      v5 = v27;
    }

    *(v5 + 16) = v20 + 1;
    *(v5 + 8 * v20 + 32) = v12;
    result = v6;
    if (v6 == v25)
    {

      v0 = v22;
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1C74E0BE0()
{
  v1 = *(v0 + 168);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

float static PNTextEmbeddingService.score(from:relativeTo:)(uint64_t a1, uint64_t a2)
{
  sub_1C73C6D60(a1, a2);
  v3 = v2 > 1.0 || v2 < 0.0;
  result = 1.0 - v2;
  if (v3)
  {
    return 0.0;
  }

  return result;
}

id static PNTextEmbeddingService.modelVersionIntValue()()
{
  v0 = [swift_getObjCClassFromMetadata() modelVersion];
  v1 = v0;
  if (!v0)
  {
    return 0;
  }

  v2 = [v0 integerValue];

  return v2;
}

void sub_1C74E0CEC(void *a1, uint64_t a2)
{
  v4 = sub_1C74E1268();
  v5 = [a1 curationModel];
  v6 = [v4 confidenceThresholdBySceneIdentifierWithCurationModel_];

  sub_1C6F65BE8(0, &qword_1EDD108E0);
  sub_1C7080178(&qword_1EDD0CD00, &qword_1EDD108E0);
  v27 = sub_1C75504AC();

  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1C755165C();
    sub_1C6F65BE8(0, &qword_1EDD0CE08);
    sub_1C7080178(&qword_1EDD0CE00, &qword_1EDD0CE08);
    sub_1C7550FEC();
    a2 = v29;
    v7 = v30;
    v8 = v31;
    v9 = v32;
    v10 = v33;
  }

  else
  {
    v11 = -1 << *(a2 + 32);
    v7 = a2 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a2 + 56);
    sub_1C75504FC();
    v9 = 0;
  }

  v26 = v8;
  v14 = (v8 + 64) >> 6;
  while (1)
  {
    if (a2 < 0)
    {
      if (!sub_1C75516FC() || (sub_1C6F65BE8(0, &qword_1EDD0CE08), swift_dynamicCast(), (v17 = v28) == 0))
      {
LABEL_28:
        sub_1C7251404();

        return;
      }

      goto LABEL_17;
    }

    v15 = v9;
    v16 = v10;
    if (!v10)
    {
      break;
    }

LABEL_13:
    v10 = (v16 - 1) & v16;
    v17 = *(*(a2 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v17)
    {
      goto LABEL_28;
    }

LABEL_17:
    [v17 extendedSceneIdentifier];
    v18 = sub_1C7551FDC();
    if ((v27 & 0xC000000000000001) != 0)
    {
      if (sub_1C7551A8C())
      {
        swift_dynamicCast();
        v19 = v28;
        goto LABEL_23;
      }

LABEL_26:

LABEL_27:
    }

    else
    {
      if (!*(v27 + 16))
      {
        goto LABEL_26;
      }

      sub_1C6FC2DD0();
      if ((v21 & 1) == 0)
      {
        goto LABEL_26;
      }

      v19 = *(*(v27 + 56) + 8 * v20);
LABEL_23:

      if (!v19)
      {
        goto LABEL_27;
      }

      [v17 confidence];
      v23 = v22;
      [v19 doubleValue];
      v25 = v24;

      if (v25 <= v23)
      {
        goto LABEL_28;
      }
    }
  }

  while (1)
  {
    v9 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_28;
    }

    v16 = *(v7 + 8 * v9);
    ++v15;
    if (v16)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_1C74E10B4()
{
  v1 = *(v0 + OBJC_IVAR___PNAssetFetcherLimiter_count);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + OBJC_IVAR___PNAssetFetcherLimiter_count) = v3;
  }
}

unint64_t AssetFetcherTypeLimit.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C74E112C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = AssetFetcherTypeLimit.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id AssetFetcherLimiter.init(type:limit:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___PNAssetFetcherLimiter_type] = a1;
  *&v2[OBJC_IVAR___PNAssetFetcherLimiter_limit] = a2;
  *&v2[OBJC_IVAR___PNAssetFetcherLimiter_count] = 0;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_1C74E1268()
{
  v1 = *(v0 + OBJC_IVAR___PNAssetFetcherLimiter_type);
  if (!v1)
  {
    v2 = &unk_1F469EF48;
LABEL_5:
    sub_1C6F65BE8(0, &qword_1EC21C948);
    return sub_1C74E1304(v2, 4);
  }

  if (v1 == 1)
  {
    v2 = &unk_1F469EF98;
    goto LABEL_5;
  }

  result = sub_1C7551E1C();
  __break(1u);
  return result;
}

id sub_1C74E1304(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = sub_1C7550B3C();

  v5 = [v3 initWithSceneNames:v4 thresholdType:a2];

  return v5;
}

id AssetFetcherLimiter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AssetFetcherLimiter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t AssetFetcherLimiter.limitType.getter()
{
  result = *(v0 + OBJC_IVAR___PNAssetFetcherLimiter_type);
  if (result >= 2)
  {
    result = sub_1C7551E1C();
    __break(1u);
  }

  return result;
}

unint64_t sub_1C74E14B8()
{
  result = qword_1EC21C938;
  if (!qword_1EC21C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C938);
  }

  return result;
}

uint64_t sub_1C74E156C(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422F50();
    v6 = v7;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  result = sub_1C74E52F0(v10, a2, a3);
  *a1 = v6;
  return result;
}

char *sub_1C74E15F0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422F68();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C74E5404(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C74E165C()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21C950);
  __swift_project_value_buffer(v0, qword_1EC21C950);
  return sub_1C754FEFC();
}

uint64_t static PromptLLMQUBuilder.loadAndBuildLocalizableStrings(from:to:)()
{
  v1 = sub_1C75506DC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C754DD6C();
  if (!v0)
  {
    v7 = result;
    v8 = v6;
    static PromptLLMQUBuilder.promptLLMQUParses(from:)();
    static PromptLLMQUBuilder.buildLocalizableString(for:)();
    v13 = v9;
    v11 = v10;

    v12[0] = v13;
    v12[1] = v11;
    sub_1C75506CC();
    sub_1C6FB5E8C();
    sub_1C755158C();
    (*(v2 + 8))(v4, v1);
    sub_1C6FC1640(v7, v8);
  }

  return result;
}

uint64_t static PromptLLMQUBuilder.promptLLMQUParses(from:)()
{
  v2 = v0;
  __src[16] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  v4 = sub_1C754DDCC();
  __src[0] = 0;
  v5 = [v3 JSONObjectWithData:v4 options:0 error:__src];

  if (!v5)
  {
    v12 = __src[0];
    sub_1C754DBEC();

LABEL_8:
    swift_willThrow();
    return v1;
  }

  v6 = __src[0];
  sub_1C75515CC();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0);
  if (!swift_dynamicCast())
  {
    sub_1C74E51A8();
    swift_allocError();
    goto LABEL_8;
  }

  v7 = __dst[0];
  if (qword_1EC214250 != -1)
  {
LABEL_50:
    OUTLINED_FUNCTION_0_211();
    swift_once();
  }

  v8 = sub_1C754FF1C();
  __swift_project_value_buffer(v8, qword_1EC21C950);
  sub_1C75504FC();
  v9 = sub_1C754FEEC();
  v10 = sub_1C75511BC();
  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_13_3();
    v11 = swift_slowAlloc();
    OUTLINED_FUNCTION_159(v11, 3.852e-34);
    _os_log_impl(&dword_1C6F5C000, v9, v10, "Successfully loaded pre-computed qu outputs: %ld", v11, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v14 = v7 + 64;
  v15 = 1 << *(v7 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v7 + 64);
  v18 = (v15 + 63) >> 6;
  v58 = v7;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  v19 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v59 = v19;
  if (v17)
  {
    goto LABEL_19;
  }

  while (1)
  {
LABEL_15:
    v20 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (v20 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v20);
    ++v7;
    if (v17)
    {
      v7 = v20;
LABEL_19:
      while (1)
      {
        v21 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        sub_1C6F774EC(*(v58 + 56) + ((v7 << 11) | (32 * v21)), __src);
        sub_1C6F774EC(__src, __dst);
        if (swift_dynamicCast())
        {
          break;
        }

        v22 = sub_1C754FEEC();
        v23 = sub_1C755119C();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_1C6F5C000, v22, v23, "Unexpected value type. Expecting dict value.", v24, 2u);
          v19 = v59;
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        __swift_destroy_boxed_opaque_existential_1(__src);
        if (!v17)
        {
          goto LABEL_15;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(__src);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB3B28();
        v19 = v30;
      }

      v25 = v19;
      v26 = *(v19 + 16);
      v27 = v25;
      v28 = *(v25 + 24);
      if (v26 >= v28 >> 1)
      {
        OUTLINED_FUNCTION_15(v28);
        sub_1C6FB3B28();
        v27 = v31;
      }

      *(v27 + 16) = v26 + 1;
      v29 = v27 + 8 * v26;
      v19 = v27;
      *(v29 + 32) = v60;
      goto LABEL_14;
    }
  }

  sub_1C75504FC();
  v32 = sub_1C754FEEC();
  v33 = sub_1C75511BC();
  if (os_log_type_enabled(v32, v33))
  {
    OUTLINED_FUNCTION_13_3();
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = *(v19 + 16);

    _os_log_impl(&dword_1C6F5C000, v32, v33, "Found %ld json entries", v34, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v7 = 0;
  v35 = *(v19 + 16);
  v57 = MEMORY[0x1E69E7CC0];
  while (v35 != v7)
  {
    if (v7 >= *(v19 + 16))
    {
      goto LABEL_49;
    }

    swift_bridgeObjectRetain_n();
    PromptLLMQUBuilder.LLMQUParse.init(from:)(__src);
    if (v2)
    {
      v36 = v2;
      v37 = sub_1C754FEEC();
      v38 = sub_1C755119C();

      if (os_log_type_enabled(v37, v38))
      {
        OUTLINED_FUNCTION_13_3();
        v39 = v35;
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138412290;
        v42 = v2;
        v43 = _swift_stdlib_bridgeErrorToNSError();
        *(v40 + 4) = v43;
        *v41 = v43;
        _os_log_impl(&dword_1C6F5C000, v37, v38, "Failed to parse JSON into LLMQUParse. %@", v40, 0xCu);
        sub_1C7030CDC(v41, &qword_1EC215190);
        v19 = v59;
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        v35 = v39;
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {
      }

      v2 = 0;
      ++v7;
    }

    else
    {

      memcpy(__dst, __src, sizeof(__dst));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB516C();
        v57 = v46;
      }

      v45 = *(v57 + 16);
      v44 = *(v57 + 24);
      if (v45 >= v44 >> 1)
      {
        OUTLINED_FUNCTION_15(v44);
        sub_1C6FB516C();
        v57 = v47;
      }

      ++v7;
      *(v57 + 16) = v45 + 1;
      memcpy((v57 + (v45 << 7) + 32), __dst, 0x80uLL);
    }
  }

  v1 = v57;
  sub_1C75504FC();
  v48 = sub_1C754FEEC();
  v49 = sub_1C75511BC();
  if (os_log_type_enabled(v48, v49))
  {
    OUTLINED_FUNCTION_13_3();
    v50 = swift_slowAlloc();
    OUTLINED_FUNCTION_159(v50, 3.852e-34);
    OUTLINED_FUNCTION_16_74();
    _os_log_impl(v51, v52, v53, v54, v55, v56);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  return v1;
}

void static PromptLLMQUBuilder.buildLocalizableString(for:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  __dst[0] = v0;
  sub_1C75504FC();
  sub_1C74E15F0(__dst);
  v81 = __dst[0];
  if (qword_1EC214250 != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v2 = sub_1C754FF1C();
    v3 = __swift_project_value_buffer(v2, qword_1EC21C950);
    sub_1C75504FC();
    v78 = v3;
    v4 = sub_1C754FEEC();
    v5 = sub_1C75511BC();
    if (os_log_type_enabled(v4, v5))
    {
      OUTLINED_FUNCTION_13_3();
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = v1[2];

      _os_log_impl(&dword_1C6F5C000, v4, v5, "Building localizable.strings with %ld LLMQUParses", v6, 0xCu);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    v7 = 0;
    v80 = *(v81 + 16);
    v1 = MEMORY[0x1E69E7CC8];
    v79 = v81 + 32;
LABEL_6:
    if (v7 == v80)
    {
      break;
    }

    if (v7 < *(v81 + 16))
    {
      memcpy(__dst, (v79 + (v7 << 7)), 0x80uLL);
      v83 = v7 + 1;
      memcpy(__src, (v79 + (v7 << 7)), 0x80uLL);
      sub_1C70D3E80(__dst, v89);
      v8 = PromptLLMQUBuilder.LLMQUParse.allCustomValues.getter();
      v9 = 0;
      v10 = *(v8 + 16);
      v82 = v8;
      v11 = v8 + 40;
      for (i = v8 + 40; ; v11 = i)
      {
        for (j = v11 + 16 * v9; ; j += 16)
        {
          if (v10 == v9)
          {

            memcpy(v89, __src, 0x80uLL);
            sub_1C74E51FC(v89);
            v7 = v83;
            goto LABEL_6;
          }

          if (v9 >= v10)
          {
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v13 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_38;
          }

          v14 = sub_1C75506FC();
          v16 = v15;
          if (!v1[2])
          {
            break;
          }

          v17 = v14;
          sub_1C75504FC();
          sub_1C6F78124(v17, v16);
          LOBYTE(v17) = v18;

          if ((v17 & 1) == 0)
          {
            goto LABEL_17;
          }

          ++v9;
        }

        sub_1C75504FC();

LABEL_17:
        v19 = sub_1C75506FC();
        v21 = v20;
        memcpy(v89, __src, 0x80uLL);
        sub_1C70D3E80(v89, v88);
        swift_isUniquelyReferenced_nonNull_native();
        v87 = v1;
        v22 = sub_1C6F78124(v19, v21);
        v24 = v1[2];
        v25 = (v23 & 1) == 0;
        v1 = (v24 + v25);
        if (__OFADD__(v24, v25))
        {
          __break(1u);
          goto LABEL_42;
        }

        v26 = v22;
        v27 = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C988);
        if ((sub_1C7551A2C() & 1) == 0)
        {
          goto LABEL_21;
        }

        v28 = sub_1C6F78124(v19, v21);
        if ((v27 & 1) != (v29 & 1))
        {
          break;
        }

        v26 = v28;
LABEL_21:
        if (v27)
        {
          v1 = v87;
          v30 = (v87[7] + (v26 << 7));
          memcpy(v88, v30, sizeof(v88));
          memcpy(v30, v89, 0x80uLL);
          sub_1C74E51FC(v88);
        }

        else
        {
          v1 = v87;
          v87[(v26 >> 6) + 8] |= 1 << v26;
          v31 = (v1[6] + 16 * v26);
          *v31 = v19;
          v31[1] = v21;
          memcpy((v1[7] + (v26 << 7)), v89, 0x80uLL);
          v32 = v1[2];
          v33 = __OFADD__(v32, 1);
          v34 = v32 + 1;
          if (v33)
          {
            goto LABEL_43;
          }

          v1[2] = v34;
        }

        v9 = v13;
      }

      sub_1C7551E4C();
      __break(1u);
      goto LABEL_46;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    OUTLINED_FUNCTION_0_211();
    swift_once();
  }

  v35 = sub_1C75504FC();
  sub_1C739D384(v35, v36, v37, v38, v39, v40, v41, v42, v76, 0, v78, v79, v80, v81, v82, v83, i, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
  v44 = v43;

  __dst[0] = v44;
  v27 = v77;
  sub_1C74E156C(__dst, sub_1C74E5CD8, sub_1C74E55D8);
  if (v77)
  {
LABEL_46:

    __break(1u);
    return;
  }

  sub_1C74E156C(__dst, sub_1C74E57A8, sub_1C74E54F8);

  v45 = __dst[0];
  v46 = sub_1C754FEEC();
  v47 = sub_1C75511BC();
  if (os_log_type_enabled(v46, v47))
  {
    OUTLINED_FUNCTION_13_3();
    v48 = swift_slowAlloc();
    *v48 = 134217984;
    *(v48 + 4) = v1[2];
    OUTLINED_FUNCTION_16_74();
    _os_log_impl(v49, v50, v51, v52, v53, v54);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v55 = *(v45 + 16);
  if (v55)
  {
    v88[0] = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v56 = v55 - 1;
    v57 = v88[0];
    for (k = (v45 + 48); ; k += 144)
    {
      memcpy(__dst, k - 16, sizeof(__dst));
      v59 = __dst[0];
      v60 = __dst[1];
      memcpy(v89, k, 0x80uLL);
      sub_1C74E522C(__dst, __src);
      static PromptLLMQUBuilder.getCommentString(for:parse:)();
      v62 = v61;
      v64 = v63;
      v65 = static PromptLLMQUBuilder.getEntryKey(for:)();
      __src[0] = 34;
      __src[1] = 0xE100000000000000;
      MEMORY[0x1CCA5CD70](v65);

      MEMORY[0x1CCA5CD70](0x22203D2022, 0xE500000000000000);
      MEMORY[0x1CCA5CD70](v59, v60);
      MEMORY[0x1CCA5CD70](15138, 0xE200000000000000);
      v66 = __src[0];
      v67 = __src[1];
      __src[0] = v62;
      __src[1] = v64;
      MEMORY[0x1CCA5CD70](10, 0xE100000000000000);
      MEMORY[0x1CCA5CD70](v66, v67);

      sub_1C7030CDC(__dst, &qword_1EC218138);
      v68 = __src[0];
      v69 = __src[1];
      v88[0] = v57;
      v71 = *(v57 + 16);
      v70 = *(v57 + 24);
      if (v71 >= v70 >> 1)
      {
        OUTLINED_FUNCTION_15(v70);
        sub_1C6F7ED9C();
        v57 = v88[0];
      }

      *(v57 + 16) = v71 + 1;
      v72 = v57 + 16 * v71;
      *(v72 + 32) = v68;
      *(v72 + 40) = v69;
      if (!v56)
      {
        break;
      }

      --v56;
    }
  }

  else
  {
LABEL_39:

    v57 = MEMORY[0x1E69E7CC0];
  }

  __dst[0] = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  sub_1C703328C();
  v73 = sub_1C75505FC();
  v75 = v74;

  __dst[0] = 0xD00000000000003BLL;
  __dst[1] = 0x80000001C75B2FA0;
  MEMORY[0x1CCA5CD70](v73, v75);

  OUTLINED_FUNCTION_25_0();
}

uint64_t PromptLLMQUBuilder.LLMQUParse.init(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = 0xEE00676E69727453;
  v3 = 0x6574616C706D6574;
  v4 = OUTLINED_FUNCTION_17_83();
  sub_1C6FE3750(v4, 0xEE00676E69727453);
  if (v12)
  {
    if (OUTLINED_FUNCTION_3_128())
    {
      v2 = 0xEA00000000006873;
      v3 = 0x614874706D6F7270;
      v5 = OUTLINED_FUNCTION_17_83();
      sub_1C6FE3750(v5, 0xEA00000000006873);
      if (OUTLINED_FUNCTION_3_128())
      {
        v3 = 0xD000000000000012;
        v13 = v9;
        v2 = 0x80000001C75B2FE0;
        sub_1C6FE3750(0xD000000000000012, 0x80000001C75B2FE0);
        if (OUTLINED_FUNCTION_3_128())
        {
          v2 = 0xEB00000000786564;
          v3 = 0x6E4974706D6F7270;
          v6 = OUTLINED_FUNCTION_17_83();
          sub_1C6FE3750(v6, 0xEB00000000786564);

          result = OUTLINED_FUNCTION_3_128();
          if (result)
          {
            *a1 = v9;
            *(a1 + 8) = v10;
            *(a1 + 16) = v9;
            *(a1 + 24) = v10;
            *(a1 + 32) = v13;
            *(a1 + 40) = v10;
            *(a1 + 48) = v9;
            *(a1 + 56) = 0u;
            *(a1 + 72) = 0u;
            *(a1 + 88) = 0;
            *(a1 + 96) = 1;
            *(a1 + 112) = 0;
            *(a1 + 120) = 0;
            *(a1 + 104) = 0;
            return result;
          }
        }
      }
    }
  }

  else
  {

    sub_1C7030CDC(v11, &qword_1EC219770);
  }

  sub_1C74E529C();
  swift_allocError();
  *v8 = v3;
  v8[1] = v2;
  return swift_willThrow();
}

uint64_t PromptLLMQUBuilder.LLMQUParse.allCustomValues.getter()
{
  if (*(v0 + 88))
  {
    v1 = *(v0 + 88);
  }

  else
  {
    v1 = sub_1C74E478C();
    sub_1C75504FC();

    *(v0 + 88) = v1;
  }

  sub_1C75504FC();
  return v1;
}

uint64_t static PromptLLMQUBuilder.getEntryString(for:parse:)()
{
  static PromptLLMQUBuilder.getCommentString(for:parse:)();
  v1 = v0;
  OUTLINED_FUNCTION_0_11();
  v2 = static PromptLLMQUBuilder.getEntryKey(for:)();
  MEMORY[0x1CCA5CD70](v2);

  MEMORY[0x1CCA5CD70](0x22203D2022, 0xE500000000000000);
  v3 = OUTLINED_FUNCTION_0_11();
  MEMORY[0x1CCA5CD70](v3);
  MEMORY[0x1CCA5CD70](15138, 0xE200000000000000);
  MEMORY[0x1CCA5CD70](10, 0xE100000000000000);
  v4 = OUTLINED_FUNCTION_57_0();
  MEMORY[0x1CCA5CD70](v4);

  return v1;
}

void static PromptLLMQUBuilder.getCommentString(for:parse:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  memcpy(v18, v0, 0x80uLL);
  v2 = v18[0];
  v3 = v18[1];
  memcpy(__dst, v1, sizeof(__dst));
  type metadata accessor for PromptLocalizableStringBuilder();
  sub_1C70D3E80(v18, v16);
  sub_1C75504FC();
  static PromptLocalizableStringBuilder.getParameterTypes(from:)(v2, v3);
  static PromptLocalizableStringBuilder.getExampleLocalizedString(from:types:)();

  OUTLINED_FUNCTION_103();
  v4 = PromptLLMQUBuilder.LLMQUParse.typesOfCustomValue(_:)();
  v5 = *(v4 + 16);
  if (v5)
  {
    v16[0] = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v6 = 32;
    v7 = v16[0];
    do
    {
      v8 = 0xE300000000000000;
      v9 = 7301207;
      switch(*(v4 + v6))
      {
        case 1:
          v8 = 0xE400000000000000;
          v9 = 1952540759;
          break;
        case 2:
          v8 = 0xE500000000000000;
          v9 = 0x6572656857;
          break;
        case 3:
          v8 = 0xE400000000000000;
          v9 = 1852139607;
          break;
        default:
          break;
      }

      v16[0] = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        OUTLINED_FUNCTION_15(v10);
        sub_1C6F7ED9C();
        v7 = v16[0];
      }

      *(v7 + 16) = v11 + 1;
      v12 = v7 + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v8;
      ++v6;
      --v5;
    }

    while (v5);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v16[0] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  sub_1C703328C();
  sub_1C75505FC();

  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000018, 0x80000001C75B3000);
  v13 = OUTLINED_FUNCTION_15_1();
  MEMORY[0x1CCA5CD70](v13);

  MEMORY[0x1CCA5CD70](0x706D617845202E22, 0xED000022203A656CLL);
  v14 = OUTLINED_FUNCTION_0_11();
  MEMORY[0x1CCA5CD70](v14);

  MEMORY[0x1CCA5CD70](0xD000000000000010, 0x80000001C75B3020);
  memcpy(v16, __dst, sizeof(v16));
  sub_1C74E51FC(v16);
  v15 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v15);

  MEMORY[0x1CCA5CD70](3090976, 0xE300000000000000);
  OUTLINED_FUNCTION_25_0();
}

uint64_t static PromptLLMQUBuilder.getEntryKey(for:)()
{
  sub_1C75506FC();
  v0 = sub_1C6FB5E8C();
  v1 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_11_83();

  OUTLINED_FUNCTION_11_83();

  sub_1C7260C4C();

  v2 = OUTLINED_FUNCTION_15_1();
  MEMORY[0x1CCA5CD70](v2);

  if (qword_1EC214250 != -1)
  {
    OUTLINED_FUNCTION_0_211();
    swift_once();
  }

  v3 = sub_1C754FF1C();
  __swift_project_value_buffer(v3, qword_1EC21C950);
  sub_1C75504FC();
  sub_1C75504FC();
  v4 = sub_1C754FEEC();
  v5 = sub_1C755118C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    swift_slowAlloc();
    *v6 = 136315394;
    v7 = OUTLINED_FUNCTION_0_11();
    *(v6 + 4) = sub_1C6F765A4(v7, v8, v9);
    *(v6 + 12) = 2080;
    v10 = OUTLINED_FUNCTION_103();
    *(v6 + 14) = sub_1C6F765A4(v10, v11, v12);
    _os_log_impl(&dword_1C6F5C000, v4, v5, "CustomVal %s produces key %s", v6, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0](v13, v14, v15, v16, v17, v18, v19, v20, v1, v0);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  return OUTLINED_FUNCTION_103();
}

uint64_t PromptLLMQUBuilder.LLMQUParse.typesOfCustomValue(_:)()
{
  v4 = v0;
  v5 = PromptLLMQUBuilder.LLMQUParse.customWho.getter();
  OUTLINED_FUNCTION_18_72();
  v7 = MEMORY[0x1E69E6158];
  while (v1 + v2 != -1)
  {
    if (++v2 >= *(v5 + 16))
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

    v3 = v6 + 16;
    v8 = OUTLINED_FUNCTION_8_99();
    OUTLINED_FUNCTION_5_110(v8, v9, v10, v11, v12, v13, v14, v15, v63);
    v16 = sub_1C755156C();
    v6 = v3;
    if (!v16)
    {

      sub_1C6FB5258();
      v18 = v17;
      v7 = *(v17 + 16);
      v0 = v7 + 1;
      if (v7 < *(v17 + 24) >> 1)
      {
LABEL_6:
        *(v18 + 16) = v0;
        *(v18 + v7 + 32) = 0;
        goto LABEL_8;
      }

LABEL_43:
      OUTLINED_FUNCTION_6_119();
      v18 = v56;
      goto LABEL_6;
    }
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v0 = v4;
  PromptLLMQUBuilder.LLMQUParse.customWhat.getter();
  OUTLINED_FUNCTION_12_90();
  do
  {
    if (v2 + v3 == -1)
    {

      goto LABEL_18;
    }

    if (++v3 >= *(v7 + 16))
    {
      goto LABEL_40;
    }

    v20 = v19 + 16;
    v21 = OUTLINED_FUNCTION_8_99();
    OUTLINED_FUNCTION_5_110(v21, v22, v23, v24, v25, v26, v27, v28, v63);
    v29 = sub_1C755156C();
    v19 = v20;
  }

  while (v29);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_24_0();
    sub_1C6FB5258();
    v18 = v57;
  }

  v7 = *(v18 + 16);
  if (v7 >= *(v18 + 24) >> 1)
  {
    OUTLINED_FUNCTION_6_119();
    v18 = v58;
  }

  *(v18 + 16) = v7 + 1;
  *(v18 + v7 + 32) = 1;
LABEL_18:
  v0 = v4;
  PromptLLMQUBuilder.LLMQUParse.customWhere.getter();
  OUTLINED_FUNCTION_12_90();
  v31 = MEMORY[0x1E69E6158];
  do
  {
    if (v2 + v3 == -1)
    {

      goto LABEL_28;
    }

    if (++v3 >= *(v7 + 16))
    {
      goto LABEL_41;
    }

    v32 = v30 + 16;
    v33 = OUTLINED_FUNCTION_8_99();
    OUTLINED_FUNCTION_5_110(v33, v34, v35, v36, v37, v38, v39, v40, v63);
    v41 = sub_1C755156C();
    v30 = v32;
  }

  while (v41);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_24_0();
    sub_1C6FB5258();
    v18 = v59;
  }

  v42 = *(v18 + 16);
  if (v42 >= *(v18 + 24) >> 1)
  {
    OUTLINED_FUNCTION_6_119();
    v18 = v60;
  }

  *(v18 + 16) = v42 + 1;
  *(v18 + v42 + 32) = 2;
LABEL_28:
  v0 = v4;
  v4 = PromptLLMQUBuilder.LLMQUParse.customWhen.getter();
  OUTLINED_FUNCTION_18_72();
  v7 = MEMORY[0x1E69E6158];
  do
  {
    if (v31 + v2 == -1)
    {

      return v18;
    }

    if (++v2 >= *(v4 + 16))
    {
      goto LABEL_42;
    }

    v3 = v43 + 16;
    v44 = OUTLINED_FUNCTION_8_99();
    OUTLINED_FUNCTION_5_110(v44, v45, v46, v47, v48, v49, v50, v51, v63);
    v52 = sub_1C755156C();
    v43 = v3;
  }

  while (v52);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_24_0();
    sub_1C6FB5258();
    v18 = v61;
  }

  v54 = *(v18 + 16);
  v53 = *(v18 + 24);
  if (v54 >= v53 >> 1)
  {
    OUTLINED_FUNCTION_15(v53);
    sub_1C6FB5258();
    v18 = v62;
  }

  *(v18 + 16) = v54 + 1;
  *(v18 + v54 + 32) = 3;
  return v18;
}

uint64_t PromptLLMQUBuilder.QUParameterType.quKey.getter()
{
  result = 7301207;
  switch(*v0)
  {
    case 1:
      result = 1952540759;
      break;
    case 2:
      result = 0x6572656857;
      break;
    case 3:
      result = 1852139607;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t PromptLLMQUBuilder.QUParameterType.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_106();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

PhotosIntelligence::PromptLLMQUBuilder::LLMQU __swiftcall PromptLLMQUBuilder.LLMQU.init(whoVals:whatVals:whenVals:whereVals:)(Swift::OpaquePointer whoVals, Swift::OpaquePointer whatVals, Swift::OpaquePointer whenVals, Swift::OpaquePointer whereVals)
{
  v4->_rawValue = whoVals._rawValue;
  v4[1]._rawValue = whatVals._rawValue;
  v4[2]._rawValue = whenVals._rawValue;
  v4[3]._rawValue = whereVals._rawValue;
  result.whereVals = whereVals;
  result.whenVals = whenVals;
  result.whatVals = whatVals;
  result.whoVals = whoVals;
  return result;
}

void sub_1C74E3514(uint64_t a1, char a2)
{
  v2 = 0xE300000000000000;
  v3 = 7301239;
  LOBYTE(v4) = a2;
  switch(a2)
  {
    case 1:
      v2 = 0xE400000000000000;
      v3 = 1952540791;
      break;
    case 2:
      v2 = 0xE400000000000000;
      v3 = 1852139639;
      break;
    case 3:
      v2 = 0xE500000000000000;
      v3 = 0x6572656877;
      break;
    default:
      break;
  }

  sub_1C6FE3750(v3, v2);

  if (!v38)
  {
LABEL_33:
    sub_1C7030CDC(&v37, &qword_1EC219770);
    v30 = qword_1C7590F88[v4];
    v31 = qword_1C7590FA8[v4];
    sub_1C74E72D0();
    swift_allocError();
    *v32 = v30;
    *(v32 + 8) = v31;
    *(v32 + 16) = 0;
    swift_willThrow();
    return;
  }

  sub_1C6F9ED18(&v37, v39);
  sub_1C6F774EC(v39, &v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0);
  if (!swift_dynamicCast())
  {
    v33 = qword_1C7590F88[v4];
    v34 = qword_1C7590FA8[v4];
    sub_1C74E72D0();
    swift_allocError();
    *v35 = v33;
    *(v35 + 8) = v34;
    *(v35 + 16) = 1;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v39);
    return;
  }

  v4 = v40;
  v5 = v40 + 64;
  v6 = 1 << *(v40 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v40 + 64);
  v9 = (v6 + 63) >> 6;
  sub_1C75504FC();
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  v36 = v4;
  while (v8)
  {
LABEL_15:
    v13 = (*(v4 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v8)))));
    v15 = *v13;
    v14 = v13[1];
    swift_bridgeObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB1814();
      v11 = v27;
    }

    v16 = *(v11 + 16);
    if (v16 >= *(v11 + 24) >> 1)
    {
      sub_1C6FB1814();
      v11 = v28;
    }

    v8 &= v8 - 1;
    *(v11 + 16) = v16 + 1;
    v17 = v11 + 16 * v16;
    *(v17 + 32) = v15;
    *(v17 + 40) = v14;
    v4 = v36;
    if (*(v36 + 16))
    {
      v4 = v36;
      v18 = sub_1C6F78124(v15, v14);
      v20 = v19;

      if (v20)
      {
        sub_1C6F774EC(*(v36 + 56) + 32 * v18, &v37);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
        if (swift_dynamicCast())
        {
          v21 = v40;
          v22 = *(v40 + 16);
          v23 = *(v11 + 16);
          if (__OFADD__(v23, v22))
          {
            goto LABEL_37;
          }

          if (v23 + v22 > *(v11 + 24) >> 1)
          {
            sub_1C6FB1814();
            v11 = v29;
            v23 = *(v29 + 16);
            if (!*(v21 + 16))
            {
              goto LABEL_31;
            }

LABEL_25:
            if ((*(v11 + 24) >> 1) - v23 < v22)
            {
              goto LABEL_38;
            }

            swift_arrayInitWithCopy();

            if (v22)
            {
              v24 = *(v11 + 16);
              v25 = __OFADD__(v24, v22);
              v26 = v24 + v22;
              if (v25)
              {
                goto LABEL_39;
              }

              *(v11 + 16) = v26;
            }
          }

          else
          {
            if (v22)
            {
              goto LABEL_25;
            }

LABEL_31:

            if (v22)
            {
              __break(1u);
              goto LABEL_33;
            }
          }
        }
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      __swift_destroy_boxed_opaque_existential_1(v39);
      return;
    }

    v8 = *(v5 + 8 * v12);
    ++v10;
    if (v8)
    {
      v10 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

PhotosIntelligence::PromptLLMQUBuilder::LLMQU __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PromptLLMQUBuilder.LLMQU.init(from:)(Swift::OpaquePointer from)
{
  v4 = v1;
  sub_1C74E3514(from._rawValue, 0);
  if (v2)
  {
  }

  else
  {
    v6 = v5;
    sub_1C74E3514(from._rawValue, 1);
    v8 = v7;
    sub_1C74E3514(from._rawValue, 2);
    v10 = v9;
    sub_1C74E3514(from._rawValue, 3);
    v12 = v11;

    *v4 = v6;
    v4[1] = v8;
    v4[2] = v10;
    v4[3] = v12;
  }

  result.whereVals._rawValue = v16;
  result.whenVals._rawValue = v15;
  result.whatVals._rawValue = v14;
  result.whoVals._rawValue = v13;
  return result;
}

uint64_t static PromptLLMQUBuilder.LLMQU.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if ((sub_1C70020D4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_15_1();
  if ((sub_1C70020D4(v4, v5) & 1) == 0 || (sub_1C70020D4(v2, v3) & 1) == 0)
  {
    return 0;
  }

  v6 = OUTLINED_FUNCTION_90();

  return sub_1C70020D4(v6, v7);
}

void PromptLLMQUBuilder.LLMQU.hash(into:)()
{
  sub_1C70418D0();
  OUTLINED_FUNCTION_57_0();
  sub_1C70418D0();
  sub_1C70418D0();
  OUTLINED_FUNCTION_90();

  sub_1C70418D0();
}

uint64_t PromptLLMQUBuilder.LLMQU.hashValue.getter()
{
  OUTLINED_FUNCTION_106();
  sub_1C70418D0();
  sub_1C70418D0();
  sub_1C70418D0();
  sub_1C70418D0();
  return sub_1C7551FAC();
}

uint64_t sub_1C74E3BC0()
{
  sub_1C7551F3C();
  sub_1C70418D0();
  sub_1C70418D0();
  sub_1C70418D0();
  sub_1C70418D0();
  return sub_1C7551FAC();
}

uint64_t sub_1C74E3C38()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21C968);
  __swift_project_value_buffer(v0, qword_1EC21C968);
  return sub_1C754FEFC();
}

uint64_t PromptLLMQUBuilder.LLMQUParse.customWho.getter()
{
  if (v0[7])
  {
    v1 = v0[7];
  }

  else
  {
    v1 = sub_1C74E3D8C(v0);
    v0[7] = v1;
    sub_1C75504FC();
  }

  sub_1C75504FC();
  return v1;
}

uint64_t sub_1C74E3D8C(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, __src, sizeof(__srca));
  sub_1C70D3E80(__dst, v6);
  PromptLLMQUBuilder.LLMQUParse.llmqu.getter(&v7);
  v2 = v7;
  if (v7)
  {
    sub_1C75504FC();
  }

  sub_1C74E6F14(v2);
  sub_1C74E3F18(v2);
  v4 = v3;

  memcpy(v6, __srca, sizeof(v6));
  sub_1C74E51FC(v6);
  return v4;
}

uint64_t PromptLLMQUBuilder.LLMQUParse.llmqu.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[12];
  v4 = v1[13];
  v5 = v1[14];
  v6 = v1[15];
  if (v3 == 1)
  {
    v7 = OUTLINED_FUNCTION_17_83();
    sub_1C74E48E0(v7, v8);
    v3 = v12;
    v4 = v13;
    v5 = v14;
    v6 = v15;
    v11 = v1[12];
    sub_1C74E6EA4(v12);
    sub_1C74E6F04(v11);
    v1[12] = v12;
    v1[13] = v13;
    v1[14] = v14;
    v1[15] = v15;
  }

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  v9 = OUTLINED_FUNCTION_57_0();

  return sub_1C74E6F74(v9);
}

void sub_1C74E3F18(uint64_t isUniquelyReferenced_nonNull_native)
{
  if (isUniquelyReferenced_nonNull_native)
  {
    v1 = 0;
    v2 = *(isUniquelyReferenced_nonNull_native + 16);
    v3 = isUniquelyReferenced_nonNull_native + 40;
    v11 = isUniquelyReferenced_nonNull_native + 40;
    v12 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v4 = (v3 + 16 * v1);
    while (v2 != v1)
    {
      if (v1 >= v2)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        return;
      }

      if (__OFADD__(v1, 1))
      {
        goto LABEL_21;
      }

      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = HIBYTE(*v4) & 0xF;
      if ((*v4 & 0x2000000000000000) == 0)
      {
        v7 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v7)
      {
        MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
        sub_1C75504FC();
        if (!sub_1C70735F4())
        {
          v8 = v12;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1C6FB1814();
            v8 = isUniquelyReferenced_nonNull_native;
          }

          v9 = *(v8 + 16);
          if (v9 >= *(v8 + 24) >> 1)
          {
            sub_1C6FB1814();
            v8 = isUniquelyReferenced_nonNull_native;
          }

          *(v8 + 16) = v9 + 1;
          v12 = v8;
          v10 = v8 + 16 * v9;
          *(v10 + 32) = v6;
          *(v10 + 40) = v5;
          ++v1;
          v3 = v11;
          goto LABEL_3;
        }
      }

      ++v1;
      v4 += 2;
    }
  }
}

uint64_t PromptLLMQUBuilder.LLMQUParse.customWho.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t PromptLLMQUBuilder.LLMQUParse.customWho.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_15_7(a1);
  *v1 = PromptLLMQUBuilder.LLMQUParse.customWho.getter();
  return OUTLINED_FUNCTION_16_0();
}

uint64_t sub_1C74E412C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    sub_1C75504FC();

    *(v3 + 56) = v2;
  }

  else
  {

    *(v3 + 56) = v2;
  }

  return result;
}

uint64_t PromptLLMQUBuilder.LLMQUParse.customWhat.getter()
{
  if (v0[8])
  {
    v1 = v0[8];
  }

  else
  {
    v1 = sub_1C74E41EC(v0);
    v0[8] = v1;
    sub_1C75504FC();
  }

  sub_1C75504FC();
  return v1;
}

uint64_t sub_1C74E41EC(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, __src, sizeof(__srca));
  sub_1C70D3E80(__dst, v8);
  PromptLLMQUBuilder.LLMQUParse.llmqu.getter(v9);
  v2 = v9[0];
  if (v9[0])
  {
    v3 = v9[1];
    sub_1C75504FC();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  sub_1C74E6F14(v2);
  sub_1C74E3F18(v4);
  v6 = v5;

  memcpy(v8, __srca, sizeof(v8));
  sub_1C74E51FC(v8);
  return v6;
}

uint64_t PromptLLMQUBuilder.LLMQUParse.customWhat.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t PromptLLMQUBuilder.LLMQUParse.customWhat.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_15_7(a1);
  *v1 = PromptLLMQUBuilder.LLMQUParse.customWhat.getter();
  return OUTLINED_FUNCTION_16_0();
}

uint64_t sub_1C74E4324(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    sub_1C75504FC();

    *(v3 + 64) = v2;
  }

  else
  {

    *(v3 + 64) = v2;
  }

  return result;
}

uint64_t PromptLLMQUBuilder.LLMQUParse.customWhere.getter()
{
  if (v0[9])
  {
    v1 = v0[9];
  }

  else
  {
    v1 = sub_1C74E43E4(v0);
    v0[9] = v1;
    sub_1C75504FC();
  }

  sub_1C75504FC();
  return v1;
}

uint64_t sub_1C74E43E4(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, __src, sizeof(__srca));
  sub_1C70D3E80(__dst, v8);
  PromptLLMQUBuilder.LLMQUParse.llmqu.getter(v9);
  v2 = v9[0];
  if (v9[0])
  {
    v3 = v9[3];
    sub_1C75504FC();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  sub_1C74E6F14(v2);
  sub_1C74E3F18(v4);
  v6 = v5;

  memcpy(v8, __srca, sizeof(v8));
  sub_1C74E51FC(v8);
  return v6;
}

uint64_t PromptLLMQUBuilder.LLMQUParse.customWhere.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t PromptLLMQUBuilder.LLMQUParse.customWhere.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_15_7(a1);
  *v1 = PromptLLMQUBuilder.LLMQUParse.customWhere.getter();
  return OUTLINED_FUNCTION_16_0();
}

uint64_t sub_1C74E451C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    sub_1C75504FC();

    *(v3 + 72) = v2;
  }

  else
  {

    *(v3 + 72) = v2;
  }

  return result;
}

uint64_t PromptLLMQUBuilder.LLMQUParse.customWhen.getter()
{
  if (v0[10])
  {
    v1 = v0[10];
  }

  else
  {
    v1 = sub_1C74E45DC(v0);
    v0[10] = v1;
    sub_1C75504FC();
  }

  sub_1C75504FC();
  return v1;
}

uint64_t sub_1C74E45DC(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, __src, sizeof(__srca));
  sub_1C70D3E80(__dst, v8);
  PromptLLMQUBuilder.LLMQUParse.llmqu.getter(v9);
  v2 = v9[0];
  if (v9[0])
  {
    v3 = v9[2];
    sub_1C75504FC();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  sub_1C74E6F14(v2);
  sub_1C74E3F18(v4);
  v6 = v5;

  memcpy(v8, __srca, sizeof(v8));
  sub_1C74E51FC(v8);
  return v6;
}

uint64_t PromptLLMQUBuilder.LLMQUParse.customWhen.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t PromptLLMQUBuilder.LLMQUParse.customWhen.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_15_7(a1);
  *v1 = PromptLLMQUBuilder.LLMQUParse.customWhen.getter();
  return OUTLINED_FUNCTION_16_0();
}

uint64_t sub_1C74E4718(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    sub_1C75504FC();

    *(v3 + 80) = v2;
  }

  else
  {

    *(v3 + 80) = v2;
  }

  return result;
}

uint64_t sub_1C74E478C()
{
  v0 = PromptLLMQUBuilder.LLMQUParse.customWho.getter();
  v1 = PromptLLMQUBuilder.LLMQUParse.customWhat.getter();
  sub_1C6FD2568(v1);
  v2 = PromptLLMQUBuilder.LLMQUParse.customWhere.getter();
  sub_1C6FD2568(v2);
  v3 = PromptLLMQUBuilder.LLMQUParse.customWhen.getter();
  sub_1C6FD2568(v3);
  return v0;
}

uint64_t PromptLLMQUBuilder.LLMQUParse.allCustomValues.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t PromptLLMQUBuilder.LLMQUParse.allCustomValues.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_15_7(a1);
  *v1 = PromptLLMQUBuilder.LLMQUParse.allCustomValues.getter();
  return OUTLINED_FUNCTION_16_0();
}

uint64_t sub_1C74E486C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    sub_1C75504FC();

    *(v3 + 88) = v2;
  }

  else
  {

    *(v3 + 88) = v2;
  }

  return result;
}

__n128 sub_1C74E48E0@<Q0>(void *__src@<X0>, __n128 *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, __src, sizeof(__srca));
  sub_1C70D3E80(__dst, v6);
  sub_1C74E4AE0();
  memcpy(v6, __srca, sizeof(v6));
  sub_1C74E51FC(v6);
  result = v8;
  v5 = v9;
  *a2 = v8;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C74E4AE0()
{
  v19[4] = *MEMORY[0x1E69E9840];
  v0 = sub_1C75506DC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C75506CC();
  v4 = sub_1C755069C();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (v6 >> 60 != 15)
  {
    v7 = objc_opt_self();
    v8 = sub_1C754DDCC();
    v19[0] = 0;
    v9 = [v7 JSONObjectWithData:v8 options:0 error:v19];

    if (!v9)
    {
      v11 = v19[0];
      sub_1C754DBEC();

      swift_willThrow();
      return sub_1C70B5C10(v4, v6);
    }

    v10 = v19[0];
    sub_1C75515CC();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0);
    if (swift_dynamicCast())
    {
      PromptLLMQUBuilder.LLMQU.init(from:)(v18);
      return sub_1C70B5C10(v4, v6);
    }

    sub_1C70B5C10(v4, v6);
  }

  if (qword_1EC214258 != -1)
  {
    swift_once();
  }

  v13 = sub_1C754FF1C();
  __swift_project_value_buffer(v13, qword_1EC21C968);
  v14 = sub_1C754FEEC();
  v15 = sub_1C755119C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1C6F5C000, v14, v15, "Error parsing LLMQU", v16, 2u);
    MEMORY[0x1CCA5F8E0](v16, -1, -1);
  }

  sub_1C74E529C();
  swift_allocError();
  *v17 = 0;
  v17[1] = 0;
  return swift_willThrow();
}

__n128 PromptLLMQUBuilder.LLMQUParse.llmqu.setter(uint64_t a1)
{
  sub_1C74E6F04(*(v1 + 96));
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 96) = *a1;
  *(v1 + 112) = v4;
  return result;
}

void (*PromptLLMQUBuilder.LLMQUParse.llmqu.modify(uint64_t **a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  PromptLLMQUBuilder.LLMQUParse.llmqu.getter(v3);
  return sub_1C74E4E8C;
}

void sub_1C74E4E8C()
{
  OUTLINED_FUNCTION_33();
  v1 = *v0;
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_103();
    sub_1C74E6EA4(v3);
    OUTLINED_FUNCTION_27_53();
    sub_1C74E6F14(*v1);
  }

  else
  {
    OUTLINED_FUNCTION_27_53();
  }

  OUTLINED_FUNCTION_25_0();

  free(v4);
}

double PromptLLMQUBuilder.LLMQUParse.init(templateString:queryUnderstanding:promptHash:promptIndex:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = 0.0;
  *(a8 + 72) = 0u;
  *(a8 + 56) = 0u;
  *(a8 + 88) = 0;
  *(a8 + 96) = 1;
  *(a8 + 112) = 0;
  *(a8 + 120) = 0;
  *(a8 + 104) = 0;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

void static PromptLLMQUBuilder.LLMQUParse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_33();
  v2 = v0[2];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = *v0 == *v1 && v0[1] == v1[1];
  if (v10 || (sub_1C7551DBC() & 1) != 0)
  {
    v11 = v2 == v6 && v4 == v7;
    if (v11 || (OUTLINED_FUNCTION_15_1(), (sub_1C7551DBC() & 1) != 0))
    {
      if (v3 != v8 || v5 != v9)
      {
        OUTLINED_FUNCTION_90();
        sub_1C7551DBC();
      }
    }
  }

  OUTLINED_FUNCTION_25_0();
}

uint64_t PromptLLMQUBuilder.LLMQUParse.hash(into:)()
{
  v1 = *(v0 + 48);
  sub_1C75505AC();
  OUTLINED_FUNCTION_57_0();
  sub_1C75505AC();
  sub_1C75505AC();
  return MEMORY[0x1CCA5E460](v1);
}

uint64_t PromptLLMQUBuilder.LLMQUParse.hashValue.getter()
{
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_106();
  sub_1C75505AC();
  sub_1C75505AC();
  sub_1C75505AC();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t sub_1C74E510C()
{
  v1 = *(v0 + 48);
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C75505AC();
  sub_1C75505AC();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

unint64_t sub_1C74E51A8()
{
  result = qword_1EC21C980;
  if (!qword_1EC21C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C980);
  }

  return result;
}

uint64_t sub_1C74E522C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218138);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C74E529C()
{
  result = qword_1EC21C990;
  if (!qword_1EC21C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C990);
  }

  return result;
}

uint64_t sub_1C74E52F0(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_1C7551D7C();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218138);
        v10 = sub_1C7550BBC();
        *(v10 + 16) = v9;
      }

      v11[0] = v10 + 32;
      v11[1] = v9;
      a2(v11, v12, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

char *sub_1C74E5404(uint64_t *a1)
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
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C74E6234(v7, v8, a1, v4);
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
    return sub_1C74E56CC(0, v2, 1, a1);
  }

  return result;
}

char *sub_1C74E54F8(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 144 * a3;
    v8 = &result[-a3];
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        if (v10[8] >= *(v10 - 10))
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(v12, v10, sizeof(v12));
        memcpy(v10, v10 - 18, 0x90uLL);
        result = memcpy(v10 - 18, v12, 0x90uLL);
        v10 -= 18;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 144;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1C74E55D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 144 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        result = *v10;
        if (*v10 == *(v10 - 18) && v10[1] == *(v10 - 17))
        {
          break;
        }

        result = sub_1C7551DBC();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(v13, v10, sizeof(v13));
        memcpy(v10, v10 - 18, 0x90uLL);
        result = memcpy(v10 - 18, v13, 0x90uLL);
        v10 -= 18;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 144;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

char *sub_1C74E56CC(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = (*a4 + (a3 << 7));
    v8 = &result[-a3];
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        if (v10[6] >= *(v10 - 10))
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(v12, v10, sizeof(v12));
        memcpy(v10, v10 - 16, 0x80uLL);
        result = memcpy(v10 - 16, v12, 0x80uLL);
        v10 -= 16;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C74E57A8(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v80 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *(*a3 + 144 * v6 + 64);
        v10 = *a3 + 144 * v8;
        v11 = 144 * v8;
        v12 = *(v10 + 64);
        v13 = (v10 + 352);
        v14 = v8 + 2;
        v15 = v9;
        while (1)
        {
          v16 = v14;
          if (++v6 >= v5)
          {
            break;
          }

          v17 = *v13;
          v13 += 18;
          v18 = (v9 < v12) ^ (v17 >= v15);
          ++v14;
          v15 = v17;
          if ((v18 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v6 = v5;
LABEL_9:
        if (v9 < v12)
        {
          if (v6 < v8)
          {
            goto LABEL_110;
          }

          if (v8 < v6)
          {
            if (v5 >= v16)
            {
              v5 = v16;
            }

            v19 = 144 * v5 - 144;
            v20 = v6;
            v21 = v8;
            do
            {
              if (v21 != --v20)
              {
                v22 = *a3;
                if (!*a3)
                {
                  goto LABEL_115;
                }

                memcpy(__dst, (v22 + v11), sizeof(__dst));
                memmove((v22 + v11), (v22 + v19), 0x90uLL);
                memcpy((v22 + v19), __dst, 0x90uLL);
              }

              ++v21;
              v19 -= 144;
              v11 += 144;
            }

            while (v21 < v20);
            v5 = a3[1];
          }
        }
      }

      if (v6 < v5)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_109;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_111;
          }

          if (v8 + a4 >= v5)
          {
            v23 = v5;
          }

          else
          {
            v23 = v8 + a4;
          }

          if (v23 < v8)
          {
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
            return;
          }

          if (v6 != v23)
          {
            v76 = v7;
            v24 = *a3;
            v25 = *a3 + 144 * v6;
            v26 = v8 - v6;
            do
            {
              v27 = v26;
              v28 = v25;
              do
              {
                if (v28[8] >= *(v28 - 10))
                {
                  break;
                }

                if (!v24)
                {
                  goto LABEL_113;
                }

                memcpy(__dst, v28, sizeof(__dst));
                memcpy(v28, v28 - 18, 0x90uLL);
                memcpy(v28 - 18, __dst, 0x90uLL);
                v28 -= 18;
              }

              while (!__CFADD__(v27++, 1));
              ++v6;
              v25 += 144;
              --v26;
            }

            while (v6 != v23);
            v6 = v23;
            v7 = v76;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_108;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC();
        v7 = v72;
      }

      v30 = v7[2];
      v31 = v30 + 1;
      if (v30 >= v7[3] >> 1)
      {
        sub_1C6FB17EC();
        v7 = v73;
      }

      v7[2] = v31;
      v32 = v7 + 4;
      v33 = &v7[2 * v30 + 4];
      *v33 = v8;
      v33[1] = v6;
      v77 = *a1;
      if (!*a1)
      {
        goto LABEL_116;
      }

      if (v30)
      {
        while (1)
        {
          v34 = v31 - 1;
          v35 = &v32[2 * v31 - 2];
          v36 = &v7[2 * v31];
          if (v31 >= 4)
          {
            break;
          }

          if (v31 == 3)
          {
            v37 = v7[4];
            v38 = v7[5];
            v47 = __OFSUB__(v38, v37);
            v39 = v38 - v37;
            v40 = v47;
LABEL_57:
            if (v40)
            {
              goto LABEL_98;
            }

            v52 = *v36;
            v51 = v36[1];
            v53 = __OFSUB__(v51, v52);
            v54 = v51 - v52;
            v55 = v53;
            if (v53)
            {
              goto LABEL_101;
            }

            v56 = v35[1];
            v57 = v56 - *v35;
            if (__OFSUB__(v56, *v35))
            {
              goto LABEL_104;
            }

            if (__OFADD__(v54, v57))
            {
              goto LABEL_106;
            }

            if (v54 + v57 >= v39)
            {
              if (v39 < v57)
              {
                v34 = v31 - 2;
              }

              goto LABEL_79;
            }

            goto LABEL_72;
          }

          if (v31 < 2)
          {
            goto LABEL_100;
          }

          v59 = *v36;
          v58 = v36[1];
          v47 = __OFSUB__(v58, v59);
          v54 = v58 - v59;
          v55 = v47;
LABEL_72:
          if (v55)
          {
            goto LABEL_103;
          }

          v61 = *v35;
          v60 = v35[1];
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_105;
          }

          if (v62 < v54)
          {
            goto LABEL_86;
          }

LABEL_79:
          if (v34 - 1 >= v31)
          {
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
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
            goto LABEL_112;
          }

          if (!*a3)
          {
            goto LABEL_114;
          }

          v66 = v7;
          v67 = &v32[2 * v34 - 2];
          v68 = *v67;
          v69 = &v32[2 * v34];
          v70 = v69[1];
          sub_1C74E69A4((*a3 + 144 * *v67), (*a3 + 144 * *v69), (*a3 + 144 * v70), v77);
          if (v4)
          {
            goto LABEL_91;
          }

          if (v70 < v68)
          {
            goto LABEL_93;
          }

          v71 = v66[2];
          if (v34 > v71)
          {
            goto LABEL_94;
          }

          *v67 = v68;
          v67[1] = v70;
          if (v34 >= v71)
          {
            goto LABEL_95;
          }

          v31 = v71 - 1;
          memmove(&v32[2 * v34], v69 + 2, 16 * (v71 - 1 - v34));
          v7 = v66;
          v66[2] = v71 - 1;
          if (v71 <= 2)
          {
            goto LABEL_86;
          }
        }

        v41 = &v32[2 * v31];
        v42 = *(v41 - 8);
        v43 = *(v41 - 7);
        v47 = __OFSUB__(v43, v42);
        v44 = v43 - v42;
        if (v47)
        {
          goto LABEL_96;
        }

        v46 = *(v41 - 6);
        v45 = *(v41 - 5);
        v47 = __OFSUB__(v45, v46);
        v39 = v45 - v46;
        v40 = v47;
        if (v47)
        {
          goto LABEL_97;
        }

        v48 = v36[1];
        v49 = v48 - *v36;
        if (__OFSUB__(v48, *v36))
        {
          goto LABEL_99;
        }

        v47 = __OFADD__(v39, v49);
        v50 = v39 + v49;
        if (v47)
        {
          goto LABEL_102;
        }

        if (v50 >= v44)
        {
          v64 = *v35;
          v63 = v35[1];
          v47 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v47)
          {
            goto LABEL_107;
          }

          if (v39 < v65)
          {
            v34 = v31 - 2;
          }

          goto LABEL_79;
        }

        goto LABEL_57;
      }

LABEL_86:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v80 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_117;
  }

  sub_1C74E673C(&v80, *a1, a3, sub_1C74E69A4);
LABEL_91:
}

void sub_1C74E5CD8(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v82 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *a3;
        v10 = (*a3 + 144 * v6);
        v11 = *v10;
        v12 = v10[1];
        v13 = (*a3 + 144 * v8);
        if (v11 == *v13 && v12 == v13[1])
        {
          v15 = 0;
        }

        else
        {
          v15 = sub_1C7551DBC();
        }

        v6 = v8 + 2;
        v16 = 144 * v8;
        v17 = (v9 + 144 * v8 + 296);
        while (v6 < v5)
        {
          if (*(v17 - 1) == *(v17 - 19) && *v17 == *(v17 - 18))
          {
            if (v15)
            {
              goto LABEL_21;
            }
          }

          else if ((v15 ^ sub_1C7551DBC()))
          {
            break;
          }

          ++v6;
          v17 += 18;
        }

        if ((v15 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v6 < v8)
        {
          goto LABEL_122;
        }

        if (v8 < v6)
        {
          v19 = 144 * v6 - 144;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              memcpy(__dst, (v22 + v16), sizeof(__dst));
              memmove((v22 + v16), (v22 + v19), 0x90uLL);
              memcpy((v22 + v19), __dst, 0x90uLL);
            }

            ++v21;
            v19 -= 144;
            v16 += 144;
          }

          while (v21 < v20);
        }
      }

LABEL_28:
      v23 = a3[1];
      if (v6 < v23)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_121;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_123;
          }

          if (v8 + a4 >= v23)
          {
            v24 = a3[1];
          }

          else
          {
            v24 = v8 + a4;
          }

          if (v24 < v8)
          {
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            return;
          }

          if (v6 != v24)
          {
            v78 = v7;
            v25 = *a3;
            v26 = *a3 + 144 * v6;
            v27 = v8 - v6;
            do
            {
              v28 = v27;
              v29 = v26;
              do
              {
                v30 = *v29 == *(v29 - 18) && v29[1] == *(v29 - 17);
                if (v30 || (sub_1C7551DBC() & 1) == 0)
                {
                  break;
                }

                if (!v25)
                {
                  goto LABEL_125;
                }

                memcpy(__dst, v29, sizeof(__dst));
                memcpy(v29, v29 - 18, 0x90uLL);
                memcpy(v29 - 18, __dst, 0x90uLL);
                v29 -= 18;
              }

              while (!__CFADD__(v28++, 1));
              ++v6;
              v26 += 144;
              --v27;
            }

            while (v6 != v24);
            v6 = v24;
            v7 = v78;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC();
        v7 = v74;
      }

      v32 = v7[2];
      v33 = v32 + 1;
      if (v32 >= v7[3] >> 1)
      {
        sub_1C6FB17EC();
        v7 = v75;
      }

      v7[2] = v33;
      v34 = v7 + 4;
      v35 = &v7[2 * v32 + 4];
      *v35 = v8;
      v35[1] = v6;
      v79 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v32)
      {
        while (1)
        {
          v36 = v33 - 1;
          v37 = &v34[2 * v33 - 2];
          v38 = &v7[2 * v33];
          if (v33 >= 4)
          {
            break;
          }

          if (v33 == 3)
          {
            v39 = v7[4];
            v40 = v7[5];
            v49 = __OFSUB__(v40, v39);
            v41 = v40 - v39;
            v42 = v49;
LABEL_69:
            if (v42)
            {
              goto LABEL_110;
            }

            v54 = *v38;
            v53 = v38[1];
            v55 = __OFSUB__(v53, v54);
            v56 = v53 - v54;
            v57 = v55;
            if (v55)
            {
              goto LABEL_113;
            }

            v58 = v37[1];
            v59 = v58 - *v37;
            if (__OFSUB__(v58, *v37))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v56, v59))
            {
              goto LABEL_118;
            }

            if (v56 + v59 >= v41)
            {
              if (v41 < v59)
              {
                v36 = v33 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v33 < 2)
          {
            goto LABEL_112;
          }

          v61 = *v38;
          v60 = v38[1];
          v49 = __OFSUB__(v60, v61);
          v56 = v60 - v61;
          v57 = v49;
LABEL_84:
          if (v57)
          {
            goto LABEL_115;
          }

          v63 = *v37;
          v62 = v37[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_117;
          }

          if (v64 < v56)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v36 - 1 >= v33)
          {
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
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v68 = v7;
          v69 = &v34[2 * v36 - 2];
          v70 = *v69;
          v71 = &v34[2 * v36];
          v72 = v71[1];
          sub_1C74E6B48((*a3 + 144 * *v69), (*a3 + 144 * *v71), (*a3 + 144 * v72), v79);
          if (v4)
          {
            goto LABEL_103;
          }

          if (v72 < v70)
          {
            goto LABEL_105;
          }

          v73 = v68[2];
          if (v36 > v73)
          {
            goto LABEL_106;
          }

          *v69 = v70;
          v69[1] = v72;
          if (v36 >= v73)
          {
            goto LABEL_107;
          }

          v33 = v73 - 1;
          memmove(&v34[2 * v36], v71 + 2, 16 * (v73 - 1 - v36));
          v7 = v68;
          v68[2] = v73 - 1;
          if (v73 <= 2)
          {
            goto LABEL_98;
          }
        }

        v43 = &v34[2 * v33];
        v44 = *(v43 - 8);
        v45 = *(v43 - 7);
        v49 = __OFSUB__(v45, v44);
        v46 = v45 - v44;
        if (v49)
        {
          goto LABEL_108;
        }

        v48 = *(v43 - 6);
        v47 = *(v43 - 5);
        v49 = __OFSUB__(v47, v48);
        v41 = v47 - v48;
        v42 = v49;
        if (v49)
        {
          goto LABEL_109;
        }

        v50 = v38[1];
        v51 = v50 - *v38;
        if (__OFSUB__(v50, *v38))
        {
          goto LABEL_111;
        }

        v49 = __OFADD__(v41, v51);
        v52 = v41 + v51;
        if (v49)
        {
          goto LABEL_114;
        }

        if (v52 >= v46)
        {
          v66 = *v37;
          v65 = v37[1];
          v49 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v49)
          {
            goto LABEL_119;
          }

          if (v41 < v67)
          {
            v36 = v33 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v82 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_1C74E673C(&v82, *a1, a3, sub_1C74E6B48);
LABEL_103:
}

void sub_1C74E6234(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v80 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *(*a3 + (v6 << 7) + 48);
        v10 = *a3 + (v8 << 7);
        v11 = v8 << 7;
        v12 = *(v10 + 48);
        v13 = (v10 + 304);
        v14 = v8 + 2;
        v15 = v9;
        while (1)
        {
          v16 = v14;
          if (++v6 >= v5)
          {
            break;
          }

          v17 = *v13;
          v13 += 16;
          v18 = (v9 < v12) ^ (v17 >= v15);
          ++v14;
          v15 = v17;
          if ((v18 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v6 = v5;
LABEL_9:
        if (v9 < v12)
        {
          if (v6 < v8)
          {
            goto LABEL_110;
          }

          if (v8 < v6)
          {
            if (v5 >= v16)
            {
              v5 = v16;
            }

            v19 = (v5 << 7) - 128;
            v20 = v6;
            v21 = v8;
            do
            {
              if (v21 != --v20)
              {
                v22 = *a3;
                if (!*a3)
                {
                  goto LABEL_115;
                }

                memcpy(__dst, (v22 + v11), sizeof(__dst));
                memmove((v22 + v11), (v22 + v19), 0x80uLL);
                memcpy((v22 + v19), __dst, 0x80uLL);
              }

              ++v21;
              v19 -= 128;
              v11 += 128;
            }

            while (v21 < v20);
            v5 = a3[1];
          }
        }
      }

      if (v6 < v5)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_109;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_111;
          }

          if (v8 + a4 >= v5)
          {
            v23 = v5;
          }

          else
          {
            v23 = v8 + a4;
          }

          if (v23 < v8)
          {
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
            return;
          }

          if (v6 != v23)
          {
            v76 = v7;
            v24 = *a3;
            v25 = (*a3 + (v6 << 7));
            v26 = v8 - v6;
            do
            {
              v27 = v26;
              v28 = v25;
              do
              {
                if (v28[6] >= *(v28 - 10))
                {
                  break;
                }

                if (!v24)
                {
                  goto LABEL_113;
                }

                memcpy(__dst, v28, sizeof(__dst));
                memcpy(v28, v28 - 16, 0x80uLL);
                memcpy(v28 - 16, __dst, 0x80uLL);
                v28 -= 16;
              }

              while (!__CFADD__(v27++, 1));
              ++v6;
              v25 += 16;
              --v26;
            }

            while (v6 != v23);
            v6 = v23;
            v7 = v76;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_108;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC();
        v7 = v72;
      }

      v30 = v7[2];
      v31 = v30 + 1;
      if (v30 >= v7[3] >> 1)
      {
        sub_1C6FB17EC();
        v7 = v73;
      }

      v7[2] = v31;
      v32 = v7 + 4;
      v33 = &v7[2 * v30 + 4];
      *v33 = v8;
      v33[1] = v6;
      v77 = *a1;
      if (!*a1)
      {
        goto LABEL_116;
      }

      if (v30)
      {
        while (1)
        {
          v34 = v31 - 1;
          v35 = &v32[2 * v31 - 2];
          v36 = &v7[2 * v31];
          if (v31 >= 4)
          {
            break;
          }

          if (v31 == 3)
          {
            v37 = v7[4];
            v38 = v7[5];
            v47 = __OFSUB__(v38, v37);
            v39 = v38 - v37;
            v40 = v47;
LABEL_57:
            if (v40)
            {
              goto LABEL_98;
            }

            v52 = *v36;
            v51 = v36[1];
            v53 = __OFSUB__(v51, v52);
            v54 = v51 - v52;
            v55 = v53;
            if (v53)
            {
              goto LABEL_101;
            }

            v56 = v35[1];
            v57 = v56 - *v35;
            if (__OFSUB__(v56, *v35))
            {
              goto LABEL_104;
            }

            if (__OFADD__(v54, v57))
            {
              goto LABEL_106;
            }

            if (v54 + v57 >= v39)
            {
              if (v39 < v57)
              {
                v34 = v31 - 2;
              }

              goto LABEL_79;
            }

            goto LABEL_72;
          }

          if (v31 < 2)
          {
            goto LABEL_100;
          }

          v59 = *v36;
          v58 = v36[1];
          v47 = __OFSUB__(v58, v59);
          v54 = v58 - v59;
          v55 = v47;
LABEL_72:
          if (v55)
          {
            goto LABEL_103;
          }

          v61 = *v35;
          v60 = v35[1];
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_105;
          }

          if (v62 < v54)
          {
            goto LABEL_86;
          }

LABEL_79:
          if (v34 - 1 >= v31)
          {
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
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
            goto LABEL_112;
          }

          if (!*a3)
          {
            goto LABEL_114;
          }

          v66 = v7;
          v67 = &v32[2 * v34 - 2];
          v68 = *v67;
          v69 = &v32[2 * v34];
          v70 = v69[1];
          sub_1C74E6D0C((*a3 + (*v67 << 7)), (*a3 + (*v69 << 7)), (*a3 + (v70 << 7)), v77);
          if (v4)
          {
            goto LABEL_91;
          }

          if (v70 < v68)
          {
            goto LABEL_93;
          }

          v71 = v66[2];
          if (v34 > v71)
          {
            goto LABEL_94;
          }

          *v67 = v68;
          v67[1] = v70;
          if (v34 >= v71)
          {
            goto LABEL_95;
          }

          v31 = v71 - 1;
          memmove(&v32[2 * v34], v69 + 2, 16 * (v71 - 1 - v34));
          v7 = v66;
          v66[2] = v71 - 1;
          if (v71 <= 2)
          {
            goto LABEL_86;
          }
        }

        v41 = &v32[2 * v31];
        v42 = *(v41 - 8);
        v43 = *(v41 - 7);
        v47 = __OFSUB__(v43, v42);
        v44 = v43 - v42;
        if (v47)
        {
          goto LABEL_96;
        }

        v46 = *(v41 - 6);
        v45 = *(v41 - 5);
        v47 = __OFSUB__(v45, v46);
        v39 = v45 - v46;
        v40 = v47;
        if (v47)
        {
          goto LABEL_97;
        }

        v48 = v36[1];
        v49 = v48 - *v36;
        if (__OFSUB__(v48, *v36))
        {
          goto LABEL_99;
        }

        v47 = __OFADD__(v39, v49);
        v50 = v39 + v49;
        if (v47)
        {
          goto LABEL_102;
        }

        if (v50 >= v44)
        {
          v64 = *v35;
          v63 = v35[1];
          v47 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v47)
          {
            goto LABEL_107;
          }

          if (v39 < v65)
          {
            v34 = v31 - 2;
          }

          goto LABEL_79;
        }

        goto LABEL_57;
      }

LABEL_86:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v80 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_117;
  }

  sub_1C74E6878(&v80, *a1, a3);
LABEL_91:
}

uint64_t sub_1C74E673C(uint64_t *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, unint64_t, int64_t, uint64_t))
{
  i = a1;
  v17 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C7420830();
    v17 = result;
  }

  v13 = i;
  *i = v17;
  v7 = (v17 + 16);
  for (i = *(v17 + 16); ; *v7 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v13 = v17;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v8 = (v17 + 16 * i);
    v9 = *v8;
    v10 = &v7[2 * i];
    v11 = v10[1];
    a4(*a3 + 144 * *v8, *a3 + 144 * *v10, *a3 + 144 * v11, a2);
    if (v4)
    {
      goto LABEL_10;
    }

    if (v11 < v9)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v7)
    {
      goto LABEL_12;
    }

    *v8 = v9;
    v8[1] = v11;
    v12 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v10, v10 + 2, 16 * v12);
  }

  *v13 = v17;
  __break(1u);
  return result;
}

uint64_t sub_1C74E6878(uint64_t *a1, char *a2, void *a3)
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
    sub_1C74E6D0C((*a3 + (*v9 << 7)), (*a3 + (*v11 << 7)), (*a3 + (v12 << 7)), a2);
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

uint64_t sub_1C74E69A4(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 144;
  v9 = (a3 - a2) / 144;
  if (v8 < v9)
  {
    sub_1C741E4D4(a1, (a2 - a1) / 144, a4);
    v10 = &v4[144 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*(v6 + 8) >= *(v4 + 8))
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 144;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 144;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 144;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    memmove(v7, v12, 0x90uLL);
    goto LABEL_13;
  }

  sub_1C741E4D4(a2, (a3 - a2) / 144, a4);
  v10 = &v4[144 * v9];
LABEL_15:
  for (v5 -= 144; v10 > v4 && v6 > v7; v5 -= 144)
  {
    if (*(v10 - 10) < *(v6 - 10))
    {
      v15 = v6 - 144;
      v13 = v5 + 144 == v6;
      v6 -= 144;
      if (!v13)
      {
        memmove(v5, v15, 0x90uLL);
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 144)
    {
      memmove(v5, v10 - 144, 0x90uLL);
    }

    v10 -= 144;
  }

LABEL_28:
  v16 = (v10 - v4) / 144;
  if (v6 != v4 || v6 >= &v4[144 * v16])
  {
    memmove(v6, v4, 144 * v16);
  }

  return 1;
}

uint64_t sub_1C74E6B48(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 144;
  v9 = (a3 - a2) / 144;
  if (v8 < v9)
  {
    sub_1C741E4D4(a1, (a2 - a1) / 144, a4);
    v10 = &v4[144 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1C7551DBC() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 144;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 144;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 144;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    memmove(v7, v13, 0x90uLL);
    goto LABEL_17;
  }

  sub_1C741E4D4(a2, (a3 - a2) / 144, a4);
  v10 = &v4[144 * v9];
LABEL_19:
  v14 = v6 - 144;
  for (v5 -= 144; v10 > v4 && v6 > v7; v5 -= 144)
  {
    v16 = *(v10 - 18) == *(v6 - 18) && *(v10 - 17) == *(v6 - 17);
    if (!v16 && (sub_1C7551DBC() & 1) != 0)
    {
      v12 = v5 + 144 == v6;
      v6 -= 144;
      if (!v12)
      {
        memmove(v5, v14, 0x90uLL);
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 144)
    {
      memmove(v5, v10 - 144, 0x90uLL);
    }

    v10 -= 144;
  }

LABEL_36:
  v17 = (v10 - v4) / 144;
  if (v6 != v4 || v6 >= &v4[144 * v17])
  {
    memmove(v6, v4, 144 * v17);
  }

  return 1;
}

uint64_t sub_1C74E6D0C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 128;
  v9 = (a3 - a2) / 128;
  if (v8 < v9)
  {
    sub_1C741E300(a1, (a2 - a1) / 128, a4);
    v10 = &v4[128 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*(v6 + 6) >= *(v4 + 6))
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 128;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 128;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 128;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    memmove(v7, v12, 0x80uLL);
    goto LABEL_13;
  }

  sub_1C741E300(a2, (a3 - a2) / 128, a4);
  v10 = &v4[128 * v9];
LABEL_15:
  for (v5 -= 128; v10 > v4 && v6 > v7; v5 -= 128)
  {
    if (*(v10 - 10) < *(v6 - 10))
    {
      v15 = v6 - 128;
      v13 = v5 + 128 == v6;
      v6 -= 128;
      if (!v13)
      {
        memmove(v5, v15, 0x80uLL);
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 128)
    {
      memmove(v5, v10 - 128, 0x80uLL);
    }

    v10 -= 128;
  }

LABEL_28:
  v16 = (v10 - v4) / 128;
  if (v6 != v4 || v6 >= &v4[128 * v16])
  {
    memmove(v6, v4, v16 << 7);
  }

  return 1;
}

uint64_t sub_1C74E6EA4(uint64_t result)
{
  if (result)
  {
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();

    return sub_1C75504FC();
  }

  return result;
}

uint64_t sub_1C74E6F04(uint64_t result)
{
  if (result != 1)
  {
    return sub_1C74E6F14(result);
  }

  return result;
}

uint64_t sub_1C74E6F14(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C74E6F74(uint64_t result)
{
  if (result != 1)
  {
    return sub_1C74E6EA4(result);
  }

  return result;
}

unint64_t sub_1C74E6F88()
{
  result = qword_1EC21C998;
  if (!qword_1EC21C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C998);
  }

  return result;
}

unint64_t sub_1C74E6FE0()
{
  result = qword_1EC21C9A0;
  if (!qword_1EC21C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C9A0);
  }

  return result;
}

unint64_t sub_1C74E7038()
{
  result = qword_1EC21C9A8;
  if (!qword_1EC21C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C9A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PromptLLMQUBuilder.QUParameterType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_18PhotosIntelligence18PromptLLMQUBuilderO5LLMQUVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_18PhotosIntelligence18PromptLLMQUBuilderO5LLMQUVSgSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

_BYTE *sub_1C74E71D0(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C74E727C()
{
  result = qword_1EC21C9B0;
  if (!qword_1EC21C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C9B0);
  }

  return result;
}

unint64_t sub_1C74E72D0()
{
  result = qword_1EC21C9B8;
  if (!qword_1EC21C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C9B8);
  }

  return result;
}

uint64_t StoryElements.init(from:storyAssetManager:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for StoryState.PromptOrigin(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C7195258(a1 + OBJC_IVAR____TtC18PhotosIntelligence10StoryState_promptOrigin, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218820);
  if (__swift_getEnumTagSinglePayload(v8, 2, v9))
  {
    v10 = 0;
  }

  else
  {
    sub_1C7030CDC(&v8[*(v9 + 48)], &qword_1EC2183C0);
    v10 = 1;
  }

  OUTLINED_FUNCTION_5();
  v11 = a1[14];
  if (v11 >> 62 != 3)
  {
    goto LABEL_15;
  }

  memcpy(v110, ((v11 & 0x3FFFFFFFFFFFFFFFLL) + 16), 0x50uLL);
  if (v110[9] >> 62 != 2)
  {
    sub_1C717E390(v110, v107, &qword_1EC2183C8);
LABEL_14:

    sub_1C6FB5330(v110);
LABEL_15:
    sub_1C7195E04();
    v32 = OUTLINED_FUNCTION_166_0();
    OUTLINED_FUNCTION_3_129(v32, v33);
    *(v34 + 8) = 0;
    swift_willThrow();
  }

  v12 = v110[9] & 0x3FFFFFFFFFFFFFFFLL;
  v13 = *((v110[9] & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v103 = *((v110[9] & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v14 = *((v110[9] & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
  sub_1C717E390(v110, v107, &qword_1EC2183C8);
  v15 = v14 & 0x3FFFFFFFFFFFFFFFLL;

  sub_1C75504FC();
  if (v14 >> 62 != 1)
  {

    goto LABEL_14;
  }

  v100 = v14 & 0x3FFFFFFFFFFFFFFFLL;
  v101 = v12;
  v104 = v13;
  v16 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v17 = *(v15 + 32);
  v18 = *(v15 + 40);
  v113 = *(v15 + 41);
  memcpy(__dst, v110, 0x41uLL);
  v102 = v17;
  sub_1C75504FC();
  v19 = v16;
  OUTLINED_FUNCTION_5();
  v20 = a1[16];
  if (v20 >> 62 != 2 || (v21 = v20 & 0x3FFFFFFFFFFFFFFFLL, v22 = *(v21 + 24), v22 >> 62 != 1) || (v23 = (v22 & 0x3FFFFFFFFFFFFFFFLL), v24 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x30), v24 >> 62))
  {
    sub_1C7195E04();
    v36 = OUTLINED_FUNCTION_166_0();
    OUTLINED_FUNCTION_3_129(v36, v37);
    OUTLINED_FUNCTION_4_113(v38, 2);

    goto LABEL_18;
  }

  v78 = v18;
  v89 = v19;
  v90 = v24;
  v25 = *(v21 + 16);
  v26 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v94 = v23[3];
  v93 = v23[4];
  v27 = v23[5];
  v91 = v26;
  v92 = v27;
  v28 = v23;
  memcpy(v109, (v24 + 16), 0x48uLL);
  v86 = v109[0];
  v95 = v109[1];
  v97 = v109[2];
  v98 = v109[3];
  v79 = v109[4];
  v80 = v109[5];
  v81 = v109[6];
  v82 = v109[7];
  v99 = v109[8];
  v108[0] = v109[0];
  v108[1] = v109[1];
  v108[2] = v109[2];
  v108[3] = v109[3];
  OUTLINED_FUNCTION_5();
  v29 = a1[20];
  v96 = sub_1C754F41C();
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219EA0);
  v106[3] = v84;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v106[4] = OpaqueTypeConformance2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v106);
  v88 = v25;
  sub_1C75504FC();
  v87 = v28;

  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();

  sub_1C717E390(v109, v107, &qword_1EC219000);
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();

  v30 = sub_1C75504FC();
  MEMORY[0x1CCA5B6D0](v30);
  v31 = StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(v108, v29, v106);
  if (v3)
  {

    sub_1C7030CDC(v109, &qword_1EC219000);
    LODWORD(a2) = v108[1];
    LODWORD(a1) = v108[2];

    __swift_destroy_boxed_opaque_existential_1(v106);

LABEL_18:
    v39 = 0;
    v40 = 0;
    v41 = 0;
    OUTLINED_FUNCTION_2_142();
    goto LABEL_19;
  }

  v42 = v31;

  v98 = v108[1];

  __swift_destroy_boxed_opaque_existential_1(v106);
  v106[0] = v91;
  v106[1] = v94;
  v106[2] = v93;
  v106[3] = v92;
  v43 = a1[20];
  v107[3] = v84;
  v107[4] = OpaqueTypeConformance2;
  __swift_allocate_boxed_opaque_existential_0(v107);
  v98 = v42;
  sub_1C75504FC();
  v44 = sub_1C75504FC();
  MEMORY[0x1CCA5B6D0](v44);
  v45 = StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(v106, v43, v107);

  __swift_destroy_boxed_opaque_existential_1(v107);
  v46 = sub_1C7238810(v98, v45);
  v106[0] = v79;
  v106[1] = v80;
  v106[2] = v81;
  v106[3] = v82;
  v95 = a1[20];
  v107[3] = v84;
  v107[4] = OpaqueTypeConformance2;
  __swift_allocate_boxed_opaque_existential_0(v107);
  v97 = v46;
  sub_1C75504FC();
  sub_1C75504FC();
  v47 = v95;
  sub_1C75504FC();
  sub_1C75504FC();

  v48 = sub_1C75504FC();
  MEMORY[0x1CCA5B6D0](v48);
  v49 = StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(v106, v47, v107);

  v96 = v106[1];

  __swift_destroy_boxed_opaque_existential_1(v107);
  v50 = sub_1C7238810(v98, v49);

  v96 = sub_1C7238810(v97, v50);

  OUTLINED_FUNCTION_5();
  v51 = a1[15];
  if (v51 >> 61 == 4)
  {
    memcpy(v108, ((v51 & 0x1FFFFFFFFFFFFFFFLL) + 16), 0x58uLL);
    if (v108[10] >> 61 == 3)
    {
      memcpy(v107, ((v108[10] & 0x1FFFFFFFFFFFFFFFLL) + 16), sizeof(v107));
      v95 = v107[10];
      v52 = v107[11];
      sub_1C75504FC();
      sub_1C717E390(v108, v106, &qword_1EC218FF8);

      sub_1C717E390(v107, v106, &qword_1EC219008);

      sub_1C7027A58(v107);

      if (v52 >> 61 == 2)
      {
        v53 = v52 & 0x1FFFFFFFFFFFFFFFLL;
        memcpy(v106, ((v52 & 0x1FFFFFFFFFFFFFFFLL) + 16), 0x58uLL);
        v54 = v106[10];
        sub_1C717E390(v106, &v105, &qword_1EC219010);
        sub_1C7027A58(v106);
        if (v54 >> 61 == 1)
        {
          boxed_opaque_existential_0 = v53;
          v86 = v54 & 0x1FFFFFFFFFFFFFFFLL;
          v55 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          memcpy(__src, v108, sizeof(__src));
          v95 = v55;
          sub_1C75504FC();
          OUTLINED_FUNCTION_5();
          v56 = a1[17];
          if (v56 >> 62 == 1)
          {
            v57 = *((v56 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

            sub_1C75504FC();

            OUTLINED_FUNCTION_5();
            if (a1[18])
            {
              v58 = a1[18];

              sub_1C7030CDC(v109, &qword_1EC219000);

              v59 = *(v58 + 16);
              v93 = *(v58 + 24);
              v94 = v59;
              v61 = *(v58 + 32);
              v60 = *(v58 + 40);
              v101 = *(v58 + 48);
              v62 = *(v58 + 56);
              LODWORD(v100) = *(v58 + 57);
              sub_1C71AACA4(v59);
              sub_1C75504FC();

              __dst[88] = v62;
              *a2 = v10;
              v64 = v103;
              v63 = v104;
              *(a2 + 8) = v89;
              *(a2 + 16) = v64;
              *(a2 + 24) = v63;
              memcpy((a2 + 32), __dst, 0x41uLL);
              *(a2 + 104) = v102;
              *(a2 + 112) = v78;
              *(a2 + 113) = v113;
              v65 = v93;
              *(a2 + 120) = v94;
              *(a2 + 128) = v65;
              *(a2 + 136) = v61;
              *(a2 + 144) = v60;
              *(a2 + 152) = v101;
              *(a2 + 160) = v62;
              *(a2 + 161) = v100;
              v66 = v96;
              v67 = v97;
              *(a2 + 168) = v98;
              *(a2 + 176) = v66;
              v68 = v88;
              *(a2 + 184) = v67;
              *(a2 + 192) = v68;
              v69 = v95;
              *(a2 + 200) = v99;
              *(a2 + 208) = v69;
              result = memcpy((a2 + 216), __src, 0x50uLL);
              *(a2 + 296) = v57;
              return result;
            }

            sub_1C7195E04();
            OUTLINED_FUNCTION_166_0();
            *v76 = 0;
            OUTLINED_FUNCTION_4_113(v76, 4);

            sub_1C7030CDC(v109, &qword_1EC219000);

            LODWORD(a1) = 1;
            LODWORD(a2) = 1;
          }

          else
          {
            sub_1C7195E04();
            v73 = OUTLINED_FUNCTION_166_0();
            OUTLINED_FUNCTION_3_129(v73, v74);
            OUTLINED_FUNCTION_4_113(v75, 3);

            sub_1C7030CDC(v109, &qword_1EC219000);

            LODWORD(a2) = 0;
            LODWORD(a1) = 1;
          }

          goto LABEL_46;
        }
      }
    }

    else
    {
      sub_1C75504FC();
      sub_1C717E390(v108, v107, &qword_1EC218FF8);
    }

    sub_1C7027A58(v108);
  }

  else
  {
    sub_1C75504FC();
  }

  LODWORD(a2) = v101;
  sub_1C7195E04();
  v70 = OUTLINED_FUNCTION_166_0();
  OUTLINED_FUNCTION_3_129(v70, v71);
  OUTLINED_FUNCTION_4_113(v72, 1);

  sub_1C7030CDC(v109, &qword_1EC219000);

  OUTLINED_FUNCTION_2_142();
LABEL_46:
  v39 = 1;
  v40 = 1;
  v41 = 1;
LABEL_19:
  memcpy(v107, __dst, 0x41uLL);
  sub_1C6FB5330(v107);

  if (v39)
  {

    if (!v40)
    {
LABEL_21:
      if (!v41)
      {
        goto LABEL_22;
      }

      goto LABEL_28;
    }
  }

  else if (!v40)
  {
    goto LABEL_21;
  }

  if (!v41)
  {
LABEL_22:
    if (!v40)
    {
      goto LABEL_23;
    }

    goto LABEL_29;
  }

LABEL_28:

  if (!v40)
  {
LABEL_23:
    if (!a1)
    {
      goto LABEL_24;
    }

    goto LABEL_30;
  }

LABEL_29:

  if (!a1)
  {
LABEL_24:
    if (a2)
    {
    }

    return result;
  }

LABEL_30:

  memcpy(v107, __src, 0x50uLL);
  result = sub_1C7027A58(v107);
  if (a2)
  {
  }

  return result;
}

uint64_t StoryElements.sanitizedUserPrompt.getter()
{
  v1 = *(v0 + 16);
  sub_1C75504FC();
  return v1;
}

uint64_t StoryElements.storyRequest.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 32), 0x41uLL);
  memcpy(a1, (v1 + 32), 0x41uLL);
  return sub_1C6FB52D4(__dst, &v4);
}

uint64_t StoryElements.sensitiveFlags.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 113);
  *a1 = *(v1 + 104);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
  return sub_1C75504FC();
}

uint64_t StoryElements.storyPromptAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  v4 = *(v1 + 136);
  v5 = *(v1 + 144);
  v6 = *(v1 + 152);
  v7 = *(v1 + 160);
  v8 = *(v1 + 161);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 41) = v8;
  sub_1C71AACA4(v2);

  return sub_1C75504FC();
}

uint64_t StoryElements.extendedTokens.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 216), sizeof(__dst));
  memcpy(a1, (v1 + 216), 0x50uLL);
  return sub_1C7027A20(__dst, &v4);
}

uint64_t static StoryElements.forTesting(isSuggestedPrompt:unambiguousUserPrompt:sanitizedUserPrompt:storyRequest:sensitiveFlags:storyPromptAttributes:retrievedAssetUUIDs:extendedRetrievedAssetUUIDs:extendedFromGlobalTraitsAssetUUIDs:storytellingAssetUUIDs:consolidatedPersonAssetUUIDs:queryTokens:extendedTokens:traits:)@<X0>(void *__src@<X4>, char a2@<W0>, void *a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15, uint64_t a16)
{
  memcpy(__dst, __src, 0x41uLL);
  v28 = *a6;
  v31 = *(a6 + 8);
  LOBYTE(a6) = *(a6 + 9);
  v22 = *a7;
  v21 = *(a7 + 8);
  v23 = *(a7 + 16);
  v24 = *(a7 + 24);
  v30 = *(a7 + 32);
  v29 = *(a7 + 40);
  LOBYTE(a7) = *(a7 + 41);
  memcpy(v38, a15, 0x50uLL);
  *a9 = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  memcpy((a9 + 32), __src, 0x41uLL);
  *(a9 + 104) = v28;
  *(a9 + 112) = v31;
  *(a9 + 113) = a6;
  *(a9 + 120) = v22;
  *(a9 + 128) = v21;
  *(a9 + 136) = v23;
  *(a9 + 144) = v24;
  *(a9 + 152) = v30;
  *(a9 + 160) = v29;
  *(a9 + 161) = a7;
  *(a9 + 168) = a8;
  *(a9 + 176) = a10;
  *(a9 + 184) = a11;
  *(a9 + 192) = a12;
  *(a9 + 200) = a13;
  *(a9 + 208) = a14;
  memcpy((a9 + 216), a15, 0x50uLL);
  *(a9 + 296) = a16;
  sub_1C6FB52D4(__dst, v36);
  sub_1C75504FC();
  sub_1C71AACA4(v22);
  sub_1C75504FC();
  sub_1C7027A20(v38, v36);
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v25 = a3;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  return sub_1C75504FC();
}

uint64_t sub_1C74E85FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 304))
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

uint64_t sub_1C74E863C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t GroundedLocation.init(text:normalizedText:lookupIdentifier:matchType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  sub_1C6FB5E8C();
  result = sub_1C755152C();
  a8[4] = result;
  a8[5] = a5;
  a8[6] = a6;
  a8[7] = a7;
  return result;
}

uint64_t PHSearchIndexEntityResultMatchType.description.getter()
{
  result = sub_1C7551AAC();
  __break(1u);
  return result;
}

uint64_t sub_1C74E895C()
{
  result = 1701736302;
  switch(*v0)
  {
    case 1:
      result = 0x746565727473;
      break;
    case 2:
      result = 0x7463697274736964;
      break;
    case 3:
      result = 0x79746E756F63;
      break;
    case 4:
      result = 0x7373656E69737562;
      break;
    case 5:
      result = 6909793;
      break;
    case 6:
      result = 2037672291;
      break;
    case 7:
      result = 0x6574617473;
      break;
    case 8:
      result = 0x7972746E756F63;
      break;
    case 9:
      result = 0x6E656E69746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

PhotosIntelligence::LocationHierarchyType_optional __swiftcall LocationHierarchyType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 10;
  if (rawValue < 0xA)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1C74E8A80@<X0>(uint64_t *a1@<X8>)
{
  result = LocationHierarchyType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t static GroundedLocation.< infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_1C7551DBC();
  }
}

uint64_t GroundedLocation.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[5];
  v3 = v0[6];
  sub_1C75504FC();
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000017, 0x80000001C75B30B0);
  MEMORY[0x1CCA5CD70](v1, v2);
  MEMORY[0x1CCA5CD70](0x54686374616D202CLL, 0xED0000203A657079);
  matched = PHSearchIndexEntityResultMatchType.description.getter();
  MEMORY[0x1CCA5CD70](matched);

  MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C75B30D0);
  if (v3)
  {
    v6 = v4;
  }

  else
  {
    v6 = 45;
  }

  if (!v3)
  {
    v3 = 0xE100000000000000;
  }

  MEMORY[0x1CCA5CD70](v6, v3);

  MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
  return 0;
}

BOOL static GroundedLocation.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = *a1 == *a2 && a1[1] == a2[1];
  v12 = a2[6];
  v16 = a2[7];
  v17 = a1[7];
  if (v11 || (sub_1C7551DBC() & 1) != 0)
  {
    v13 = v2 == v7 && v4 == v8;
    if (v13 || (sub_1C7551DBC()) && (sub_1C70020D4(v3, v10))
    {
      if (v6)
      {
        if (v12)
        {
          if (v5 == v9 && v6 == v12)
          {
            return v17 == v16;
          }

          OUTLINED_FUNCTION_90();
          if (sub_1C7551DBC())
          {
            return v17 == v16;
          }
        }
      }

      else if (!v12)
      {
        return v17 == v16;
      }
    }
  }

  return 0;
}

uint64_t sub_1C74E8DE4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7A696C616D726F6ELL && a2 == 0xEE00747865546465;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E69727473627573 && a2 == 0xEA00000000007367;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001C75B30F0 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x707954686374616DLL && a2 == 0xE900000000000065)
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

unint64_t sub_1C74E8FA4(char a1)
{
  result = 1954047348;
  switch(a1)
  {
    case 1:
      result = 0x7A696C616D726F6ELL;
      break;
    case 2:
      result = 0x6E69727473627573;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x707954686374616DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C74E9058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C74E8DE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C74E9080(uint64_t a1)
{
  v2 = sub_1C74E99AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C74E90BC(uint64_t a1)
{
  v2 = sub_1C74E99AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GroundedLocation.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C9C0);
  OUTLINED_FUNCTION_70_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v16 - v7;
  v9 = v1[2];
  v18 = v1[3];
  v19 = v9;
  v10 = v1[4];
  v16[2] = v1[5];
  v17 = v10;
  v11 = v1[6];
  v16[0] = v1[7];
  v16[1] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C74E99AC();
  sub_1C755200C();
  LOBYTE(v22) = 0;
  v12 = v20;
  sub_1C7551CCC();
  if (!v12)
  {
    v13 = v17;
    v14 = v16[0];
    LOBYTE(v22) = 1;
    sub_1C7551CCC();
    v22 = v13;
    v21 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C6FF60E4(&qword_1EDD0CF60);
    OUTLINED_FUNCTION_65();
    LOBYTE(v22) = 3;
    sub_1C7551C7C();
    v22 = v14;
    v21 = 4;
    type metadata accessor for PHSearchIndexEntityResultMatchType(0);
    sub_1C727260C(&qword_1EDD068B0);
    OUTLINED_FUNCTION_65();
  }

  return (*(v5 + 8))(v8, v2);
}

uint64_t GroundedLocation.hash(into:)()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  sub_1C75505AC();
  sub_1C75505AC();
  sub_1C70418D0();
  sub_1C7551F5C();
  if (v2)
  {
    sub_1C75505AC();
  }

  return MEMORY[0x1CCA5E460](v1);
}

uint64_t GroundedLocation.hashValue.getter()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C75505AC();
  sub_1C70418D0();
  sub_1C7551F5C();
  if (v2)
  {
    sub_1C75505AC();
  }

  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t GroundedLocation.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C9C8);
  OUTLINED_FUNCTION_70_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C74E99AC();
  sub_1C7551FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_1_153();
  v6 = sub_1C7551BBC();
  v22 = v7;
  LOBYTE(v27[0]) = 1;
  OUTLINED_FUNCTION_1_153();
  v8 = sub_1C7551BBC();
  v21 = v9;
  v19 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  sub_1C6FF60E4(&qword_1EDD0CF50);
  OUTLINED_FUNCTION_5_111();
  sub_1C7551C1C();
  v18 = v27[0];
  LOBYTE(v27[0]) = 3;
  OUTLINED_FUNCTION_1_153();
  v17 = sub_1C7551B6C();
  v20 = v10;
  type metadata accessor for PHSearchIndexEntityResultMatchType(0);
  v28 = 4;
  sub_1C727260C(&qword_1EDD068A8);
  OUTLINED_FUNCTION_5_111();
  sub_1C7551C1C();
  v11 = OUTLINED_FUNCTION_163();
  v12(v11);
  v16 = v29;
  *&v23 = v6;
  *(&v23 + 1) = v22;
  *&v24 = v19;
  *(&v24 + 1) = v21;
  *&v25 = v18;
  *(&v25 + 1) = v17;
  *&v26 = v20;
  *(&v26 + 1) = v29;
  v13 = v24;
  *a2 = v23;
  a2[1] = v13;
  v14 = v26;
  a2[2] = v25;
  a2[3] = v14;
  sub_1C70802EC(&v23, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v27[0] = v6;
  v27[1] = v22;
  v27[2] = v19;
  v27[3] = v21;
  v27[4] = v18;
  v27[5] = v17;
  v27[6] = v20;
  v27[7] = v16;
  return sub_1C7080348(v27);
}

uint64_t sub_1C74E9888()
{
  sub_1C7551F3C();
  GroundedLocation.hash(into:)();
  return sub_1C7551FAC();
}

uint64_t sub_1C74E98C8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_1C707D928(v7, v8) & 1;
}

uint64_t sub_1C74E9914(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_1C74EE088(v7, v8) & 1;
}

uint64_t sub_1C74E9960(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_1C74ED374(v7, v8) & 1;
}

unint64_t sub_1C74E99AC()
{
  result = qword_1EDD0F248[0];
  if (!qword_1EDD0F248[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD0F248);
  }

  return result;
}

unint64_t sub_1C74E9A00()
{
  result = qword_1EC21C9D0;
  if (!qword_1EC21C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C9D0);
  }

  return result;
}

unint64_t sub_1C74E9A54()
{
  result = qword_1EC21C9D8;
  if (!qword_1EC21C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C9D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationHierarchyType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GroundedLocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C74E9C74()
{
  result = qword_1EC21C9E0;
  if (!qword_1EC21C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C9E0);
  }

  return result;
}

unint64_t sub_1C74E9CCC()
{
  result = qword_1EDD0F238;
  if (!qword_1EDD0F238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F238);
  }

  return result;
}

unint64_t sub_1C74E9D24()
{
  result = qword_1EDD0F240;
  if (!qword_1EDD0F240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F240);
  }

  return result;
}

unint64_t StoryPersonRelationshipType.rawValue.getter()
{
  result = 0x746E696175716361;
  switch(*v0)
  {
    case 1:
      v2 = 0x6568746F7262;
      return v2 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
    case 2:
      return OUTLINED_FUNCTION_3_130();
    case 3:
      return 0xD000000000000015;
    case 4:
      v4 = 0x6B726F776F63;
      return v4 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
    case 5:
      v4 = 0x746867756164;
      return v4 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
    case 6:
      return 0xD000000000000013;
    case 7:
      return 0x796C696D6166;
    case 8:
      v3 = 1752457574;
      goto LABEL_21;
    case 9:
      return 0x646E65697266;
    case 0xA:
      return 0xD000000000000010;
    case 0xB:
      return 25965;
    case 0xC:
      return 0x726568746F6DLL;
    case 0xD:
      return 0x746E65726170;
    case 0xE:
      v2 = 0x656E74726170;
      return v2 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
    case 0xF:
      return 7237491;
    case 0x10:
      v3 = 1953720691;
LABEL_21:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
      break;
    case 0x11:
      result = 7367030;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static StoryGenerationCharacterTypes.detectionTypeString(for:isPlural:)(__int16 a1, char a2)
{
  switch(a1)
  {
    case 0:
    case 2:
      if (qword_1EC214268 != -1)
      {
        OUTLINED_FUNCTION_1_154();
      }

      v2 = sub_1C754FF1C();
      __swift_project_value_buffer(v2, qword_1EC25B9C0);
      v3 = sub_1C754FEEC();
      v4 = sub_1C755119C();
      if (!OUTLINED_FUNCTION_7_0(v4))
      {
        goto LABEL_19;
      }

      *swift_slowAlloc() = 0;
      v7 = "Could not generate string for unknown type.";
      goto LABEL_18;
    case 1:
      if (a2)
      {
        return 0x656C706F6570;
      }

      else
      {
        return 0x6E6F73726570;
      }

    case 3:
      v8 = (a2 & 1) == 0;
      v9 = 6778724;
      v10 = 1936158564;
      goto LABEL_11;
    case 4:
      v8 = (a2 & 1) == 0;
      v9 = 7627107;
      v10 = 1937006947;
LABEL_11:
      if (v8)
      {
        result = v9;
      }

      else
      {
        result = v10;
      }

      break;
    default:
      if (qword_1EC214268 != -1)
      {
        OUTLINED_FUNCTION_1_154();
      }

      v12 = sub_1C754FF1C();
      __swift_project_value_buffer(v12, qword_1EC25B9C0);
      v3 = sub_1C754FEEC();
      v13 = sub_1C755119C();
      if (OUTLINED_FUNCTION_7_0(v13))
      {
        *swift_slowAlloc() = 0;
        v7 = "Could not generate string for undetected type.";
LABEL_18:
        OUTLINED_FUNCTION_9_87(&dword_1C6F5C000, v5, v6, v7);
        OUTLINED_FUNCTION_109();
      }

LABEL_19:

      result = 0;
      break;
  }

  return result;
}

uint64_t StoryPersonRelationshipType.pluralValue.getter()
{
  result = 0x746E696175716361;
  switch(*v0)
  {
    case 1:
      v2 = 0x6568746F7262;
      return v2 & 0xFFFFFFFFFFFFLL | 0x7372000000000000;
    case 2:
      return 0x6E6572646C696863;
    case 3:
      OUTLINED_FUNCTION_27_54();
      return v11 + 5;
    case 4:
      v9 = 0x6B726F776F63;
      return v9 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
    case 5:
      v9 = 0x746867756164;
      return v9 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
    case 6:
      OUTLINED_FUNCTION_27_54();
      return v12 + 3;
    case 7:
      return 0x7365696C696D6166;
    case 8:
      v3 = 1752457574;
      goto LABEL_25;
    case 9:
      v10 = 0x646E65697266;
      goto LABEL_26;
    case 0xA:
      return 0xD000000000000011;
    case 0xB:
      if (qword_1EC214288 != -1)
      {
        OUTLINED_FUNCTION_12_91();
      }

      v4 = sub_1C754FF1C();
      __swift_project_value_buffer(v4, qword_1EC25B9E0);
      v5 = sub_1C754FEEC();
      v6 = sub_1C755119C();
      if (OUTLINED_FUNCTION_7_0(v6))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_9_87(&dword_1C6F5C000, v7, v8, "Me person relationship type should not be called with plural.");
        OUTLINED_FUNCTION_109();
      }

      return 25965;
    case 0xC:
      return 0x73726568746F6DLL;
    case 0xD:
      v10 = 0x746E65726170;
      goto LABEL_26;
    case 0xE:
      v2 = 0x656E74726170;
      return v2 & 0xFFFFFFFFFFFFLL | 0x7372000000000000;
    case 0xF:
      return 1936617331;
    case 0x10:
      v3 = 1953720691;
LABEL_25:
      v10 = v3 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
LABEL_26:
      result = v10 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
      break;
    case 0x11:
      result = 1936746870;
      break;
    default:
      return result;
  }

  return result;
}

void static StoryGenerationCharacterTypes.unbiasedRelationshipsStringsWithPrefix.getter()
{
  v1 = 0;
  BYTE5(v46[1]) = 0;
  HIWORD(v46[1]) = -5120;
  strcpy(v46, "acquaintance");
  OUTLINED_FUNCTION_3_1();
  v48 = v2;
  v49 = v3;
  OUTLINED_FUNCTION_3_1();
  v47 = v4;
  v5 = MEMORY[0x1E69E7CC0];
  v51 = xmmword_1C75604F0;
  do
  {
    v6 = byte_1F46AA428[v1 + 32];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_0_212(inited, v51);
    switch(v10)
    {
      case 1:
        OUTLINED_FUNCTION_4_114();
        goto LABEL_6;
      case 2:
        OUTLINED_FUNCTION_8_100();
        break;
      case 3:
        OUTLINED_FUNCTION_7_106();
        v8 = v47;
        break;
      case 4:
        OUTLINED_FUNCTION_11_84();
        goto LABEL_17;
      case 5:
        OUTLINED_FUNCTION_10_89();
LABEL_17:
        v9 = v13 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
        break;
      case 6:
        OUTLINED_FUNCTION_6_120();
        v8 = v48;
        break;
      case 7:
        OUTLINED_FUNCTION_14_77();
        break;
      case 8:
        OUTLINED_FUNCTION_20_65();
        goto LABEL_22;
      case 9:
        OUTLINED_FUNCTION_13_98();
        break;
      case 10:
        v9 = 0xD000000000000010;
        v8 = v49;
        break;
      case 11:
        v8 = 0xE200000000000000;
        v9 = 25965;
        break;
      case 12:
        OUTLINED_FUNCTION_2_143();
        break;
      case 13:
        OUTLINED_FUNCTION_15_87();
        break;
      case 14:
        OUTLINED_FUNCTION_5_112();
LABEL_6:
        v9 = v11 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
        break;
      case 15:
        OUTLINED_FUNCTION_19_81();
        break;
      case 16:
        OUTLINED_FUNCTION_21_66();
LABEL_22:
        v9 = v12 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
        break;
      case 17:
        OUTLINED_FUNCTION_18_73();
        break;
      default:
        break;
    }

    v0[4] = v9;
    v0[5] = v8;
    LOBYTE(v52) = v6;
    v0[6] = StoryPersonRelationshipType.pluralValue.getter();
    v0[7] = v14;
    v15 = *(v5 + 16);
    if (__OFADD__(v15, 2))
    {
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || (v16 = *(v5 + 24) >> 1, v16 < v15 + 2))
    {
      sub_1C6FB1814();
      v5 = v17;
      v16 = *(v17 + 24) >> 1;
    }

    if (v16 - *(v5 + 16) < 2)
    {
      goto LABEL_69;
    }

    swift_arrayInitWithCopy();

    v18 = *(v5 + 16);
    v19 = __OFADD__(v18, 2);
    v20 = v18 + 2;
    if (v19)
    {
      goto LABEL_70;
    }

    *(v5 + 16) = v20;
    ++v1;
  }

  while (v1 != 10);
  v52 = &unk_1F46AA2A8;
  sub_1C6FD2568(v5);
  v21 = 0;
  v22 = unk_1F46AA2B8;
  v50 = &unk_1F46AA2A8;
  v23 = &unk_1F46AA2D0;
  v24 = MEMORY[0x1E69E7CC0];
  while (v22 != v21)
  {
    if (v21 >= v50[2])
    {
      goto LABEL_71;
    }

    v26 = *(v23 - 1);
    v25 = *v23;
    v27 = swift_initStackObject();
    v27[1] = v51;
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](v26, v25);
    v27[2].n128_u64[0] = 2128237;
    v27[2].n128_u64[1] = 0xE300000000000000;
    v52 = 543516788;
    v53 = 0xE400000000000000;
    MEMORY[0x1CCA5CD70](v26, v25);
    v27[3].n128_u64[0] = 543516788;
    v27[3].n128_u64[1] = 0xE400000000000000;

    v28 = *(v24 + 16);
    if (__OFADD__(v28, 2))
    {
      goto LABEL_72;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || (v29 = *(v24 + 24) >> 1, v29 < v28 + 2))
    {
      sub_1C6FB1814();
      v24 = v30;
      v29 = *(v30 + 24) >> 1;
    }

    if (v29 - *(v24 + 16) < 2)
    {
      goto LABEL_73;
    }

    swift_arrayInitWithCopy();

    v31 = *(v24 + 16);
    v19 = __OFADD__(v31, 2);
    v32 = v31 + 2;
    if (v19)
    {
      goto LABEL_74;
    }

    *(v24 + 16) = v32;
    v23 += 2;
    ++v21;
  }

  v33 = byte_1F46AA4C8;
  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_1C755BAB0;
  v35 = v34;
  v36 = MEMORY[0x1E69E7CC0];
  switch(v33)
  {
    case 1:
      v46[1] = 0xE700000000000000;
      v37 = 0x6568746F7262;
      goto LABEL_44;
    case 2:
      v46[1] = 0xE500000000000000;
      v39 = 0x646C696863;
      goto LABEL_62;
    case 3:
      OUTLINED_FUNCTION_7_106();
      v41 = v47;
      goto LABEL_58;
    case 4:
      v46[1] = 0xE800000000000000;
      v40 = 0x6B726F776F63;
      goto LABEL_55;
    case 5:
      v46[1] = 0xE800000000000000;
      v40 = 0x746867756164;
LABEL_55:
      v39 = v40 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
      goto LABEL_62;
    case 6:
      OUTLINED_FUNCTION_6_120();
      v41 = v48;
      goto LABEL_58;
    case 7:
      OUTLINED_FUNCTION_22_70();
      v39 = 0x796C696D6166;
      goto LABEL_62;
    case 8:
      OUTLINED_FUNCTION_22_70();
      v38 = 1752457574;
      goto LABEL_61;
    case 9:
      OUTLINED_FUNCTION_22_70();
      v39 = 0x646E65697266;
      goto LABEL_62;
    case 10:
      v46[0] = 0xD000000000000010;
      v46[1] = v49;
      break;
    case 11:
      v46[1] = 0xE200000000000000;
      v39 = 25965;
      goto LABEL_62;
    case 12:
      OUTLINED_FUNCTION_2_143();
LABEL_58:
      v46[0] = v42;
      v46[1] = v41;
      break;
    case 13:
      OUTLINED_FUNCTION_22_70();
      v39 = 0x746E65726170;
      goto LABEL_62;
    case 14:
      v46[1] = 0xE700000000000000;
      v37 = 0x656E74726170;
LABEL_44:
      v39 = v37 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
      goto LABEL_62;
    case 15:
      v46[1] = 0xE300000000000000;
      v39 = 7237491;
      goto LABEL_62;
    case 16:
      OUTLINED_FUNCTION_22_70();
      v38 = 1953720691;
LABEL_61:
      v39 = v38 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
      goto LABEL_62;
    case 17:
      v46[1] = 0xE300000000000000;
      v39 = 7367030;
LABEL_62:
      v46[0] = v39;
      break;
    default:
      break;
  }

  *(v35 + 32) = v46[0];
  *(v35 + 40) = v46[1];
  v43 = *(v36 + 16);
  if (!swift_isUniquelyReferenced_nonNull_native() || (v44 = *(v36 + 24) >> 1, v44 <= v43))
  {
    sub_1C6FB1814();
    v36 = v45;
    v44 = *(v45 + 24) >> 1;
  }

  if (v44 > *(v36 + 16))
  {
    swift_arrayInitWithCopy();

    ++*(v36 + 16);
    sub_1C6FD2568(v36);
    sub_1C6FD2568(v24);
    sub_1C6FD2568(&unk_1F46AA458);
    sub_1C706D154(v50);
    return;
  }

LABEL_75:
  __break(1u);
}

uint64_t StoryPersonAgeType.rawValue.getter()
{
  result = 0x6E6F73726570;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_3_130();
      break;
    case 2:
      result = OUTLINED_FUNCTION_16_75();
      break;
    case 3:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

void static StoryGenerationCharacterTypes.relationshipsAsStrings(for:includePlural:)(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  v5 = a1 + 32;
  OUTLINED_FUNCTION_3_1();
  v32 = v6;
  v33 = v7;
  OUTLINED_FUNCTION_3_1();
  v31 = v8;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    ++v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
    if (a2)
    {
      v10 = swift_allocObject();
      OUTLINED_FUNCTION_0_212(v10, xmmword_1C75604F0);
      switch(v13)
      {
        case 1:
          OUTLINED_FUNCTION_4_114();
          goto LABEL_11;
        case 2:
          OUTLINED_FUNCTION_8_100();
          break;
        case 3:
          OUTLINED_FUNCTION_7_106();
          v11 = v31;
          break;
        case 4:
          OUTLINED_FUNCTION_11_84();
          goto LABEL_33;
        case 5:
          OUTLINED_FUNCTION_10_89();
LABEL_33:
          v12 = v22 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
          break;
        case 6:
          OUTLINED_FUNCTION_6_120();
          v11 = v32;
          break;
        case 7:
          OUTLINED_FUNCTION_14_77();
          break;
        case 8:
          OUTLINED_FUNCTION_20_65();
          goto LABEL_43;
        case 9:
          OUTLINED_FUNCTION_13_98();
          break;
        case 10:
          v12 = 0xD000000000000010;
          v11 = v33;
          break;
        case 11:
          v11 = 0xE200000000000000;
          v12 = 25965;
          break;
        case 12:
          OUTLINED_FUNCTION_2_143();
          break;
        case 13:
          OUTLINED_FUNCTION_15_87();
          break;
        case 14:
          OUTLINED_FUNCTION_5_112();
LABEL_11:
          v12 = v14 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
          break;
        case 15:
          OUTLINED_FUNCTION_19_81();
          break;
        case 16:
          OUTLINED_FUNCTION_21_66();
LABEL_43:
          v12 = v20 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          break;
        case 17:
          OUTLINED_FUNCTION_18_73();
          break;
        default:
          break;
      }

      v2[4] = v12;
      v2[5] = v11;
      v2[6] = StoryPersonRelationshipType.pluralValue.getter();
      v2[7] = v24;
      v25 = v2[2];
    }

    else
    {
      v15 = swift_allocObject();
      OUTLINED_FUNCTION_0_212(v15, xmmword_1C755BAB0);
      switch(v18)
      {
        case 1:
          OUTLINED_FUNCTION_4_114();
          goto LABEL_13;
        case 2:
          OUTLINED_FUNCTION_8_100();
          break;
        case 3:
          OUTLINED_FUNCTION_7_106();
          v16 = v31;
          break;
        case 4:
          OUTLINED_FUNCTION_11_84();
          goto LABEL_35;
        case 5:
          OUTLINED_FUNCTION_10_89();
LABEL_35:
          v17 = v23 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
          break;
        case 6:
          OUTLINED_FUNCTION_6_120();
          v16 = v32;
          break;
        case 7:
          OUTLINED_FUNCTION_14_77();
          break;
        case 8:
          OUTLINED_FUNCTION_20_65();
          goto LABEL_46;
        case 9:
          OUTLINED_FUNCTION_13_98();
          break;
        case 10:
          v17 = 0xD000000000000010;
          v16 = v33;
          break;
        case 11:
          v16 = 0xE200000000000000;
          v17 = 25965;
          break;
        case 12:
          OUTLINED_FUNCTION_2_143();
          break;
        case 13:
          OUTLINED_FUNCTION_15_87();
          break;
        case 14:
          OUTLINED_FUNCTION_5_112();
LABEL_13:
          v17 = v19 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
          break;
        case 15:
          OUTLINED_FUNCTION_19_81();
          break;
        case 16:
          OUTLINED_FUNCTION_21_66();
LABEL_46:
          v17 = v21 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          break;
        case 17:
          OUTLINED_FUNCTION_18_73();
          break;
        default:
          break;
      }

      v2[4] = v17;
      v2[5] = v16;
      v25 = 1;
    }

    v26 = *(v9 + 16);
    if (__OFADD__(v26, v25))
    {
      break;
    }

    if (swift_isUniquelyReferenced_nonNull_native() && v26 + v25 <= *(v9 + 24) >> 1)
    {
      if (!v25)
      {
        goto LABEL_56;
      }
    }

    else
    {
      sub_1C6FB1814();
      v9 = v30;
      if (!v25)
      {
LABEL_56:

        goto LABEL_57;
      }
    }

    if ((*(v9 + 24) >> 1) - *(v9 + 16) < v25)
    {
      goto LABEL_61;
    }

    swift_arrayInitWithCopy();

    v27 = *(v9 + 16);
    v28 = __OFADD__(v27, v25);
    v29 = v27 + v25;
    if (v28)
    {
      goto LABEL_62;
    }

    *(v9 + 16) = v29;
LABEL_57:
    if (!--v3)
    {
      return;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
}

Swift::String __swiftcall StoryPersonRelationshipType.string(isPlural:)(Swift::Bool isPlural)
{
  if (isPlural)
  {
    v1 = StoryPersonRelationshipType.pluralValue.getter();
  }

  else
  {
    v1 = StoryPersonRelationshipType.rawValue.getter();
  }

  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String_optional __swiftcall StoryPersonRelationshipType.frequencyString(for:)(Swift::Int a1)
{
  v3 = *v1;
  if (a1 < 2)
  {
    v4 = StoryPersonRelationshipType.rawValue.getter();
  }

  else
  {
    v4 = StoryPersonRelationshipType.pluralValue.getter();
  }

  v6 = v4;
  v7 = v5;
  if ((sub_1C6FA0848(v3, 11) & 1) == 0)
  {
    v6 = static StoryGenerationCharacterTypes.frequencyString(for:typeString:)(a1, v6, v7);
    v9 = v8;

    v7 = v9;
  }

  v10 = v6;
  v11 = v7;
  result.value._object = v11;
  result.value._countAndFlagsBits = v10;
  return result;
}

uint64_t static StoryGenerationCharacterTypes.detectionTypeFrequencyString(for:type:)(uint64_t a1, __int16 a2)
{
  v4 = static StoryGenerationCharacterTypes.detectionTypeString(for:isPlural:)(a2, a1 > 1);
  if (v3)
  {
    v4 = static StoryGenerationCharacterTypes.frequencyString(for:typeString:)(a1, v4, v3);
  }

  return v4;
}

Swift::String_optional __swiftcall StoryPersonAgeType.frequencyString(for:prefixString:)(Swift::Int a1, Swift::String_optional prefixString)
{
  object = prefixString.value._object;
  countAndFlagsBits = prefixString.value._countAndFlagsBits;
  v6 = *v2;
  v7 = 0xE600000000000000;
  if (a1 < 2)
  {
    v8 = 0x6E6F73726570;
    switch(v6)
    {
      case 1:
        v7 = 0xE500000000000000;
        v8 = 0x646C696863;
        if (prefixString.value._object)
        {
          goto LABEL_12;
        }

        break;
      case 2:
        v7 = 0xE400000000000000;
        v8 = 2036490594;
        if (prefixString.value._object)
        {
          goto LABEL_12;
        }

        break;
      case 3:
LABEL_8:
        v7 = 0xE500000000000000;
        v8 = 0x726568746FLL;
        if (prefixString.value._object)
        {
          goto LABEL_12;
        }

        break;
      default:
LABEL_11:
        if (prefixString.value._object)
        {
LABEL_12:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
          v9 = swift_allocObject();
          *(v9 + 16) = xmmword_1C75604F0;
          v10 = MEMORY[0x1E69E6158];
          *(v9 + 56) = MEMORY[0x1E69E6158];
          v11 = sub_1C6F6D524();
          *(v9 + 32) = countAndFlagsBits;
          *(v9 + 40) = object;
          *(v9 + 96) = v10;
          *(v9 + 104) = v11;
          *(v9 + 64) = v11;
          *(v9 + 72) = v8;
          *(v9 + 80) = v7;
          sub_1C75504FC();
          OUTLINED_FUNCTION_28_45();
          v8 = sub_1C75506BC();
          v7 = v12;
        }

        break;
    }
  }

  else
  {
    v8 = 0x656C706F6570;
    switch(v6)
    {
      case 1:
        v7 = 0xE800000000000000;
        v8 = 0x6E6572646C696863;
        if (prefixString.value._object)
        {
          goto LABEL_12;
        }

        break;
      case 2:
        v8 = 0x736569626162;
        goto LABEL_11;
      case 3:
        goto LABEL_8;
      default:
        goto LABEL_11;
    }
  }

  v13 = static StoryGenerationCharacterTypes.frequencyString(for:typeString:)(a1, v8, v7);
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.value._object = v17;
  result.value._countAndFlagsBits = v16;
  return result;
}

uint64_t sub_1C74EB034()
{
  sub_1C7047818();
  result = sub_1C755146C();
  qword_1EC25B9B8 = result;
  return result;
}

void *sub_1C74EB0D0()
{
  result = sub_1C75504DC();
  off_1EC21C9E8 = result;
  return result;
}

uint64_t static StoryGenerationCharacterTypes.relationshipByAbbreviatedRelationship.getter()
{
  if (qword_1EC214270 != -1)
  {
    swift_once();
  }

  return sub_1C75504FC();
}

uint64_t sub_1C74EB1A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C75604F0;
  v1 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v2 = sub_1C6F6D524();
  *(v0 + 32) = 97;
  *(v0 + 40) = 0xE100000000000000;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 64) = v2;
  *(v0 + 72) = 0x6E6F73726570;
  *(v0 + 80) = 0xE600000000000000;
  OUTLINED_FUNCTION_28_45();
  result = sub_1C75506BC();
  qword_1EC21C9F0 = result;
  *algn_1EC21C9F8 = v4;
  return result;
}

uint64_t static StoryGenerationCharacterTypes.aPersonString.getter()
{
  if (qword_1EC214278 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC21C9F0;
  sub_1C75504FC();
  return v0;
}

uint64_t static StoryGenerationCharacterTypes.frequencyString(for:typeString:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 1)
  {
    if (qword_1EC214268 != -1)
    {
      OUTLINED_FUNCTION_1_154();
    }

    v8 = sub_1C754FF1C();
    __swift_project_value_buffer(v8, qword_1EC25B9C0);
    sub_1C75504FC();
    v9 = sub_1C754FEEC();
    v10 = sub_1C755119C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13[0] = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_1C6F765A4(a2, a3, v13);
      *(v11 + 12) = 2048;
      *(v11 + 14) = a1;
      _os_log_impl(&dword_1C6F5C000, v9, v10, "Cannot generate a frequency string for character type %s with %ld characters.", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v12);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    return 0;
  }

  else
  {
    v13[0] = sub_1C7551D8C();
    v13[1] = v6;
    MEMORY[0x1CCA5CD70](32, 0xE100000000000000);
    MEMORY[0x1CCA5CD70](a2, a3);
    return v13[0];
  }
}

Swift::String __swiftcall StoryPersonAgeType.string(isPlural:)(Swift::Bool isPlural)
{
  v2 = 0xE600000000000000;
  if (isPlural)
  {
    v3 = 0x656C706F6570;
    switch(*v1)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_9_100();
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_17_84();
        break;
      case 3:
        goto LABEL_6;
      default:
        break;
    }
  }

  else
  {
    v3 = 0x6E6F73726570;
    switch(*v1)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_3_130();
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_16_75();
        break;
      case 3:
LABEL_6:
        v2 = 0xE500000000000000;
        v3 = 0x726568746FLL;
        break;
      default:
        break;
    }
  }

  result._object = v2;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_1C74EB4FC()
{
  sub_1C7047818();
  result = sub_1C755146C();
  qword_1EC25B9D8 = result;
  return result;
}

PhotosIntelligence::StoryPersonRelationshipType_optional __swiftcall StoryPersonRelationshipType.init(relationshipName:)(Swift::String relationshipName)
{
  object = relationshipName._object;
  countAndFlagsBits = relationshipName._countAndFlagsBits;
  v4 = v1;
  sub_1C75504FC();
  v5._countAndFlagsBits = countAndFlagsBits;
  v5._object = object;
  StoryPersonRelationshipType.init(rawValue:)(v5);
  v6 = v15;
  if (v15 == 18)
  {
    if (qword_1EC214288 != -1)
    {
      OUTLINED_FUNCTION_12_91();
    }

    v7 = sub_1C754FF1C();
    __swift_project_value_buffer(v7, qword_1EC25B9E0);
    sub_1C75504FC();
    v8 = sub_1C754FEEC();
    v9 = sub_1C755119C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      v12 = sub_1C6F765A4(countAndFlagsBits, object, &v14);

      *(v10 + 4) = v12;
      _os_log_impl(&dword_1C6F5C000, v8, v9, "Could not convert %s into a PersonRelationshipType, unable to create relationship.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }
  }

  else
  {
  }

  *v4 = v6;
  return result;
}

PhotosIntelligence::StoryPersonRelationshipType_optional __swiftcall StoryPersonRelationshipType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551DFC();

  v5 = 18;
  if (v3 < 0x12)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1C74EB7A4@<X0>(unint64_t *a1@<X8>)
{
  result = StoryPersonRelationshipType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t StoryPersonAgeType.pluralValue.getter()
{
  result = 0x656C706F6570;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_9_100();
      break;
    case 2:
      result = OUTLINED_FUNCTION_17_84();
      break;
    case 3:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

PhotosIntelligence::StoryPersonAgeType_optional __swiftcall StoryPersonAgeType.init(rawValue:)(Swift::String rawValue)
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

uint64_t sub_1C74EB958@<X0>(uint64_t *a1@<X8>)
{
  result = StoryPersonAgeType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C74EBA34()
{
  result = qword_1EDD08BD8;
  if (!qword_1EDD08BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD08BD8);
  }

  return result;
}

unint64_t sub_1C74EBA8C()
{
  result = qword_1EDD0A698[0];
  if (!qword_1EDD0A698[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD0A698);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoryGenerationCharacterTypes(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for StoryPersonRelationshipType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoryPersonAgeType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C74EBD38()
{
  result = qword_1EC21CA00;
  if (!qword_1EC21CA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CA00);
  }

  return result;
}

unint64_t sub_1C74EBD8C()
{
  result = qword_1EDD0D820;
  if (!qword_1EDD0D820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D820);
  }

  return result;
}

PhotosIntelligence::MusicArousalValence __swiftcall MusicArousalValence.init(arousal:valence:)(Swift::Float arousal, Swift::Float valence)
{
  *v2 = arousal;
  v2[1] = valence;
  result.valence = valence;
  result.arousal = arousal;
  return result;
}

uint64_t sub_1C74EBE30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6173756F7261 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636E656C6176 && a2 == 0xE700000000000000)
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

uint64_t sub_1C74EBF00(char a1)
{
  if (a1)
  {
    return 0x65636E656C6176;
  }

  else
  {
    return 0x6C6173756F7261;
  }
}

uint64_t sub_1C74EBF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C74EBE30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C74EBF60(uint64_t a1)
{
  v2 = sub_1C74EC144();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C74EBF9C(uint64_t a1)
{
  v2 = sub_1C74EC144();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MusicArousalValence.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21CA08);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C74EC144();
  sub_1C755200C();
  v8[15] = 0;
  sub_1C7551CFC();
  if (!v1)
  {
    v8[14] = 1;
    sub_1C7551CFC();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1C74EC144()
{
  result = qword_1EC21CA10;
  if (!qword_1EC21CA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CA10);
  }

  return result;
}

uint64_t MusicArousalValence.description.getter()
{
  sub_1C7550F6C();
  MEMORY[0x1CCA5CD70](8236, 0xE200000000000000);
  sub_1C7550F6C();
  return 0;
}

_BYTE *storeEnumTagSinglePayload for MusicArousalValence.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C74EC364()
{
  result = qword_1EC21CA18;
  if (!qword_1EC21CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CA18);
  }

  return result;
}

unint64_t sub_1C74EC3BC()
{
  result = qword_1EC21CA20;
  if (!qword_1EC21CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CA20);
  }

  return result;
}

unint64_t sub_1C74EC414()
{
  result = qword_1EC21CA28;
  if (!qword_1EC21CA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CA28);
  }

  return result;
}

id static CurationPredicateBuilder.internalPredicateForMessagesBackdropAssets(lastUpdatedDate:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_1C754DF6C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1E69E7CC0];
  v9 = static CurationPredicateBuilder.AssetPredicates.assetPredicatesForMessagesBackdrop()();
  sub_1C6FD30C4(v9);
  static CurationPredicateBuilder.AssetPredicates.Face.predicate(for:)(&unk_1F46A7930);
  MEMORY[0x1CCA5D040]();
  v10 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v10 >> 1)
  {
    OUTLINED_FUNCTION_15(v10);
    sub_1C7550B9C();
  }

  sub_1C7550BEC();
  sub_1C7033844(a1, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1C70D7CB8(v4);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_1C6F65BE8(0, &qword_1EDD0FAD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
    v11 = OUTLINED_FUNCTION_20_0();
    *(v11 + 16) = xmmword_1C75604F0;
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = sub_1C6F6D524();
    *(v11 + 32) = 0x7461446465646461;
    *(v11 + 40) = 0xE900000000000065;
    v12 = sub_1C754DECC();
    *(v11 + 96) = sub_1C6F65BE8(0, &unk_1EDD0CD28);
    *(v11 + 104) = sub_1C706700C();
    *(v11 + 72) = v12;
    sub_1C755112C();
    MEMORY[0x1CCA5D040]();
    v13 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v13 >> 1)
    {
      OUTLINED_FUNCTION_15(v13);
      sub_1C7550B9C();
    }

    sub_1C7550BEC();
    (*(v6 + 8))(v8, v5);
  }

  sub_1C6F65BE8(0, &qword_1EDD0FA80);
  return sub_1C6F6E5C4();
}

id static CurationPredicateBuilder.internalPredicateForMessagesBackdropRelatedAssets(in:)(uint64_t a1)
{
  v2 = static CurationPredicateBuilder.AssetPredicates.assetPredicatesForMessagesBackdrop()();
  sub_1C6FD30C4(v2);
  static CurationPredicateBuilder.AssetPredicates.Face.predicate(for:)(&unk_1F46A7930);
  MEMORY[0x1CCA5D040]();
  OUTLINED_FUNCTION_2_144();
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  if (v5 >= v4 >> 1)
  {
    OUTLINED_FUNCTION_15(v4);
    OUTLINED_FUNCTION_4_115();
  }

  OUTLINED_FUNCTION_3_131();
  sub_1C7550BEC();
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v6 = OUTLINED_FUNCTION_20_0();
  *(v6 + 16) = xmmword_1C75604F0;
  v7 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v8 = sub_1C6F6D524();
  *(v6 + 64) = v8;
  *(v6 + 32) = 0x752E746E656D6F6DLL;
  *(v6 + 40) = 0xEB00000000646975;
  *(v6 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  *(v6 + 104) = sub_1C71D0360();
  *(v6 + 72) = a1;
  sub_1C75504FC();
  sub_1C755112C();
  MEMORY[0x1CCA5D040]();
  OUTLINED_FUNCTION_2_144();
  v11 = *(v9 + 16);
  v10 = *(v9 + 24);
  if (v11 >= v10 >> 1)
  {
    OUTLINED_FUNCTION_15(v10);
    OUTLINED_FUNCTION_4_115();
  }

  sub_1C7550BEC();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C755BAB0;
  *(v12 + 56) = v7;
  *(v12 + 64) = v8;
  *(v12 + 32) = 0xD00000000000001CLL;
  *(v12 + 40) = 0x80000001C75A2960;
  OUTLINED_FUNCTION_0_94();
  sub_1C755112C();
  MEMORY[0x1CCA5D040]();
  OUTLINED_FUNCTION_2_144();
  v15 = *(v13 + 16);
  v14 = *(v13 + 24);
  if (v15 >= v14 >> 1)
  {
    OUTLINED_FUNCTION_15(v14);
    OUTLINED_FUNCTION_4_115();
  }

  sub_1C7550BEC();
  sub_1C6F65BE8(0, &qword_1EDD0FA80);
  return sub_1C6F6E5C4();
}

id static CurationPredicateBuilder.internalPredicateForGyroPoster()()
{
  v0 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C7565670;
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v2 = OUTLINED_FUNCTION_20_0();
  *(v2 + 16) = xmmword_1C75604F0;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1C6F6D524();
  *(v2 + 32) = 0x74627553646E696BLL;
  *(v2 + 40) = 0xEB00000000657079;
  v3 = MEMORY[0x1E69E72E8];
  *(v2 + 96) = MEMORY[0x1E69E7290];
  *(v2 + 104) = v3;
  *(v2 + 72) = 1;
  OUTLINED_FUNCTION_0_94();
  *(inited + 32) = sub_1C755112C();
  sub_1C6FD30C4(inited);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21CA30);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1C755D200;
  *(v4 + 32) = xmmword_1C7591A90;
  *(v4 + 48) = xmmword_1C755FEA0;
  *(v4 + 64) = 6;
  *(v4 + 72) = &unk_1F46A8B30;
  sub_1C755195C();
  for (i = 32; i != 80; i += 8)
  {
    CurationPredicateBuilder.AssetPredicates.predicate.getter();
    sub_1C755192C();
    OUTLINED_FUNCTION_3_131();
    sub_1C755196C();
    OUTLINED_FUNCTION_3_131();
    sub_1C755197C();
    sub_1C755193C();
  }

  swift_setDeallocating();
  sub_1C6FDCA2C();
  sub_1C6FD30C4(v0);
  sub_1C6F65BE8(0, &qword_1EDD0FA80);
  return sub_1C74ECD60(1);
}

id static CurationPredicateBuilder.internalPredicateForDailyPhotosFace(excluding:)(uint64_t a1, uint64_t a2)
{
  v4 = CurationPredicateBuilder.AssetPredicates.predicate.getter();
  MEMORY[0x1CCA5D040](v4, v5);
  OUTLINED_FUNCTION_2_144();
  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  if (v8 >= v7 >> 1)
  {
    OUTLINED_FUNCTION_15(v7);
    OUTLINED_FUNCTION_4_115();
  }

  sub_1C7550BEC();
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v9 = OUTLINED_FUNCTION_20_0();
  *(v9 + 16) = xmmword_1C75604F0;
  v10 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1C6F6D524();
  *(v9 + 32) = 1684632949;
  *(v9 + 40) = 0xE400000000000000;
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 64) = v11;
  *(v9 + 72) = a1;
  *(v9 + 80) = a2;
  sub_1C75504FC();
  OUTLINED_FUNCTION_0_94();
  v12 = sub_1C755112C();
  MEMORY[0x1CCA5D040](v12, v13);
  OUTLINED_FUNCTION_2_144();
  v16 = *(v14 + 16);
  v15 = *(v14 + 24);
  if (v16 >= v15 >> 1)
  {
    OUTLINED_FUNCTION_15(v15);
    OUTLINED_FUNCTION_4_115();
  }

  sub_1C7550BEC();
  sub_1C6F65BE8(0, &qword_1EDD0FA80);
  return sub_1C6F6E5C4();
}

id sub_1C74ECD60(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  v3 = sub_1C7550B3C();

  v4 = [v2 initWithType:a1 subpredicates:v3];

  return v4;
}

uint64_t static CurationPredicateBuilder.AssetPredicates.assetPredicatesForMessagesBackdrop()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21CA30);
  inited = swift_initStackObject();
  inited[1] = xmmword_1C755D200;
  inited[2] = xmmword_1C755FF30;
  inited[3] = xmmword_1C7591AA0;
  inited[4] = xmmword_1C7591AB0;
  v3 = MEMORY[0x1E69E7CC0];
  sub_1C755195C();
  for (i = 32; i != 80; i += 8)
  {
    CurationPredicateBuilder.AssetPredicates.predicate.getter();
    sub_1C755192C();
    OUTLINED_FUNCTION_3_131();
    sub_1C755196C();
    OUTLINED_FUNCTION_3_131();
    sub_1C755197C();
    sub_1C755193C();
  }

  swift_setDeallocating();
  sub_1C6FDCA2C();
  return v3;
}

unint64_t sub_1C74ECEEC()
{
  result = 0x43746F4E73657965;
  switch(*v0)
  {
    case 1:
      result = 0x6B73614D6F6ELL;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x6C61755165636166;
      break;
    case 6:
      result = 0x72756C4265636166;
      break;
    case 7:
      result = 0x65736F5065636166;
      break;
    case 8:
      result = 0x6C6C6F5265636166;
      break;
    default:
      return result;
  }

  return result;
}

PhotosIntelligence::CurationPredicateBuilder::AssetPredicates::Face_optional __swiftcall CurationPredicateBuilder.AssetPredicates.Face.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C74ED094@<X0>(uint64_t *a1@<X8>)
{
  result = CurationPredicateBuilder.AssetPredicates.Face.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C74ED0C4()
{
  result = qword_1EC21CA38;
  if (!qword_1EC21CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CA38);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CurationPredicateBuilder(_BYTE *result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_18PhotosIntelligence24CurationPredicateBuilderV15AssetPredicatesO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C74ED1DC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF6 && *(a1 + 8))
  {
    return (*a1 + 2147483639);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 8;
  if (v4 >= 0xA)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C74ED234(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF7)
  {
    *result = 0;
    *result = a2 - 2147483639;
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CurationPredicateBuilder.AssetPredicates.Face(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C74ED374(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v3 == *a1 && v4 == a1[1])
  {
    return 0;
  }

  else
  {
    return OUTLINED_FUNCTION_14_78();
  }
}

uint64_t sub_1C74ED3BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v3 == *(a1 + 8) && v4 == *(a1 + 16))
  {
    return 0;
  }

  else
  {
    return sub_1C7551DBC();
  }
}

uint64_t sub_1C74ED3E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CD0) - 8);
    sub_1C74A34D0(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5, a2);
    v7 = OUTLINED_FUNCTION_27_55();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CD0);
    v7 = OUTLINED_FUNCTION_6_11();
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_1C74ED4C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C75504FC();
  }

  return OUTLINED_FUNCTION_90();
}

void *sub_1C74ED508(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 8 * v1 + 24);
  v3 = v2;
  return v2;
}

uint64_t sub_1C74ED548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_1C754DF6C();
    (*(*(v6 - 8) + 16))(a2, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = OUTLINED_FUNCTION_27_55();
  }

  else
  {
    sub_1C754DF6C();
    v7 = OUTLINED_FUNCTION_6_11();
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

char *sub_1C74ED5F8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1C6FB6330(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v3 + 32);
      }
    }

    return MEMORY[0x1CCA5DDD0](v3, a1);
  }

  result = sub_1C75516BC();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1C74ED68C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C75504FC();
  }

  return OUTLINED_FUNCTION_90();
}

uint64_t MusicMood.closestPHMemoryMood()()
{
  memcpy(__dst, v0, sizeof(__dst));
  if (LOBYTE(__dst[4]) != 1)
  {
    return __dst[3];
  }

  v1 = *(__dst[9] + 16);
  if (v1)
  {
    v2 = (__dst[9] + 32);
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      v4 = *v2++;
      LOBYTE(v17[0]) = v4;
      static MusicMood.musicMoodFromMoodIdentifier(_:)(v17, v16);
      memcpy(v17, v16, sizeof(v17));
      sub_1C713A098(v17);
      if ((v17[4] & 1) == 0)
      {
        v5 = v17[3];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB2F14();
          v3 = v7;
        }

        v6 = v3[2];
        if (v6 >= v3[3] >> 1)
        {
          sub_1C6FB2F14();
          v3 = v8;
        }

        v3[2] = v6 + 1;
        v3[v6 + 4] = v5;
      }

      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  if (v3[2])
  {
    v9 = v3[4];
  }

  else
  {

    if (qword_1EC214290 != -1)
    {
      OUTLINED_FUNCTION_1_155();
    }

    v10 = sub_1C754FF1C();
    __swift_project_value_buffer(v10, qword_1EC21CA40);
    sub_1C709D4BC(__dst, v17);
    v11 = sub_1C754FEEC();
    v12 = sub_1C755117C();
    sub_1C713A098(__dst);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1C6F765A4(__dst[1], __dst[2], v17);
      _os_log_impl(&dword_1C6F5C000, v11, v12, "[Warning-Music] No compatible PHMemoryMood found for %s. Using neutral mood", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    return 16;
  }

  return v9;
}

void *static MusicMood.musicMoodFromMoodName(_:)@<X0>(void *a1@<X8>)
{
  if (qword_1EDD06CC8 != -1)
  {
LABEL_16:
    OUTLINED_FUNCTION_0_213();
  }

  v2 = 0;
  v3 = off_1EDD06CD0;
  v4 = *(off_1EDD06CD0 + 2);
  for (i = off_1EDD06CD0 + 32; ; i += 128)
  {
    if (v4 == v2)
    {
      sub_1C6FC0604(__dst);
      v27 = __dst;
      return memcpy(a1, v27, 0x80uLL);
    }

    if (v2 >= v3[2])
    {
      __break(1u);
      goto LABEL_16;
    }

    memcpy(__dst, i, sizeof(__dst));
    v6 = sub_1C75506FC();
    v8 = v7;
    v9 = sub_1C75506FC();
    if (v6 == v9 && v8 == v10)
    {
      break;
    }

    v18 = sub_1C7551DBC();
    v19 = v18;
    OUTLINED_FUNCTION_30_55(v18, v20, v21, v22, v23, v24, v25, v26, v30, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __dst[0]);

    if (v19)
    {
      goto LABEL_13;
    }

    sub_1C713A098(__dst);
    ++v2;
  }

  OUTLINED_FUNCTION_30_55(v9, v10, v11, v12, v13, v14, v15, v16, v30, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __dst[0]);

LABEL_13:
  memcpy(__src, __dst, sizeof(__src));
  CGRectMake(v28);
  v27 = __src;
  return memcpy(a1, v27, 0x80uLL);
}

Swift::Float __swiftcall MusicMood.currentModelScoreThreshold()()
{
  v1 = *(v0 + 112);
  v2 = [objc_opt_self() modelVersion];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = -1;
  }

  v23 = v4;
  v5 = sub_1C7551D8C();
  v7 = sub_1C6FE1358(v5, v6, v1);

  if ((v7 & 0x100000000) == 0)
  {
    return *&v7;
  }

  v9 = sub_1C703FEE4(v1);
  v10 = sub_1C74ED4C4(v9);
  v12 = v11;

  if (v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  v15 = sub_1C6FE1358(v13, v14, v1);
  if ((v15 & 0x100000000) != 0)
  {
    v8 = -1.0;
  }

  else
  {
    v8 = *&v15;
  }

  if (qword_1EC214290 != -1)
  {
    OUTLINED_FUNCTION_1_155();
  }

  v16 = sub_1C754FF1C();
  __swift_project_value_buffer(v16, qword_1EC21CA40);
  sub_1C75504FC();
  v17 = sub_1C754FEEC();
  v18 = sub_1C755119C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v23 = v20;
    *v19 = 134218242;
    *(v19 + 4) = v8;
    *(v19 + 12) = 2080;
    v21 = sub_1C6F765A4(v13, v14, &v23);

    *(v19 + 14) = v21;
    _os_log_impl(&dword_1C6F5C000, v17, v18, "Unable to resolve the model so using the fallback version: %f using lastKey: %s", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v20);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  return v8;
}

uint64_t sub_1C74EDCE0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD78);
    v3 = sub_1C7551B0C();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1C74F1E98(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void *static MusicMood.musicMoodFromPHMemoryMood(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (qword_1EDD06CC8 != -1)
  {
    OUTLINED_FUNCTION_0_213();
  }

  v4 = *(off_1EDD06CD0 + 2);
  v5 = off_1EDD06CD0 + 32;
  if (v4)
  {
    while (1)
    {
      memcpy(__dst, v5, sizeof(__dst));
      if ((__dst[4] & 1) == 0 && __dst[3] == a1)
      {
        break;
      }

      v5 += 128;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }

    v11 = OUTLINED_FUNCTION_90();
    memcpy(v11, v12, 0x80uLL);
    return sub_1C709D4BC(__dst, &v13);
  }

  else
  {
LABEL_7:
    if (qword_1EC214290 != -1)
    {
      OUTLINED_FUNCTION_1_155();
    }

    v6 = sub_1C754FF1C();
    __swift_project_value_buffer(v6, qword_1EC21CA40);
    v7 = sub_1C754FEEC();
    v8 = sub_1C755119C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = a1;
      _os_log_impl(&dword_1C6F5C000, v7, v8, "musicMoodFromPHMemoryMood wasn't able to resolve phMemoryMood = %llu. Using fallback mood", v9, 0xCu);
      OUTLINED_FUNCTION_109();
    }

    LOBYTE(__dst[0]) = 0;
    return static MusicMood.musicMoodFromMoodIdentifier(_:)(__dst, a2);
  }
}

uint64_t MusicMood.descriptionDetails.getter()
{
  v1 = v0[1];
  v3 = v0[5];
  v2 = v0[6];
  memcpy(v12, v0 + 7, sizeof(v12));
  MusicMood.closestPHMemoryMood()();
  v4 = PHStringForMemoryMood();
  if (v4)
  {
    v5 = v4;
    v6 = sub_1C755068C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  sub_1C755180C();
  sub_1C75504FC();

  MEMORY[0x1CCA5CD70](0xD000000000000010, 0x80000001C75B3170);
  MEMORY[0x1CCA5CD70](v6, v8);

  MEMORY[0x1CCA5CD70](0xD000000000000016, 0x80000001C75B3190);
  if (v2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0;
  }

  if (v2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](v9, v10);

  MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
  return v1;
}

uint64_t sub_1C74EE088(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1C7551DBC() ^ 1;
  }

  return v3 & 1;
}

uint64_t sub_1C74EE0FC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1C7551DBC() ^ 1;
  }

  return v3 & 1;
}

void MusicMood.moodsMaestroKeywordsDictionary(shouldIncludeCompatibleMoods:shouldIncludeIncompatibleMoods:)(char a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 72);
  v5 = *(v1 + 124);
  if (v3)
  {
    v6 = *(v1 + 120);
    v7 = *(v1 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214F48);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C755BAB0;
    *(inited + 32) = v7;
    *(inited + 40) = v3;
    *(inited + 48) = v6;
    sub_1C75504FC();
  }

  v43 = sub_1C75504DC();
  if ((a1 & 1) != 0 && (v9 = *(v4 + 16)) != 0)
  {
    v10 = (v4 + 32);
    v11 = MEMORY[0x1E69E7CC0];
    do
    {
      v12 = *v10++;
      LOBYTE(__dst[0]) = v12;
      static MusicMood.musicMoodFromMoodIdentifier(_:)(__dst, __src);
      memcpy(__dst, __src, 0x80uLL);
      v13 = __dst[6];
      if (__dst[6])
      {
        v14 = __dst[5];
        sub_1C75504FC();
        sub_1C713A098(__dst);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214F48);
        v15 = swift_initStackObject();
        *(v15 + 16) = xmmword_1C755BAB0;
        *(v15 + 32) = v14;
        *(v15 + 40) = v13;
        *(v15 + 48) = v5;
      }

      else
      {
        sub_1C713A098(__dst);
      }

      v16 = sub_1C75504DC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB30BC();
        v11 = v19;
      }

      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        OUTLINED_FUNCTION_15(v17);
        sub_1C6FB30BC();
        v11 = v20;
      }

      *(v11 + 16) = v18 + 1;
      *(v11 + 8 * v18 + 32) = v16;
      --v9;
    }

    while (v9);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v21 = 1 << *(v43 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v43 + 64);
  v24 = (v21 + 63) >> 6;
  sub_1C75504FC();
  v25 = 0;
  v26 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v27 >= v24)
    {

      v38 = 0;
      __dst[0] = MEMORY[0x1E69E7CC0];
      v39 = *(v11 + 16);
      while (v39 != v38)
      {
        if (v38 >= *(v11 + 16))
        {
          goto LABEL_35;
        }

        v40 = v38 + 1;
        v41 = sub_1C75504FC();
        sub_1C6FD2A40(v41);
        v38 = v40;
      }

      v42 = sub_1C71BAA70(__dst[0]);

      __dst[0] = v26;
      sub_1C6FD298C(v42);
      sub_1C74EDCE0(__dst[0]);
      return;
    }

    v23 = *(v43 + 64 + 8 * v27);
    ++v25;
    if (v23)
    {
      v25 = v27;
      do
      {
LABEL_23:
        v28 = __clz(__rbit64(v23)) | (v25 << 6);
        v29 = (*(v43 + 48) + 16 * v28);
        v31 = *v29;
        v30 = v29[1];
        v32 = *(*(v43 + 56) + 4 * v28);
        sub_1C75504FC();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB2F3C();
          v26 = v36;
        }

        v34 = *(v26 + 16);
        v33 = *(v26 + 24);
        if (v34 >= v33 >> 1)
        {
          OUTLINED_FUNCTION_15(v33);
          sub_1C6FB2F3C();
          v26 = v37;
        }

        v23 &= v23 - 1;
        *(v26 + 16) = v34 + 1;
        v35 = v26 + 24 * v34;
        *(v35 + 32) = v31;
        *(v35 + 40) = v30;
        *(v35 + 48) = v32;
      }

      while (v23);
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_1C74EE51C()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21CA40);
  __swift_project_value_buffer(v0, qword_1EC21CA40);
  return sub_1C754FEFC();
}

double MusicMood.arousalValence.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 104);
  *a1 = result;
  return result;
}

void *static MusicMood.musicMoodFromMoodIdentifier(_:)@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (qword_1EDD06CC8 != -1)
  {
LABEL_79:
    OUTLINED_FUNCTION_0_213();
  }

  v4 = 0;
  v5 = off_1EDD06CD0;
  v6 = *(off_1EDD06CD0 + 2);
  v7 = off_1EDD06CD0 + 32;
  while (v6 != v4)
  {
    if (v4 >= v5[2])
    {
      __break(1u);
      goto LABEL_79;
    }

    memcpy(__dst, v7, 0x80uLL);
    v14 = 0xE700000000000000;
    v15 = 0x6C61727475656ELL;
    switch(LOBYTE(__dst[0]))
    {
      case 1:
        v14 = 0xE500000000000000;
        v15 = 0x7970706168;
        break;
      case 2:
        v15 = 0x6E656D69746E6573;
        v14 = 0xEB000000006C6174;
        break;
      case 3:
        v14 = 0xE600000000000000;
        v15 = 0x656C746E6567;
        break;
      case 4:
        v14 = 0xE500000000000000;
        v15 = 0x6C6C696863;
        break;
      case 5:
        OUTLINED_FUNCTION_23_57();
        v14 = v20 + 4;
        break;
      case 6:
        v14 = 0xE600000000000000;
        v15 = 0x796D61657264;
        break;
      case 7:
        v14 = 0xE400000000000000;
        v15 = 1667854437;
        break;
      case 8:
        v14 = 0xE400000000000000;
        v15 = 1651862627;
        break;
      case 9:
        v15 = 0x656D6572747865;
        break;
      case 0xA:
        v15 = 0x69676C6174736F6ELL;
        v14 = 0xE900000000000063;
        break;
      case 0xB:
        v14 = 0xE800000000000000;
        v15 = 0x6369746E616D6F72;
        break;
      case 0xC:
        v14 = 0xE800000000000000;
        v18 = 1667327344;
        goto LABEL_16;
      case 0xD:
        v14 = 0xE500000000000000;
        v15 = 0x63696D6F63;
        break;
      case 0xE:
        v17 = 0x657469637865;
        goto LABEL_14;
      case 0xF:
        v16 = 2036427888;
        goto LABEL_19;
      case 0x10:
        v16 = 1701867368;
LABEL_19:
        v15 = v16 | 0x6C756600000000;
        break;
      case 0x11:
        v14 = 0xE300000000000000;
        v15 = 6578547;
        break;
      case 0x12:
        v15 = 0x6F69746365666661;
        v14 = 0xEC0000006574616ELL;
        break;
      case 0x13:
        v15 = 0x6168706D75697274;
        v14 = 0xEA0000000000746ELL;
        break;
      case 0x14:
        v14 = 0xE600000000000000;
        v19 = 2053205345;
        goto LABEL_34;
      case 0x15:
        v15 = 0x73756F69786E61;
        break;
      case 0x16:
        v14 = 0xE500000000000000;
        v15 = 0x64756F7270;
        break;
      case 0x17:
        v14 = 0xE600000000000000;
        v19 = 1937075553;
LABEL_34:
        v15 = v19 & 0xFFFF0000FFFFFFFFLL | 0x646500000000;
        break;
      case 0x18:
        v14 = 0xE800000000000000;
        v18 = 1952543335;
LABEL_16:
        v15 = v18 | 0x6C75666500000000;
        break;
      case 0x19:
        v17 = 0x657375636F66;
LABEL_14:
        v15 = v17 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
        break;
      default:
        break;
    }

    v21 = 0xE700000000000000;
    v22 = 0x6C61727475656ELL;
    switch(v3)
    {
      case 1:
        v21 = 0xE500000000000000;
        v22 = 0x7970706168;
        break;
      case 2:
        v22 = 0x6E656D69746E6573;
        v21 = 0xEB000000006C6174;
        break;
      case 3:
        v21 = 0xE600000000000000;
        v22 = 0x656C746E6567;
        break;
      case 4:
        v21 = 0xE500000000000000;
        v22 = 0x6C6C696863;
        break;
      case 5:
        OUTLINED_FUNCTION_23_57();
        v21 = v27 + 4;
        break;
      case 6:
        v21 = 0xE600000000000000;
        v22 = 0x796D61657264;
        break;
      case 7:
        v21 = 0xE400000000000000;
        v22 = 1667854437;
        break;
      case 8:
        v21 = 0xE400000000000000;
        v22 = 1651862627;
        break;
      case 9:
        v22 = 0x656D6572747865;
        break;
      case 10:
        v22 = 0x69676C6174736F6ELL;
        v21 = 0xE900000000000063;
        break;
      case 11:
        v21 = 0xE800000000000000;
        v22 = 0x6369746E616D6F72;
        break;
      case 12:
        v21 = 0xE800000000000000;
        v25 = 1667327344;
        goto LABEL_46;
      case 13:
        v21 = 0xE500000000000000;
        v22 = 0x63696D6F63;
        break;
      case 14:
        v24 = 0x657469637865;
        goto LABEL_44;
      case 15:
        v23 = 2036427888;
        goto LABEL_49;
      case 16:
        v23 = 1701867368;
LABEL_49:
        v22 = v23 | 0x6C756600000000;
        break;
      case 17:
        v21 = 0xE300000000000000;
        v22 = 6578547;
        break;
      case 18:
        v22 = 0x6F69746365666661;
        v21 = 0xEC0000006574616ELL;
        break;
      case 19:
        v22 = 0x6168706D75697274;
        v21 = 0xEA0000000000746ELL;
        break;
      case 20:
        v21 = 0xE600000000000000;
        v26 = 2053205345;
        goto LABEL_64;
      case 21:
        v22 = 0x73756F69786E61;
        break;
      case 22:
        v21 = 0xE500000000000000;
        v22 = 0x64756F7270;
        break;
      case 23:
        v21 = 0xE600000000000000;
        v26 = 1937075553;
LABEL_64:
        v22 = v26 & 0xFFFF0000FFFFFFFFLL | 0x646500000000;
        break;
      case 24:
        v21 = 0xE800000000000000;
        v25 = 1952543335;
LABEL_46:
        v22 = v25 | 0x6C75666500000000;
        break;
      case 25:
        v24 = 0x657375636F66;
LABEL_44:
        v22 = v24 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
        break;
      default:
        break;
    }

    if (v15 == v22 && v14 == v21)
    {
      OUTLINED_FUNCTION_30_55(v15, v8, v22, v9, v10, v11, v12, v13, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, __dst[0]);

      return memcpy(a2, __dst, 0x80uLL);
    }

    v29 = sub_1C7551DBC();
    v30 = v29;
    OUTLINED_FUNCTION_30_55(v29, v31, v32, v33, v34, v35, v36, v37, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, __dst[0]);

    if (v30)
    {
      return memcpy(a2, __dst, 0x80uLL);
    }

    sub_1C713A098(__dst);
    v7 += 128;
    ++v4;
  }

  if (qword_1EC214290 != -1)
  {
    OUTLINED_FUNCTION_1_155();
  }

  v38 = sub_1C754FF1C();
  __swift_project_value_buffer(v38, qword_1EC21CA40);
  v39 = sub_1C754FEEC();
  v40 = sub_1C755119C();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    __dst[0] = v42;
    *v41 = 136315138;
    v43 = MusicMoodIdentifier.rawValue.getter();
    v45 = sub_1C6F765A4(v43, v44, __dst);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_1C6F5C000, v39, v40, "musicMoodFromMoodIdentifier wasn't able to resolve moodIdentifier = %s. Using fallback mood", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  LOBYTE(__dst[0]) = 0;
  return static MusicMood.musicMoodFromMoodIdentifier(_:)(__dst);
}

Swift::String __swiftcall MusicMood.resolvedFlexMoodName()()
{
  if (!*(v0 + 64))
  {
    v4 = 0;
    static MusicMood.musicMoodFromMoodIdentifier(_:)(&v4, v5);
    sub_1C75504FC();
    sub_1C713A098(v5);
  }

  sub_1C75504FC();
  v1 = OUTLINED_FUNCTION_90();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

void *static MusicMood.musicMoodFromFlexMoodNameOrTag(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  __dst[0] = a1;
  __dst[1] = a2;
  v68 = sub_1C755068C();
  v69 = v4;
  v85 = 0;
  v86 = 0xE000000000000000;
  v5 = sub_1C6FB5E8C();
  v57 = v5;
  v58 = v5;
  v55 = MEMORY[0x1E69E6158];
  v56 = v5;
  sub_1C755155C();

  v6 = sub_1C75506FC();
  v8 = v7;

  if (qword_1EDD06CC8 != -1)
  {
LABEL_45:
    result = OUTLINED_FUNCTION_0_213();
  }

  v10 = 0;
  v11 = off_1EDD06CD0;
  v12 = *(off_1EDD06CD0 + 2);
  v13 = off_1EDD06CD0 + 32;
  __src = off_1EDD06CD0 + 32;
  while (v12 != v10)
  {
    if (v10 >= v11[2])
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    result = memcpy(__dst, v13, sizeof(__dst));
    if (__dst[8])
    {
      if (sub_1C75506FC() == v6 && v14 == v8)
      {
        sub_1C709D4BC(__dst, &v68);

LABEL_22:

        v30 = a3;
        return memcpy(v30, __dst, 0x80uLL);
      }

      OUTLINED_FUNCTION_25_48();
      v16 = sub_1C7551DBC();
      sub_1C709D4BC(__dst, &v68);

      if (v16)
      {
        goto LABEL_22;
      }

      result = sub_1C713A098(__dst);
    }

    v13 += 128;
    ++v10;
  }

  v59 = a3;
  v17 = 0;
  v61 = v5;
  v62 = v11[2];
  v5 = MEMORY[0x1E69E6158];
  v18 = __src;
  while (v62 != v17)
  {
    if (v17 >= v11[2])
    {
      goto LABEL_43;
    }

    result = memcpy(__dst, v18, sizeof(__dst));
    if (__dst[8])
    {
      a3 = __dst[7];
      v19 = sub_1C75506FC();
      OUTLINED_FUNCTION_15_88(v19, v20, v21, v22, v23, v24, v25, v26, v55, v56, v57, v58, v59, __src, v61, v62, v18, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, __dst[0]);
      v27 = sub_1C75515AC();

      if (v27 & 1) != 0 || (v68 = v6, v69 = v8, v85 = sub_1C75506FC(), v86 = v28, v29 = sub_1C75515AC(), , (v29))
      {
LABEL_40:

        v30 = v59;
        return memcpy(v30, __dst, 0x80uLL);
      }

      result = sub_1C713A098(__dst);
      v18 = v63;
    }

    v18 += 128;
    ++v17;
  }

  v31 = 0;
  v64 = v11[2];
  v32 = MEMORY[0x1E69E6158];
  v33 = __src;
  v5 = v61;
  while (v64 != v31)
  {
    if (v31 >= v11[2])
    {
      goto LABEL_44;
    }

    memcpy(__dst, v33, sizeof(__dst));
    v34 = sub_1C75506FC();
    v36 = v35;
    OUTLINED_FUNCTION_15_88(v34, v35, v37, v38, v39, v40, v41, v42, v55, v56, v57, v58, v59, __src, v61, v62, v64, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, __dst[0]);
    if (sub_1C75515AC())
    {
LABEL_39:

      goto LABEL_40;
    }

    v68 = v6;
    v69 = v8;
    v85 = v34;
    v86 = v36;
    a3 = v32;
    v43 = sub_1C75515AC();

    if (v43)
    {
      goto LABEL_40;
    }

    result = sub_1C713A098(__dst);
    v33 += 128;
    ++v31;
    v32 = a3;
  }

  v44 = 0;
  v65 = v11[2];
  while (1)
  {
    if (v65 == v44)
    {

      LOBYTE(__dst[0]) = 0;
      return static MusicMood.musicMoodFromMoodIdentifier(_:)(__dst, v59);
    }

    if (v44 >= v11[2])
    {
      break;
    }

    result = memcpy(__dst, __src, sizeof(__dst));
    if (__dst[6])
    {
      v45 = sub_1C75506FC();
      v47 = v46;
      OUTLINED_FUNCTION_15_88(v45, v46, v48, v49, v50, v51, v52, v53, v55, v56, v57, v58, v59, __src, v61, v62, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, __dst[0]);
      if (OUTLINED_FUNCTION_28_46())
      {
        goto LABEL_39;
      }

      v68 = v6;
      v69 = v8;
      v85 = v45;
      v86 = v47;
      v54 = OUTLINED_FUNCTION_28_46();

      if (v54)
      {
        goto LABEL_40;
      }

      result = sub_1C713A098(__dst);
    }

    __src += 128;
    ++v44;
  }

  __break(1u);
  return result;
}

uint64_t static MusicMood.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 0;
  }

  else
  {
    return OUTLINED_FUNCTION_14_78();
  }
}

uint64_t sub_1C74EF240(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1C707D994(v4, __dst) & 1;
}

uint64_t sub_1C74EF298(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1C74EE0FC(v4, __dst) & 1;
}

uint64_t sub_1C74EF2F0(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1C74ED3BC(v4, __dst) & 1;
}

uint64_t MusicMood.hash(into:)()
{
  MusicMoodIdentifier.rawValue.getter();
  sub_1C75505AC();
}

uint64_t MusicMood.hashValue.getter()
{
  sub_1C7551F3C();
  MusicMoodIdentifier.rawValue.getter();
  sub_1C75505AC();

  return sub_1C7551FAC();
}

uint64_t sub_1C74EF420()
{
  sub_1C7551F3C();
  MusicMoodIdentifier.rawValue.getter();
  sub_1C75505AC();

  return sub_1C7551FAC();
}

double sub_1C74EF484()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215018);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C7591D20;
  type metadata accessor for MusicLocalizer();
  OUTLINED_FUNCTION_9_101("PIFMusicMoodNameHappy");
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_22_71("PIFMusicMoodDescriptionNeutral");
  OUTLINED_FUNCTION_144();
  v6 = sub_1C75504DC();
  *(v5 + 32) = 0;
  *(v5 + 40) = v0;
  *(v5 + 48) = v1;
  *(v5 + 56) = 16;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0u;
  *(v5 + 88) = xmmword_1C7591D30;
  v7 = MEMORY[0x1E69E7CC0];
  *(v5 + 104) = MEMORY[0x1E69E7CC0];
  *(v5 + 112) = v7;
  *(v5 + 120) = v2;
  *(v5 + 128) = v3;
  *(v5 + 136) = 0x3DCCCCCD3F19999ALL;
  *(v5 + 144) = v6;
  *(v5 + 152) = 0x3E4CCCCD3F000000;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000015, 0x80000001C75A9700);
  OUTLINED_FUNCTION_59();
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001CLL, 0x80000001C75B32A0);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_25_48();
  v8 = sub_1C75504DC();
  *(v5 + 160) = 1;
  *(v5 + 168) = v1;
  *(v5 + 176) = v2;
  *(v5 + 184) = 32;
  *(v5 + 192) = 0;
  *(v5 + 200) = xmmword_1C7591D40;
  *(v5 + 216) = xmmword_1C7591D50;
  *(v5 + 232) = &unk_1F469F3C0;
  *(v5 + 240) = &unk_1F469F3E8;
  *(v5 + 248) = v3;
  *(v5 + 256) = v4;
  *(v5 + 264) = vdup_n_s32(0x3F4CCCCDu);
  *(v5 + 272) = v8;
  *(v5 + 280) = 0x3E4CCCCD3F000000;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000019, 0x80000001C75A9760);
  OUTLINED_FUNCTION_59();
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000020, 0x80000001C75B32C0);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_25_48();
  sub_1C75504DC();
  *(v5 + 288) = 5;
  *(v5 + 296) = v1;
  *(v5 + 304) = v2;
  *(v5 + 312) = 64;
  *(v5 + 320) = 0;
  *(v5 + 328) = 0x656D657469637845;
  *(v5 + 336) = xmmword_1C7591D60;
  OUTLINED_FUNCTION_23_57();
  *(v5 + 352) = v9 | 4;
  *(v5 + 360) = &unk_1F469F478;
  *(v5 + 368) = &unk_1F469F4A8;
  *(v5 + 376) = v3;
  *(v5 + 384) = v4;
  *(v5 + 392) = 0x3F4CCCCD3F19999ALL;
  *(v5 + 400) = v10;
  *(v5 + 408) = 0x3E4CCCCD3F000000;
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001BLL, 0x80000001C75A9740);
  OUTLINED_FUNCTION_59();
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000022, 0x80000001C75B3310);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_25_48();
  v11 = sub_1C75504DC();
  *(v5 + 416) = 2;
  *(v5 + 424) = v1;
  *(v5 + 432) = v2;
  *(v5 + 440) = 2;
  *(v5 + 448) = 0;
  *(v5 + 456) = 0xD000000000000010;
  *(v5 + 464) = 0x80000001C75B32F0;
  *(v5 + 472) = 0x6E656D69746E6553;
  *(v5 + 480) = 0xEB000000006C6174;
  *(v5 + 488) = &unk_1F469F540;
  *(v5 + 496) = &unk_1F469F570;
  *(v5 + 504) = v3;
  *(v5 + 512) = v4;
  *(v5 + 520) = 0x3F4CCCCD3ECCCCCDLL;
  *(v5 + 528) = v11;
  *(v5 + 536) = 0x3E4CCCCD3F000000;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000018, 0x80000001C75A98C0);
  OUTLINED_FUNCTION_59();
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001FLL, 0x80000001C75B3340);
  OUTLINED_FUNCTION_10_90();
  sub_1C75504DC();
  *(v5 + 544) = 12;
  *(v5 + 552) = v1;
  *(v5 + 560) = v2;
  *(v5 + 568) = 0;
  *(v5 + 576) = 1;
  OUTLINED_FUNCTION_7_107();
  *(v5 + 584) = v12 | 0x6165505F00000000;
  *(v5 + 592) = xmmword_1C7591D70;
  *(v5 + 608) = 0xE800000000000000;
  *(v5 + 616) = &unk_1F469F608;
  *(v5 + 624) = &unk_1F469F630;
  *(v5 + 632) = v3;
  *(v5 + 640) = v4;
  *(v5 + 648) = 0x3F4CCCCD3E4CCCCDLL;
  *(v5 + 656) = v13;
  *(v5 + 664) = 0x3E4CCCCD3F000000;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000015, 0x80000001C75A9640);
  OUTLINED_FUNCTION_59();
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001CLL, 0x80000001C75B3360);
  OUTLINED_FUNCTION_10_90();
  sub_1C75504DC();
  *(v5 + 672) = 4;
  *(v5 + 680) = v1;
  *(v5 + 688) = v2;
  *(v5 + 696) = 8;
  *(v5 + 704) = 0;
  OUTLINED_FUNCTION_7_107();
  *(v5 + 712) = v14 | 0x6C65525F00000000;
  *(v5 + 720) = xmmword_1C7591D80;
  *(v5 + 736) = 0xE500000000000000;
  *(v5 + 744) = &unk_1F469F6C8;
  *(v5 + 752) = &unk_1F469F6F0;
  *(v5 + 760) = v3;
  *(v5 + 768) = v4;
  *(v5 + 776) = 0x3DCCCCCD3E4CCCCDLL;
  *(v5 + 784) = v15;
  *(v5 + 792) = 0x3E4CCCCD3F000000;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000016, 0x80000001C75A9680);
  OUTLINED_FUNCTION_144();
  v16 = static MusicLocalizer.localizedString(forKey:)(0xD00000000000001DLL, 0x80000001C75B3380);
  v18 = v17;
  sub_1C75504DC();
  *(v5 + 800) = 6;
  *(v5 + 808) = v2;
  *(v5 + 816) = v3;
  *(v5 + 824) = 1;
  *(v5 + 832) = 0;
  OUTLINED_FUNCTION_19_82((v5 + 840));
  *(v5 + 856) = 0x6C61657265687445;
  *(v5 + 864) = 0xE800000000000000;
  *(v5 + 872) = &unk_1F469F788;
  *(v5 + 880) = &unk_1F469F7B0;
  *(v5 + 888) = v16;
  *(v5 + 896) = v18;
  *(v5 + 904) = 0x3DCCCCCD3F666666;
  *(v5 + 912) = v19;
  *(v5 + 920) = 0x3E4CCCCD3F000000;
  v20 = static MusicLocalizer.localizedString(forKey:)(0xD000000000000014, 0x80000001C75A96A0);
  v22 = v21;
  v23 = static MusicLocalizer.localizedString(forKey:)(0xD00000000000001BLL, 0x80000001C75B33A0);
  v25 = v24;
  sub_1C75504DC();
  *(v5 + 928) = 7;
  *(v5 + 936) = v20;
  *(v5 + 944) = v22;
  *(v5 + 952) = 128;
  *(v5 + 960) = 0;
  OUTLINED_FUNCTION_19_82((v5 + 968));
  *(v5 + 984) = 1667854405;
  *(v5 + 992) = 0xE400000000000000;
  *(v5 + 1000) = &unk_1F469F848;
  *(v5 + 1008) = &unk_1F469F870;
  *(v5 + 1016) = v23;
  *(v5 + 1024) = v25;
  *(v5 + 1032) = 0x3F19999A3E4CCCCDLL;
  *(v5 + 1040) = v26;
  *(v5 + 1048) = 0x3E4CCCCD3F000000;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000014, 0x80000001C75A9660);
  OUTLINED_FUNCTION_43_0();
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001BLL, 0x80000001C75B33C0);
  OUTLINED_FUNCTION_144();
  v27 = MEMORY[0x1E69E6448];
  sub_1C75504DC();
  *(v5 + 1056) = 8;
  *(v5 + 1064) = v20;
  *(v5 + 1072) = v25;
  *(v5 + 1080) = 256;
  *(v5 + 1088) = 0;
  OUTLINED_FUNCTION_19_82((v5 + 1096));
  *(v5 + 1112) = 0x7974726150;
  *(v5 + 1120) = 0xE500000000000000;
  *(v5 + 1128) = &unk_1F469F908;
  *(v5 + 1136) = &unk_1F469F930;
  *(v5 + 1144) = 0xD000000000000014;
  *(v5 + 1152) = v22;
  __asm { FMOV            V0.2S, #1.0 }

  *(v5 + 1160) = _D0;
  *(v5 + 1168) = v33;
  *(v5 + 1176) = 0x3E4CCCCD3F000000;
  OUTLINED_FUNCTION_9_101("PIFMusicMoodNameEpic");
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_22_71("PIFMusicMoodDescriptionExtreme");
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_16_76();
  *(v5 + 1184) = 9;
  *(v5 + 1192) = v20;
  *(v5 + 1200) = v25;
  *(v5 + 1208) = 512;
  *(v5 + 1216) = 0;
  OUTLINED_FUNCTION_19_82((v5 + 1224));
  *(v5 + 1240) = 0x6E6F69746341;
  *(v5 + 1248) = 0xE600000000000000;
  *(v5 + 1256) = &unk_1F469F9C8;
  *(v5 + 1264) = &unk_1F469F9F0;
  *(v5 + 1272) = 0xD000000000000014;
  *(v5 + 1280) = v22;
  *(v5 + 1288) = 0x3F8000003DCCCCCDLL;
  *(v5 + 1296) = v34;
  *(v5 + 1304) = 0x3E4CCCCD3F000000;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000016, 0x80000001C75A96E0);
  OUTLINED_FUNCTION_43_0();
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001DLL, 0x80000001C75B3400);
  OUTLINED_FUNCTION_144();
  sub_1C75504DC();
  *(v5 + 1312) = 3;
  *(v5 + 1320) = v20;
  *(v5 + 1328) = v25;
  *(v5 + 1336) = 4;
  *(v5 + 1344) = 0;
  OUTLINED_FUNCTION_19_82((v5 + 1352));
  *(v5 + 1368) = 0x656C746E6547;
  *(v5 + 1376) = 0xE600000000000000;
  *(v5 + 1384) = &unk_1F469FA88;
  *(v5 + 1392) = &unk_1F469FAB8;
  *(v5 + 1400) = 0xD000000000000014;
  *(v5 + 1408) = v22;
  *(v5 + 1416) = 0x3DCCCCCD3F666666;
  *(v5 + 1424) = v35;
  *(v5 + 1432) = 0x3E4CCCCD3F000000;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000018, 0x80000001C75A97C0);
  OUTLINED_FUNCTION_43_0();
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001FLL, 0x80000001C75B3420);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_13_99();
  *(v5 + 1440) = 11;
  *(v5 + 1448) = v20;
  *(v5 + 1456) = v25;
  *(v5 + 1464) = 0;
  *(v5 + 1472) = 1;
  OUTLINED_FUNCTION_7_107();
  *(v5 + 1480) = v36 | 0x6D6F525F00000000;
  *(v5 + 1488) = xmmword_1C7591D90;
  *(v5 + 1504) = 0xE800000000000000;
  *(v5 + 1512) = &unk_1F469FB50;
  *(v5 + 1520) = &unk_1F469FB78;
  *(v5 + 1528) = 0xD000000000000014;
  *(v5 + 1536) = v22;
  *(v5 + 1544) = 0x3DCCCCCD3F800000;
  *(v5 + 1552) = v37;
  *(v5 + 1560) = 0x3E4CCCCD3F000000;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000019, 0x80000001C75A97A0);
  OUTLINED_FUNCTION_43_0();
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000020, 0x80000001C75B3440);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_13_99();
  *(v5 + 1568) = 10;
  *(v5 + 1576) = v20;
  *(v5 + 1584) = v25;
  *(v5 + 1592) = 0;
  *(v5 + 1600) = 1;
  OUTLINED_FUNCTION_7_107();
  *(v5 + 1608) = v38 | 0x736F4E5F00000000;
  *(v5 + 1616) = xmmword_1C7591DA0;
  OUTLINED_FUNCTION_23_57();
  *(v5 + 1632) = v39;
  *(v5 + 1640) = &unk_1F469FC10;
  *(v5 + 1648) = &unk_1F469FC40;
  *(v5 + 1656) = 0xD000000000000014;
  *(v5 + 1664) = v22;
  *(v5 + 1672) = 0x3F4000003ECCCCCDLL;
  *(v5 + 1680) = v40;
  *(v5 + 1688) = 0x3E4CCCCD3F000000;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000015, 0x80000001C75A9780);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_4_116();
  static MusicLocalizer.localizedString(forKey:)(v41 + 5, v42 | 0x8000000000000000);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_13_99();
  *(v5 + 1696) = 13;
  *(v5 + 1704) = v20;
  *(v5 + 1712) = v25;
  *(v5 + 1720) = 0;
  *(v5 + 1728) = 1;
  OUTLINED_FUNCTION_7_107();
  *(v5 + 1736) = v43 | 0x6C69535F00000000;
  *(v5 + 1744) = xmmword_1C7591DB0;
  *(v5 + 1760) = 0xE500000000000000;
  *(v5 + 1768) = &unk_1F469FCD8;
  *(v5 + 1776) = &unk_1F469FD00;
  *(v5 + 1784) = 0xD000000000000014;
  *(v5 + 1792) = v22;
  *(v5 + 1800) = 0x3F3333333F19999ALL;
  *(v5 + 1808) = v44;
  *(v5 + 1816) = 0x3E4CCCCD3F000000;
  OUTLINED_FUNCTION_9_101("PIFMusicMoodNameAmused");
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_4_116();
  static MusicLocalizer.localizedString(forKey:)(v45 + 7, v46 | 0x8000000000000000);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_13_99();
  *(v5 + 1824) = 14;
  *(v5 + 1832) = v20;
  *(v5 + 1840) = v25;
  *(v5 + 1848) = 0;
  *(v5 + 1856) = 1;
  OUTLINED_FUNCTION_7_107();
  *(v5 + 1864) = v47 | 0x6378455F00000000;
  *(v5 + 1872) = xmmword_1C7591DC0;
  *(v5 + 1888) = 0xE700000000000000;
  *(v5 + 1896) = &unk_1F469FDA0;
  *(v5 + 1904) = &unk_1F469FDC8;
  *(v5 + 1912) = 0xD000000000000014;
  *(v5 + 1920) = v22;
  *(v5 + 1928) = 0x3F4CCCCD3F333333;
  *(v5 + 1936) = v48;
  *(v5 + 1944) = 0x3E4CCCCD3F000000;
  OUTLINED_FUNCTION_9_101("PIFMusicMoodNamePeaceful");
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_4_116();
  static MusicLocalizer.localizedString(forKey:)(v49 + 7, v50 | 0x8000000000000000);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_13_99();
  *(v5 + 1952) = 15;
  *(v5 + 1960) = v20;
  *(v5 + 1968) = v25;
  *(v5 + 1976) = 0;
  *(v5 + 1984) = 1;
  OUTLINED_FUNCTION_7_107();
  *(v5 + 1992) = v51 | 0x616C505F00000000;
  *(v5 + 2000) = xmmword_1C7591DD0;
  *(v5 + 2016) = 0xE700000000000000;
  *(v5 + 2024) = &unk_1F469FE60;
  *(v5 + 2032) = &unk_1F469FE88;
  *(v5 + 2040) = 0xD000000000000014;
  *(v5 + 2048) = v22;
  *(v5 + 2056) = 0x3F4CCCCD3F19999ALL;
  *(v5 + 2064) = v52;
  *(v5 + 2072) = 0x3E4CCCCD3F000000;
  OUTLINED_FUNCTION_9_101("PIFMusicMoodNameGrateful");
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_4_116();
  static MusicLocalizer.localizedString(forKey:)(v53 + 7, v54 | 0x8000000000000000);
  OUTLINED_FUNCTION_144();
  sub_1C75504DC();
  *(v5 + 2080) = 16;
  *(v5 + 2088) = v20;
  *(v5 + 2096) = v25;
  *(v5 + 2104) = 0;
  *(v5 + 2112) = 1;
  OUTLINED_FUNCTION_7_107();
  *(v5 + 2120) = v55 | 0x706F485F00000000;
  *(v5 + 2128) = xmmword_1C7591DE0;
  *(v5 + 2144) = 0xE700000000000000;
  *(v5 + 2152) = &unk_1F469FF20;
  *(v5 + 2160) = &unk_1F469FF48;
  *(v5 + 2168) = 0xD000000000000014;
  *(v5 + 2176) = v22;
  *(v5 + 2184) = 0x3F4CCCCD3F0CCCCDLL;
  *(v5 + 2192) = v56;
  *(v5 + 2200) = 0x3E4CCCCD3F000000;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000013, 0x80000001C75A9940);
  OUTLINED_FUNCTION_43_0();
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001ALL, 0x80000001C75B34F0);
  OUTLINED_FUNCTION_10_90();
  sub_1C75504DC();
  *(v5 + 2208) = 17;
  *(v5 + 2216) = v20;
  *(v5 + 2224) = v25;
  *(v5 + 2232) = 0;
  *(v5 + 2240) = 1;
  OUTLINED_FUNCTION_7_107();
  *(v5 + 2248) = v57 | 0x6461535F00000000;
  *(v5 + 2256) = xmmword_1C7591DF0;
  *(v5 + 2272) = 0xE300000000000000;
  *(v5 + 2280) = &unk_1F469FFE0;
  *(v5 + 2288) = &unk_1F46A0008;
  *(v5 + 2296) = v22;
  *(v5 + 2304) = v27;
  *(v5 + 2312) = 0x3ECCCCCD3E99999ALL;
  *(v5 + 2320) = v58;
  *(v5 + 2328) = 0x3E4CCCCD3F000000;
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001CLL, 0x80000001C75A97E0);
  OUTLINED_FUNCTION_43_0();
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000023, 0x80000001C75B3530);
  OUTLINED_FUNCTION_10_90();
  v59 = sub_1C75504DC();
  *(v5 + 2336) = 18;
  *(v5 + 2344) = v20;
  *(v5 + 2352) = v25;
  *(v5 + 2360) = 0;
  *(v5 + 2368) = 1;
  *(v5 + 2376) = 0xD000000000000011;
  *(v5 + 2384) = 0x80000001C75B3510;
  strcpy((v5 + 2392), "Affectionate");
  *(v5 + 2405) = 0;
  *(v5 + 2406) = -5120;
  *(v5 + 2408) = &unk_1F46A00A8;
  *(v5 + 2416) = &unk_1F46A00D8;
  *(v5 + 2424) = 0xD000000000000017;
  *(v5 + 2432) = v27;
  *(v5 + 2440) = 0x3F59999A3ECCCCCDLL;
  *(v5 + 2448) = v59;
  *(v5 + 2456) = 0x3E4CCCCD3F000000;
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001ALL, 0x80000001C75A9920);
  OUTLINED_FUNCTION_43_0();
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000021, 0x80000001C75B3560);
  OUTLINED_FUNCTION_10_90();
  sub_1C75504DC();
  *(v5 + 2464) = 19;
  *(v5 + 2472) = v20;
  *(v5 + 2480) = v25;
  *(v5 + 2488) = 0;
  *(v5 + 2496) = 1;
  OUTLINED_FUNCTION_7_107();
  *(v5 + 2504) = v60 | 0x6972545F00000000;
  *(v5 + 2512) = xmmword_1C7591E00;
  *(v5 + 2528) = 0xEA0000000000746ELL;
  *(v5 + 2536) = &unk_1F46A0170;
  *(v5 + 2544) = &unk_1F46A01A0;
  *(v5 + 2552) = 0xD000000000000017;
  *(v5 + 2560) = v27;
  *(v5 + 2568) = 0x3F6666663F333333;
  *(v5 + 2576) = v61;
  *(v5 + 2584) = 0x3E4CCCCD3F000000;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000016, 0x80000001C75A9800);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_4_116();
  static MusicLocalizer.localizedString(forKey:)(v62 + 6, v63 | 0x8000000000000000);
  OUTLINED_FUNCTION_10_90();
  sub_1C75504DC();
  *(v5 + 2592) = 20;
  *(v5 + 2600) = v20;
  *(v5 + 2608) = v25;
  *(v5 + 2616) = 0;
  *(v5 + 2624) = 1;
  OUTLINED_FUNCTION_7_107();
  *(v5 + 2632) = v64 | 0x616D415F00000000;
  *(v5 + 2640) = xmmword_1C7591E10;
  *(v5 + 2656) = 0xE600000000000000;
  *(v5 + 2664) = &unk_1F46A0238;
  *(v5 + 2672) = &unk_1F46A0260;
  *(v5 + 2680) = 0xD000000000000017;
  *(v5 + 2688) = v27;
  *(v5 + 2696) = 0x3F59999A3F19999ALL;
  *(v5 + 2704) = v65;
  *(v5 + 2712) = 0x3E4CCCCD3F000000;
  OUTLINED_FUNCTION_9_101("PIFMusicMoodNameSad");
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_4_116();
  static MusicLocalizer.localizedString(forKey:)(v66 + 7, v67 | 0x8000000000000000);
  OUTLINED_FUNCTION_10_90();
  v68 = sub_1C75504DC();
  *(v5 + 2720) = 21;
  *(v5 + 2728) = v20;
  *(v5 + 2736) = v25;
  *(v5 + 2744) = 0;
  *(v5 + 2752) = 1;
  *(v5 + 2760) = 0xD000000000000013;
  *(v5 + 2768) = 0x80000001C75B35B0;
  *(v5 + 2776) = 0x73756F69786E41;
  *(v5 + 2784) = 0xE700000000000000;
  *(v5 + 2792) = &unk_1F46A02F8;
  *(v5 + 2800) = &unk_1F46A0320;
  *(v5 + 2808) = 0xD000000000000017;
  *(v5 + 2816) = v27;
  *(v5 + 2824) = 0x3E99999A3F19999ALL;
  *(v5 + 2832) = v68;
  *(v5 + 2840) = 0x3E4CCCCD3F000000;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000015, 0x80000001C75A9900);
  OUTLINED_FUNCTION_43_0();
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001CLL, 0x80000001C75B35F0);
  OUTLINED_FUNCTION_144();
  sub_1C75504DC();
  *(v5 + 2848) = 22;
  *(v5 + 2856) = v20;
  *(v5 + 2864) = v25;
  *(v5 + 2872) = 0;
  *(v5 + 2880) = 1;
  OUTLINED_FUNCTION_7_107();
  *(v5 + 2888) = v69 | 0x6F72505F00000000;
  *(v5 + 2896) = xmmword_1C7591E20;
  *(v5 + 2912) = 0xE500000000000000;
  *(v5 + 2920) = &unk_1F46A03C0;
  *(v5 + 2928) = &unk_1F46A03F0;
  *(v5 + 2936) = v27;
  *(v5 + 2944) = 0xD000000000000017;
  *(v5 + 2952) = 0x3F4CCCCD3F19999ALL;
  *(v5 + 2960) = v70;
  *(v5 + 2968) = 0x3E4CCCCD3F000000;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000016, 0x80000001C75A9820);
  OUTLINED_FUNCTION_43_0();
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001DLL, 0x80000001C75B3610);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_16_76();
  *(v5 + 2976) = 23;
  *(v5 + 2984) = v20;
  *(v5 + 2992) = v25;
  *(v5 + 3000) = 0;
  *(v5 + 3008) = 1;
  OUTLINED_FUNCTION_7_107();
  *(v5 + 3016) = v71 | 0x756D415F00000000;
  *(v5 + 3024) = xmmword_1C7591E30;
  *(v5 + 3040) = 0xE600000000000000;
  *(v5 + 3048) = &unk_1F46A0488;
  *(v5 + 3056) = &unk_1F46A04B0;
  *(v5 + 3064) = v27;
  *(v5 + 3072) = 0xD000000000000017;
  *(v5 + 3080) = 0x3F4000003F19999ALL;
  *(v5 + 3088) = v72;
  *(v5 + 3096) = 0x3E4CCCCD3F000000;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000018, 0x80000001C75A9880);
  OUTLINED_FUNCTION_43_0();
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001FLL, 0x80000001C75B3630);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_16_76();
  *(v5 + 3104) = 24;
  *(v5 + 3112) = v20;
  *(v5 + 3120) = v25;
  *(v5 + 3128) = 0;
  *(v5 + 3136) = 1;
  OUTLINED_FUNCTION_7_107();
  *(v5 + 3144) = v73 | 0x6172475F00000000;
  *(v5 + 3152) = xmmword_1C7591E40;
  *(v5 + 3168) = 0xE800000000000000;
  *(v5 + 3176) = &unk_1F46A0548;
  *(v5 + 3184) = &unk_1F46A0570;
  *(v5 + 3192) = v27;
  *(v5 + 3200) = 0xD000000000000017;
  *(v5 + 3208) = 0x3F59999A3EE66666;
  *(v5 + 3216) = v74;
  *(v5 + 3224) = 0x3E4CCCCD3F000000;
  OUTLINED_FUNCTION_9_101("PIFMusicMoodNameExcited");
  OUTLINED_FUNCTION_43_0();
  v75 = OUTLINED_FUNCTION_22_71("PIFMusicMoodDescriptionFocused");
  v77 = v76;
  OUTLINED_FUNCTION_16_76();
  *(v5 + 3232) = 25;
  *(v5 + 3240) = v20;
  *(v5 + 3248) = v25;
  *(v5 + 3256) = 0;
  *(v5 + 3264) = 1;
  OUTLINED_FUNCTION_7_107();
  *(v5 + 3272) = v78 | 0x636F465F00000000;
  *(v5 + 3280) = xmmword_1C7591E50;
  *(v5 + 3296) = 0xE700000000000000;
  *(v5 + 3304) = &unk_1F46A0608;
  *(v5 + 3312) = &unk_1F46A0630;
  *(v5 + 3320) = v75;
  *(v5 + 3328) = v77;
  result = 0.000292968761;
  *(v5 + 3336) = 0x3F3333333F000000;
  *(v5 + 3344) = v80;
  *(v5 + 3352) = 0x3E4CCCCD3F000000;
  off_1EDD06CD0 = v5;
  return result;
}

uint64_t static MusicMood.allMoods.getter()
{
  if (qword_1EDD06CC8 != -1)
  {
    OUTLINED_FUNCTION_0_213();
  }

  return sub_1C75504FC();
}

uint64_t sub_1C74F094C()
{
  v0 = sub_1C7551B2C();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1C74F09A0(char a1)
{
  result = 0x656D614E646F6F6DLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x646F6F4D6870;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x646F6F4D78656C66;
      break;
    case 5:
      result = 0x62697461706D6F63;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x63736544646F6F6DLL;
      break;
    case 8:
      result = 0x566C6173756F7261;
      break;
    case 9:
      result = 0x72685465726F6373;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_1C74F0B60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C74F094C();
  *a1 = result;
  return result;
}

unint64_t sub_1C74F0B90@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C74F09A0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C74F0BD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C74F0998();
  *a1 = result;
  return result;
}

uint64_t sub_1C74F0C0C(uint64_t a1)
{
  v2 = sub_1C74F1C94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C74F0C48(uint64_t a1)
{
  v2 = sub_1C74F1C94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MusicMood.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21CA58);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v39 = *(v1 + 2);
  v40 = v8;
  v38 = *(v1 + 3);
  v37 = v1[32];
  v9 = *(v1 + 6);
  v34 = *(v1 + 5);
  v35 = v9;
  v10 = *(v1 + 7);
  v32 = *(v1 + 8);
  v33 = v10;
  v11 = *(v1 + 9);
  v30 = *(v1 + 10);
  v31 = v11;
  v12 = *(v1 + 12);
  v36 = *(v1 + 11);
  v29 = v12;
  v13 = *(v1 + 13);
  v14 = *(v1 + 14);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C74F1C94();
  v15 = v3;
  sub_1C755200C();
  LOBYTE(v42) = v7;
  v44 = 0;
  sub_1C74F1CE8();
  v16 = v41;
  sub_1C7551D2C();
  if (v16)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v17 = v37;
  v18 = v14;
  LOBYTE(v42) = 1;
  sub_1C7551CCC();
  v20 = v4;
  if (v17)
  {
    v21 = v18;
    v22 = v34;
  }

  else
  {
    v41 = v4;
    v23 = PHStringForMemoryMood();
    if (v23)
    {
      v24 = v23;
      v25 = v6;
      v26 = sub_1C755068C();
      v28 = v27;
    }

    else
    {
      v25 = v6;
      v26 = 0;
      v28 = 0;
    }

    v42 = v26;
    v43 = v28;
    v44 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215620);
    sub_1C70950A8();
    OUTLINED_FUNCTION_3_132();
    v6 = v25;
    sub_1C7551D2C();

    v21 = v18;
    v22 = v34;
    v20 = v41;
  }

  v42 = v22;
  v43 = v35;
  v44 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215620);
  sub_1C70950A8();
  OUTLINED_FUNCTION_2_145();
  v42 = v33;
  v43 = v32;
  v44 = 4;
  OUTLINED_FUNCTION_2_145();
  v42 = v31;
  v44 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21CA70);
  sub_1C74F1D3C();
  OUTLINED_FUNCTION_2_145();
  v42 = v30;
  v44 = 6;
  OUTLINED_FUNCTION_2_145();
  LOBYTE(v42) = 7;
  sub_1C7551CCC();
  v42 = v13;
  v44 = 8;
  sub_1C74F1DC0();
  OUTLINED_FUNCTION_3_132();
  sub_1C7551D2C();
  v42 = v21;
  v44 = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214F30);
  sub_1C74F1E14();
  OUTLINED_FUNCTION_3_132();
  sub_1C7551D2C();
  LOBYTE(v42) = 10;
  sub_1C7551CFC();
  LOBYTE(v42) = 11;
  sub_1C7551CFC();
  return (*(v20 + 8))(v6, v15);
}

void MusicMood.descriptionAsCVSLine.getter()
{
  v1 = *(v0 + 32);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 112);
  v52 = *(v0 + 40);
  v53 = *(v0 + 48);
  MusicMood.closestPHMemoryMood()();
  v7 = PHStringForMemoryMood();
  if (v7)
  {
    v8 = v7;
    v50 = sub_1C755068C();
    v51 = v9;

    if (v1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v50 = 0;
    v51 = 0xE000000000000000;
    if (v1)
    {
      goto LABEL_7;
    }
  }

  v10 = PHStringForMemoryMood();
  if (v10)
  {
    v11 = v10;
    v48 = sub_1C755068C();
    v49 = v12;

    goto LABEL_8;
  }

LABEL_7:
  v48 = 0;
  v49 = 0xE000000000000000;
LABEL_8:
  v13 = *(v6 + 16);
  if (v13)
  {
    v47 = v5;
    v58 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v15 = sub_1C70D4544(v6);
    v16 = 0;
    v17 = v6 + 64;
    v54 = v6 + 72;
    v55 = v13;
    v56 = v14;
    v57 = v6 + 64;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v6 + 32))
    {
      v18 = v15 >> 6;
      if ((*(v17 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_35;
      }

      if (*(v6 + 36) != v14)
      {
        goto LABEL_36;
      }

      v19 = (*(v6 + 48) + 16 * v15);
      v20 = *(*(v6 + 56) + 4 * v15);
      v59 = *v19;
      v60 = v19[1];
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](58, 0xE100000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1C755BAB0;
      *(v21 + 56) = MEMORY[0x1E69E6448];
      *(v21 + 64) = MEMORY[0x1E69E64A8];
      *(v21 + 32) = v20;
      v22 = sub_1C75506BC();
      MEMORY[0x1CCA5CD70](v22);

      v23 = v6;
      v25 = *(v58 + 16);
      v24 = *(v58 + 24);
      if (v25 >= v24 >> 1)
      {
        OUTLINED_FUNCTION_15(v24);
        sub_1C6F7ED9C();
      }

      *(v58 + 16) = v25 + 1;
      v26 = v58 + 16 * v25;
      *(v26 + 32) = v59;
      *(v26 + 40) = v60;
      v27 = 1 << *(v23 + 32);
      if (v15 >= v27)
      {
        goto LABEL_37;
      }

      v17 = v57;
      v28 = *(v57 + 8 * v18);
      if ((v28 & (1 << v15)) == 0)
      {
        goto LABEL_38;
      }

      v6 = v23;
      v14 = v56;
      if (*(v23 + 36) != v56)
      {
        goto LABEL_39;
      }

      v29 = v28 & (-2 << (v15 & 0x3F));
      if (v29)
      {
        v27 = __clz(__rbit64(v29)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v30 = v55;
      }

      else
      {
        v31 = v18 << 6;
        v32 = v18 + 1;
        v30 = v55;
        v33 = (v54 + 8 * v18);
        while (v32 < (v27 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            v27 = __clz(__rbit64(v34)) + v31;
            break;
          }
        }
      }

      ++v16;
      v15 = v27;
      if (v16 == v30)
      {
        v5 = v47;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  else
  {
LABEL_27:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C703328C();
    OUTLINED_FUNCTION_6_121();
    v36 = sub_1C75505FC();
    v38 = v37;

    sub_1C755180C();
    sub_1C75504FC();

    v39 = OUTLINED_FUNCTION_6_121();
    MEMORY[0x1CCA5CD70](v39);
    MEMORY[0x1CCA5CD70](v48, v49);

    v40 = OUTLINED_FUNCTION_6_121();
    MEMORY[0x1CCA5CD70](v40);
    MEMORY[0x1CCA5CD70](v50, v51);

    v41 = OUTLINED_FUNCTION_6_121();
    MEMORY[0x1CCA5CD70](v41);
    if (v53)
    {
      v42 = v52;
    }

    else
    {
      v42 = 0;
    }

    if (v53)
    {
      v43 = v53;
    }

    else
    {
      v43 = 0xE000000000000000;
    }

    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](v42, v43);

    v44 = OUTLINED_FUNCTION_6_121();
    MEMORY[0x1CCA5CD70](v44);
    sub_1C7550F6C();
    MEMORY[0x1CCA5CD70](8236, 0xE200000000000000);
    sub_1C7550F6C();
    MEMORY[0x1CCA5CD70](0, 0xE000000000000000);

    MEMORY[0x1CCA5CD70](2236460, 0xE300000000000000);
    MEMORY[0x1CCA5CD70](v4, v5);
    OUTLINED_FUNCTION_29_46();
    v45 = MEMORY[0x1CCA5D090](v3, &type metadata for MusicMoodIdentifier);
    MEMORY[0x1CCA5CD70](v45);

    OUTLINED_FUNCTION_29_46();
    v46 = MEMORY[0x1CCA5D090](v2, &type metadata for MusicMoodIdentifier);
    MEMORY[0x1CCA5CD70](v46);

    MEMORY[0x1CCA5CD70](2108450, 0xE300000000000000);
    MEMORY[0x1CCA5CD70](v36, v38);
  }
}

uint64_t static MusicMood.dumpAllMoods()()
{
  if (qword_1EDD06CC8 != -1)
  {
    OUTLINED_FUNCTION_0_213();
  }

  v0 = off_1EDD06CD0;
  v1 = *(off_1EDD06CD0 + 2);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v2 = v16;
    v3 = v0 + 32;
    do
    {
      memcpy(__dst, v3, sizeof(__dst));
      MusicMood.descriptionAsCVSLine.getter();
      v5 = v4;
      v7 = v6;
      v16 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        OUTLINED_FUNCTION_15(v8);
        sub_1C6F7ED9C();
        v2 = v16;
      }

      *(v2 + 16) = v9 + 1;
      v10 = v2 + 16 * v9;
      *(v10 + 32) = v5;
      *(v10 + 40) = v7;
      v3 += 128;
      --v1;
    }

    while (v1);
  }

  __dst[0] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  sub_1C703328C();
  v11 = sub_1C75505FC();
  v13 = v12;

  __dst[0] = 0xD000000000000096;
  __dst[1] = 0x80000001C75B31B0;
  MEMORY[0x1CCA5CD70](v11, v13);

  return __dst[0];
}

uint64_t MusicMood.jsonDescription.getter()
{
  v3 = sub_1C75506DC();
  v4 = OUTLINED_FUNCTION_76(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v5 = sub_1C754D76C();
  v6 = OUTLINED_FUNCTION_76(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  sub_1C754D7AC();
  swift_allocObject();
  sub_1C754D79C();
  sub_1C754D75C();
  sub_1C754D77C();
  memcpy(__dst, v0, sizeof(__dst));
  sub_1C74F2050();
  sub_1C754D78C();
  OUTLINED_FUNCTION_43_0();
  sub_1C75506CC();
  v8 = sub_1C75506AC();
  v10 = v9;
  sub_1C6FC1640(v1, v2);
  if (v10)
  {
  }

  else
  {
    v7 = MusicMood.descriptionDetails.getter();
    __dst[0] = 0xD00000000000002CLL;
    __dst[1] = 0x80000001C75B3250;
    MEMORY[0x1CCA5CD70](v7);

    return __dst[0];
  }

  return v8;
}

uint64_t static MusicMood.dumpAllMoodsAsJsonLines()()
{
  v0 = sub_1C75506DC();
  v1 = OUTLINED_FUNCTION_76(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_14_0();
  v2 = sub_1C754D76C();
  v3 = OUTLINED_FUNCTION_76(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  if (qword_1EDD06CC8 != -1)
  {
    OUTLINED_FUNCTION_0_213();
  }

  v4 = off_1EDD06CD0;
  v5 = *(off_1EDD06CD0 + 2);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v6 = v22;
    v7 = v4 + 32;
    sub_1C754D7AC();
    do
    {
      memcpy(v21, v7, sizeof(v21));
      swift_allocObject();
      sub_1C754D79C();
      sub_1C754D75C();
      sub_1C754D77C();
      memcpy(v20, v21, sizeof(v20));
      sub_1C74F2050();
      v9 = sub_1C754D78C();
      v11 = v10;
      sub_1C75506CC();
      v12 = sub_1C75506AC();
      v14 = v13;
      sub_1C6FC1640(v9, v11);
      if (v14)
      {
      }

      else
      {
        v8 = MusicMood.descriptionDetails.getter();
        v20[0] = 0xD00000000000002CLL;
        v20[1] = 0x80000001C75B3250;
        MEMORY[0x1CCA5CD70](v8);

        v12 = v20[0];
        v14 = v20[1];
      }

      v22 = v6;
      v16 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v16 >= v15 >> 1)
      {
        OUTLINED_FUNCTION_15(v15);
        sub_1C6F7ED9C();
        v6 = v22;
      }

      *(v6 + 16) = v16 + 1;
      v17 = v6 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v7 += 128;
      --v5;
    }

    while (v5);
  }

  v20[0] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  sub_1C703328C();
  v18 = sub_1C75505FC();

  return v18;
}

unint64_t sub_1C74F1C94()
{
  result = qword_1EC21CA60;
  if (!qword_1EC21CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CA60);
  }

  return result;
}

unint64_t sub_1C74F1CE8()
{
  result = qword_1EC21CA68;
  if (!qword_1EC21CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CA68);
  }

  return result;
}

unint64_t sub_1C74F1D3C()
{
  result = qword_1EC21CA78;
  if (!qword_1EC21CA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21CA70);
    sub_1C74F1CE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CA78);
  }

  return result;
}

unint64_t sub_1C74F1DC0()
{
  result = qword_1EC21CA80;
  if (!qword_1EC21CA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CA80);
  }

  return result;
}

unint64_t sub_1C74F1E14()
{
  result = qword_1EC217C48;
  if (!qword_1EC217C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC214F30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217C48);
  }

  return result;
}

uint64_t sub_1C74F1E98(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v24 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 6)
  {
    if (v24 == v5)
    {
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v8 = *(i - 2);
    v7 = *(i - 1);
    v9 = *i;
    v10 = *a3;
    sub_1C75504FC();
    v12 = sub_1C6F78124(v8, v7);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_17;
    }

    v15 = v11;
    if (v10[3] >= v13 + v14)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215340);
        sub_1C7551A3C();
      }
    }

    else
    {
      sub_1C735488C();
      v16 = sub_1C6F78124(v8, v7);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_19;
      }

      v12 = v16;
    }

    v18 = *a3;
    if (v15)
    {

      *(v18[7] + 4 * v12) = v9;
    }

    else
    {
      v18[(v12 >> 6) + 8] |= 1 << v12;
      v19 = (v18[6] + 16 * v12);
      *v19 = v8;
      v19[1] = v7;
      *(v18[7] + 4 * v12) = v9;
      v20 = v18[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_18;
      }

      v18[2] = v22;
    }

    ++v5;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

unint64_t sub_1C74F2050()
{
  result = qword_1EC21CA88;
  if (!qword_1EC21CA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CA88);
  }

  return result;
}

unint64_t sub_1C74F20A4()
{
  result = qword_1EC21CA90;
  if (!qword_1EC21CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CA90);
  }

  return result;
}

uint64_t sub_1C74F20F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1C74F2138(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicMood.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C74F2288()
{
  result = qword_1EC21CA98;
  if (!qword_1EC21CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CA98);
  }

  return result;
}

unint64_t sub_1C74F22E0()
{
  result = qword_1EC21CAA0;
  if (!qword_1EC21CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CAA0);
  }

  return result;
}

unint64_t sub_1C74F2338()
{
  result = qword_1EC21CAA8;
  if (!qword_1EC21CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CAA8);
  }

  return result;
}

uint64_t MusicMoodIdentifier.rawValue.getter()
{
  result = 0x6C61727475656ELL;
  switch(*v0)
  {
    case 1:
      return 0x7970706168;
    case 2:
      return 0x6E656D69746E6573;
    case 3:
      return 0x656C746E6567;
    case 4:
      return 0x6C6C696863;
    case 5:
      return 0x6E697466696C7075;
    case 6:
      return 0x796D61657264;
    case 7:
      return 1667854437;
    case 8:
      return 1651862627;
    case 9:
      return 0x656D6572747865;
    case 0xA:
      return 0x69676C6174736F6ELL;
    case 0xB:
      return 0x6369746E616D6F72;
    case 0xC:
      v3 = 1667327344;
      goto LABEL_11;
    case 0xD:
      return 0x63696D6F63;
    case 0xE:
      return 0x64657469637865;
    case 0xF:
      v2 = 2036427888;
      return v2 | 0x6C756600000000;
    case 0x10:
      v2 = 1701867368;
      return v2 | 0x6C756600000000;
    case 0x11:
      return 6578547;
    case 0x12:
      return 0x6F69746365666661;
    case 0x13:
      return 0x6168706D75697274;
    case 0x14:
      v4 = 2053205345;
      goto LABEL_29;
    case 0x15:
      return 0x73756F69786E61;
    case 0x16:
      return 0x64756F7270;
    case 0x17:
      v4 = 1937075553;
LABEL_29:
      result = v4 & 0xFFFF0000FFFFFFFFLL | 0x646500000000;
      break;
    case 0x18:
      v3 = 1952543335;
LABEL_11:
      result = v3 | 0x6C75666500000000;
      break;
    case 0x19:
      result = 0x64657375636F66;
      break;
    default:
      return result;
  }

  return result;
}

PhotosIntelligence::MusicMoodIdentifier_optional __swiftcall MusicMoodIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551DFC();

  v5 = 0;
  v6 = 8;
  switch(v3)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v5 = 1;
      goto LABEL_23;
    case 2:
      v5 = 2;
      goto LABEL_23;
    case 3:
      v5 = 3;
      goto LABEL_23;
    case 4:
      v5 = 4;
      goto LABEL_23;
    case 5:
      v5 = 5;
      goto LABEL_23;
    case 6:
      v5 = 6;
      goto LABEL_23;
    case 7:
      v5 = 7;
LABEL_23:
      v6 = v5;
      break;
    case 8:
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    default:
      v6 = 26;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1C74F2788()
{
  result = qword_1EC21CAB0;
  if (!qword_1EC21CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CAB0);
  }

  return result;
}

uint64_t sub_1C74F2800@<X0>(uint64_t *a1@<X8>)
{
  result = MusicMoodIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C74F282C()
{
  result = qword_1EC21CAB8;
  if (!qword_1EC21CAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21CA70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CAB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicMoodIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE7)
  {
    if (a2 + 25 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 25) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 26;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v5 = v6 - 26;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MusicMoodIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE6)
  {
    v6 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
          *result = a2 + 25;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C74F2A58()
{
  result = qword_1EC21CAC0;
  if (!qword_1EC21CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CAC0);
  }

  return result;
}

uint64_t QueryGeneratorContext.init(clientType:storyPhotoLibraryContext:storyAssetsFetcher:momentGroundingProcessor:momentBasedGroundingAndAssetsFetchingProcessor:safetyController:isDisambiguationSuggestionsGenerationNeeded:aiEventReporting:)@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, char a7@<W6>, __int128 *a8@<X7>, uint64_t a9@<X8>)
{
  v15 = *a2;
  v16 = *(a2 + 4);
  v17 = a2[2];
  *a9 = *a1;
  *(a9 + 8) = v15;
  *(a9 + 16) = v16;
  *(a9 + 24) = v17;
  sub_1C6F699F8(a3, a9 + 32);
  *(a9 + 72) = a4;
  sub_1C6F699F8(a5, a9 + 80);
  sub_1C6F699F8(a6, a9 + 120);
  *(a9 + 160) = a7;

  return sub_1C6F699F8(a8, a9 + 168);
}

PhotosIntelligence::QueryGeneratorClientType_optional __swiftcall QueryGeneratorClientType.init(rawValue:)(Swift::String rawValue)
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

uint64_t QueryGeneratorClientType.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x646E616D65446E6FLL;
  }
}

uint64_t sub_1C74F2C04@<X0>(uint64_t *a1@<X8>)
{
  result = QueryGeneratorClientType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C74F2CEC()
{
  result = qword_1EC21CAC8;
  if (!qword_1EC21CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CAC8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for QueryGeneratorClientType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C74F2E44()
{
  result = qword_1EC21CAD0;
  if (!qword_1EC21CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CAD0);
  }

  return result;
}

uint64_t PersonalTraitLibraryUnderstandingDataSource.__allocating_init(configuration:storyPhotoLibraryContext:)(void *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  PersonalTraitLibraryUnderstandingDataSource.init(configuration:storyPhotoLibraryContext:)(a1, a2);
  return v4;
}

uint64_t PersonalTraitLibraryUnderstandingDataSource.generatePersonalTraits(assetSampler:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_42();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = type metadata accessor for PersonalTrait();
  v1[7] = v6;
  v1[8] = *(v6 - 8);
  v1[9] = swift_task_alloc();
  v7 = sub_1C754F38C();
  v1[10] = v7;
  v1[11] = *(v7 - 8);
  v1[12] = swift_task_alloc();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C74F3004()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  sub_1C754F1CC();
  sub_1C754F2CC();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1C74F31D4;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1C74F3C54(v3, v2);
}

uint64_t sub_1C74F31D4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 112) = v4;
  *(v2 + 120) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1C74F32D8()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = PersonalTraitLibraryUnderstandingDataSource.mergeAssetUUIDsForSameTheme(_:)(*(v0 + 112));
    v4 = *(v3 + 16);
    if (v4 >= v2)
    {
    }

    else
    {
      if (qword_1EC2142A8 != -1)
      {
        OUTLINED_FUNCTION_0_214();
      }

      v5 = sub_1C754FF1C();
      __swift_project_value_buffer(v5, qword_1EC21CAE0);
      sub_1C75504FC();
      sub_1C75504FC();
      v6 = sub_1C754FEEC();
      v7 = sub_1C75511BC();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 134217984;
        v9 = *(v1 + 16);
        v10 = *(v3 + 16);

        *(v8 + 4) = v9 - v10;

        OUTLINED_FUNCTION_57_5();
        _os_log_impl(v11, v12, v13, v14, v8, 0xCu);
        OUTLINED_FUNCTION_109();
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }
    }

    PersonalTraitLibraryUnderstandingDataSource.applyDenyListAndMergeDuplicates(_:)(v3);
    v29 = v28;
    v30 = *(v28 + 16);
    v64 = v30;
    if (v30 >= v4)
    {
    }

    else
    {
      if (qword_1EC2142A8 != -1)
      {
        OUTLINED_FUNCTION_0_214();
      }

      v31 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v31, qword_1EC21CAE0);
      sub_1C75504FC();
      sub_1C75504FC();
      v32 = sub_1C754FEEC();
      v33 = sub_1C75511BC();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 134217984;
        v35 = *(v3 + 16);
        v36 = *(v29 + 16);

        *(v34 + 4) = v35 - v36;

        _os_log_impl(&dword_1C6F5C000, v32, v33, "%ld Library Understanding themes were filtered out by the Trial deny list", v34, 0xCu);
        OUTLINED_FUNCTION_109();
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      v30 = v64;
    }

    v37 = v61;
    if (!v30)
    {
LABEL_31:

      v55 = v37[15];
      sub_1C754F2EC();
      v27 = v37 + 12;
      v56 = v37[4];
      if (v55)
      {

        __swift_project_boxed_opaque_existential_1(v56, v56[3]);
        sub_1C754F1AC();
        (*(v37[11] + 8))(v37[12], v37[10]);

        OUTLINED_FUNCTION_43();
        OUTLINED_FUNCTION_94_1();

        __asm { BRAA            X1, X16 }
      }

      __swift_project_boxed_opaque_existential_1(v37[4], v56[3]);
      sub_1C754F1AC();
      v25 = v37[10];
      v26 = v37[11];
      goto LABEL_36;
    }

    v38 = v61[8];
    v63 = v61[9];
    v39 = v61[6];
    v40 = v61[7];
    v65 = MEMORY[0x1E69E7CC0];
    sub_1C716E058();
    v37 = v61;
    v41 = 0;
    if (*(v39 + 193))
    {
      v42 = 4;
    }

    else
    {
      v42 = 3;
    }

    v62 = v42;
    v43 = (v29 + 56);
    while (v41 < *(v29 + 16))
    {
      v44 = v29;
      v45 = v37[9];
      v46 = *(v43 - 2);
      v47 = v37;
      v48 = *(v43 - 1);
      v49 = *v43;
      v50 = *(*v43 + 16);
      *v45 = *(v43 - 3);
      *(v63 + 8) = v46;
      *(v63 + 16) = v49;
      *(v45 + v40[7]) = 2;
      v51 = v45 + v40[8];
      *v51 = v48;
      *(v51 + 1) = 0;
      v51[16] = v62;
      *(v45 + v40[9]) = v50;
      *(v45 + v40[10]) = MEMORY[0x1E69E7CC0];
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C754DFEC();
      v53 = *(v65 + 16);
      v52 = *(v65 + 24);
      if (v53 >= v52 >> 1)
      {
        OUTLINED_FUNCTION_15(v52);
        sub_1C716E058();
      }

      v54 = v47[9];
      ++v41;
      *(v65 + 16) = v53 + 1;
      sub_1C74BBA1C(v54, v65 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v53);
      v43 += 4;
      v37 = v47;
      v29 = v44;
      if (v64 == v41)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {

    if (qword_1EC2142A8 == -1)
    {
LABEL_8:
      v15 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v15, qword_1EC21CAE0);
      v16 = sub_1C754FEEC();
      v17 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_21_0(v17))
      {
        v18 = OUTLINED_FUNCTION_127();
        OUTLINED_FUNCTION_37_0(v18);
        OUTLINED_FUNCTION_6(&dword_1C6F5C000, v19, v20, "No themes were found for the provided asset sampler, returning an empty array of library understanding personal traits");
        OUTLINED_FUNCTION_23_3();
      }

      v22 = v61[11];
      v21 = v61[12];
      v23 = v61[10];
      v24 = v61[4];

      __swift_project_boxed_opaque_existential_1(v24, v24[3]);
      sub_1C754F1AC();
      (*(v22 + 8))(v21, v23);
      v25 = sub_1C754F2FC();
      v26 = *(v25 - 8);
      v27 = v61 + 5;
LABEL_36:
      (*(v26 + 8))(*v27, v25);

      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_94_1();

      __asm { BRAA            X2, X16 }
    }
  }

  OUTLINED_FUNCTION_0_214();
  goto LABEL_8;
}

uint64_t sub_1C74F3924()
{
  OUTLINED_FUNCTION_123();
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  sub_1C754F1AC();
  (*(v2 + 8))(v1, v3);
  v4 = sub_1C754F2FC();
  (*(*(v4 - 8) + 8))(*(v0 + 40), v4);

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1C74F3A30()
{
  sub_1C6F65BE8(0, &qword_1EDD0FA60);
  result = sub_1C755146C();
  qword_1EC21CAD8 = result;
  return result;
}

uint64_t sub_1C74F3AAC()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21CAE0);
  __swift_project_value_buffer(v0, qword_1EC21CAE0);
  if (qword_1EC2142A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC21CAD8;
  return sub_1C754FF2C();
}

uint64_t PersonalTraitLibraryUnderstandingDataSource.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t PersonalTraitLibraryUnderstandingDataSource.init(configuration:storyPhotoLibraryContext:)(void *__src, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 4);
  v5 = a2[2];
  *(v2 + 344) = 0x3FE999999999999ALL;
  memcpy((v2 + 16), __src, 0xD8uLL);
  *(v2 + 232) = v3;
  *(v2 + 240) = v4;
  *(v2 + 248) = v5;
  LibraryUnderstandingGenerator.init(setGMSBackgroundTaskPriority:)(&__srca, 0);
  memcpy((v2 + 256), &__srca, 0x58uLL);
  return v2;
}

uint64_t sub_1C74F3C54(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  OUTLINED_FUNCTION_41();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C74F3C84()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[4];
  if (*(v1 + 193) == 1)
  {
    if (qword_1EC2142A8 != -1)
    {
      OUTLINED_FUNCTION_0_214();
    }

    v2 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v2, qword_1EC21CAE0);
    v3 = sub_1C754FEEC();
    v4 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_21_0(v4))
    {
      v5 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v5);
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v6, v7, "Running overnight library understanding for personal traits");
      OUTLINED_FUNCTION_23_3();
    }

    v8 = swift_task_alloc();
    v0[5] = v8;
    *v8 = v0;
    v9 = OUTLINED_FUNCTION_41_7(v8);

    return sub_1C74F4744(v9);
  }

  else if (*(v1 + 216) == 1)
  {
    if (qword_1EC2142A8 != -1)
    {
      OUTLINED_FUNCTION_0_214();
    }

    v11 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v11, qword_1EC21CAE0);
    v12 = sub_1C754FEEC();
    v13 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_21_0(v13))
    {
      v14 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v14);
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v15, v16, "Running on-demand library understanding (cluster by cluster) for personal traits");
      OUTLINED_FUNCTION_23_3();
    }

    v17 = swift_task_alloc();
    v0[6] = v17;
    *v17 = v0;
    v18 = OUTLINED_FUNCTION_41_7(v17);

    return sub_1C74F51B0(v18, v19);
  }

  else
  {
    if (qword_1EC2142A8 != -1)
    {
      OUTLINED_FUNCTION_0_214();
    }

    v20 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v20, qword_1EC21CAE0);
    v21 = sub_1C754FEEC();
    v22 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_21_0(v22))
    {
      v23 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v23);
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v24, v25, "Running on-demand library understanding (single inference) for personal traits");
      OUTLINED_FUNCTION_23_3();
    }

    v26 = swift_task_alloc();
    v0[7] = v26;
    *v26 = v0;
    v27 = OUTLINED_FUNCTION_41_7(v26);

    return sub_1C74F5CD8(v27, v28);
  }
}

uint64_t sub_1C74F3F30()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v4 = *v1;
  OUTLINED_FUNCTION_40();
  *v5 = v4;

  OUTLINED_FUNCTION_116();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1C74F4020()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v4 = *v1;
  OUTLINED_FUNCTION_40();
  *v5 = v4;

  OUTLINED_FUNCTION_116();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1C74F4110()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v4 = *v1;
  OUTLINED_FUNCTION_40();
  *v5 = v4;

  OUTLINED_FUNCTION_116();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t PersonalTraitLibraryUnderstandingDataSource.mergeAssetUUIDsForSameTheme(_:)(uint64_t a1)
{
  v41 = MEMORY[0x1E69E7CC8];
  v1 = *(a1 + 16);
  for (i = (a1 + 56); v1; --v1)
  {
    v3 = *(i - 1);
    v4 = *i;
    v5 = *(i - 2);
    v40[0] = *(i - 3);
    v40[1] = v5;
    v40[2] = v3;
    v40[3] = v4;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C74F6464(&v41, v40);

    i += 4;
  }

  v6 = v41;
  v7 = *(v41 + 16);
  if (v7)
  {
    v40[0] = MEMORY[0x1E69E7CC0];
    sub_1C716E038(0, v7, 0);
    v8 = v40[0];
    v11 = sub_1C70D4544(v6);
    v12 = 0;
    v13 = v6 + 64;
    v32 = v6 + 72;
    v33 = v7;
    v34 = v6 + 64;
    if ((v11 & 0x8000000000000000) == 0)
    {
      while (v11 < 1 << *(v6 + 32))
      {
        v14 = v11 >> 6;
        if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v6 + 36) != v9)
        {
          goto LABEL_28;
        }

        v35 = v10;
        v36 = v12;
        v37 = v9;
        v15 = (*(v6 + 48) + 16 * v11);
        v16 = *v15;
        v17 = v15[1];
        v18 = (*(v6 + 56) + 16 * v11);
        v19 = v18[1];
        v38 = *v18;
        v39 = v16;
        v40[0] = v8;
        v20 = v6;
        v21 = *(v8 + 16);
        v13 = *(v8 + 24);
        sub_1C75504FC();
        sub_1C75504FC();
        if (v21 >= v13 >> 1)
        {
          sub_1C716E038(v13 > 1, v21 + 1, 1);
          v8 = v40[0];
        }

        *(v8 + 16) = v21 + 1;
        v22 = (v8 + 32 * v21);
        v22[4] = v39;
        v22[5] = v17;
        v22[6] = v38;
        v22[7] = v19;
        v23 = 1 << *(v20 + 32);
        if (v11 >= v23)
        {
          goto LABEL_29;
        }

        v13 = v34;
        v24 = *(v34 + 8 * v14);
        if ((v24 & (1 << v11)) == 0)
        {
          goto LABEL_30;
        }

        v6 = v20;
        if (*(v20 + 36) != v37)
        {
          goto LABEL_31;
        }

        v25 = v24 & (-2 << (v11 & 0x3F));
        if (v25)
        {
          v23 = __clz(__rbit64(v25)) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v26 = v14 << 6;
          v27 = v14 + 1;
          v28 = (v32 + 8 * v14);
          while (v27 < (v23 + 63) >> 6)
          {
            v30 = *v28++;
            v29 = v30;
            v26 += 64;
            ++v27;
            if (v30)
            {
              sub_1C6F9ED50(v11, v37, v35 & 1);
              v23 = __clz(__rbit64(v29)) + v26;
              goto LABEL_20;
            }
          }

          sub_1C6F9ED50(v11, v37, v35 & 1);
        }

LABEL_20:
        v12 = v36 + 1;
        if (v36 + 1 == v33)
        {

          return v8;
        }

        v10 = 0;
        v9 = *(v6 + 36);
        v11 = v23;
        if (v23 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void PersonalTraitLibraryUnderstandingDataSource.applyDenyListAndMergeDuplicates(_:)(uint64_t a1)
{
  v2 = 0;
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  v27 = *(a1 + 16);
  v26 = a1 + 32;
  v28 = MEMORY[0x1E69E7CC0];
  while (1)
  {
LABEL_2:
    v5 = v2;
    if (v2 == v27)
    {
      PersonalTraitLibraryUnderstandingDataSource.mergeAssetUUIDsForSameTheme(_:)(v28);

      return;
    }

    if (v2 >= v27)
    {
      break;
    }

    ++v2;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_25;
    }

    v6 = (v26 + 32 * v5);
    v8 = *v6;
    v7 = v6[1];
    v10 = v6[2];
    v9 = v6[3];
    if (*(v4 + 16))
    {
      sub_1C7551F3C();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75505AC();
      v11 = sub_1C7551FAC();
      v12 = ~(-1 << *(v4 + 32));
      while (1)
      {
        v13 = v11 & v12;
        if (((*(v4 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
        {
          break;
        }

        v14 = (*(v4 + 48) + 16 * v13);
        if (*v14 != v8 || v14[1] != v7)
        {
          v16 = sub_1C7551DBC();
          v11 = v13 + 1;
          if ((v16 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_2;
      }
    }

    else
    {
      sub_1C75504FC();
      sub_1C75504FC();
    }

    if (*(v3 + 16))
    {
      v17 = sub_1C6F78124(v8, v7);
      if (v18)
      {
        v19 = (*(v3 + 56) + 16 * v17);
        v8 = *v19;
        v20 = v19[1];
        sub_1C75504FC();

        v7 = v20;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB2818();
      v28 = v24;
    }

    v22 = *(v28 + 16);
    v21 = *(v28 + 24);
    if (v22 >= v21 >> 1)
    {
      OUTLINED_FUNCTION_15(v21);
      sub_1C6FB2818();
      v28 = v25;
    }

    *(v28 + 16) = v22 + 1;
    v23 = (v28 + 32 * v22);
    v23[4] = v8;
    v23[5] = v7;
    v23[6] = v10;
    v23[7] = v9;
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_1C74F4744(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C74F4764, 0, 0);
}

uint64_t sub_1C74F4764()
{
  OUTLINED_FUNCTION_49_0();
  type metadata accessor for PersonalTraitGenerator.MomentSampler();
  v1 = swift_dynamicCastClass();
  v0[4] = v1;
  if (v1)
  {
    v2 = v1;
    v0[5] = *(v0[3] + 200);
    swift_unknownObjectRetain();

    return MEMORY[0x1EEE6DFA0](sub_1C74F4860, v2, 0);
  }

  else
  {
    sub_1C74F6D98();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_43();

    return v4();
  }
}

uint64_t sub_1C74F4860()
{
  OUTLINED_FUNCTION_49_0();
  v0[6] = sub_1C749B164(v0[5]);
  v0[7] = 0;
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C74F48E4()
{
  v5 = 0;
  v6 = *(v0 + 48);
  v78 = *(v6 + 16);
  v7 = MEMORY[0x1E69E7CC8];
  v76 = v6;
  i = v6 + 56;
  while (v78 != v5)
  {
    if (v5 >= *(v76 + 16))
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      OUTLINED_FUNCTION_0_214();
LABEL_45:
      v55 = v3 / v4;
      v56 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v56, qword_1EC21CAE0);

      v57 = sub_1C754FEEC();
      v58 = sub_1C75511BC();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 134218752;
        *(v59 + 4) = i;
        *(v59 + 12) = 2048;
        *(v59 + 14) = v1;
        *(v59 + 22) = 2048;
        *(v59 + 24) = v55;
        *(v59 + 32) = 2048;
        *(v59 + 34) = 0x3FE999999999999ALL;
        OUTLINED_FUNCTION_57_5();
        _os_log_impl(v60, v61, v62, v63, v59, 0x2Au);
        OUTLINED_FUNCTION_109();
      }

      if (v55 < 0.8)
      {

        sub_1C74F6D98();
        swift_allocError();
        *v64 = 1;
        swift_willThrow();

        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_43();
        OUTLINED_FUNCTION_20_66();

        __asm { BRAA            X1, X16 }
      }

      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_20_66();

      __asm { BRAA            X2, X16 }
    }

    v79 = v5;
    v9 = *(i - 24);
    v1 = *(i - 16);
    v10 = *(i - 8);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_1C75504FC();
    swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_1C6F78124(v9, v1);
    if (__OFADD__(v7[2], (v12 & 1) == 0))
    {
      goto LABEL_58;
    }

    v13 = v11;
    v2 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DC0);
    if (sub_1C7551A2C())
    {
      v14 = sub_1C6F78124(v9, v1);
      if ((v2 & 1) != (v15 & 1))
      {
        OUTLINED_FUNCTION_20_66();

        return sub_1C7551E4C();
      }

      v13 = v14;
    }

    if (v2)
    {

      *(v7[7] + 8 * v13) = v10;
    }

    else
    {
      v7[(v13 >> 6) + 8] |= 1 << v13;
      v16 = (v7[6] + 16 * v13);
      *v16 = v9;
      v16[1] = v1;
      *(v7[7] + 8 * v13) = v10;

      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_61;
      }

      v7[2] = v19;
    }

    i += 32;
    v5 = v79 + 1;
  }

  i = MEMORY[0x1E69E6158];
  v20 = *(v73 + 24);
  v21 = sub_1C75504FC();
  v22 = sub_1C7080ED4(v21);
  v23 = *(v20 + 240);
  v24 = *(v20 + 232);

  v25 = [v24 librarySpecificFetchOptions];
  [v25 setSharingFilter_];

  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C75604F0;
  *(v26 + 56) = i;
  *(v26 + 64) = sub_1C6F6D524();
  *(v26 + 32) = 1684632949;
  *(v26 + 40) = 0xE400000000000000;
  *(v26 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
  *(v26 + 104) = sub_1C7067A60();
  *(v26 + 72) = v22;
  sub_1C75504FC();
  v27 = sub_1C755112C();
  [v25 setPredicate_];

  sub_1C6F65BE8(0, &qword_1EDD0CCF0);
  v70 = v25;
  v2 = [swift_getObjCClassFromMetadata() fetchMomentsWithOptions_];
  v28 = [v2 count];
  if (v28 < 0)
  {
    goto LABEL_62;
  }

  v1 = v28;
  v71 = 0;
  v29 = 0;
  v80 = MEMORY[0x1E69E7CC0];
  v30 = &selRef_mergedPersonIdentifiers;
  v74 = v2;
  while (2)
  {
    for (i = v29; ; ++i)
    {
      if (v1 == i)
      {

        i = v71;
        v3 = v71;
        v4 = v1;
        if (qword_1EC2142A8 != -1)
        {
          goto LABEL_63;
        }

        goto LABEL_45;
      }

      if (i >= v1)
      {
        goto LABEL_59;
      }

      v29 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_60;
      }

      result = sub_1C6FCA214([v2 v30[45]]);
      if (!v32)
      {
        goto LABEL_66;
      }

      if (!v7[2])
      {
        goto LABEL_29;
      }

      v33 = sub_1C6F78124(result, v32);
      v35 = v34;

      if ((v35 & 1) == 0)
      {
        continue;
      }

      v36 = *(v7[7] + 8 * v33);
      sub_1C75504FC();
      v37 = [v2 v30[45]];
      objc_opt_self();
      v38 = swift_dynamicCastObjCClass();
      if (v38)
      {
        break;
      }

LABEL_29:

LABEL_30:
      ;
    }

    v39 = v38;
    v40 = [v38 hasNoThemesPlaceholder];
    v41 = [v39 themeAssignments];
    sub_1C6F65BE8(0, &qword_1EC21CB08);
    v42 = sub_1C7550B5C();

    if (v40)
    {
      goto LABEL_26;
    }

    if (!(v42 >> 62))
    {
      result = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_32;
      }

      goto LABEL_26;
    }

    result = sub_1C75516BC();
    if (!result)
    {
LABEL_26:

      v30 = &selRef_mergedPersonIdentifiers;
      goto LABEL_30;
    }

LABEL_32:
    if (!__OFADD__(v71, 1))
    {
      ++v71;
      if (result < 1)
      {
        goto LABEL_65;
      }

      v43 = 0;
      v72 = result;
      do
      {
        if ((v42 & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x1CCA5DDD0](v43, v42);
        }

        else
        {
          v44 = *(v42 + 8 * v43 + 32);
        }

        v45 = v44;
        v46 = [v44 themeName];
        v47 = sub_1C755068C();
        v77 = v48;

        v49 = [v45 adapterVersion];
        sub_1C75504FC();
        v75 = v49;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB2818();
          v80 = v53;
        }

        v51 = *(v80 + 16);
        v50 = *(v80 + 24);
        if (v51 >= v50 >> 1)
        {
          OUTLINED_FUNCTION_15(v50);
          sub_1C6FB2818();
          v80 = v54;
        }

        ++v43;

        *(v80 + 16) = v51 + 1;
        v52 = (v80 + 32 * v51);
        v52[4] = v47;
        v52[5] = v77;
        v52[6] = v75;
        v52[7] = v36;
        v2 = v74;
      }

      while (v72 != v43);

      v30 = &selRef_mergedPersonIdentifiers;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_1C74F5154()
{
  OUTLINED_FUNCTION_42();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C74F51B0(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C74F51D4, 0, 0);
}

uint64_t sub_1C74F51D4()
{
  OUTLINED_FUNCTION_123();
  v14 = *(v0 + 80);
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_12_92(ObjectType, v2, v3, v4, v5, v6, v7, v8, v13, v14);
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  *v9 = v0;
  v9[1] = sub_1C74F52E0;
  v10 = OUTLINED_FUNCTION_16_77();

  return v11(v10);
}

uint64_t sub_1C74F52E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 104) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_43();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

void *sub_1C74F5400()
{
  v29 = v0;
  if (qword_1EC2142A8 != -1)
  {
    OUTLINED_FUNCTION_0_214();
  }

  v1 = sub_1C754FF1C();
  *(v0 + 112) = __swift_project_value_buffer(v1, qword_1EC21CAE0);
  sub_1C75504FC();
  v2 = sub_1C754FEEC();
  v3 = sub_1C75511BC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 104);
  v6 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 134218242;
    *(v7 + 4) = *(v5 + 16);

    *(v7 + 12) = 2080;
    swift_getKeyPath();
    v9 = *(v5 + 16);
    if (v9)
    {
      v26 = v3;
      v10 = *(v0 + 104);
      v28 = v6;
      sub_1C716D854();
      v11 = v6;
      v12 = (v10 + 32);
      do
      {
        *(v0 + 48) = *v12;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_getAtKeyPath();

        v13 = *(v0 + 64);
        v28 = v11;
        v14 = *(v11 + 16);
        if (v14 >= *(v11 + 24) >> 1)
        {
          sub_1C716D854();
          v11 = v28;
        }

        *(v11 + 16) = v14 + 1;
        *(v11 + 8 * v14 + 32) = v13;
        ++v12;
        --v9;
      }

      while (v9);

      v6 = MEMORY[0x1E69E7CC0];
      v3 = v26;
    }

    else
    {

      v11 = MEMORY[0x1E69E7CC0];
    }

    v15 = MEMORY[0x1CCA5D090](v11, MEMORY[0x1E69E6530]);
    v17 = v16;

    v18 = sub_1C6F765A4(v15, v17, &v27);

    *(v7 + 14) = v18;
    _os_log_impl(&dword_1C6F5C000, v2, v3, "Running multiple Library Understanding inferences for %ld clusters with sampledAssetUUIDs sizes: %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  result = *(v0 + 104);
  v20 = result[2];
  *(v0 + 120) = v20;
  *(v0 + 128) = v6;
  *(v0 + 136) = 0;
  if (!v20)
  {

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_94_1();

    __asm { BRAA            X2, X16 }
  }

  if (result[2])
  {
    *(v0 + 144) = result[4];
    *(v0 + 152) = result[5];
    sub_1C75504FC();
    sub_1C75504FC();
    v21 = swift_task_alloc();
    *(v0 + 160) = v21;
    *v21 = v0;
    OUTLINED_FUNCTION_2_146(v21);
    OUTLINED_FUNCTION_94_1();

    return sub_1C74F66E0(v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C74F5774()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v3[2] = v1;
  v3[3] = v5;
  v3[4] = v6;
  v3[5] = v0;
  *v4 = *v1;
  v3[21] = v5;
  v3[22] = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C74F5894()
{
  v44 = v0;
  v1 = v0[21];
  if (!v1)
  {
    sub_1C75504FC();
    sub_1C75504FC();
    v16 = sub_1C754FEEC();
    v17 = sub_1C75511BC();
    v18 = OUTLINED_FUNCTION_21_0(v17);
    v19 = v0[19];
    if (v18)
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      v21 = *(v19 + 16);

      *(v20 + 4) = v21;

      _os_log_impl(&dword_1C6F5C000, v16, OS_LOG_TYPE_DEFAULT, "Did not run themes inference for current cluster with sampledAssetUUIDs size: %ld", v20, 0xCu);
      OUTLINED_FUNCTION_109();
    }

    else
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    goto LABEL_18;
  }

  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1C75504FC();
  v2 = sub_1C754FEEC();
  v3 = sub_1C75511BC();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[19];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v43 = v7;
    *v6 = 136315394;
    v8 = MEMORY[0x1CCA5D090](v1, MEMORY[0x1E69E6158]);
    v10 = sub_1C6F765A4(v8, v9, &v43);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2048;
    v11 = *(v5 + 16);

    *(v6 + 14) = v11;

    OUTLINED_FUNCTION_57_5();
    _os_log_impl(v12, v13, v14, v15, v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v22 = *(v1 + 16);
  if (!v22)
  {

LABEL_18:
    v34 = v0[17];
    goto LABEL_19;
  }

  v23 = v0[4];
  v24 = v0[16];
  v25 = (v1 + 40);
  do
  {
    v27 = *(v25 - 1);
    v26 = *v25;
    sub_1C75504FC();
    sub_1C75504FC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB2818();
      v24 = v32;
    }

    v29 = *(v24 + 16);
    v28 = *(v24 + 24);
    if (v29 >= v28 >> 1)
    {
      OUTLINED_FUNCTION_15(v28);
      sub_1C6FB2818();
      v24 = v33;
    }

    v30 = v0[18];
    *(v24 + 16) = v29 + 1;
    v31 = (v24 + 32 * v29);
    v31[4] = v27;
    v31[5] = v26;
    v31[6] = v23;
    v31[7] = v30;
    v25 += 2;
    --v22;
  }

  while (v22);

  v34 = v0[17];
  v0[16] = v24;
LABEL_19:
  v35 = v34 + 1;
  v0[17] = v35;
  result = v0[13];
  if (v35 == v0[15])
  {

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_44();

    __asm { BRAA            X2, X16 }
  }

  if (v35 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    v39 = result + 16 * v35;
    v0[18] = *(v39 + 32);
    v0[19] = *(v39 + 40);
    sub_1C75504FC();
    sub_1C75504FC();
    v40 = swift_task_alloc();
    v0[20] = v40;
    *v40 = v0;
    OUTLINED_FUNCTION_2_146();
    OUTLINED_FUNCTION_44();

    return sub_1C74F66E0(v41);
  }

  return result;
}

uint64_t sub_1C74F5C74()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C74F5CD8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C74F5CFC, 0, 0);
}

uint64_t sub_1C74F5CFC()
{
  OUTLINED_FUNCTION_123();
  v14 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_12_92(ObjectType, v2, v3, v4, v5, v6, v7, v8, v13, v14);
  v9 = swift_task_alloc();
  *(v0 + 40) = v9;
  *v9 = v0;
  v9[1] = sub_1C74F5E08;
  v10 = OUTLINED_FUNCTION_16_77();

  return v11(v10);
}

uint64_t sub_1C74F5E08()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 48) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_43();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1C74F5F28()
{
  v1 = 0;
  v2 = v0[6];
  v3 = *(v2 + 16);
  v4 = (v2 + 40);
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v0[7] = v5;
    if (v3 == v1)
    {
      break;
    }

    if (v1 >= *(v2 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v6 = *v4;
    v7 = *(*v4 + 16);
    v8 = *(v5 + 16);
    if (__OFADD__(v8, v7))
    {
      goto LABEL_23;
    }

    sub_1C75504FC();
    if (!swift_isUniquelyReferenced_nonNull_native() || v8 + v7 > *(v5 + 24) >> 1)
    {
      sub_1C6FB1814();
      v5 = v9;
    }

    if (*(v6 + 16))
    {
      if ((*(v5 + 24) >> 1) - *(v5 + 16) < v7)
      {
        goto LABEL_25;
      }

      swift_arrayInitWithCopy();

      if (v7)
      {
        v10 = *(v5 + 16);
        v11 = __OFADD__(v10, v7);
        v12 = v10 + v7;
        if (v11)
        {
          goto LABEL_26;
        }

        *(v5 + 16) = v12;
      }
    }

    else
    {

      if (v7)
      {
        goto LABEL_24;
      }
    }

    v4 += 2;
    ++v1;
  }

  if (qword_1EC2142A8 == -1)
  {
    goto LABEL_16;
  }

LABEL_27:
  OUTLINED_FUNCTION_0_214();
LABEL_16:
  v13 = sub_1C754FF1C();
  __swift_project_value_buffer(v13, qword_1EC21CAE0);
  sub_1C75504FC();
  sub_1C75504FC();
  v14 = sub_1C754FEEC();
  v15 = sub_1C75511BC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134218240;
    v17 = *(v2 + 16);

    *(v16 + 4) = v17;

    *(v16 + 12) = 2048;
    *(v16 + 14) = *(v5 + 16);

    OUTLINED_FUNCTION_57_5();
    _os_log_impl(v18, v19, v20, v21, v16, 0x16u);
    OUTLINED_FUNCTION_109();
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v22 = swift_task_alloc();
  v0[8] = v22;
  *v22 = v0;
  v22[1] = sub_1C74F61D4;
  OUTLINED_FUNCTION_44();

  return sub_1C74F66E0(v23);
}

uint64_t sub_1C74F61D4()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 72) = v6;
  *(v3 + 80) = v7;

  if (v0)
  {

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1C74F6314()
{
  v1 = v0[9];
  if (!v1)
  {
    goto LABEL_12;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {

LABEL_12:
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v3 = (v1 + 40);
  v4 = MEMORY[0x1E69E7CC0];
  do
  {
    v6 = *(v3 - 1);
    v5 = *v3;
    sub_1C75504FC();
    sub_1C75504FC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB2818();
      v4 = v12;
    }

    v8 = *(v4 + 16);
    v7 = *(v4 + 24);
    if (v8 >= v7 >> 1)
    {
      OUTLINED_FUNCTION_15(v7);
      sub_1C6FB2818();
      v4 = v13;
    }

    v9 = v0[10];
    v10 = v0[7];
    *(v4 + 16) = v8 + 1;
    v11 = (v4 + 32 * v8);
    v11[4] = v6;
    v11[5] = v5;
    v11[6] = v9;
    v11[7] = v10;
    v3 += 2;
    --v2;
  }

  while (v2);

LABEL_13:

  OUTLINED_FUNCTION_116();

  return v14(v4);
}

uint64_t sub_1C74F6464(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = sub_1C6FE0F8C(*a2, v5, *a1);
  if (v8)
  {
    v9 = v7;
    v20 = v7;
    v21 = v8;
    if (qword_1EC2142A8 != -1)
    {
      swift_once();
    }

    v18 = v4;
    v22 = v2;
    v10 = sub_1C754FF1C();
    __swift_project_value_buffer(v10, qword_1EC21CAE0);
    sub_1C75504FC();
    v11 = sub_1C754FEEC();
    v12 = sub_1C75511BC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19[0] = v14;
      *v13 = 136643331;
      *(v13 + 4) = sub_1C6F765A4(v18, v5, v19);
      *(v13 + 12) = 2048;
      *(v13 + 14) = v9;
      *(v13 + 22) = 2048;
      *(v13 + 24) = v6;
      _os_log_impl(&dword_1C6F5C000, v11, v12, "Theme %{sensitive}s got deduped by string match, using the max algorithm version between %ld and %ld as the final one", v13, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1CCA5F8E0](v14, -1, -1);
      MEMORY[0x1CCA5F8E0](v13, -1, -1);
    }

    else
    {
    }

    if (v6 <= v9)
    {
      v16 = v9;
    }

    else
    {
      v16 = v6;
    }

    swift_beginAccess();
    v20 = v16;
    v17 = sub_1C75504FC();
    sub_1C6FD2568(v17);
    swift_endAccess();
    sub_1C75504FC();
    swift_isUniquelyReferenced_nonNull_native();
    v19[0] = *a1;
    sub_1C6FCA010();

    *a1 = v19[0];
  }

  else
  {
    sub_1C75504FC();
    swift_isUniquelyReferenced_nonNull_native();
    v19[0] = *a1;
    result = sub_1C6FCA010();
    *a1 = v19[0];
  }

  return result;
}

uint64_t sub_1C74F66E0(uint64_t a1)
{
  *(v2 + 216) = a1;
  *(v2 + 224) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C74F6700, 0, 0);
}

uint64_t sub_1C74F6700()
{
  OUTLINED_FUNCTION_123();
  v1 = v0[27];
  if (*(v1 + 16))
  {
    v2 = v0[28];
    memcpy(v0 + 2, (v2 + 256), 0x58uLL);
    v3 = *(v2 + 232);
    sub_1C70DB21C((v0 + 2), (v0 + 13));
    v4 = swift_task_alloc();
    v0[29] = v4;
    v4[2] = v1;
    v4[3] = v3;
    v4[4] = v0 + 2;
    v5 = swift_task_alloc();
    v0[30] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2174A0);
    *v5 = v0;
    v5[1] = sub_1C74F6880;
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DE38]();
  }

  else
  {
    v6 = v0[1];

    return v6(0, 0);
  }
}

uint64_t sub_1C74F6880()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_40();
  *v6 = v5;
  *(v3 + 248) = v0;

  if (!v0)
  {
    sub_1C74F6DEC(v3 + 16);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C74F6994()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[24];
  if (v1 == 1)
  {
    if (qword_1EC2142A8 != -1)
    {
      OUTLINED_FUNCTION_0_214();
    }

    v2 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v2, qword_1EC21CAE0);
    v3 = sub_1C754FEEC();
    v4 = sub_1C755119C();
    if (OUTLINED_FUNCTION_21_0(v4))
    {
      v5 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v5);
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v6, v7, "libraryUnderstandingGenerator returned nil result");
      OUTLINED_FUNCTION_23_3();
    }

    sub_1C74F6D98();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();
    OUTLINED_FUNCTION_43();

    return v9();
  }

  else
  {
    v11 = v0[25];
    if (v1)
    {
      v12 = v0[24];
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }

    v13 = v0[1];

    return v13(v12, v11);
  }
}

uint64_t sub_1C74F6AE0()
{
  OUTLINED_FUNCTION_42();
  sub_1C74F6DEC(v0 + 16);

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t PersonalTraitLibraryUnderstandingDataSource.deinit()
{
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  sub_1C7059364(__dst);
  v1 = *(v0 + 232);

  return v0;
}

uint64_t PersonalTraitLibraryUnderstandingDataSource.__deallocating_deinit()
{
  PersonalTraitLibraryUnderstandingDataSource.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1C74F6C18()
{
  result = qword_1EC21CAF8;
  if (!qword_1EC21CAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CAF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalTraitLibraryUnderstandingDataSource.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C74F6D98()
{
  result = qword_1EC21CB00;
  if (!qword_1EC21CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CB00);
  }

  return result;
}

uint64_t sub_1C74F6E40(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1C74F6E80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C74F6EE4()
{
  v0 = sub_1C7551B2C();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1C74F6F38(char a1)
{
  result = 0x6F7250726573752ELL;
  switch(a1)
  {
    case 1:
      result = 0x7374696172742ELL;
      break;
    case 2:
      result = 0x695479726F74732ELL;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0x694274706D6F7270;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x5574736575716572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C74F708C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C74F6EE4();
  *a1 = result;
  return result;
}

unint64_t sub_1C74F70BC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C74F6F38(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C74F7104@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C74F6F30();
  *a1 = result;
  return result;
}

uint64_t sub_1C74F7138(uint64_t a1)
{
  v2 = sub_1C74F7478();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C74F7174(uint64_t a1)
{
  v2 = sub_1C74F7478();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C74F71B0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21CB10);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C74F7478();
  sub_1C755200C();
  LOBYTE(v13) = 0;
  OUTLINED_FUNCTION_97();
  sub_1C7551CCC();
  if (!v2)
  {
    v13 = v3[2];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C6FC18BC();
    OUTLINED_FUNCTION_0_215();
    sub_1C7551D2C();
    LOBYTE(v13) = 2;
    OUTLINED_FUNCTION_97();
    sub_1C7551CCC();
    v13 = v3[9];
    v12 = 3;
    OUTLINED_FUNCTION_0_215();
    sub_1C7551CBC();
    v13 = v3[5];
    v12 = 4;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C50);
    sub_1C6FB5CAC();
    v11 = v9;
    OUTLINED_FUNCTION_97();
    sub_1C7551CBC();
    v13 = v3[6];
    v12 = 5;
    OUTLINED_FUNCTION_97();
    sub_1C7551CBC();
    v13 = v3[7];
    v12 = 6;
    OUTLINED_FUNCTION_0_215();
    sub_1C7551CBC();
    v13 = v3[8];
    v12 = 7;
    OUTLINED_FUNCTION_0_215();
    sub_1C7551CBC();
    v13 = v3[10];
    v12 = 8;
    OUTLINED_FUNCTION_0_215();
    sub_1C7551CBC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1C74F7478()
{
  result = qword_1EC21CB18;
  if (!qword_1EC21CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CB18);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetCurationOutlierDiagnostics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C74F75AC()
{
  result = qword_1EC21CB20;
  if (!qword_1EC21CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CB20);
  }

  return result;
}

unint64_t sub_1C74F7604()
{
  result = qword_1EC21CB28;
  if (!qword_1EC21CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CB28);
  }

  return result;
}

unint64_t sub_1C74F765C()
{
  result = qword_1EC21CB30;
  if (!qword_1EC21CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CB30);
  }

  return result;
}

uint64_t static MusicGenre.genreFromGenreName(_:)@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2142B8 != -1)
  {
LABEL_21:
    result = OUTLINED_FUNCTION_0_216();
  }

  v1 = 0;
  v24 = off_1EC21CB50;
  v25 = *(off_1EC21CB50 + 2);
  for (i = (off_1EC21CB50 + 80); ; i += 7)
  {
    if (v25 == v1)
    {
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      return result;
    }

    if (v1 >= v24[2])
    {
      __break(1u);
      goto LABEL_21;
    }

    v23 = *(i - 48);
    v4 = *(i - 5);
    v3 = *(i - 4);
    v6 = *(i - 3);
    v5 = *(i - 2);
    v7 = *i;
    v22 = *(i - 1);
    v8 = sub_1C75506FC();
    v10 = v9;
    if (v8 == sub_1C75506FC() && v10 == v11)
    {
      break;
    }

    v13 = OUTLINED_FUNCTION_7_108();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();

    if (v13)
    {
      goto LABEL_19;
    }

    v15 = sub_1C75506FC();
    v17 = v16;
    if (v15 == sub_1C75506FC() && v17 == v18)
    {
      goto LABEL_18;
    }

    v20 = OUTLINED_FUNCTION_7_108();

    if (v20)
    {
      goto LABEL_19;
    }

    ++v1;
  }

  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
LABEL_18:

LABEL_19:
  *a1 = v23;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = v6;
  *(a1 + 32) = v5;
  *(a1 + 40) = v22;
  *(a1 + 48) = v7;
  return result;
}

uint64_t MusicGenreIdentifier.description.getter()
{
  if (*v0 == 24)
  {
    return 6432370;
  }

  else
  {
    return MusicGenreIdentifier.rawValue.getter();
  }
}

uint64_t MusicGenreIdentifier.rawValue.getter()
{
  result = 0x74616E7265746C61;
  switch(*v0)
  {
    case 1:
      return 0x6E61636972656D61;
    case 2:
      return 0x7361726765756C62;
    case 3:
      return 0x7365756C62;
    case 4:
      OUTLINED_FUNCTION_10_91();
      return 0x6169747369726863;
    case 5:
      OUTLINED_FUNCTION_10_91();
      return 0x6974616D656E6963;
    case 6:
      OUTLINED_FUNCTION_10_91();
      return 0x6163697373616C63;
    case 7:
      v2 = 0x72746E756F63;
      return v2 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
    case 8:
      v3 = 1668178276;
      goto LABEL_27;
    case 9:
      OUTLINED_FUNCTION_10_91();
      return 0x706D65746E776F64;
    case 0xA:
      return 0x6E6F727463656C65;
    case 0xB:
      return 1802268518;
    case 0xC:
      return 1802401126;
    case 0xD:
      OUTLINED_FUNCTION_10_91();
      v4 = 0x706F68706968;
      goto LABEL_34;
    case 0xE:
      v2 = 0x6164696C6F68;
      return v2 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
    case 0xF:
      v3 = 1768189545;
LABEL_27:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    case 0x10:
      result = 0x656D757274736E69;
      break;
    case 0x11:
      result = 2054840682;
      break;
    case 0x12:
      result = 0x696D61667364696BLL;
      break;
    case 0x13:
      result = 0x6E6974616CLL;
      break;
    case 0x14:
      result = 0x65676E756F6CLL;
      break;
    case 0x15:
      result = 0x6C6174656DLL;
      break;
    case 0x16:
      result = 0x736C61636973756DLL;
      break;
    case 0x17:
      result = 7368560;
      break;
    case 0x18:
      result = 6450802;
      break;
    case 0x19:
      result = 0x656167676572;
      break;
    case 0x1A:
      result = 1801678706;
      break;
    case 0x1B:
      OUTLINED_FUNCTION_10_2();
      result = 0xD000000000000010;
      break;
    case 0x1C:
      result = 0x6B6E75666C756F73;
      break;
    case 0x1D:
      v4 = 0x74646E756F73;
LABEL_34:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
      break;
    case 0x1E:
      result = 0x7263736567617473;
      break;
    case 0x1F:
      result = 0x646C726F77;
      break;
    default:
      return result;
  }

  return result;
}

PhotosIntelligence::MusicGenreIdentifier_optional __swiftcall MusicGenreIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551DFC();

  v5 = 0;
  v6 = 14;
  switch(v3)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v5 = 1;
      goto LABEL_25;
    case 2:
      v5 = 2;
      goto LABEL_25;
    case 3:
      v5 = 3;
      goto LABEL_25;
    case 4:
      v5 = 4;
      goto LABEL_25;
    case 5:
      v5 = 5;
      goto LABEL_25;
    case 6:
      v5 = 6;
      goto LABEL_25;
    case 7:
      v5 = 7;
      goto LABEL_25;
    case 8:
      v5 = 8;
      goto LABEL_25;
    case 9:
      v5 = 9;
      goto LABEL_25;
    case 10:
      v5 = 10;
      goto LABEL_25;
    case 11:
      v5 = 11;
      goto LABEL_25;
    case 12:
      v5 = 12;
      goto LABEL_25;
    case 13:
      v5 = 13;
LABEL_25:
      v6 = v5;
      break;
    case 14:
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    default:
      v6 = 32;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1C74F7E10@<X0>(uint64_t *a1@<X8>)
{
  result = MusicGenreIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C74F7E4C()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21CB38);
  __swift_project_value_buffer(v0, qword_1EC21CB38);
  return sub_1C754FEFC();
}

uint64_t MusicGenre.genreNameForFlex.getter()
{
  v1 = *(v0 + 8);
  sub_1C75504FC();
  return v1;
}

uint64_t MusicGenre.genreName.getter()
{
  v1 = *(v0 + 24);
  sub_1C75504FC();
  return v1;
}

uint64_t MusicGenre.genreAliases.getter()
{
  v1 = *(v0 + 40);
  sub_1C75504FC();
  return v1;
}

uint64_t static MusicGenre.genreFromGenreIdentifier(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  if (qword_1EC2142B8 != -1)
  {
LABEL_92:
    OUTLINED_FUNCTION_0_216();
  }

  v3 = 0;
  v46 = off_1EC21CB50;
  v47 = *(off_1EC21CB50 + 2);
  v4 = (off_1EC21CB50 + 80);
  while (v47 != v3)
  {
    if (v3 >= v46[2])
    {
      __break(1u);
      goto LABEL_92;
    }

    v5 = *(v4 - 4);
    v6 = *(v4 - 2);
    v43 = *(v4 - 3);
    v44 = *(v4 - 5);
    v7 = *v4;
    v42 = *(v4 - 1);
    v8 = 0xEB00000000657669;
    v9 = 0x74616E7265746C61;
    v45 = *(v4 - 48);
    switch(v45)
    {
      case 1:
        v9 = 0x6E61636972656D61;
        v8 = 0xE900000000000061;
        break;
      case 2:
        OUTLINED_FUNCTION_10_91();
        v8 = v13 + 18;
        break;
      case 3:
        v8 = 0xE500000000000000;
        v9 = 0x7365756C62;
        break;
      case 4:
        OUTLINED_FUNCTION_10_91();
        v8 = v11 + 13;
        break;
      case 5:
        OUTLINED_FUNCTION_10_91();
        v8 = v15 + 2;
        break;
      case 6:
        OUTLINED_FUNCTION_10_91();
        v8 = v17 + 11;
        break;
      case 7:
        v8 = 0xE700000000000000;
        v10 = 0x72746E756F63;
        goto LABEL_20;
      case 8:
        v8 = 0xE500000000000000;
        v14 = 1668178276;
        goto LABEL_32;
      case 9:
        OUTLINED_FUNCTION_10_91();
        v8 = v12 + 14;
        break;
      case 10:
        v9 = 0x6E6F727463656C65;
        v18 = 25449;
        goto LABEL_30;
      case 11:
        v8 = 0xE400000000000000;
        v9 = 1802268518;
        break;
      case 12:
        v8 = 0xE400000000000000;
        v9 = 1802401126;
        break;
      case 13:
        OUTLINED_FUNCTION_10_91();
        v8 = v16 + 15;
        break;
      case 14:
        v8 = 0xE700000000000000;
        v10 = 0x6164696C6F68;
LABEL_20:
        v9 = v10 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
        break;
      case 15:
        v8 = 0xE500000000000000;
        v14 = 1768189545;
LABEL_32:
        v9 = v14 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
        break;
      case 16:
        v9 = 0x656D757274736E69;
        v8 = 0xEC0000006C61746ELL;
        break;
      case 17:
        v8 = 0xE400000000000000;
        v9 = 2054840682;
        break;
      case 18:
        v9 = 0x696D61667364696BLL;
        v18 = 31084;
LABEL_30:
        v8 = v18 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
        break;
      case 19:
        v8 = 0xE500000000000000;
        v9 = 0x6E6974616CLL;
        break;
      case 20:
        v8 = 0xE600000000000000;
        v9 = 0x65676E756F6CLL;
        break;
      case 21:
        v8 = 0xE500000000000000;
        v9 = 0x6C6174656DLL;
        break;
      case 22:
        v8 = 0xE800000000000000;
        v9 = 0x736C61636973756DLL;
        break;
      case 23:
        v8 = 0xE300000000000000;
        v9 = 7368560;
        break;
      case 24:
        v8 = 0xE300000000000000;
        v9 = 6450802;
        break;
      case 25:
        v8 = 0xE600000000000000;
        v9 = 0x656167676572;
        break;
      case 26:
        v8 = 0xE400000000000000;
        v9 = 1801678706;
        break;
      case 27:
        v9 = 0xD000000000000010;
        v8 = 0x80000001C7597000;
        break;
      case 28:
        v8 = 0xE800000000000000;
        v9 = 0x6B6E75666C756F73;
        break;
      case 29:
        v9 = 0x617274646E756F73;
        v8 = 0xEA00000000006B63;
        break;
      case 30:
        v9 = 0x7263736567617473;
        v8 = 0xEB000000006E6565;
        break;
      case 31:
        v8 = 0xE500000000000000;
        v9 = 0x646C726F77;
        break;
      default:
        break;
    }

    v19 = 0x74616E7265746C61;
    v20 = 0xEB00000000657669;
    switch(v2)
    {
      case 1:
        v19 = 0x6E61636972656D61;
        v20 = 0xE900000000000061;
        break;
      case 2:
        OUTLINED_FUNCTION_10_91();
        v20 = v24 + 18;
        break;
      case 3:
        v20 = 0xE500000000000000;
        v19 = 0x7365756C62;
        break;
      case 4:
        OUTLINED_FUNCTION_10_91();
        v20 = v22 + 13;
        break;
      case 5:
        OUTLINED_FUNCTION_10_91();
        v20 = v26 + 2;
        break;
      case 6:
        OUTLINED_FUNCTION_10_91();
        v20 = v28 + 11;
        break;
      case 7:
        v20 = 0xE700000000000000;
        v21 = 0x72746E756F63;
        goto LABEL_55;
      case 8:
        v20 = 0xE500000000000000;
        v25 = 1668178276;
        goto LABEL_67;
      case 9:
        OUTLINED_FUNCTION_10_91();
        v20 = v23 + 14;
        break;
      case 10:
        v19 = 0x6E6F727463656C65;
        v29 = 25449;
        goto LABEL_65;
      case 11:
        v20 = 0xE400000000000000;
        v19 = 1802268518;
        break;
      case 12:
        v20 = 0xE400000000000000;
        v19 = 1802401126;
        break;
      case 13:
        OUTLINED_FUNCTION_10_91();
        v20 = v27 + 15;
        break;
      case 14:
        v20 = 0xE700000000000000;
        v21 = 0x6164696C6F68;
LABEL_55:
        v19 = v21 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
        break;
      case 15:
        v20 = 0xE500000000000000;
        v25 = 1768189545;
LABEL_67:
        v19 = v25 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
        break;
      case 16:
        v19 = 0x656D757274736E69;
        v20 = 0xEC0000006C61746ELL;
        break;
      case 17:
        v20 = 0xE400000000000000;
        v19 = 2054840682;
        break;
      case 18:
        v19 = 0x696D61667364696BLL;
        v29 = 31084;
LABEL_65:
        v20 = v29 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
        break;
      case 19:
        v20 = 0xE500000000000000;
        v19 = 0x6E6974616CLL;
        break;
      case 20:
        v20 = 0xE600000000000000;
        v19 = 0x65676E756F6CLL;
        break;
      case 21:
        v20 = 0xE500000000000000;
        v19 = 0x6C6174656DLL;
        break;
      case 22:
        v20 = 0xE800000000000000;
        v19 = 0x736C61636973756DLL;
        break;
      case 23:
        v20 = 0xE300000000000000;
        v19 = 7368560;
        break;
      case 24:
        v20 = 0xE300000000000000;
        v19 = 6450802;
        break;
      case 25:
        v20 = 0xE600000000000000;
        v19 = 0x656167676572;
        break;
      case 26:
        v20 = 0xE400000000000000;
        v19 = 1801678706;
        break;
      case 27:
        v19 = 0xD000000000000010;
        v20 = 0x80000001C7597000;
        break;
      case 28:
        v20 = 0xE800000000000000;
        v19 = 0x6B6E75666C756F73;
        break;
      case 29:
        v19 = 0x617274646E756F73;
        v20 = 0xEA00000000006B63;
        break;
      case 30:
        v19 = 0x7263736567617473;
        v20 = 0xEB000000006E6565;
        break;
      case 31:
        v20 = 0xE500000000000000;
        v19 = 0x646C726F77;
        break;
      default:
        break;
    }

    if (v9 == v19 && v8 == v20)
    {
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();

LABEL_87:
      *a2 = v45;
      *(a2 + 8) = v44;
      *(a2 + 16) = v5;
      *(a2 + 24) = v43;
      *(a2 + 32) = v6;
      *(a2 + 40) = v42;
      *(a2 + 48) = v7;
      return result;
    }

    v48 = sub_1C7551DBC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();

    if (v48)
    {
      goto LABEL_87;
    }

    v4 += 7;
    ++v3;
  }

  if (qword_1EC2142B0 != -1)
  {
    swift_once();
  }

  v32 = sub_1C754FF1C();
  __swift_project_value_buffer(v32, qword_1EC21CB38);
  v33 = sub_1C754FEEC();
  v34 = sub_1C755119C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v49 = v36;
    *v35 = 136315138;
    if (v2 == 24)
    {
      v37 = 0xE300000000000000;
      v38 = 6432370;
    }

    else
    {
      v38 = MusicGenreIdentifier.rawValue.getter();
      v37 = v39;
    }

    v40 = sub_1C6F765A4(v38, v37, &v49);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_1C6F5C000, v33, v34, "genreFromGenreIdentifier wasn't able to resolve genreIdentifier = %s. Using fallback genre", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x1CCA5F8E0](v36, -1, -1);
    MEMORY[0x1CCA5F8E0](v35, -1, -1);
  }

  v50 = 16;
  return static MusicGenre.genreFromGenreIdentifier(_:)(&v50);
}

uint64_t sub_1C74F8848()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21CB70);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C7592830;
  type metadata accessor for MusicLocalizer();
  v3 = static MusicLocalizer.localizedString(forKey:)(0xD00000000000001CLL, 0x80000001C75B3750);
  v5 = v4;
  v6 = static MusicLocalizer.localizedString(forKey:)(0xD00000000000001FLL, 0x80000001C75B3770);
  *(v2 + 32) = 0;
  *(v2 + 40) = 0x74616E7265746C41;
  *(v2 + 48) = 0xEB00000000657669;
  *(v2 + 56) = v3;
  *(v2 + 64) = v5;
  *(v2 + 72) = v6;
  *(v2 + 80) = v7;
  v8 = OUTLINED_FUNCTION_1_156("PIFMusicGenreAliasesAlternative");
  v10 = v9;
  v11 = OUTLINED_FUNCTION_2_147("PIFMusicGenreAliasesAmericana");
  *(v2 + 88) = 1;
  *(v2 + 96) = 0x6E61636972656D41;
  *(v2 + 104) = 0xE900000000000061;
  *(v2 + 112) = v8;
  *(v2 + 120) = v10;
  *(v2 + 128) = v11;
  *(v2 + 136) = v12;
  v13 = OUTLINED_FUNCTION_1_156("PIFMusicGenreAliasesAmericana");
  v15 = v14;
  v16 = OUTLINED_FUNCTION_2_147("PIFMusicGenreAliasesBluegrass");
  *(v2 + 144) = 2;
  *(v2 + 152) = 0x7361726765756C42;
  *(v2 + 160) = 0xE900000000000073;
  *(v2 + 168) = v13;
  *(v2 + 176) = v15;
  *(v2 + 184) = v16;
  *(v2 + 192) = v17;
  v18 = OUTLINED_FUNCTION_8_101();
  static MusicLocalizer.localizedString(forKey:)(v18, v19);
  OUTLINED_FUNCTION_89_0();
  v20 = static MusicLocalizer.localizedString(forKey:)(0xD000000000000019, 0x80000001C75B3830);
  *(v2 + 200) = 3;
  *(v2 + 208) = 0x7365756C42;
  *(v2 + 216) = 0xE500000000000000;
  *(v2 + 224) = v0;
  *(v2 + 232) = v1;
  *(v2 + 240) = v20;
  *(v2 + 248) = v21;
  OUTLINED_FUNCTION_1_156("PIFMusicGenreAliasesBlues");
  OUTLINED_FUNCTION_89_0();
  v22 = OUTLINED_FUNCTION_2_147("PIFMusicGenreAliasesChristian");
  *(v2 + 256) = 4;
  *(v2 + 264) = 0x6169747369726843;
  *(v2 + 272) = 0xE90000000000006ELL;
  *(v2 + 280) = v0;
  *(v2 + 288) = v1;
  *(v2 + 296) = v22;
  *(v2 + 304) = v23;
  OUTLINED_FUNCTION_1_156("PIFMusicGenreAliasesChristian");
  OUTLINED_FUNCTION_89_0();
  v24 = OUTLINED_FUNCTION_2_147("PIFMusicGenreAliasesCinematic");
  *(v2 + 312) = 5;
  *(v2 + 320) = 0x6974616D656E6943;
  *(v2 + 328) = 0xE900000000000063;
  *(v2 + 336) = v0;
  *(v2 + 344) = v1;
  *(v2 + 352) = v24;
  *(v2 + 360) = v25;
  OUTLINED_FUNCTION_1_156("PIFMusicGenreAliasesCinematic");
  OUTLINED_FUNCTION_89_0();
  v26 = OUTLINED_FUNCTION_2_147("PIFMusicGenreAliasesClassical");
  *(v2 + 368) = 6;
  *(v2 + 376) = 0x6163697373616C43;
  *(v2 + 384) = 0xE90000000000006CLL;
  *(v2 + 392) = v0;
  *(v2 + 400) = v1;
  *(v2 + 408) = v26;
  *(v2 + 416) = v27;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000018, 0x80000001C75B3910);
  OUTLINED_FUNCTION_43_0();
  v28 = OUTLINED_FUNCTION_11_85("PIFMusicGenreNameCountry");
  *(v2 + 424) = 7;
  *(v2 + 432) = 0x7972746E756F43;
  *(v2 + 440) = 0xE700000000000000;
  *(v2 + 448) = v1;
  *(v2 + 456) = 5;
  *(v2 + 464) = v28;
  *(v2 + 472) = v29;
  v30 = OUTLINED_FUNCTION_8_101();
  static MusicLocalizer.localizedString(forKey:)(v30, v31);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_10_2();
  v33 = static MusicLocalizer.localizedString(forKey:)(0xD000000000000019, v32);
  *(v2 + 480) = 8;
  *(v2 + 488) = 0x65636E6144;
  *(v2 + 496) = 0xE500000000000000;
  *(v2 + 504) = v1;
  *(v2 + 512) = 5;
  *(v2 + 520) = v33;
  *(v2 + 528) = v34;
  OUTLINED_FUNCTION_1_156("PIFMusicGenreAliasesDance");
  OUTLINED_FUNCTION_43_0();
  v35 = OUTLINED_FUNCTION_2_147("PIFMusicGenreAliasesDowntempo");
  *(v2 + 536) = 9;
  *(v2 + 544) = 0x706D65746E776F44;
  *(v2 + 552) = 0xE90000000000006FLL;
  *(v2 + 560) = v1;
  *(v2 + 568) = 5;
  *(v2 + 576) = v35;
  *(v2 + 584) = v36;
  OUTLINED_FUNCTION_11_85("PIFMusicGenreAliasesDowntempo");
  OUTLINED_FUNCTION_43_0();
  v37 = static MusicLocalizer.localizedString(forKey:)(0xD00000000000001ELL, 0x80000001C75B39F0);
  *(v2 + 592) = 10;
  *(v2 + 600) = 0x6E6F727463656C45;
  *(v2 + 608) = 0xEA00000000006369;
  *(v2 + 616) = v1;
  *(v2 + 624) = 5;
  *(v2 + 632) = v37;
  *(v2 + 640) = v38;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000015, 0x80000001C75B3A10);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_2();
  v40 = static MusicLocalizer.localizedString(forKey:)(0xD000000000000018, v39);
  *(v2 + 648) = 11;
  *(v2 + 656) = 1802268486;
  *(v2 + 664) = 0xE400000000000000;
  *(v2 + 672) = 5;
  *(v2 + 680) = 0xE500000000000000;
  *(v2 + 688) = v40;
  *(v2 + 696) = v41;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000015, 0x80000001C75B3A50);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_2();
  v43 = static MusicLocalizer.localizedString(forKey:)(0xD000000000000018, v42);
  *(v2 + 704) = 12;
  *(v2 + 712) = 1802401094;
  *(v2 + 720) = 0xE400000000000000;
  *(v2 + 728) = 5;
  *(v2 + 736) = 0xE500000000000000;
  *(v2 + 744) = v43;
  *(v2 + 752) = v44;
  OUTLINED_FUNCTION_1_156("PIFMusicGenreAliasesFunk");
  OUTLINED_FUNCTION_59();
  v45 = OUTLINED_FUNCTION_2_147("PIFMusicGenreAliasesHiphoprap");
  *(v2 + 760) = 13;
  *(v2 + 768) = 0x6152706F48706948;
  *(v2 + 776) = 0xE900000000000070;
  *(v2 + 784) = 5;
  *(v2 + 792) = 0xE500000000000000;
  *(v2 + 800) = v45;
  *(v2 + 808) = v46;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000018, 0x80000001C75B3AD0);
  OUTLINED_FUNCTION_59();
  v47 = OUTLINED_FUNCTION_11_85("PIFMusicGenreNameHoliday");
  *(v2 + 816) = 14;
  *(v2 + 824) = 0x796164696C6F48;
  *(v2 + 832) = 0xE700000000000000;
  *(v2 + 840) = 5;
  *(v2 + 848) = 0xE500000000000000;
  *(v2 + 856) = v47;
  *(v2 + 864) = v48;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000016, 0x80000001C75B3B10);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_2();
  v50 = static MusicLocalizer.localizedString(forKey:)(0xD000000000000019, v49);
  *(v2 + 872) = 15;
  *(v2 + 880) = 0x6569646E49;
  *(v2 + 888) = 0xE500000000000000;
  *(v2 + 896) = 5;
  *(v2 + 904) = 0xE500000000000000;
  *(v2 + 912) = v50;
  *(v2 + 920) = v51;
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001DLL, 0x80000001C75B3B50);
  OUTLINED_FUNCTION_59();
  v52 = static MusicLocalizer.localizedString(forKey:)(0xD000000000000020, 0x80000001C75B3B70);
  *(v2 + 928) = 16;
  strcpy((v2 + 936), "Instrumental");
  *(v2 + 949) = 0;
  *(v2 + 950) = -5120;
  *(v2 + 952) = 5;
  *(v2 + 960) = 0xE500000000000000;
  *(v2 + 968) = v52;
  *(v2 + 976) = v53;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000015, 0x80000001C75B3BA0);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_2();
  v55 = static MusicLocalizer.localizedString(forKey:)(0xD000000000000018, v54);
  *(v2 + 984) = 17;
  *(v2 + 992) = 2054840650;
  *(v2 + 1000) = 0xE400000000000000;
  *(v2 + 1008) = 5;
  *(v2 + 1016) = 0xE500000000000000;
  *(v2 + 1024) = v55;
  *(v2 + 1032) = v56;
  OUTLINED_FUNCTION_11_85("PIFMusicGenreAliasesJazz");
  OUTLINED_FUNCTION_59();
  v57 = static MusicLocalizer.localizedString(forKey:)(0xD00000000000001ELL, 0x80000001C75B3C00);
  *(v2 + 1040) = 18;
  *(v2 + 1048) = 0x696D61467364694BLL;
  *(v2 + 1056) = 0xEA0000000000796CLL;
  *(v2 + 1064) = 5;
  *(v2 + 1072) = 0xE500000000000000;
  *(v2 + 1080) = v57;
  *(v2 + 1088) = v58;
  v59 = OUTLINED_FUNCTION_8_101();
  static MusicLocalizer.localizedString(forKey:)(v59, v60);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_2();
  v62 = static MusicLocalizer.localizedString(forKey:)(0xD000000000000019, v61);
  *(v2 + 1096) = 19;
  *(v2 + 1104) = 0x6E6974614CLL;
  *(v2 + 1112) = 0xE500000000000000;
  *(v2 + 1120) = 5;
  *(v2 + 1128) = 0xE500000000000000;
  *(v2 + 1136) = v62;
  *(v2 + 1144) = v63;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000017, 0x80000001C75B3C60);
  OUTLINED_FUNCTION_144();
  v64 = OUTLINED_FUNCTION_1_156("PIFMusicGenreNameLounge");
  *(v2 + 1152) = 20;
  *(v2 + 1160) = 0x65676E756F4CLL;
  *(v2 + 1168) = 0xE600000000000000;
  *(v2 + 1176) = 0xE500000000000000;
  *(v2 + 1184) = 0xE900000000000061;
  *(v2 + 1192) = v64;
  *(v2 + 1200) = v65;
  v66 = OUTLINED_FUNCTION_8_101();
  static MusicLocalizer.localizedString(forKey:)(v66, v67);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_10_2();
  v69 = static MusicLocalizer.localizedString(forKey:)(0xD000000000000019, v68);
  *(v2 + 1208) = 21;
  *(v2 + 1216) = 0x6C6174654DLL;
  *(v2 + 1224) = 0xE500000000000000;
  *(v2 + 1232) = 0xE500000000000000;
  *(v2 + 1240) = 0xE900000000000061;
  *(v2 + 1248) = v69;
  *(v2 + 1256) = v70;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000019, 0x80000001C75B3CE0);
  OUTLINED_FUNCTION_144();
  v71 = static MusicLocalizer.localizedString(forKey:)(0xD00000000000001CLL, 0x80000001C75B3D00);
  *(v2 + 1264) = 22;
  *(v2 + 1272) = 0x736C61636973754DLL;
  *(v2 + 1280) = 0xE800000000000000;
  *(v2 + 1288) = 0xE500000000000000;
  *(v2 + 1296) = 0xE900000000000061;
  *(v2 + 1304) = v71;
  *(v2 + 1312) = v72;
  v73 = static MusicLocalizer.localizedString(forKey:)(0xD000000000000014, 0x80000001C75B3D20);
  v75 = v74;
  OUTLINED_FUNCTION_10_2();
  v77 = static MusicLocalizer.localizedString(forKey:)(0xD000000000000017, v76);
  *(v2 + 1320) = 23;
  *(v2 + 1328) = 7368528;
  *(v2 + 1336) = 0xE300000000000000;
  *(v2 + 1344) = v73;
  *(v2 + 1352) = v75;
  *(v2 + 1360) = v77;
  *(v2 + 1368) = v78;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000014, 0x80000001C75B3D60);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_10_2();
  v80 = static MusicLocalizer.localizedString(forKey:)(0xD000000000000017, v79);
  *(v2 + 1376) = 24;
  *(v2 + 1384) = 4335186;
  *(v2 + 1392) = 0xE300000000000000;
  *(v2 + 1400) = 0xD000000000000014;
  *(v2 + 1408) = v73;
  *(v2 + 1416) = v80;
  *(v2 + 1424) = v81;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000017, 0x80000001C75B3DA0);
  OUTLINED_FUNCTION_59();
  v82 = OUTLINED_FUNCTION_1_156("PIFMusicGenreNameReggae");
  *(v2 + 1432) = 25;
  *(v2 + 1440) = 0x656167676552;
  *(v2 + 1448) = 0xE600000000000000;
  *(v2 + 1456) = 0xD000000000000017;
  *(v2 + 1464) = 0xD000000000000014;
  *(v2 + 1472) = v82;
  *(v2 + 1480) = v83;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000015, 0x80000001C75B3DE0);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_10_2();
  v85 = static MusicLocalizer.localizedString(forKey:)(0xD000000000000018, v84);
  *(v2 + 1488) = 26;
  *(v2 + 1496) = 1801678674;
  *(v2 + 1504) = 0xE400000000000000;
  *(v2 + 1512) = 0xE500000000000000;
  *(v2 + 1520) = 0xD000000000000017;
  *(v2 + 1528) = v85;
  *(v2 + 1536) = v86;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000021, 0x80000001C75B3E40);
  OUTLINED_FUNCTION_89_0();
  v87 = static MusicLocalizer.localizedString(forKey:)(0xD000000000000024, 0x80000001C75B3E70);
  *(v2 + 1544) = 27;
  *(v2 + 1552) = 0xD000000000000010;
  *(v2 + 1560) = 0x80000001C75B3E20;
  *(v2 + 1568) = 0xD000000000000018;
  *(v2 + 1576) = 0xE500000000000000;
  *(v2 + 1584) = v87;
  *(v2 + 1592) = v88;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000019, 0x80000001C75B3EA0);
  OUTLINED_FUNCTION_89_0();
  v89 = static MusicLocalizer.localizedString(forKey:)(0xD00000000000001CLL, 0x80000001C75B3EC0);
  *(v2 + 1600) = 28;
  *(v2 + 1608) = 0x6B6E75466C756F53;
  *(v2 + 1616) = 0xE800000000000000;
  *(v2 + 1624) = 0xD000000000000018;
  *(v2 + 1632) = 0xE500000000000000;
  *(v2 + 1640) = v89;
  *(v2 + 1648) = v90;
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001BLL, 0x80000001C75B3EE0);
  OUTLINED_FUNCTION_89_0();
  v91 = static MusicLocalizer.localizedString(forKey:)(0xD00000000000001ELL, 0x80000001C75B3F00);
  *(v2 + 1656) = 29;
  *(v2 + 1664) = 0x617274646E756F53;
  *(v2 + 1672) = 0xEA00000000006B63;
  *(v2 + 1680) = 0xD000000000000018;
  *(v2 + 1688) = 0xE500000000000000;
  *(v2 + 1696) = v91;
  *(v2 + 1704) = v92;
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001CLL, 0x80000001C75B3F20);
  OUTLINED_FUNCTION_89_0();
  v93 = static MusicLocalizer.localizedString(forKey:)(0xD00000000000001FLL, 0x80000001C75B3F40);
  *(v2 + 1712) = 30;
  *(v2 + 1720) = 0x7263536567617453;
  *(v2 + 1728) = 0xEB000000006E6565;
  *(v2 + 1736) = 0xD000000000000018;
  *(v2 + 1744) = 0xE500000000000000;
  *(v2 + 1752) = v93;
  *(v2 + 1760) = v94;
  v95 = static MusicLocalizer.localizedString(forKey:)(0xD000000000000016, 0x80000001C75B3F60);
  v97 = v96;
  OUTLINED_FUNCTION_10_2();
  result = static MusicLocalizer.localizedString(forKey:)(0xD000000000000019, v98);
  *(v2 + 1768) = 31;
  *(v2 + 1776) = 0x646C726F57;
  *(v2 + 1784) = 0xE500000000000000;
  *(v2 + 1792) = v95;
  *(v2 + 1800) = v97;
  *(v2 + 1808) = result;
  *(v2 + 1816) = v100;
  off_1EC21CB50 = v2;
  return result;
}

uint64_t static MusicGenre.allFlexGenres.getter()
{
  if (qword_1EC2142B8 != -1)
  {
    OUTLINED_FUNCTION_0_216();
  }

  return sub_1C75504FC();
}

unint64_t sub_1C74F94EC()
{
  result = qword_1EC21CB58;
  if (!qword_1EC21CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CB58);
  }

  return result;
}

unint64_t sub_1C74F9544()
{
  result = qword_1EC21CB60;
  if (!qword_1EC21CB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21CB68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CB60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicGenreIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE1)
  {
    if (a2 + 31 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 31) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 32;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v5 = v6 - 32;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MusicGenreIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE0)
  {
    v6 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
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
          *result = a2 + 31;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C74F970C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1C74F974C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t static MusicLocalizer.localizedStringsList(forKey:)(uint64_t a1, unint64_t a2)
{
  v2 = static MusicLocalizer.localizedString(forKey:)(a1, a2);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 && (sub_1C7161490(), sub_1C7099334(), v5 = sub_1C75505BC(), , (v6 = *(v5 + 16)) != 0))
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v7 = v19;
    v8 = (v5 + 56);
    do
    {
      v9 = *(v8 - 3);
      v10 = *(v8 - 2);
      v11 = *(v8 - 1);
      v12 = *v8;
      sub_1C75504FC();
      v13 = MEMORY[0x1CCA5CC40](v9, v10, v11, v12);
      v15 = v14;

      v16 = *(v19 + 16);
      if (v16 >= *(v19 + 24) >> 1)
      {
        sub_1C6F7ED9C();
      }

      *(v19 + 16) = v16 + 1;
      v17 = v19 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v15;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

uint64_t static MusicLocalizer.localizedString(forKey:)(uint64_t a1, unint64_t a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_1C755065C();
  v7 = sub_1C755065C();
  v8 = sub_1C755065C();
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  v10 = sub_1C755068C();
  v24 = sub_1C75506FC();
  v25 = v11;
  sub_1C7161490();
  sub_1C7099334();
  LOBYTE(v5) = sub_1C75505DC();

  if (v5)
  {
    sub_1C6FB5E8C();
    OUTLINED_FUNCTION_0_217();
    sub_1C75504FC();

    OUTLINED_FUNCTION_0_217();

    sub_1C75504FC();

    OUTLINED_FUNCTION_0_217();

    sub_1C75504FC();

    OUTLINED_FUNCTION_0_217();

    sub_1C75504FC();

    OUTLINED_FUNCTION_0_217();

    sub_1C75504FC();

    v12 = OUTLINED_FUNCTION_0_217();
    v14 = v13;

    sub_1C75504FC();

    v24 = v12;
    v25 = v14;
    v10 = OUTLINED_FUNCTION_0_217();
    v16 = v15;
    swift_bridgeObjectRelease_n();
    if (qword_1EC2142C0 != -1)
    {
      swift_once();
    }

    v17 = sub_1C754FF1C();
    __swift_project_value_buffer(v17, qword_1EC21CB78);
    sub_1C75504FC();
    v18 = sub_1C754FEEC();
    v19 = sub_1C755119C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v24 = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_1C6F765A4(a1, a2, &v24);
      *(v20 + 12) = 2080;
      sub_1C75504FC();
      v22 = sub_1C6F765A4(v10, v16, &v24);

      *(v20 + 14) = v22;
      _os_log_impl(&dword_1C6F5C000, v18, v19, "No localized music string found for key '%s'. Using fallback value '%s'", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v21, -1, -1);
      MEMORY[0x1CCA5F8E0](v20, -1, -1);
    }
  }

  return v10;
}

uint64_t sub_1C74F9E18()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21CB78);
  __swift_project_value_buffer(v0, qword_1EC21CB78);
  return sub_1C754FEFC();
}

uint64_t sub_1C74F9F40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218300);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C7592A90;
  type metadata accessor for MusicLocalizer();
  OUTLINED_FUNCTION_5_56();
  v327 = v1 - 1;
  v3 = static MusicLocalizer.localizedString(forKey:)(v1 - 1, v2 | 0x8000000000000000);
  v5 = v4;
  v6 = MEMORY[0x1E69E6168];
  OUTLINED_FUNCTION_4_117();
  sub_1C75504DC();
  OUTLINED_FUNCTION_16_78();
  v8 = v7 - 5;
  *(v0 + 48) = v7 - 5;
  *(v0 + 56) = 0x80000001C75B40D0;
  *(v0 + 32) = v3;
  *(v0 + 40) = v5;
  *(v0 + 64) = v9;
  *(v0 + 72) = &unk_1F46A0AB0;
  v10 = static MusicLocalizer.localizedString(forKey:)(v7 + 1, 0x80000001C75B40F0);
  v12 = v11;
  OUTLINED_FUNCTION_4_117();
  v13 = sub_1C75504DC();
  *(v0 + 96) = v8;
  *(v0 + 104) = 0x80000001C75B40D0;
  *(v0 + 80) = v10;
  *(v0 + 88) = v12;
  *(v0 + 112) = v13;
  *(v0 + 120) = &unk_1F46A0B40;
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001DLL, 0x80000001C75B4110);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_11_86();
  OUTLINED_FUNCTION_4_117();
  v14 = sub_1C75504DC();
  *(v0 + 144) = 0xD000000000000010;
  *(v0 + 152) = v10;
  *(v0 + 128) = v12;
  *(v0 + 136) = v8;
  *(v0 + 160) = v14;
  *(v0 + 168) = &unk_1F46A0BD0;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermDiving");
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_4_117();
  v15 = sub_1C75504DC();
  strcpy((v0 + 192), "Meaning_Diving");
  *(v0 + 207) = -18;
  *(v0 + 176) = v12;
  *(v0 + 184) = v8;
  *(v0 + 208) = v15;
  *(v0 + 216) = &unk_1F46A0C60;
  OUTLINED_FUNCTION_27_56("PIFMusicEmbeddingTermDiving");
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_4_117();
  v16 = sub_1C75504DC();
  *(v0 + 240) = 0x6E7469465F494F50;
  *(v0 + 248) = 0xEB00000000737365;
  *(v0 + 224) = v12;
  *(v0 + 232) = v8;
  *(v0 + 256) = v16;
  *(v0 + 264) = &unk_1F46A0CF0;
  OUTLINED_FUNCTION_27_56("PIFMusicEmbeddingTermFitness");
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_4_117();
  v17 = sub_1C75504DC();
  *(v0 + 288) = 0x6E7469465F494F50;
  *(v0 + 296) = 0xEB00000000737365;
  *(v0 + 272) = v12;
  *(v0 + 280) = v8;
  *(v0 + 304) = v17;
  *(v0 + 312) = &unk_1F46A0D80;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000020, 0x80000001C75B41B0);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_4_117();
  v18 = sub_1C75504DC();
  *(v0 + 336) = 0x6E7469465F494F50;
  *(v0 + 344) = 0xEB00000000737365;
  *(v0 + 320) = v12;
  *(v0 + 328) = v8;
  *(v0 + 352) = v18;
  *(v0 + 360) = &unk_1F46A0E10;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermHiking");
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_4_117();
  v19 = sub_1C75504DC();
  strcpy((v0 + 384), "Meaning_Hiking");
  *(v0 + 399) = -18;
  *(v0 + 368) = v12;
  *(v0 + 376) = v8;
  *(v0 + 400) = v19;
  *(v0 + 408) = &unk_1F46A0EA0;
  OUTLINED_FUNCTION_5_56();
  v21 = v20 - 2;
  v326 = v20 - 2;
  static MusicLocalizer.localizedString(forKey:)(v20 - 2, v22 | 0x8000000000000000);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_231();
  v23 = sub_1C75504DC();
  *(v0 + 447) = -18;
  *(v0 + 416) = v8;
  strcpy((v0 + 424), "POI_FitnMeaning_Hiking");
  *(v0 + 448) = v23;
  *(v0 + 456) = &unk_1F46A0F30;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001DLL, v24);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_11_86();
  v25 = sub_1C75504DC();
  *(v0 + 480) = 0xD000000000000010;
  *(v0 + 488) = 0xEE00676E696B6948;
  *(v0 + 464) = v8;
  *(v0 + 472) = 0x6E7469465F494F50;
  *(v0 + 496) = v25;
  *(v0 + 504) = &unk_1F46A0FC0;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(v21, v26);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_11_86();
  OUTLINED_FUNCTION_1_157();
  sub_1C75504DC();
  OUTLINED_FUNCTION_16_78();
  v324 = v27 - 9;
  *(v0 + 528) = v27 - 9;
  *(v0 + 536) = 0xEE00676E696B6948;
  *(v0 + 512) = v8;
  *(v0 + 520) = 0x6E7469465F494F50;
  *(v0 + 544) = v28;
  *(v0 + 552) = &unk_1F46A1050;
  static MusicLocalizer.localizedString(forKey:)(v27 + 5, 0x80000001C75B42A0);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_11_86();
  OUTLINED_FUNCTION_1_157();
  sub_1C75504DC();
  OUTLINED_FUNCTION_16_78();
  *(v0 + 576) = v29 - 8;
  v30 = v29 - 8;
  v325 = v29 - 8;
  *(v0 + 584) = 0xEE00676E696B6948;
  *(v0 + 560) = v8;
  *(v0 + 568) = 0x6E7469465F494F50;
  *(v0 + 592) = v31;
  *(v0 + 600) = &unk_1F46A10E0;
  static MusicLocalizer.localizedString(forKey:)(v29 + 5, 0x80000001C75B42F0);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_11_86();
  OUTLINED_FUNCTION_1_157();
  v32 = sub_1C75504DC();
  *(v0 + 624) = v30;
  *(v0 + 632) = 0xEE00676E696B6948;
  *(v0 + 608) = v8;
  *(v0 + 616) = 0x6E7469465F494F50;
  *(v0 + 640) = v32;
  *(v0 + 648) = &unk_1F46A1170;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001DLL, v33);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_11_86();
  v34 = sub_1C75504DC();
  *(v0 + 672) = 0xD000000000000010;
  *(v0 + 680) = 0xEE00676E696B6948;
  *(v0 + 656) = v8;
  *(v0 + 664) = 0x6E7469465F494F50;
  *(v0 + 688) = v34;
  *(v0 + 696) = &unk_1F46A1200;
  OUTLINED_FUNCTION_9_102();
  OUTLINED_FUNCTION_25_49(v35);
  OUTLINED_FUNCTION_10_90();
  v36 = sub_1C75504DC();
  *(v0 + 728) = 0xEF676E6964646557;
  *(v0 + 704) = v8;
  qmemcpy((v0 + 712), "POI_FitnMeaning_", 16);
  *(v0 + 736) = v36;
  *(v0 + 744) = &unk_1F46A1290;
  static MusicLocalizer.localizedString(forKey:)(0xEE00676E696B6949, 0x80000001C75B4380);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_22_72();
  OUTLINED_FUNCTION_28_47();
  *(v0 + 776) = v37;
  *(v0 + 752) = v8;
  qmemcpy((v0 + 760), "POI_FitnAtlanta_", 16);
  *(v0 + 784) = v38;
  *(v0 + 792) = &unk_1F46A1320;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermAustin");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_22_72();
  OUTLINED_FUNCTION_20_67();
  *(v0 + 824) = v39 - 2;
  *(v0 + 800) = v8;
  qmemcpy((v0 + 808), "POI_FitnAustin_U", 16);
  *(v0 + 832) = v40;
  *(v0 + 840) = &unk_1F46A13B0;
  OUTLINED_FUNCTION_15_89("PIFMusicEmbeddingTermChicago");
  OUTLINED_FUNCTION_10_90();
  v41 = OUTLINED_FUNCTION_22_72();
  *(v0 + 875) = 0;
  *(v0 + 876) = -369098752;
  *(v0 + 848) = v8;
  strcpy((v0 + 856), "POI_FitnChicago_US");
  *(v0 + 880) = v41;
  *(v0 + 888) = &unk_1F46A1440;
  OUTLINED_FUNCTION_15_89("PIFMusicEmbeddingTermDetroit");
  OUTLINED_FUNCTION_10_90();
  v42 = sub_1C75504DC();
  *(v0 + 923) = 0;
  *(v0 + 924) = -369098752;
  *(v0 + 896) = v8;
  strcpy((v0 + 904), "POI_FitnDetroit_US");
  *(v0 + 928) = v42;
  *(v0 + 936) = &unk_1F46A14D0;
  v43 = static MusicLocalizer.localizedString(forKey:)(0xD00000000000001FLL, 0x80000001C75B4400);
  v45 = v44;
  OUTLINED_FUNCTION_0_218();
  sub_1C75504DC();
  *(v0 + 960) = 0x65676E4120736F4CLL;
  OUTLINED_FUNCTION_31_51();
  *(v0 + 968) = v46;
  *(v0 + 944) = v43;
  *(v0 + 952) = v45;
  *(v0 + 976) = v47;
  *(v0 + 984) = &unk_1F46A1560;
  OUTLINED_FUNCTION_15_89("PIFMusicEmbeddingTermMemphis");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v48 = sub_1C75504DC();
  *(v0 + 1008) = 0x5F736968706D654DLL;
  *(v0 + 1016) = 0xEA00000000005355;
  *(v0 + 992) = v45;
  *(v0 + 1000) = v43;
  *(v0 + 1024) = v48;
  *(v0 + 1032) = &unk_1F46A15F0;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(v327, v49);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v50 = sub_1C75504DC();
  *(v0 + 1056) = 0x53555F696D61694DLL;
  *(v0 + 1064) = 0xE800000000000000;
  *(v0 + 1040) = v45;
  *(v0 + 1048) = v43;
  *(v0 + 1072) = v50;
  *(v0 + 1080) = &unk_1F46A1680;
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001ELL, 0x80000001C75B4460);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v51 = sub_1C75504DC();
  strcpy((v0 + 1104), "Nashville_US");
  *(v0 + 1117) = 0;
  *(v0 + 1118) = -5120;
  *(v0 + 1088) = v45;
  *(v0 + 1096) = v43;
  *(v0 + 1120) = v51;
  *(v0 + 1128) = &unk_1F46A1710;
  v52 = OUTLINED_FUNCTION_3_133();
  static MusicLocalizer.localizedString(forKey:)(v52, v53);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  sub_1C75504DC();
  *(v0 + 1152) = 0x656C724F2077654ELL;
  OUTLINED_FUNCTION_31_51();
  *(v0 + 1160) = v54 + 2293;
  *(v0 + 1136) = v45;
  *(v0 + 1144) = v43;
  *(v0 + 1168) = v55;
  *(v0 + 1176) = &unk_1F46A17A0;
  OUTLINED_FUNCTION_15_89("PIFMusicEmbeddingTermNewYork");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v56 = sub_1C75504DC();
  *(v0 + 1200) = 0x6B726F592077654ELL;
  *(v0 + 1208) = 0xEB0000000053555FLL;
  *(v0 + 1184) = v45;
  *(v0 + 1192) = v43;
  *(v0 + 1216) = v56;
  *(v0 + 1224) = &unk_1F46A1830;
  OUTLINED_FUNCTION_15_89("PIFMusicEmbeddingTermOakland");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  sub_1C75504DC();
  *(v0 + 1248) = 0x5F646E616C6B614FLL;
  OUTLINED_FUNCTION_28_47();
  *(v0 + 1256) = v57;
  *(v0 + 1232) = v45;
  *(v0 + 1240) = v43;
  *(v0 + 1264) = v58;
  *(v0 + 1272) = &unk_1F46A18C0;
  OUTLINED_FUNCTION_24_54("PIFMusicEmbeddingTermPhiladelphia");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v59 = sub_1C75504DC();
  *(v0 + 1296) = 0x6C6564616C696850;
  *(v0 + 1304) = 0xEF53555F61696870;
  *(v0 + 1280) = v45;
  *(v0 + 1288) = v43;
  *(v0 + 1312) = v59;
  *(v0 + 1320) = &unk_1F46A1950;
  OUTLINED_FUNCTION_24_54("PIFMusicEmbeddingTermSanFrancisco");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_11_86();
  OUTLINED_FUNCTION_0_218();
  v60 = sub_1C75504DC();
  *(v0 + 1344) = 0xD000000000000010;
  *(v0 + 1352) = 0xD00000000000001FLL;
  *(v0 + 1328) = v45;
  *(v0 + 1336) = v43;
  *(v0 + 1360) = v60;
  *(v0 + 1368) = &unk_1F46A19E0;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001FLL, v61);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v62 = sub_1C75504DC();
  *(v0 + 1392) = 0xD000000000000010;
  *(v0 + 1400) = 0xD00000000000001FLL;
  *(v0 + 1376) = v45;
  *(v0 + 1384) = v43;
  *(v0 + 1408) = v62;
  *(v0 + 1416) = &unk_1F46A1A70;
  OUTLINED_FUNCTION_9_102();
  OUTLINED_FUNCTION_25_49(v63);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  sub_1C75504DC();
  *(v0 + 1440) = 0x5F656C7474616553;
  OUTLINED_FUNCTION_28_47();
  *(v0 + 1448) = v64;
  *(v0 + 1424) = v45;
  *(v0 + 1432) = v43;
  *(v0 + 1456) = v65;
  *(v0 + 1464) = &unk_1F46A1B00;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000025, 0x80000001C75B45A0);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_11_86();
  OUTLINED_FUNCTION_0_218();
  v66 = sub_1C75504DC();
  *(v0 + 1488) = 0xD000000000000010;
  *(v0 + 1496) = 0xD00000000000001FLL;
  *(v0 + 1472) = v45;
  *(v0 + 1480) = v43;
  *(v0 + 1504) = v66;
  *(v0 + 1512) = &unk_1F46A1B90;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermBerlin");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v67 = sub_1C75504DC();
  *(v0 + 1536) = 0x445F6E696C726542;
  *(v0 + 1544) = 0xE900000000000045;
  *(v0 + 1520) = v45;
  *(v0 + 1528) = v43;
  *(v0 + 1552) = v67;
  *(v0 + 1560) = &unk_1F46A1C20;
  OUTLINED_FUNCTION_5_113();
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000028, v68 | 0x8000000000000000);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  sub_1C75504DC();
  *(v0 + 1584) = 0x5F6174616B6C6F4BLL;
  OUTLINED_FUNCTION_28_47();
  *(v0 + 1592) = v69 - 1292;
  *(v0 + 1568) = v45;
  *(v0 + 1576) = v43;
  *(v0 + 1600) = v70;
  *(v0 + 1608) = &unk_1F46A1CB0;
  OUTLINED_FUNCTION_23_58("PIFMusicEmbeddingTermHamamatsu");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v71 = sub_1C75504DC();
  strcpy((v0 + 1632), "Hamamatsu_JP");
  *(v0 + 1645) = 0;
  *(v0 + 1646) = -5120;
  *(v0 + 1616) = v45;
  *(v0 + 1624) = v43;
  *(v0 + 1648) = v71;
  *(v0 + 1656) = &unk_1F46A1D40;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermHavana");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v72 = sub_1C75504DC();
  *(v0 + 1680) = 0x435F616E61766148;
  *(v0 + 1688) = 0xE900000000000055;
  *(v0 + 1664) = v45;
  *(v0 + 1672) = v43;
  *(v0 + 1696) = v72;
  *(v0 + 1704) = &unk_1F46A1DD0;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(v327, v73);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v74 = sub_1C75504DC();
  *(v0 + 1728) = 0x50535F617A696249;
  *(v0 + 1736) = 0xE800000000000000;
  *(v0 + 1712) = v45;
  *(v0 + 1720) = v43;
  *(v0 + 1744) = v74;
  *(v0 + 1752) = &unk_1F46A1E60;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001DLL, v75);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v76 = sub_1C75504DC();
  *(v0 + 1776) = 0x6E6F7473676E694BLL;
  *(v0 + 1784) = 0xEB000000004D4A5FLL;
  *(v0 + 1760) = v45;
  *(v0 + 1768) = v43;
  *(v0 + 1792) = v76;
  *(v0 + 1800) = &unk_1F46A1EF0;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermLondon");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v77 = sub_1C75504DC();
  *(v0 + 1824) = 0x555F6E6F646E6F4CLL;
  *(v0 + 1832) = 0xE90000000000004BLL;
  *(v0 + 1808) = v45;
  *(v0 + 1816) = v43;
  *(v0 + 1840) = v77;
  *(v0 + 1848) = &unk_1F46A1F80;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001FLL, v78);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v79 = sub_1C75504DC();
  strcpy((v0 + 1872), "Manchester_UK");
  *(v0 + 1886) = -4864;
  *(v0 + 1856) = v45;
  *(v0 + 1864) = v43;
  *(v0 + 1888) = v79;
  *(v0 + 1896) = &unk_1F46A2010;
  v80 = OUTLINED_FUNCTION_3_133();
  static MusicLocalizer.localizedString(forKey:)(v80, v81);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v82 = sub_1C75504DC();
  *(v0 + 1920) = 0x6C616572746E6F4DLL;
  *(v0 + 1928) = 0xEB0000000041435FLL;
  *(v0 + 1904) = v45;
  *(v0 + 1912) = v43;
  *(v0 + 1936) = v82;
  *(v0 + 1944) = &unk_1F46A20A0;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(v327, v83);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v84 = sub_1C75504DC();
  *(v0 + 1968) = 0x52465F7369726150;
  *(v0 + 1976) = 0xE800000000000000;
  *(v0 + 1952) = v45;
  *(v0 + 1960) = v43;
  *(v0 + 1984) = v84;
  *(v0 + 1992) = &unk_1F46A2130;
  OUTLINED_FUNCTION_5_113();
  static MusicLocalizer.localizedString(forKey:)(v327 + 6, v85 | 0x8000000000000000);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_11_86();
  OUTLINED_FUNCTION_0_218();
  v86 = sub_1C75504DC();
  *(v0 + 2016) = v327 - 10;
  *(v0 + 2024) = 0xD00000000000001DLL;
  *(v0 + 2000) = v45;
  *(v0 + 2008) = v43;
  *(v0 + 2032) = v86;
  *(v0 + 2040) = &unk_1F46A21C0;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermSydney");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  sub_1C75504DC();
  *(v0 + 2064) = 0x415F79656E647953;
  OUTLINED_FUNCTION_20_67();
  *(v0 + 2072) = v87;
  *(v0 + 2048) = v45;
  *(v0 + 2056) = v43;
  *(v0 + 2080) = v88;
  *(v0 + 2088) = &unk_1F46A2250;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001DLL, v89);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v90 = sub_1C75504DC();
  *(v0 + 2112) = 0x756150206FA3C353;
  *(v0 + 2120) = 0xAA00000000006F6CLL;
  *(v0 + 2096) = v45;
  *(v0 + 2104) = v43;
  *(v0 + 2128) = v90;
  *(v0 + 2136) = &unk_1F46A22E0;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(v327, v91);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v92 = sub_1C75504DC();
  *(v0 + 2160) = 0x504A5F6F796B6F54;
  *(v0 + 2168) = 0xE800000000000000;
  *(v0 + 2144) = v45;
  *(v0 + 2152) = v43;
  *(v0 + 2176) = v92;
  *(v0 + 2184) = &unk_1F46A2370;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermVienna");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  sub_1C75504DC();
  *(v0 + 2208) = 0x415F616E6E656956;
  OUTLINED_FUNCTION_20_67();
  *(v0 + 2216) = v93 - 1;
  *(v0 + 2192) = v45;
  *(v0 + 2200) = v43;
  *(v0 + 2224) = v94;
  *(v0 + 2232) = &unk_1F46A2400;
  OUTLINED_FUNCTION_23_58("PIFMusicEmbeddingTermAustralia");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v95 = sub_1C75504DC();
  *(v0 + 2256) = 21825;
  *(v0 + 2264) = 0xE200000000000000;
  *(v0 + 2240) = v45;
  *(v0 + 2248) = v43;
  *(v0 + 2272) = v95;
  *(v0 + 2280) = &unk_1F46A2490;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermBrazil");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v96 = sub_1C75504DC();
  *(v0 + 2304) = 21058;
  *(v0 + 2312) = 0xE200000000000000;
  *(v0 + 2288) = v45;
  *(v0 + 2296) = v43;
  *(v0 + 2320) = v96;
  *(v0 + 2328) = &unk_1F46A2520;
  v97 = OUTLINED_FUNCTION_3_133();
  static MusicLocalizer.localizedString(forKey:)(v97, v98);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v99 = sub_1C75504DC();
  *(v0 + 2352) = 20035;
  *(v0 + 2360) = 0xE200000000000000;
  *(v0 + 2336) = v45;
  *(v0 + 2344) = v43;
  *(v0 + 2368) = v99;
  *(v0 + 2376) = &unk_1F46A25B0;
  v100 = OUTLINED_FUNCTION_3_133();
  static MusicLocalizer.localizedString(forKey:)(v100, v101);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v102 = sub_1C75504DC();
  *(v0 + 2400) = 18245;
  *(v0 + 2408) = 0xE200000000000000;
  *(v0 + 2384) = v45;
  *(v0 + 2392) = v43;
  *(v0 + 2416) = v102;
  *(v0 + 2424) = &unk_1F46A2640;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermFrance");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v103 = sub_1C75504DC();
  *(v0 + 2448) = 21062;
  *(v0 + 2456) = 0xE200000000000000;
  *(v0 + 2432) = v45;
  *(v0 + 2440) = v43;
  *(v0 + 2464) = v103;
  *(v0 + 2472) = &unk_1F46A26D0;
  OUTLINED_FUNCTION_5_56();
  static MusicLocalizer.localizedString(forKey:)(v104 + 1, v105 | 0x8000000000000000);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v106 = sub_1C75504DC();
  *(v0 + 2496) = 17732;
  *(v0 + 2504) = 0xE200000000000000;
  *(v0 + 2480) = v45;
  *(v0 + 2488) = v43;
  *(v0 + 2512) = v106;
  *(v0 + 2520) = &unk_1F46A2760;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001DLL, v107);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v108 = sub_1C75504DC();
  *(v0 + 2544) = 19272;
  *(v0 + 2552) = 0xE200000000000000;
  *(v0 + 2528) = v45;
  *(v0 + 2536) = v43;
  *(v0 + 2560) = v108;
  *(v0 + 2568) = &unk_1F46A27F0;
  v109 = OUTLINED_FUNCTION_3_133();
  static MusicLocalizer.localizedString(forKey:)(v109, v110);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v111 = sub_1C75504DC();
  *(v0 + 2592) = 20041;
  *(v0 + 2600) = 0xE200000000000000;
  *(v0 + 2576) = v45;
  *(v0 + 2584) = v43;
  *(v0 + 2608) = v111;
  *(v0 + 2616) = &unk_1F46A2880;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermIsrael");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v112 = sub_1C75504DC();
  *(v0 + 2640) = 19529;
  *(v0 + 2648) = 0xE200000000000000;
  *(v0 + 2624) = v45;
  *(v0 + 2632) = v43;
  *(v0 + 2656) = v112;
  *(v0 + 2664) = &unk_1F46A2910;
  v113 = OUTLINED_FUNCTION_3_133();
  static MusicLocalizer.localizedString(forKey:)(v113, v114);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v115 = sub_1C75504DC();
  *(v0 + 2688) = 21577;
  *(v0 + 2696) = 0xE200000000000000;
  *(v0 + 2672) = v45;
  *(v0 + 2680) = v43;
  *(v0 + 2704) = v115;
  *(v0 + 2712) = &unk_1F46A29A0;
  v116 = OUTLINED_FUNCTION_3_133();
  static MusicLocalizer.localizedString(forKey:)(v116, v117);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v118 = sub_1C75504DC();
  *(v0 + 2736) = 20554;
  *(v0 + 2744) = 0xE200000000000000;
  *(v0 + 2720) = v45;
  *(v0 + 2728) = v43;
  *(v0 + 2752) = v118;
  *(v0 + 2760) = &unk_1F46A2A30;
  v119 = OUTLINED_FUNCTION_3_133();
  static MusicLocalizer.localizedString(forKey:)(v119, v120);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v121 = sub_1C75504DC();
  *(v0 + 2784) = 21067;
  *(v0 + 2792) = 0xE200000000000000;
  *(v0 + 2768) = v45;
  *(v0 + 2776) = v43;
  *(v0 + 2800) = v121;
  *(v0 + 2808) = &unk_1F46A2AC0;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001DLL, v122);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v123 = sub_1C75504DC();
  *(v0 + 2832) = 22861;
  *(v0 + 2840) = 0xE200000000000000;
  *(v0 + 2816) = v45;
  *(v0 + 2824) = v43;
  *(v0 + 2848) = v123;
  *(v0 + 2856) = &unk_1F46A2B50;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermMexico");
  OUTLINED_FUNCTION_10_90();
  v124 = sub_1C75504DC();
  *(v0 + 2880) = 22605;
  *(v0 + 2888) = 0xE200000000000000;
  *(v0 + 2864) = v45;
  *(v0 + 2872) = v43;
  *(v0 + 2896) = v124;
  *(v0 + 2904) = &unk_1F46A2BE0;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermRussia");
  OUTLINED_FUNCTION_10_90();
  v125 = sub_1C75504DC();
  *(v0 + 2928) = 21842;
  *(v0 + 2936) = 0xE200000000000000;
  *(v0 + 2912) = v45;
  *(v0 + 2920) = v43;
  *(v0 + 2944) = v125;
  *(v0 + 2952) = &unk_1F46A2C70;
  OUTLINED_FUNCTION_26_54("PIFMusicEmbeddingTermSaudiArabia");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_1_157();
  v126 = sub_1C75504DC();
  *(v0 + 2976) = 4281163;
  *(v0 + 2984) = 0xE300000000000000;
  *(v0 + 2960) = v45;
  *(v0 + 2968) = v43;
  *(v0 + 2992) = v126;
  *(v0 + 3000) = &unk_1F46A2D00;
  static MusicLocalizer.localizedString(forKey:)(v6 + 3, 0x80000001C75B4A20);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_1_157();
  v127 = sub_1C75504DC();
  *(v0 + 3024) = 18259;
  *(v0 + 3032) = 0xE200000000000000;
  *(v0 + 3008) = v45;
  *(v0 + 3016) = v43;
  *(v0 + 3040) = v127;
  *(v0 + 3048) = &unk_1F46A2D90;
  static MusicLocalizer.localizedString(forKey:)(v6 + 5, 0x80000001C75B4A40);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_1_157();
  v128 = sub_1C75504DC();
  *(v0 + 3072) = 16723;
  *(v0 + 3080) = 0xE200000000000000;
  *(v0 + 3056) = v45;
  *(v0 + 3064) = v43;
  *(v0 + 3088) = v128;
  *(v0 + 3096) = &unk_1F46A2E20;
  v129 = OUTLINED_FUNCTION_3_133();
  static MusicLocalizer.localizedString(forKey:)(v129, v130);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_1_157();
  v131 = sub_1C75504DC();
  *(v0 + 3120) = 21317;
  *(v0 + 3128) = 0xE200000000000000;
  *(v0 + 3104) = v45;
  *(v0 + 3112) = v43;
  *(v0 + 3136) = v131;
  *(v0 + 3144) = &unk_1F46A2EB0;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermTaiwan");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_1_157();
  v132 = sub_1C75504DC();
  *(v0 + 3168) = 22356;
  *(v0 + 3176) = 0xE200000000000000;
  *(v0 + 3152) = v45;
  *(v0 + 3160) = v43;
  *(v0 + 3184) = v132;
  *(v0 + 3192) = &unk_1F46A2F40;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001DLL, v133);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_1_157();
  v134 = sub_1C75504DC();
  *(v0 + 3216) = 18516;
  *(v0 + 3224) = 0xE200000000000000;
  *(v0 + 3200) = v45;
  *(v0 + 3208) = v43;
  *(v0 + 3232) = v134;
  *(v0 + 3240) = &unk_1F46A2FD0;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermTurkey");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_1_157();
  v135 = sub_1C75504DC();
  *(v0 + 3264) = 21844;
  *(v0 + 3272) = 0xE200000000000000;
  *(v0 + 3248) = v45;
  *(v0 + 3256) = v43;
  *(v0 + 3280) = v135;
  *(v0 + 3288) = &unk_1F46A3060;
  OUTLINED_FUNCTION_9_102();
  static MusicLocalizer.localizedString(forKey:)(v327 + 12, v136 | 0x8000000000000000);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_1_157();
  v137 = sub_1C75504DC();
  *(v0 + 3312) = 17729;
  *(v0 + 3320) = 0xE200000000000000;
  *(v0 + 3296) = v45;
  *(v0 + 3304) = v43;
  *(v0 + 3328) = v137;
  *(v0 + 3336) = &unk_1F46A30F0;
  static MusicLocalizer.localizedString(forKey:)(v327 + 7, 0x80000001C75B4B20);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_1_157();
  v138 = sub_1C75504DC();
  *(v0 + 3360) = 19285;
  *(v0 + 3368) = 0xE200000000000000;
  *(v0 + 3344) = v45;
  *(v0 + 3352) = v43;
  *(v0 + 3376) = v138;
  *(v0 + 3384) = &unk_1F46A3180;
  OUTLINED_FUNCTION_15_89("PIFMusicEmbeddingTermEngland");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_1_157();
  v139 = sub_1C75504DC();
  *(v0 + 3408) = 19285;
  *(v0 + 3416) = 0xE200000000000000;
  *(v0 + 3392) = v45;
  *(v0 + 3400) = v43;
  *(v0 + 3424) = v139;
  *(v0 + 3432) = &unk_1F46A3210;
  OUTLINED_FUNCTION_24_54("PIFMusicEmbeddingTermUnitedStates");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_1_157();
  v140 = sub_1C75504DC();
  *(v0 + 3456) = 21333;
  *(v0 + 3464) = 0xE200000000000000;
  *(v0 + 3440) = v45;
  *(v0 + 3448) = v43;
  *(v0 + 3472) = v140;
  *(v0 + 3480) = &unk_1F46A32A0;
  OUTLINED_FUNCTION_15_89("PIFMusicEmbeddingTermGeneric");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_1_157();
  v141 = sub_1C75504DC();
  *(v0 + 3504) = 0x636972656E6547;
  *(v0 + 3512) = 0xE700000000000000;
  *(v0 + 3488) = v45;
  *(v0 + 3496) = v43;
  *(v0 + 3520) = v141;
  *(v0 + 3528) = &unk_1F46A3330;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermIconic");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_1_157();
  v142 = sub_1C75504DC();
  *(v0 + 3552) = 0x63696E6F6349;
  *(v0 + 3560) = 0xE600000000000000;
  *(v0 + 3536) = v45;
  *(v0 + 3544) = v43;
  *(v0 + 3568) = v142;
  *(v0 + 3576) = &unk_1F46A33C0;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001DLL, v143);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_11_86();
  OUTLINED_FUNCTION_1_157();
  sub_1C75504DC();
  OUTLINED_FUNCTION_16_78();
  *(v0 + 3600) = v144 + 49;
  *(v0 + 3608) = 19285;
  *(v0 + 3584) = v45;
  *(v0 + 3592) = v43;
  *(v0 + 3616) = v145;
  *(v0 + 3624) = &unk_1F46A3450;
  static MusicLocalizer.localizedString(forKey:)(v144 + 3, 0x80000001C75B4C50);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_11_86();
  OUTLINED_FUNCTION_1_157();
  v146 = sub_1C75504DC();
  *(v0 + 3648) = v6;
  *(v0 + 3656) = 19285;
  *(v0 + 3632) = v45;
  *(v0 + 3640) = v43;
  *(v0 + 3664) = v146;
  *(v0 + 3672) = &unk_1F46A34E0;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermDiwali");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_1_157();
  v147 = sub_1C75504DC();
  *(v0 + 3696) = 0x696C61776944;
  *(v0 + 3704) = 0xE600000000000000;
  *(v0 + 3680) = v45;
  *(v0 + 3688) = v43;
  *(v0 + 3712) = v147;
  *(v0 + 3720) = &unk_1F46A3570;
  OUTLINED_FUNCTION_9_102();
  static MusicLocalizer.localizedString(forKey:)(19288, v148 | 0x8000000000000000);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_1_157();
  sub_1C75504DC();
  *(v0 + 3744) = 0x6565776F6C6C6148;
  OUTLINED_FUNCTION_20_67();
  *(v0 + 3752) = v149 + 25;
  *(v0 + 3728) = v45;
  *(v0 + 3736) = v43;
  *(v0 + 3760) = v150;
  *(v0 + 3768) = &unk_1F46A3600;
  static MusicLocalizer.localizedString(forKey:)(19294, 0x80000001C75B4CD0);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_11_86();
  OUTLINED_FUNCTION_1_157();
  v151 = sub_1C75504DC();
  *(v0 + 3792) = v325;
  *(v0 + 3800) = 19285;
  *(v0 + 3776) = v45;
  *(v0 + 3784) = v43;
  *(v0 + 3808) = v151;
  *(v0 + 3816) = &unk_1F46A3690;
  OUTLINED_FUNCTION_24_54("PIFMusicEmbeddingTermLunarNewYear");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_11_86();
  OUTLINED_FUNCTION_1_157();
  v152 = sub_1C75504DC();
  *(v0 + 3840) = 0x100000000000002DLL;
  *(v0 + 3848) = 19285;
  *(v0 + 3824) = v45;
  *(v0 + 3832) = v43;
  *(v0 + 3856) = v152;
  *(v0 + 3864) = &unk_1F46A3720;
  static MusicLocalizer.localizedString(forKey:)(v6 + 8, 0x80000001C75B4D80);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_1_157();
  v153 = sub_1C75504DC();
  *(v0 + 3888) = 0x100000000000002DLL;
  *(v0 + 3896) = 19285;
  *(v0 + 3872) = v45;
  *(v0 + 3880) = v43;
  *(v0 + 3904) = v153;
  *(v0 + 3912) = &unk_1F46A37B0;
  OUTLINED_FUNCTION_5_113();
  OUTLINED_FUNCTION_27_56(v154);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_11_86();
  OUTLINED_FUNCTION_1_157();
  v155 = sub_1C75504DC();
  *(v0 + 3936) = 0x1000000000000021;
  *(v0 + 3944) = 19285;
  *(v0 + 3920) = v45;
  *(v0 + 3928) = v43;
  *(v0 + 3952) = v155;
  *(v0 + 3960) = &unk_1F46A3840;
  OUTLINED_FUNCTION_23_58("PIFMusicEmbeddingTermMardiGras");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_11_86();
  OUTLINED_FUNCTION_1_157();
  v156 = sub_1C75504DC();
  *(v0 + 3984) = v327;
  *(v0 + 3992) = 19285;
  *(v0 + 3968) = v45;
  *(v0 + 3976) = v43;
  *(v0 + 4000) = v156;
  *(v0 + 4008) = &unk_1F46A38D0;
  static MusicLocalizer.localizedString(forKey:)(0x1000000000000038, 0x80000001C75B4E40);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_11_86();
  v157 = sub_1C75504DC();
  *(v0 + 4032) = v325;
  *(v0 + 4040) = 19285;
  *(v0 + 4016) = v45;
  *(v0 + 4024) = v43;
  *(v0 + 4048) = v157;
  *(v0 + 4056) = &unk_1F46A3960;
  static MusicLocalizer.localizedString(forKey:)(0x1000000000000033, 0x80000001C75B4E90);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_11_86();
  OUTLINED_FUNCTION_14_79();
  v158 = sub_1C75504DC();
  *(v0 + 4080) = 0xD00000000000001FLL;
  *(v0 + 4088) = 19285;
  *(v0 + 4064) = v45;
  *(v0 + 4072) = v43;
  *(v0 + 4096) = v158;
  *(v0 + 4104) = &unk_1F46A39F0;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000022, 0x80000001C75B4EE0);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_11_86();
  OUTLINED_FUNCTION_14_79();
  v159 = sub_1C75504DC();
  *(v0 + 4128) = 0x1000000000000011;
  *(v0 + 4136) = 19285;
  *(v0 + 4112) = v45;
  *(v0 + 4120) = v43;
  *(v0 + 4144) = v159;
  *(v0 + 4152) = &unk_1F46A3A80;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001FLL, v160);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_14_79();
  v161 = sub_1C75504DC();
  *(v0 + 4176) = 0x656D657469637845;
  *(v0 + 4184) = 0xEF6F69647541746ELL;
  *(v0 + 4160) = v45;
  *(v0 + 4168) = v43;
  *(v0 + 4192) = v161;
  *(v0 + 4200) = &unk_1F46A3B10;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(v326, v162);
  OUTLINED_FUNCTION_10_90();
  v163 = sub_1C75504DC();
  *(v0 + 4224) = 2036490562;
  *(v0 + 4232) = 0xE400000000000000;
  *(v0 + 4208) = v45;
  *(v0 + 4216) = v43;
  *(v0 + 4240) = v163;
  *(v0 + 4248) = &unk_1F46A3BA0;
  OUTLINED_FUNCTION_5_113();
  OUTLINED_FUNCTION_27_56(v164);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_231();
  v165 = sub_1C75504DC();
  *(v0 + 4272) = 2036490562;
  *(v0 + 4280) = 0xE400000000000000;
  *(v0 + 4256) = v45;
  *(v0 + 4264) = v43;
  *(v0 + 4288) = v165;
  *(v0 + 4296) = &unk_1F46A3C30;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000020, 0x80000001C75B4F90);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_231();
  v166 = sub_1C75504DC();
  *(v0 + 4320) = 0x524548544F5242;
  *(v0 + 4328) = 0xE700000000000000;
  *(v0 + 4304) = v45;
  *(v0 + 4312) = v43;
  *(v0 + 4336) = v166;
  *(v0 + 4344) = &unk_1F46A3CC0;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000018, 0x80000001C75B4FB0);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_231();
  v167 = sub_1C75504DC();
  *(v0 + 4368) = 0x7461435F746550;
  *(v0 + 4376) = 0xE700000000000000;
  *(v0 + 4352) = v45;
  *(v0 + 4360) = v43;
  *(v0 + 4384) = v167;
  *(v0 + 4392) = &unk_1F46A3D50;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(v327, v168);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_231();
  v169 = sub_1C75504DC();
  *(v0 + 4416) = 0x646C696843;
  *(v0 + 4424) = 0xE500000000000000;
  *(v0 + 4400) = v45;
  *(v0 + 4408) = v43;
  *(v0 + 4432) = v169;
  *(v0 + 4440) = &unk_1F46A3DE0;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001DLL, v170);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_231();
  v171 = sub_1C75504DC();
  *(v0 + 4464) = 0x646C696843;
  *(v0 + 4472) = 0xE500000000000000;
  *(v0 + 4448) = v45;
  *(v0 + 4456) = v43;
  *(v0 + 4480) = v171;
  *(v0 + 4488) = &unk_1F46A3E70;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001DLL, v172);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_231();
  v173 = sub_1C75504DC();
  *(v0 + 4512) = 0x72656B726F776F43;
  *(v0 + 4520) = 0xE800000000000000;
  *(v0 + 4496) = v45;
  *(v0 + 4504) = v43;
  *(v0 + 4528) = v173;
  *(v0 + 4536) = &unk_1F46A3F00;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001DLL, v174);
  OUTLINED_FUNCTION_10_90();
  v175 = sub_1C75504DC();
  *(v0 + 4560) = 0x5245544847554144;
  *(v0 + 4568) = 0xE800000000000000;
  *(v0 + 4544) = v45;
  *(v0 + 4552) = v43;
  *(v0 + 4576) = v175;
  *(v0 + 4584) = &unk_1F46A3F90;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000018, v176);
  OUTLINED_FUNCTION_10_90();
  v177 = sub_1C75504DC();
  *(v0 + 4608) = 0x676F445F746550;
  *(v0 + 4616) = 0xE700000000000000;
  *(v0 + 4592) = v45;
  *(v0 + 4600) = v43;
  *(v0 + 4624) = v177;
  *(v0 + 4632) = &unk_1F46A4020;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermFamily");
  OUTLINED_FUNCTION_10_90();
  v178 = sub_1C75504DC();
  *(v0 + 4656) = 0x796C696D6146;
  *(v0 + 4664) = 0xE600000000000000;
  *(v0 + 4640) = v45;
  *(v0 + 4648) = v43;
  *(v0 + 4672) = v178;
  *(v0 + 4680) = &unk_1F46A40B0;
  OUTLINED_FUNCTION_26_54("PIFMusicEmbeddingTermGrandparent");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_14_79();
  v179 = sub_1C75504DC();
  *(v0 + 4704) = 0x796C696D6146;
  *(v0 + 4712) = 0xE600000000000000;
  *(v0 + 4688) = v45;
  *(v0 + 4696) = v43;
  *(v0 + 4720) = v179;
  *(v0 + 4728) = &unk_1F46A4140;
  OUTLINED_FUNCTION_15_89("PIFMusicEmbeddingTermSibling");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_14_79();
  v180 = sub_1C75504DC();
  *(v0 + 4752) = 0x796C696D6146;
  *(v0 + 4760) = 0xE600000000000000;
  *(v0 + 4736) = v45;
  *(v0 + 4744) = v43;
  *(v0 + 4768) = v180;
  *(v0 + 4776) = &unk_1F46A41D0;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(v326, v181);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_14_79();
  v182 = sub_1C75504DC();
  *(v0 + 4800) = 0x796C696D6146;
  *(v0 + 4808) = 0xE600000000000000;
  *(v0 + 4784) = v45;
  *(v0 + 4792) = v43;
  *(v0 + 4816) = v182;
  *(v0 + 4824) = &unk_1F46A4260;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermFather");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_11_86();
  OUTLINED_FUNCTION_14_79();
  v183 = sub_1C75504DC();
  *(v0 + 4848) = 0x1000000000000015;
  *(v0 + 4856) = 0xE600000000000000;
  *(v0 + 4832) = v45;
  *(v0 + 4840) = v43;
  *(v0 + 4864) = v183;
  *(v0 + 4872) = &unk_1F46A42F0;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermFriend");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_14_79();
  v184 = sub_1C75504DC();
  *(v0 + 4896) = 0x646E65697246794DLL;
  *(v0 + 4904) = 0xE800000000000000;
  *(v0 + 4880) = v45;
  *(v0 + 4888) = v43;
  *(v0 + 4912) = v184;
  *(v0 + 4920) = &unk_1F46A4380;
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001CLL, 0x80000001C75B5140);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_14_79();
  sub_1C75504DC();
  OUTLINED_FUNCTION_30_56();
  *(v0 + 4944) = v185;
  OUTLINED_FUNCTION_20_67();
  *(v0 + 4952) = v186 - 35;
  *(v0 + 4928) = v45;
  *(v0 + 4936) = v43;
  *(v0 + 4960) = v187;
  *(v0 + 4968) = &unk_1F46A4410;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermMother");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_11_86();
  OUTLINED_FUNCTION_14_79();
  v188 = sub_1C75504DC();
  *(v0 + 4992) = 0x1000000000000015;
  *(v0 + 5000) = 0xE600000000000000;
  *(v0 + 4976) = v45;
  *(v0 + 4984) = v43;
  *(v0 + 5008) = v188;
  *(v0 + 5016) = &unk_1F46A44A0;
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001CLL, 0x80000001C75B51A0);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_14_79();
  v189 = sub_1C75504DC();
  *(v0 + 5040) = 0x72656E74726150;
  *(v0 + 5048) = 0xE700000000000000;
  *(v0 + 5024) = v45;
  *(v0 + 5032) = v43;
  *(v0 + 5056) = v189;
  *(v0 + 5064) = &unk_1F46A4530;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermSpouse");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_14_79();
  v190 = sub_1C75504DC();
  *(v0 + 5088) = 0x72656E74726150;
  *(v0 + 5096) = 0xE700000000000000;
  *(v0 + 5072) = v45;
  *(v0 + 5080) = v43;
  *(v0 + 5104) = v190;
  *(v0 + 5112) = &unk_1F46A45C0;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000018, v191);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_11_86();
  OUTLINED_FUNCTION_14_79();
  v192 = sub_1C75504DC();
  *(v0 + 5136) = v325;
  *(v0 + 5144) = 0x72656E74726150;
  *(v0 + 5120) = v45;
  *(v0 + 5128) = v43;
  *(v0 + 5152) = v192;
  *(v0 + 5160) = &unk_1F46A4650;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(v326, v193);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_14_79();
  v194 = sub_1C75504DC();
  *(v0 + 5184) = v325;
  *(v0 + 5192) = 0x72656E74726150;
  *(v0 + 5168) = v45;
  *(v0 + 5176) = v43;
  *(v0 + 5200) = v194;
  *(v0 + 5208) = &unk_1F46A46E0;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermSister");
  OUTLINED_FUNCTION_10_90();
  v195 = sub_1C75504DC();
  *(v0 + 5232) = 0x524554534953;
  *(v0 + 5240) = 0xE600000000000000;
  *(v0 + 5216) = v45;
  *(v0 + 5224) = v43;
  *(v0 + 5248) = v195;
  *(v0 + 5256) = &unk_1F46A4770;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermSocial");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_40_1();
  v196 = sub_1C75504DC();
  *(v0 + 5280) = 0x72476C6169636F53;
  *(v0 + 5288) = 0xEB0000000070756FLL;
  *(v0 + 5264) = v45;
  *(v0 + 5272) = v43;
  *(v0 + 5296) = v196;
  *(v0 + 5304) = &unk_1F46A4800;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001DLL, v197);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_40_1();
  v198 = sub_1C75504DC();
  *(v0 + 5328) = 0x72476C6169636F53;
  *(v0 + 5336) = 0xEB0000000070756FLL;
  *(v0 + 5312) = v45;
  *(v0 + 5320) = v43;
  *(v0 + 5344) = v198;
  *(v0 + 5352) = &unk_1F46A4890;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000018, v199);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_40_1();
  v200 = sub_1C75504DC();
  *(v0 + 5376) = 5132115;
  *(v0 + 5384) = 0xE300000000000000;
  *(v0 + 5360) = v45;
  *(v0 + 5368) = v43;
  *(v0 + 5392) = v200;
  *(v0 + 5400) = &unk_1F46A4920;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(v326, v201);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_40_1();
  sub_1C75504DC();
  OUTLINED_FUNCTION_30_56();
  *(v0 + 5424) = v202;
  OUTLINED_FUNCTION_20_67();
  *(v0 + 5432) = v203 - 36;
  *(v0 + 5408) = v45;
  *(v0 + 5416) = v43;
  *(v0 + 5440) = v204;
  *(v0 + 5448) = &unk_1F46A49B0;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermDisney");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_40_1();
  v205 = sub_1C75504DC();
  *(v0 + 5472) = 0x79656E736944;
  *(v0 + 5480) = 0xE600000000000000;
  *(v0 + 5456) = v45;
  *(v0 + 5464) = v43;
  *(v0 + 5488) = v205;
  *(v0 + 5496) = &unk_1F46A4A40;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(v326, v206);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_17_85();
  v207 = sub_1C75504DC();
  *(v0 + 5520) = 1701670728;
  *(v0 + 5528) = 0xE400000000000000;
  *(v0 + 5504) = v45;
  *(v0 + 5512) = v43;
  *(v0 + 5536) = v207;
  *(v0 + 5544) = &unk_1F46A4AD0;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001DLL, v208);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_17_85();
  v209 = sub_1C75504DC();
  *(v0 + 5568) = 0x6E6961746E756F4DLL;
  *(v0 + 5576) = 0xE800000000000000;
  *(v0 + 5552) = v45;
  *(v0 + 5560) = v43;
  *(v0 + 5584) = v209;
  *(v0 + 5592) = &unk_1F46A4B60;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermNature");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_17_85();
  v210 = sub_1C75504DC();
  *(v0 + 5616) = 0x65727574614ELL;
  *(v0 + 5624) = 0xE600000000000000;
  *(v0 + 5600) = v45;
  *(v0 + 5608) = v43;
  *(v0 + 5632) = v210;
  *(v0 + 5640) = &unk_1F46A4BF0;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(v327, v211);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_17_85();
  v212 = sub_1C75504DC();
  *(v0 + 5664) = 0x7265746157;
  *(v0 + 5672) = 0xE500000000000000;
  *(v0 + 5648) = v45;
  *(v0 + 5656) = v43;
  *(v0 + 5680) = v212;
  *(v0 + 5688) = &unk_1F46A4C80;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(v326, v213);
  OUTLINED_FUNCTION_10_90();
  v214 = OUTLINED_FUNCTION_22_72();
  *(v0 + 5712) = 0x7265746157;
  *(v0 + 5720) = 0xE500000000000000;
  *(v0 + 5696) = v45;
  *(v0 + 5704) = v43;
  *(v0 + 5728) = v214;
  *(v0 + 5736) = &unk_1F46A4D10;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(v326, v215);
  OUTLINED_FUNCTION_10_90();
  v216 = sub_1C75504DC();
  *(v0 + 5760) = 1802661719;
  *(v0 + 5768) = 0xE400000000000000;
  *(v0 + 5744) = v45;
  *(v0 + 5752) = v43;
  *(v0 + 5776) = v216;
  *(v0 + 5784) = &unk_1F46A4DA0;
  OUTLINED_FUNCTION_5_56();
  static MusicLocalizer.localizedString(forKey:)(v217 + 1, v218 | 0x8000000000000000);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_25_48();
  v219 = sub_1C75504DC();
  *(v0 + 5808) = 0x676E696E726F4DLL;
  *(v0 + 5816) = 0xE700000000000000;
  *(v0 + 5792) = v45;
  *(v0 + 5800) = v43;
  *(v0 + 5824) = v219;
  *(v0 + 5832) = &unk_1F46A4E30;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001DLL, v220);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_25_48();
  v221 = sub_1C75504DC();
  *(v0 + 5856) = 0x676E696E726F4DLL;
  *(v0 + 5864) = 0xE700000000000000;
  *(v0 + 5840) = v45;
  *(v0 + 5848) = v43;
  *(v0 + 5872) = v221;
  *(v0 + 5880) = &unk_1F46A4EC0;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(v327, v222);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_25_48();
  v223 = sub_1C75504DC();
  *(v0 + 5904) = 0x746867694ELL;
  *(v0 + 5912) = 0xE500000000000000;
  *(v0 + 5888) = v45;
  *(v0 + 5896) = v43;
  *(v0 + 5920) = v223;
  *(v0 + 5928) = &unk_1F46A4F50;
  OUTLINED_FUNCTION_5_56();
  static MusicLocalizer.localizedString(forKey:)(v224 + 6, v225 | 0x8000000000000000);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_25_48();
  v226 = sub_1C75504DC();
  strcpy((v0 + 5952), "OverTheYears");
  *(v0 + 5965) = 0;
  *(v0 + 5966) = -5120;
  *(v0 + 5936) = v45;
  *(v0 + 5944) = v43;
  *(v0 + 5968) = v226;
  *(v0 + 5976) = &unk_1F46A4FE0;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001DLL, v227);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_25_48();
  v228 = sub_1C75504DC();
  *(v0 + 6000) = 0x656E616C70726941;
  *(v0 + 6008) = 0xE800000000000000;
  *(v0 + 5984) = v45;
  *(v0 + 5992) = v43;
  *(v0 + 6016) = v228;
  *(v0 + 6024) = &unk_1F46A5070;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(v326, v229);
  OUTLINED_FUNCTION_10_90();
  v230 = sub_1C75504DC();
  *(v0 + 6048) = 1701538114;
  *(v0 + 6056) = 0xE400000000000000;
  *(v0 + 6032) = v45;
  *(v0 + 6040) = v43;
  *(v0 + 6064) = v230;
  *(v0 + 6072) = &unk_1F46A5100;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(v326, v231);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_40_1();
  v232 = sub_1C75504DC();
  *(v0 + 6096) = 1685219650;
  *(v0 + 6104) = 0xE400000000000000;
  *(v0 + 6080) = v45;
  *(v0 + 6088) = v43;
  *(v0 + 6112) = v232;
  *(v0 + 6120) = &unk_1F46A5190;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(v326, v233);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_40_1();
  v234 = sub_1C75504DC();
  *(v0 + 6144) = 1952542530;
  *(v0 + 6152) = 0xE400000000000000;
  *(v0 + 6128) = v45;
  *(v0 + 6136) = v43;
  *(v0 + 6160) = v234;
  *(v0 + 6168) = &unk_1F46A5220;
  OUTLINED_FUNCTION_5_113();
  OUTLINED_FUNCTION_27_56(v235);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_40_1();
  v236 = sub_1C75504DC();
  *(v0 + 6192) = 1952542530;
  *(v0 + 6200) = 0xE400000000000000;
  *(v0 + 6176) = v45;
  *(v0 + 6184) = v43;
  *(v0 + 6208) = v236;
  *(v0 + 6216) = &unk_1F46A52B0;
  OUTLINED_FUNCTION_23_58("PIFMusicEmbeddingTermCityscape");
  OUTLINED_FUNCTION_10_90();
  v237 = sub_1C75504DC();
  *(v0 + 6240) = 0x7061637379746943;
  *(v0 + 6248) = 0xE900000000000065;
  *(v0 + 6224) = v45;
  *(v0 + 6232) = v43;
  *(v0 + 6256) = v237;
  *(v0 + 6264) = &unk_1F46A5340;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001DLL, v238);
  OUTLINED_FUNCTION_10_90();
  v239 = OUTLINED_FUNCTION_10_92();
  *(v0 + 6288) = 0x7061637379746943;
  *(v0 + 6296) = 0xE900000000000065;
  *(v0 + 6272) = v45;
  *(v0 + 6280) = v43;
  *(v0 + 6304) = v239;
  *(v0 + 6312) = &unk_1F46A53D0;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermCoffee");
  OUTLINED_FUNCTION_10_90();
  v240 = OUTLINED_FUNCTION_10_92();
  *(v0 + 6336) = 0x656566666F43;
  *(v0 + 6344) = 0xE600000000000000;
  *(v0 + 6320) = v45;
  *(v0 + 6328) = v43;
  *(v0 + 6352) = v240;
  *(v0 + 6360) = &unk_1F46A5460;
  OUTLINED_FUNCTION_5_113();
  static MusicLocalizer.localizedString(forKey:)(0xE900000000000068, v241 | 0x8000000000000000);
  OUTLINED_FUNCTION_10_90();
  v242 = OUTLINED_FUNCTION_10_92();
  *(v0 + 6384) = 0x6B726F7765726946;
  *(v0 + 6392) = 0xE900000000000073;
  *(v0 + 6368) = v45;
  *(v0 + 6376) = v43;
  *(v0 + 6400) = v242;
  *(v0 + 6408) = &unk_1F46A54F0;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermFlower");
  OUTLINED_FUNCTION_10_90();
  v243 = OUTLINED_FUNCTION_10_92();
  *(v0 + 6432) = 0x7265776F6C46;
  *(v0 + 6440) = 0xE600000000000000;
  *(v0 + 6416) = v45;
  *(v0 + 6424) = v43;
  *(v0 + 6448) = v243;
  *(v0 + 6456) = &unk_1F46A5580;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermForest");
  OUTLINED_FUNCTION_10_90();
  v244 = OUTLINED_FUNCTION_10_92();
  *(v0 + 6480) = 0x747365726F46;
  *(v0 + 6488) = 0xE600000000000000;
  *(v0 + 6464) = v45;
  *(v0 + 6472) = v43;
  *(v0 + 6496) = v244;
  *(v0 + 6504) = &unk_1F46A5610;
  static MusicLocalizer.localizedString(forKey:)(0xE900000000000070, 0x80000001C75B5590);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_11_86();
  v245 = OUTLINED_FUNCTION_10_92();
  *(v0 + 6528) = v324;
  *(v0 + 6536) = 0xE600000000000000;
  *(v0 + 6512) = v45;
  *(v0 + 6520) = v43;
  *(v0 + 6544) = v245;
  *(v0 + 6552) = &unk_1F46A56A0;
  static MusicLocalizer.localizedString(forKey:)(0xE900000000000066, 0x80000001C75B55E0);
  OUTLINED_FUNCTION_10_90();
  v246 = OUTLINED_FUNCTION_10_92();
  *(v0 + 6576) = 0x776F626E696152;
  *(v0 + 6584) = 0xE700000000000000;
  *(v0 + 6560) = v45;
  *(v0 + 6568) = v43;
  *(v0 + 6592) = v246;
  *(v0 + 6600) = &unk_1F46A5730;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001FLL, v247);
  OUTLINED_FUNCTION_10_90();
  v248 = OUTLINED_FUNCTION_10_92();
  strcpy((v0 + 6624), "Skateboarding");
  *(v0 + 6638) = -4864;
  *(v0 + 6608) = v45;
  *(v0 + 6616) = v43;
  *(v0 + 6640) = v248;
  *(v0 + 6648) = &unk_1F46A57C0;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(v326, v249);
  OUTLINED_FUNCTION_10_90();
  v250 = OUTLINED_FUNCTION_10_92();
  *(v0 + 6672) = 2003791443;
  *(v0 + 6680) = 0xE400000000000000;
  *(v0 + 6656) = v45;
  *(v0 + 6664) = v43;
  *(v0 + 6688) = v250;
  *(v0 + 6696) = &unk_1F46A5850;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000020, 0x80000001C75B5640);
  OUTLINED_FUNCTION_10_90();
  v251 = OUTLINED_FUNCTION_10_92();
  *(v0 + 6720) = 0x6C42676E69727053;
  *(v0 + 6728) = 0xEB000000006D6F6FLL;
  *(v0 + 6704) = v45;
  *(v0 + 6712) = v43;
  *(v0 + 6736) = v251;
  *(v0 + 6744) = &unk_1F46A58E0;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermSpring");
  OUTLINED_FUNCTION_10_90();
  v252 = OUTLINED_FUNCTION_10_92();
  *(v0 + 6768) = 0x676E69727053;
  *(v0 + 6776) = 0xE600000000000000;
  *(v0 + 6752) = v45;
  *(v0 + 6760) = v43;
  *(v0 + 6784) = v252;
  *(v0 + 6792) = &unk_1F46A5970;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermSummer");
  OUTLINED_FUNCTION_10_90();
  v253 = OUTLINED_FUNCTION_10_92();
  *(v0 + 6816) = 0x72656D6D7553;
  *(v0 + 6824) = 0xE600000000000000;
  *(v0 + 6800) = v45;
  *(v0 + 6808) = v43;
  *(v0 + 6832) = v253;
  *(v0 + 6840) = &unk_1F46A5A00;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermAutumn");
  OUTLINED_FUNCTION_10_90();
  v254 = OUTLINED_FUNCTION_10_92();
  *(v0 + 6864) = 0x6E6D75747541;
  *(v0 + 6872) = 0xE600000000000000;
  *(v0 + 6848) = v45;
  *(v0 + 6856) = v43;
  *(v0 + 6880) = v254;
  *(v0 + 6888) = &unk_1F46A5A90;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermWinter");
  OUTLINED_FUNCTION_10_90();
  v255 = OUTLINED_FUNCTION_10_92();
  *(v0 + 6912) = 0x7265746E6957;
  *(v0 + 6920) = 0xE600000000000000;
  *(v0 + 6896) = v45;
  *(v0 + 6904) = v43;
  *(v0 + 6928) = v255;
  *(v0 + 6936) = &unk_1F46A5B20;
  OUTLINED_FUNCTION_9_102();
  static MusicLocalizer.localizedString(forKey:)(0xE600000000000007, v256 | 0x8000000000000000);
  OUTLINED_FUNCTION_10_90();
  v257 = OUTLINED_FUNCTION_10_92();
  strcpy((v0 + 6960), "SunriseSunset");
  *(v0 + 6974) = -4864;
  *(v0 + 6944) = v45;
  *(v0 + 6952) = v43;
  *(v0 + 6976) = v257;
  *(v0 + 6984) = &unk_1F46A5BB0;
  OUTLINED_FUNCTION_25_49("gTermSunriseSunset");
  OUTLINED_FUNCTION_10_90();
  v258 = OUTLINED_FUNCTION_10_92();
  *(v0 + 7008) = 0x676E6966727553;
  *(v0 + 7016) = 0xE700000000000000;
  *(v0 + 6992) = v45;
  *(v0 + 7000) = v43;
  *(v0 + 7024) = v258;
  *(v0 + 7032) = &unk_1F46A5C40;
  static MusicLocalizer.localizedString(forKey:)(0xE600000000000003, 0x80000001C75B5740);
  OUTLINED_FUNCTION_10_90();
  v259 = OUTLINED_FUNCTION_10_92();
  *(v0 + 7056) = 0x6C61667265746157;
  *(v0 + 7064) = 0xE90000000000006CLL;
  *(v0 + 7040) = v45;
  *(v0 + 7048) = v43;
  *(v0 + 7072) = v259;
  *(v0 + 7080) = &unk_1F46A5CD0;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001DLL, v260);
  OUTLINED_FUNCTION_10_90();
  v261 = OUTLINED_FUNCTION_10_92();
  *(v0 + 7104) = 0x73726F6F6474754FLL;
  *(v0 + 7112) = 0xE800000000000000;
  *(v0 + 7088) = v45;
  *(v0 + 7096) = v43;
  *(v0 + 7120) = v261;
  *(v0 + 7128) = &unk_1F46A5D60;
  v262 = OUTLINED_FUNCTION_3_133();
  static MusicLocalizer.localizedString(forKey:)(v262, v263);
  OUTLINED_FUNCTION_10_90();
  v264 = sub_1C75504DC();
  *(v0 + 7152) = 0x6E6F697461636156;
  *(v0 + 7160) = 0xE800000000000000;
  *(v0 + 7136) = v45;
  *(v0 + 7144) = v43;
  *(v0 + 7168) = v264;
  *(v0 + 7176) = &unk_1F46A5DF0;
  OUTLINED_FUNCTION_5_113();
  static MusicLocalizer.localizedString(forKey:)(0xE800000000000005, v265 | 0x8000000000000000);
  OUTLINED_FUNCTION_10_90();
  v266 = sub_1C75504DC();
  *(v0 + 7200) = 0x74617262656C6543;
  *(v0 + 7208) = 0xEB000000006E6F69;
  *(v0 + 7184) = v45;
  *(v0 + 7192) = v43;
  *(v0 + 7216) = v266;
  *(v0 + 7224) = &unk_1F46A5E80;
  static MusicLocalizer.localizedString(forKey:)(0xE800000000000003, 0x80000001C75B57D0);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v267 = sub_1C75504DC();
  *(v0 + 7248) = 0x7265766F63736944;
  *(v0 + 7256) = 0xE900000000000079;
  *(v0 + 7232) = v45;
  *(v0 + 7240) = v43;
  *(v0 + 7264) = v267;
  *(v0 + 7272) = &unk_1F46A5F10;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(v326, v268);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v269 = sub_1C75504DC();
  *(v0 + 7296) = 1701996870;
  *(v0 + 7304) = 0xE400000000000000;
  *(v0 + 7280) = v45;
  *(v0 + 7288) = v43;
  *(v0 + 7312) = v269;
  *(v0 + 7320) = &unk_1F46A5FA0;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000018, v270);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v271 = sub_1C75504DC();
  *(v0 + 7344) = 5851460;
  *(v0 + 7352) = 0xE300000000000000;
  *(v0 + 7328) = v45;
  *(v0 + 7336) = v43;
  *(v0 + 7360) = v271;
  *(v0 + 7368) = &unk_1F46A6030;
  OUTLINED_FUNCTION_25_49("PIFMusicEmbeddingTermDIY");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v272 = sub_1C75504DC();
  *(v0 + 7392) = 0x676E69636E6144;
  *(v0 + 7400) = 0xE700000000000000;
  *(v0 + 7376) = v45;
  *(v0 + 7384) = v43;
  *(v0 + 7408) = v272;
  *(v0 + 7416) = &unk_1F46A60C0;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermAnthem");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v273 = sub_1C75504DC();
  *(v0 + 7440) = 0x6D6568746E41;
  *(v0 + 7448) = 0xE600000000000000;
  *(v0 + 7424) = v45;
  *(v0 + 7432) = v43;
  *(v0 + 7456) = v273;
  *(v0 + 7464) = &unk_1F46A6150;
  OUTLINED_FUNCTION_25_49("PIFMusicEmbeddingTermAnthem");
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v274 = sub_1C75504DC();
  *(v0 + 7488) = 0x736568746F6C43;
  *(v0 + 7496) = 0xE700000000000000;
  *(v0 + 7472) = v45;
  *(v0 + 7480) = v43;
  *(v0 + 7504) = v274;
  *(v0 + 7512) = &unk_1F46A61E0;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(v326, v275);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v276 = sub_1C75504DC();
  *(v0 + 7536) = 1685024582;
  *(v0 + 7544) = 0xE400000000000000;
  *(v0 + 7520) = v45;
  *(v0 + 7528) = v43;
  *(v0 + 7552) = v276;
  *(v0 + 7560) = &unk_1F46A6270;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000022, 0x80000001C75B58B0);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v277 = sub_1C75504DC();
  strcpy((v0 + 7584), "AmusementPark");
  *(v0 + 7598) = -4864;
  *(v0 + 7568) = v45;
  *(v0 + 7576) = v43;
  *(v0 + 7600) = v277;
  *(v0 + 7608) = &unk_1F46A6300;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001FLL, v278);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_11_86();
  OUTLINED_FUNCTION_0_218();
  v279 = sub_1C75504DC();
  *(v0 + 7632) = v324;
  *(v0 + 7640) = 0xD00000000000001BLL;
  *(v0 + 7616) = v45;
  *(v0 + 7624) = v43;
  *(v0 + 7648) = v279;
  *(v0 + 7656) = &unk_1F46A6390;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(v326, v280);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v281 = sub_1C75504DC();
  *(v0 + 7680) = 0x6B7261505F494F50;
  *(v0 + 7688) = 0xE800000000000000;
  *(v0 + 7664) = v45;
  *(v0 + 7672) = v43;
  *(v0 + 7696) = v281;
  *(v0 + 7704) = &unk_1F46A6420;
  OUTLINED_FUNCTION_5_113();
  static MusicLocalizer.localizedString(forKey:)(v326 + 3, v282 | 0x8000000000000000);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  sub_1C75504DC();
  *(v0 + 7728) = 0x6E69726568746147;
  OUTLINED_FUNCTION_20_67();
  *(v0 + 7736) = v283 + 18;
  *(v0 + 7712) = v45;
  *(v0 + 7720) = v43;
  *(v0 + 7744) = v284;
  *(v0 + 7752) = &unk_1F46A64B0;
  v285 = OUTLINED_FUNCTION_3_133();
  static MusicLocalizer.localizedString(forKey:)(v285, v286);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v287 = sub_1C75504DC();
  *(v0 + 7776) = 1852796750;
  *(v0 + 7784) = 0xE400000000000000;
  *(v0 + 7760) = v45;
  *(v0 + 7768) = v43;
  *(v0 + 7792) = v287;
  *(v0 + 7800) = &unk_1F46A6540;
  static MusicLocalizer.localizedString(forKey:)(v326 + 5, 0x80000001C75B5980);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v288 = sub_1C75504DC();
  *(v0 + 7824) = 0x746F6D646E617247;
  *(v0 + 7832) = 0xEB00000000726568;
  *(v0 + 7808) = v45;
  *(v0 + 7816) = v43;
  *(v0 + 7840) = v288;
  *(v0 + 7848) = &unk_1F46A65D0;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001FLL, v289);
  OUTLINED_FUNCTION_10_90();
  OUTLINED_FUNCTION_0_218();
  v290 = sub_1C75504DC();
  strcpy((v0 + 7872), "POI_Restaurant");
  *(v0 + 7887) = -18;
  *(v0 + 7856) = v45;
  *(v0 + 7864) = v43;
  *(v0 + 7888) = v290;
  *(v0 + 7896) = &unk_1F46A6660;
  OUTLINED_FUNCTION_10_2();
  v292 = static MusicLocalizer.localizedString(forKey:)(v327, v291);
  v294 = v293;
  OUTLINED_FUNCTION_0_218();
  v295 = sub_1C75504DC();
  *(v0 + 7920) = 0x6E61627255;
  *(v0 + 7928) = 0xE500000000000000;
  *(v0 + 7904) = v292;
  *(v0 + 7912) = v294;
  *(v0 + 7936) = v295;
  *(v0 + 7944) = &unk_1F46A66F0;
  v296 = OUTLINED_FUNCTION_3_133();
  v298 = static MusicLocalizer.localizedString(forKey:)(v296, v297);
  v300 = v299;
  OUTLINED_FUNCTION_0_218();
  v301 = sub_1C75504DC();
  *(v0 + 7968) = 1718379859;
  *(v0 + 7976) = 0xE400000000000000;
  *(v0 + 7952) = v298;
  *(v0 + 7960) = v300;
  *(v0 + 7984) = v301;
  *(v0 + 7992) = &unk_1F46A6780;
  v302 = OUTLINED_FUNCTION_3_133();
  static MusicLocalizer.localizedString(forKey:)(v302, v303);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_0_218();
  v304 = sub_1C75504DC();
  *(v0 + 8016) = 0x4149515442474CLL;
  *(v0 + 8024) = 0xE700000000000000;
  *(v0 + 8000) = v298;
  *(v0 + 8008) = 0xD00000000000001FLL;
  *(v0 + 8032) = v304;
  *(v0 + 8040) = &unk_1F46A6810;
  OUTLINED_FUNCTION_9_102();
  OUTLINED_FUNCTION_25_49(v305);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_0_218();
  v306 = sub_1C75504DC();
  *(v0 + 8064) = 0x72656874616557;
  *(v0 + 8072) = 0xE700000000000000;
  *(v0 + 8048) = v298;
  *(v0 + 8056) = 0xD00000000000001FLL;
  *(v0 + 8080) = v306;
  *(v0 + 8088) = &unk_1F46A68A0;
  static MusicLocalizer.localizedString(forKey:)(v326 + 3, 0x80000001C75B5A50);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_11_86();
  OUTLINED_FUNCTION_0_218();
  v307 = sub_1C75504DC();
  *(v0 + 8112) = 0xD000000000000010;
  *(v0 + 8120) = v326;
  *(v0 + 8096) = v298;
  *(v0 + 8104) = 0xD00000000000001FLL;
  *(v0 + 8128) = v307;
  *(v0 + 8136) = &unk_1F46A6930;
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001CLL, 0x80000001C75B5A90);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_0_218();
  v308 = sub_1C75504DC();
  *(v0 + 8160) = 0x676E6976697244;
  *(v0 + 8168) = 0xE700000000000000;
  *(v0 + 8144) = v298;
  *(v0 + 8152) = 0xD00000000000001FLL;
  *(v0 + 8176) = v308;
  *(v0 + 8184) = &unk_1F46A69C0;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001FLL, v309);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_11_86();
  OUTLINED_FUNCTION_0_218();
  v310 = sub_1C75504DC();
  *(v0 + 8208) = v325;
  *(v0 + 8216) = v326;
  *(v0 + 0x2000) = v298;
  *(v0 + 8200) = 0xD00000000000001FLL;
  *(v0 + 8224) = v310;
  *(v0 + 8232) = &unk_1F46A6A50;
  OUTLINED_FUNCTION_2_148("PIFMusicEmbeddingTermDesert");
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_0_218();
  v311 = sub_1C75504DC();
  *(v0 + 8256) = 0x747265736544;
  *(v0 + 8264) = 0xE600000000000000;
  *(v0 + 8240) = v298;
  *(v0 + 8248) = 0xD00000000000001FLL;
  *(v0 + 8272) = v311;
  *(v0 + 8280) = &unk_1F46A6AE0;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000027, 0x80000001C75B5B10);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_0_218();
  v312 = sub_1C75504DC();
  strcpy((v0 + 8304), "Raksha Bandhan");
  *(v0 + 8319) = -18;
  *(v0 + 8288) = v298;
  *(v0 + 8296) = 0xD00000000000001FLL;
  *(v0 + 8320) = v312;
  *(v0 + 8328) = &unk_1F46A6B70;
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000022, 0x80000001C75B5B40);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_11_86();
  OUTLINED_FUNCTION_0_218();
  v313 = sub_1C75504DC();
  *(v0 + 8352) = 0xD00000000000001DLL;
  *(v0 + 8360) = v326;
  *(v0 + 8336) = v298;
  *(v0 + 8344) = 0xD00000000000001FLL;
  *(v0 + 8368) = v313;
  *(v0 + 8376) = &unk_1F46A6C00;
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000001ELL, 0x80000001C75B5B90);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_0_218();
  sub_1C75504DC();
  OUTLINED_FUNCTION_16_78();
  *(v0 + 8400) = v314 - 6;
  *(v0 + 8408) = 0x80000001C75B5BB0;
  *(v0 + 8384) = v326;
  *(v0 + 8392) = v298;
  *(v0 + 8416) = v315;
  *(v0 + 8424) = &unk_1F46A6C90;
  static MusicLocalizer.localizedString(forKey:)(v314 + 10, 0x80000001C75B5BD0);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_0_218();
  v316 = sub_1C75504DC();
  *(v0 + 8448) = v327 - 10;
  *(v0 + 8456) = 0x80000001C75B5C00;
  *(v0 + 8432) = v326;
  *(v0 + 8440) = v298;
  *(v0 + 8464) = v316;
  *(v0 + 8472) = &unk_1F46A6D20;
  static MusicLocalizer.localizedString(forKey:)(0xD00000000000002ALL, 0x80000001C75B5C20);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_0_218();
  v317 = sub_1C75504DC();
  *(v0 + 8496) = 0xD000000000000010;
  *(v0 + 8504) = 0x80000001C75B5C50;
  *(v0 + 8480) = v326;
  *(v0 + 8488) = v298;
  *(v0 + 8512) = v317;
  *(v0 + 8520) = &unk_1F46A6DB0;
  OUTLINED_FUNCTION_10_2();
  static MusicLocalizer.localizedString(forKey:)(0xD000000000000018, v318);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_0_218();
  v319 = sub_1C75504DC();
  *(v0 + 8544) = 6580549;
  *(v0 + 8552) = 0xE300000000000000;
  *(v0 + 8528) = v326;
  *(v0 + 8536) = v298;
  *(v0 + 8560) = v319;
  *(v0 + 8568) = &unk_1F46A6E40;
  v320 = static MusicLocalizer.localizedString(forKey:)(0xD000000000000024, 0x80000001C75B5C90);
  v322 = v321;
  OUTLINED_FUNCTION_0_218();
  result = sub_1C75504DC();
  *(v0 + 8592) = 0xD000000000000010;
  *(v0 + 8600) = 0x80000001C75B5CC0;
  *(v0 + 8576) = v320;
  *(v0 + 8584) = v322;
  *(v0 + 8608) = result;
  *(v0 + 8616) = &unk_1F46A6EB8;
  qword_1EDD09570 = v0;
  return result;
}

uint64_t static StoryMusicEmbeddingTerms.allTerms.getter()
{
  if (qword_1EDD09568 != -1)
  {
    swift_once();
  }

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_24_54@<X0>(uint64_t a1@<X8>)
{

  return static MusicLocalizer.localizedString(forKey:)(v1 + 6, (a1 - 32) | 0x8000000000000000);
}

uint64_t static TitleCompletionGeneration.generateTitleCompletionsGMS(with:diagnosticContext:eventRecorder:progressReporter:aiEventReporting:)()
{
  OUTLINED_FUNCTION_42();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v1[12] = v5;
  v1[13] = v6;
  v7 = sub_1C754FA7C();
  v1[18] = v7;
  OUTLINED_FUNCTION_18(v7);
  v1[19] = v8;
  v1[20] = OUTLINED_FUNCTION_77();
  v9 = sub_1C754E72C();
  v1[21] = v9;
  OUTLINED_FUNCTION_18(v9);
  v1[22] = v10;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = type metadata accessor for LLMConfiguration(0);
  v1[27] = OUTLINED_FUNCTION_77();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0);
  v1[28] = OUTLINED_FUNCTION_77();
  v11 = sub_1C754F38C();
  v1[29] = v11;
  OUTLINED_FUNCTION_18(v11);
  v1[30] = v12;
  v1[31] = OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C74FDFAC()
{
  v74 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 112);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C754F60C();
  v3 = sub_1C754F61C();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v3);
  sub_1C754F16C();
  sub_1C6FD7FC8(v1, &qword_1EC214BF0);
  v4 = sub_1C74FEE50();
  *(v0 + 256) = v4;
  if (!v4)
  {
    v7 = *(v0 + 240);
    v6 = *(v0 + 248);
    v8 = *(v0 + 232);
    v9 = *(v0 + 112);
    v10 = *(v0 + 120);
    sub_1C6FB5280();
    swift_allocError();
    swift_willThrow();
    __swift_project_boxed_opaque_existential_1(v9, v2[3]);
    OUTLINED_FUNCTION_57_0();
    sub_1C754F1AC();
    (*(v7 + 8))(v6, v8);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_12();
    (*(v11 + 8))(v10);

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_130_0();

    __asm { BRAA            X1, X16 }
  }

  v5 = v4;
  sub_1C754F2CC();
  type metadata accessor for LLMConfigurationProvider();
  if (qword_1EC2142D0 != -1)
  {
    OUTLINED_FUNCTION_3_134();
  }

  LOBYTE(v72[0]) = byte_1EC21CB90;
  if (qword_1EC2142D8 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 216);
  v15 = sub_1C754FF1C();
  v16 = __swift_project_value_buffer(v15, qword_1EC21CB98);
  *(v0 + 264) = v16;
  static LLMConfigurationProvider.configuration(for:logger:)(v72, v16, v14);
  v17 = *(v0 + 104);
  v18 = (*(v0 + 216) + *(*(v0 + 208) + 40));
  v19 = *v18;
  v20 = v18[1];
  v21 = v18[2];
  *(v0 + 57) = *(v18 + 41);
  *(v0 + 32) = v20;
  *(v0 + 48) = v21;
  *(v0 + 16) = v19;
  v22 = v18[1];
  v72[0] = *v18;
  v72[1] = v22;
  v73[0] = v18[2];
  *(v73 + 9) = *(v18 + 41);
  static LLMWrapper.gmsSamplingParameters(from:)();
  if (v17)
  {
    v23 = *(v0 + 104);
    sub_1C75504FC();
    if (sub_1C71656D8())
    {
      v24 = *(v0 + 136);
      v25 = *(v0 + 96);
      v26 = (v23 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
      os_unfair_lock_lock(v26);
      sub_1C75004D8(&v26[2], v24, v25, (v0 + 16));
      os_unfair_lock_unlock(v26);
    }
  }

  v27 = *(*(v0 + 176) + 16);
  v27(*(v0 + 192), *(v0 + 200), *(v0 + 168));
  sub_1C75504FC();
  v28 = sub_1C754FEEC();
  v29 = sub_1C75511BC();

  v71 = v29;
  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v0 + 192);
  if (v30)
  {
    v68 = *(v0 + 184);
    v69 = v27;
    v70 = *(v0 + 176);
    v32 = *(v0 + 168);
    v33 = swift_slowAlloc();
    *&v72[0] = swift_slowAlloc();
    *v33 = 136643075;
    v34 = sub_1C75504BC();
    v36 = sub_1C6F765A4(v34, v35, v72);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2080;
    v69(v68, v31, v32);
    v37 = sub_1C75506EC();
    v39 = v38;
    v40 = v28;
    v41 = *(v70 + 8);
    v41(v31, v32);
    v42 = sub_1C6F765A4(v37, v39, v72);

    *(v33 + 14) = v42;
    _os_log_impl(&dword_1C6F5C000, v40, v71, "Generating title using GMS one-shot path with prompt bindings %{sensitive}s and sampling parameters: %s", v33, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
    v43 = *(v0 + 168);
    v44 = *(v0 + 176);

    v41 = *(v44 + 8);
    v41(v31, v43);
  }

  *(v0 + 272) = v41;
  (*(*(v0 + 152) + 16))(*(v0 + 160), *(v0 + 216) + *(*(v0 + 208) + 24), *(v0 + 144));
  sub_1C75504FC();
  v45 = sub_1C754FEEC();
  v46 = sub_1C75511BC();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v72[0] = v48;
    *v47 = 136642819;
    v49 = sub_1C75504BC();
    v51 = sub_1C6F765A4(v49, v50, v72);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_1C6F5C000, v45, v46, "Generating title with prompt bindings: %{sensitive}s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v52 = *(v0 + 216);
  v53 = *(v0 + 200);
  v54 = *(v0 + 160);
  v55 = *(v0 + 136);
  v56 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1(*(v0 + 128), *(*(v0 + 128) + 24));
  *(v0 + 73) = 5;
  v57 = swift_task_alloc();
  *(v0 + 280) = v57;
  v57[2] = v55;
  v57[3] = v54;
  v57[4] = v56;
  v57[5] = v5;
  v57[6] = v53;
  v57[7] = v52;
  v58 = swift_task_alloc();
  *(v0 + 288) = v58;
  *v58 = v0;
  v58[1] = sub_1C74FE750;
  OUTLINED_FUNCTION_130_0();

  return sub_1C70597B4(v59, v60, v61, v62, v63, v64, v65);
}

uint64_t sub_1C74FE750()
{
  OUTLINED_FUNCTION_42();
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v2 = v7;
  *(v7 + 296) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C74FE85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_95_3();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  v30 = v26[10];
  v29 = v26[11];
  swift_bridgeObjectRetain_n();
  v31 = sub_1C754FEEC();
  v32 = sub_1C75511BC();

  v80 = v30;
  v81 = v29;
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    a14 = v34;
    *v33 = 136642819;
    *(v33 + 4) = sub_1C6F765A4(v30, v29, &a14);
    _os_log_impl(&dword_1C6F5C000, v31, v32, "Generated title completion %{sensitive}s from GMS one-shot templated completion SPI", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v35 = v26[37];
  sub_1C754F2EC();
  v36 = v26[34];
  v78 = v26[27];
  v37 = v26[25];
  v38 = v26[21];
  v39 = v26[19];
  v40 = v26[20];
  v41 = v26[18];
  v42 = v26[13];
  if (v35)
  {
    v76 = v35;

    (*(v39 + 8))(v40, v41);
    v36(v37, v38);
    sub_1C706CB5C(v78);
    if (v42)
    {
      v43 = v26[13];
      v44 = v26[14];
      v45 = v26[12];
      sub_1C75504FC();
      sub_1C75504FC();

      sub_1C75009D8(v45, v80, v29, v43, v44);
    }

    v49 = v26[30];
    v50 = v26[31];
    v51 = v26[29];

    v52 = OUTLINED_FUNCTION_66_2();
    __swift_project_boxed_opaque_existential_1(v52, v53);
    sub_1C754F1AC();
    (*(v49 + 8))(v50, v51);

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_94_1();

    return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, v76, v78, v80, v29, a14, a15, a16, a17, a18);
  }

  else
  {
    (*(v39 + 8))(v26[20], v26[18]);
    v36(v37, v38);
    sub_1C706CB5C(v78);
    if (v42)
    {
      v46 = v26[13];
      v47 = v26[14];
      v48 = v26[12];
      sub_1C75504FC();
      sub_1C75504FC();

      sub_1C75009D8(v48, v80, v29, v46, v47);
    }

    v63 = v26[30];
    v64 = v26[31];
    v65 = v26[29];
    v75 = v26[24];
    v77 = v26[23];
    v79 = v26[20];
    v66 = v26[14];

    __swift_project_boxed_opaque_existential_1(v66, v66[3]);
    sub_1C754F1AC();
    (*(v63 + 8))(v64, v65);

    OUTLINED_FUNCTION_94_1();

    return v70(v67, v68, v69, v70, v71, v72, v73, v74, v75, v77, v79, v80, v81, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_1C74FEC84()
{
  v1 = v0[34];
  v2 = v0[27];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v6 = v0[13];

  (*(v4 + 8))(v3, v5);
  v7 = OUTLINED_FUNCTION_57_0();
  v1(v7);
  sub_1C706CB5C(v2);
  if (v6)
  {
    v9 = v0[13];
    v8 = v0[14];
    sub_1C75504FC();

    OUTLINED_FUNCTION_41();
    sub_1C75009D8(v10, v11, v12, v9, v8);
  }

  v13 = v0[15];

  v14 = OUTLINED_FUNCTION_82();
  __swift_project_boxed_opaque_existential_1(v14, v15);
  sub_1C754F1AC();
  v16 = OUTLINED_FUNCTION_57_0();
  v17(v16);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_12();
  (*(v18 + 8))(v13);

  OUTLINED_FUNCTION_43();

  return v19();
}

uint64_t sub_1C74FEE50()
{
  if (qword_1EC2142E0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC25B9F8);
  v0 = qword_1EC25BA00;
  if (!qword_1EC25BA00)
  {
    if (qword_1EC2142D0 != -1)
    {
      OUTLINED_FUNCTION_3_134();
    }

    static LLMWrapper.tokenGenerator(for:)();
    v0 = v1;
    qword_1EC25BA00 = v1;
  }

  os_unfair_lock_unlock(&dword_1EC25B9F8);
  return v0;
}

uint64_t sub_1C74FEF3C()
{
  if (qword_1EDD0A988 != -1)
  {
    result = swift_once();
  }

  byte_1EC21CB90 = 18;
  return result;
}

uint64_t sub_1C74FEF90()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21CB98);
  __swift_project_value_buffer(v0, qword_1EC21CB98);
  return sub_1C754FEFC();
}

uint64_t sub_1C74FF024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6[28] = a5;
  v6[29] = a6;
  v6[26] = a3;
  v6[27] = a4;
  v6[24] = a1;
  v6[25] = a2;
  v6[30] = *a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E00);
  v6[31] = v7;
  v6[32] = *(v7 - 8);
  v6[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E08);
  v6[34] = swift_task_alloc();
  v6[35] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E10);
  v6[36] = swift_task_alloc();
  v8 = sub_1C754EECC();
  v6[37] = v8;
  v6[38] = *(v8 - 8);
  v6[39] = swift_task_alloc();
  v9 = sub_1C754EEEC();
  v6[40] = v9;
  v6[41] = *(v9 - 8);
  v6[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E18);
  v6[43] = swift_task_alloc();
  v10 = sub_1C754FD9C();
  v6[44] = v10;
  v6[45] = *(v10 - 8);
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E20);
  v6[48] = v11;
  v6[49] = *(v11 - 8);
  v6[50] = swift_task_alloc();
  v12 = sub_1C755029C();
  v6[51] = v12;
  v6[52] = *(v12 - 8);
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v6[58] = swift_task_alloc();
  v6[59] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C74FF3F8, 0, 0);
}

uint64_t sub_1C74FF3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v55 = *(v26 + 464);
  v28 = *(v26 + 432);
  v27 = *(v26 + 440);
  v30 = *(v26 + 416);
  v29 = *(v26 + 424);
  v31 = *(v26 + 408);
  v52 = *(v26 + 400);
  v49 = *(v26 + 448);
  v50 = *(v26 + 392);
  v53 = *(v26 + 384);
  v54 = *(v26 + 456);
  v51 = *(v26 + 224);
  v56 = *(v26 + 344);
  v32 = *(v26 + 192);
  *(swift_task_alloc() + 16) = v32;
  sub_1C75502AC();

  sub_1C755028C();
  v33 = *(v30 + 8);
  *(v26 + 480) = v33;
  *(v26 + 488) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v33(v29, v31);
  sub_1C754DF8C();
  *(v26 + 496) = sub_1C706CBD4(&qword_1EDD06CA8, MEMORY[0x1E69C61F8]);
  OUTLINED_FUNCTION_82();
  sub_1C75503AC();

  v33(v28, v31);
  sub_1C70BFEC0();
  sub_1C75503DC();

  v33(v27, v31);
  *(v26 + 504) = sub_1C754E72C();
  OUTLINED_FUNCTION_12();
  v35 = *(v34 + 16);
  *(v26 + 512) = v35;
  *(v26 + 520) = (v34 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v35(v52, v51);
  *(v26 + 608) = *MEMORY[0x1E69A1370];
  v36 = *(v50 + 104);
  *(v26 + 528) = v36;
  *(v26 + 536) = (v50 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v36(v52);
  sub_1C75503BC();
  v37 = *(v50 + 8);
  *(v26 + 544) = v37;
  *(v26 + 552) = (v50 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37(v52, v53);
  v33(v49, v31);
  sub_1C755037C();
  v33(v54, v31);
  sub_1C755038C();
  v33(v55, v31);
  v38 = sub_1C754FD8C();
  __swift_storeEnumTagSinglePayload(v56, 1, 1, v38);
  sub_1C754FD7C();
  v39 = swift_task_alloc();
  *(v26 + 560) = v39;
  *v39 = v26;
  v39[1] = sub_1C74FF7B4;
  OUTLINED_FUNCTION_130_0();

  return MEMORY[0x1EEE0B310](v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1C74FF7B4()
{
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  *(v4 + 568) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C74FF8B8()
{
  v1 = *(v0 + 272);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E28);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1C6FD7FC8(v1, &qword_1EC214E08);
  }

  else
  {
    v38 = *(v0 + 544);
    v37 = *(v0 + 528);
    v36 = *(v0 + 608);
    v35 = *(v0 + 512);
    v34 = *(v0 + 504);
    v45 = *(v0 + 480);
    v40 = *(v0 + 464);
    v41 = *(v0 + 472);
    v43 = *(v0 + 408);
    v44 = *(v0 + 416);
    v32 = *(v0 + 400);
    v33 = *(v0 + 384);
    v28 = *(v0 + 360);
    v29 = *(v0 + 352);
    v30 = *(v0 + 376);
    v46 = *(v0 + 336);
    v42 = *(v0 + 328);
    v3 = *(v0 + 320);
    v27 = *(v0 + 312);
    v4 = *(v0 + 296);
    v5 = *(v0 + 304);
    v7 = *(v0 + 280);
    v6 = *(v0 + 288);
    v31 = *(v0 + 224);
    v39 = *(v0 + 192);
    v25 = *(v7 + 48);
    v26 = *(v2 + 48);
    v8 = *(v42 + 32);
    v8(v6, v1, v3);
    v9 = *(v5 + 32);
    v9(v6 + v25, v1 + v26, v4);
    v10 = *(v7 + 48);
    v8(v46, v6, v3);
    v9(v27, v6 + v10, v4);
    sub_1C754EEBC();
    (*(v28 + 8))(v30, v29);
    v11 = OUTLINED_FUNCTION_57_0();
    v12(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E30);
    sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C755BAB0;
    *(inited + 32) = 0xD00000000000004FLL;
    *(inited + 40) = 0x80000001C75973D0;
    v35(v32, v31, v34);
    v37(v32, v36, v33);
    *(inited + 72) = v34;
    __swift_allocate_boxed_opaque_existential_0((inited + 48));
    sub_1C754EBEC();
    v14 = OUTLINED_FUNCTION_57_0();
    v38(v14);
    OUTLINED_FUNCTION_82();
    sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E40);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_1C755BAB0;
    strcpy((v15 + 32), "promptTemplate");
    *(v15 + 47) = -18;
    v16 = sub_1C754FA7C();
    *(v15 + 72) = v16;
    *(v15 + 80) = sub_1C706CBD4(&qword_1EDD06CB0, MEMORY[0x1E69A14E8]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v15 + 48));
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_0, v39, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E48);
    OUTLINED_FUNCTION_82();
    sub_1C75504DC();
    sub_1C754EEAC();

    (*(v5 + 8))(v27, v4);
    (*(v42 + 8))(v46, v3);
    v45(v41, v43);
    (*(v44 + 32))(v41, v40, v43);
  }

  v18 = *(v0 + 480);
  v19 = *(v0 + 464);
  v20 = *(v0 + 408);
  v21 = *(v0 + 232);
  sub_1C755039C();
  *(v0 + 184) = v21;
  sub_1C75503CC();
  v18(v19, v20);
  v22 = swift_task_alloc();
  *(v0 + 576) = v22;
  sub_1C706CBD4(&qword_1EC21C3C0, MEMORY[0x1E69DA470]);
  *v22 = v0;
  v22[1] = sub_1C74FFE50;
  v23 = *(v0 + 248);

  return MEMORY[0x1EEE0A390](v23);
}

uint64_t sub_1C74FFE50()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *v5 = *v2;
  v4[73] = v1;

  v6 = v4[33];
  v7 = v4[32];
  v8 = v4[31];
  if (!v1)
  {
    v4[74] = v0;
    v4[75] = v3;
  }

  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C74FFFC8()
{
  v1 = v0[60];
  v2 = v0[59];
  v3 = v0[51];
  (*(v0[45] + 8))(v0[47], v0[44]);
  v1(v2, v3);

  v4 = v0[1];
  v5 = v0[75];
  v6 = v0[74];

  return v4(v5, v6);
}

uint64_t sub_1C7500130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  v19 = OUTLINED_FUNCTION_6_122();
  v20(v19);
  v21 = OUTLINED_FUNCTION_66_2();
  v18(v21);
  OUTLINED_FUNCTION_2_149();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_94_1();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C7500228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  v19 = OUTLINED_FUNCTION_6_122();
  v20(v19);
  v21 = OUTLINED_FUNCTION_66_2();
  v18(v21);
  OUTLINED_FUNCTION_2_149();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_94_1();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C7500320()
{
  v0 = sub_1C755029C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C754FA7C();
  sub_1C706CBD4(&qword_1EDD06CB0, MEMORY[0x1E69A14E8]);
  sub_1C75502CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E50);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C755BAB0;
  (*(v1 + 16))(v5 + v4, v3, v0);
  MEMORY[0x1CCA5C7D0](v5);

  return (*(v1 + 8))(v3, v0);
}

void sub_1C75004D8(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  if (qword_1EC2142D0 != -1)
  {
    swift_once();
  }

  v7 = byte_1EC21CB90;
  sub_1C75504FC();
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a1 + 64);
  v9 = sub_1C6FC296C();
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C58);
  if (sub_1C7551A2C())
  {
    v13 = sub_1C6FC296C();
    if ((v12 & 1) == (v14 & 1))
    {
      v11 = v13;
      goto LABEL_7;
    }

LABEL_11:
    sub_1C7551E4C();
    __break(1u);
    return;
  }

LABEL_7:
  *(a1 + 64) = v8;
  if ((v12 & 1) == 0)
  {
    sub_1C6FCABDC(v11, v7, MEMORY[0x1E69E7CC0], v8);
  }

  v15 = *(v8 + 56) + 8 * v11;
  sub_1C6FB0734();
  v16 = *(*v15 + 16);
  sub_1C6FB0FE8();
  v17 = *v15;
  *(v17 + 16) = v16 + 1;
  v18 = v17 + 72 * v16;
  *(v18 + 32) = a3;
  v19 = a4[1];
  *(v18 + 40) = *a4;
  *(v18 + 56) = v19;
  *(v18 + 72) = a4[2];
  *(v18 + 81) = *(a4 + 41);
}

uint64_t sub_1C7500670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a2;
  v8[4] = a4;
  v8[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF8);
  v8[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7500718, 0, 0);
}

uint64_t sub_1C7500718()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = *(type metadata accessor for LLMConfiguration(0) + 44);
  v4 = sub_1C754E15C();
  OUTLINED_FUNCTION_12();
  (*(v5 + 16))(v1, v2 + v3, v4);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v4);
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1C750081C;
  v7 = v0[9];
  v9 = v0[6];
  v8 = v0[7];
  v11 = v0[4];
  v10 = v0[5];
  v12 = v0[3];

  return sub_1C74FF024(v11, v7, v12, v10, v8, v9);
}

uint64_t sub_1C750081C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *v5 = *v2;
  v4[11] = v1;

  v6 = v4[9];
  if (!v1)
  {
    v4[12] = v0;
    v4[13] = v3;
  }

  sub_1C6FD7FC8(v6, &qword_1EC214DF8);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7500970()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[12];
  v2 = v0[2];
  *v2 = v0[13];
  v2[1] = v1;

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C75009D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_1C754F38C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a5, a5[3]);
  sub_1C754F1CC();
  if (PFOSVariantHasInternalDiagnostics())
  {
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C71640B4(0x6D782E656C746974, 0xE90000000000006CLL, a4, a1, a2, a3);
  }

  __swift_project_boxed_opaque_existential_1(a5, a5[3]);
  sub_1C754F1AC();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1C7500B74(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1C706CA78;

  return sub_1C7500670(a1, a2, v6, v7, v8, v9, v11, v10);
}

id static FMSongLibrary.sharedLibraryForMusicCuration()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217B10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755F060;
  sub_1C755068C();
  v1 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_0_219();
  *(inited + 96) = v1;
  *(inited + 72) = 26704;
  *(inited + 80) = 0xE200000000000000;
  sub_1C755068C();
  OUTLINED_FUNCTION_0_219();
  *(inited + 168) = v1;
  *(inited + 144) = 0xD00000000000002BLL;
  *(inited + 152) = 0x80000001C759DA00;
  sub_1C755068C();
  OUTLINED_FUNCTION_0_219();
  *(inited + 240) = v1;
  *(inited + 216) = 0xD00000000000002BLL;
  *(inited + 224) = 0x80000001C75B5DB0;
  sub_1C755068C();
  OUTLINED_FUNCTION_0_219();
  *(inited + 312) = MEMORY[0x1E69E6370];
  *(inited + 288) = 1;
  v2 = sub_1C75504DC();
  v3 = objc_allocWithZone(MEMORY[0x1E699F6F8]);
  return sub_1C7500E24(v2);
}

id sub_1C7500E24(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_1C755048C();
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 initWithOptions_];

  return v3;
}

uint64_t AppleMusicSubscriptionState.description.getter()
{
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD00000000000002CLL, 0x80000001C75B5DE0);
  if (*v0)
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*v0)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1CCA5CD70](v1, v2);

  MEMORY[0x1CCA5CD70](0x6665726F7473202CLL, 0xEE00203A746E6F72);
  v3 = *(v0 + 16);
  if (v3)
  {
    v4 = *(v0 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = *(v0 + 16);
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](v4, v5);

  MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C75B5E10);
  v6 = sub_1C7501048(*(v0 + 1));
  MEMORY[0x1CCA5CD70](v6);

  MEMORY[0x1CCA5CD70](0xD00000000000001ALL, 0x80000001C75B5E30);
  v7 = (v0 + *(type metadata accessor for AppleMusicSubscriptionState() + 32));
  v8 = v7[1];
  if (v8)
  {
    v9 = *v7;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v7[1];
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](v9, v10);

  return 0;
}

unint64_t sub_1C7501048(char a1)
{
  result = 0x626967696C457369;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD000000000000026;
      break;
    case 4:
      result = 0xD00000000000002FLL;
      break;
    case 5:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Bool __swiftcall AppleMusicSubscriptionState.isEligible()()
{
  v1 = *(v0 + 1);
  v2 = 1;
  switch(v1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
      v2 = sub_1C7551DBC();
      break;
    default:
      break;
  }

  return v2 & 1;
}

uint64_t AppleMusicSubscriptionState.init(isSubscribed:eligibilityState:storefront:lastCheckedDate:eligibilityDebugStatus:)@<X0>(char a1@<W0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v12 = *a2;
  *a8 = a1;
  *(a8 + 1) = v12;
  *(a8 + 8) = a3;
  *(a8 + 16) = a4;
  v13 = type metadata accessor for AppleMusicSubscriptionState();
  result = sub_1C6FF51C8(a5, a8 + *(v13 + 28));
  v15 = (a8 + *(v13 + 32));
  *v15 = a6;
  v15[1] = a7;
  return result;
}

unint64_t sub_1C7501280()
{
  result = 0x626967696C457369;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD000000000000026;
      break;
    case 4:
      result = 0xD00000000000002FLL;
      break;
    case 5:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

PhotosIntelligence::AppleMusicEligibilityState_optional __swiftcall AppleMusicEligibilityState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C75013E4@<X0>(uint64_t *a1@<X8>)
{
  result = AppleMusicEligibilityState.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C75014C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7263736275537369 && a2 == 0xEC00000064656269;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001C75B5E50 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F726665726F7473 && a2 == 0xEA0000000000746ELL;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x636568437473616CLL && a2 == 0xEF6574614464656BLL;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000016 && 0x80000001C75B5E70 == a2)
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

unint64_t sub_1C7501680(char a1)
{
  result = 0x7263736275537369;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6F726665726F7473;
      break;
    case 3:
      result = 0x636568437473616CLL;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7501748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C75014C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7501770(uint64_t a1)
{
  v2 = sub_1C7501E40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C75017AC(uint64_t a1)
{
  v2 = sub_1C7501E40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppleMusicSubscriptionState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21CBB0);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7501E40();
  sub_1C755200C();
  v12[15] = 0;
  OUTLINED_FUNCTION_97();
  sub_1C7551CDC();
  if (!v2)
  {
    v12[14] = *(v3 + 1);
    v12[13] = 1;
    sub_1C7501E94();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    v12[12] = 2;
    OUTLINED_FUNCTION_97();
    sub_1C7551C7C();
    type metadata accessor for AppleMusicSubscriptionState();
    v12[11] = 3;
    sub_1C754DF6C();
    sub_1C728C2C8(&qword_1EDD0F9E8);
    OUTLINED_FUNCTION_97();
    sub_1C7551CBC();
    v12[10] = 4;
    OUTLINED_FUNCTION_97();
    sub_1C7551C7C();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t AppleMusicSubscriptionState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21CBC8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v25 = type metadata accessor for AppleMusicSubscriptionState();
  MEMORY[0x1EEE9AC00](v25);
  v26 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7501E40();
  sub_1C7551FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v6;
  v32 = 0;
  OUTLINED_FUNCTION_5_0();
  v9 = sub_1C7551BCC();
  v10 = v26;
  *v26 = v9 & 1;
  v30 = 1;
  sub_1C7501EE8();
  OUTLINED_FUNCTION_5_0();
  sub_1C7551C1C();
  *(v10 + 1) = v31;
  v29 = 2;
  OUTLINED_FUNCTION_5_0();
  *(v10 + 8) = sub_1C7551B6C();
  *(v10 + 16) = v11;
  sub_1C754DF6C();
  v28 = 3;
  sub_1C728C2C8(&qword_1EDD100B8);
  v12 = v23;
  OUTLINED_FUNCTION_5_0();
  sub_1C7551BAC();
  v13 = v25;
  sub_1C6FF51C8(v12, v10 + *(v25 + 28));
  v27 = 4;
  OUTLINED_FUNCTION_5_0();
  v14 = sub_1C7551B6C();
  v23 = v15;
  v16 = v14;
  v17 = OUTLINED_FUNCTION_1_2();
  v18(v17);
  v19 = (v10 + *(v13 + 32));
  v21 = v23;
  v20 = v24;
  *v19 = v16;
  v19[1] = v21;
  sub_1C6FF7624(v10, v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1C6FF7688(v10);
}

uint64_t type metadata accessor for AppleMusicSubscriptionState()
{
  result = qword_1EDD0D8E0;
  if (!qword_1EDD0D8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C7501E40()
{
  result = qword_1EC21CBB8;
  if (!qword_1EC21CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CBB8);
  }

  return result;
}

unint64_t sub_1C7501E94()
{
  result = qword_1EC21CBC0;
  if (!qword_1EC21CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CBC0);
  }

  return result;
}

unint64_t sub_1C7501EE8()
{
  result = qword_1EC21CBD0;
  if (!qword_1EC21CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CBD0);
  }

  return result;
}

unint64_t sub_1C7501F40()
{
  result = qword_1EC21CBD8;
  if (!qword_1EC21CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CBD8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppleMusicEligibilityState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C7502098()
{
  sub_1C6FD5FFC();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1C6F5FB48();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for AppleMusicSubscriptionState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7502228()
{
  result = qword_1EC21CBE0;
  if (!qword_1EC21CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CBE0);
  }

  return result;
}

unint64_t sub_1C7502280()
{
  result = qword_1EC21CBE8;
  if (!qword_1EC21CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CBE8);
  }

  return result;
}

unint64_t sub_1C75022D8()
{
  result = qword_1EC21CBF0;
  if (!qword_1EC21CBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CBF0);
  }

  return result;
}

unint64_t sub_1C750232C()
{
  result = qword_1EC21CBF8;
  if (!qword_1EC21CBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21CBF8);
  }

  return result;
}

void static MusicCurationAnalyticsSender.sendMusicCurationEventAnalytics(_:performanceMetricsReporter:error:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216CE8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v108 - v8;
  v10 = type metadata accessor for MusicMobileAssetsConfig();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v108 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C60);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v108 - v18;
  type metadata accessor for AppleMusicSubscriptionState();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v20);
  v23 = *(a1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics);
  if (*(*(v23 + 56) + 33) == 1)
  {
    v118 = v21;
    v119 = (v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_1C6FB5E28(a2, &v128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21CC18);
    type metadata accessor for StoryGenerationEventRecorder();
    if (swift_dynamicCast())
    {
      v115 = v23;
      v112 = v9;
      v109 = v16;
      v110 = v13;
      v24 = v126;
      if (qword_1EC2142E8 != -1)
      {
        OUTLINED_FUNCTION_2_150();
      }

      OUTLINED_FUNCTION_16_79();
      v25 = sub_1C754FF1C();
      v26 = __swift_project_value_buffer(v25, qword_1EC21CC00);
      v27 = sub_1C754FEEC();
      v28 = sub_1C75511BC();
      v29 = os_log_type_enabled(v27, v28);
      v114 = v10;
      v113 = v6;
      if (v29)
      {
        v30 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v128 = v16;
        *v30 = 136315138;
        *(v30 + 4) = sub_1C6F765A4(0xD00000000000002FLL, 0x80000001C75B5EC0, &v128);
        _os_log_impl(&dword_1C6F5C000, v27, v28, "Preparing Music Curation Event payload for %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        OUTLINED_FUNCTION_16_79();
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      v127 = MEMORY[0x1E69E7CC8];
      v31 = sub_1C6F65BE8(0, &qword_1EDD108E0);
      sub_1C75513BC();
      OUTLINED_FUNCTION_5_114();
      v128 = v31;
      sub_1C6FC7E40();
      v127 = v128;
      v116 = sub_1C72671DC(0);
      v111 = v31;
      v108[1] = v16 - 15;
      v108[2] = "eligibilityDebugStatus";
      v108[3] = v26;
      v117 = v24;
      type metadata accessor for StoryMusicCurator();
      v44 = static StoryMusicCurator.allMusicEventRecorderMappings()();
      v45 = v44;
      v46 = v44 + 64;
      v47 = 1 << *(v44 + 32);
      v48 = -1;
      if (v47 < 64)
      {
        v48 = ~(-1 << v47);
      }

      v49 = v48 & *(v44 + 64);
      v50 = (v47 + 63) >> 6;
      sub_1C75504FC();
      v51 = 0;
      if (v49)
      {
        while (1)
        {
          v52 = v51;
LABEL_27:
          v53 = __clz(__rbit64(v49));
          v49 &= v49 - 1;
          v54 = (v52 << 10) | (16 * v53);
          v55 = (*(v45 + 48) + v54);
          v56 = *v55;
          v57 = v55[1];
          v58 = (*(v45 + 56) + v54);
          v59 = *v58;
          v60 = v58[1];
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75038B0(v56, v57, v59, v60, v116, v117, &v127);

          if (!v49)
          {
            goto LABEL_23;
          }
        }
      }

      while (1)
      {
LABEL_23:
        v52 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          __break(1u);
          goto LABEL_58;
        }

        if (v52 >= v50)
        {
          break;
        }

        v49 = *(v46 + 8 * v52);
        ++v51;
        if (v49)
        {
          v51 = v52;
          goto LABEL_27;
        }
      }

      v61 = *(v115 + 56);
      v62 = OBJC_IVAR____TtC18PhotosIntelligence15MusicStatistics_appleMusicSubscriptionState;
      OUTLINED_FUNCTION_5();
      sub_1C70555F8(v61 + v62, v19, &qword_1EC215C60);
      if (__swift_getEnumTagSinglePayload(v19, 1, v118) == 1)
      {
        sub_1C6FD7FC8(v19, &qword_1EC215C60);
        OUTLINED_FUNCTION_16_79();
        v63 = v111;
      }

      else
      {
        v64 = v119;
        sub_1C7503C80(v19, v119, type metadata accessor for AppleMusicSubscriptionState);
        v63 = v111;
        sub_1C75513BC();
        OUTLINED_FUNCTION_4_118();
        OUTLINED_FUNCTION_7_109();
        OUTLINED_FUNCTION_16_79();
        OUTLINED_FUNCTION_10_93();
        sub_1C6FC7E40();
        OUTLINED_FUNCTION_6_123();
        if (v64[2].isa)
        {
          sub_1C6F65BE8(0, &qword_1EC21B178);
          sub_1C75504FC();
          sub_1C75037BC();
          OUTLINED_FUNCTION_4_118();
          OUTLINED_FUNCTION_7_109();
          OUTLINED_FUNCTION_10_93();
          sub_1C6FC7E40();
          v64 = v119;
          OUTLINED_FUNCTION_6_123();
        }

        switch(BYTE1(v64->isa))
        {
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
            OUTLINED_FUNCTION_113_0();
            break;
          default:
            break;
        }

        sub_1C6F65BE8(0, &qword_1EC21B178);
        sub_1C75037BC();
        OUTLINED_FUNCTION_4_118();
        OUTLINED_FUNCTION_7_109();
        OUTLINED_FUNCTION_10_93();
        sub_1C6FC7E40();
        OUTLINED_FUNCTION_6_123();
        sub_1C7503CE0(v119, type metadata accessor for AppleMusicSubscriptionState);
      }

      v65 = v115;
      sub_1C75513BC();
      OUTLINED_FUNCTION_4_118();
      OUTLINED_FUNCTION_7_109();
      OUTLINED_FUNCTION_10_93();
      sub_1C6FC7E40();
      OUTLINED_FUNCTION_6_123();
      sub_1C75513BC();
      OUTLINED_FUNCTION_4_118();
      OUTLINED_FUNCTION_7_109();
      OUTLINED_FUNCTION_10_93();
      sub_1C6FC7E40();
      OUTLINED_FUNCTION_6_123();
      sub_1C75513BC();
      v66 = v127;
      swift_isUniquelyReferenced_nonNull_native();
      v126 = v66;
      sub_1C6FC7E40();
      v67 = v126;
      v127 = v126;
      v68 = *(v65 + 56);
      v69 = *(v68 + 24);
      if (*(v68 + 32))
      {
        v69 = 0.0;
      }

      if (v69 <= 0.0)
      {
        v70 = sub_1C6F78124(v51 - 11, 0x80000001C75B5F10);
        if (v71)
        {
          v72 = v70;
          swift_isUniquelyReferenced_nonNull_native();
          v126 = v67;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720);
          sub_1C7551A2C();
          v73 = v126;

          v74 = *(*(v73 + 56) + 8 * v72);
          sub_1C6F65BE8(0, &qword_1EDD10100);
          sub_1C7551A4C();

          v127 = v73;
        }
      }

      else
      {
        sub_1C75513AC();
        OUTLINED_FUNCTION_5_114();
        OUTLINED_FUNCTION_7_109();
        sub_1C6FC7E40();
        OUTLINED_FUNCTION_6_123();
      }

      v75 = v115;
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_5();
      sub_1C75513BC();
      OUTLINED_FUNCTION_5_114();
      v125 = v63;
      sub_1C6FC7E40();
      v127 = v125;
      OUTLINED_FUNCTION_5();
      sub_1C75513BC();
      OUTLINED_FUNCTION_5_114();
      v124 = v63;
      sub_1C6FC7E40();
      v127 = v124;
      OUTLINED_FUNCTION_5();
      sub_1C75513BC();
      OUTLINED_FUNCTION_5_114();
      v123 = v63;
      sub_1C6FC7E40();
      v127 = v123;
      OUTLINED_FUNCTION_5();
      sub_1C75513BC();
      OUTLINED_FUNCTION_5_114();
      OUTLINED_FUNCTION_0_220();
      sub_1C6FC7E40();
      OUTLINED_FUNCTION_1_158();
      if (qword_1EC213DA8 != -1)
      {
        swift_once();
      }

      v76 = type metadata accessor for MusicMobileAssetsConfigUtility();
      v77 = __swift_project_value_buffer(v76, qword_1EC217400);
      v78 = v112;
      sub_1C70555F8(v77, v112, &qword_1EC216CE8);
      v79 = v114;
      __swift_getEnumTagSinglePayload(v78, 1, v114);
      OUTLINED_FUNCTION_17_86();
      if (v80 == 1)
      {
        sub_1C6FD7FC8(v78, &qword_1EC216CE8);
        v81 = sub_1C754FEEC();
        v82 = sub_1C755119C();
        if (OUTLINED_FUNCTION_7_0(v82))
        {
          v83 = OUTLINED_FUNCTION_127();
          *v83 = 0;
          OUTLINED_FUNCTION_56_1();
          _os_log_impl(v84, v85, v86, v87, v83, 2u);
          v79 = v114;
          OUTLINED_FUNCTION_109();
        }
      }

      else
      {
        v88 = v109;
        sub_1C7503C80(v78, v109, type metadata accessor for MusicMobileAssetsConfig);
        sub_1C6F65BE8(0, &qword_1EC21B178);
        MusicMobileAssetsConfig.dateForAnalytics.getter();
        sub_1C75037BC();
        OUTLINED_FUNCTION_5_114();
        OUTLINED_FUNCTION_0_220();
        sub_1C6FC7E40();
        OUTLINED_FUNCTION_1_158();
        v75 = 0x6C7070612D6E6463;
        sub_1C75513CC();
        OUTLINED_FUNCTION_4_118();
        OUTLINED_FUNCTION_0_220();
        OUTLINED_FUNCTION_19_83();
        sub_1C6FC7E40();
        OUTLINED_FUNCTION_1_158();
        OUTLINED_FUNCTION_15_90(*(v88 + 16));
        v120 = 0x6C7070612D6E6463;
        OUTLINED_FUNCTION_17_86();
        v121 = 0x6C7070612D6E6463;
        sub_1C6FB5E8C();
        sub_1C75515AC();
        sub_1C75513BC();
        OUTLINED_FUNCTION_4_118();
        OUTLINED_FUNCTION_0_220();
        OUTLINED_FUNCTION_19_83();
        sub_1C6FC7E40();
        OUTLINED_FUNCTION_1_158();
        sub_1C75513CC();
        OUTLINED_FUNCTION_4_118();
        OUTLINED_FUNCTION_0_220();
        v79 = v114;
        OUTLINED_FUNCTION_19_83();
        sub_1C6FC7E40();
        OUTLINED_FUNCTION_1_158();
        sub_1C7503CE0(v88, type metadata accessor for MusicMobileAssetsConfig);
      }

      v89 = v113;
      sub_1C70555F8(v77 + *(v76 + 20), v113, &qword_1EC216CE8);
      if (__swift_getEnumTagSinglePayload(v89, 1, v79) == 1)
      {
        sub_1C6FD7FC8(v89, &qword_1EC216CE8);
        v90 = sub_1C754FEEC();
        v91 = sub_1C755119C();
        if (OUTLINED_FUNCTION_7_0(v91))
        {
          v92 = OUTLINED_FUNCTION_127();
          *v92 = 0;
          OUTLINED_FUNCTION_56_1();
          _os_log_impl(v93, v94, v95, v96, v92, 2u);
          OUTLINED_FUNCTION_109();
        }

        OUTLINED_FUNCTION_18_74();
      }

      else
      {
        v97 = v110;
        sub_1C7503C80(v89, v110, type metadata accessor for MusicMobileAssetsConfig);
        sub_1C6F65BE8(0, &qword_1EC21B178);
        MusicMobileAssetsConfig.dateForAnalytics.getter();
        sub_1C75037BC();
        OUTLINED_FUNCTION_5_114();
        OUTLINED_FUNCTION_0_220();
        sub_1C6FC7E40();
        OUTLINED_FUNCTION_1_158();
        sub_1C75513CC();
        OUTLINED_FUNCTION_5_114();
        OUTLINED_FUNCTION_0_220();
        OUTLINED_FUNCTION_11_87();
        OUTLINED_FUNCTION_1_158();
        OUTLINED_FUNCTION_15_90(*(v97 + 16));
        v120 = 0x6C7070612D6E6463;
        v121 = v75;
        sub_1C6FB5E8C();
        sub_1C75515AC();
        sub_1C75513BC();
        OUTLINED_FUNCTION_5_114();
        OUTLINED_FUNCTION_0_220();
        OUTLINED_FUNCTION_11_87();
        OUTLINED_FUNCTION_1_158();
        sub_1C75513CC();
        OUTLINED_FUNCTION_5_114();
        OUTLINED_FUNCTION_0_220();
        OUTLINED_FUNCTION_11_87();
        OUTLINED_FUNCTION_1_158();
        sub_1C7503CE0(v97, type metadata accessor for MusicMobileAssetsConfig);
        OUTLINED_FUNCTION_18_74();
      }

      sub_1C75513BC();
      OUTLINED_FUNCTION_4_118();
      OUTLINED_FUNCTION_0_220();
      OUTLINED_FUNCTION_19_83();
      sub_1C6FC7E40();
      v127 = v122[0];
      v98 = objc_opt_self();
      v99 = sub_1C755065C();
      sub_1C6F65BE8(0, &qword_1EDD10100);
      sub_1C75504FC();
      v100 = sub_1C755048C();

      [v98 sendEvent:v99 withPayload:v100];

      v101 = sub_1C754FEEC();
      v102 = sub_1C75511BC();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v122[0] = swift_slowAlloc();
        *v103 = 136315394;
        *(v103 + 4) = sub_1C6F765A4(0xD00000000000002FLL, 0x80000001C75B5EC0, v122);
        *(v103 + 12) = 2080;
        sub_1C75504FC();
        v104 = sub_1C75504BC();
        v106 = v105;

        v107 = sub_1C6F765A4(v104, v106, v122);

        *(v103 + 14) = v107;
        _os_log_impl(&dword_1C6F5C000, v101, v102, "Sent Music curation analytics for event '%s' with payload: %s", v103, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }
    }

    else
    {
      if (qword_1EC2142E8 != -1)
      {
        OUTLINED_FUNCTION_2_150();
      }

      v36 = sub_1C754FF1C();
      __swift_project_value_buffer(v36, qword_1EC21CC00);
      v37 = sub_1C754FEEC();
      v38 = sub_1C755119C();
      if (OUTLINED_FUNCTION_7_0(v38))
      {
        v39 = OUTLINED_FUNCTION_127();
        *v39 = 0;
        OUTLINED_FUNCTION_56_1();
        _os_log_impl(v40, v41, v42, v43, v39, 2u);
        OUTLINED_FUNCTION_109();
      }
    }
  }

  else
  {
    if (qword_1EC2142E8 != -1)
    {
LABEL_58:
      OUTLINED_FUNCTION_2_150();
    }

    v32 = sub_1C754FF1C();
    __swift_project_value_buffer(v32, qword_1EC21CC00);
    v119 = sub_1C754FEEC();
    v33 = sub_1C755117C();
    if (os_log_type_enabled(v119, v33))
    {
      v34 = OUTLINED_FUNCTION_127();
      *v34 = 0;
      _os_log_impl(&dword_1C6F5C000, v119, v33, "Music curation didn't start so skip sending any analytics", v34, 2u);
      OUTLINED_FUNCTION_109();
    }

    v35 = v119;
  }
}

id sub_1C75037BC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1C755065C();

  v2 = [v0 initWithString_];

  return v2;
}

uint64_t sub_1C7503830()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21CC00);
  __swift_project_value_buffer(v0, qword_1EC21CC00);
  return sub_1C754FEFC();
}

void sub_1C75038B0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v33 = a6;
  v34 = a7;
  v37 = a3;
  v38 = a4;
  v35 = a1;
  v36 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - v9;
  v11 = 1 << *(a5 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a5 + 64);
  v14 = (v11 + 63) >> 6;
  sub_1C75504FC();
  v15 = 0;
  if (v13)
  {
    while (1)
    {
      v16 = v15;
LABEL_8:
      v17 = (*(a5 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v13)))));
      v18 = *v17;
      v19 = v17[1];
      v41[0] = *v17;
      v41[1] = v19;
      v39 = v37;
      v40 = v38;
      v20 = sub_1C754E15C();
      __swift_storeEnumTagSinglePayload(v10, 1, 1, v20);
      sub_1C6FB5E8C();
      sub_1C75504FC();
      sub_1C755157C();
      v22 = v21;
      sub_1C6FD7FC8(v10, &qword_1EC214DF8);
      if ((v22 & 1) == 0)
      {
        break;
      }

      v13 &= v13 - 1;

      v15 = v16;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v30 = sub_1C7268E80(v18, v19, a5);

    if (v30 <= 0.0)
    {
      sub_1C7236C3C();
    }

    else
    {
      sub_1C6F65BE8(0, &qword_1EDD108E0);
      sub_1C75513AC();
      v31 = v34;
      swift_isUniquelyReferenced_nonNull_native();
      v41[0] = *v31;
      sub_1C6FC7E40();
      *v31 = v41[0];
    }
  }

  else
  {
    while (1)
    {
LABEL_5:
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v16 >= v14)
      {
        break;
      }

      v13 = *(a5 + 64 + 8 * v16);
      ++v15;
      if (v13)
      {
        goto LABEL_8;
      }
    }

    if (qword_1EC2142E8 == -1)
    {
      goto LABEL_12;
    }

LABEL_19:
    swift_once();
LABEL_12:
    v23 = sub_1C754FF1C();
    __swift_project_value_buffer(v23, qword_1EC21CC00);
    v24 = v38;
    sub_1C75504FC();
    v25 = v36;
    sub_1C75504FC();
    v26 = sub_1C754FEEC();
    v27 = sub_1C755119C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v41[0] = v29;
      *v28 = 136315394;
      *(v28 + 4) = sub_1C6F765A4(v37, v24, v41);
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_1C6F765A4(v35, v25, v41);
      _os_log_impl(&dword_1C6F5C000, v26, v27, "durationKeyNameFromEvent not found for '%s'. So no duration entry for key '%s'", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v29, -1, -1);
      MEMORY[0x1CCA5F8E0](v28, -1, -1);
    }
  }
}

uint64_t sub_1C7503C80(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C7503CE0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for MusicCurationAnalyticsSender(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C7503DE4()
{
  sub_1C7047818();
  result = sub_1C755146C();
  qword_1EDD07118 = result;
  return result;
}

uint64_t sub_1C7503E4C()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD070F0);
  __swift_project_value_buffer(v0, qword_1EDD070F0);
  if (qword_1EDD07110 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDD07118;
  return sub_1C754FF2C();
}

uint64_t PromptSuggestionEmbeddingCalculator.__allocating_init()()
{
  v0 = swift_allocObject();
  PromptSuggestionEmbeddingCalculator.init()();
  return v0;
}

uint64_t PromptSuggestionEmbeddingCalculator.init()()
{
  v1 = v0;
  v2 = sub_1C7503F9C();
  v3 = [objc_opt_self() sentenceEmbeddingForLanguage_];

  *(v1 + 16) = v3;
  return v1;
}

id sub_1C7503F9C()
{
  v0 = sub_1C754E13C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2177A8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_1C754E15C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C754E11C();
  sub_1C754E14C();
  sub_1C754E12C();
  (*(v1 + 8))(v3, v0);
  v11 = sub_1C754E07C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    sub_1C7196DE0(v6);
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = sub_1C754E05C();
    v13 = v14;
    (*(*(v11 - 8) + 8))(v6, v11);
  }

  v15 = sub_1C754E04C();
  v17 = v16;
  v38 = v15;
  v18 = sub_1C7504420(v12, v13, v15, v16);
  if (qword_1EDD070E8 != -1)
  {
    swift_once();
  }

  v19 = sub_1C754FF1C();
  __swift_project_value_buffer(v19, qword_1EDD070F0);
  sub_1C75504FC();
  sub_1C75504FC();
  v20 = v18;
  v21 = sub_1C754FEEC();
  v22 = sub_1C75511BC();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v37 = v8;
    v24 = v23;
    v36 = swift_slowAlloc();
    v39 = v20;
    v40 = v36;
    *v24 = 136315650;
    type metadata accessor for NLLanguage(0);
    v25 = v20;
    v26 = sub_1C75506EC();
    v28 = sub_1C6F765A4(v26, v27, &v40);
    v35 = v7;
    v29 = v28;

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    if (v13)
    {
      v30 = v12;
    }

    else
    {
      v30 = 0x6E776F6E6B6E75;
    }

    if (!v13)
    {
      v13 = 0xE700000000000000;
    }

    v31 = sub_1C6F765A4(v30, v13, &v40);

    *(v24 + 14) = v31;
    *(v24 + 22) = 2080;
    v32 = sub_1C6F765A4(v38, v17, &v40);

    *(v24 + 24) = v32;
    _os_log_impl(&dword_1C6F5C000, v21, v22, "NlLanguage %s for %s and %s", v24, 0x20u);
    v33 = v36;
    swift_arrayDestroy();
    MEMORY[0x1CCA5F8E0](v33, -1, -1);
    MEMORY[0x1CCA5F8E0](v24, -1, -1);

    (*(v37 + 8))(v10, v35);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  return v20;
}

id sub_1C7504420(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    v8 = a1 == 28261 && a2 == 0xE200000000000000;
    if (v8 || (sub_1C7551DBC() & 1) != 0)
    {
      goto LABEL_67;
    }

    v9 = a1 == 25956 && a2 == 0xE200000000000000;
    if (v9 || (sub_1C7551DBC() & 1) != 0)
    {
      v10 = MEMORY[0x1E6977768];
      goto LABEL_68;
    }

    v11 = a1 == 29541 && a2 == 0xE200000000000000;
    if (v11 || (sub_1C7551DBC() & 1) != 0)
    {
      v10 = MEMORY[0x1E6977860];
      goto LABEL_68;
    }

    v12 = a1 == 29286 && a2 == 0xE200000000000000;
    if (v12 || (sub_1C7551DBC() & 1) != 0)
    {
      v10 = MEMORY[0x1E6977758];
      goto LABEL_68;
    }

    v13 = a1 == 29801 && a2 == 0xE200000000000000;
    if (v13 || (sub_1C7551DBC() & 1) != 0)
    {
      v10 = MEMORY[0x1E69777A8];
      goto LABEL_68;
    }

    v14 = a1 == 24938 && a2 == 0xE200000000000000;
    if (v14 || (sub_1C7551DBC() & 1) != 0)
    {
      v10 = MEMORY[0x1E69777B0];
      goto LABEL_68;
    }

    v15 = a1 == 28523 && a2 == 0xE200000000000000;
    if (v15 || (sub_1C7551DBC() & 1) != 0)
    {
      v10 = MEMORY[0x1E69777D0];
      goto LABEL_68;
    }

    v16 = a1 == 29808 && a2 == 0xE200000000000000;
    if (v16 || (sub_1C7551DBC() & 1) != 0)
    {
      v10 = MEMORY[0x1E6977820];
      goto LABEL_68;
    }
  }

  v17 = a3 == 0x746E61485F687ALL && a4 == 0xE700000000000000;
  if (v17 || (sub_1C7551DBC() & 1) != 0)
  {
    v10 = MEMORY[0x1E6977890];
    goto LABEL_68;
  }

  if (a2)
  {
    v18 = a1 == 26746 && a2 == 0xE200000000000000;
    if (v18 || (sub_1C7551DBC() & 1) != 0)
    {
      v10 = MEMORY[0x1E6977848];
      goto LABEL_68;
    }
  }

  if (qword_1EDD070E8 != -1)
  {
    swift_once();
  }

  v19 = sub_1C754FF1C();
  __swift_project_value_buffer(v19, qword_1EDD070F0);
  sub_1C75504FC();
  v20 = sub_1C754FEEC();
  v21 = sub_1C755119C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v26 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_1C6F765A4(a3, a4, &v26);
    _os_log_impl(&dword_1C6F5C000, v20, v21, "Unexpected locale: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1CCA5F8E0](v23, -1, -1);
    MEMORY[0x1CCA5F8E0](v22, -1, -1);
  }

LABEL_67:
  v10 = MEMORY[0x1E6977748];
LABEL_68:
  v24 = *v10;

  return v24;
}

Swift::OpaquePointer_optional __swiftcall PromptSuggestionEmbeddingCalculator.embedding(for:)(Swift::String a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v2;
    v4 = sub_1C755110C();

    a1._countAndFlagsBits = v4;
  }

  else
  {
    a1._countAndFlagsBits = 0;
  }

  return *&a1._countAndFlagsBits;
}

uint64_t PromptSuggestionEmbeddingCalculator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

__CFString *PNExternalAssetRelevanceProcessingVersionDescription(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 8)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Processed (v.%llu)", 8];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Need re-processing (v.%llu)", a1];
    }
    v2 = ;
  }

  else
  {
    v2 = @"Not processed";
  }

  return v2;
}

void sub_1C75053D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C750BF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__362(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void PNUserDefaultPhotosAppFinishedLaunching()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = [v1 isEqualToString:*MEMORY[0x1E69BFF18]];

  if (v2)
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mobileslideshow"];
  }

  v4 = v3;
  if (v3)
  {
    v5 = [MEMORY[0x1E695DF00] date];
    [v4 setValue:v5 forKey:@"PNUserDefaultPhotosAppLastLaunchDateKey"];

    CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to init user defaults", v6, 2u);
  }
}

void sub_1C7512C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__688(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C7513EC4(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose(&STACK[0x280], 8);
  _Unwind_Resume(a1);
}

id getGDViewServiceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getGDViewServiceClass_softClass;
  v7 = getGDViewServiceClass_softClass;
  if (!getGDViewServiceClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getGDViewServiceClass_block_invoke;
    v3[3] = &unk_1E82A2920;
    v3[4] = &v4;
    __getGDViewServiceClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C751B31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getGDAutonamingViewPhotosAutonamingViewName()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getGDAutonamingViewPhotosAutonamingViewNameSymbolLoc_ptr;
  v9 = getGDAutonamingViewPhotosAutonamingViewNameSymbolLoc_ptr;
  if (!getGDAutonamingViewPhotosAutonamingViewNameSymbolLoc_ptr)
  {
    v1 = IntelligencePlatformLibrary();
    v7[3] = dlsym(v1, "GDAutonamingViewPhotosAutonamingViewName");
    getGDAutonamingViewPhotosAutonamingViewNameSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getGDAutonamingViewPhotosAutonamingViewName(void)"];
    [v4 handleFailureInFunction:v5 file:@"PNPersonSuggester.m" lineNumber:37 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1C751B480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getGDAutonamingViewPhotosAutonamingViewNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IntelligencePlatformLibrary();
  result = dlsym(v2, "GDAutonamingViewPhotosAutonamingViewName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getGDAutonamingViewPhotosAutonamingViewNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *IntelligencePlatformLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!IntelligencePlatformLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __IntelligencePlatformLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E82A2018;
    v6 = 0;
    IntelligencePlatformLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = IntelligencePlatformLibraryCore_frameworkLibrary;
  if (!IntelligencePlatformLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IntelligencePlatformLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"PNPersonSuggester.m" lineNumber:25 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __IntelligencePlatformLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  IntelligencePlatformLibraryCore_frameworkLibrary = result;
  return result;
}

void __getGDViewServiceClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("GDViewService");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getGDViewServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getGDViewServiceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PNPersonSuggester.m" lineNumber:29 description:{@"Unable to find class %s", "GDViewService"}];

    __break(1u);
  }
}

void sub_1C751B9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1015(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getMADTextEmbeddingRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMADTextEmbeddingRequestClass_softClass;
  v7 = getMADTextEmbeddingRequestClass_softClass;
  if (!getMADTextEmbeddingRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMADTextEmbeddingRequestClass_block_invoke;
    v3[3] = &unk_1E82A2920;
    v3[4] = &v4;
    __getMADTextEmbeddingRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C7523E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMADServiceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMADServiceClass_softClass;
  v7 = getMADServiceClass_softClass;
  if (!getMADServiceClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMADServiceClass_block_invoke;
    v3[3] = &unk_1E82A2920;
    v3[4] = &v4;
    __getMADServiceClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C7523F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMADServiceClass_block_invoke(uint64_t a1)
{
  MediaAnalysisServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MADService");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMADServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMADServiceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PNTextEmbeddingService.m" lineNumber:31 description:{@"Unable to find class %s", "MADService"}];

    __break(1u);
  }
}

void MediaAnalysisServicesLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!MediaAnalysisServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __MediaAnalysisServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E82A2110;
    v5 = 0;
    MediaAnalysisServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MediaAnalysisServicesLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaAnalysisServicesLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"PNTextEmbeddingService.m" lineNumber:30 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __MediaAnalysisServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MediaAnalysisServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void __getMADTextEmbeddingRequestClass_block_invoke(uint64_t a1)
{
  MediaAnalysisServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MADTextEmbeddingRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMADTextEmbeddingRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMADTextEmbeddingRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PNTextEmbeddingService.m" lineNumber:32 description:{@"Unable to find class %s", "MADTextEmbeddingRequest"}];

    __break(1u);
  }
}

void sub_1C7529948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C752A524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1796(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C752B4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C7539E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3141(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C753B014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}

void sub_1C7540744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C7540934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C75428EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C7542AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMADGenerationServiceClass_block_invoke(uint64_t a1)
{
  if (!MediaAnalysisLibraryCore_frameworkLibrary)
  {
    MediaAnalysisLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("MADGenerationService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMADGenerationServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaAnalysisLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MediaAnalysisLibraryCore_frameworkLibrary = result;
  return result;
}

id _AnalysisProgressQueue()
{
  if (_AnalysisProgressQueue_onceToken != -1)
  {
    dispatch_once(&_AnalysisProgressQueue_onceToken, &__block_literal_global_3819);
  }

  v1 = _AnalysisProgressQueue__serial_queue;

  return v1;
}

void sub_1C7547718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4025(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C7547968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C7547BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C75480C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

void sub_1C75487A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C7548978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSBSWidgetMetricsServiceClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __SpringBoardServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E82A2940;
    v8 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SpringBoardServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PNCropUtilitiesWrapper.m" lineNumber:16 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SBSWidgetMetricsService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSBSWidgetMetricsServiceClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PNCropUtilitiesWrapper.m" lineNumber:17 description:{@"Unable to find class %s", "SBSWidgetMetricsService"}];

LABEL_10:
    __break(1u);
  }

  getSBSWidgetMetricsServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}