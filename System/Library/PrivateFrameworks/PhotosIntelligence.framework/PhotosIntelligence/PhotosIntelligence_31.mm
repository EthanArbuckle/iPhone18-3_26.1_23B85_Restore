uint64_t sub_1C71A78EC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1C755180C();
  sub_1C75504FC();

  v16 = a1;
  MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
  v5 = a3[3];
  v6 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v5);
  v7 = (*(v6 + 16))(v5, v6);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v7 = 0x64656D616E6E55;
    v9 = 0xE700000000000000;
  }

  MEMORY[0x1CCA5CD70](v7, v9);

  MEMORY[0x1CCA5CD70](0x776F64616873202CLL, 0xEF203A656D616E20);
  v10 = a3[3];
  v11 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v10);
  v12 = (*(v11 + 24))(v10, v11);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v12 = 0x6F64616873206F4ELL;
    v14 = 0xEE00656D616E2077;
  }

  MEMORY[0x1CCA5CD70](v12, v14);

  return v16;
}

uint64_t FreeformStoryChapterCurator.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  memcpy(__dst, (v0 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_storyElements), 0x130uLL);
  sub_1C6FE0DC0(__dst);

  v3 = *(v0 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_storyPhotoLibraryContext);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_storyAssetsFetcher);
  sub_1C71A8268(v0 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_assetRichDescriptionsGenerator, type metadata accessor for AssetRichDescriptionsGenerator);

  sub_1C71A8268(v0 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_assetCurationDiagnosticsGenerator, type metadata accessor for AssetCurationDiagnosticsGenerator);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_aiEventReporting);
  return v0;
}

uint64_t FreeformStoryChapterCurator.__deallocating_deinit()
{
  FreeformStoryChapterCurator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C71A7C1C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 106;
  }

  else
  {
    return 105;
  }
}

uint64_t sub_1C71A7C2C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E698C2B0];
  sub_1C754F8AC();
  OUTLINED_FUNCTION_12();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

void sub_1C71A7C9C()
{
  sub_1C71A8124();

  JUMPOUT(0x1CCA5BE40);
}

uint64_t sub_1C71A7CD8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1C71A7D18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for FreeformStoryChapterCurator()
{
  result = qword_1EDD08E50;
  if (!qword_1EDD08E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C71A7DC8()
{
  result = sub_1C754FF1C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AssetRichDescriptionsGenerator();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for AssetCurationDiagnosticsGenerator();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1C71A7F7C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C71A7FBC(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C71A8020()
{
  result = qword_1EC218898;
  if (!qword_1EC218898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218898);
  }

  return result;
}

unint64_t sub_1C71A8078()
{
  result = qword_1EC2188A0;
  if (!qword_1EC2188A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2188A0);
  }

  return result;
}

unint64_t sub_1C71A80D0()
{
  result = qword_1EC2188A8;
  if (!qword_1EC2188A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2188A8);
  }

  return result;
}

unint64_t sub_1C71A8124()
{
  result = qword_1EC2188B0;
  if (!qword_1EC2188B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2188B0);
  }

  return result;
}

uint64_t sub_1C71A8204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LLMConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C71A8268(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C71A82D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C71A8320(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  v4 = OUTLINED_FUNCTION_90();
  v5(v4);
  return a2;
}

uint64_t sub_1C71A837C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_1C71A83BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C71A8434()
{
  result = qword_1EDD0A670;
  if (!qword_1EDD0A670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A670);
  }

  return result;
}

unint64_t sub_1C71A8488()
{
  result = qword_1EDD06B78;
  if (!qword_1EDD06B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2188C0);
    sub_1C71A850C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06B78);
  }

  return result;
}

unint64_t sub_1C71A850C()
{
  result = qword_1EDD0A638;
  if (!qword_1EDD0A638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A638);
  }

  return result;
}

unint64_t sub_1C71A8560()
{
  result = qword_1EDD0C438;
  if (!qword_1EDD0C438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0C438);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ChapterCurationInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C71A8694()
{
  result = qword_1EC2188C8;
  if (!qword_1EC2188C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2188C8);
  }

  return result;
}

unint64_t sub_1C71A86EC()
{
  result = qword_1EDD0A660;
  if (!qword_1EDD0A660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A660);
  }

  return result;
}

unint64_t sub_1C71A8744()
{
  result = qword_1EDD0A668;
  if (!qword_1EDD0A668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A668);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_29()
{
  *(v1 + 1184) = v0;

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_43_18(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2048;
  return result;
}

uint64_t OUTLINED_FUNCTION_55_14()
{

  return sub_1C754FEEC();
}

uint64_t OUTLINED_FUNCTION_56_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_1C6F765A4(a2, v5, va);
}

uint64_t OUTLINED_FUNCTION_60_11()
{

  return swift_slowAlloc();
}

void *OUTLINED_FUNCTION_76_9()
{

  return memcpy((v0 + 16), (v0 + 352), 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_77_9()
{
}

uint64_t sub_1C71A8934(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v3 < v2)
  {
    return 1;
  }

  if (v2 != v3)
  {
    return 0;
  }

  v4 = *a1;
  v5 = *a2;
  v6 = *(*a1 + 16);
  v7 = *(*a2 + 16);
  if (v7 < v6)
  {
    return 1;
  }

  v9 = v6 && v6 == v7;
  if (v9 && (*(v5 + 32) == *(v4 + 32) ? (v10 = *(v5 + 40) == *(v4 + 40)) : (v10 = 0), !v10))
  {
    return sub_1C7551DBC();
  }

  else
  {
    return 0;
  }
}

uint64_t static SummarizationAssetCluster.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_1C70020D4(*a1, *a2) & (v2 == v3);
}

uint64_t SummarizationAssetCluster.hash(into:)()
{
  v1 = *(v0 + 8);
  sub_1C70418D0();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x1CCA5E4A0](*&v2);
}

uint64_t SummarizationAssetCluster.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1C7551F3C();
  sub_1C70418D0();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1CCA5E4A0](*&v2);
  return sub_1C7551FAC();
}

uint64_t sub_1C71A8AA4()
{
  sub_1C7551F3C();
  SummarizationAssetCluster.hash(into:)();
  return sub_1C7551FAC();
}

uint64_t CLIPBasedAssetSummarizer.init(vectorFetchingBlock:scoreFetchingBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  type metadata accessor for SummarizationCLIPClusterer();
  v9 = swift_allocObject();
  v10 = (v9 + qword_1EC21A840);
  *v10 = a1;
  v10[1] = a2;
  v11 = (v9 + qword_1EC21A848);
  *v11 = sub_1C71A8EB8;
  v11[1] = v8;

  sub_1C754F55C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2188D0);
  swift_allocObject();
  sub_1C754F4EC();
  type metadata accessor for Random();
  swift_allocObject();

  v12 = Random.init(randomSeed:)(1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2188D8);
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = j___s18PhotosIntelligence15PairwiseMetricsO14cosineDistanceySfAA11FloatVectorV_AFtFZ_0;
  v13[5] = 0;
  v13[6] = v12;
  sub_1C71A8EC0();
  sub_1C71A8F18();

  v14 = sub_1C754F0AC();

  return v14;
}

uint64_t sub_1C71A8D08@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  result = a2();
  v6 = 0;
  v7 = 1 << *(result + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(result + 64);
  v10 = (v7 + 63) >> 6;
  v11 = 0.0;
  if (v9)
  {
    while (1)
    {
      v12 = v6;
LABEL_9:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v11 = v11 + *(*(result + 56) + ((v12 << 9) | (8 * v13))) + -0.4;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(result + 64 + 8 * v12);
    ++v6;
    if (v9)
    {
      v6 = v12;
      goto LABEL_9;
    }
  }

  *a3 = a1;
  *(a3 + 8) = v11;

  return sub_1C75504FC();
}

uint64_t sub_1C71A8E08(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v4 = a2[1];
  v7[0] = *a1;
  v7[1] = v2;
  v6[0] = v3;
  v6[1] = v4;
  return sub_1C71A8934(v7, v6) & 1;
}

uint64_t CLIPBasedAssetSummarizer.__deallocating_deinit()
{
  _s18PhotosIntelligence24CLIPBasedAssetSummarizerCfd_0();

  return swift_deallocClassInstance();
}

unint64_t sub_1C71A8EC0()
{
  result = qword_1EC2188E0;
  if (!qword_1EC2188E0)
  {
    type metadata accessor for SummarizationCLIPClusterer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2188E0);
  }

  return result;
}

unint64_t sub_1C71A8F18()
{
  result = qword_1EC2188E8;
  if (!qword_1EC2188E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2188D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2188E8);
  }

  return result;
}

unint64_t sub_1C71A8F80()
{
  result = qword_1EC2188F0;
  if (!qword_1EC2188F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2188F0);
  }

  return result;
}

unint64_t sub_1C71A8FD8()
{
  result = qword_1EC2188F8;
  if (!qword_1EC2188F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2188F8);
  }

  return result;
}

unint64_t sub_1C71A9030()
{
  result = qword_1EC218900;
  if (!qword_1EC218900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218900);
  }

  return result;
}

uint64_t type metadata accessor for CLIPBasedAssetSummarizer()
{
  result = qword_1EC218908;
  if (!qword_1EC218908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t StoryPromptAttributes.jsonDescription.getter()
{
  v0 = sub_1C75506DC();
  MEMORY[0x1EEE9AC00](v0 - 8);
  OUTLINED_FUNCTION_14_0();
  sub_1C754D7AC();
  swift_allocObject();
  sub_1C754D79C();
  sub_1C71A9314();
  v2 = sub_1C754D78C();
  v4 = v3;
  sub_1C75506CC();
  v5 = sub_1C75506AC();
  v7 = v6;
  sub_1C6FC1640(v2, v4);
  if (v7)
  {
  }

  else
  {
    v1 = StoryPromptAttributes.description.getter();
    MEMORY[0x1CCA5CD70](v1);

    return 0xD000000000000038;
  }

  return v5;
}

unint64_t sub_1C71A9314()
{
  result = qword_1EDD09EF8;
  if (!qword_1EDD09EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09EF8);
  }

  return result;
}

BOOL static StoryPromptAttributes.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 40);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 40);
  if (!*a1)
  {
    v30 = *(a2 + 32);
    v31 = *(a1 + 32);
    v32 = *(a1 + 41);
    v33 = *(a2 + 41);
    sub_1C71AACA4(0);
    if (!v6)
    {
      sub_1C71AACA4(0);
      sub_1C71AACF0(0);
      goto LABEL_15;
    }

    v14 = OUTLINED_FUNCTION_45();
    sub_1C71AACA4(v14);
    goto LABEL_11;
  }

  if (!v6)
  {
    v20 = OUTLINED_FUNCTION_1_69();
    sub_1C71AACA4(v20);
    sub_1C71AACA4(0);
    v21 = OUTLINED_FUNCTION_1_69();
    sub_1C71AACA4(v21);

LABEL_11:
    v22 = OUTLINED_FUNCTION_1_69();
    sub_1C71AACF0(v22);
    v19 = OUTLINED_FUNCTION_45();
    goto LABEL_12;
  }

  v30 = *(a2 + 32);
  v31 = *(a1 + 32);
  v32 = *(a1 + 41);
  v33 = *(a2 + 41);
  if ((sub_1C70020D4(*a1, v6) & 1) == 0 || (sub_1C70020D4(v2, v5) & 1) == 0)
  {
    v15 = OUTLINED_FUNCTION_1_69();
    sub_1C71AACA4(v15);
    v16 = OUTLINED_FUNCTION_45();
    sub_1C71AACA4(v16);
    v17 = OUTLINED_FUNCTION_1_69();
    sub_1C71AACA4(v17);
    v18 = OUTLINED_FUNCTION_45();
    sub_1C71AACF0(v18);

    v19 = OUTLINED_FUNCTION_1_69();
LABEL_12:
    sub_1C71AACF0(v19);
    return 0;
  }

  v29 = sub_1C70020D4(v3, v7);
  v9 = OUTLINED_FUNCTION_1_69();
  sub_1C71AACA4(v9);
  v10 = OUTLINED_FUNCTION_45();
  sub_1C71AACA4(v10);
  v11 = OUTLINED_FUNCTION_1_69();
  sub_1C71AACA4(v11);
  v12 = OUTLINED_FUNCTION_45();
  sub_1C71AACF0(v12);

  v13 = OUTLINED_FUNCTION_1_69();
  sub_1C71AACF0(v13);
  if ((v29 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v24 = OUTLINED_FUNCTION_98_1();
  sub_1C70039DC(v24, v25);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    v27 = v33;
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (v31 == v30)
    {
      v28 = v8;
    }

    else
    {
      v28 = 1;
    }

    v27 = v33;
    if (v28)
    {
      return 0;
    }
  }

  if (v32 != 2)
  {
    return v27 != 2 && ((v27 ^ v32) & 1) == 0;
  }

  return v27 == 2;
}

uint64_t sub_1C71A95AC()
{
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C755180C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  sub_1C703328C();
  OUTLINED_FUNCTION_13_40();

  v0 = OUTLINED_FUNCTION_98_1();
  MEMORY[0x1CCA5CD70](v0);

  MEMORY[0x1CCA5CD70](0x7369747241207C20, 0xEB000000003D7374);
  v1 = OUTLINED_FUNCTION_13_40();
  v3 = v2;

  MEMORY[0x1CCA5CD70](v1, v3);

  MEMORY[0x1CCA5CD70](0x65726E6547207C20, 0xEA00000000003D73);
  v4 = OUTLINED_FUNCTION_13_40();
  v6 = v5;

  MEMORY[0x1CCA5CD70](v4, v6);

  return 0x3D73656C746954;
}

uint64_t static StoryPromptAttributes.Music.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_1C70020D4(*a1, *a2) & 1) == 0 || (sub_1C70020D4(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_1C70020D4(v3, v5);
}

uint64_t sub_1C71A97B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C746974 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73747369747261 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7365726E6567 && a2 == 0xE600000000000000)
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

uint64_t sub_1C71A98B8(char a1)
{
  if (!a1)
  {
    return 0x73656C746974;
  }

  if (a1 == 1)
  {
    return 0x73747369747261;
  }

  return 0x7365726E6567;
}

uint64_t sub_1C71A9910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C71A97B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C71A9938(uint64_t a1)
{
  v2 = sub_1C71ABC94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C71A9974(uint64_t a1)
{
  v2 = sub_1C71ABC94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StoryPromptAttributes.Music.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218918);
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_61_1();
  v5 = OUTLINED_FUNCTION_98_1();
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v7 = sub_1C71ABC94();
  sub_1C75504FC();
  OUTLINED_FUNCTION_365();
  sub_1C755200C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  sub_1C6FF60E4(&qword_1EDD0CF60);
  OUTLINED_FUNCTION_6_8();

  if (!v7)
  {
    OUTLINED_FUNCTION_6_8();
    OUTLINED_FUNCTION_6_8();
  }

  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_125();
}

void StoryPromptAttributes.Music.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_124();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218928);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25_20();
  sub_1C71ABC94();
  OUTLINED_FUNCTION_365();
  sub_1C7551FFC();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C6FF60E4(&qword_1EDD0CF50);
    OUTLINED_FUNCTION_2_62();
    sub_1C7551C1C();
    OUTLINED_FUNCTION_2_62();
    sub_1C7551C1C();
    OUTLINED_FUNCTION_2_62();
    sub_1C7551C1C();
    v16 = OUTLINED_FUNCTION_19_0();
    v17(v16);
    *v14 = a10;
    v14[1] = a10;
    v14[2] = a10;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_125();
}

uint64_t StoryPromptAttributes.Mood.rawString.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

uint64_t StoryPromptAttributes.Mood.init(rawString:memoryMood:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  return result;
}

uint64_t static StoryPromptAttributes.Mood.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_1C7551DBC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v7)
    {
      v11 = v8;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1C71A9E90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69727453776172 && a2 == 0xE900000000000067;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F4D79726F6D656DLL && a2 == 0xEA0000000000646FLL)
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

uint64_t sub_1C71A9F68(char a1)
{
  if (a1)
  {
    return 0x6F4D79726F6D656DLL;
  }

  else
  {
    return 0x6E69727453776172;
  }
}

uint64_t sub_1C71A9FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C71A9E90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C71A9FD8(uint64_t a1)
{
  v2 = sub_1C71ABCE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C71AA014(uint64_t a1)
{
  v2 = sub_1C71ABCE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StoryPromptAttributes.Mood.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218930);
  OUTLINED_FUNCTION_3_0();
  v9 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_61_1();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C71ABCE8();
  sub_1C755200C();
  OUTLINED_FUNCTION_98_1();
  sub_1C7551C7C();
  if (!v0)
  {
    type metadata accessor for PHMemoryMood(0);
    OUTLINED_FUNCTION_9_45();
    sub_1C71AC3C8(v7, v8);
    sub_1C7551CBC();
  }

  (*(v9 + 8))(v1, v4);
  OUTLINED_FUNCTION_125();
}

void StoryPromptAttributes.Mood.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218940);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  OUTLINED_FUNCTION_25_20();
  sub_1C71ABCE8();
  OUTLINED_FUNCTION_365();
  sub_1C7551FFC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v11 = sub_1C7551B6C();
    v13 = v12;
    type metadata accessor for PHMemoryMood(0);
    OUTLINED_FUNCTION_9_45();
    sub_1C71AC3C8(v14, v15);
    sub_1C7551BAC();
    (*(v7 + 8))(v10, v5);
    v16 = v18;
    v17 = v19;
    *v4 = v11;
    *(v4 + 8) = v13;
    *(v4 + 16) = v16;
    *(v4 + 24) = v17;
    sub_1C75504FC();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_125();
}

uint64_t StoryPromptAttributes.music.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1C71AACA4(v2);
}

uint64_t StoryPromptAttributes.moods.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

void StoryPromptAttributes.init(queryTokens:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v7 = v6 - v5;
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v58 = *(TokenSuggestion - 8);
  MEMORY[0x1EEE9AC00](TokenSuggestion - 8);
  OUTLINED_FUNCTION_14_0();
  v11 = v10 - v9;
  v12 = *(a1 + 16);
  if (!v12)
  {

    v42 = 0;
    v43 = 0;
    v16 = 0;
    v44 = 0;
    v45 = MEMORY[0x1E69E7CC0];
    v46 = 1;
    v47 = 2;
    goto LABEL_52;
  }

  LOBYTE(v13) = 0;
  v14 = 0;
  v50 = a1 + 32;
  v15 = *(a1 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  v54 = MEMORY[0x1E69E7CC0];
  v55 = MEMORY[0x1E69E7CC0];
  v56 = MEMORY[0x1E69E7CC0];
  v48 = v15;
  v49 = a1;
  while (1)
  {
    if (v14 >= v15)
    {
      __break(1u);
      return;
    }

    v17 = (v50 + 120 * v14);
    a2 = v17[10];
    ++v14;
    v18 = *(a2 + 16);
    if (v18)
    {
      break;
    }

LABEL_44:
    if (v14 == v12)
    {

      if ((v13 & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

LABEL_45:
    v15 = *(a1 + 16);
  }

  v57 = v17[2];
  v19 = v17[3];
  v20 = a2 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
  v53 = v14;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  OUTLINED_FUNCTION_29_20();
  swift_bridgeObjectRetain_n();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v21 = 0;
  while (2)
  {
    v22 = v21;
LABEL_7:
    if (v22 < *(a2 + 16))
    {
      sub_1C71AC0CC(v20 + *(v58 + 72) * v22, v11, type metadata accessor for QueryTokenSuggestion);
      sub_1C71AC0CC(v11, v7, type metadata accessor for QueryTokenCategoryType);
      sub_1C71615C8(v11, type metadata accessor for QueryTokenSuggestion);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0xAu:
          v52 = *(*v7 + 16);
          if (v52)
          {
            v51 = *(*v7 + 32);
          }

          else
          {
            v51 = 0;
          }

          sub_1C75504FC();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_24_0();
            sub_1C6FB3A08();
            v56 = v36;
          }

          v33 = *(v56 + 16);
          v34 = v33 + 1;
          if (v33 >= *(v56 + 24) >> 1)
          {
            sub_1C6FB3A08();
            v34 = v33 + 1;
            v56 = v37;
          }

          *(v56 + 16) = v34;
          v35 = v56 + 32 * v33;
          *(v35 + 32) = v57;
          *(v35 + 40) = v19;
          *(v35 + 48) = v51;
          *(v35 + 56) = v52 == 0;
          goto LABEL_38;
        case 0xBu:
          goto LABEL_38;
        case 0xFu:
          sub_1C75504FC();
          v30 = v55;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_24_0();
            sub_1C6FB1814();
            v30 = v40;
          }

          v31 = v30;
          v13 = *(v30 + 16);
          v55 = v31;
          v32 = *(v31 + 24);
          if (v13 >= v32 >> 1)
          {
            OUTLINED_FUNCTION_3_4(v32);
            sub_1C6FB1814();
            v55 = v41;
          }

          *(v55 + 16) = v13 + 1;
          OUTLINED_FUNCTION_26_25();
          if (!v29)
          {
            continue;
          }

          OUTLINED_FUNCTION_29_20();
          swift_bridgeObjectRelease_n();
          goto LABEL_42;
        case 0x10u:
          sub_1C75504FC();
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v27 = v54;
          }

          else
          {
            OUTLINED_FUNCTION_24_0();
            sub_1C6FB1814();
            v27 = v38;
          }

          v13 = *(v27 + 16);
          v28 = *(v27 + 24);
          if (v13 >= v28 >> 1)
          {
            OUTLINED_FUNCTION_3_4(v28);
            sub_1C6FB1814();
            v27 = v39;
          }

          *(v27 + 16) = v13 + 1;
          v54 = v27;
          OUTLINED_FUNCTION_26_25();
          if (!v29)
          {
            continue;
          }

          goto LABEL_41;
        case 0x11u:
          sub_1C75504FC();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_24_0();
            sub_1C6FB1814();
            v16 = v25;
          }

          v13 = *(v16 + 16);
          v23 = *(v16 + 24);
          if (v13 >= v23 >> 1)
          {
            OUTLINED_FUNCTION_3_4(v23);
            sub_1C6FB1814();
            v16 = v26;
          }

          ++v22;
          *(v16 + 16) = v13 + 1;
          v24 = v16 + 16 * v13;
          *(v24 + 32) = v57;
          *(v24 + 40) = v19;
          LOBYTE(v13) = 1;
          if (v18 != v22)
          {
            goto LABEL_7;
          }

LABEL_41:

          OUTLINED_FUNCTION_29_20();
          swift_bridgeObjectRelease_n();

LABEL_42:
          v12 = v48;
          v14 = v53;
          if (v53 != v48)
          {
            a1 = v49;
            goto LABEL_45;
          }

          break;
        default:
          OUTLINED_FUNCTION_11_36();
LABEL_38:
          v21 = v22 + 1;
          if (v18 - 1 != v22)
          {
            continue;
          }

          OUTLINED_FUNCTION_29_20();
          swift_bridgeObjectRelease_n();
          v12 = v48;
          a1 = v49;
          v14 = v53;
          goto LABEL_44;
      }

LABEL_49:
      OUTLINED_FUNCTION_30_22();
      v42 = v55;
      v45 = v56;
      v43 = v54;
      goto LABEL_52;
    }

    break;
  }

  __break(1u);
LABEL_51:

  v16 = 0;
  OUTLINED_FUNCTION_30_22();
  v45 = v56;
LABEL_52:
  *a2 = v42;
  *(a2 + 8) = v43;
  *(a2 + 16) = v16;
  *(a2 + 24) = v45;
  *(a2 + 32) = v44;
  *(a2 + 40) = v46 & 1;
  *(a2 + 41) = v47;
}

uint64_t StoryPromptAttributes.description.getter()
{
  v1 = *v0;
  v2 = v0[3];
  sub_1C755180C();
  if (v1)
  {
    v3 = sub_1C71A95AC();
    v5 = v4;
  }

  else
  {
    v5 = 0xEA00000000003E63;
    v3 = 0x6973756D206F4E3CLL;
  }

  MEMORY[0x1CCA5CD70](v3, v5);

  MEMORY[0x1CCA5CD70](0x3D73646F6F4D202CLL, 0xE800000000000000);
  v6 = MEMORY[0x1CCA5D090](v2, &type metadata for StoryPromptAttributes.Mood);
  MEMORY[0x1CCA5CD70](v6);

  MEMORY[0x1CCA5CD70](0x697461727564202CLL, 0xEB000000003D6E6FLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218948);
  v7 = sub_1C75506EC();
  MEMORY[0x1CCA5CD70](v7);

  MEMORY[0x1CCA5CD70](0x706972547369202CLL, 0xE90000000000003DLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217C98);
  v8 = sub_1C75506EC();
  MEMORY[0x1CCA5CD70](v8);

  return 0;
}

uint64_t sub_1C71AACA4(uint64_t result)
{
  if (result)
  {
    sub_1C75504FC();
    sub_1C75504FC();

    return sub_1C75504FC();
  }

  return result;
}

uint64_t sub_1C71AACF0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void static StoryPromptAttributes.attributes(from:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = 44;
  v72 = 0xE100000000000000;
  v68 = &v71;
  sub_1C75504FC();
  v5 = sub_1C71ABD80(0x7FFFFFFFFFFFFFFFLL, 1, sub_1C70551E4, v67, a1, a2);
  v6 = *(v5 + 16);
  if (v6)
  {
    v71 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v7 = v71;
    v8 = (v5 + 56);
    do
    {
      v10 = *(v8 - 3);
      v9 = *(v8 - 2);
      v11 = *(v8 - 1);
      v12 = *v8;
      sub_1C75504FC();
      v13 = MEMORY[0x1CCA5CC40](v10, v9, v11, v12);
      v15 = v14;

      v71 = v7;
      v16 = *(v7 + 16);
      if (v16 >= *(v7 + 24) >> 1)
      {
        sub_1C6F7ED9C();
        v7 = v71;
      }

      *(v7 + 16) = v16 + 1;
      v17 = v7 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v15;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v66 = *(v7 + 16);
  if (!v66)
  {

    sub_1C71AC158();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v18 = 0;
  v19 = 0x656C746974;
  v65 = v7 + 32;
  v60 = 2;
  v20 = 0xE100000000000000;
  v61 = MEMORY[0x1E69E7CC0];
  v62 = MEMORY[0x1E69E7CC0];
  v73 = MEMORY[0x1E69E7CC0];
  v64 = MEMORY[0x1E69E7CC0];
  while (v18 < *(v7 + 16))
  {
    v21 = *(v65 + 16 * v18 + 8);
    v71 = *(v65 + 16 * v18);
    v72 = v21;
    v69 = 58;
    v70 = v20;
    sub_1C6FB5E8C();
    v22 = OUTLINED_FUNCTION_10_43();
    v23 = *(v22 + 16);
    if (v23)
    {
      v20 = v19;
      sub_1C75506FC();
      if (v23 > *(v22 + 16))
      {
        goto LABEL_84;
      }

      v24 = v22 + 32 + 16 * v23;
      v25 = *(v24 - 16);
      v26 = *(v24 - 8);
      sub_1C75504FC();

      v27 = sub_1C75506FC();
      v29 = v28;

      v30 = v27 == v19 && v29 == 0xE500000000000000;
      if (v30 || (OUTLINED_FUNCTION_7_43() & 1) != 0 || (v27 == 0x73656C746974 ? (v31 = v29 == 0xE600000000000000) : (v31 = 0), v31 || (OUTLINED_FUNCTION_7_43() & 1) != 0))
      {

        OUTLINED_FUNCTION_5_48();
        v73 = OUTLINED_FUNCTION_10_43();
      }

      else
      {
        v32 = v27 == 0x747369747261 && v29 == 0xE600000000000000;
        if (v32 || (OUTLINED_FUNCTION_7_43() & 1) != 0 || (v27 == 0x73747369747261 ? (v33 = v29 == 0xE700000000000000) : (v33 = 0), v33 || (OUTLINED_FUNCTION_7_43() & 1) != 0))
        {

          OUTLINED_FUNCTION_5_48();
          v64 = OUTLINED_FUNCTION_10_43();
        }

        else
        {
          v34 = v27 == 0x65726E6567 && v29 == 0xE500000000000000;
          if (v34 || (OUTLINED_FUNCTION_7_43() & 1) != 0 || (v27 == 0x7365726E6567 ? (v35 = v29 == 0xE600000000000000) : (v35 = 0), v35 || (OUTLINED_FUNCTION_7_43() & 1) != 0))
          {

            OUTLINED_FUNCTION_5_48();
            v61 = OUTLINED_FUNCTION_10_43();
          }

          else
          {
            v36 = v27 == 0x73646F6F6DLL && v29 == 0xE500000000000000;
            if (v36 || (OUTLINED_FUNCTION_7_43() & 1) != 0 || (v27 == 1685024621 ? (v37 = v29 == 0xE400000000000000) : (v37 = 0), v37 || (OUTLINED_FUNCTION_7_43() & 1) != 0))
            {

              v71 = v25;
              v72 = v26;
              v69 = 59;
              v70 = 0xE100000000000000;
              v38 = sub_1C755152C();

              v39 = 0;
              v56 = *(v38 + 16);
              v57 = v38;
              v40 = (v38 + 40);
              v62 = MEMORY[0x1E69E7CC0];
              while (v56 != v39)
              {
                if (v39 >= *(v57 + 16))
                {
                  goto LABEL_85;
                }

                v41 = *v40;
                v58 = v39;
                v59 = *(v40 - 1);
                v71 = v59;
                v72 = v41;
                sub_1C75504FC();
                sub_1C755153C();
                v42 = sub_1C755065C();

                v43 = PHMemoryMoodForString();

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  OUTLINED_FUNCTION_24_0();
                  sub_1C6FB3A08();
                  v62 = v46;
                }

                v44 = *(v62 + 16);
                if (v44 >= *(v62 + 24) >> 1)
                {
                  sub_1C6FB3A08();
                  v62 = v47;
                }

                *(v62 + 16) = v44 + 1;
                v45 = v62 + 32 * v44;
                *(v45 + 32) = v59;
                *(v45 + 40) = v41;
                *(v45 + 48) = v43;
                *(v45 + 56) = 0;
                v40 += 2;
                v39 = v58 + 1;
                v19 = v20;
              }

              v20 = 0xE100000000000000;
              goto LABEL_25;
            }

            if (v27 == 0x706972747369 && v29 == 0xE600000000000000)
            {

              v20 = 0xE100000000000000;
LABEL_75:
              v50 = sub_1C75506FC();
              v52 = v51;

              if (v50 == 1702195828 && v52 == 0xE400000000000000)
              {

                v55 = 1;
              }

              else
              {
                v54 = sub_1C7551DBC();

                v55 = v54 & 1;
              }

              v60 = v55;
              goto LABEL_25;
            }

            v49 = OUTLINED_FUNCTION_7_43();

            v20 = 0xE100000000000000;
            if (v49)
            {
              goto LABEL_75;
            }
          }
        }
      }
    }

LABEL_25:
    if (++v18 == v66)
    {

      *a3 = v73;
      *(a3 + 8) = v64;
      *(a3 + 16) = v61;
      *(a3 + 24) = v62;
      *(a3 + 32) = 0;
      *(a3 + 40) = 1;
      *(a3 + 41) = v60;
      return;
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
}

Swift::Bool __swiftcall StoryPromptAttributes.hasMusicCurationIngredients()()
{
  v1 = *v0;
  if (*v0)
  {
    LOBYTE(v1) = (*(v1 + 16) | *(v0[1] + 16) | *(v0[2] + 16)) != 0;
  }

  return (*(v0[3] + 16) != 0) | v1 & 1;
}

uint64_t sub_1C71AB478(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636973756DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73646F6F6DLL && a2 == 0xE500000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x706972547369 && a2 == 0xE600000000000000)
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

uint64_t sub_1C71AB5CC(char a1)
{
  result = 0x636973756DLL;
  switch(a1)
  {
    case 1:
      result = 0x73646F6F6DLL;
      break;
    case 2:
      result = 0x6E6F697461727564;
      break;
    case 3:
      result = 0x706972547369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C71AB648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C71AB478(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C71AB670(uint64_t a1)
{
  v2 = sub_1C71AC1AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C71AB6AC(uint64_t a1)
{
  v2 = sub_1C71AC1AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StoryPromptAttributes.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218958);
  OUTLINED_FUNCTION_3_0();
  v11 = v6;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_61_1();
  v8 = *v0;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1C71AACA4(v8);
  sub_1C71AC1AC();
  sub_1C755200C();
  sub_1C71AC200();
  sub_1C7551CBC();
  sub_1C71AACF0(v8);
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218960);
    sub_1C71AC2FC(&qword_1EDD06B58, sub_1C71AC254);
    OUTLINED_FUNCTION_16_30();
    sub_1C7551D2C();
    type metadata accessor for PHMemoryCurationLength(0);
    OUTLINED_FUNCTION_8_39();
    sub_1C71AC3C8(v9, v10);
    OUTLINED_FUNCTION_16_30();
    sub_1C7551CBC();
    sub_1C7551C8C();
  }

  (*(v11 + 8))(v2, v5);
  OUTLINED_FUNCTION_125();
}

void StoryPromptAttributes.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218968);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_25_20();
  sub_1C71AC1AC();
  OUTLINED_FUNCTION_365();
  sub_1C7551FFC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_1C71AC2A8();
    sub_1C7551BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218960);
    sub_1C71AC2FC(&qword_1EC218978, sub_1C71AC374);
    OUTLINED_FUNCTION_15_41();
    sub_1C7551C1C();
    type metadata accessor for PHMemoryCurationLength(0);
    OUTLINED_FUNCTION_8_39();
    sub_1C71AC3C8(v6, v7);
    OUTLINED_FUNCTION_15_41();
    sub_1C7551BAC();
    v8 = sub_1C7551B7C();
    v9 = OUTLINED_FUNCTION_401();
    v10(v9);
    *v4 = v11;
    *(v4 + 8) = v12;
    *(v4 + 16) = v13;
    *(v4 + 24) = v11;
    *(v4 + 32) = v11;
    *(v4 + 40) = v12;
    *(v4 + 41) = v8;
    sub_1C71AACA4(v11);
    sub_1C75504FC();
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_1C71AACF0(v11);
  }

  OUTLINED_FUNCTION_125();
}

unint64_t sub_1C71ABC94()
{
  result = qword_1EC218920;
  if (!qword_1EC218920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218920);
  }

  return result;
}

unint64_t sub_1C71ABCE8()
{
  result = qword_1EC218938;
  if (!qword_1EC218938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218938);
  }

  return result;
}

uint64_t sub_1C71ABD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1C7551DBC() & 1;
  }
}

uint64_t sub_1C71ABD80(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v43 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    sub_1C755098C();
    OUTLINED_FUNCTION_28_18();
    sub_1C6FB2490();
    v15 = v29;
    v8 = *(v29 + 16);
    v30 = *(v29 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v30 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v31 = (v15 + 32 * v8);
      v31[4] = v6;
      v31[5] = v10;
      v31[6] = v11;
      v31[7] = v12;
      return v15;
    }

LABEL_41:
    sub_1C6FB2490();
    v15 = v32;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v41 = MEMORY[0x1E69E7CC0];
  v16 = 15;
  while (1)
  {
    v39 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v39;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_20_32();
      v17 = sub_1C755095C();
      v11 = v18;
      v42[0] = v17;
      v42[1] = v18;
      v19 = v43(v42);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      OUTLINED_FUNCTION_20_32();
      v16 = sub_1C755080C();
    }

    v22 = (v39 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v39 >> 14)
    {
      break;
    }

    v40 = sub_1C755098C();
    v35 = v24;
    v36 = v23;
    v34 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB2490();
      v41 = v27;
    }

    v12 = *(v41 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v41 + 24) >> 1)
    {
      sub_1C6FB2490();
      v41 = v28;
    }

    *(v41 + 16) = v11;
    v26 = (v41 + 32 * v12);
    v26[4] = v40;
    v26[5] = v36;
    v26[6] = v35;
    v26[7] = v34;
LABEL_20:
    OUTLINED_FUNCTION_20_32();
    v16 = sub_1C755080C();
    if ((v22 & 1) == 0 && *(v41 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v41;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        sub_1C755098C();
        OUTLINED_FUNCTION_28_18();
        v15 = v41;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v30 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      OUTLINED_FUNCTION_24_0();
      sub_1C6FB2490();
      v15 = v33;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C71AC0CC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1C71AC158()
{
  result = qword_1EC218950;
  if (!qword_1EC218950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218950);
  }

  return result;
}

unint64_t sub_1C71AC1AC()
{
  result = qword_1EDD09F20;
  if (!qword_1EDD09F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09F20);
  }

  return result;
}

unint64_t sub_1C71AC200()
{
  result = qword_1EDD09F00;
  if (!qword_1EDD09F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09F00);
  }

  return result;
}

unint64_t sub_1C71AC254()
{
  result = qword_1EDD09F08;
  if (!qword_1EDD09F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09F08);
  }

  return result;
}

unint64_t sub_1C71AC2A8()
{
  result = qword_1EC218970;
  if (!qword_1EC218970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218970);
  }

  return result;
}

uint64_t sub_1C71AC2FC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC218960);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C71AC374()
{
  result = qword_1EC218980;
  if (!qword_1EC218980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218980);
  }

  return result;
}

uint64_t sub_1C71AC3C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C71AC410(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 42))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1C71AC450(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C71AC4B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 25))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1C71AC508(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoryPromptAttributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C71AC648(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for StoryPromptAttributes.Mood.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for StoryPromptAttributes.Music.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C71AC8AC()
{
  result = qword_1EC218988;
  if (!qword_1EC218988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218988);
  }

  return result;
}

unint64_t sub_1C71AC904()
{
  result = qword_1EC218990;
  if (!qword_1EC218990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218990);
  }

  return result;
}

unint64_t sub_1C71AC95C()
{
  result = qword_1EC218998;
  if (!qword_1EC218998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218998);
  }

  return result;
}

unint64_t sub_1C71AC9B4()
{
  result = qword_1EC2189A0;
  if (!qword_1EC2189A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2189A0);
  }

  return result;
}

unint64_t sub_1C71ACA0C()
{
  result = qword_1EDD09F10;
  if (!qword_1EDD09F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09F10);
  }

  return result;
}

unint64_t sub_1C71ACA64()
{
  result = qword_1EDD09F18;
  if (!qword_1EDD09F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09F18);
  }

  return result;
}

unint64_t sub_1C71ACABC()
{
  result = qword_1EC2189A8;
  if (!qword_1EC2189A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2189A8);
  }

  return result;
}

unint64_t sub_1C71ACB14()
{
  result = qword_1EC2189B0;
  if (!qword_1EC2189B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2189B0);
  }

  return result;
}

unint64_t sub_1C71ACB6C()
{
  result = qword_1EC2189B8;
  if (!qword_1EC2189B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2189B8);
  }

  return result;
}

unint64_t sub_1C71ACBC4()
{
  result = qword_1EC2189C0;
  if (!qword_1EC2189C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2189C0);
  }

  return result;
}

void sub_1C71ACC18(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v35 = v38;
    v4 = sub_1C70D4544(v1);
    v6 = v5;
    v7 = 0;
    v8 = v1 + 64;
    v29 = v5;
    v30 = v2;
    v28 = v1 + 72;
    v31 = v1 + 64;
    v32 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v1 + 32))
    {
      v9 = v4 >> 6;
      if ((*(v8 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_45;
      }

      if (*(v1 + 36) != v6)
      {
        goto LABEL_46;
      }

      v33 = v3;
      v34 = v7 + 1;
      v10 = *(*(v1 + 48) + v4);
      sub_1C75504FC();
      v11 = 0xE400000000000000;
      v12 = 1701736302;
      switch(v10)
      {
        case 1:
          v11 = 0xE600000000000000;
          v13 = 1936876912;
          goto LABEL_25;
        case 2:
          v12 = 0x67416E6F73726570;
          v15 = 0x6570795465;
          goto LABEL_16;
        case 3:
          v12 = 1702125924;
          break;
        case 4:
          v11 = 0xE900000000000079;
          v12 = 0x6144664F74726170;
          break;
        case 5:
          v11 = 0xEA00000000006B65;
          v12 = 0x6557664F74726170;
          break;
        case 6:
          v11 = 0xE600000000000000;
          v13 = 1935762803;
LABEL_25:
          v12 = v13 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
          break;
        case 7:
          v11 = 0xE800000000000000;
          v14 = 1633906540;
          goto LABEL_20;
        case 8:
          v12 = 0x4C636972656E6567;
          v11 = 0xEF6E6F697461636FLL;
          break;
        case 9:
          v12 = 1952540791;
          break;
        case 10:
          v12 = 0x764563696C627570;
          v11 = 0xEB00000000746E65;
          break;
        case 11:
          v12 = 0x6C616E6F73726570;
          v15 = 0x746E657645;
LABEL_16:
          v11 = v15 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 12:
          v12 = 0x746954636973756DLL;
          v11 = 0xEA0000000000656CLL;
          break;
        case 13:
          v11 = 0xEB00000000747369;
          v12 = 0x747241636973756DLL;
          break;
        case 14:
          v11 = 0xEA00000000006572;
          v12 = 0x6E6547636973756DLL;
          break;
        case 15:
          v12 = 1685024621;
          break;
        case 16:
          v11 = 0xE800000000000000;
          v14 = 1634891108;
LABEL_20:
          v12 = v14 | 0x6E6F697400000000;
          break;
        case 17:
          v11 = 0xE600000000000000;
          v12 = 0x706972547369;
          break;
        case 18:
          v12 = 0x6D69546C6C417369;
          v11 = 0xE900000000000065;
          break;
        case 19:
          v11 = 0xE900000000000072;
          v12 = 0x6564724F74726F73;
          break;
        default:
          break;
      }

      v36 = v12;
      v37 = v11;
      MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
      v16 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v16);

      v17 = v35;
      v18 = *(v35 + 16);
      if (v18 >= *(v35 + 24) >> 1)
      {
        sub_1C6F7ED9C();
        v17 = v35;
      }

      *(v17 + 16) = v18 + 1;
      v19 = v17 + 16 * v18;
      *(v19 + 32) = v36;
      *(v19 + 40) = v37;
      v1 = v32;
      v20 = 1 << *(v32 + 32);
      if (v4 >= v20)
      {
        goto LABEL_47;
      }

      v8 = v31;
      v21 = *(v31 + 8 * v9);
      if ((v21 & (1 << v4)) == 0)
      {
        goto LABEL_48;
      }

      v35 = v17;
      if (*(v32 + 36) != v6)
      {
        goto LABEL_49;
      }

      v22 = v21 & (-2 << (v4 & 0x3F));
      if (v22)
      {
        v20 = __clz(__rbit64(v22)) | v4 & 0x7FFFFFFFFFFFFFC0;
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
            sub_1C6F9ED50(v4, v6, v33 & 1);
            v20 = __clz(__rbit64(v26)) + v23;
            goto LABEL_42;
          }
        }

        sub_1C6F9ED50(v4, v6, v33 & 1);
      }

LABEL_42:
      v3 = 0;
      v4 = v20;
      v6 = v29;
      v7 = v34;
      if (v34 == v30)
      {
        return;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }
}

uint64_t QueryAssetsRetrievalProcessor.performGenericLocationQueryTokenAssetsRetrieval(with:eventRecorder:diagnosticContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 384) = a4;
  *(v5 + 392) = v4;
  *(v5 + 368) = a1;
  *(v5 + 376) = a3;
  v7 = sub_1C754F4DC();
  *(v5 + 400) = v7;
  *(v5 + 408) = *(v7 - 8);
  *(v5 + 416) = swift_task_alloc();
  *(v5 + 424) = swift_task_alloc();
  *(v5 + 432) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2189C8);
  *(v5 + 440) = swift_task_alloc();
  *(v5 + 448) = type metadata accessor for GroundedGenericLocation();
  *(v5 + 456) = swift_task_alloc();
  v8 = sub_1C754F38C();
  *(v5 + 464) = v8;
  *(v5 + 472) = *(v8 - 8);
  *(v5 + 480) = swift_task_alloc();
  *(v5 + 488) = *(a2 + 8);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C71AD280()
{
  v29 = v0;
  v1 = v0[61];
  v2 = OUTLINED_FUNCTION_49_3();
  __swift_project_boxed_opaque_existential_1(v2, v3);
  sub_1C754F1CC();
  v4 = OUTLINED_FUNCTION_49_3();
  __swift_project_boxed_opaque_existential_1(v4, v5);
  sub_1C754F15C();
  v6 = sub_1C75504FC();
  sub_1C6FDE0B8(v6);
  v0[63] = v7;

  v8 = MEMORY[0x1E69E7CC8];
  v0[44] = MEMORY[0x1E69E7CC8];
  v9 = *(v1 + 16);
  v0[64] = v9;
  if (v9)
  {
    v10 = 0;
    while (1)
    {
      v0[69] = v8;
      v0[68] = v8;
      v0[67] = v10;
      v0[66] = 0;
      OUTLINED_FUNCTION_13_41();
      if (v11)
      {
        __break(1u);
        return;
      }

      v13 = v0[55];
      v12 = v0[56];
      OUTLINED_FUNCTION_20_33(v0 + 2);
      OUTLINED_FUNCTION_20_33(&v28);
      sub_1C6FCA6E4((v0 + 2), (v0 + 17));
      QueryToken.groundedGenericLocation()();
      if (__swift_getEnumTagSinglePayload(v13, 1, v12) != 1)
      {
        break;
      }

      v14 = v0[55];
      sub_1C6FDD548((v0 + 2));
      sub_1C7030CDC(v14, &qword_1EC2189C8);
      OUTLINED_FUNCTION_15_42();
      if (v15)
      {
        goto LABEL_7;
      }
    }

    OUTLINED_FUNCTION_6_52();
    v21 = OUTLINED_FUNCTION_2_63();
    v22(v21);
    sub_1C75504FC();
    v23 = swift_task_alloc();
    v0[74] = v23;
    *v23 = v0;
    v24 = OUTLINED_FUNCTION_0_92(v23);

    sub_1C71AE39C(v24, v25, v26, v27);
  }

  else
  {
LABEL_7:
    v0[78] = v8;
    v0[77] = 0;
    v16 = swift_task_alloc();
    v0[79] = v16;
    *v16 = v0;
    OUTLINED_FUNCTION_1_70(v16);

    sub_1C71AF010(v8, v17, v18, v19, v20);
  }
}

uint64_t sub_1C71AD4D0()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *v1;
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 600) = v4;
  *(v2 + 608) = v0;

  if (v0)
  {

    sub_1C6FDD548(v2 + 16);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1C71AD614()
{
  v93 = v0;
  v1 = v0[72];
  v2 = v0[53];
  v3 = v0[54];
  v4 = v0[50];
  v88 = v0[75];
  v89 = *(v88 + 16);
  type metadata accessor for QueryAssetsRetrievalProcessor();
  v1(v2, v3, v4);
  sub_1C75504FC();
  v5 = sub_1C754FEEC();
  LOBYTE(v4) = sub_1C755117C();

  if (os_log_type_enabled(v5, v4))
  {
    v84 = v0[70];
    v85 = v0[71];
    v6 = v0[53];
    v7 = v0[51];
    v83 = v0[50];
    v8 = OUTLINED_FUNCTION_20_1();
    v92[0] = swift_slowAlloc();
    *v8 = 136315650;
    v9 = sub_1C754F4CC();
    v11 = v10;
    v12 = *(v7 + 8);
    v12(v6, v83);
    v13 = sub_1C6F765A4(v9, v11, v92);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_1C6F765A4(v84, v85, v92);
    *(v8 + 22) = 2048;
    *(v8 + 24) = v89;
    OUTLINED_FUNCTION_19_30(&dword_1C6F5C000, v14, v15, "The number of generic assets from %s %s is %ld");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
    v16 = v0[53];
    v17 = v0[50];
    v18 = v0[51];

    v12 = *(v18 + 8);
    v12(v16, v17);
  }

  if (v89 <= 0xC)
  {

    sub_1C75504FC();
    v19 = sub_1C754FEEC();
    v20 = sub_1C755117C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[71];
      v22 = v0[70];
      v23 = swift_slowAlloc();
      v24 = OUTLINED_FUNCTION_20_1();
      v92[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1C6F765A4(v22, v21, v92);
      _os_log_impl(&dword_1C6F5C000, v19, v20, "Fallback to performing metadata and embedding search for generic location query token: %s due to no fetched assets", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v25 = v0[66];
    v26 = v0[65];
    sub_1C6F65BE8(0, &qword_1EDD0CE30);
    sub_1C7073450();
    sub_1C6F6E5B4(v25);
    swift_isUniquelyReferenced_nonNull_native();
    v0[45] = v26;
    v27 = sub_1C6FC2A70();
    if (__OFADD__(*(v26 + 16), (v28 & 1) == 0))
    {
LABEL_33:
      __break(1u);
      return;
    }

    v29 = v27;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215318);
    v31 = sub_1C7551A2C();
    v32 = v0[45];
    if (v31)
    {
      v33 = sub_1C6FC2A70();
      if ((v30 & 1) != (v34 & 1))
      {
        OUTLINED_FUNCTION_9_38();

        sub_1C7551E4C();
        return;
      }

      v29 = v33;
    }

    if (v30)
    {
      v57 = sub_1C6FDD548((v0 + 2));
    }

    else
    {
      v57 = sub_1C6FCABD4(v29, v0 + 2, MEMORY[0x1E69E7CC0], v32);
    }

    v58 = v0[57];
    v59 = v0[54];
    v60 = v0[50];
    v61 = (*(v32 + 56) + 8 * v29);
    MEMORY[0x1CCA5D040](v57);
    sub_1C6FB6328(*((*v61 & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1C7550BEC();
    v12(v59, v60);
    sub_1C71AFE7C(v58);
    v54 = v0[68];
    v56 = sub_1C6F86C50;
    v55 = v32;
    goto LABEL_22;
  }

  (v0[72])(v0[52], v0[54], v0[50]);
  sub_1C75504FC();
  sub_1C75504FC();
  v36 = sub_1C754FEEC();
  v37 = sub_1C755117C();

  if (os_log_type_enabled(v36, v37))
  {
    v86 = v0[70];
    v87 = v0[71];
    v38 = v0[52];
    v90 = v12;
    v39 = v0[50];
    v40 = OUTLINED_FUNCTION_20_1();
    v92[0] = swift_slowAlloc();
    *v40 = 134218498;
    *(v40 + 4) = *(v88 + 16);

    *(v40 + 12) = 2080;
    v41 = sub_1C754F4CC();
    v43 = v42;
    v44 = v39;
    v12 = v90;
    v90(v38, v44);
    v45 = sub_1C6F765A4(v41, v43, v92);

    *(v40 + 14) = v45;
    *(v40 + 22) = 2080;
    *(v40 + 24) = sub_1C6F765A4(v86, v87, v92);
    OUTLINED_FUNCTION_19_30(&dword_1C6F5C000, v46, v47, "Fetching %ld assets for %s query token: %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {

    v48 = OUTLINED_FUNCTION_49_3();
    (v12)(v48);
  }

  v49 = v0[75];
  v91 = *(v0 + 35);
  v50 = v0[57];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  *(inited + 32) = v91;
  *(inited + 48) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
  sub_1C75504DC();
  v52 = v0[44];
  swift_isUniquelyReferenced_nonNull_native();
  v92[0] = v52;
  sub_1C6FC7AB4();
  sub_1C6FDD548((v0 + 2));
  v53 = OUTLINED_FUNCTION_49_3();
  (v12)(v53);
  sub_1C71AFE7C(v50);
  v54 = v92[0];
  v0[44] = v92[0];
  v55 = v0[69];
  v56 = v0[66];
LABEL_22:
  while (1)
  {
    OUTLINED_FUNCTION_15_42();
    if (v63)
    {
      break;
    }

    v0[69] = v55;
    v0[68] = v54;
    v0[67] = v62;
    v0[66] = v56;
    OUTLINED_FUNCTION_13_41();
    if (v64)
    {
      __break(1u);
      goto LABEL_33;
    }

    v66 = v0[55];
    v65 = v0[56];
    OUTLINED_FUNCTION_20_33(v0 + 2);
    OUTLINED_FUNCTION_20_33(v92);
    sub_1C6FCA6E4((v0 + 2), (v0 + 17));
    QueryToken.groundedGenericLocation()();
    if (__swift_getEnumTagSinglePayload(v66, 1, v65) != 1)
    {
      OUTLINED_FUNCTION_6_52();
      v75 = OUTLINED_FUNCTION_2_63();
      v76(v75);
      sub_1C75504FC();
      v77 = swift_task_alloc();
      v0[74] = v77;
      *v77 = v0;
      OUTLINED_FUNCTION_0_92();
      OUTLINED_FUNCTION_9_38();

      sub_1C71AE39C(v78, v79, v80, v81);
      return;
    }

    v67 = v0[55];
    sub_1C6FDD548((v0 + 2));
    sub_1C7030CDC(v67, &qword_1EC2189C8);
  }

  v0[78] = v55;
  v0[77] = v56;
  v68 = swift_task_alloc();
  v0[79] = v68;
  *v68 = v0;
  OUTLINED_FUNCTION_1_70(v68);
  OUTLINED_FUNCTION_9_38();

  sub_1C71AF010(v69, v70, v71, v72, v73);
}

uint64_t sub_1C71ADE2C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 640) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C71ADF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_126_0();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_58_9();
  a22 = v24;
  v27 = *(v24 + 352);
  if (*(v27 + 16))
  {
    type metadata accessor for QueryAssetsRetrievalProcessor();
    sub_1C75504FC();
    v28 = sub_1C754FEEC();
    v29 = sub_1C75511BC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = *(v24 + 496);
      v31 = swift_slowAlloc();
      v32 = OUTLINED_FUNCTION_20_1();
      a12 = v32;
      *v31 = 136315138;
      sub_1C71ACC18(v30);
      v34 = v33;

      v35 = MEMORY[0x1CCA5D090](v34, MEMORY[0x1E69E6158]);
      v37 = v36;

      v38 = sub_1C6F765A4(v35, v37, &a12);

      *(v31 + 4) = v38;
      _os_log_impl(&dword_1C6F5C000, v28, v29, "Add assets to generic location query tokens, scoped with %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    v40 = *(v24 + 368);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155D0);
    sub_1C6FDE390();
    v41 = sub_1C75504DC();
    __swift_destroy_boxed_opaque_existential_1(v24 + 312);
    *v40 = v27;
    v40[1] = v41;
  }

  else
  {
    v39 = *(v24 + 368);
    __swift_destroy_boxed_opaque_existential_1(v24 + 312);

    *v39 = 0;
    v39[1] = 0;
  }

  v42 = *(v24 + 616);
  v54 = *(v24 + 432);
  v55 = *(v24 + 424);
  v56 = *(v24 + 416);
  __swift_project_boxed_opaque_existential_1(*(v24 + 376), *(*(v24 + 376) + 24));
  sub_1C754F1AC();
  v43 = OUTLINED_FUNCTION_49_3();
  v44(v43);
  sub_1C6F6E5B4(v42);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_129();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, v54, v55, v56, a12, a13, a14, a15, a16);
}

uint64_t sub_1C71AE1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  v20 = v16[57];
  (*(v16[51] + 8))(v16[54], v16[50]);
  sub_1C71AFE7C(v20);
  __swift_destroy_boxed_opaque_existential_1((v16 + 39));
  v21 = v16[66];
  OUTLINED_FUNCTION_4_49();
  (*(v19 + 8))(v17, v18);
  sub_1C6F6E5B4(v21);

  OUTLINED_FUNCTION_129();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C71AE2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  __swift_destroy_boxed_opaque_existential_1(v16 + 312);

  v20 = *(v16 + 616);
  OUTLINED_FUNCTION_4_49();
  (*(v19 + 8))(v17, v18);
  sub_1C6F6E5B4(v20);

  OUTLINED_FUNCTION_129();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C71AE39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217FD8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C71AE478, 0, 0);
}

uint64_t sub_1C71AE478()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C755BAB0;
  v5 = v3[1];
  *(v4 + 32) = *v3;
  *(v4 + 40) = v5;
  v6 = type metadata accessor for GroundedGenericLocation();
  v7 = v0;
  sub_1C75504FC();
  v8 = sub_1C75504FC();
  sub_1C6FD2568(v8);
  v0[16] = v4;
  sub_1C71AF690(v3 + *(v6 + 20), v1);
  v0[7] = MEMORY[0x1E69E7CD0];
  v9 = v0 + 7;
  v40 = v4;
  v10 = *(v4 + 16);
  v41 = v0;
  if (v10)
  {
    v44 = *v2;
    v43 = objc_opt_self();
    v42 = objc_opt_self();
    v11 = v4 + 40;
    do
    {
      v13 = v7[14];
      v12 = v7[15];
      sub_1C75504FC();
      v14 = sub_1C755065C();

      sub_1C71AFED8(v12, v13);
      v15 = sub_1C754E2FC();
      v16 = 0;
      if (__swift_getEnumTagSinglePayload(v13, 1, v15) != 1)
      {
        v17 = v7[14];
        v16 = sub_1C754E28C();
        (*(*(v15 - 8) + 8))(v17, v15);
      }

      v18 = [v43 performDisambiguationForGenericLocationName:v14 allowedSearchIndexCategories:v16 photoLibrary:v44];

      sub_1C6F65BE8(0, &qword_1EDD06918);
      sub_1C71AFF48();
      v19 = sub_1C7550F8C();

      sub_1C739C9D0(v19);

      v20 = sub_1C7550B3C();

      v9[1] = 0;
      v21 = [v42 fetchAssetUUIDsForIndexEntities:v20 photoLibrary:v44 error:v9 + 1];

      v22 = v9[1];
      v23 = sub_1C7550B5C();
      v24 = v22;

      sub_1C73978C4(v23);
      if (v24)
      {
        type metadata accessor for QueryAssetsRetrievalProcessor();
        v25 = v24;
        v26 = sub_1C754FEEC();
        v27 = sub_1C755119C();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          *v28 = 138412290;
          *(v28 + 4) = v25;
          *v29 = v22;
          v30 = v25;
          _os_log_impl(&dword_1C6F5C000, v26, v27, "Unable to add assets to generic location query tokens, error = %@", v28, 0xCu);
          sub_1C7030CDC(v29, &qword_1EC215190);
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_109();
          v25 = v30;
        }

        else
        {
          v30 = v26;
          v26 = v25;
        }

        v7 = v41;
      }

      v11 += 16;
      --v10;
    }

    while (v10);
  }

  if (v7[10])
  {
    v31 = *v9;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C7069A44();
    v33 = v32;
  }

  else
  {
    v33 = *v9;
    sub_1C75504FC();
    v31 = v33;
  }

  v7[17] = v33;
  v7[18] = v31;
  v34 = *(v40 + 16);
  v35 = MEMORY[0x1E69E7CC0];
  if (v34)
  {
    v45 = MEMORY[0x1E69E7CC0];
    sub_1C755195C();
    sub_1C6F65BE8(0, &qword_1EDD0CE30);
    v36 = v40 + 40;
    do
    {
      sub_1C75504FC();
      sub_1C7073450();
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
      v36 += 16;
      --v34;
    }

    while (v34);
    v35 = v45;
  }

  v41[19] = v35;
  *(v41 + 184) = 1;
  sub_1C75504FC();
  sub_1C6FDC2F0((v41 + 2));
  v37 = swift_task_alloc();
  v41[20] = v37;
  *v37 = v41;
  v37[1] = sub_1C71AE9F0;
  OUTLINED_FUNCTION_128_0();

  return sub_1C71074E0();
}

uint64_t sub_1C71AE9F0(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_6_4();
  *v5 = v4;
  *(v4 + 168) = v1;

  if (v1)
  {
    swift_bridgeObjectRelease_n();

    __swift_destroy_boxed_opaque_existential_1(v4 + 16);
  }

  else
  {
    *(v4 + 176) = a1;
    __swift_destroy_boxed_opaque_existential_1(v4 + 16);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C71AEB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_126_0();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_58_9();
  a22 = v24;
  a13 = *MEMORY[0x1E69E9840];
  v27 = v24[22];
  v29 = v24[12];
  v28 = v24[13];
  v30 = swift_task_alloc();
  *(v30 + 16) = v28;
  *(v30 + 24) = v29;
  sub_1C6FDE6CC(MEMORY[0x1E69E7CD0], sub_1C71AFFB0, v30, v27);
  v32 = v31;

  if (*(v32 + 16))
  {

    type metadata accessor for QueryAssetsRetrievalProcessor();
    sub_1C75504FC();
    sub_1C75504FC();
    v33 = sub_1C754FEEC();
    v34 = sub_1C755117C();

    v35 = os_log_type_enabled(v33, v34);
    v36 = v24[18];
    v37 = v24[15];
    v38 = v24[16];
    if (v35)
    {
      v39 = swift_slowAlloc();
      v40 = OUTLINED_FUNCTION_20_1();
      a12 = v40;
      *v39 = 134218243;
      *(v39 + 4) = *(v32 + 16);

      *(v39 + 12) = 2081;
      v41 = MEMORY[0x1CCA5D090](v38, MEMORY[0x1E69E6158]);
      a10 = v36;
      v43 = v42;

      v44 = sub_1C6F765A4(v41, v43, &a12);

      *(v39 + 14) = v44;
      _os_log_impl(&dword_1C6F5C000, v33, v34, "Using %ld generic location assets from scoped embedding search for '%{private}s' generic location token", v39, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v40);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    sub_1C7030CDC(v37, &qword_1EC217FD8);
  }

  else
  {

    type metadata accessor for QueryAssetsRetrievalProcessor();
    sub_1C75504FC();
    sub_1C75504FC();
    v45 = sub_1C754FEEC();
    v46 = sub_1C755117C();

    v47 = os_log_type_enabled(v45, v46);
    v48 = v24[17];
    v49 = v24[15];
    v50 = v24[16];
    if (v47)
    {
      v51 = swift_slowAlloc();
      v52 = OUTLINED_FUNCTION_20_1();
      a12 = v52;
      *v51 = 134218243;
      *(v51 + 4) = *(v48 + 16);

      *(v51 + 12) = 2081;
      v53 = MEMORY[0x1CCA5D090](v50, MEMORY[0x1E69E6158]);
      v55 = v54;

      v56 = sub_1C6F765A4(v53, v55, &a12);

      *(v51 + 14) = v56;
      _os_log_impl(&dword_1C6F5C000, v45, v46, "Using %ld generic location assets based on the graph inference for '%{private}s' generic location token", v51, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v52);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    sub_1C7030CDC(v49, &qword_1EC217FD8);
  }

  OUTLINED_FUNCTION_129();

  return v59(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C71AEF4C()
{
  OUTLINED_FUNCTION_49_0();
  sub_1C7030CDC(*(v0 + 120), &qword_1EC217FD8);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C71AF010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C71AF038, 0, 0);
}

uint64_t sub_1C71AF038()
{
  v1 = *(v0 + 88);
  if (!*(v1 + 16))
  {
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_128_0();

    __asm { BRAA            X1, X16 }
  }

  v2 = v1 + 64;
  v35 = v0 + 56;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v6 = (63 - v4) >> 6;
  result = sub_1C75504FC();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v40 = v2;
  v41 = result;
  v39 = v6;
  v36 = v0;
  while (1)
  {
    *(v0 + 136) = v9;
    if (!v5)
    {
      break;
    }

LABEL_10:
    v11 = *(*(result + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));
    if (v11 >> 62)
    {
      v12 = sub_1C75516BC();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v9 >> 62;
    if (v9 >> 62)
    {
      result = sub_1C75516BC();
    }

    else
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = result + v12;
    if (__OFADD__(result, v12))
    {
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
LABEL_53:
      __break(1u);
      return result;
    }

    sub_1C75504FC();
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v43 = v12;
    if (!result)
    {
      if (v13)
      {
LABEL_21:
        sub_1C75516BC();
      }

LABEL_22:
      v17 = v11;
      result = sub_1C75518CC();
      v44 = result;
      v15 = result & 0xFFFFFFFFFFFFFF8;
      v16 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      goto LABEL_23;
    }

    if (v13)
    {
      goto LABEL_21;
    }

    v15 = v9 & 0xFFFFFFFFFFFFFF8;
    v16 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    if (v16 < v14)
    {
      goto LABEL_22;
    }

    v44 = v9;
    v17 = v11;
LABEL_23:
    v5 &= v5 - 1;
    v18 = *(v15 + 16);
    v19 = v16 - v18;
    v20 = v15 + 8 * v18;
    v42 = v15;
    if (v11 >> 62)
    {
      v22 = sub_1C75516BC();
      if (!v22)
      {
        goto LABEL_37;
      }

      v23 = v22;
      result = sub_1C75516BC();
      v38 = result;
      if (v19 < result)
      {
        goto LABEL_52;
      }

      if (v23 < 1)
      {
        goto LABEL_53;
      }

      v37 = v5;
      sub_1C71AFFCC();
      for (i = 0; i != v23; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215050);
        v25 = sub_1C6FDD09C(v35, i, v17);
        v27 = *v26;
        v25(v35, 0);
        *(v20 + 32 + 8 * i) = v27;
      }

      v0 = v36;
      v5 = v37;
      v21 = v38;
LABEL_33:

      v9 = v44;
      v2 = v40;
      result = v41;
      v6 = v39;
      if (v21 < v43)
      {
        goto LABEL_49;
      }

      if (v21 > 0)
      {
        v28 = *(v42 + 16);
        v29 = __OFADD__(v28, v21);
        v30 = v28 + v21;
        if (v29)
        {
          goto LABEL_50;
        }

        *(v42 + 16) = v30;
      }
    }

    else
    {
      v21 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
        if (v19 < v21)
        {
          goto LABEL_51;
        }

        sub_1C6F65BE8(0, &qword_1EDD0CE30);
        swift_arrayInitWithCopy();
        goto LABEL_33;
      }

LABEL_37:

      v9 = v44;
      v2 = v40;
      result = v41;
      v6 = v39;
      if (v43 > 0)
      {
        goto LABEL_49;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v10 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  *(v0 + 168) = 2;
  sub_1C6FDC2F0(v0 + 16);
  v31 = swift_task_alloc();
  *(v0 + 144) = v31;
  *v31 = v0;
  v31[1] = sub_1C71AF45C;
  OUTLINED_FUNCTION_128_0();

  return sub_1C71074E0();
}

uint64_t sub_1C71AF45C()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6_4();
  *v5 = v4;
  *(v4 + 152) = v0;

  if (!v0)
  {
    *(v4 + 160) = v3;
  }

  __swift_destroy_boxed_opaque_existential_1(v4 + 16);

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C71AF598()
{
  v1 = v0[20];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v5 = v0[11];
  v6 = swift_task_alloc();
  *(v6 + 16) = v2;
  *(v6 + 24) = v3;
  sub_1C6FDE6CC(MEMORY[0x1E69E7CC8], sub_1C71B0030, v6, v1);
  v8 = v7;

  sub_1C7108C18(v5, v8, v4);

  OUTLINED_FUNCTION_25();

  return v9();
}

uint64_t sub_1C71AF690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C754E2FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C754F4DC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == *MEMORY[0x1E69C18A0])
  {
    v14 = &unk_1F46A7C60;
  }

  else
  {
    if (v13 != *MEMORY[0x1E69C1898])
    {
      (*(v9 + 8))(v12, v8);
      v19 = a2;
      v20 = 1;
      return __swift_storeEnumTagSinglePayload(v19, v20, 1, v4);
    }

    v14 = &unk_1F46A7C90;
  }

  sub_1C754E2EC();
  v15 = v14[2];
  if (!v15)
  {
LABEL_9:

    (*(v5 + 32))(a2, v7, v4);
    v19 = a2;
    v20 = 0;
    return __swift_storeEnumTagSinglePayload(v19, v20, 1, v4);
  }

  v16 = v14 + 4;
  while (1)
  {
    v18 = *v16++;
    result = v18;
    if (v18 < 0)
    {
      break;
    }

    sub_1C754E2AC();
    if (!--v15)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1C71AF8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 8);
  if (*(a2 + 16))
  {
    v6 = *a2;
    type metadata accessor for QueryAssetsRetrievalProcessor();
    sub_1C6FDE42C(v4, 1);
    v7 = v6;
    sub_1C6FDE42C(v4, 1);
    v8 = v7;
    v9 = sub_1C754FEEC();
    v10 = sub_1C755119C();

    sub_1C6FDE438(v4, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138478083;
      *(v11 + 4) = v8;
      *v12 = v8;
      *(v11 + 12) = 2112;
      sub_1C6FDE42C(v4, 1);
      v13 = v8;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v14;
      v12[1] = v14;
      _os_log_impl(&dword_1C6F5C000, v9, v10, "Embedding retrieval failed for '%{private}@' WHAT token: %@", v11, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215190);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
      MEMORY[0x1CCA5F8E0](v11, -1, -1);
    }

    if (a4)
    {
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD000000000000025, 0x80000001C75A2CF0);
      v15 = [v8 description];
      v16 = sub_1C755068C();
      v18 = v17;

      MEMORY[0x1CCA5CD70](v16, v18);

      MEMORY[0x1CCA5CD70](0xD000000000000031, 0x80000001C75A2D20);
      sub_1C7161CDC(0, 0xE000000000000000);

      sub_1C6FDE438(v4, 1);
    }

    else
    {

      sub_1C6FDE438(v4, 1);
    }
  }

  else
  {
    v19 = sub_1C75504FC();
    sub_1C73978C4(v19);
  }
}

void sub_1C71AFB48(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 16))
  {
    type metadata accessor for QueryAssetsRetrievalProcessor();
    sub_1C6FDE42C(v4, 1);
    v7 = v5;
    sub_1C6FDE42C(v4, 1);
    v8 = v7;
    v9 = sub_1C754FEEC();
    v10 = sub_1C755119C();

    sub_1C6FDE438(v4, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138478083;
      *(v11 + 4) = v8;
      *v12 = v8;
      *(v11 + 12) = 2112;
      sub_1C6FDE42C(v4, 1);
      v13 = v8;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v14;
      v12[1] = v14;
      _os_log_impl(&dword_1C6F5C000, v9, v10, "Complete retrieval failed for '%{private}@' WHAT token: %@", v11, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215190);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
      MEMORY[0x1CCA5F8E0](v11, -1, -1);
    }

    if (a4)
    {
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD000000000000024, 0x80000001C7597F60);
      v15 = [v8 description];
      v16 = sub_1C755068C();
      v18 = v17;

      MEMORY[0x1CCA5CD70](v16, v18);

      MEMORY[0x1CCA5CD70](0xD000000000000031, 0x80000001C75A2D20);
      sub_1C7161CDC(0, 0xE000000000000000);

      sub_1C6FDE438(v4, 1);
    }

    else
    {

      sub_1C6FDE438(v4, 1);
    }
  }

  else
  {
    sub_1C6FDE42C(*(a2 + 8), 0);
    sub_1C6FDE42C(v4, 0);
    v20 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v21 = *a1;
    sub_1C6FC7AC8(v4, v20);
    sub_1C6FDE438(v4, 0);

    *a1 = v21;
  }
}

uint64_t sub_1C71AFE18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroundedGenericLocation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C71AFE7C(uint64_t a1)
{
  v2 = type metadata accessor for GroundedGenericLocation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C71AFED8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217FD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C71AFF48()
{
  result = qword_1EDD06910;
  if (!qword_1EDD06910)
  {
    sub_1C6F65BE8(255, &qword_1EDD06918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06910);
  }

  return result;
}

unint64_t sub_1C71AFFCC()
{
  result = qword_1EC2155C8;
  if (!qword_1EC2155C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2155C8);
  }

  return result;
}

uint64_t AssetCurationPromptGeneratorConfiguration.__allocating_init(userPrompt:storyTitle:extendedTokens:traits:targetAssetCount:lifeContextMaximumTokenCount:assetCurationPromptMaximumTokenCount:shufflePromptParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  OUTLINED_FUNCTION_0_93();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v18;
  *(v21 + 32) = v16;
  memcpy((v21 + 40), v14, 0x50uLL);
  *(v21 + 120) = v11;
  *(v21 + 128) = v12;
  *(v21 + 136) = v10;
  *(v21 + 144) = v9;
  *(v21 + 152) = a9;
  return v21;
}

uint64_t AssetCurationPromptGeneratorConfiguration.storyTitle.getter()
{
  v1 = *(v0 + 24);
  sub_1C75504FC();
  return v1;
}

uint64_t AssetCurationPromptGeneratorConfiguration.extendedTokens.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 40), sizeof(__dst));
  memcpy(a1, (v1 + 40), 0x50uLL);
  return sub_1C7027A20(__dst, &v4);
}

uint64_t AssetCurationPromptGeneratorConfiguration.init(userPrompt:storyTitle:extendedTokens:traits:targetAssetCount:lifeContextMaximumTokenCount:assetCurationPromptMaximumTokenCount:shufflePromptParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  OUTLINED_FUNCTION_0_93();
  *(v10 + 16) = v14;
  *(v10 + 24) = v15;
  *(v10 + 32) = v16;
  memcpy((v10 + 40), v17, 0x50uLL);
  *(v10 + 120) = v12;
  *(v10 + 128) = v13;
  *(v10 + 136) = v11;
  *(v10 + 144) = v9;
  *(v10 + 152) = a9;
  return v10;
}

uint64_t AssetCurationPromptGeneratorConfiguration.deinit()
{

  return v0;
}

uint64_t AssetCurationPromptGeneratorConfiguration.__deallocating_deinit()
{
  AssetCurationPromptGeneratorConfiguration.deinit();

  return swift_deallocClassInstance();
}

id CurationPredicateBuilder.AssetPredicates.predicate.getter()
{
  switch(*v0)
  {
    case 0:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v1 = OUTLINED_FUNCTION_20_0();
      *(v1 + 16) = xmmword_1C75604F0;
      *(v1 + 56) = MEMORY[0x1E69E6158];
      *(v1 + 64) = sub_1C6F6D524();
      strcpy((v1 + 32), "playbackStyle");
      *(v1 + 46) = -4864;
      v69 = MEMORY[0x1E69E7CC0];
      sub_1C716D854();
      v2 = v69;
      v3 = *(v69 + 16);
      v4 = *(v69 + 24) >> 1;
      v5 = v3 + 1;
      if (v4 <= v3)
      {
        sub_1C716D854();
        v2 = v69;
        v4 = *(v69 + 24) >> 1;
      }

      *(v2 + 16) = v5;
      *(v2 + 8 * v3 + 32) = 1;
      v6 = v3 + 2;
      if (v4 < v6)
      {
        sub_1C716D854();
        v2 = v69;
      }

      sub_1C6F65BE8(0, &qword_1EDD0FAD0);
      *(v2 + 16) = v6;
      *(v2 + 8 * v5 + 32) = 3;
      *(v1 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216650);
      *(v1 + 104) = sub_1C70E8188(&qword_1EDD06A60, &qword_1EC216650);
      *(v1 + 72) = v2;
      goto LABEL_17;
    case 1:
      v45 = [objc_allocWithZone(MEMORY[0x1E69C1AA8]) initWithSceneAnalysisVersion_];
      v46 = [v45 minimumWallpaperScoreNode];
      [v46 operatingPoint];
      v48 = v47;

      sub_1C6F65BE8(0, &qword_1EDD0FAD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v49 = OUTLINED_FUNCTION_20_0();
      v50 = OUTLINED_FUNCTION_1_71(v49, xmmword_1C75604F0);
      v52 = v51 | 0x8000000000000000;
      v50[3].n128_u64[1] = MEMORY[0x1E69E6158];
      v49[4].n128_u64[0] = sub_1C6F6D524();
      v53 = 0xD000000000000026;
      goto LABEL_14;
    case 2:
      sub_1C6F65BE8(0, &qword_1EDD0FA80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1C7564A90;
      sub_1C6F65BE8(0, &qword_1EDD0FAD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v21 = OUTLINED_FUNCTION_20_0();
      v22 = OUTLINED_FUNCTION_1_71(v21, xmmword_1C75604F0);
      v24 = v23 | 0x8000000000000000;
      v25 = MEMORY[0x1E69E6158];
      v22[3].n128_u64[1] = MEMORY[0x1E69E6158];
      v26 = sub_1C6F6D524();
      v21[2].n128_u64[0] = 0xD000000000000024;
      v21[2].n128_u64[1] = v24;
      v27 = MEMORY[0x1E69E65A8];
      v21[6].n128_u64[0] = MEMORY[0x1E69E6530];
      v21[6].n128_u64[1] = v27;
      v21[4].n128_u64[0] = v26;
      v21[4].n128_u64[1] = 0;
      OUTLINED_FUNCTION_0_94();
      *(v20 + 32) = sub_1C755112C();
      v28 = OUTLINED_FUNCTION_95();
      *(v28 + 16) = xmmword_1C755BAB0;
      *(v28 + 56) = v25;
      *(v28 + 64) = v26;
      *(v28 + 32) = 0xD000000000000024;
      *(v28 + 40) = v24;
      OUTLINED_FUNCTION_0_94();
      *(v20 + 40) = sub_1C755112C();
      return sub_1C6F6E5C4();
    case 3:
      sub_1C6F65BE8(0, &qword_1EDD0FAD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v30 = OUTLINED_FUNCTION_20_0();
      v31 = OUTLINED_FUNCTION_1_71(v30, xmmword_1C75604F0);
      v33 = v32 | 0x8000000000000000;
      v31[3].n128_u64[1] = MEMORY[0x1E69E6158];
      v34 = sub_1C6F6D524();
      OUTLINED_FUNCTION_3_62(v34);
      v30[2].n128_u64[0] = v35 + 5;
      v30[2].n128_u64[1] = v33;
      v36 = [objc_opt_self() latestVersion];
      v37 = MEMORY[0x1E69E65A8];
      v30[6].n128_u64[0] = MEMORY[0x1E69E6530];
      v30[6].n128_u64[1] = v37;
      v30[4].n128_u64[1] = v36;
      goto LABEL_17;
    case 4:
      sub_1C6F65BE8(0, &qword_1EDD0FA80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1C75650C0;
      sub_1C6F65BE8(0, &qword_1EDD0FAD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v8 = OUTLINED_FUNCTION_20_0();
      v9 = OUTLINED_FUNCTION_1_71(v8, xmmword_1C75604F0);
      v11 = v10 | 0x8000000000000000;
      v12 = MEMORY[0x1E69E6158];
      v9[3].n128_u64[1] = MEMORY[0x1E69E6158];
      v13 = sub_1C6F6D524();
      v8[4].n128_u64[0] = v13;
      v14 = MEMORY[0x1E69E75F8];
      v8[2].n128_u64[0] = 0xD000000000000021;
      v8[2].n128_u64[1] = v11;
      v15 = MEMORY[0x1E69E7660];
      v8[6].n128_u64[0] = v14;
      v8[6].n128_u64[1] = v15;
      v8[4].n128_u16[4] = 0;
      *(v7 + 32) = sub_1C755112C();
      v16 = OUTLINED_FUNCTION_20_0();
      v17 = OUTLINED_FUNCTION_1_71(v16, xmmword_1C75604F0);
      v17[3].n128_u64[1] = v12;
      v17[4].n128_u64[0] = v13;
      v17[2].n128_u64[0] = 0xD00000000000002CLL;
      v17[2].n128_u64[1] = v18 | 0x8000000000000000;
      v17[6].n128_u64[0] = v14;
      v17[6].n128_u64[1] = v15;
      v17[4].n128_u16[4] = 3;
      *(v7 + 40) = sub_1C755112C();
      v19 = OUTLINED_FUNCTION_20_0();
      *(v19 + 16) = xmmword_1C75604F0;
      *(v19 + 56) = v12;
      *(v19 + 64) = v13;
      *(v19 + 32) = 0xD00000000000002CLL;
      *(v19 + 40) = 0x80000001C75A2F10;
      *(v19 + 96) = v14;
      *(v19 + 104) = v15;
      *(v19 + 72) = 0;
      OUTLINED_FUNCTION_0_94();
      *(v7 + 48) = sub_1C755112C();
      return sub_1C6F6E5C4();
    case 5:
      v45 = [objc_allocWithZone(MEMORY[0x1E69C1A18]) initWithSceneAnalysisVersion_];
      v54 = [v45 overallAestheticScoreNode];
      [v54 highPrecisionOperatingPoint];
      v48 = v55;

      sub_1C6F65BE8(0, &qword_1EDD0FAD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v49 = OUTLINED_FUNCTION_20_0();
      v56 = OUTLINED_FUNCTION_1_71(v49, xmmword_1C75604F0);
      v52 = v57 | 0x8000000000000000;
      v56[3].n128_u64[1] = MEMORY[0x1E69E6158];
      v49[4].n128_u64[0] = sub_1C6F6D524();
      v53 = 0xD000000000000015;
LABEL_14:
      v58 = MEMORY[0x1E69E63B0];
      v49[2].n128_u64[0] = v53;
      v49[2].n128_u64[1] = v52;
      v59 = MEMORY[0x1E69E6438];
      v49[6].n128_u64[0] = v58;
      v49[6].n128_u64[1] = v59;
      v49[4].n128_u64[1] = v48;
      v60 = sub_1C755112C();

      return v60;
    case 6:
      sub_1C6F65BE8(0, &qword_1EDD0FAD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v61 = OUTLINED_FUNCTION_95();
      *(v61 + 16) = xmmword_1C755BAB0;
      *(v61 + 56) = MEMORY[0x1E69E6158];
      *(v61 + 64) = sub_1C6F6D524();
      strcpy((v61 + 32), "detectedFaces");
      *(v61 + 46) = -4864;
      goto LABEL_17;
    case 7:
      sub_1C6F65BE8(0, &qword_1EDD0FAD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v38 = OUTLINED_FUNCTION_20_0();
      v39 = OUTLINED_FUNCTION_1_71(v38, xmmword_1C75604F0);
      v41 = v40 | 0x8000000000000000;
      v39[3].n128_u64[1] = MEMORY[0x1E69E6158];
      v42 = sub_1C6F6D524();
      OUTLINED_FUNCTION_3_62(v42);
      v38[2].n128_u64[0] = v43 - 1;
      v38[2].n128_u64[1] = v41;
      v44 = MEMORY[0x1E69E7358];
      v38[6].n128_u64[0] = MEMORY[0x1E69E72F0];
      v38[6].n128_u64[1] = v44;
      v38[4].n128_u32[2] = 1;
      OUTLINED_FUNCTION_0_94();
      goto LABEL_17;
    case 8:
      sub_1C6F65BE8(0, &qword_1EDD0FAD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v62 = OUTLINED_FUNCTION_95();
      v63 = OUTLINED_FUNCTION_1_71(v62, xmmword_1C755BAB0);
      v65 = v64 | 0x8000000000000000;
      v63[3].n128_u64[1] = MEMORY[0x1E69E6158];
      v66 = sub_1C6F6D524();
      OUTLINED_FUNCTION_3_62(v66);
      v62[2].n128_u64[0] = v67 - 16;
      v62[2].n128_u64[1] = v65;
LABEL_17:
      result = sub_1C755112C();
      break;
    default:
      v68 = *v0;

      result = static CurationPredicateBuilder.AssetPredicates.Face.predicate(for:)(v68);
      break;
  }

  return result;
}

id static CurationPredicateBuilder.AssetPredicates.Face.predicate(for:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v16[0] = MEMORY[0x1E69E7CC0];
    sub_1C755195C();
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      v17 = v4;
      sub_1C71B0EC4();
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
      --v1;
    }

    while (v1);
  }

  sub_1C6F65BE8(0, &qword_1EDD0FA80);
  v5 = sub_1C6F6E5C4();
  v6 = sub_1C6F65BE8(0, &qword_1EC2189D0);
  v7 = sub_1C71B16F4();
  v8 = v5;
  v9 = sub_1C71B1758(v7, 1701011814, 0xE400000000000000, v8);
  sub_1C6F65BE8(0, &qword_1EC2189D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v10 = OUTLINED_FUNCTION_95();
  *(v10 + 16) = xmmword_1C755BAB0;
  *(v10 + 56) = v6;
  *(v10 + 64) = sub_1C71B19A8();
  *(v10 + 32) = v9;
  v11 = v9;
  v12 = sub_1C755113C();
  v16[3] = MEMORY[0x1E69E6530];
  v16[0] = 0;
  v13 = sub_1C71B17E4(v16);
  v14 = sub_1C71B192C(v12, v13, 0, 5, 0);

  return v14;
}

uint64_t sub_1C71B0EC4()
{
  switch(*v0)
  {
    case 1:
      sub_1C6F65BE8(0, &qword_1EDD0FAD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1C75604F0;
      *(v22 + 56) = MEMORY[0x1E69E6158];
      v23 = sub_1C6F6D524();
      *(v22 + 32) = 0x4D65636146736168;
      *(v22 + 40) = 0xEB000000006B7361;
      v24 = MEMORY[0x1E69E65A8];
      *(v22 + 96) = MEMORY[0x1E69E6530];
      *(v22 + 104) = v24;
      *(v22 + 64) = v23;
      *(v22 + 72) = 0;
      return sub_1C755112C();
    case 2:
      sub_1C6F65BE8(0, &qword_1EDD0FAD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1C755F060;
      v10 = MEMORY[0x1E69E6158];
      *(v9 + 56) = MEMORY[0x1E69E6158];
      v11 = sub_1C6F6D524();
      *(v9 + 64) = v11;
      *(v9 + 32) = 0xD000000000000012;
      *(v9 + 40) = 0x80000001C75A3020;
      v12 = MEMORY[0x1E69E75F8];
      v13 = MEMORY[0x1E69E7660];
      *(v9 + 96) = MEMORY[0x1E69E75F8];
      *(v9 + 104) = v13;
      *(v9 + 72) = 3;
      *(v9 + 136) = v10;
      *(v9 + 144) = v11;
      *(v9 + 112) = 0xD000000000000012;
      *(v9 + 120) = 0x80000001C75A3020;
      *(v9 + 176) = v12;
      *(v9 + 184) = v13;
      *(v9 + 152) = 2;
      return sub_1C755112C();
    case 3:
      sub_1C6F65BE8(0, &qword_1EDD0FAD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1C755F060;
      v15 = MEMORY[0x1E69E6158];
      *(v14 + 56) = MEMORY[0x1E69E6158];
      v16 = sub_1C6F6D524();
      *(v14 + 64) = v16;
      *(v14 + 32) = 0xD000000000000012;
      *(v14 + 40) = 0x80000001C75A3020;
      v17 = MEMORY[0x1E69E75F8];
      v18 = MEMORY[0x1E69E7660];
      *(v14 + 96) = MEMORY[0x1E69E75F8];
      *(v14 + 104) = v18;
      *(v14 + 72) = 4;
      *(v14 + 136) = v15;
      *(v14 + 144) = v16;
      *(v14 + 112) = 0xD000000000000012;
      *(v14 + 120) = 0x80000001C75A3020;
      *(v14 + 176) = v17;
      *(v14 + 184) = v18;
      *(v14 + 152) = 5;
      return sub_1C755112C();
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1C75604F0;
      *(v3 + 56) = MEMORY[0x1E69E6158];
      *(v3 + 64) = sub_1C6F6D524();
      *(v3 + 32) = 0x6570795465736F70;
      *(v3 + 40) = 0xE800000000000000;
      v38 = MEMORY[0x1E69E7CC0];
      sub_1C716DDD4();
      v4 = 0;
      v5 = 0;
      v6 = *(v38 + 16);
      do
      {
        v7 = v4;
        v8 = *(&unk_1F46A7908 + v5 + 16);
        if (v6 >= *(v38 + 24) >> 1)
        {
          sub_1C716DDD4();
        }

        *(v38 + 16) = v6 + 1;
        *(v38 + 2 * v6 + 32) = v8;
        v4 = 1;
        ++v6;
        v5 = 1;
      }

      while ((v7 & 1) == 0);
      goto LABEL_7;
    case 5:
      sub_1C6F65BE8(0, &qword_1EDD0FAD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1C75604F0;
      *(v25 + 56) = MEMORY[0x1E69E6158];
      v26 = sub_1C6F6D524();
      v27 = MEMORY[0x1E69E63B0];
      v28 = MEMORY[0x1E69E6438];
      *(v25 + 32) = 0x7974696C617571;
      *(v25 + 40) = 0xE700000000000000;
      *(v25 + 96) = v27;
      *(v25 + 104) = v28;
      v29 = 0x3FD0000000000000;
      goto LABEL_19;
    case 6:
      sub_1C6F65BE8(0, &qword_1EDD0FAD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1C75604F0;
      *(v25 + 56) = MEMORY[0x1E69E6158];
      v26 = sub_1C6F6D524();
      v30 = MEMORY[0x1E69E63B0];
      v31 = MEMORY[0x1E69E6438];
      *(v25 + 32) = 0x726F635372756C62;
      *(v25 + 40) = 0xE900000000000065;
      *(v25 + 96) = v30;
      *(v25 + 104) = v31;
      v29 = 0x3FC999999999999ALL;
LABEL_19:
      *(v25 + 64) = v26;
      *(v25 + 72) = v29;
      break;
    case 7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1C75604F0;
      *(v3 + 56) = MEMORY[0x1E69E6158];
      *(v3 + 64) = sub_1C6F6D524();
      *(v3 + 32) = 0x6570795465736F70;
      *(v3 + 40) = 0xE800000000000000;
      v38 = MEMORY[0x1E69E7CC0];
      sub_1C716DDD4();
      v19 = 0;
      v20 = *(v38 + 16);
      do
      {
        v21 = *(&unk_1F46A78E0 + v19 + 32);
        if (v20 >= *(v38 + 24) >> 1)
        {
          sub_1C716DDD4();
        }

        *(v38 + 16) = v20 + 1;
        *(v38 + 2 * v20 + 32) = v21;
        v19 += 2;
        ++v20;
      }

      while (v19 != 6);
LABEL_7:
      sub_1C6F65BE8(0, &qword_1EDD0FAD0);
      *(v3 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219300);
      *(v3 + 104) = sub_1C70E8188(&qword_1EDD0CF08, &qword_1EC219300);
      *(v3 + 72) = v38;
      break;
    case 8:
      sub_1C6F65BE8(0, &qword_1EDD0FAD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1C755F060;
      v33 = MEMORY[0x1E69E6158];
      *(v32 + 56) = MEMORY[0x1E69E6158];
      v34 = sub_1C6F6D524();
      *(v32 + 64) = v34;
      *(v32 + 32) = 1819045746;
      *(v32 + 40) = 0xE400000000000000;
      v35 = MEMORY[0x1E69E6448];
      v36 = MEMORY[0x1E69E64A8];
      *(v32 + 96) = MEMORY[0x1E69E6448];
      *(v32 + 104) = v36;
      *(v32 + 72) = -1085730854;
      *(v32 + 136) = v33;
      *(v32 + 144) = v34;
      *(v32 + 112) = 1819045746;
      *(v32 + 120) = 0xE400000000000000;
      *(v32 + 176) = v35;
      *(v32 + 184) = v36;
      *(v32 + 152) = 1061752794;
      break;
    default:
      sub_1C6F65BE8(0, &qword_1EDD0FAD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1C75604F0;
      *(v1 + 56) = MEMORY[0x1E69E6158];
      *(v1 + 64) = sub_1C6F6D524();
      *(v1 + 32) = 0x7461745373657965;
      *(v1 + 40) = 0xE900000000000065;
      v2 = MEMORY[0x1E69E7660];
      *(v1 + 96) = MEMORY[0x1E69E75F8];
      *(v1 + 104) = v2;
      *(v1 + 72) = 1;
      break;
  }

  return sub_1C755112C();
}

id sub_1C71B16F4()
{
  v0 = sub_1C755065C();

  v1 = [swift_getObjCClassFromMetadata() expressionForKeyPath_];

  return v1;
}

id sub_1C71B1758(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1C755065C();

  v7 = [swift_getObjCClassFromMetadata() expressionForSubquery:a1 usingIteratorVariable:v6 predicate:a4];

  return v7;
}

id sub_1C71B17E4(void *a1)
{
  v1 = a1[3];
  if (v1)
  {
    v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v4 = *(v1 - 8);
    v5 = MEMORY[0x1EEE9AC00](v3);
    v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7, v5);
    v8 = sub_1C7551DAC();
    (*(v4 + 8))(v7, v1);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v8 = 0;
  }

  v9 = [swift_getObjCClassFromMetadata() expressionForConstantValue_];
  swift_unknownObjectRelease();
  return v9;
}

id sub_1C71B192C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithLeftExpression:a1 rightExpression:a2 modifier:a3 type:a4 options:a5];

  return v7;
}

unint64_t sub_1C71B19A8()
{
  result = qword_1EC2189E0;
  if (!qword_1EC2189E0)
  {
    sub_1C6F65BE8(255, &qword_1EC2189D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2189E0);
  }

  return result;
}

void static GenerativeMemoryPhotosGraphData.parseChapters(memory:)(void *a1)
{
  if ([a1 photosGraphVersion] >= 1280)
  {
    if ([a1 isGenerative])
    {
      static GenerativeMemoryPhotosGraphData.parseChaptersNoVersionCheck(memory:)(a1);
      return;
    }

    if (qword_1EC213E80 != -1)
    {
      OUTLINED_FUNCTION_0_95();
      swift_once();
    }

    v12 = sub_1C754FF1C();
    __swift_project_value_buffer(v12, qword_1EC2189E8);
    v4 = sub_1C754FEEC();
    v13 = sub_1C75511BC();
    if (!os_log_type_enabled(v4, v13))
    {
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_96_0();
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1C6F5C000, v4, v13, "PHMemory is not a generative memory.", v14, 2u);
  }

  else
  {
    if (qword_1EC213E80 != -1)
    {
      OUTLINED_FUNCTION_0_95();
      swift_once();
    }

    v2 = sub_1C754FF1C();
    __swift_project_value_buffer(v2, qword_1EC2189E8);
    v3 = a1;
    v4 = sub_1C754FEEC();
    v5 = sub_1C75511BC();
    if (!OUTLINED_FUNCTION_32(v5))
    {

      return;
    }

    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = [v3 photosGraphVersion];

    OUTLINED_FUNCTION_88_1();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
  }

  OUTLINED_FUNCTION_235();
  MEMORY[0x1CCA5F8E0]();
LABEL_14:
}

void static GenerativeMemoryPhotosGraphData.getCuratedAssetPlaybackTimeRanges(for:)(void *a1)
{
  sub_1C71B2038(a1);
  if (v1)
  {
    v53 = *(v1 + 16);
    if (v53)
    {
      v3 = 0;
      v52 = v1 + 32;
      v4 = MEMORY[0x1E69E7CC8];
      *&v2 = 136315650;
      v55 = v2;
      v51 = v1;
      while (v3 < *(v1 + 16))
      {
        v5 = *(v52 + 24 * v3 + 16);
        v6 = *(v5 + 16);
        if (v6)
        {
          v54 = v3;
          sub_1C75504FC();
          v7 = 0;
          v8 = (v5 + 60);
          v56 = v5;
          while (v7 < *(v5 + 16))
          {
            v9 = *(v8 - 3);
            if (*(v8 - 8))
            {
              v9 = 0.0;
            }

            if ((*v8 & 1) == 0 && v9 >= 0.0)
            {
              v10 = *(v8 - 1);
              if (v10 > 0.0)
              {
                v11 = *(v8 - 7);
                v12 = *(v8 - 5);
                v13 = v9;
                swift_bridgeObjectRetain_n();
                sub_1C755134C();
                v14 = v10;
                sub_1C755134C();
                sub_1C75510FC();
                swift_isUniquelyReferenced_nonNull_native();
                v57 = v4;
                v15 = sub_1C6F78124(v11, v12);
                if (__OFADD__(*(v4 + 16), (v16 & 1) == 0))
                {
                  goto LABEL_36;
                }

                v17 = v15;
                v18 = v16;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218A00);
                v19 = sub_1C7551A2C();
                if (v19)
                {
                  v19 = sub_1C6F78124(v11, v12);
                  if ((v18 & 1) != (v20 & 1))
                  {
                    goto LABEL_39;
                  }

                  v17 = v19;
                }

                if (v18)
                {

                  v4 = v57;
                  OUTLINED_FUNCTION_2_64(v28, v29, v30, v31, v32, v33, v34, v35, v51, v52, v53, v54, v55, *(&v55 + 1), v56, v57, v58, v59, v36);
                }

                else
                {
                  v4 = v57;
                  *(v57 + 8 * (v17 >> 6) + 64) |= 1 << v17;
                  v37 = (*(v4 + 48) + 16 * v17);
                  *v37 = v11;
                  v37[1] = v12;
                  OUTLINED_FUNCTION_2_64(v19, v20, v21, v22, v23, v24, v25, v26, v51, v52, v53, v54, v55, *(&v55 + 1), v56, v57, v58, v59, v27);
                  v38 = *(v4 + 16);
                  v39 = __OFADD__(v38, 1);
                  v40 = v38 + 1;
                  if (v39)
                  {
                    goto LABEL_37;
                  }

                  *(v4 + 16) = v40;
                }

                if (qword_1EC213E80 != -1)
                {
                  OUTLINED_FUNCTION_0_95();
                  swift_once();
                }

                v41 = sub_1C754FF1C();
                __swift_project_value_buffer(v41, qword_1EC2189E8);
                sub_1C75504FC();
                v42 = sub_1C754FEEC();
                v43 = sub_1C755117C();

                if (os_log_type_enabled(v42, v43))
                {
                  v44 = swift_slowAlloc();
                  v45 = swift_slowAlloc();
                  v57 = v45;
                  *v44 = v55;
                  v46 = sub_1C6F765A4(v11, v12, &v57);

                  *(v44 + 4) = v46;
                  *(v44 + 12) = 2048;
                  *(v44 + 14) = v13;
                  *(v44 + 22) = 2048;
                  *(v44 + 24) = v14;
                  _os_log_impl(&dword_1C6F5C000, v42, v43, "Asset UUID %s has playback range from %f to %f.", v44, 0x20u);
                  __swift_destroy_boxed_opaque_existential_1(v45);
                  OUTLINED_FUNCTION_235();
                  MEMORY[0x1CCA5F8E0]();
                  OUTLINED_FUNCTION_235();
                  MEMORY[0x1CCA5F8E0]();
                }

                else
                {
                }

                v5 = v56;
              }
            }

            ++v7;
            v8 += 8;
            if (v6 == v7)
            {

              v1 = v51;
              v3 = v54;
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          break;
        }

LABEL_29:
        if (++v3 == v53)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_39:
      sub_1C7551E4C();
      __break(1u);
    }

    else
    {
LABEL_34:

      sub_1C70A9E44();
      sub_1C70C0A88();

      sub_1C71B21C4();
      OUTLINED_FUNCTION_9_46();
    }
  }

  else
  {
    v47 = objc_allocWithZone(MEMORY[0x1E695DF20]);
    OUTLINED_FUNCTION_9_46();

    [v48 v49];
  }
}

id sub_1C71B21C4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1C755048C();

  v2 = [v0 initWithDictionary_];

  return v2;
}

uint64_t sub_1C71B229C()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC2189E8);
  __swift_project_value_buffer(v0, qword_1EC2189E8);
  return sub_1C754FEFC();
}

uint64_t GenerativeMemoryPhotosGraphData.Chapter.Asset.uuid.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

uint64_t GenerativeMemoryPhotosGraphData.Chapter.title.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

void static GenerativeMemoryPhotosGraphData.parseChaptersNoVersionCheck(memory:)(void *a1)
{
  if (!sub_1C71B2634(a1))
  {
    return;
  }

  v2 = sub_1C755068C();
  sub_1C6FE3750(v2, v3);

  if (!v18)
  {
    sub_1C7030CDC(&v16, &qword_1EC219770);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v12 = 0x80000001C75A3090;
    sub_1C71B3D3C();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    v14 = 0xD00000000000003CLL;
    goto LABEL_15;
  }

  v4 = v19;
  v5 = *(v19 + 16);
  if (!v5)
  {

    v7 = MEMORY[0x1E69E7CC0];
LABEL_19:
    if (*(v7 + 16))
    {
      return;
    }

    v12 = 0x80000001C75A30D0;
    sub_1C71B3D3C();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    v14 = 0xD000000000000033;
LABEL_15:
    *v13 = v14;
    *(v13 + 8) = v12;
    *(v13 + 16) = 0;
    swift_willThrow();
    return;
  }

  v19 = MEMORY[0x1E69E7CC0];
  sub_1C716E6BC();
  v6 = 0;
  v7 = v19;
  while (v6 < *(v4 + 16))
  {
    sub_1C75504FC();
    sub_1C71B281C(&v16);
    if (v1)
    {

      return;
    }

    v8 = v16;
    v9 = v17;
    v19 = v7;
    v10 = *(v7 + 16);
    if (v10 >= *(v7 + 24) >> 1)
    {
      v15 = v17;
      sub_1C716E6BC();
      v9 = v15;
      v7 = v19;
    }

    ++v6;
    *(v7 + 16) = v10 + 1;
    v11 = v7 + 24 * v10;
    *(v11 + 32) = v8;
    *(v11 + 40) = v9;
    if (v5 == v6)
    {

      goto LABEL_19;
    }
  }

  __break(1u);
}

uint64_t sub_1C71B2634(void *a1)
{
  if (!sub_1C71B3FDC(a1))
  {
    if (qword_1EC213E80 != -1)
    {
      OUTLINED_FUNCTION_0_95();
      swift_once();
    }

    v4 = sub_1C754FF1C();
    __swift_project_value_buffer(v4, qword_1EC2189E8);
    v5 = sub_1C754FEEC();
    v6 = sub_1C755119C();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_96_0();
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "PHMemory missing photosGraphData";
    goto LABEL_14;
  }

  v1 = sub_1C755068C();
  sub_1C6FE3750(v1, v2);

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0);
    if (swift_dynamicCast())
    {
      return v10;
    }
  }

  else
  {
    sub_1C7030CDC(v11, &qword_1EC219770);
  }

  if (qword_1EC213E80 != -1)
  {
    OUTLINED_FUNCTION_0_95();
    swift_once();
  }

  v9 = sub_1C754FF1C();
  __swift_project_value_buffer(v9, qword_1EC2189E8);
  v5 = sub_1C754FEEC();
  v6 = sub_1C755119C();
  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_96_0();
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "PHMemory does not contain generative memory data";
LABEL_14:
    _os_log_impl(&dword_1C6F5C000, v5, v6, v8, v7, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

LABEL_15:

  return 0;
}

void sub_1C71B281C(void *a1@<X8>)
{
  v4 = sub_1C755068C();
  sub_1C6FE3750(v4, v5);

  if (!v35)
  {
    sub_1C7030CDC(&v32, &qword_1EC219770);
    goto LABEL_17;
  }

  v6 = MEMORY[0x1E69E7CA0];
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v21 = 0x80000001C75A31D0;
    sub_1C71B3D3C();
    swift_allocError();
    v23 = 0xD000000000000015;
LABEL_19:
    *v22 = v23;
    *(v22 + 8) = v21;
    *(v22 + 16) = 0;
    swift_willThrow();
    return;
  }

  v7 = v31;
  v8 = sub_1C755068C();
  sub_1C6FE3750(v8, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACC0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v21 = 0x80000001C75A3200;
    sub_1C71B3D3C();
    swift_allocError();
    v23 = 0xD00000000000001CLL;
    goto LABEL_19;
  }

  v29 = a1;
  v10 = 0;
  v11 = v30;
  v36 = *(v30 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v36 == v10)
    {

      v24 = *(v12 + 16);
      v6 = a1;
      v7 = v31;
      v2 = v12;
      v12 = v30;
      if (v24)
      {
LABEL_25:
        *v6 = v12;
        v6[1] = v7;
        v6[2] = v2;
        return;
      }

      if (qword_1EC213E80 == -1)
      {
LABEL_22:
        v25 = sub_1C754FF1C();
        __swift_project_value_buffer(v25, qword_1EC2189E8);
        v26 = sub_1C754FEEC();
        v27 = sub_1C755119C();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_1C6F5C000, v26, v27, "Chapter contains no valid assets", v28, 2u);
          v12 = v30;
          v6 = v29;
          v7 = v31;
          MEMORY[0x1CCA5F8E0](v28, -1, -1);
        }

        goto LABEL_25;
      }

LABEL_28:
      swift_once();
      goto LABEL_22;
    }

    if (v10 >= *(v11 + 16))
    {
      __break(1u);
      goto LABEL_28;
    }

    sub_1C75504FC();
    sub_1C71B2C2C(&v32);
    if (v1)
    {
      break;
    }

    v2 = v33;
    if (v33)
    {
      v6 = v32;
      v7 = v34;
      v13 = BYTE4(v35);
      v14 = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB3A38();
        v12 = v19;
      }

      v15 = v12;
      v16 = *(v12 + 16);
      v17 = v15;
      if (v16 >= *(v15 + 24) >> 1)
      {
        sub_1C6FB3A38();
        v17 = v20;
      }

      *(v17 + 16) = v16 + 1;
      v18 = v17 + 32 * v16;
      v12 = v17;
      *(v18 + 32) = v6;
      *(v18 + 40) = v2;
      *(v18 + 48) = v7;
      *(v18 + 52) = BYTE4(v7) & 1;
      *(v18 + 56) = v14;
      *(v18 + 60) = ((v14 | (v13 << 32)) >> 32) & 1;
      v11 = v30;
    }

    else
    {
    }

    ++v10;
  }
}

uint64_t sub_1C71B2C2C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C755068C();
  sub_1C6FE3750(v2, v3);

  if (!v17)
  {
    sub_1C7030CDC(v16, &qword_1EC219770);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    sub_1C71B3D3C();
    swift_allocError();
    *v8 = 0xD00000000000001ALL;
    *(v8 + 8) = 0x80000001C75A3220;
    *(v8 + 16) = 0;
    return swift_willThrow();
  }

  v4 = sub_1C755068C();
  sub_1C6FE3750(v4, v5);

  if (swift_dynamicCast())
  {
    v6 = 0;
    v7 = v14;
  }

  else
  {
    v7 = 0;
    v6 = 0x100000000;
  }

  v10 = sub_1C755068C();
  sub_1C6FE3750(v10, v11);

  if (!v17)
  {
    result = sub_1C7030CDC(v16, &qword_1EC219770);
    goto LABEL_12;
  }

  result = swift_dynamicCast();
  if (!result)
  {
LABEL_12:
    v13 = 0;
    v12 = 0x100000000;
    goto LABEL_13;
  }

  v12 = 0;
  v13 = v14;
LABEL_13:
  *a1 = v14;
  *(a1 + 8) = v15;
  *(a1 + 16) = v6 | v7;
  *(a1 + 28) = BYTE4(v12);
  *(a1 + 24) = v12 | v13;
  return result;
}

uint64_t GenerativeMemoryPhotosGraphData.PromptInformation.dictionary.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  *(inited + 32) = sub_1C755068C();
  *(inited + 40) = v3;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = v1;
  return sub_1C75504DC();
}

void static GenerativeMemoryPhotosGraphData.parsePromptInformationAsDictionary(memory:)(void *a1)
{
  static GenerativeMemoryPhotosGraphData.parsePromptInformation(memory:)(a1, &v5);
  if (!v1)
  {
    v2 = v5;
    if (v5 != 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C755BAB0;
      *(inited + 32) = sub_1C755068C();
      *(inited + 40) = v4;
      *(inited + 72) = MEMORY[0x1E69E6370];
      *(inited + 48) = v2 & 1;
    }

    sub_1C75504DC();
  }
}

void static GenerativeMemoryPhotosGraphData.parsePromptInformation(memory:)(void *a1@<X0>, char *a2@<X8>)
{
  if ([a1 photosGraphVersion] >= 1280)
  {
    if ([a1 isGenerative])
    {
      static GenerativeMemoryPhotosGraphData.parsePromptInformationNoVersionCheck(memory:)(a1, a2);
      return;
    }

    if (qword_1EC213E80 != -1)
    {
      OUTLINED_FUNCTION_0_95();
      swift_once();
    }

    v9 = sub_1C754FF1C();
    __swift_project_value_buffer(v9, qword_1EC2189E8);
    v6 = sub_1C754FEEC();
    v10 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_32(v10))
    {
      OUTLINED_FUNCTION_96_0();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_88_1();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_1EC213E80 != -1)
    {
      OUTLINED_FUNCTION_0_95();
      swift_once();
    }

    v4 = sub_1C754FF1C();
    __swift_project_value_buffer(v4, qword_1EC2189E8);
    v5 = a1;
    v6 = sub_1C754FEEC();
    v7 = sub_1C75511BC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = [v5 photosGraphVersion];

      _os_log_impl(&dword_1C6F5C000, v6, v7, "PHMemory version is not supported, cannot read photosGraphData, %lld", v8, 0xCu);
LABEL_13:
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      goto LABEL_14;
    }

    v6 = v5;
  }

LABEL_14:

  *a2 = 2;
}

void static GenerativeMemoryPhotosGraphData.parsePromptInformationNoVersionCheck(memory:)(void *a1@<X0>, char *a2@<X8>)
{
  if (!sub_1C71B2634(a1))
  {
LABEL_12:
    v6 = 2;
    goto LABEL_13;
  }

  v4 = sub_1C755068C();
  sub_1C6FE3750(v4, v5);

  if (!v16)
  {
    sub_1C7030CDC(v15, &qword_1EC219770);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    if (qword_1EC213E80 != -1)
    {
      OUTLINED_FUNCTION_0_95();
      swift_once();
    }

    v7 = sub_1C754FF1C();
    __swift_project_value_buffer(v7, qword_1EC2189E8);
    v8 = sub_1C754FEEC();
    v9 = sub_1C755119C();
    if (OUTLINED_FUNCTION_32(v9))
    {
      OUTLINED_FUNCTION_96_0();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_88_1();
      _os_log_impl(v10, v11, v12, v13, v14, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    goto LABEL_12;
  }

  sub_1C71B3428(v15);

  if (v2)
  {
    return;
  }

  v6 = v15[0];
LABEL_13:
  *a2 = v6;
}

uint64_t sub_1C71B3428@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1C755068C();
  sub_1C6FE3750(v2, v3);

  if (v8)
  {
    result = swift_dynamicCast();
    if (result)
    {
      *a1 = v6;
      return result;
    }
  }

  else
  {
    sub_1C7030CDC(v7, &qword_1EC219770);
  }

  sub_1C71B3D3C();
  swift_allocError();
  *v5 = 0xD000000000000019;
  *(v5 + 8) = 0x80000001C75A31B0;
  *(v5 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1C71B3524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1C71B35B8, 0, 0);
}

uint64_t sub_1C71B35B8()
{
  if (sub_1C71B3FDC(*(v0 + 184)))
  {
    v1 = sub_1C71B2634(*(v0 + 184));
    if (v1)
    {
      v2 = v1;
      sub_1C755068C();
      v3 = sub_1C754DF8C();
      *(v0 + 104) = MEMORY[0x1E69E6158];
      *(v0 + 80) = v3;
      *(v0 + 88) = v4;
      sub_1C6F9ED18((v0 + 80), (v0 + 144));
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C6FC7D4C();

      sub_1C755068C();
      *(v0 + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0);
      *(v0 + 80) = v2;
      sub_1C6F9ED18((v0 + 80), (v0 + 144));
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C6FC7D4C();

      v5 = objc_opt_self();
      v6 = sub_1C755048C();

      *(v0 + 80) = 0;
      v7 = [v5 archivedDataWithRootObject:v6 requiringSecureCoding:1 error:v0 + 80];

      v8 = *(v0 + 80);
      if (v7)
      {
        v9 = *(v0 + 184);
        v23 = *(v0 + 192);
        v10 = sub_1C754DDEC();
        v12 = v11;

        *(v0 + 208) = v10;
        *(v0 + 216) = v12;
        v13 = swift_allocObject();
        v13[2] = v9;
        v13[3] = v10;
        v13[4] = v12;
        *(v0 + 112) = sub_1C71B4048;
        *(v0 + 120) = v13;
        v14 = MEMORY[0x1E69E9820];
        *(v0 + 80) = MEMORY[0x1E69E9820];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_1C6FD8F68;
        *(v0 + 104) = &block_descriptor_14;
        v15 = _Block_copy((v0 + 80));
        *(v0 + 224) = v15;
        v16 = v9;
        sub_1C6FEB1B0(v10, v12);

        *(v0 + 16) = v0;
        *(v0 + 24) = sub_1C71B3A10;
        v17 = swift_continuation_init();
        *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BE0);
        *(v0 + 80) = v14;
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_1C73E8D6C;
        *(v0 + 104) = &block_descriptor_30;
        *(v0 + 112) = v17;
        [v23 performChanges:v15 completionHandler:v0 + 80];

        return MEMORY[0x1EEE6DEC8](v0 + 16);
      }

      v20 = v8;
      sub_1C754DBEC();
    }

    else
    {

      sub_1C71B3D3C();
      OUTLINED_FUNCTION_9_10();
      swift_allocError();
      *v19 = xmmword_1C755FEA0;
      *(v19 + 16) = 2;
    }
  }

  else
  {
    sub_1C71B3D3C();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    *v18 = 0xD000000000000026;
    *(v18 + 8) = 0x80000001C75A3150;
    *(v18 + 16) = 0;
  }

  swift_willThrow();
  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1C71B3A10()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_1C71B3BE8;
  }

  else
  {
    v2 = sub_1C71B3B4C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C71B3B4C()
{
  v1 = v0[28];
  sub_1C6FC1640(v0[26], v0[27]);
  _Block_release(v1);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1C71B3BE8()
{
  v1 = v0[28];
  v3 = v0[26];
  v2 = v0[27];
  swift_willThrow();
  sub_1C6FC1640(v3, v2);
  _Block_release(v1);
  v4 = v0[1];

  return v4();
}

void sub_1C71B3CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() changeRequestForMemory_];
  if (v5)
  {
    v6 = v5;
    sub_1C73FE318(a2, a3, v5);
  }
}

unint64_t sub_1C71B3D3C()
{
  result = qword_1EC21ACF0;
  if (!qword_1EC21ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21ACF0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18PhotosIntelligence016GenerativeMemoryA9GraphDataC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy29_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_1C71B3DD8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 29))
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

uint64_t sub_1C71B3E18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 29) = 1;
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

    *(result + 29) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StoryOrchestrator.DelegateChannel.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s17PromptInformationVwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C71B3FDC(void *a1)
{
  v1 = [a1 photosGraphProperties];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C75504AC();

  return v3;
}

void Hastings.ShotlistRetrieval.assetUUIDs.getter()
{
  v1 = *v0;
  v2 = *v0 + 64;
  v3 = 1 << *(*v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*v0 + 64);
  v24 = (v3 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v25 = v2;
  v26 = v1;
  do
  {
    while (1)
    {
      if (!v5)
      {
        while (1)
        {
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if (v8 >= v24)
          {
            goto LABEL_27;
          }

          v5 = *(v2 + 8 * v8);
          ++v6;
          if (v5)
          {
            v6 = v8;
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        return;
      }

LABEL_9:
      v9 = *(*(v1 + 56) + ((v6 << 9) | (8 * __clz(__rbit64(v5)))));
      v10 = *(v9 + 16);
      if (v10)
      {
        v27 = v7;
        v28 = MEMORY[0x1E69E7CC0];
        sub_1C75504FC();
        sub_1C6F7ED9C();
        v11 = v28;
        v12 = (v9 + 40);
        do
        {
          v14 = *(v12 - 1);
          v13 = *v12;
          v16 = *(v28 + 16);
          v15 = *(v28 + 24);
          sub_1C75504FC();
          if (v16 >= v15 >> 1)
          {
            sub_1C6F7ED9C();
          }

          *(v28 + 16) = v16 + 1;
          v17 = v28 + 16 * v16;
          *(v17 + 32) = v14;
          *(v17 + 40) = v13;
          v12 += 3;
          --v10;
        }

        while (v10);

        v2 = v25;
        v1 = v26;
        v7 = v27;
      }

      else
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      v18 = *(v11 + 16);
      v19 = *(v7 + 16);
      if (__OFADD__(v19, v18))
      {
        goto LABEL_31;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v19 + v18 > *(v7 + 24) >> 1)
      {
        sub_1C6FB1814();
        v7 = v20;
      }

      v5 &= v5 - 1;
      if (!*(v11 + 16))
      {
        break;
      }

      if ((*(v7 + 24) >> 1) - *(v7 + 16) < v18)
      {
        goto LABEL_32;
      }

      swift_arrayInitWithCopy();

      if (v18)
      {
        v21 = *(v7 + 16);
        v22 = __OFADD__(v21, v18);
        v23 = v21 + v18;
        if (v22)
        {
          goto LABEL_33;
        }

        *(v7 + 16) = v23;
      }
    }
  }

  while (!v18);
  __break(1u);
LABEL_27:

  sub_1C706D154(v7);
}

uint64_t Hastings.CurationOptions.init(targetNumberOfCuratedAssets:shotlistRetrieval:requiredAssetUUIDs:eligibleAssetUUIDs:assetUUIDsByFeature:assetDependencySets:shotlistShouldDriveCurationSpan:shotlistMatchingIsEssentialForAnchorAssets:shotlistMatchingIsEssentialForDependentAssets:shotlistMatchingIsEssentialForIndependentAssets:prioritizeIconicity:randomSeed:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, char a12, char a13)
{
  v13 = *a2;
  *a9 = result;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = v13;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 49) = a8;
  *(a9 + 50) = a10;
  *(a9 + 51) = a11;
  *(a9 + 52) = a12;
  *(a9 + 53) = a13;
  return result;
}

uint64_t static Hastings.curatedAssetUUIDs(from:options:photoLibrary:eventRecorder:progressReporter:diagnosticReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 152) = a5;
  *(v6 + 160) = a6;
  *(v6 + 136) = a3;
  *(v6 + 144) = a4;
  *(v6 + 128) = a1;
  v8 = type metadata accessor for Hastings.Asset(0);
  OUTLINED_FUNCTION_18(v8);
  *(v6 + 168) = v9;
  *(v6 + 176) = swift_task_alloc();
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  v10 = sub_1C754F2FC();
  *(v6 + 208) = v10;
  OUTLINED_FUNCTION_18(v10);
  *(v6 + 216) = v11;
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = swift_task_alloc();
  v12 = sub_1C754F38C();
  *(v6 + 240) = v12;
  OUTLINED_FUNCTION_18(v12);
  *(v6 + 248) = v13;
  *(v6 + 256) = swift_task_alloc();
  v14 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v14;
  *(v6 + 48) = *(a2 + 32);
  *(v6 + 62) = *(a2 + 46);

  return MEMORY[0x1EEE6DFA0](sub_1C71B44CC, 0, 0);
}

uint64_t sub_1C71B44CC()
{
  v84 = v0;
  v1 = v0[18];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  sub_1C754F2CC();
  v81 = v0;
  v75 = v1;
  v2 = v0[16];
  sub_1C754F2BC();
  v3 = *(v2 + 16);
  if (!v3)
  {
    v6 = MEMORY[0x1E69E7CC8];
LABEL_15:
    v23 = v0[2];
    v24 = v0[4];
    if (!v24)
    {

      goto LABEL_37;
    }

    v79 = v0[21];
    v25 = -1;
    v26 = -1 << *(v24 + 32);
    if (-v26 < 64)
    {
      v25 = ~(-1 << -v26);
    }

    v0 = (v25 & *(v24 + 56));
    v27 = (63 - v26) >> 6;
    sub_1C75504FC();
    v28 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (v0)
    {
      v29 = v0;
LABEL_25:
      v0 = ((v29 - 1) & v29);
      if (v6[2])
      {
        v31 = (*(v24 + 48) + ((v28 << 10) | (16 * __clz(__rbit64(v29)))));
        v33 = *v31;
        v32 = v31[1];
        sub_1C75504FC();
        v34 = sub_1C6F78124(v33, v32);
        if (v35)
        {
          v36 = *(v79 + 72);
          sub_1C71B8480(v6[7] + v36 * v34, v81[23], type metadata accessor for Hastings.Asset);

          v77 = v36;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB2ED4(0, *(v7 + 16) + 1, 1, v7);
            v7 = v40;
          }

          v38 = *(v7 + 16);
          v37 = *(v7 + 24);
          if (v38 >= v37 >> 1)
          {
            sub_1C6FB2ED4(v37 > 1, v38 + 1, 1, v7);
            v7 = v41;
          }

          v39 = v81[23];
          *(v7 + 16) = v38 + 1;
          sub_1C71B82D4(v39, v7 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + v38 * v77);
        }

        else
        {
        }
      }
    }

    while (1)
    {
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v30 >= v27)
      {

        v42 = sub_1C706E8F0();
        if (*(v42 + 16) < v23)
        {
          v23 = *(v42 + 16);
        }

LABEL_37:
        v80 = v23;
        v43 = v81[20];
        v44 = *(v81 + 2);
        v82[0] = *(v81 + 1);
        v82[1] = v44;
        v83[0] = *(v81 + 3);
        *(v83 + 14) = *(v81 + 62);
        if (v43)
        {
          v45 = *(v43 + 16);
        }

        else
        {
          v45 = 0;
        }

        v47 = v81[28];
        v46 = v81[29];
        v49 = v81[26];
        v48 = v81[27];
        v50 = v81[17];
        _s10SummarizerCMa(0);
        swift_allocObject();
        sub_1C7035CB0((v81 + 2), (v81 + 9));
        sub_1C7034C70(v82, v50, v45);
        (*(v48 + 32))(v47, v46, v49);
        v0 = v80;
        v7 = sub_1C754F0BC();

        if (qword_1EC213E88 == -1)
        {
LABEL_41:
          v51 = sub_1C754FF1C();
          __swift_project_value_buffer(v51, qword_1EC25B6F0);
          sub_1C75504FC();
          v52 = sub_1C754FEEC();
          v53 = sub_1C75511BC();
          v54 = v81;
          if (os_log_type_enabled(v52, v53))
          {
            v55 = swift_slowAlloc();
            *v55 = 134218240;
            *(v55 + 4) = *(v7 + 16);

            *(v55 + 12) = 2048;
            *(v55 + 14) = v0;
            _os_log_impl(&dword_1C6F5C000, v52, v53, "Curated %ld out of %ld expected", v55, 0x16u);
            MEMORY[0x1CCA5F8E0](v55, -1, -1);
          }

          else
          {
          }

          v58 = *(v7 + 16);
          if (v58)
          {
            v59 = v81[21];
            v60 = v81[22];
            *&v82[0] = MEMORY[0x1E69E7CC0];
            sub_1C6F7ED9C();
            v61 = *&v82[0];
            v62 = v7 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
            v63 = *(v59 + 72);
            do
            {
              v64 = v54[22];
              sub_1C71B8480(v62, v64, type metadata accessor for Hastings.Asset);
              v65 = *v64;
              v66 = *(v60 + 8);
              sub_1C75504FC();
              sub_1C71B84DC(v64, type metadata accessor for Hastings.Asset);
              *&v82[0] = v61;
              v67 = *(v61 + 16);
              if (v67 >= *(v61 + 24) >> 1)
              {
                sub_1C6F7ED9C();
                v61 = *&v82[0];
              }

              *(v61 + 16) = v67 + 1;
              v68 = v61 + 16 * v67;
              *(v68 + 32) = v65;
              *(v68 + 40) = v66;
              v62 += v63;
              --v58;
              v54 = v81;
            }

            while (v58);
          }

          sub_1C754F2EC();
          v69 = v54[31];
          v70 = v54[32];
          v71 = v54[30];
          v72 = v54[18];

          __swift_project_boxed_opaque_existential_1(v72, v75[3]);
          sub_1C754F1AC();
          (*(v69 + 8))(v70, v71);

          OUTLINED_FUNCTION_130_0();

          __asm { BRAA            X2, X16 }
        }

LABEL_58:
        swift_once();
        goto LABEL_41;
      }

      v29 = *(v24 + 56 + 8 * v30);
      ++v28;
      if (v29)
      {
        v28 = v30;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v76 = v0[25];
  v4 = v0[21];
  v5 = v0[16] + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = MEMORY[0x1E69E7CC8];
  v7 = *(v4 + 72);
  while (1)
  {
    v78 = v3;
    v9 = v0[24];
    v8 = v0[25];
    sub_1C71B8480(v5, v8, type metadata accessor for Hastings.Asset);
    v10 = *v8;
    v11 = *(v76 + 8);
    sub_1C71B8480(v8, v9, type metadata accessor for Hastings.Asset);
    swift_isUniquelyReferenced_nonNull_native();
    *&v82[0] = v6;
    v12 = sub_1C6F78124(v10, v11);
    if (__OFADD__(v6[2], (v13 & 1) == 0))
    {
      goto LABEL_56;
    }

    v14 = v12;
    v15 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A38);
    v6 = *&v82[0];
    if ((sub_1C7551A2C() & 1) == 0)
    {
      v0 = v81;
      goto LABEL_8;
    }

    v16 = sub_1C6F78124(v10, v11);
    v0 = v81;
    if ((v15 & 1) != (v17 & 1))
    {
      break;
    }

    v14 = v16;
LABEL_8:
    v18 = v0[24];
    if (v15)
    {
      sub_1C7091D14(v18, *(*&v82[0] + 56) + v14 * v7);
    }

    else
    {
      *(*&v82[0] + 8 * (v14 >> 6) + 64) |= 1 << v14;
      v19 = (v6[6] + 16 * v14);
      *v19 = v10;
      v19[1] = v11;
      sub_1C71B82D4(v18, v6[7] + v14 * v7);
      v20 = v6[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_57;
      }

      v6[2] = v22;
      sub_1C75504FC();
    }

    sub_1C71B84DC(v0[25], type metadata accessor for Hastings.Asset);
    v5 += v7;
    v3 = v78 - 1;
    if (v78 == 1)
    {
      goto LABEL_15;
    }
  }

  OUTLINED_FUNCTION_130_0();

  return sub_1C7551E4C();
}

PhotosIntelligence::Hastings::ShotlistQueryAsset __swiftcall Hastings.ShotlistQueryAsset.init(uuid:normalizedSimilarityScore:)(Swift::String uuid, Swift::Double normalizedSimilarityScore)
{
  *v2 = uuid;
  *(v2 + 16) = normalizedSimilarityScore;
  result.uuid = uuid;
  result.normalizedSimilarityScore = normalizedSimilarityScore;
  return result;
}

uint64_t Hastings.AssetDependencySet.init(anchorAssetUUIDs:dependentAssetUUIDs:dependencyGroupIDByAssetUUID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_1C71B4EDC()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC25B6F0);
  v1 = OUTLINED_FUNCTION_90();
  __swift_project_value_buffer(v1, v2);
  return sub_1C754FEFC();
}

PhotosIntelligence::Hastings::FeatureType_optional __swiftcall Hastings.FeatureType.init(rawValue:)(Swift::String rawValue)
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

uint64_t Hastings.FeatureType.rawValue.getter()
{
  result = 0x6574636172616843;
  switch(*v0)
  {
    case 1:
      result = 0x6E6F697461636F4CLL;
      break;
    case 2:
      result = 0x746E657645;
      break;
    case 3:
      result = 1885958740;
      break;
    case 4:
      result = 0x7972657551;
      break;
    case 5:
      result = 0x6B61657262656954;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C71B5090@<X0>(uint64_t *a1@<X8>)
{
  result = Hastings.FeatureType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Hastings.Feature.handlingType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Hastings.Feature() + 24);
  sub_1C754F58C();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Hastings.Feature.init(id:type:handlingType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a3;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = v7;
  v8 = *(type metadata accessor for Hastings.Feature() + 24);
  sub_1C754F58C();
  OUTLINED_FUNCTION_12();
  v10 = *(v9 + 32);

  return v10(a5 + v8, a4);
}

uint64_t static Hastings.Feature.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C7551DBC() & 1) == 0 || (sub_1C6F9F5A4() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Hastings.Feature() + 24);

  return sub_1C6F9F714(a1 + v5, a2 + v5);
}

uint64_t Hastings.Feature.description.getter()
{
  BYTE8(v2) = 0;
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0x2865727574616546, 0xEC000000203A6469);
  MEMORY[0x1CCA5CD70](*v0, *(v0 + 8));
  MEMORY[0x1CCA5CD70](0x203A65707974202CLL, 0xE800000000000000);
  *&v2 = *(v0 + 16);
  sub_1C75519EC();
  MEMORY[0x1CCA5CD70](0xD000000000000010, 0x80000001C75A32A0);
  type metadata accessor for Hastings.Feature();
  sub_1C754F58C();
  sub_1C75519EC();
  MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
  return *(&v2 + 1);
}

uint64_t sub_1C71B5460(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x676E696C646E6168 && a2 == 0xEC00000065707954)
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

uint64_t sub_1C71B556C(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 1701869940;
  }

  return 0x676E696C646E6168;
}

uint64_t sub_1C71B55C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C71B5460(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C71B55E8(uint64_t a1)
{
  v2 = sub_1C71B8384();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C71B5624(uint64_t a1)
{
  v2 = sub_1C71B8384();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Hastings.Feature.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218A20);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_390();
  OUTLINED_FUNCTION_70(a1, a1[3]);
  sub_1C71B8384();
  OUTLINED_FUNCTION_30_23();
  sub_1C7551CCC();
  if (!v1)
  {
    sub_1C71B83D8();
    sub_1C7551D2C();
    type metadata accessor for Hastings.Feature();
    sub_1C754F58C();
    OUTLINED_FUNCTION_0_96();
    sub_1C71B8ED8(v8);
    sub_1C7551D2C();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t Hastings.Feature.hash(into:)()
{
  sub_1C75505AC();
  sub_1C6FF7814();
  type metadata accessor for Hastings.Feature();
  sub_1C754F58C();
  OUTLINED_FUNCTION_0_96();
  sub_1C71B8ED8(v0);
  return sub_1C755059C();
}

uint64_t Hastings.Feature.hashValue.getter()
{
  OUTLINED_FUNCTION_106();
  sub_1C75505AC();
  sub_1C6FF7814();
  type metadata accessor for Hastings.Feature();
  sub_1C754F58C();
  OUTLINED_FUNCTION_0_96();
  sub_1C71B8ED8(v0);
  OUTLINED_FUNCTION_32_18();
  return sub_1C7551FAC();
}

void Hastings.Feature.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  OUTLINED_FUNCTION_124();
  v14 = v13;
  v40 = v15;
  v42 = sub_1C754F58C();
  OUTLINED_FUNCTION_3_0();
  v39 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218A40);
  OUTLINED_FUNCTION_3_0();
  v41 = v20;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v36 - v22;
  v24 = type metadata accessor for Hastings.Feature();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_70(v14, v14[3]);
  sub_1C71B8384();
  sub_1C7551FFC();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v37 = v24;
    v38 = v19;
    v29 = v41;
    v28 = v42;
    *v27 = sub_1C7551BBC();
    *(v27 + 1) = v30;
    v36 = v30;
    sub_1C71B842C();
    sub_1C7551C1C();
    v31 = v29;
    v27[16] = a12;
    OUTLINED_FUNCTION_0_96();
    sub_1C71B8ED8(v32);
    v33 = v38;
    sub_1C7551C1C();
    (*(v31 + 8))(v23, v43);
    (*(v39 + 32))(&v27[*(v37 + 24)], v33, v28);
    sub_1C71B8480(v27, v40, type metadata accessor for Hastings.Feature);
    __swift_destroy_boxed_opaque_existential_1(v14);
    v34 = OUTLINED_FUNCTION_90();
    sub_1C71B84DC(v34, v35);
  }

  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C71B5C88@<X0>(uint64_t *a1@<X8>)
{
  result = Hastings.Feature.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C71B5CB8()
{
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C6FF7814();
  sub_1C754F58C();
  OUTLINED_FUNCTION_0_96();
  sub_1C71B8ED8(v0);
  OUTLINED_FUNCTION_32_18();
  return sub_1C7551FAC();
}

BOOL static Hastings.ShotlistQueryAsset.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1C7551DBC();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1C71B5E10(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001C75A3320 == a2)
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

uint64_t sub_1C71B5EE0(char a1)
{
  if (a1)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 1684632949;
  }
}

uint64_t sub_1C71B5F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C71B5E10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C71B5F44(uint64_t a1)
{
  v2 = sub_1C71B8534();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C71B5F80(uint64_t a1)
{
  v2 = sub_1C71B8534();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Hastings.ShotlistQueryAsset.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218A58);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_70(a1, a1[3]);
  sub_1C71B8534();
  sub_1C755200C();
  sub_1C7551CCC();
  if (!v8)
  {
    sub_1C7551CEC();
  }

  return (*(v5 + 8))(v1, v3);
}

uint64_t Hastings.ShotlistQueryAsset.hash(into:)()
{
  v1 = *(v0 + 16);
  sub_1C75505AC();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x1CCA5E4A0](*&v2);
}

uint64_t Hastings.ShotlistQueryAsset.hashValue.getter()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_106();
  sub_1C75505AC();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1CCA5E4A0](*&v2);
  return sub_1C7551FAC();
}

uint64_t Hastings.ShotlistQueryAsset.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218A68);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_389();
  OUTLINED_FUNCTION_70(a1, a1[3]);
  sub_1C71B8534();
  OUTLINED_FUNCTION_365();
  sub_1C7551FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v6 = sub_1C7551BBC();
  v8 = v7;
  sub_1C7551BDC();
  v10 = v9;
  v11 = OUTLINED_FUNCTION_94_2();
  v12(v11);
  *a2 = v6;
  a2[1] = v8;
  a2[2] = v10;
  sub_1C75504FC();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C71B63CC()
{
  sub_1C7551F3C();
  Hastings.ShotlistQueryAsset.hash(into:)();
  return sub_1C7551FAC();
}

uint64_t sub_1C71B6428(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000018 && 0x80000001C75A3340 == a2)
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

uint64_t sub_1C71B64C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C71B6428(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C71B64F4(uint64_t a1)
{
  v2 = sub_1C71B8588();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C71B6530(uint64_t a1)
{
  v2 = sub_1C71B8588();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Hastings.ShotlistRetrieval.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218A70);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_390();
  OUTLINED_FUNCTION_70(v2, v2[3]);
  sub_1C71B8588();
  sub_1C75504FC();
  OUTLINED_FUNCTION_365();
  sub_1C755200C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218A80);
  sub_1C71B85DC();
  sub_1C7551D2C();

  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_125();
}

void Hastings.ShotlistRetrieval.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218AA8);
  OUTLINED_FUNCTION_3_0();
  v29 = v28;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  OUTLINED_FUNCTION_70(v24, v24[3]);
  sub_1C71B8588();
  OUTLINED_FUNCTION_365();
  sub_1C7551FFC();
  if (!v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218A80);
    sub_1C71B86EC();
    sub_1C7551C1C();
    (*(v29 + 8))(v32, v27);
    *v26 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C71B684C()
{
  result = sub_1C75504DC();
  qword_1EC218A08 = MEMORY[0x1E69E7CD0];
  unk_1EC218A10 = MEMORY[0x1E69E7CD0];
  qword_1EC218A18 = result;
  return result;
}

uint64_t static Hastings.AssetDependencySet.empty.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC213E90 != -1)
  {
    swift_once();
  }

  v2 = unk_1EC218A10;
  v3 = qword_1EC218A18;
  *a1 = qword_1EC218A08;
  a1[1] = v2;
  a1[2] = v3;
  sub_1C75504FC();
  sub_1C75504FC();

  return sub_1C75504FC();
}

uint64_t sub_1C71B6928(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C75A3360 == a2;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000001C75A3380 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001CLL && 0x80000001C75A33A0 == a2)
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

unint64_t sub_1C71B6A40(char a1)
{
  result = 0xD000000000000010;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD000000000000013;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  return result;
}

uint64_t sub_1C71B6AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C71B6928(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C71B6AC8(uint64_t a1)
{
  v2 = sub_1C71B885C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C71B6B04(uint64_t a1)
{
  v2 = sub_1C71B885C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Hastings.AssetDependencySet.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218AC8);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_70(v2, v2[3]);
  v7 = sub_1C71B885C();
  sub_1C75504FC();
  OUTLINED_FUNCTION_365();
  sub_1C755200C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
  OUTLINED_FUNCTION_10_44(&qword_1EDD0CEF0);
  OUTLINED_FUNCTION_6_8();

  if (!v7)
  {
    OUTLINED_FUNCTION_6_8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C50);
    sub_1C71B8914(&qword_1EDD06C70);
    sub_1C7551D2C();
  }

  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_125();
}

void Hastings.AssetDependencySet.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_124();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218AD8);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_389();
  OUTLINED_FUNCTION_70(v12, v12[3]);
  sub_1C71B885C();
  OUTLINED_FUNCTION_365();
  sub_1C7551FFC();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
    OUTLINED_FUNCTION_9_47(&qword_1EDD0CEE8);
    OUTLINED_FUNCTION_12_40();
    OUTLINED_FUNCTION_12_40();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C50);
    sub_1C71B8914(&qword_1EC216128);
    sub_1C7551C1C();
    v16 = OUTLINED_FUNCTION_94_2();
    v17(v16);
    *v14 = a10;
    v14[1] = a10;
    v14[2] = a10;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C71B7020(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001BLL && 0x80000001C75A33C0 == a2;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001C75A33E0 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001C75A3400 == a2;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x80000001C75A3420 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x80000001C75A3440 == a2;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x80000001C75A3460 == a2;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001FLL && 0x80000001C75A3480 == a2;
              if (v11 || (sub_1C7551DBC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD00000000000002ALL && 0x80000001C75A34A0 == a2;
                if (v12 || (sub_1C7551DBC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000002DLL && 0x80000001C75A34D0 == a2;
                  if (v13 || (sub_1C7551DBC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD00000000000002FLL && 0x80000001C75A3500 == a2;
                    if (v14 || (sub_1C7551DBC() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000013 && 0x80000001C75A3530 == a2;
                      if (v15 || (sub_1C7551DBC() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0x65536D6F646E6172 && a2 == 0xEA00000000006465)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_1C7551DBC();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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
  }
}

unint64_t sub_1C71B73C0(char a1)
{
  result = 0x65536D6F646E6172;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD00000000000001FLL;
      break;
    case 7:
      result = 0xD00000000000002ALL;
      break;
    case 8:
      result = 0xD00000000000002DLL;
      break;
    case 9:
      result = 0xD00000000000002FLL;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      return result;
    default:
      result = 0xD00000000000001BLL;
      break;
  }

  return result;
}

uint64_t sub_1C71B7538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C71B7020(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C71B7560@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C71B73B8();
  *a1 = result;
  return result;
}

uint64_t sub_1C71B7588(uint64_t a1)
{
  v2 = sub_1C71B8978();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C71B75C4(uint64_t a1)
{
  v2 = sub_1C71B8978();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Hastings.CurationOptions.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218AE0);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_70(v3, v3[3]);
  sub_1C71B8978();
  sub_1C755200C();
  sub_1C7551D0C();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
    OUTLINED_FUNCTION_10_44(&qword_1EDD0CEF0);
    OUTLINED_FUNCTION_5_49();
    OUTLINED_FUNCTION_365();
    OUTLINED_FUNCTION_8_40();
    sub_1C7551CBC();
    OUTLINED_FUNCTION_5_49();
    OUTLINED_FUNCTION_365();
    OUTLINED_FUNCTION_8_40();
    sub_1C7551CBC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217EC8);
    sub_1C716A350();
    OUTLINED_FUNCTION_5_49();
    OUTLINED_FUNCTION_8_40();
    sub_1C7551CBC();
    v8 = sub_1C71B89CC();
    sub_1C75504FC();
    OUTLINED_FUNCTION_5_49();
    OUTLINED_FUNCTION_8_40();
    sub_1C7551D2C();

    if (!v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218AF8);
      sub_1C71B8A20(&unk_1EC218B00);
      OUTLINED_FUNCTION_5_49();
      OUTLINED_FUNCTION_8_40();
      sub_1C7551D2C();
      OUTLINED_FUNCTION_13_42(6);
      OUTLINED_FUNCTION_8_40();
      sub_1C7551CDC();
      OUTLINED_FUNCTION_13_42(7);
      OUTLINED_FUNCTION_8_40();
      sub_1C7551CDC();
      OUTLINED_FUNCTION_13_42(8);
      OUTLINED_FUNCTION_8_40();
      sub_1C7551CDC();
      OUTLINED_FUNCTION_13_42(9);
      OUTLINED_FUNCTION_8_40();
      sub_1C7551CDC();
      OUTLINED_FUNCTION_13_42(10);
      OUTLINED_FUNCTION_8_40();
      sub_1C7551CDC();
      OUTLINED_FUNCTION_13_42(11);
      sub_1C7551D4C();
    }
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_125();
}

void Hastings.CurationOptions.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218B10);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_389();
  OUTLINED_FUNCTION_70(v2, v2[3]);
  sub_1C71B8978();
  sub_1C7551FFC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    LOBYTE(v22[0]) = 0;
    OUTLINED_FUNCTION_2_65();
    v6 = sub_1C7551BFC();
    v16 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
    OUTLINED_FUNCTION_9_47(&qword_1EDD0CEE8);
    OUTLINED_FUNCTION_26_26();
    OUTLINED_FUNCTION_6_53();
    sub_1C7551BAC();
    v15 = v22[0];
    OUTLINED_FUNCTION_26_26();
    OUTLINED_FUNCTION_6_53();
    sub_1C7551BAC();
    v19 = v22[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217EC8);
    sub_1C71B8AD4();
    OUTLINED_FUNCTION_26_26();
    OUTLINED_FUNCTION_6_53();
    sub_1C7551BAC();
    v18 = v22[0];
    sub_1C71B8BB4();
    OUTLINED_FUNCTION_26_26();
    OUTLINED_FUNCTION_6_53();
    sub_1C7551C1C();
    v17 = v22[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218AF8);
    sub_1C71B8A20(&unk_1EC218B30);
    OUTLINED_FUNCTION_26_26();
    OUTLINED_FUNCTION_6_53();
    sub_1C7551C1C();
    v7 = v22[0];
    OUTLINED_FUNCTION_2_65();
    v8 = sub_1C7551BCC();
    OUTLINED_FUNCTION_2_65();
    v29 = sub_1C7551BCC();
    OUTLINED_FUNCTION_2_65();
    v14 = sub_1C7551BCC();
    OUTLINED_FUNCTION_2_65();
    v13 = sub_1C7551BCC();
    LOBYTE(v22[0]) = 10;
    OUTLINED_FUNCTION_2_65();
    v12 = sub_1C7551BCC();
    OUTLINED_FUNCTION_6_53();
    v11 = sub_1C7551C3C();
    v29 &= 1u;
    v9 = OUTLINED_FUNCTION_3_63();
    v10(v9);
    *&v20[0] = v6;
    *(&v20[0] + 1) = v15;
    v20[1] = __PAIR128__(v18, v19);
    *v21 = v17;
    *&v21[8] = v7;
    v21[16] = v8 & 1;
    v21[17] = v29;
    v21[18] = v14 & 1;
    v21[19] = v13 & 1;
    v21[20] = v12 & 1;
    v21[21] = v11;
    *v16 = v20[0];
    *(v16 + 16) = __PAIR128__(v18, v19);
    *(v16 + 32) = *v21;
    *(v16 + 46) = *&v21[14];
    sub_1C7035CB0(v20, v22);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v22[0] = v6;
    v22[1] = v15;
    v22[2] = v19;
    v22[3] = v18;
    v22[4] = v17;
    v22[5] = v7;
    v23 = v8 & 1;
    v24 = v29;
    v25 = v14 & 1;
    v26 = v13 & 1;
    v27 = v12 & 1;
    v28 = v11;
    sub_1C714E318(v22);
  }

  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C71B7FBC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001CLL && 0x80000001C75A3300 == a2)
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

uint64_t sub_1C71B805C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C71B7FBC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C71B8088(uint64_t a1)
{
  v2 = sub_1C71B8C5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C71B80C4(uint64_t a1)
{
  v2 = sub_1C71B8C5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Hastings.DiagnosticReporter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C71B8158(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218B40);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_390();
  OUTLINED_FUNCTION_70(a1, a1[3]);
  sub_1C71B8C5C();
  OUTLINED_FUNCTION_30_23();
  _s10SummarizerC18DiagnosticReporterCMa();
  sub_1C71B8ED8(&unk_1EC218B50);
  sub_1C7551D2C();
  return (*(v5 + 8))(v1, v3);
}

uint64_t sub_1C71B82D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Hastings.Asset(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for Hastings.Feature()
{
  result = qword_1EC218B88;
  if (!qword_1EC218B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C71B8384()
{
  result = qword_1EC218A28;
  if (!qword_1EC218A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218A28);
  }

  return result;
}

unint64_t sub_1C71B83D8()
{
  result = qword_1EC218A30;
  if (!qword_1EC218A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218A30);
  }

  return result;
}

unint64_t sub_1C71B842C()
{
  result = qword_1EC218A48;
  if (!qword_1EC218A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218A48);
  }

  return result;
}

uint64_t sub_1C71B8480(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  v4 = OUTLINED_FUNCTION_90();
  v5(v4);
  return a2;
}

uint64_t sub_1C71B84DC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C71B8534()
{
  result = qword_1EC218A60;
  if (!qword_1EC218A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218A60);
  }

  return result;
}

unint64_t sub_1C71B8588()
{
  result = qword_1EC218A78;
  if (!qword_1EC218A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218A78);
  }

  return result;
}

unint64_t sub_1C71B85DC()
{
  result = qword_1EC218A88;
  if (!qword_1EC218A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC218A80);
    sub_1C71B87A8(&unk_1EC218A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218A88);
  }

  return result;
}

unint64_t sub_1C71B8698()
{
  result = qword_1EC218AA0;
  if (!qword_1EC218AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218AA0);
  }

  return result;
}

unint64_t sub_1C71B86EC()
{
  result = qword_1EC218AB0;
  if (!qword_1EC218AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC218A80);
    sub_1C71B87A8(&unk_1EC218AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218AB0);
  }

  return result;
}

unint64_t sub_1C71B87A8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_28_19();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC218A98);
    v2();
    result = OUTLINED_FUNCTION_31_22();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C71B8808()
{
  result = qword_1EC218AC0;
  if (!qword_1EC218AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218AC0);
  }

  return result;
}

unint64_t sub_1C71B885C()
{
  result = qword_1EC218AD0;
  if (!qword_1EC218AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218AD0);
  }

  return result;
}

unint64_t sub_1C71B88B0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_28_19();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC215BF0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C71B8914(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_28_19();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC214C50);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C71B8978()
{
  result = qword_1EC218AE8;
  if (!qword_1EC218AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218AE8);
  }

  return result;
}

unint64_t sub_1C71B89CC()
{
  result = qword_1EC218AF0;
  if (!qword_1EC218AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218AF0);
  }

  return result;
}

unint64_t sub_1C71B8A20(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_28_19();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC218AF8);
    v2();
    result = OUTLINED_FUNCTION_31_22();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C71B8A80()
{
  result = qword_1EC218B08;
  if (!qword_1EC218B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218B08);
  }

  return result;
}

unint64_t sub_1C71B8AD4()
{
  result = qword_1EC218B18;
  if (!qword_1EC218B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC217EC8);
    sub_1C71B8ED8(&unk_1EC218B20);
    sub_1C71B88B0(&qword_1EDD0CEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218B18);
  }

  return result;
}

unint64_t sub_1C71B8BB4()
{
  result = qword_1EC218B28;
  if (!qword_1EC218B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218B28);
  }

  return result;
}

unint64_t sub_1C71B8C08()
{
  result = qword_1EC218B38;
  if (!qword_1EC218B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218B38);
  }

  return result;
}

unint64_t sub_1C71B8C5C()
{
  result = qword_1EC218B48;
  if (!qword_1EC218B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218B48);
  }

  return result;
}

unint64_t sub_1C71B8CB4()
{
  result = qword_1EC218B58;
  if (!qword_1EC218B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218B58);
  }

  return result;
}

unint64_t sub_1C71B8D0C()
{
  result = qword_1EC218B60;
  if (!qword_1EC218B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC218B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218B60);
  }

  return result;
}

unint64_t sub_1C71B8ED8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C71B8F20()
{
  result = qword_1EC218B80;
  if (!qword_1EC218B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218B80);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Hastings.FeatureType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C71B9088()
{
  result = sub_1C754F58C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy54_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 46) = *(a2 + 46);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C71B9158(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 54))
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

uint64_t sub_1C71B9198(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 54) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 54) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Hastings.CurationOptions.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Hastings.CurationOptions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C71B93F4(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for Hastings.ShotlistQueryAsset.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C71B957C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C71B965C()
{
  result = qword_1EC218B98;
  if (!qword_1EC218B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218B98);
  }

  return result;
}

unint64_t sub_1C71B96B4()
{
  result = qword_1EC218BA0;
  if (!qword_1EC218BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218BA0);
  }

  return result;
}

unint64_t sub_1C71B970C()
{
  result = qword_1EC218BA8;
  if (!qword_1EC218BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218BA8);
  }

  return result;
}

unint64_t sub_1C71B9764()
{
  result = qword_1EC218BB0;
  if (!qword_1EC218BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218BB0);
  }

  return result;
}

unint64_t sub_1C71B97BC()
{
  result = qword_1EC218BB8;
  if (!qword_1EC218BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218BB8);
  }

  return result;
}

unint64_t sub_1C71B9814()
{
  result = qword_1EC218BC0;
  if (!qword_1EC218BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218BC0);
  }

  return result;
}

unint64_t sub_1C71B986C()
{
  result = qword_1EC218BC8;
  if (!qword_1EC218BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218BC8);
  }

  return result;
}

unint64_t sub_1C71B98C4()
{
  result = qword_1EC218BD0;
  if (!qword_1EC218BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218BD0);
  }

  return result;
}

unint64_t sub_1C71B991C()
{
  result = qword_1EC218BD8;
  if (!qword_1EC218BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218BD8);
  }

  return result;
}

unint64_t sub_1C71B9974()
{
  result = qword_1EC218BE0;
  if (!qword_1EC218BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218BE0);
  }

  return result;
}

unint64_t sub_1C71B99CC()
{
  result = qword_1EC218BE8;
  if (!qword_1EC218BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218BE8);
  }

  return result;
}

unint64_t sub_1C71B9A24()
{
  result = qword_1EC218BF0;
  if (!qword_1EC218BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218BF0);
  }

  return result;
}

unint64_t sub_1C71B9A7C()
{
  result = qword_1EC218BF8;
  if (!qword_1EC218BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218BF8);
  }

  return result;
}

unint64_t sub_1C71B9AD4()
{
  result = qword_1EC218C00;
  if (!qword_1EC218C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218C00);
  }

  return result;
}

unint64_t sub_1C71B9B2C()
{
  result = qword_1EC218C08;
  if (!qword_1EC218C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218C08);
  }

  return result;
}

unint64_t sub_1C71B9B84()
{
  result = qword_1EC218C10;
  if (!qword_1EC218C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218C10);
  }

  return result;
}

unint64_t sub_1C71B9BDC()
{
  result = qword_1EC218C18;
  if (!qword_1EC218C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218C18);
  }

  return result;
}

unint64_t sub_1C71B9C34()
{
  result = qword_1EC218C20;
  if (!qword_1EC218C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218C20);
  }

  return result;
}

unint64_t sub_1C71B9C88()
{
  result = qword_1EC218C28;
  if (!qword_1EC218C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218C28);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_18()
{

  return sub_1C755059C();
}

uint64_t sub_1C71B9E20(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    OUTLINED_FUNCTION_8_41();
    sub_1C716D5D0();
    v4 = v11;
    v5 = (v1 + 32);
    do
    {
      memcpy(__dst, v5, 0x41uLL);
      sub_1C7025F3C(__dst, v9);
      OUTLINED_FUNCTION_137_4();
      if (v2 >= v6 >> 1)
      {
        OUTLINED_FUNCTION_89_8();
        sub_1C716D5D0();
        v4 = v11;
      }

      v9[3] = &type metadata for PersonExtendedToken;
      v9[4] = sub_1C7026850();
      v9[0] = swift_allocObject();
      v7 = memcpy((v9[0] + 16), __dst, 0x41uLL);
      *(v4 + 16) = v2 + 1;
      OUTLINED_FUNCTION_116_7(v7);
      v5 += 72;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_1C71B9F20(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    OUTLINED_FUNCTION_8_41();
    sub_1C716D5D0();
    v4 = v11;
    v5 = (v1 + 32);
    do
    {
      memcpy(__dst, v5, 0x42uLL);
      sub_1C7025FF8(__dst, v9);
      OUTLINED_FUNCTION_137_4();
      if (v2 >= v6 >> 1)
      {
        OUTLINED_FUNCTION_89_8();
        sub_1C716D5D0();
        v4 = v11;
      }

      v9[3] = &type metadata for PetExtendedToken;
      v9[4] = sub_1C70268A4();
      v9[0] = swift_allocObject();
      v7 = memcpy((v9[0] + 16), __dst, 0x42uLL);
      *(v4 + 16) = v2 + 1;
      OUTLINED_FUNCTION_116_7(v7);
      v5 += 72;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_1C71BA020(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    OUTLINED_FUNCTION_8_41();
    sub_1C716D5D0();
    v4 = v16;
    v5 = (v1 + 32);
    do
    {
      v6 = v5[1];
      v12 = *v5;
      v13 = v6;
      v14 = v5[2];
      v15 = *(v5 + 6);
      sub_1C70260B4(&v12, v11);
      OUTLINED_FUNCTION_137_4();
      if (v2 >= v7 >> 1)
      {
        OUTLINED_FUNCTION_32_19();
        sub_1C716D5D0();
        v4 = v16;
      }

      v11[3] = &type metadata for LocationExtendedToken;
      v11[4] = sub_1C70268F8();
      OUTLINED_FUNCTION_439();
      v8 = swift_allocObject();
      v11[0] = v8;
      v9 = v13;
      *(v8 + 16) = v12;
      *(v8 + 32) = v9;
      *(v8 + 48) = v14;
      *(v8 + 64) = v15;
      *(v4 + 16) = v2 + 1;
      OUTLINED_FUNCTION_116_7(v8);
      v5 = (v5 + 56);
      --v3;
    }

    while (v3);
  }

  return v4;
}

void sub_1C71BA224()
{
  OUTLINED_FUNCTION_33();
  v1 = OUTLINED_FUNCTION_71_8();
  type metadata accessor for TimeExtendedToken(v1);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_5();
  if (*(v0 + 16))
  {
    OUTLINED_FUNCTION_11_37();
    sub_1C716D5D0();
    OUTLINED_FUNCTION_10_45();
    do
    {
      OUTLINED_FUNCTION_154();
      sub_1C71CD17C();
      OUTLINED_FUNCTION_18_24();
      if (v3)
      {
        OUTLINED_FUNCTION_29_21();
        sub_1C716D5D0();
      }

      v4 = sub_1C71CD2B8(&qword_1EDD0A7D0, type metadata accessor for TimeExtendedToken);
      OUTLINED_FUNCTION_122_4(v4);
      OUTLINED_FUNCTION_121_5();
      OUTLINED_FUNCTION_33_19();
      OUTLINED_FUNCTION_76_10();
      OUTLINED_FUNCTION_107_5();
    }

    while (!v5);
  }

  OUTLINED_FUNCTION_64_9();
  OUTLINED_FUNCTION_25_0();
}

void sub_1C71BA38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ValueMetadata *a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_121_1();
  a27 = v28;
  a28 = v30;
  v31 = *(v29 + 16);
  if (v31)
  {
    v32 = v29;
    a16 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_105();
    sub_1C716D5D0();
    v33 = a16;
    v34 = (v32 + 80);
    do
    {
      v35 = *(v34 - 5);
      v44 = *(v34 - 6);
      v36 = *(v34 - 4);
      v37 = *(v34 - 2);
      v38 = *(v34 - 1);
      v42 = *v34;
      v43 = *(v34 - 24);
      a16 = v33;
      v39 = *(v33 + 16);
      v40 = *(v33 + 24);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      if (v39 >= v40 >> 1)
      {
        OUTLINED_FUNCTION_89_5();
        sub_1C716D5D0();
        v33 = a16;
      }

      v34 += 56;
      a14 = &type metadata for PartOfDayExtendedToken;
      a15 = sub_1C70269A0();
      v41 = swift_allocObject();
      a11 = v41;
      *(v41 + 16) = v44;
      *(v41 + 24) = v35;
      *(v41 + 32) = v36;
      *(v41 + 40) = v43;
      *(v41 + 48) = v37;
      *(v41 + 56) = v38;
      *(v41 + 64) = v42;
      *(v33 + 16) = v39 + 1;
      sub_1C6F79794(&a11, (v33 + 40 * v39 + 32));
      --v31;
    }

    while (v31);
  }

  OUTLINED_FUNCTION_120_0();
}

void sub_1C71BA4BC()
{
  OUTLINED_FUNCTION_33();
  v1 = OUTLINED_FUNCTION_71_8();
  type metadata accessor for PartOfWeekExtendedToken(v1);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_5();
  if (*(v0 + 16))
  {
    OUTLINED_FUNCTION_11_37();
    sub_1C716D5D0();
    OUTLINED_FUNCTION_10_45();
    do
    {
      OUTLINED_FUNCTION_154();
      sub_1C71CD17C();
      OUTLINED_FUNCTION_18_24();
      if (v3)
      {
        OUTLINED_FUNCTION_29_21();
        sub_1C716D5D0();
      }

      v4 = sub_1C71CD2B8(&qword_1EC215E28, type metadata accessor for PartOfWeekExtendedToken);
      OUTLINED_FUNCTION_122_4(v4);
      OUTLINED_FUNCTION_121_5();
      OUTLINED_FUNCTION_33_19();
      OUTLINED_FUNCTION_76_10();
      OUTLINED_FUNCTION_107_5();
    }

    while (!v5);
  }

  OUTLINED_FUNCTION_64_9();
  OUTLINED_FUNCTION_25_0();
}