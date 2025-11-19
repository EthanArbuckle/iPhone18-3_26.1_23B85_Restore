uint64_t sub_1C6F9A9D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C6F9AA98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1C6F9AB2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6F9AC2C()
{

  OUTLINED_FUNCTION_30();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C6F9ACB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C6F9ACEC()
{

  OUTLINED_FUNCTION_30();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C6F9AD20()
{

  OUTLINED_FUNCTION_30();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C6F9AD80()
{

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1C6F9AE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7445F04(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C6F9AEC4()
{
  v1 = sub_1C754D70C();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = v5 + *(v6 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50);
  OUTLINED_FUNCTION_3_0();
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v7 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, v8);

  return MEMORY[0x1EEE6BDD0](v0, v14 + v15, v16 | 7);
}

uint64_t sub_1C6F9B098()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 56);
  if (v1 >> 60 != 15)
  {
    sub_1C6FC1640(*(v0 + 48), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C6F9B27C()
{
  OUTLINED_FUNCTION_7();
  v0 = sub_1C7460DD4();
  return OUTLINED_FUNCTION_7_97(v0);
}

uint64_t sub_1C6F9B2C8()
{
  OUTLINED_FUNCTION_7();
  v0 = sub_1C7460E30();
  return OUTLINED_FUNCTION_7_97(v0);
}

uint64_t sub_1C6F9B314()
{
  OUTLINED_FUNCTION_7();
  result = sub_1C7460E84();
  *v0 = result;
  return result;
}

uint64_t sub_1C6F9B340()
{
  OUTLINED_FUNCTION_7();
  v0 = sub_1C7460EEC();
  return OUTLINED_FUNCTION_7_97(v0);
}

uint64_t sub_1C6F9B38C()
{
  OUTLINED_FUNCTION_7();
  v0 = sub_1C7460F48();
  return OUTLINED_FUNCTION_7_97(v0);
}

uint64_t sub_1C6F9B3D8()
{
  OUTLINED_FUNCTION_7();
  v0 = sub_1C7460FE8();
  return OUTLINED_FUNCTION_7_97(v0);
}

uint64_t sub_1C6F9B424()
{
  OUTLINED_FUNCTION_7();
  v0 = sub_1C7461088();
  return OUTLINED_FUNCTION_7_97(v0);
}

uint64_t sub_1C6F9B470()
{
  OUTLINED_FUNCTION_7();
  v0 = sub_1C7461128();
  return OUTLINED_FUNCTION_7_97(v0);
}

uint64_t sub_1C6F9B4BC()
{
  OUTLINED_FUNCTION_7();
  v0 = sub_1C74611C8();
  return OUTLINED_FUNCTION_7_97(v0);
}

uint64_t sub_1C6F9B508()
{
  OUTLINED_FUNCTION_7();
  v0 = sub_1C7461268();
  return OUTLINED_FUNCTION_7_97(v0);
}

uint64_t sub_1C6F9B554()
{
  OUTLINED_FUNCTION_7();
  v0 = sub_1C7461308();
  return OUTLINED_FUNCTION_7_97(v0);
}

uint64_t sub_1C6F9B5A0()
{
  OUTLINED_FUNCTION_7();
  v0 = sub_1C74613A8();
  return OUTLINED_FUNCTION_7_97(v0);
}

uint64_t sub_1C6F9B5EC()
{
  OUTLINED_FUNCTION_7();
  v0 = sub_1C7461448();
  return OUTLINED_FUNCTION_7_97(v0);
}

uint64_t sub_1C6F9B638()
{
  OUTLINED_FUNCTION_7();
  v0 = sub_1C74614E8();
  return OUTLINED_FUNCTION_7_97(v0);
}

uint64_t sub_1C6F9B684()
{
  OUTLINED_FUNCTION_7();
  v0 = sub_1C7461588();
  return OUTLINED_FUNCTION_7_97(v0);
}

uint64_t sub_1C6F9B6D0()
{
  OUTLINED_FUNCTION_7();
  v0 = sub_1C7461628();
  return OUTLINED_FUNCTION_7_97(v0);
}

uint64_t sub_1C6F9B71C()
{
  OUTLINED_FUNCTION_7();
  v0 = sub_1C74616C8();
  return OUTLINED_FUNCTION_7_97(v0);
}

uint64_t sub_1C6F9B768()
{
  OUTLINED_FUNCTION_7();
  v0 = sub_1C7461768();
  return OUTLINED_FUNCTION_7_97(v0);
}

uint64_t sub_1C6F9B7B4()
{
  OUTLINED_FUNCTION_7();
  v0 = sub_1C7461808();
  return OUTLINED_FUNCTION_7_97(v0);
}

uint64_t sub_1C6F9B800()
{
  OUTLINED_FUNCTION_7();
  v0 = sub_1C74618A8();
  return OUTLINED_FUNCTION_7_97(v0);
}

uint64_t sub_1C6F9B84C()
{
  OUTLINED_FUNCTION_7();
  v0 = sub_1C7461948();
  return OUTLINED_FUNCTION_7_97(v0);
}

uint64_t sub_1C6F9B898()
{
  OUTLINED_FUNCTION_7();
  result = sub_1C74619E8();
  *v0 = result;
  return result;
}

uint64_t sub_1C6F9B938()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C1F8);
  OUTLINED_FUNCTION_3();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1C6F9BF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C754FF1C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C6F9BFF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_19_1();
  result = sub_1C754FF1C();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C6F9C1B4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C6F9C214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C08);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1C6F9C2A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C08);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6F9C334(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DE8);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1C6F9C388(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DE8);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1C6F9C430()
{
  OUTLINED_FUNCTION_33();
  v1 = sub_1C754E72C();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  v6 = v4 + *(v5 + 64);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50);
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  v10 = (v6 + *(v8 + 80)) & ~*(v8 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);
  OUTLINED_FUNCTION_25_0();

  return MEMORY[0x1EEE6BDD0](v11, v12, v13);
}

uint64_t sub_1C6F9C584()
{
  OUTLINED_FUNCTION_33();
  v1 = sub_1C754E72C();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v6 = v4 + *(v5 + 64);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50);
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  v10 = (v6 + *(v8 + 80)) & ~*(v8 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);
  OUTLINED_FUNCTION_25_0();

  return MEMORY[0x1EEE6BDD0](v11, v12, v13);
}

uint64_t sub_1C6F9C8C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C6FB6324(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C6F9C92C()
{
  v1 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64) + v5;

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 1, v4 | 7);
}

uint64_t sub_1C6F9CA08()
{
  OUTLINED_FUNCTION_99_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C6F9CA44()
{

  return MEMORY[0x1EEE6BDD0](v0, 35, 7);
}

uint64_t sub_1C6F9CA7C()
{
  OUTLINED_FUNCTION_99_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C6F9CB08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  OUTLINED_FUNCTION_96();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C70);
    OUTLINED_FUNCTION_96();
    if (*(v11 + 84) != a2)
    {
      return OUTLINED_FUNCTION_17_2(*(a1 + *(a3 + 32)));
    }

    v8 = v10;
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_1C6F9CC00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  OUTLINED_FUNCTION_96();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C70);
    OUTLINED_FUNCTION_96();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1C6F9CD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_17_2(*(a1 + 8));
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B088);
  v8 = a1 + *(a3 + 24);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1C6F9CD88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B088);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6F9D0A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C6F9D0DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C6F9D998(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1C74C78AC(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1C6F9DA48()
{
  type metadata accessor for StoryMusicCurationOptions();
  OUTLINED_FUNCTION_14_5();
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
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

  v14 = (v8 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  __swift_destroy_boxed_opaque_existential_1(v1 + v14);

  return MEMORY[0x1EEE6BDD0](v1, v14 + 40, v5 | 7);
}

uint64_t sub_1C6F9DC88()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C6F9DCC0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C6F9DD58()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  v1 = OUTLINED_FUNCTION_48_32(v0 + 96);

  return MEMORY[0x1EEE6BDD0](v1, 136, 7);
}

uint64_t sub_1C6F9DDAC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C754FF1C();
  OUTLINED_FUNCTION_96();
  if (*(v7 + 84) == a2)
  {
    DisambiguationSuggestionProducer = v6;
    v9 = a1;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v9, a2, DisambiguationSuggestionProducer);
  }

  if (a2 != 0x7FFFFFFF)
  {
    type metadata accessor for QueryAnnotatorV2();
    OUTLINED_FUNCTION_96();
    if (*(v13 + 84) == a2)
    {
      DisambiguationSuggestionProducer = v12;
      v14 = a3[9];
    }

    else
    {
      type metadata accessor for QueryAssetsRetrievalProcessor();
      OUTLINED_FUNCTION_96();
      if (*(v16 + 84) == a2)
      {
        DisambiguationSuggestionProducer = v15;
        v14 = a3[10];
      }

      else
      {
        DisambiguationSuggestionProducer = type metadata accessor for QueryDisambiguationSuggestionProducer();
        v14 = a3[11];
      }
    }

    v9 = a1 + v14;
    goto LABEL_13;
  }

  v10 = *(a1 + a3[6]);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_1C6F9DEF8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1C754FF1C();
  OUTLINED_FUNCTION_96();
  if (*(v9 + 84) == a3)
  {
    DisambiguationSuggestionProducer = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[6]) = (a2 - 1);
      return;
    }

    type metadata accessor for QueryAnnotatorV2();
    OUTLINED_FUNCTION_96();
    if (*(v13 + 84) == a3)
    {
      DisambiguationSuggestionProducer = v12;
      v14 = a4[9];
    }

    else
    {
      type metadata accessor for QueryAssetsRetrievalProcessor();
      OUTLINED_FUNCTION_96();
      if (*(v16 + 84) == a3)
      {
        DisambiguationSuggestionProducer = v15;
        v14 = a4[10];
      }

      else
      {
        DisambiguationSuggestionProducer = type metadata accessor for QueryDisambiguationSuggestionProducer();
        v14 = a4[11];
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, DisambiguationSuggestionProducer);
}

uint64_t sub_1C6F9E118()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C6F9E158()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C908);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1C6F9EB5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
    v10 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_1C6F9EBFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

_OWORD *sub_1C6F9ED18(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1C6F9ED50(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1C6F9ED5C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C6F9ED74(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18PhotosIntelligence23ExtendedTokenCollectionVSg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1C6F9EDA4(id a1, char a2)
{
  if (a2)
  {
  }
}

void sub_1C6F9EDB0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C755065C();
  [a3 setString_];
}

char *sub_1C6F9EE08(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C6F9EE28(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C6F9EE48(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

uint64_t sub_1C6F9EE84(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t MagicSlotItem.id.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

uint64_t MagicSlotItem.collectionLocalIdentifier.getter()
{
  v1 = *(v0 + 24);
  sub_1C75504FC();
  return v1;
}

uint64_t MagicSlotItem.collectionLocalIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t MagicSlotItem.init(id:curationContext:category:collectionLocalIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v6 = *a3;
  *(a6 + 16) = 10;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 18) = v6;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

PhotosIntelligence::MagicSlotItem::CodingKeys_optional __swiftcall MagicSlotItem.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v3 = v1;
  v4 = stringValue._countAndFlagsBits == 25705 && stringValue._object == 0xE200000000000000;
  if (v4 || (countAndFlagsBits = stringValue._countAndFlagsBits, (OUTLINED_FUNCTION_13_6() & 1) != 0))
  {

    v7 = 0;
  }

  else
  {
    v8 = countAndFlagsBits == 0x79726F6765746163 && object == 0xE800000000000000;
    if (v8 || (OUTLINED_FUNCTION_13_6() & 1) != 0)
    {

      v7 = 1;
    }

    else
    {
      v9 = countAndFlagsBits == 0xD000000000000019 && 0x80000001C7597110 == object;
      if (v9 || (OUTLINED_FUNCTION_13_6() & 1) != 0)
      {

        v7 = 2;
      }

      else if (countAndFlagsBits == OUTLINED_FUNCTION_35_1() && object == v10)
      {

        v7 = 3;
      }

      else
      {
        v12 = OUTLINED_FUNCTION_13_6();

        if (v12)
        {
          v7 = 3;
        }

        else
        {
          v7 = 4;
        }
      }
    }
  }

  *v3 = v7;
  return result;
}

uint64_t MagicSlotItem.CodingKeys.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t MagicSlotItem.CodingKeys.stringValue.getter()
{
  result = 25705;
  switch(*v0)
  {
    case 1:
      result = 0x79726F6765746163;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = OUTLINED_FUNCTION_35_1();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C6F9F258()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t sub_1C6F9F2A8(uint64_t a1)
{
  v2 = sub_1C6FA4378();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6F9F2E4(uint64_t a1)
{
  v2 = sub_1C6FA4378();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MagicSlotItem.CurationContext.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1C7551B2C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1C6F9F3D0(unsigned __int8 a1, char a2)
{
  v2 = 7954788;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7954788;
  switch(v4)
  {
    case 1:
      v5 = 0x61655968746E6F6DLL;
      v3 = 0xE900000000000072;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1918985593;
      break;
    case 3:
      v5 = 0x596568547265766FLL;
      v6 = 1936875877;
      goto LABEL_8;
    case 4:
      v3 = 0xE600000000000000;
      v5 = 0x6E6F73616573;
      break;
    case 5:
      v3 = 0xE700000000000000;
      v5 = 0x796164696C6F68;
      break;
    case 6:
      v5 = 0x6D72657465646E75;
      v6 = 1684369001;
LABEL_8:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  v7 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x61655968746E6F6DLL;
      v7 = 0xE900000000000072;
      break;
    case 2:
      v7 = 0xE400000000000000;
      v2 = 1918985593;
      break;
    case 3:
      v2 = 0x596568547265766FLL;
      v8 = 1936875877;
      goto LABEL_16;
    case 4:
      v7 = 0xE600000000000000;
      v2 = 0x6E6F73616573;
      break;
    case 5:
      v7 = 0xE700000000000000;
      v2 = 0x796164696C6F68;
      break;
    case 6:
      v2 = 0x6D72657465646E75;
      v8 = 1684369001;
LABEL_16:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_1_10();
  }

  return v10 & 1;
}

uint64_t sub_1C6F9F5A4()
{
  v0 = 0xE900000000000072;
  OUTLINED_FUNCTION_33_2();
  v3 = v2;
  v4 = 0xE900000000000072;
  switch(v5)
  {
    case 1:
      v4 = 0xE800000000000000;
      v3 = OUTLINED_FUNCTION_25_1(0x6F4Cu);
      break;
    case 2:
      v4 = 0xE500000000000000;
      v3 = 0x746E657645;
      break;
    case 3:
      v4 = 0xE400000000000000;
      v3 = 1885958740;
      break;
    case 4:
      v4 = 0xE500000000000000;
      v3 = 0x7972657551;
      break;
    case 5:
      v3 = 0x6B61657262656954;
      v4 = 0xEA00000000007265;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0xE800000000000000;
      OUTLINED_FUNCTION_23_4();
      break;
    case 2:
      v0 = 0xE500000000000000;
      v2 = 0x746E657645;
      break;
    case 3:
      v0 = 0xE400000000000000;
      v2 = 1885958740;
      break;
    case 4:
      v0 = 0xE500000000000000;
      v2 = 0x7972657551;
      break;
    case 5:
      v2 = 0x6B61657262656954;
      v0 = 0xEA00000000007265;
      break;
    default:
      break;
  }

  if (v3 == v2 && v4 == v0)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_2_1();
  }

  return v7 & 1;
}

uint64_t sub_1C6F9F75C(char a1)
{
  if (a1)
  {
    v1 = 0xEF74706D6F72506ELL;
  }

  else
  {
    v1 = 0xEF74706D6F725055;
  }

  OUTLINED_FUNCTION_16_2();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_10();
  }

  return v8 & 1;
}

uint64_t sub_1C6F9F7F8(unsigned __int8 a1, char a2)
{
  v2 = 1701736302;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1702125924;
    }

    else
    {
      v4 = 0x746E657665;
    }

    if (v3 == 1)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1701736302;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 1702125924;
    }

    else
    {
      v2 = 0x746E657665;
    }

    if (a2 == 1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_10();
  }

  return v8 & 1;
}

uint64_t sub_1C6F9F8CC(char a1, char a2)
{
  v3 = 0xD000000000000018;
  v4 = "osticsGenerator+LLMCalls.swift";
  v5 = "osticsGenerator+LLMCalls.swift";
  switch(a1)
  {
    case 1:
      v5 = "globalTraitsScopedAssets";
      v3 = 0xD000000000000014;
      break;
    case 2:
      v5 = "globalTraitsMatching";
      v3 = 0xD00000000000001DLL;
      break;
    case 3:
      v5 = "shotlistMatchingHighPrecision";
      v3 = 0xD00000000000001ALL;
      break;
    case 4:
      v5 = "shotlistMatchingHighRecall";
      v3 = 0xD000000000000010;
      break;
    case 5:
      v5 = "defaultRetrieval";
      v3 = 0xD000000000000016;
      break;
    default:
      break;
  }

  v6 = 0xD000000000000018;
  switch(a2)
  {
    case 1:
      v4 = "globalTraitsScopedAssets";
      v6 = 0xD000000000000014;
      break;
    case 2:
      v4 = "globalTraitsMatching";
      v6 = 0xD00000000000001DLL;
      break;
    case 3:
      v4 = "shotlistMatchingHighPrecision";
      v6 = 0xD00000000000001ALL;
      break;
    case 4:
      v4 = "shotlistMatchingHighRecall";
      v6 = 0xD000000000000010;
      break;
    case 5:
      v4 = "defaultRetrieval";
      v6 = 0xD000000000000016;
      break;
    default:
      break;
  }

  if (v3 == v6 && (v5 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_10();
  }

  return v8 & 1;
}

uint64_t sub_1C6F9FA4C(char a1, char a2)
{
  v2 = 0x72657470616863;
  if (a1)
  {
    OUTLINED_FUNCTION_54_1();
    if (v3)
    {
      v5 = 0x6B6361626C6C6166;
    }

    else
    {
      v5 = 0x73746F6873;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
    v5 = 0x72657470616863;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_54_1();
    if (v7)
    {
      v2 = 0x6B6361626C6C6166;
    }

    else
    {
      v2 = 0x73746F6873;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE500000000000000;
    }
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_1_10();
  }

  return v11 & 1;
}

uint64_t sub_1C6F9FB2C()
{
  v0 = 0xEE0074706D6F7250;
  OUTLINED_FUNCTION_42_3();
  v3 = 0x6D6F7246646F6F6DLL;
  v5 = v4;
  v6 = 0x6D6F7246646F6F6DLL;
  v7 = 0xEE0074706D6F7250;
  switch(v5)
  {
    case 1:
      v7 = 0x80000001C7595B00;
      v6 = 0xD000000000000012;
      break;
    case 2:
      v7 = 0x80000001C7595B20;
      v6 = v2 + 2;
      break;
    case 3:
      break;
    case 4:
      v7 = 0x80000001C7595B50;
      v6 = v2 + 3;
      break;
    case 5:
      v7 = 0x80000001C7595B70;
      v6 = v2 + 15;
      break;
    case 6:
      v7 = 0x80000001C7595BA0;
      v6 = v2 + 21;
      break;
    default:
      v7 = 0x80000001C7595AE0;
      v6 = v2 + 1;
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0x80000001C7595B00;
      v3 = 0xD000000000000012;
      break;
    case 2:
      v0 = 0x80000001C7595B20;
      v3 = v2 + 2;
      break;
    case 3:
      break;
    case 4:
      v0 = 0x80000001C7595B50;
      v3 = v2 + 3;
      break;
    case 5:
      v0 = 0x80000001C7595B70;
      v3 = v2 + 15;
      break;
    case 6:
      v0 = 0x80000001C7595BA0;
      v3 = v2 + 21;
      break;
    default:
      v0 = 0x80000001C7595AE0;
      v3 = v2 + 1;
      break;
  }

  if (v6 == v3 && v7 == v0)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_1();
  }

  return v9 & 1;
}

uint64_t sub_1C6F9FCFC(uint64_t a1, uint64_t a2)
{
  v3 = 0xEF7374696172546CLL;
  v4 = 0x61626F6C47657375;
  v5 = "useExtendedTokens";
  v6 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v7 = 0xD000000000000011;
    }

    else
    {
      v7 = 0x79726F7453657375;
    }

    if (v6 == 1)
    {
      v2 = 0x80000001C7595FC0;
    }

    else
    {
      v2 = 0xEE0074706D6F7250;
    }
  }

  else
  {
    v7 = OUTLINED_FUNCTION_19_4(a1, a2, 0x61626F6C47657375);
  }

  if (a2)
  {
    v8 = (v5 - 32) | 0x8000000000000000;
    if (a2 == 1)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v4 = 0x79726F7453657375;
    }

    if (a2 == 1)
    {
      v3 = v8;
    }

    else
    {
      v3 = 0xEE0074706D6F7250;
    }
  }

  if (v7 == v4 && v2 == v3)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_2_1();
  }

  return v10 & 1;
}

uint64_t sub_1C6F9FE20()
{
  OUTLINED_FUNCTION_24_9();
  if (v0)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0x6B6F546C616E6966;
  }

  if (v0)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0xEF6C6D782E736E65;
  }

  if (v1)
  {
    v5 = 0x6B6F546C616E6966;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (v1)
  {
    v6 = 0xEF6C6D782E736E65;
  }

  else
  {
    v6 = v2;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_10();
  }

  return v8 & 1;
}

uint64_t sub_1C6F9FEBC(unsigned __int8 a1, char a2)
{
  v2 = 0xED00006E6F697463;
  v3 = 0x656C65536F747561;
  v4 = a1;
  v5 = 0x656C65536F747561;
  v6 = 0xED00006E6F697463;
  switch(v4)
  {
    case 1:
      v6 = 0x80000001C7595F50;
      v5 = 0xD00000000000001ALL;
      break;
    case 2:
      v6 = 0x80000001C7595F70;
      v5 = 0xD000000000000014;
      break;
    case 3:
      v6 = 0x80000001C7595F90;
      v5 = 0xD00000000000001DLL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0x80000001C7595F50;
      v3 = 0xD00000000000001ALL;
      break;
    case 2:
      v2 = 0x80000001C7595F70;
      v3 = 0xD000000000000014;
      break;
    case 3:
      v2 = 0x80000001C7595F90;
      v3 = 0xD00000000000001DLL;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_1();
  }

  return v8 & 1;
}

uint64_t sub_1C6FA0000()
{
  OUTLINED_FUNCTION_50_0();
  v3 = 7105633;
  switch(v4)
  {
    case 1:
      v3 = 0x68736E6565726373;
      v5 = 7566447;
      goto LABEL_4;
    case 2:
      v0 = 0xE800000000000000;
      v3 = 0x7374706965636572;
      break;
    case 3:
      v3 = 0x61727473756C6C69;
      v0 = 0xED0000736E6F6974;
      break;
    case 4:
      v3 = 0x74697277646E6168;
      v5 = 6778473;
LABEL_4:
      v0 = v5 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 5:
      v0 = 0xE400000000000000;
      v3 = 1936744813;
      break;
    case 6:
      v0 = 0xE700000000000000;
      v3 = 0x7365646F437271;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(v1)
  {
    case 1:
      v2 = 0x68736E6565726373;
      v7 = 7566447;
      goto LABEL_12;
    case 2:
      v6 = 0xE800000000000000;
      v2 = 0x7374706965636572;
      break;
    case 3:
      v2 = 0x61727473756C6C69;
      v6 = 0xED0000736E6F6974;
      break;
    case 4:
      v2 = 0x74697277646E6168;
      v7 = 6778473;
LABEL_12:
      v6 = v7 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 5:
      v6 = 0xE400000000000000;
      v2 = 1936744813;
      break;
    case 6:
      v6 = 0xE700000000000000;
      v2 = 0x7365646F437271;
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_1_10();
  }

  return v9 & 1;
}

uint64_t sub_1C6FA01E0()
{
  OUTLINED_FUNCTION_4_1();
  switch(v2)
  {
    case 1:
      v0 = 0xE800000000000000;
      break;
    case 3:
      v0 = 0xE600000000000000;
      break;
    case 4:
      OUTLINED_FUNCTION_38_0();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_18_1();
  switch(v5)
  {
    case 1:
      v1 = 0xE800000000000000;
      v4 = 0x656C746974627573;
      break;
    case 2:
      v4 = 0x7265766F63;
      break;
    case 3:
      v1 = 0xE600000000000000;
      v4 = 0x737469617274;
      break;
    case 4:
      OUTLINED_FUNCTION_56_3();
      v4 = v6 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_10();
  }

  return v8 & 1;
}

uint64_t sub_1C6FA0308(char a1)
{
  v2 = 0xE500000000000000;
  switch(a1)
  {
    case 1:
      v2 = 0xEF72656B63695072;
      break;
    case 2:
      OUTLINED_FUNCTION_55_1();
      v2 = 0xE900000000000031;
      break;
    case 3:
      OUTLINED_FUNCTION_55_1();
      v2 = 0xE900000000000032;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_18_1();
  switch(v5)
  {
    case 1:
      v4 = 0x657061706C6C6177;
      v1 = 0xEF72656B63695072;
      break;
    case 2:
      OUTLINED_FUNCTION_47_5();
      v1 = 0xE900000000000031;
      break;
    case 3:
      OUTLINED_FUNCTION_47_5();
      v1 = 0xE900000000000032;
      break;
    default:
      break;
  }

  if (v3 == v4 && v2 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_1_10();
  }

  return v7 & 1;
}

uint64_t sub_1C6FA0440(unsigned __int8 a1, char a2)
{
  v2 = 0xEA0000000000656CLL;
  v3 = 0x626967696C457369;
  v4 = a1;
  v5 = 0x626967696C457369;
  v6 = 0xEA0000000000656CLL;
  switch(v4)
  {
    case 1:
      v6 = 0x80000001C7597050;
      v5 = 0xD000000000000018;
      break;
    case 2:
      v6 = 0x80000001C7597070;
      v5 = 0xD00000000000001CLL;
      break;
    case 3:
      v6 = 0x80000001C7597090;
      v5 = 0xD000000000000026;
      break;
    case 4:
      v6 = 0x80000001C75970C0;
      v5 = 0xD00000000000002FLL;
      break;
    case 5:
      v6 = 0x80000001C75970F0;
      v5 = 0xD00000000000001BLL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0x80000001C7597050;
      v3 = 0xD000000000000018;
      break;
    case 2:
      v2 = 0x80000001C7597070;
      v3 = 0xD00000000000001CLL;
      break;
    case 3:
      v2 = 0x80000001C7597090;
      v3 = 0xD000000000000026;
      break;
    case 4:
      v2 = 0x80000001C75970C0;
      v3 = 0xD00000000000002FLL;
      break;
    case 5:
      v2 = 0x80000001C75970F0;
      v3 = 0xD00000000000001BLL;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_1();
  }

  return v8 & 1;
}

uint64_t sub_1C6FA05E8()
{
  OUTLINED_FUNCTION_5_4();
  v3 = v2 & 0xFFFFFFFFFFFFLL | 0x614E000000000000;
  v4 = v1 | 1;
  v6 = v5;
  v7 = v3;
  switch(v6)
  {
    case 1:
      v7 = 0x55556E6F73726570;
      v8 = 17481;
      goto LABEL_8;
    case 2:
      v7 = 0x67416E6F73726570;
      v4 = 0xED00006570795465;
      break;
    case 3:
      v4 = 0xE800000000000000;
      v7 = OUTLINED_FUNCTION_25_1(0x6F6Cu);
      break;
    case 4:
      v4 = 0xE400000000000000;
      v7 = 1702125924;
      break;
    case 5:
      v4 = 0xE400000000000000;
      v7 = 1952540791;
      break;
    case 6:
      v7 = OUTLINED_FUNCTION_34_0() | 0x7472416300000000;
      v4 = 0xEB00000000747369;
      break;
    case 7:
      v7 = OUTLINED_FUNCTION_34_0() | 0x7469546300000000;
      v8 = 25964;
LABEL_8:
      v4 = v8 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      break;
    case 8:
      v7 = OUTLINED_FUNCTION_34_0() | 0x6E65476300000000;
      v4 = v1 + 6;
      break;
    case 9:
      v4 = 0xE400000000000000;
      v7 = 1685024621;
      break;
    case 10:
      v7 = 0x656E696665646E75;
      v4 = 0xE900000000000064;
      break;
    default:
      break;
  }

  v9 = v1 + 1;
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_5_4();
      v3 = v10 & 0xFFFFFFFFFFFFLL | 0x5555000000000000;
      v11 = 17481;
      goto LABEL_20;
    case 2:
      OUTLINED_FUNCTION_5_4();
      v3 = v12 & 0xFFFFFFFFFFFFLL | 0x6741000000000000;
      v9 = 0xED00006570795465;
      break;
    case 3:
      v9 = 0xE800000000000000;
      OUTLINED_FUNCTION_23_4();
      break;
    case 4:
      v9 = 0xE400000000000000;
      v3 = 1702125924;
      break;
    case 5:
      v9 = 0xE400000000000000;
      v3 = 1952540791;
      break;
    case 6:
      OUTLINED_FUNCTION_32_1();
      v3 = v14 | 0x7472416300000000;
      v9 = 0xEB00000000747369;
      break;
    case 7:
      OUTLINED_FUNCTION_32_1();
      v3 = v13 | 0x7469546300000000;
      v11 = 25964;
LABEL_20:
      v9 = v11 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      break;
    case 8:
      OUTLINED_FUNCTION_32_1();
      v3 = v15 | 0x6E65476300000000;
      v9 = v16 + 6;
      break;
    case 9:
      v9 = 0xE400000000000000;
      v3 = 1685024621;
      break;
    case 10:
      v3 = 0x656E696665646E75;
      v9 = 0xE900000000000064;
      break;
    default:
      break;
  }

  if (v7 == v3 && v4 == v9)
  {
    v18 = 1;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_1_10();
  }

  return v18 & 1;
}

uint64_t sub_1C6FA0860()
{
  v0 = 0xEA00000000007372;
  OUTLINED_FUNCTION_33_2();
  v3 = v2;
  v4 = 0xEA00000000007372;
  switch(v5)
  {
    case 1:
      v3 = OUTLINED_FUNCTION_25_1(0x6F4Cu);
      v4 = 0xE900000000000073;
      break;
    case 2:
      v4 = 0xE500000000000000;
      v6 = 1701669204;
      goto LABEL_6;
    case 3:
      v4 = 0xE500000000000000;
      v6 = 1885958740;
LABEL_6:
      v3 = v6 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
      break;
    case 4:
      v4 = 0xE700000000000000;
      v3 = 0x73746E656D6F4DLL;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_23_4();
      v0 = 0xE900000000000073;
      break;
    case 2:
      v0 = 0xE500000000000000;
      v7 = 1701669204;
      goto LABEL_12;
    case 3:
      v0 = 0xE500000000000000;
      v7 = 1885958740;
LABEL_12:
      v2 = v7 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
      break;
    case 4:
      v0 = 0xE700000000000000;
      v2 = 0x73746E656D6F4DLL;
      break;
    default:
      break;
  }

  if (v3 == v2 && v4 == v0)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_1();
  }

  return v9 & 1;
}

uint64_t sub_1C6FA09A8(unsigned __int8 a1, char a2)
{
  v2 = 0xED00007374696172;
  v3 = 0x74206C61626F6C67;
  v4 = a1;
  v5 = 0x74206C61626F6C67;
  v6 = 0xED00007374696172;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_38_0() | 0x6C65747900000000;
      v6 = 0xEB0000000072656CLL;
      break;
    case 3:
      v5 = 0x7563207465737361;
      v6 = 0xEE006E6F69746172;
      break;
    case 4:
      v6 = 0xE500000000000000;
      v5 = OUTLINED_FUNCTION_34_0() & 0xFFFF0000FFFFFFFFLL | 0x6300000000;
      break;
    default:
      v5 = 0xD000000000000013;
      v6 = 0x80000001C7595DE0;
      break;
  }

  switch(a2)
  {
    case 1:
      break;
    case 2:
      OUTLINED_FUNCTION_56_3();
      v3 = v8 | 0x6C65747900000000;
      v2 = 0xEB0000000072656CLL;
      break;
    case 3:
      OUTLINED_FUNCTION_15_8();
      v3 = v9 | 0x7563207400000000;
      v2 = 0xEE006E6F69746172;
      break;
    case 4:
      v2 = 0xE500000000000000;
      OUTLINED_FUNCTION_32_1();
      v3 = v7 & 0xFFFF0000FFFFFFFFLL | 0x6300000000;
      break;
    default:
      OUTLINED_FUNCTION_6_13();
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_2_1();
  }

  return v11 & 1;
}

uint64_t sub_1C6FA0B28()
{
  v1 = 0xEF6E6F697461746FLL;
  OUTLINED_FUNCTION_42_3();
  if (v2)
  {
    OUTLINED_FUNCTION_52_4();
    if (v7 == 1)
    {
      v10 = v6;
    }

    else
    {
      v10 = v6 + 1;
    }

    if (v7 == 1)
    {
      v0 = v8;
    }

    else
    {
      v0 = v9;
    }
  }

  else
  {
    v10 = OUTLINED_FUNCTION_19_4(v2, v3, 0x6E6E417972657571);
  }

  if (v4)
  {
    OUTLINED_FUNCTION_41_2();
    if (v14 == 1)
    {
      v5 = v11;
    }

    else
    {
      v5 = v11 + 1;
    }

    if (v14 == 1)
    {
      v1 = v13;
    }

    else
    {
      v1 = v12;
    }
  }

  if (v10 == v5 && v0 == v1)
  {
    v16 = 1;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_2_1();
  }

  return v16 & 1;
}

uint64_t sub_1C6FA0BE8()
{
  OUTLINED_FUNCTION_24_9();
  if (v0)
  {
    v3 = 0x646E616D65446E6FLL;
  }

  else
  {
    v3 = 0xD000000000000013;
  }

  if (v0)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = v2;
  }

  if (v1)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0x646E616D65446E6FLL;
  }

  if (v1)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_10();
  }

  return v8 & 1;
}

uint64_t sub_1C6FA0C9C(unsigned __int8 a1, char a2)
{
  v2 = 0xED00006465736F6CLL;
  v3 = 0x43746F4E73657965;
  v4 = a1;
  v5 = "facePoseNotForbidden";
  v6 = 0x43746F4E73657965;
  v7 = 0xED00006465736F6CLL;
  v8 = "notNegativeExpression";
  switch(v4)
  {
    case 1:
      v7 = 0xE600000000000000;
      v6 = 0x6B73614D6F6ELL;
      break;
    case 2:
      v7 = 0x80000001C7596C30;
      v6 = 0xD000000000000015;
      break;
    case 3:
      v6 = OUTLINED_FUNCTION_27_3(18);
      break;
    case 4:
      v7 = 0x80000001C7596C70;
      v6 = 0xD000000000000014;
      break;
    case 5:
      v6 = OUTLINED_FUNCTION_17_4() | 0x6C61755100000000;
      v7 = 0xEB00000000797469;
      break;
    case 6:
      v7 = 0xE800000000000000;
      v6 = OUTLINED_FUNCTION_17_4() | 0x72756C4200000000;
      break;
    case 7:
      v7 = 0xE800000000000000;
      v6 = OUTLINED_FUNCTION_17_4() | 0x65736F5000000000;
      break;
    case 8:
      v7 = 0xE800000000000000;
      v6 = OUTLINED_FUNCTION_17_4() | 0x6C6C6F5200000000;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE600000000000000;
      v3 = 0x6B73614D6F6ELL;
      break;
    case 2:
      v2 = (v8 - 32) | 0x8000000000000000;
      OUTLINED_FUNCTION_42_3();
      v3 = v10 + 3;
      break;
    case 3:
      OUTLINED_FUNCTION_6_13();
      break;
    case 4:
      v2 = (v5 - 32) | 0x8000000000000000;
      OUTLINED_FUNCTION_42_3();
      v3 = v9 + 2;
      break;
    case 5:
      OUTLINED_FUNCTION_22_3();
      v3 = v12 | 0x6C61755100000000;
      v2 = 0xEB00000000797469;
      break;
    case 6:
      v2 = 0xE800000000000000;
      OUTLINED_FUNCTION_22_3();
      v3 = v13 | 0x72756C4200000000;
      break;
    case 7:
      v2 = 0xE800000000000000;
      OUTLINED_FUNCTION_22_3();
      v3 = v11 | 0x65736F5000000000;
      break;
    case 8:
      v2 = 0xE800000000000000;
      OUTLINED_FUNCTION_22_3();
      v3 = v14 | 0x6C6C6F5200000000;
      break;
    default:
      break;
  }

  if (v6 == v3 && v7 == v2)
  {
    v16 = 1;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_2_1();
  }

  return v16 & 1;
}

uint64_t sub_1C6FA0EB8()
{
  OUTLINED_FUNCTION_50_0();
  v3 = 7105633;
  switch(v4)
  {
    case 1:
      v3 = 0x657469726F766166;
      v0 = 0xE900000000000073;
      break;
    case 2:
      v0 = 0xE800000000000000;
      v3 = 0x7972616E6964726FLL;
      break;
    case 3:
      v0 = 0xE700000000000000;
      v3 = 0x7972616D6D7573;
      break;
    case 4:
      v3 = 0x69746172656E6567;
      v0 = 0xEA00000000006576;
      break;
    default:
      break;
  }

  v5 = 0xE300000000000000;
  switch(v1)
  {
    case 1:
      v2 = 0x657469726F766166;
      v5 = 0xE900000000000073;
      break;
    case 2:
      v5 = 0xE800000000000000;
      v2 = 0x7972616E6964726FLL;
      break;
    case 3:
      v5 = 0xE700000000000000;
      v2 = 0x7972616D6D7573;
      break;
    case 4:
      v2 = 0x69746172656E6567;
      v5 = 0xEA00000000006576;
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_1_10();
  }

  return v7 & 1;
}

uint64_t sub_1C6FA10B8(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000797261;
  v3 = 0x73726576696E6E61;
  v4 = a1;
  v5 = 0x73726576696E6E61;
  v6 = 0xEB00000000797261;
  switch(v4)
  {
    case 1:
      v6 = 0xE800000000000000;
      v5 = 0x7961646874726962;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v5 = 0x676E6964646577;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v5 = 0x747265636E6F63;
      break;
    case 4:
      v5 = 0x45796164696C6F68;
      v6 = 0xEC000000746E6576;
      break;
    case 5:
      v5 = 0x65764574726F7073;
      v6 = 0xEA0000000000746ELL;
      break;
    case 6:
      v6 = 0xE700000000000000;
      v5 = 0x64656D616E6E75;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x7961646874726962;
      break;
    case 2:
      v2 = 0xE700000000000000;
      v3 = 0x676E6964646577;
      break;
    case 3:
      v2 = 0xE700000000000000;
      v3 = 0x747265636E6F63;
      break;
    case 4:
      v3 = 0x45796164696C6F68;
      v2 = 0xEC000000746E6576;
      break;
    case 5:
      v3 = 0x65764574726F7073;
      v2 = 0xEA0000000000746ELL;
      break;
    case 6:
      v2 = 0xE700000000000000;
      v3 = 0x64656D616E6E75;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_1();
  }

  return v8 & 1;
}

uint64_t sub_1C6FA12A8(char a1, char a2)
{
  v3 = 0xD000000000000011;
  v4 = "edMoodsInferredFallback";
  v5 = "edMoodsInferredFallback";
  switch(a1)
  {
    case 1:
      v5 = "appleMusicMaestro";
      v3 = 0xD000000000000016;
      break;
    case 2:
      v5 = "appleMusicSimpleSearch";
      v3 = 0xD000000000000015;
      break;
    case 3:
      v5 = "appleMusicSmartSearch";
      v3 = 0xD000000000000010;
      break;
    default:
      break;
  }

  v6 = 0xD000000000000011;
  switch(a2)
  {
    case 1:
      v4 = "appleMusicMaestro";
      v6 = 0xD000000000000016;
      break;
    case 2:
      v4 = "appleMusicSimpleSearch";
      v6 = 0xD000000000000015;
      break;
    case 3:
      v4 = "appleMusicSmartSearch";
      v6 = 0xD000000000000010;
      break;
    default:
      break;
  }

  if (v3 == v6 && (v5 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_10();
  }

  return v8 & 1;
}

uint64_t sub_1C6FA1430(char a1, char a2)
{
  v2 = 1701736302;
  if (a1)
  {
    OUTLINED_FUNCTION_53_3();
    if (v3)
    {
      v5 = 0x7473726966;
    }

    else
    {
      v5 = 1953718636;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
    v5 = 1701736302;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_53_3();
    if (v7)
    {
      v2 = 0x7473726966;
    }

    else
    {
      v2 = 1953718636;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE400000000000000;
    }
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_1_10();
  }

  return v11 & 1;
}

uint64_t sub_1C6FA14FC(char a1)
{
  if (a1)
  {
    v1 = 0xE500000000000000;
  }

  else
  {
    v1 = 0xE90000000000006FLL;
  }

  OUTLINED_FUNCTION_16_2();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_10();
  }

  return v8 & 1;
}

uint64_t sub_1C6FA158C(unsigned __int8 a1, char a2)
{
  v2 = 0xD00000000000002BLL;
  v3 = "ssetCurationOutlier";
  v4 = "ssetCurationOutlier";
  v5 = a1;
  v6 = 0xD00000000000002BLL;
  switch(v5)
  {
    case 1:
      v4 = ".spatial.generate3DInterval";
      v6 = 0xD000000000000033;
      break;
    case 2:
      v4 = "dGenerate3DInterval";
      v6 = 0xD00000000000002FLL;
      break;
    case 3:
      v4 = ".spatial.generateStereoInterval";
      v6 = 0xD000000000000037;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = ".spatial.generate3DInterval";
      v2 = 0xD000000000000033;
      break;
    case 2:
      v3 = "dGenerate3DInterval";
      v2 = 0xD00000000000002FLL;
      break;
    case 3:
      v3 = ".spatial.generateStereoInterval";
      v2 = 0xD000000000000037;
      break;
    default:
      break;
  }

  if (v6 == v2 && (v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_10();
  }

  return v8 & 1;
}

uint64_t sub_1C6FA16A8(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE200000000000000;
  }

  OUTLINED_FUNCTION_16_2();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_10();
  }

  return v8 & 1;
}

uint64_t sub_1C6FA1728(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  OUTLINED_FUNCTION_16_2();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_10();
  }

  return v8 & 1;
}

uint64_t sub_1C6FA17B4(unsigned __int8 a1, char a2)
{
  v2 = 0x617461646174656DLL;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6E69646465626D65;
    }

    else
    {
      v4 = 0x6574656C706D6F63;
    }

    if (v3 == 1)
    {
      v5 = 0xE900000000000067;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = 0x617461646174656DLL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6E69646465626D65;
    }

    else
    {
      v2 = 0x6574656C706D6F63;
    }

    if (a2 == 1)
    {
      v6 = 0xE900000000000067;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_10();
  }

  return v8 & 1;
}

uint64_t sub_1C6FA18DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_1_10();
  }

  return v10 & 1;
}

uint64_t sub_1C6FA1978(char a1)
{
  v2 = 0xE500000000000000;
  switch(a1)
  {
    case 1:
      v2 = 0x80000001C7596920;
      break;
    case 2:
      v2 = 0x80000001C7596950;
      break;
    case 3:
      v2 = 0x80000001C7596970;
      break;
    case 4:
      v2 = 0x80000001C7596990;
      break;
    case 5:
      v2 = 0x80000001C75969B0;
      break;
    case 6:
      v2 = 0x80000001C75969D0;
      break;
    case 7:
      break;
    default:
      v2 = 0x80000001C75968F0;
      break;
  }

  OUTLINED_FUNCTION_18_1();
  switch(v13)
  {
    case 1:
      v1 = (v11 - 32) | 0x8000000000000000;
      v4 = v5 + 13;
      break;
    case 2:
      v1 = (v10 - 32) | 0x8000000000000000;
      v4 = v5 + 7;
      break;
    case 3:
      v1 = (v9 - 32) | 0x8000000000000000;
      v4 = v5 + 6;
      break;
    case 4:
      v1 = (v8 - 32) | 0x8000000000000000;
      v4 = v5 + 8;
      break;
    case 5:
      v1 = (v7 - 32) | 0x8000000000000000;
      v4 = 0xD000000000000014;
      break;
    case 6:
      v1 = (v6 - 32) | 0x8000000000000000;
      v4 = v5 + 15;
      break;
    case 7:
      break;
    default:
      v1 = (v12 - 32) | 0x8000000000000000;
      v4 = v5 + 12;
      break;
  }

  if (v3 == v4 && v2 == v1)
  {
    v15 = 1;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_1_10();
  }

  return v15 & 1;
}

uint64_t sub_1C6FA1B48()
{
  OUTLINED_FUNCTION_5_4();
  v2 = 0xE600000000000000;
  v4 = v3;
  v5 = v1;
  switch(v4)
  {
    case 1:
      v2 = 0xE300000000000000;
      v5 = 7628144;
      break;
    case 2:
      v2 = 0xE500000000000000;
      v5 = 0x6D75626C61;
      break;
    case 3:
      v2 = 0xE400000000000000;
      v5 = 1885958772;
      break;
    case 4:
      v5 = 0x79726F6D656DLL;
      break;
    case 5:
      v2 = 0xE500000000000000;
      v5 = 0x746E657665;
      break;
    case 6:
      v5 = 0x72476C6169636F73;
      v2 = 0xEB0000000070756FLL;
      break;
    case 7:
      v5 = 0x707954616964656DLL;
      v2 = 0xE900000000000065;
      break;
    case 8:
      OUTLINED_FUNCTION_51_4();
      OUTLINED_FUNCTION_44_3();
      break;
    case 9:
      v5 = OUTLINED_FUNCTION_51_4();
      v2 = 0xEE0079726F6D654DLL;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(v0)
  {
    case 1:
      v6 = 0xE300000000000000;
      v1 = 7628144;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v1 = 0x6D75626C61;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v1 = 1885958772;
      break;
    case 4:
      v1 = 0x79726F6D656DLL;
      break;
    case 5:
      v6 = 0xE500000000000000;
      v1 = 0x746E657665;
      break;
    case 6:
      v1 = 0x72476C6169636F73;
      v6 = 0xEB0000000070756FLL;
      break;
    case 7:
      v1 = 0x707954616964656DLL;
      v6 = 0xE900000000000065;
      break;
    case 8:
      OUTLINED_FUNCTION_10_7();
      v6 = 0xED00006F746F6850;
      break;
    case 9:
      OUTLINED_FUNCTION_10_7();
      v6 = 0xEE0079726F6D654DLL;
      break;
    default:
      break;
  }

  if (v5 == v1 && v2 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_10();
  }

  return v8 & 1;
}

uint64_t sub_1C6FA1D68()
{
  sub_1C6FA7014();
  v0 = ActivityFeatureCode.rawValue.getter();
  v1 = ActivityFeatureCode.rawValue.getter();
  v2 = sub_1C75513EC();

  return v2 & 1;
}

uint64_t sub_1C6FA1DE0()
{
  OUTLINED_FUNCTION_5_4();
  v2 = 0xE600000000000000;
  v4 = v3;
  v5 = v1;
  switch(v4)
  {
    case 1:
      v2 = 0xE500000000000000;
      v5 = 0x646C696863;
      break;
    case 2:
      v2 = 0xE400000000000000;
      v5 = 2036490594;
      break;
    case 3:
      v2 = 0xE500000000000000;
      v5 = 0x726568746FLL;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(v0)
  {
    case 1:
      v6 = 0xE500000000000000;
      v1 = 0x646C696863;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v1 = 2036490594;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v1 = 0x726568746FLL;
      break;
    default:
      break;
  }

  if (v5 == v1 && v2 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_10();
  }

  return v8 & 1;
}

uint64_t sub_1C6FA1EF4(uint64_t a1, uint64_t a2)
{
  v3 = 0xED00007475706E49;
  if (a1)
  {
    OUTLINED_FUNCTION_21_6();
    if (v7 == 1)
    {
      v10 = v5;
    }

    else
    {
      v10 = v9;
    }

    if (v7 == 1)
    {
      v2 = v8;
    }

    else
    {
      v2 = (v6 - 32) | 0x8000000000000000;
    }
  }

  else
  {
    v10 = OUTLINED_FUNCTION_19_4(a1, a2, 0x6E6F697461727563);
  }

  if (v4)
  {
    OUTLINED_FUNCTION_21_6();
    v14 = (v13 - 32) | 0x8000000000000000;
    if (v15 == 1)
    {
      v3 = v11;
    }

    else
    {
      v5 = v12;
      v3 = v14;
    }
  }

  if (v10 == v5 && v2 == v3)
  {
    v17 = 1;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_2_1();
  }

  return v17 & 1;
}

uint64_t sub_1C6FA1FB8(char a1)
{
  if (a1)
  {
    v1 = 0xEE0073676E6F5363;
  }

  else
  {
    v1 = 0xEF73676E6F536369;
  }

  OUTLINED_FUNCTION_16_2();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_10();
  }

  return v8 & 1;
}

uint64_t sub_1C6FA2060(char a1, char a2)
{
  v2 = 0x74706D6F7270;
  if (a1)
  {
    OUTLINED_FUNCTION_52_4();
    if (v4 == 1)
    {
      v7 = v3;
    }

    else
    {
      v7 = v3 + 8;
    }

    if (v4 == 1)
    {
      v8 = v5;
    }

    else
    {
      v8 = v6;
    }
  }

  else
  {
    v8 = 0xE600000000000000;
    v7 = 0x74706D6F7270;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_41_2();
    if (v12 == 1)
    {
      v2 = v9;
    }

    else
    {
      v2 = v9 + 8;
    }

    if (v12 == 1)
    {
      v13 = v11;
    }

    else
    {
      v13 = v10;
    }
  }

  else
  {
    v13 = 0xE600000000000000;
  }

  if (v7 == v2 && v8 == v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_1_10();
  }

  return v15 & 1;
}

uint64_t sub_1C6FA213C()
{
  OUTLINED_FUNCTION_15_8();
  v2 = v1 | 0x4973497400000000;
  v4 = v3;
  v5 = v2;
  v6 = 0xEE0064696C61766ELL;
  switch(v4)
  {
    case 1:
      OUTLINED_FUNCTION_8_3();
      v5 = v7 + 5;
      break;
    case 2:
      v5 = 0x726F6353706F7263;
      v6 = 0xEF776F4C6F6F5465;
      break;
    case 3:
      v8 = OUTLINED_FUNCTION_17_4();
      v5 = OUTLINED_FUNCTION_48_3(v8);
      break;
    case 4:
      v5 = OUTLINED_FUNCTION_27_3(17);
      break;
    case 5:
      OUTLINED_FUNCTION_8_3();
      v5 = v9 | 8;
      break;
    default:
      break;
  }

  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_9_3();
      v2 = v10 + 5;
      break;
    case 2:
      OUTLINED_FUNCTION_45_2();
      OUTLINED_FUNCTION_39_2();
      break;
    case 3:
      OUTLINED_FUNCTION_22_3();
      OUTLINED_FUNCTION_43_3();
      break;
    case 4:
      OUTLINED_FUNCTION_6_13();
      break;
    case 5:
      OUTLINED_FUNCTION_9_3();
      v2 = v11 | 8;
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == 0xEE0064696C61766ELL)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_2_1();
  }

  return v13 & 1;
}

uint64_t sub_1C6FA22AC()
{
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_45_2();
  v4 = v3;
  v5 = v2;
  v6 = v0;
  switch(v4)
  {
    case 1:
      OUTLINED_FUNCTION_8_3();
      v5 = v8 + 5;
      break;
    case 2:
      break;
    case 3:
      v9 = OUTLINED_FUNCTION_17_4();
      v5 = OUTLINED_FUNCTION_48_3(v9);
      break;
    case 4:
      v5 = OUTLINED_FUNCTION_27_3(17);
      break;
    case 5:
      v5 = 0x736E6961746E6F63;
      v6 = 0xEC00000074786554;
      break;
    default:
      OUTLINED_FUNCTION_8_3();
      v5 = v7 + 25;
      break;
  }

  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_9_3();
      v2 = v11 + 5;
      break;
    case 2:
      break;
    case 3:
      OUTLINED_FUNCTION_22_3();
      OUTLINED_FUNCTION_43_3();
      break;
    case 4:
      OUTLINED_FUNCTION_6_13();
      break;
    case 5:
      v2 = 0x736E6961746E6F63;
      v0 = 0xEC00000074786554;
      break;
    default:
      OUTLINED_FUNCTION_9_3();
      v2 = v10 + 25;
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_2_1();
  }

  return v13 & 1;
}

uint64_t sub_1C6FA2418(unsigned __int8 a1, char a2)
{
  v2 = 0xEC0000006E6F7474;
  v3 = 0x7542657461657263;
  v4 = a1;
  v5 = 0x7542657461657263;
  v6 = 0xEC0000006E6F7474;
  switch(v4)
  {
    case 1:
      v5 = 0x7261437972746E65;
      v6 = 0xE900000000000064;
      break;
    case 2:
      v5 = 0xD000000000000010;
      v6 = 0x80000001C7595D40;
      break;
    case 3:
      v5 = 0x74754278696D6572;
      v7 = 7237492;
      goto LABEL_9;
    case 4:
      v5 = 0x4970704169726973;
      v6 = 0xED0000746E65746ELL;
      break;
    case 5:
      v5 = OUTLINED_FUNCTION_40_7();
      v7 = 4803651;
LABEL_9:
      v6 = v7 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 6:
      v5 = 0x78654E6863746177;
      v6 = 0xE900000000000074;
      break;
    case 7:
      v5 = 0x74756374726F6873;
      v6 = 0xE900000000000073;
      break;
    case 8:
      v6 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    case 9:
      v5 = OUTLINED_FUNCTION_40_7();
      v6 = 0xEF676E6974736554;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x7261437972746E65;
      v2 = 0xE900000000000064;
      break;
    case 2:
      OUTLINED_FUNCTION_6_13();
      break;
    case 3:
      v3 = 0x74754278696D6572;
      v8 = 7237492;
      goto LABEL_20;
    case 4:
      v3 = 0x4970704169726973;
      v2 = 0xED0000746E65746ELL;
      break;
    case 5:
      OUTLINED_FUNCTION_37_5();
      v8 = 4803651;
LABEL_20:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 6:
      v3 = 0x78654E6863746177;
      v2 = 0xE900000000000074;
      break;
    case 7:
      v3 = 0x74756374726F6873;
      v2 = 0xE900000000000073;
      break;
    case 8:
      v2 = 0xE700000000000000;
      v3 = 0x6E776F6E6B6E75;
      break;
    case 9:
      OUTLINED_FUNCTION_37_5();
      v2 = 0xEF676E6974736554;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_2_1();
  }

  return v10 & 1;
}

uint64_t sub_1C6FA26B8(char a1, char a2)
{
  v2 = 0x656C746974;
  if (a1)
  {
    OUTLINED_FUNCTION_54_1();
    if (v3)
    {
      v5 = 0x656C746974627573;
    }

    else
    {
      v5 = 0x73656972657571;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
    v5 = 0x656C746974;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_54_1();
    if (v7)
    {
      v2 = 0x656C746974627573;
    }

    else
    {
      v2 = 0x73656972657571;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE700000000000000;
    }
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_1_10();
  }

  return v11 & 1;
}

uint64_t sub_1C6FA279C(char a1)
{
  v2 = 0xE500000000000000;
  switch(a1)
  {
    case 1:
      v2 = 0xE400000000000000;
      break;
    case 2:
      OUTLINED_FUNCTION_26_0(20);
      break;
    case 3:
      v2 = 0xE700000000000000;
      break;
    case 4:
      v2 = 0xEF68637465466E4FLL;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_18_1();
  switch(v5)
  {
    case 1:
      v1 = 0xE400000000000000;
      v4 = 2003202926;
      break;
    case 2:
      OUTLINED_FUNCTION_28_1();
      break;
    case 3:
      v1 = 0xE700000000000000;
      v4 = 0x7974696C697475;
      break;
    case 4:
      v4 = 0x64657265746C6966;
      v1 = 0xEF68637465466E4FLL;
      break;
    default:
      break;
  }

  if (v3 == v4 && v2 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_1_10();
  }

  return v7 & 1;
}

uint64_t sub_1C6FA28FC(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000063;
  }

  else
  {
    v1 = 0xEA00000000006369;
  }

  OUTLINED_FUNCTION_16_2();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_10();
  }

  return v8 & 1;
}

uint64_t sub_1C6FA2994(unsigned __int8 a1, char a2)
{
  v2 = 0x6B6361626C6C6166;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x6B6361626C6C6166;
  switch(v4)
  {
    case 1:
      v5 = 0x7361676550736D67;
      v3 = 0xEA00000000007375;
      break;
    case 2:
      v5 = 0x626D696854736D67;
      v3 = 0xEA0000000000656CLL;
      break;
    case 3:
      v5 = 0x7665446E4F736D67;
      v3 = 0xEB00000000656369;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x7361676550736D67;
      v6 = 0xEA00000000007375;
      break;
    case 2:
      v2 = 0x626D696854736D67;
      v6 = 0xEA0000000000656CLL;
      break;
    case 3:
      v2 = 0x7665446E4F736D67;
      v6 = 0xEB00000000656369;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_10();
  }

  return v8 & 1;
}

uint64_t sub_1C6FA2AFC(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000014;
  v3 = "unsupportedCharacters";
  v4 = "unsupportedCharacters";
  v5 = a1;
  v6 = 0xD000000000000014;
  switch(v5)
  {
    case 1:
      v4 = "confidentlySupported";
      v6 = 0xD000000000000017;
      break;
    case 2:
      v4 = "confidentlyNotSupported";
      break;
    case 3:
      v4 = "probablyNotSupported";
      v6 = 0xD000000000000011;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = "confidentlySupported";
      v2 = 0xD000000000000017;
      break;
    case 2:
      v3 = "confidentlyNotSupported";
      break;
    case 3:
      v3 = "probablyNotSupported";
      v2 = 0xD000000000000011;
      break;
    default:
      break;
  }

  if (v6 == v2 && (v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_10();
  }

  return v8 & 1;
}

uint64_t sub_1C6FA2C28()
{
  OUTLINED_FUNCTION_24_9();
  if (v0)
  {
    v3 = 0x696A6F6D65;
  }

  else
  {
    v3 = 0xD000000000000015;
  }

  if (v0)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = v2;
  }

  if (v1)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0x696A6F6D65;
  }

  if (v1)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_10();
  }

  return v8 & 1;
}

uint64_t sub_1C6FA2CB4(uint64_t a1, uint64_t a2)
{
  v3 = 0xEB00000000687061;
  v4 = 0x7247746E656D6F6DLL;
  v5 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v6 = 0x7972617262696CLL;
    }

    else
    {
      v6 = 0x6C65646F6DLL;
    }

    if (v5 == 1)
    {
      v2 = 0xE700000000000000;
    }

    else
    {
      v2 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = OUTLINED_FUNCTION_19_4(a1, a2, 0x7247746E656D6F6DLL);
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v4 = 0x7972617262696CLL;
    }

    else
    {
      v4 = 0x6C65646F6DLL;
    }

    if (a2 == 1)
    {
      v3 = 0xE700000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  if (v6 == v4 && v2 == v3)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_1();
  }

  return v8 & 1;
}

uint64_t sub_1C6FA2D9C()
{
  OUTLINED_FUNCTION_4_1();
  switch(v2)
  {
    case 1:
      v0 = 0xE200000000000000;
      break;
    case 2:
      v0 = 0xE600000000000000;
      break;
    case 4:
      v0 = 0xE900000000000065;
      break;
    case 5:
      OUTLINED_FUNCTION_20_7();
      break;
    case 6:
      OUTLINED_FUNCTION_46_1();
      v0 = 0xEA0000000000746ELL;
      break;
    case 7:
      OUTLINED_FUNCTION_26_0(21);
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_18_1();
  switch(v5)
  {
    case 1:
      v1 = 0xE200000000000000;
      v4 = 25705;
      break;
    case 2:
      v1 = 0xE600000000000000;
      v4 = 0x656372756F73;
      break;
    case 3:
      v4 = 0x65726F6373;
      break;
    case 4:
      v4 = 0x7079546C6562616CLL;
      v1 = 0xE900000000000065;
      break;
    case 5:
      OUTLINED_FUNCTION_11_5();
      v1 = 0xEA00000000007344;
      break;
    case 6:
      OUTLINED_FUNCTION_15_8();
      OUTLINED_FUNCTION_31_3();
      break;
    case 7:
      OUTLINED_FUNCTION_28_1();
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_1_10();
  }

  return v7 & 1;
}

uint64_t sub_1C6FA2F24(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 25705;
  switch(a1)
  {
    case 1:
      v4 = 0x7551686372616573;
      v3 = 0xEB00000000797265;
      break;
    case 2:
      v4 = 0x74657373416C6C61;
      v3 = 0xE900000000000073;
      break;
    case 3:
      v4 = 0x4164657461727563;
      v3 = 0xED00007374657373;
      break;
    case 4:
      v4 = OUTLINED_FUNCTION_26_0(26);
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  switch(a2)
  {
    case 1:
      v6 = 0x7551686372616573;
      v5 = 0xEB00000000797265;
      break;
    case 2:
      v6 = 0x74657373416C6C61;
      v5 = 0xE900000000000073;
      break;
    case 3:
      v6 = 0x4164657461727563;
      v5 = 0xED00007374657373;
      break;
    case 4:
      OUTLINED_FUNCTION_28_1();
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_10();
  }

  return v8 & 1;
}

uint64_t sub_1C6FA30AC(unsigned __int8 a1, char a2)
{
  v2 = 1702060386;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1702060386;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x7469617274;
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_38_0() | 0x7469547900000000;
      v3 = 0xEA0000000000656CLL;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_34_0() | 0x6E6F536300000000;
      v3 = 0xEB00000000644967;
      break;
    case 4:
      v5 = 0x76697469736E6573;
      v3 = 0xE900000000000065;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x7469617274;
      break;
    case 2:
      OUTLINED_FUNCTION_56_3();
      v2 = v7 | 0x7469547900000000;
      v6 = 0xEA0000000000656CLL;
      break;
    case 3:
      OUTLINED_FUNCTION_32_1();
      v2 = v8 | 0x6E6F536300000000;
      v6 = 0xEB00000000644967;
      break;
    case 4:
      v2 = 0x76697469736E6573;
      v6 = 0xE900000000000065;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_1_10();
  }

  return v10 & 1;
}

uint64_t sub_1C6FA3220(char a1)
{
  if (a1)
  {
    v1 = 0xEA00000000007470;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  OUTLINED_FUNCTION_16_2();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_10();
  }

  return v8 & 1;
}

uint64_t sub_1C6FA32C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  if (v4 == a3() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_1_10();
  }

  return v9 & 1;
}

uint64_t sub_1C6FA3358(unsigned __int8 a1, char a2)
{
  v2 = 0x62303365736162;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = "queryUnderstanding30b";
  v6 = 0x62303365736162;
  v7 = "assetCuration30b";
  switch(v4)
  {
    case 1:
      v6 = OUTLINED_FUNCTION_38_0() | 0x6C65747900000000;
      v8 = 1735289196;
      goto LABEL_6;
    case 2:
      v6 = 0xD000000000000010;
      v3 = 0x80000001C7596880;
      break;
    case 3:
      v6 = 0x72546C61626F6C67;
      v8 = 1937008993;
LABEL_6:
      v3 = v8 | 0xEF62303300000000;
      break;
    case 4:
      v3 = 0x80000001C75968B0;
      v6 = 0xD000000000000015;
      break;
    default:
      break;
  }

  v9 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_56_3();
      v2 = v10 | 0x6C65747900000000;
      v11 = 1735289196;
      goto LABEL_12;
    case 2:
      v2 = 0xD000000000000010;
      v9 = (v7 - 32) | 0x8000000000000000;
      break;
    case 3:
      v2 = 0x72546C61626F6C67;
      v11 = 1937008993;
LABEL_12:
      v9 = v11 | 0xEF62303300000000;
      break;
    case 4:
      v9 = (v5 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000015;
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v9)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_1_10();
  }

  return v13 & 1;
}

uint64_t sub_1C6FA34F0()
{
  OUTLINED_FUNCTION_4_1();
  switch(v2)
  {
    case 1:
      v0 = 0xEE0079726575516CLL;
      break;
    case 2:
      v0 = 0xE200000000000000;
      break;
    case 3:
      v0 = 0xE400000000000000;
      break;
    case 4:
      OUTLINED_FUNCTION_20_7();
      break;
    case 5:
      OUTLINED_FUNCTION_46_1();
      v0 = 0xEA0000000000746ELL;
      break;
    case 6:
    case 7:
      v0 = 0xEF73444955557465;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_18_1();
  switch(v5)
  {
    case 1:
      v4 = 0x6176656972746572;
      v1 = 0xEE0079726575516CLL;
      break;
    case 2:
      v1 = 0xE200000000000000;
      v4 = 25705;
      break;
    case 3:
      v1 = 0xE400000000000000;
      v4 = 1701869940;
      break;
    case 4:
      OUTLINED_FUNCTION_11_5();
      v1 = 0xEA00000000007344;
      break;
    case 5:
      OUTLINED_FUNCTION_15_8();
      OUTLINED_FUNCTION_31_3();
      break;
    case 6:
      v6 = 0x41656C746974;
      goto LABEL_16;
    case 7:
      v6 = 0x417972657571;
LABEL_16:
      v4 = v6 & 0xFFFFFFFFFFFFLL | 0x7373000000000000;
      v1 = 0xEF73444955557465;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_10();
  }

  return v8 & 1;
}

uint64_t sub_1C6FA36A8(char a1, char a2)
{
  v2 = 0x6C6C697473;
  if (a1)
  {
    OUTLINED_FUNCTION_53_3();
    if (v3)
    {
      v5 = 0x6569766F6DLL;
    }

    else
    {
      v5 = 0x6867696C68676968;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE900000000000074;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
    v5 = 0x6C6C697473;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_53_3();
    if (v7)
    {
      v2 = 0x6569766F6DLL;
    }

    else
    {
      v2 = 0x6867696C68676968;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE900000000000074;
    }
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_1_10();
  }

  return v11 & 1;
}

uint64_t sub_1C6FA378C()
{
  OUTLINED_FUNCTION_11_5();
  v5 = v4 + 223;
  v6 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v7 = 0x7265746C6966;
    }

    else
    {
      v7 = 0x746C694665736162;
    }

    if (v6 == 1)
    {
      v0 = 0xE600000000000000;
    }

    else
    {
      v0 = v4;
    }
  }

  else
  {
    v7 = OUTLINED_FUNCTION_19_4(v1, v2, v3);
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0x7265746C6966;
    }

    else
    {
      v3 = 0x746C694665736162;
    }

    if (v2 == 1)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = v4;
    }
  }

  if (v7 == v3 && v0 == v5)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_1();
  }

  return v9 & 1;
}

uint64_t sub_1C6FA3860()
{
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_10_7();
  v5 = v2;
  if (v2)
  {
    if (v2 == 1)
    {
      v6 = 0x654B79726F6D656DLL;
    }

    else
    {
      v6 = 0x734179726F6D656DLL;
    }

    if (v5 == 1)
    {
      v1 = 0xEE00746573734179;
    }

    else
    {
      v1 = 0xEB00000000746573;
    }
  }

  else
  {
    v6 = OUTLINED_FUNCTION_19_4(v2, v3, v4);
  }

  if (v3)
  {
    if (v3 == 1)
    {
      v4 = 0x654B79726F6D656DLL;
    }

    else
    {
      v4 = 0x734179726F6D656DLL;
    }

    if (v3 == 1)
    {
      v0 = 0xEE00746573734179;
    }

    else
    {
      v0 = 0xEB00000000746573;
    }
  }

  if (v6 == v4 && v1 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_1();
  }

  return v8 & 1;
}

uint64_t sub_1C6FA3A3C(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_1C6FA5B10(a4, a5);
  sub_1C7550A5C();
  sub_1C7550A5C();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_1();
  }

  return v8 & 1;
}

BOOL static MagicSlotItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 18);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 16);
  v7 = *(a2 + 18);
  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v6)
    {
      return 0;
    }

    goto LABEL_9;
  }

  v11 = sub_1C7551DBC();
  result = 0;
  if ((v11 & 1) != 0 && v2 == v6)
  {
LABEL_9:
    if (v3 == 10)
    {
      if (v7 != 10)
      {
        return 0;
      }
    }

    else if (v7 == 10 || (sub_1C6FA1B48() & 1) == 0)
    {
      return 0;
    }

    if (v5)
    {
      if (!v8)
      {
        return 0;
      }

      v13 = v4 == v9 && v5 == v8;
      return v13 || (sub_1C7551DBC() & 1) != 0;
    }

    return !v8;
  }

  return result;
}

uint64_t MagicSlotItem.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214370);
  OUTLINED_FUNCTION_30_3();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v12 - v7;
  v13 = *(v1 + 18);
  v9 = *(v1 + 24);
  v12[0] = *(v1 + 32);
  v12[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6FA4378();
  sub_1C755200C();
  v19 = 0;
  v10 = v14;
  sub_1C7551CCC();
  if (!v10)
  {
    v18 = v13;
    v17 = 1;
    sub_1C6FA43CC();
    sub_1C7551CBC();
    v16 = 2;
    sub_1C7551C7C();
    v15 = 3;
    sub_1C6FA4420();
    sub_1C7551D2C();
  }

  return (*(v5 + 8))(v8, v2);
}

uint64_t MagicSlotItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC214390);
  OUTLINED_FUNCTION_30_3();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6FA4378();
  sub_1C7551FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v6 = sub_1C7551BBC();
  v15 = v7;
  sub_1C6FA4474();
  OUTLINED_FUNCTION_49_4();
  sub_1C7551BAC();
  v8 = sub_1C7551B6C();
  v11 = v10;
  v14 = v8;
  sub_1C6FA44C8();
  OUTLINED_FUNCTION_49_4();
  sub_1C7551C1C();
  v12 = OUTLINED_FUNCTION_12_7();
  v13(v12);
  *a2 = v6;
  *(a2 + 8) = v15;
  *(a2 + 16) = 10;
  *(a2 + 18) = v16;
  *(a2 + 24) = v14;
  *(a2 + 32) = v11;
  sub_1C75504FC();
  sub_1C75504FC();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C6FA419C@<X0>(uint64_t *a1@<X8>)
{
  result = MagicSlotItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C6FA41C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_1C6FA4220(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1C6FA4284(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  OUTLINED_FUNCTION_36_0(a1);
}

uint64_t sub_1C6FA42C4()
{
  OUTLINED_FUNCTION_7_1();
  result = CGRectMake(v1);
  *v0 = result;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1C6FA4378()
{
  result = qword_1EC214378;
  if (!qword_1EC214378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC214378);
  }

  return result;
}

unint64_t sub_1C6FA43CC()
{
  result = qword_1EC214380;
  if (!qword_1EC214380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC214380);
  }

  return result;
}

unint64_t sub_1C6FA4420()
{
  result = qword_1EC214388;
  if (!qword_1EC214388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC214388);
  }

  return result;
}

unint64_t sub_1C6FA4474()
{
  result = qword_1EDD0E2E8;
  if (!qword_1EDD0E2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E2E8);
  }

  return result;
}

unint64_t sub_1C6FA44C8()
{
  result = qword_1EC2143A0;
  if (!qword_1EC2143A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2143A0);
  }

  return result;
}

unint64_t sub_1C6FA4520()
{
  result = qword_1EC2143A8;
  if (!qword_1EC2143A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2143A8);
  }

  return result;
}

unint64_t sub_1C6FA4578()
{
  result = qword_1EC2143B0;
  if (!qword_1EC2143B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2143B0);
  }

  return result;
}

unint64_t sub_1C6FA45D0()
{
  result = qword_1EC2143B8;
  if (!qword_1EC2143B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2143B8);
  }

  return result;
}

unint64_t sub_1C6FA4628()
{
  result = qword_1EC2143C0;
  if (!qword_1EC2143C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2143C0);
  }

  return result;
}

unint64_t sub_1C6FA467C(void *a1)
{
  a1[1] = sub_1C6FA46BC();
  a1[2] = sub_1C6FA4710();
  a1[3] = sub_1C6FA4764();
  result = sub_1C6FA47B8();
  a1[4] = result;
  return result;
}

unint64_t sub_1C6FA46BC()
{
  result = qword_1EDD0C0C8;
  if (!qword_1EDD0C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0C0C8);
  }

  return result;
}

unint64_t sub_1C6FA4710()
{
  result = qword_1EDD0C0E0;
  if (!qword_1EDD0C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0C0E0);
  }

  return result;
}

unint64_t sub_1C6FA4764()
{
  result = qword_1EDD0C0D8;
  if (!qword_1EDD0C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0C0D8);
  }

  return result;
}

unint64_t sub_1C6FA47B8()
{
  result = qword_1EDD0C0C0;
  if (!qword_1EDD0C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0C0C0);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C6FA487C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1C6FA48BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MagicSlotItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MagicSlotItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MagicSlotItem.CurationContext(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for MagicSlotItem.CurationContext(_BYTE *result, int a2, int a3)
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

__n128 __swift_memcpy48_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1C6FA4CCC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6FA4CEC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1C6FA4E40(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6FA4E60(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C6FA4EE4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6FA4F04(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1C6FA5014()
{
  OUTLINED_FUNCTION_3_5();
  result = CGRectMake(v1);
  *v0 = result;
  return result;
}

uint64_t sub_1C6FA5128()
{
  sub_1C7551F3C();
  swift_getWitnessTable();
  sub_1C754E5CC();
  return sub_1C7551FAC();
}

void sub_1C6FA518C(uint64_t a1@<X8>)
{
  sub_1C6F8670C();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

uint64_t sub_1C6FA51C0@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_3_2();
  *a1 = result;
  return result;
}

uint64_t sub_1C6FA51E8(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  result = sub_1C71CD304(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1C6FA5228()
{
  swift_getWitnessTable();

  return sub_1C754E5BC();
}

uint64_t sub_1C6FA52DC()
{
  swift_getWitnessTable();

  return sub_1C754E5BC();
}

uint64_t sub_1C6FA5348()
{
  OUTLINED_FUNCTION_3_5();
  result = sub_1C707DA40();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C6FA5370(uint64_t a1)
{
  v2 = sub_1C6FA5B10(&unk_1EC215B00, type metadata accessor for MXISerializeOption);
  v3 = sub_1C6FA5B10(&qword_1EC214700, type metadata accessor for MXISerializeOption);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C6FA542C(uint64_t a1)
{
  v2 = sub_1C6FA5B10(&qword_1EC2146E8, type metadata accessor for MXISerializeCompressionAlgorithm);
  v3 = sub_1C6FA5B10(&unk_1EC2146F0, type metadata accessor for MXISerializeCompressionAlgorithm);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C6FA54E8(uint64_t a1)
{
  v2 = sub_1C6FA5B10(&qword_1EC214940, type metadata accessor for MXIBuildOption);
  v3 = sub_1C6FA5B10(&qword_1EC214948, type metadata accessor for MXIBuildOption);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C6FA55A4(uint64_t a1)
{
  v2 = sub_1C6FA5B10(&qword_1EC214930, type metadata accessor for MXISerializeImageCompressionCodec);
  v3 = sub_1C6FA5B10(&qword_1EC214938, type metadata accessor for MXISerializeImageCompressionCodec);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C6FA5660(uint64_t a1)
{
  v2 = sub_1C6FA5B10(&qword_1EDD06940, type metadata accessor for PFStoryRecipeSongCatalog);
  v3 = sub_1C6FA5B10(&qword_1EC214988, type metadata accessor for PFStoryRecipeSongCatalog);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C6FA571C(uint64_t a1)
{
  v2 = sub_1C6FA5B10(&qword_1EC2146C8, type metadata accessor for Key);
  v3 = sub_1C6FA5B10(&qword_1EC2146D0, type metadata accessor for Key);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C6FA57D8(uint64_t a1)
{
  v2 = sub_1C6FA5B10(&qword_1EC214970, type metadata accessor for URLResourceKey);
  v3 = sub_1C6FA5B10(&unk_1EC214978, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C6FA5894(uint64_t a1)
{
  v2 = sub_1C6FA5B10(&qword_1EC2146A8, type metadata accessor for NSLinguisticTag);
  v3 = sub_1C6FA5B10(&qword_1EC2146B0, type metadata accessor for NSLinguisticTag);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C6FA5950(uint64_t a1)
{
  v2 = sub_1C6FA5B10(&qword_1EC2146B8, type metadata accessor for NSLinguisticTagScheme);
  v3 = sub_1C6FA5B10(&qword_1EC2146C0, type metadata accessor for NSLinguisticTagScheme);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C6FA5A0C(uint64_t a1)
{
  v2 = sub_1C6FA5B10(&qword_1EC214708, type metadata accessor for CIImageOption);
  v3 = sub_1C6FA5B10(&unk_1EC214710, type metadata accessor for CIImageOption);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C6FA5B10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6FA5CC0(uint64_t a1)
{
  v2 = sub_1C6FA5B10(&qword_1EC214950, type metadata accessor for IOSurfacePropertyKey);
  v3 = sub_1C6FA5B10(&qword_1EC214958, type metadata accessor for IOSurfacePropertyKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C6FA5D7C(uint64_t a1)
{
  v2 = sub_1C6FA5B10(&qword_1EC214960, type metadata accessor for CIContextOption);
  v3 = sub_1C6FA5B10(&qword_1EC214968, type metadata accessor for CIContextOption);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C6FA5E38(uint64_t a1)
{
  v2 = sub_1C6FA5B10(&qword_1EC214698, type metadata accessor for FileAttributeKey);
  v3 = sub_1C6FA5B10(&qword_1EC2146A0, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C6FA5EF4(uint64_t a1)
{
  v2 = sub_1C6FA5B10(&qword_1EC214688, type metadata accessor for PFStoryTitleCategory);
  v3 = sub_1C6FA5B10(&qword_1EC214690, type metadata accessor for PFStoryTitleCategory);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C6FA5FB0(uint64_t a1)
{
  v2 = sub_1C6FA5B10(&qword_1EC214678, type metadata accessor for NLTag);
  v3 = sub_1C6FA5B10(&qword_1EC214680, type metadata accessor for NLTag);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C6FA606C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C755065C();

  *a1 = v2;
  return result;
}

uint64_t sub_1C6FA60B4(uint64_t a1)
{
  v2 = sub_1C6FA5B10(&qword_1EC2146D8, type metadata accessor for NLTagScheme);
  v3 = sub_1C6FA5B10(&qword_1EC2146E0, type metadata accessor for NLTagScheme);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C6FA6170(uint64_t a1)
{
  v2 = sub_1C6FA5B10(&qword_1EC214990, type metadata accessor for NLLanguage);
  v3 = sub_1C6FA5B10(&qword_1EC214998, type metadata accessor for NLLanguage);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C6FA6D6C()
{
  sub_1C755068C();
  sub_1C75505AC();
}

uint64_t sub_1C6FA6DC0()
{
  sub_1C755068C();
  sub_1C7551F3C();
  sub_1C75505AC();
  v0 = sub_1C7551FAC();

  return v0;
}

uint64_t sub_1C6FA6E34()
{
  v0 = sub_1C755068C();
  v2 = v1;
  if (v0 == sub_1C755068C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_1_10();
  }

  return v5 & 1;
}

uint64_t sub_1C6FA6EAC(uint64_t a1, id *a2)
{
  v3 = sub_1C755067C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1C6FA6F2C(uint64_t a1, id *a2)
{
  result = sub_1C755066C();
  *a2 = 0;
  return result;
}

uint64_t sub_1C6FA6FA4()
{
  sub_1C755068C();
  v0 = sub_1C755065C();

  return v0;
}

uint64_t sub_1C6FA6FDC()
{
  v0 = sub_1C755068C();
  v1 = MEMORY[0x1CCA5CE50](v0);

  return v1;
}

unint64_t sub_1C6FA7014()
{
  result = qword_1EDD108E0;
  if (!qword_1EDD108E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD108E0);
  }

  return result;
}

unint64_t sub_1C6FA7058()
{
  result = qword_1EC214720;
  if (!qword_1EC214720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC214720);
  }

  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t _s9GeneratorV13ConfigurationVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s9GeneratorV13ConfigurationVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

void sub_1C6FA7834(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1C6FA79FC()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD28990);
  __swift_project_value_buffer(v0, qword_1EDD28990);
  return sub_1C754FEFC();
}

uint64_t sub_1C6FA7A90()
{
  if (qword_1EC213C68 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC25B608);
  v0 = qword_1EC25B610;
  if (!qword_1EC25B610)
  {
    type metadata accessor for LLMWrapperUtils();
    if (qword_1EDD0A988 != -1)
    {
      OUTLINED_FUNCTION_30_0();
    }

    v3[1] = byte_1EC218F88;
    static LLMWrapperUtils.storytellerModelType(for:)(v3);
    static LLMWrapper.tokenGenerator(for:)();
    v0 = v1;
    qword_1EC25B610 = v1;
  }

  os_unfair_lock_unlock(&dword_1EC25B608);
  return v0;
}

uint64_t sub_1C6FA7B9C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  sub_1C6FB5A18();
  sub_1C754FD3C();
  if (v2)
  {
    sub_1C754FD4C();
    OUTLINED_FUNCTION_3();
    return (*(v5 + 8))(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C18);
    sub_1C6FB5A94();
    sub_1C754FD3C();
    sub_1C754FD3C();
    v7 = *(&v16 + 1);
    sub_1C754FD3C();
    v23 = *(&v16 + 1);
    OUTLINED_FUNCTION_114();
    sub_1C754FD3C();
    sub_1C754FD4C();
    OUTLINED_FUNCTION_3();
    (*(v8 + 8))(a1);
    *&v12 = v16;
    *(&v12 + 1) = v16;
    v13 = v16;
    v14 = v16;
    v15 = v22;
    *(&v16 + 1) = v16;
    v17 = v16;
    v18 = v7;
    v19 = v16;
    v20 = v23;
    v21 = v22;
    sub_1C6FB5B18(&v12, v11);
    result = sub_1C6FB5424(&v16);
    v9 = v13;
    *a2 = v12;
    a2[1] = v9;
    v10 = v15;
    a2[2] = v14;
    a2[3] = v10;
  }

  return result;
}

uint64_t sub_1C6FA7EDC()
{
  v0 = sub_1C754FDEC();
  __swift_allocate_value_buffer(v0, qword_1EDD289A8);
  __swift_project_value_buffer(v0, qword_1EDD289A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C20);
  v1 = sub_1C754FDCC();
  OUTLINED_FUNCTION_18(v1);
  *(swift_allocObject() + 16) = xmmword_1C755BA90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  sub_1C6FB5A18();
  sub_1C754FDBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C18);
  sub_1C6FB5A94();
  OUTLINED_FUNCTION_91_0();
  sub_1C754FDBC();
  OUTLINED_FUNCTION_91_0();
  sub_1C754FDBC();
  OUTLINED_FUNCTION_91_0();
  sub_1C754FDBC();
  OUTLINED_FUNCTION_114();
  sub_1C754FDBC();
  return sub_1C754FDDC();
}

uint64_t sub_1C6FA80AC()
{
  OUTLINED_FUNCTION_42();
  v1[5] = v2;
  v1[6] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DE8);
  v1[7] = v3;
  OUTLINED_FUNCTION_18(v3);
  v1[8] = v4;
  v1[9] = OUTLINED_FUNCTION_77();
  v5 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C6FA815C()
{
  OUTLINED_FUNCTION_49_0();
  v0 = OUTLINED_FUNCTION_69_5();
  type metadata accessor for FreeformStoryCompletionGenerator.FreeformStoryCompletionGenerable.Streaming(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C08);
  OUTLINED_FUNCTION_133();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_45_3(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_4_2(v2);

  return MEMORY[0x1EEE6DB90](v4);
}

uint64_t sub_1C6FA820C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C6FA8308()
{
  OUTLINED_FUNCTION_42();
  v1[5] = v2;
  v1[6] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DE8);
  v1[7] = v3;
  OUTLINED_FUNCTION_18(v3);
  v1[8] = v4;
  v1[9] = OUTLINED_FUNCTION_77();
  v5 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C6FA83B8()
{
  OUTLINED_FUNCTION_49_0();
  v0 = OUTLINED_FUNCTION_69_5();
  type metadata accessor for FreeformStoryCompletionGenerator.FreeformStoryCompletionGenerable.Streaming(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C08);
  OUTLINED_FUNCTION_133();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_45_3(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_4_2(v2);

  return MEMORY[0x1EEE6DB90](v4);
}

uint64_t sub_1C6FA8468()
{
  OUTLINED_FUNCTION_42();
  v1[5] = v2;
  v1[6] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DE8);
  v1[7] = v3;
  OUTLINED_FUNCTION_18(v3);
  v1[8] = v4;
  v1[9] = OUTLINED_FUNCTION_77();
  v5 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C6FA8518()
{
  OUTLINED_FUNCTION_49_0();
  v0 = OUTLINED_FUNCTION_69_5();
  type metadata accessor for FreeformStoryCompletionGenerator.FreeformStoryCompletionGenerable.Streaming(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C08);
  OUTLINED_FUNCTION_133();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_45_3(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_4_2(v2);

  return MEMORY[0x1EEE6DB90](v4);
}

uint64_t sub_1C6FA85C8()
{
  OUTLINED_FUNCTION_42();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C10);
  v0[5] = v4;
  OUTLINED_FUNCTION_18(v4);
  v0[6] = v5;
  v0[7] = OUTLINED_FUNCTION_77();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C08);
  v0[8] = v6;
  OUTLINED_FUNCTION_18(v6);
  v0[9] = v7;
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v8 = type metadata accessor for FreeformStoryCompletionGenerator.FreeformStoryCompletionGenerable.Streaming(0);
  v0[14] = v8;
  OUTLINED_FUNCTION_76(v8);
  v0[15] = OUTLINED_FUNCTION_77();
  v9 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C6FA8724()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_70(*(v0 + 32), *(*(v0 + 32) + 24));
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 128) = v1;
  *v1 = v2;
  v1[1] = sub_1C6FA87EC;
  OUTLINED_FUNCTION_35_2();

  return MEMORY[0x1EEE0A9F0]();
}

uint64_t sub_1C6FA87EC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C6FA88E4()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_122();
  v1[18] = v2;
  v1[19] = v3;
  v2();
  v4 = *(v0 + 24);
  OUTLINED_FUNCTION_38_1();
  v5 = type metadata accessor for FreeformStoryCompletionGenerator.FreeformStoryChapterCompletionGenerable.Streaming(0);
  v6 = swift_task_alloc();
  v1[20] = v6;
  v7 = sub_1C6FB5F80(&unk_1EDD07B08, type metadata accessor for FreeformStoryCompletionGenerator.FreeformStoryChapterCompletionGenerable.Streaming);
  *v6 = v1;
  v6[1] = sub_1C6FA8A1C;
  v8 = v1[7];
  v9 = v1[3];

  return MEMORY[0x1EEE0A9E8](v8, v9, 0x79726F7473, 0xE500000000000000, v5, v5, v7, v4);
}

uint64_t sub_1C6FA8A1C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C6FA8B14()
{
  OUTLINED_FUNCTION_49_0();
  (*(v0[6] + 32))(v0[15] + *(v0[14] + 20), v0[7], v0[5]);
  OUTLINED_FUNCTION_38_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[22] = v1;
  *v1 = v2;
  v1[1] = sub_1C6FA8BF8;
  OUTLINED_FUNCTION_35_2();

  return MEMORY[0x1EEE0A9F0]();
}

uint64_t sub_1C6FA8BF8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C6FA8CF0()
{
  OUTLINED_FUNCTION_49_0();
  (*(v0 + 144))(*(v0 + 120) + *(*(v0 + 112) + 24), *(v0 + 96), *(v0 + 64));
  OUTLINED_FUNCTION_38_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 192) = v1;
  *v1 = v2;
  v1[1] = sub_1C6FA8DD0;
  OUTLINED_FUNCTION_35_2();

  return MEMORY[0x1EEE0A9F0]();
}

uint64_t sub_1C6FA8DD0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C6FA8EC8()
{
  OUTLINED_FUNCTION_49_0();
  (*(v0 + 144))(*(v0 + 120) + *(*(v0 + 112) + 28), *(v0 + 88), *(v0 + 64));
  OUTLINED_FUNCTION_38_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 208) = v1;
  *v1 = v2;
  v1[1] = sub_1C6FA8FAC;
  OUTLINED_FUNCTION_35_2();

  return MEMORY[0x1EEE0A9F0]();
}

uint64_t sub_1C6FA8FAC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C6FA90A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  v17 = v16[18];
  v18 = v16[14];
  v19 = v16[15];
  v37 = v16[13];
  v38 = v16[12];
  v20 = v16[10];
  v21 = v16[8];
  v39 = v16[11];
  v40 = v16[7];
  v23 = v16[3];
  v22 = v16[4];
  v24 = v16[2];
  sub_1C754DFFC();
  OUTLINED_FUNCTION_3();
  (*(v25 + 8))(v23);
  v17(v19 + *(v18 + 32), v20, v21);
  OUTLINED_FUNCTION_63_1();
  sub_1C6FB5BA4(v19, v24, v26);
  __swift_destroy_boxed_opaque_existential_1(v22);
  OUTLINED_FUNCTION_62_4();
  sub_1C6FB5B50(v19, v27);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_129();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, v37, v38, v39, v40, a14, a15, a16);
}

uint64_t sub_1C6FA91B8()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1C754DFFC();
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(v1);
  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_54_2();

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C6FA9280()
{
  OUTLINED_FUNCTION_123();
  v3 = *(v0 + 168);
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_3();
  (*(v4 + 8))(v2);
  __swift_destroy_boxed_opaque_existential_1(v1);
  v5 = OUTLINED_FUNCTION_57_0();
  v6(v5);
  if (!v3)
  {
    v7 = OUTLINED_FUNCTION_29_2();
    v8(v7);
  }

  OUTLINED_FUNCTION_54_2();

  OUTLINED_FUNCTION_43();

  return v9();
}

uint64_t sub_1C6FA9368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11 = v10[21];
  v13 = v10[3];
  v12 = v10[4];
  sub_1C754DFFC();
  OUTLINED_FUNCTION_3();
  (*(v14 + 8))(v13);
  __swift_destroy_boxed_opaque_existential_1(v12);
  v15 = OUTLINED_FUNCTION_57_0();
  v16(v15);
  if (!v11)
  {
    v17 = OUTLINED_FUNCTION_29_2();
    v18(v17);
  }

  OUTLINED_FUNCTION_54_2();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_1C6FA945C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v14 = *(v10 + 168);
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_3();
  (*(v15 + 8))(v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  v16 = *(v13 + 8);
  v17 = OUTLINED_FUNCTION_57_0();
  v16(v17);
  if (!v14)
  {
    v18 = OUTLINED_FUNCTION_29_2();
    v19(v18);
  }

  v20 = OUTLINED_FUNCTION_121_0();
  v16(v20);
  OUTLINED_FUNCTION_54_2();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_1C6FA9550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v14 = v10[21];
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_3();
  (*(v15 + 8))(v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  v16 = *(v13 + 8);
  v17 = OUTLINED_FUNCTION_57_0();
  v16(v17);
  if (!v14)
  {
    v18 = OUTLINED_FUNCTION_29_2();
    v19(v18);
  }

  v20 = OUTLINED_FUNCTION_121_0();
  v16(v20);
  (v16)(v10[15] + *(v10[14] + 28), v10[8]);
  OUTLINED_FUNCTION_54_2();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_1C6FA9660()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C6F739D4;

  return sub_1C6FA85C8();
}

uint64_t sub_1C6FA9710@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C754FD3C();
  if (v2)
  {
    sub_1C754FD4C();
    OUTLINED_FUNCTION_3();
    return (*(v5 + 8))(a1);
  }

  else
  {
    sub_1C754FD3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C6FB5A18();
    sub_1C754FD3C();
    sub_1C754FD4C();
    OUTLINED_FUNCTION_3();
    result = (*(v7 + 8))(a1);
    *a2 = v8;
    a2[1] = v9;
    a2[2] = v8;
    a2[3] = v9;
    a2[4] = v8;
  }

  return result;
}

uint64_t sub_1C6FA98EC()
{
  v0 = sub_1C754FDEC();
  __swift_allocate_value_buffer(v0, qword_1EDD289C0);
  __swift_project_value_buffer(v0, qword_1EDD289C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C20);
  sub_1C754FDCC();
  *(swift_allocObject() + 16) = xmmword_1C755BAA0;
  sub_1C754FDBC();
  sub_1C754FDBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  sub_1C6FB5A18();
  sub_1C754FDBC();
  return sub_1C754FDDC();
}

uint64_t sub_1C6FA9A88()
{
  OUTLINED_FUNCTION_42();
  v1[5] = v2;
  v1[6] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DE8);
  v1[7] = v3;
  OUTLINED_FUNCTION_18(v3);
  v1[8] = v4;
  v1[9] = OUTLINED_FUNCTION_77();
  v5 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C6FA9B38()
{
  OUTLINED_FUNCTION_42();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C08);
  sub_1C7550DBC();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_45_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_2(v1);

  return MEMORY[0x1EEE6DB90](v3);
}

uint64_t sub_1C6FA9BE0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C6FA9CDC()
{
  OUTLINED_FUNCTION_42();
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = v0[3];
  v2 = v0[5];
  if (v1)
  {
    *v2 = v0[2];
    v2[1] = v1;
    v3 = MEMORY[0x1E69A0888];
  }

  else
  {
    v3 = MEMORY[0x1E69A0880];
  }

  v4 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF0);
  OUTLINED_FUNCTION_12();
  (*(v5 + 104))(v2, v4);

  OUTLINED_FUNCTION_25();

  return v6();
}

uint64_t sub_1C6FA9DB8()
{
  OUTLINED_FUNCTION_42();
  (*(v0[8] + 8))(v0[9], v0[7]);

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C6FA9E30()
{
  OUTLINED_FUNCTION_42();
  v1[5] = v2;
  v1[6] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DE8);
  v1[7] = v3;
  OUTLINED_FUNCTION_18(v3);
  v1[8] = v4;
  v1[9] = OUTLINED_FUNCTION_77();
  v5 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C6FA9EE0()
{
  OUTLINED_FUNCTION_49_0();
  v0 = OUTLINED_FUNCTION_69_5();
  type metadata accessor for FreeformStoryCompletionGenerator.FreeformStoryChapterCompletionGenerable.Streaming(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C08);
  OUTLINED_FUNCTION_133();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_45_3(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_4_2(v2);

  return MEMORY[0x1EEE6DB90](v4);
}

uint64_t sub_1C6FA9F90()
{
  OUTLINED_FUNCTION_42();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C08);
  v0[5] = v4;
  OUTLINED_FUNCTION_18(v4);
  v0[6] = v5;
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v6 = type metadata accessor for FreeformStoryCompletionGenerator.FreeformStoryChapterCompletionGenerable.Streaming(0);
  v0[10] = v6;
  OUTLINED_FUNCTION_76(v6);
  v0[11] = OUTLINED_FUNCTION_77();
  v7 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C6FAA088()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_70(*(v0 + 32), *(*(v0 + 32) + 24));
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 96) = v1;
  *v1 = v2;
  v1[1] = sub_1C6FAA154;
  OUTLINED_FUNCTION_35_2();

  return MEMORY[0x1EEE0A9F0]();
}

uint64_t sub_1C6FAA154()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C6FAA24C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_122();
  v0[14] = v1;
  v0[15] = v2;
  v1();
  OUTLINED_FUNCTION_38_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[16] = v3;
  *v3 = v4;
  v3[1] = sub_1C6FAA330;
  OUTLINED_FUNCTION_35_2();

  return MEMORY[0x1EEE0A9F0]();
}

uint64_t sub_1C6FAA330()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C6FAA428()
{
  OUTLINED_FUNCTION_49_0();
  (*(v0 + 112))(*(v0 + 88) + *(*(v0 + 80) + 20), *(v0 + 64), *(v0 + 40));
  OUTLINED_FUNCTION_38_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 144) = v1;
  *v1 = v2;
  v1[1] = sub_1C6FAA504;
  OUTLINED_FUNCTION_35_2();

  return MEMORY[0x1EEE0A9F0]();
}

uint64_t sub_1C6FAA504()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C6FAA5FC()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[2];
  v7 = v0[3];
  sub_1C754DFFC();
  OUTLINED_FUNCTION_3();
  (*(v9 + 8))(v7);
  v1(v2 + *(v3 + 24), v4, v5);
  sub_1C6FB5BA4(v2, v8, type metadata accessor for FreeformStoryCompletionGenerator.FreeformStoryChapterCompletionGenerable.Streaming);
  __swift_destroy_boxed_opaque_existential_1(v6);
  sub_1C6FB5B50(v2, type metadata accessor for FreeformStoryCompletionGenerator.FreeformStoryChapterCompletionGenerable.Streaming);

  OUTLINED_FUNCTION_25();

  return v10();
}

uint64_t sub_1C6FAA730()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1C754DFFC();
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(v1);
  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_107();

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C6FAA7E0()
{
  OUTLINED_FUNCTION_123();
  v4 = *(v0 + 136);
  OUTLINED_FUNCTION_132_1();
  OUTLINED_FUNCTION_3();
  (*(v5 + 8))(v2);
  __swift_destroy_boxed_opaque_existential_1(v1);
  v6 = *(v3 + 8);
  v7 = OUTLINED_FUNCTION_57_0();
  v6(v7);
  if (!v4)
  {
    v8 = OUTLINED_FUNCTION_120();
    v6(v8);
  }

  OUTLINED_FUNCTION_107();

  OUTLINED_FUNCTION_43();

  return v9();
}

uint64_t sub_1C6FAA8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v14 = *(v10 + 136);
  OUTLINED_FUNCTION_132_1();
  OUTLINED_FUNCTION_3();
  (*(v15 + 8))(v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  v16 = *(v13 + 8);
  v17 = OUTLINED_FUNCTION_57_0();
  v16(v17);
  if (!v14)
  {
    v18 = OUTLINED_FUNCTION_120();
    v16(v18);
  }

  OUTLINED_FUNCTION_107();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_1C6FAA98C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C6F738F4;

  return sub_1C6FA9F90();
}

uint64_t sub_1C6FAAA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v7[37] = a6;
  v7[38] = a7;
  v7[35] = a4;
  v7[36] = a5;
  v7[33] = a2;
  v7[34] = a3;
  v7[32] = a1;
  v7[39] = *a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E00);
  v7[40] = v8;
  v7[41] = *(v8 - 8);
  v7[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E08);
  v7[43] = swift_task_alloc();
  v7[44] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E10);
  v7[45] = swift_task_alloc();
  v9 = sub_1C754EECC();
  v7[46] = v9;
  v7[47] = *(v9 - 8);
  v7[48] = swift_task_alloc();
  v10 = sub_1C754EEEC();
  v7[49] = v10;
  v7[50] = *(v10 - 8);
  v7[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E18);
  v7[52] = swift_task_alloc();
  v11 = sub_1C754FD9C();
  v7[53] = v11;
  v7[54] = *(v11 - 8);
  v7[55] = swift_task_alloc();
  v7[56] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E20);
  v7[57] = v12;
  v7[58] = *(v12 - 8);
  v7[59] = swift_task_alloc();
  v13 = sub_1C755029C();
  v7[60] = v13;
  v7[61] = *(v13 - 8);
  v7[62] = swift_task_alloc();
  v7[63] = swift_task_alloc();
  v7[64] = swift_task_alloc();
  v7[65] = swift_task_alloc();
  v7[66] = swift_task_alloc();
  v7[67] = swift_task_alloc();
  v7[68] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C6FAAE14, 0, 0);
}

uint64_t sub_1C6FAAE14()
{
  v37 = *(v0 + 536);
  v38 = *(v0 + 544);
  v2 = *(v0 + 488);
  v1 = *(v0 + 496);
  v3 = *(v0 + 480);
  v34 = *(v0 + 472);
  v31 = *(v0 + 520);
  v32 = *(v0 + 464);
  v35 = *(v0 + 456);
  v36 = *(v0 + 528);
  v33 = *(v0 + 296);
  v30 = *(v0 + 288);
  v39 = *(v0 + 416);
  v4 = *(v0 + 264);
  *(swift_task_alloc() + 16) = v4;
  OUTLINED_FUNCTION_130_1();

  sub_1C755028C();
  v5 = *(v2 + 8);
  *(v0 + 552) = v5;
  *(v0 + 560) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  sub_1C754DF8C();
  v7 = v6;
  OUTLINED_FUNCTION_64_1();
  *(v0 + 568) = sub_1C6FB5F80(v8, v9);
  OUTLINED_FUNCTION_82();
  sub_1C75503AC();

  v10 = OUTLINED_FUNCTION_98_1();
  (v5)(v10);
  sub_1C70BFEC0();
  OUTLINED_FUNCTION_93();

  v11 = OUTLINED_FUNCTION_102_1();
  (v5)(v11);
  *(v0 + 576) = sub_1C754E72C();
  OUTLINED_FUNCTION_12();
  v13 = *(v12 + 16);
  *(v0 + 584) = v13;
  *(v0 + 592) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v34, v33);
  *(v0 + 664) = *MEMORY[0x1E69A1370];
  v14 = *(v32 + 104);
  *(v0 + 600) = v14;
  *(v0 + 608) = (v32 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v14(v34);
  OUTLINED_FUNCTION_92_1();
  v15 = *(v32 + 8);
  *(v0 + 616) = v15;
  *(v0 + 624) = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v34, v35);
  v16 = OUTLINED_FUNCTION_98_1();
  (v5)(v16);
  OUTLINED_FUNCTION_105_0();
  v5(v7, v3);
  OUTLINED_FUNCTION_131();
  v17 = OUTLINED_FUNCTION_102_1();
  (v5)(v17);
  v18 = sub_1C754FD8C();
  OUTLINED_FUNCTION_80_1(v18, v19, v20, v21, v22, v23, v24, v25, v29, v5, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 632) = v26;
  *v26 = v27;
  v26[1] = sub_1C6FAB124;
  OUTLINED_FUNCTION_110_1();

  return MEMORY[0x1EEE0B310]();
}

uint64_t sub_1C6FAB124()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 640) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C6FAB21C()
{
  v2 = v0[43];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E28);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_1C6FB5FC8(v2, &qword_1EC214E08);
  }

  else
  {
    v99 = v0[77];
    v98 = v0[59];
    v86 = v0[55];
    v89 = v0[54];
    v92 = v0[53];
    v95 = v0[56];
    v82 = v0[48];
    v4 = v0[47];
    v97 = v0[37];
    v5 = OUTLINED_FUNCTION_71_0();
    v6 = v1(v5);
    v14 = OUTLINED_FUNCTION_85(v6, v7, v8, v9, v10, v11, v12, v13, v73);
    v3(v14);
    v15 = OUTLINED_FUNCTION_125_0();
    v16 = v1(v15);
    v24 = OUTLINED_FUNCTION_124_0(v16, v17, v18, v19, v20, v21, v22, v23, v74, v78, v82);
    v3(v24);
    v25 = sub_1C754EEBC();
    v33 = OUTLINED_FUNCTION_84_1(v25, v26, v27, v28, v29, v30, v31, v32, v75, v79, v83, v86, v89, v92, v95);
    v34(v33);
    v35 = OUTLINED_FUNCTION_57_0();
    v36(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E30);
    sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38);
    inited = swift_initStackObject();
    v38 = OUTLINED_FUNCTION_61_2(inited, "_OverrideConfigurationHelper.samplingParameters(.dynamic(completionParameters))", xmmword_1C755BAB0, v76, v80, v84, v87, v90, v93, 1, 2, v97, v98);
    v39(v38);
    v40 = OUTLINED_FUNCTION_103_2();
    v41(v40);
    inited[4].n128_u64[1] = v4;
    __swift_allocate_boxed_opaque_existential_0Tm(&inited[3]);
    sub_1C754EBEC();
    v42 = OUTLINED_FUNCTION_57_0();
    v99(v42);
    OUTLINED_FUNCTION_82();
    sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E40);
    v43 = swift_initStackObject();
    inited[4].n128_u64[1] = OUTLINED_FUNCTION_68_0(v43, v44, v45, v46, v47, v48, v49, v50, v77, v81, v85, v88, v91, v94, v96);
    OUTLINED_FUNCTION_23_5();
    inited[5].n128_u64[0] = sub_1C6FB5F80(v51, v52);
    __swift_allocate_boxed_opaque_existential_0Tm(&inited[3]);
    OUTLINED_FUNCTION_89_1();
    (*(v53 + 16))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E48);
    OUTLINED_FUNCTION_82();
    sub_1C75504DC();
    OUTLINED_FUNCTION_72_0();

    v54 = OUTLINED_FUNCTION_119_0();
    v55(v54);
    v56 = OUTLINED_FUNCTION_118_0();
    v57(v56);
    v58 = OUTLINED_FUNCTION_113_1();
    v59(v58);
    v60 = OUTLINED_FUNCTION_100_0();
    v61(v60);
  }

  v62 = v0[69];
  v63 = v0[67];
  v64 = v0[60];
  v65 = v0[38];
  sub_1C755039C();
  v0[31] = v65;
  OUTLINED_FUNCTION_106_0();
  v62(v63, v64);
  v66 = swift_task_alloc();
  v0[81] = v66;
  OUTLINED_FUNCTION_65_0();
  v69 = sub_1C6FB5F80(v67, v68);
  v70 = sub_1C6FB59C4();
  *v66 = v0;
  v66[1] = sub_1C6FAB68C;
  v71 = v0[40];

  return MEMORY[0x1EEE0A3A0](v0 + 23, &type metadata for FreeformStoryCompletionGenerator.FreeformStoryCompletionGenerable, &type metadata for FreeformStoryCompletionGenerator.FreeformStoryCompletionGenerable, v71, &type metadata for FreeformStoryCompletionGenerator.FreeformStoryCompletionGenerable, v69, v70);
}

uint64_t sub_1C6FAB68C()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *v1;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = v2[41];
  *v4 = *v1;
  *(v3 + 656) = v0;

  (*(v5 + 8))(v2[42], v2[40]);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C6FAB7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_127_1();
  v23 = *(v22 + 552);
  v24 = *(v22 + 544);
  v39 = *(v22 + 512);
  v40 = *(v22 + 504);
  v25 = *(v22 + 480);
  v41 = *(v22 + 496);
  v42 = *(v22 + 472);
  v43 = *(v22 + 440);
  v44 = *(v22 + 416);
  v45 = *(v22 + 408);
  v46 = *(v22 + 384);
  v47 = *(v22 + 360);
  v48 = *(v22 + 344);
  v49 = *(v22 + 336);
  v26 = *(v22 + 256);
  (*(*(v22 + 432) + 8))(*(v22 + 448), *(v22 + 424));
  v23(v24, v25);
  v27 = *(v22 + 184);
  v28 = *(v22 + 200);
  v29 = *(v22 + 232);
  v26[2] = *(v22 + 216);
  v26[3] = v29;
  *v26 = v27;
  v26[1] = v28;

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_128_0();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, a20, a21, a22);
}

uint64_t sub_1C6FAB954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_111_0();
  v19 = OUTLINED_FUNCTION_74();
  v20(v19);
  v21 = OUTLINED_FUNCTION_66_2();
  v18(v21);
  OUTLINED_FUNCTION_58_1();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_94_1();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C6FABA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_111_0();
  v19 = OUTLINED_FUNCTION_74();
  v20(v19);
  v21 = OUTLINED_FUNCTION_66_2();
  v18(v21);
  OUTLINED_FUNCTION_58_1();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_94_1();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C6FABB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v7[29] = a6;
  v7[30] = a7;
  v7[27] = a4;
  v7[28] = a5;
  v7[25] = a2;
  v7[26] = a3;
  v7[24] = a1;
  v7[31] = *a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E00);
  v7[32] = v8;
  v7[33] = *(v8 - 8);
  v7[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E08);
  v7[35] = swift_task_alloc();
  v7[36] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E10);
  v7[37] = swift_task_alloc();
  v9 = sub_1C754EECC();
  v7[38] = v9;
  v7[39] = *(v9 - 8);
  v7[40] = swift_task_alloc();
  v10 = sub_1C754EEEC();
  v7[41] = v10;
  v7[42] = *(v10 - 8);
  v7[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E18);
  v7[44] = swift_task_alloc();
  v11 = sub_1C754FD9C();
  v7[45] = v11;
  v7[46] = *(v11 - 8);
  v7[47] = swift_task_alloc();
  v7[48] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E20);
  v7[49] = v12;
  v7[50] = *(v12 - 8);
  v7[51] = swift_task_alloc();
  v13 = sub_1C755029C();
  v7[52] = v13;
  v7[53] = *(v13 - 8);
  v7[54] = swift_task_alloc();
  v7[55] = swift_task_alloc();
  v7[56] = swift_task_alloc();
  v7[57] = swift_task_alloc();
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v7[60] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C6FABF14, 0, 0);
}

uint64_t sub_1C6FABF14()
{
  v37 = *(v0 + 472);
  v38 = *(v0 + 480);
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 416);
  v34 = *(v0 + 408);
  v31 = *(v0 + 456);
  v32 = *(v0 + 400);
  v35 = *(v0 + 392);
  v36 = *(v0 + 464);
  v33 = *(v0 + 232);
  v30 = *(v0 + 224);
  v39 = *(v0 + 352);
  v4 = *(v0 + 200);
  *(swift_task_alloc() + 16) = v4;
  OUTLINED_FUNCTION_130_1();

  sub_1C755028C();
  v5 = *(v2 + 8);
  *(v0 + 488) = v5;
  *(v0 + 496) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  sub_1C754DF8C();
  v7 = v6;
  OUTLINED_FUNCTION_64_1();
  *(v0 + 504) = sub_1C6FB5F80(v8, v9);
  OUTLINED_FUNCTION_82();
  sub_1C75503AC();

  v10 = OUTLINED_FUNCTION_98_1();
  (v5)(v10);
  sub_1C70BFEC0();
  OUTLINED_FUNCTION_93();

  v11 = OUTLINED_FUNCTION_102_1();
  (v5)(v11);
  *(v0 + 512) = sub_1C754E72C();
  OUTLINED_FUNCTION_12();
  v13 = *(v12 + 16);
  *(v0 + 520) = v13;
  *(v0 + 528) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v34, v33);
  *(v0 + 600) = *MEMORY[0x1E69A1370];
  v14 = *(v32 + 104);
  *(v0 + 536) = v14;
  *(v0 + 544) = (v32 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v14(v34);
  OUTLINED_FUNCTION_92_1();
  v15 = *(v32 + 8);
  *(v0 + 552) = v15;
  *(v0 + 560) = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v34, v35);
  v16 = OUTLINED_FUNCTION_98_1();
  (v5)(v16);
  OUTLINED_FUNCTION_105_0();
  v5(v7, v3);
  OUTLINED_FUNCTION_131();
  v17 = OUTLINED_FUNCTION_102_1();
  (v5)(v17);
  v18 = sub_1C754FD8C();
  OUTLINED_FUNCTION_80_1(v18, v19, v20, v21, v22, v23, v24, v25, v29, v5, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 568) = v26;
  *v26 = v27;
  v26[1] = sub_1C6FAC218;
  OUTLINED_FUNCTION_110_1();

  return MEMORY[0x1EEE0B310]();
}

uint64_t sub_1C6FAC218()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 576) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C6FAC310()
{
  v2 = v0[35];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E28);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_1C6FB5FC8(v2, &qword_1EC214E08);
  }

  else
  {
    v101 = v0[69];
    v100 = v0[51];
    v88 = v0[47];
    v91 = v0[46];
    v94 = v0[45];
    v97 = v0[48];
    v84 = v0[40];
    v4 = v0[39];
    v99 = v0[29];
    v5 = OUTLINED_FUNCTION_71_0();
    v6 = v1(v5);
    v14 = OUTLINED_FUNCTION_85(v6, v7, v8, v9, v10, v11, v12, v13, v75);
    v3(v14);
    v15 = OUTLINED_FUNCTION_125_0();
    v16 = v1(v15);
    v24 = OUTLINED_FUNCTION_124_0(v16, v17, v18, v19, v20, v21, v22, v23, v76, v80, v84);
    v3(v24);
    v25 = sub_1C754EEBC();
    v33 = OUTLINED_FUNCTION_84_1(v25, v26, v27, v28, v29, v30, v31, v32, v77, v81, v85, v88, v91, v94, v97);
    v34(v33);
    v35 = OUTLINED_FUNCTION_57_0();
    v36(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E30);
    sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38);
    inited = swift_initStackObject();
    v38 = OUTLINED_FUNCTION_61_2(inited, "_OverrideConfigurationHelper.samplingParameters(.dynamic(completionParameters))", xmmword_1C755BAB0, v78, v82, v86, v89, v92, v95, 1, 2, v99, v100);
    v39(v38);
    v40 = OUTLINED_FUNCTION_103_2();
    v41(v40);
    inited[4].n128_u64[1] = v4;
    __swift_allocate_boxed_opaque_existential_0Tm(&inited[3]);
    sub_1C754EBEC();
    v42 = OUTLINED_FUNCTION_57_0();
    v101(v42);
    OUTLINED_FUNCTION_82();
    sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E40);
    v43 = swift_initStackObject();
    inited[4].n128_u64[1] = OUTLINED_FUNCTION_68_0(v43, v44, v45, v46, v47, v48, v49, v50, v79, v83, v87, v90, v93, v96, v98);
    OUTLINED_FUNCTION_23_5();
    inited[5].n128_u64[0] = sub_1C6FB5F80(v51, v52);
    __swift_allocate_boxed_opaque_existential_0Tm(&inited[3]);
    OUTLINED_FUNCTION_89_1();
    (*(v53 + 16))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E48);
    OUTLINED_FUNCTION_82();
    sub_1C75504DC();
    OUTLINED_FUNCTION_72_0();

    v54 = OUTLINED_FUNCTION_119_0();
    v55(v54);
    v56 = OUTLINED_FUNCTION_118_0();
    v57(v56);
    v58 = OUTLINED_FUNCTION_113_1();
    v59(v58);
    v60 = OUTLINED_FUNCTION_100_0();
    v61(v60);
  }

  v62 = v0[61];
  v63 = v0[59];
  v64 = v0[52];
  v65 = v0[30];
  sub_1C755039C();
  v0[23] = v65;
  OUTLINED_FUNCTION_106_0();
  v62(v63, v64);
  v66 = type metadata accessor for FreeformStoryCompletionGenerator.FreeformStoryCompletionGenerable.Streaming(0);
  v67 = swift_task_alloc();
  v0[73] = v67;
  OUTLINED_FUNCTION_65_0();
  v70 = sub_1C6FB5F80(v68, v69);
  v71 = sub_1C6FB5F80(&unk_1EDD07A50, type metadata accessor for FreeformStoryCompletionGenerator.FreeformStoryCompletionGenerable.Streaming);
  *v67 = v0;
  v67[1] = sub_1C6FAC7A8;
  v72 = v0[32];
  v73 = v0[24];

  return MEMORY[0x1EEE0A3A8](v73, v66, v66, v72, v66, v70, v71);
}

uint64_t sub_1C6FAC7A8()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *v1;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 592) = v0;

  (*(v2[33] + 8))(v2[34], v2[32]);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C6FAC904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_127_1();
  v23 = v22[61];
  v24 = v22[60];
  v35 = v22[55];
  v36 = v22[54];
  v25 = v22[52];
  v37 = v22[51];
  v38 = v22[47];
  v39 = v22[44];
  v40 = v22[43];
  v41 = v22[40];
  v42 = v22[37];
  v43 = v22[35];
  v44 = v22[34];
  (*(v22[46] + 8))(v22[48], v22[45]);
  v23(v24, v25);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_128_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, a20, a21, a22);
}

uint64_t sub_1C6FACA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_111_0();
  v19 = OUTLINED_FUNCTION_83();
  v20(v19);
  v21 = OUTLINED_FUNCTION_66_2();
  v18(v21);
  OUTLINED_FUNCTION_59_0();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_94_1();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C6FACB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_111_0();
  v19 = OUTLINED_FUNCTION_83();
  v20(v19);
  v21 = OUTLINED_FUNCTION_66_2();
  v18(v21);
  OUTLINED_FUNCTION_59_0();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_94_1();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C6FACC2C()
{
  v0 = sub_1C755029C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C754FA7C();
  OUTLINED_FUNCTION_23_5();
  sub_1C6FB5F80(v4, v5);
  sub_1C75502CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E50);
  v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C755BAB0;
  (*(v1 + 16))(v7 + v6, v3, v0);
  MEMORY[0x1CCA5C7D0](v7);

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1C6FACDD4()
{
  type metadata accessor for LLMDefaults();
  static LLMDefaults.backendType.getter(&v1);
  switch(v1)
  {
    case 3:

      break;
    default:
      sub_1C7551DBC();

      break;
  }

  return sub_1C754F60C();
}

uint64_t static FreeformStoryCompletionGenerator.generateGMSOneShot(with:diagnosticContext:eventRecorder:progressReporter:aiEventReporting:)()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v0[73] = v3;
  v0[72] = v4;
  v0[71] = v5;
  v0[70] = v6;
  v0[69] = v7;
  v8 = sub_1C754FA7C();
  v0[74] = v8;
  OUTLINED_FUNCTION_18(v8);
  v0[75] = v9;
  v0[76] = OUTLINED_FUNCTION_77();
  v10 = sub_1C754E72C();
  v0[77] = v10;
  OUTLINED_FUNCTION_18(v10);
  v0[78] = v11;
  v0[79] = OUTLINED_FUNCTION_77();
  v12 = type metadata accessor for LLMConfiguration(0);
  v0[80] = v12;
  OUTLINED_FUNCTION_76(v12);
  v0[81] = OUTLINED_FUNCTION_77();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0);
  OUTLINED_FUNCTION_76(v13);
  v0[82] = OUTLINED_FUNCTION_77();
  v14 = sub_1C754F38C();
  v0[83] = v14;
  OUTLINED_FUNCTION_18(v14);
  v0[84] = v15;
  v0[85] = OUTLINED_FUNCTION_77();
  memcpy(v0 + 2, v2, 0x41uLL);
  v16 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1C6FAD0D0()
{
  v54 = v0;
  v2 = *(v0 + 656);
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);
  v5 = v4[4];
  v6 = __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1C6FACDD4();
  v7 = sub_1C754F61C();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v7);
  sub_1C754F16C();
  sub_1C6FB5FC8(v2, &qword_1EC214BF0);
  sub_1C754F2CC();
  v8 = sub_1C6FA7A90();
  *(v0 + 688) = v8;
  if (v8)
  {
    v9 = v8;
    type metadata accessor for LLMWrapperUtils();
    if (qword_1EDD0A988 != -1)
    {
      OUTLINED_FUNCTION_30_0();
    }

    LOBYTE(v52[0]) = byte_1EC218F88;
    static LLMWrapperUtils.storytellerModelType(for:)(&v51);
    v10 = v51;
    type metadata accessor for LLMConfigurationProvider();
    LOBYTE(v52[0]) = v10;
    if (qword_1EDD079A0 != -1)
    {
      OUTLINED_FUNCTION_28();
    }

    v11 = *(v0 + 648);
    v12 = sub_1C754FF1C();
    v13 = __swift_project_value_buffer(v12, qword_1EDD28990);
    *(v0 + 696) = v13;
    static LLMConfigurationProvider.configuration(for:logger:)(v52, v13, v11);
    v18 = *(v0 + 648);
    v19 = *(v0 + 640);
    v20 = *(v0 + 608);
    v21 = *(v0 + 600);
    v22 = *(v0 + 592);
    v49 = *(v0 + 560);
    v23 = (v18 + *(v19 + 40));
    v24 = *v23;
    v25 = v23[1];
    v26 = v23[2];
    *(v0 + 465) = *(v23 + 41);
    *(v0 + 440) = v25;
    *(v0 + 456) = v26;
    *(v0 + 424) = v24;
    v27 = v23[1];
    v52[0] = *v23;
    v52[1] = v27;
    v53[0] = v23[2];
    *(v53 + 9) = *(v23 + 41);
    static LLMWrapper.gmsSamplingParameters(from:)();
    v50 = *(v0 + 16);
    (*(v21 + 16))(v20, v18 + *(v19 + 24), v22);
    if (v49)
    {
      v28 = *(v0 + 560);
      sub_1C6FB52D4(v0 + 16, v0 + 160);
      if (sub_1C71656D8())
      {
        v29 = (v28 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
        os_unfair_lock_lock(v29);
        sub_1C6FAFB8C(&v29[2], v10, v50, (v0 + 424));
        os_unfair_lock_unlock(v29);
      }

      sub_1C6FB5330(v0 + 16);
    }

    sub_1C6FB52D4(v0 + 16, v0 + 88);
    v30 = sub_1C754FEEC();
    v31 = sub_1C75511BC();
    sub_1C6FB5330(v0 + 16);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *&v52[0] = swift_slowAlloc();
      *v32 = 136643075;
      v33 = sub_1C75504BC();
      v35 = sub_1C6F765A4(v33, v34, v52);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2080;
      v36 = *(v0 + 40);
      *(v0 + 488) = *(v0 + 24);
      *(v0 + 504) = v36;
      *(v0 + 520) = *(v0 + 56);
      *(v0 + 529) = *(v0 + 65);
      v37 = sub_1C75506EC();
      v39 = sub_1C6F765A4(v37, v38, v52);

      *(v32 + 14) = v39;
      _os_log_impl(&dword_1C6F5C000, v30, v31, "Generating freeform story one-shot with prompt bindings: %{sensitive}s and sampling parameters: %s", v32, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v40 = *(v0 + 648);
    v41 = *(v0 + 632);
    v42 = *(v0 + 608);
    v43 = *(v0 + 584);
    v45 = v43[3];
    v44 = v43[4];
    __swift_project_boxed_opaque_existential_1(v43, v45);
    *(v0 + 81) = 3;
    v46 = swift_task_alloc();
    *(v0 + 704) = v46;
    v46[2] = v42;
    v46[3] = v50;
    v46[4] = v9;
    v46[5] = v41;
    v46[6] = v40;
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 712) = v47;
    *v47 = v48;
    v47[1] = sub_1C6FAD6E4;

    return sub_1C70597B4(v0 + 232, (v0 + 81), &unk_1C755BAF8, v46, v45, &type metadata for FreeformStoryCompletionGenerator.FreeformStoryCompletionGenerable, v44);
  }

  else
  {
    v14 = *(v0 + 680);
    OUTLINED_FUNCTION_112_0();
    sub_1C6FB5280();
    swift_allocError();
    swift_willThrow();
    OUTLINED_FUNCTION_70(v3, v4[3]);
    OUTLINED_FUNCTION_57_0();
    sub_1C754F1AC();
    (*(v1 + 8))(v14, v6);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v15 + 8))(v5);
    OUTLINED_FUNCTION_104_0();

    OUTLINED_FUNCTION_43();

    return v16();
  }
}

uint64_t sub_1C6FAD6E4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 720) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C6FAD7DC()
{
  v89 = v0;
  v1 = (v0 + 37);
  v2 = v0[90];
  v3 = *(v0 + 31);
  *(v0 + 37) = *(v0 + 29);
  *(v0 + 39) = v3;
  v4 = *(v0 + 35);
  *(v0 + 41) = *(v0 + 33);
  *(v0 + 43) = v4;
  result = sub_1C754F2DC();
  if (v2)
  {
    OUTLINED_FUNCTION_116_1();
    v6 = v0[84];
    v79 = v7;
    v81 = v0[83];
    v77 = v0[81];
    v8 = v0[79];
    v9 = v0[78];
    v10 = v0[77];
    v11 = v0[76];
    v12 = v0[75];
    v13 = v0[74];
    v83 = v0[72];
    v14 = v0[71];

    sub_1C6FB5424((v0 + 37));
    (*(v12 + 8))(v11, v13);
    (*(v9 + 8))(v8, v10);
    OUTLINED_FUNCTION_1_11();
    sub_1C6FB5B50(v77, v15);
    OUTLINED_FUNCTION_70(v14, v14[3]);
    sub_1C754F1AC();
    (*(v6 + 8))(v79, v81);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v16 + 8))(v83);

    OUTLINED_FUNCTION_104_0();

    OUTLINED_FUNCTION_43();
  }

  else
  {
    v17 = 0;
    v72 = v0 + 45;
    v18 = v0[38];
    v75 = v18;
    v76 = *(v18 + 16);
    v74 = v18 + 32;
    v19 = MEMORY[0x1E69E7CC0];
    v78 = v0;
    v73 = v0 + 37;
    while (v17 != v76)
    {
      if (v17 >= *(v75 + 16))
      {
        __break(1u);
        return result;
      }

      v20 = (v74 + 40 * v17);
      v21 = v20[3];
      v80 = v20[2];
      v82 = *v20;
      v22 = v20[4];
      v84 = v17 + 1;
      v86 = v19;
      v23 = *(v22 + 16);
      v87 = v20[1];
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v24 = 0;
      v25 = (v22 + 40);
      v26 = MEMORY[0x1E69E7CC0];
      while (v23 != v24)
      {
        if (v24 >= *(v22 + 16))
        {
          __break(1u);
          goto LABEL_24;
        }

        v27 = *(v25 - 1);
        v28 = *v25;
        sub_1C75504FC();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_17_5();
          sub_1C6FB2908();
          v26 = v31;
        }

        v29 = *(v26 + 16);
        if (v29 >= *(v26 + 24) >> 1)
        {
          sub_1C6FB2908();
          v26 = v32;
        }

        *(v26 + 16) = v29 + 1;
        v30 = v26 + 16 * v29;
        *(v30 + 32) = v27;
        *(v30 + 40) = v28;
        v25 += 2;
        v24 = (v24 + 1);
      }

      sub_1C75504FC();
      sub_1C75504FC();
      v19 = v86;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_78_2();
        sub_1C6FB4FBC();
        v19 = v35;
      }

      v1 = v73;
      v33 = *(v19 + 16);
      if (v33 >= *(v19 + 24) >> 1)
      {
        sub_1C6FB4FBC();
        v19 = v36;
      }

      *(v19 + 16) = v33 + 1;
      v34 = (v19 + 40 * v33);
      v34[4] = v82;
      v34[5] = v87;
      v0 = v78;
      v34[6] = v80;
      v34[7] = v21;
      v34[8] = v26;
      v17 = v84;
    }

    v38 = v0[41];
    v37 = v0[42];
    v39 = v1;
    v40 = v0[43];
    v41 = v0[44];
    v42 = v19;
    v43 = v0[39];
    v44 = v0[40];
    v45 = v78[37];
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C6FB5424(v39);
    v78[45] = v38;
    v78[46] = v37;
    v78[47] = v40;
    v78[48] = v41;
    v78[49] = v43;
    v78[50] = v44;
    v78[51] = v45;
    v23 = v78;
    v78[52] = v42;
    sub_1C754F2EC();
LABEL_24:
    v47 = v72[1];
    v88[0] = *v72;
    v88[1] = v47;
    v48 = v72[3];
    v88[2] = v72[2];
    v88[3] = v48;
    v49 = FreeformStoryCompletionSync.generableDescription.getter();
    v51 = v50;
    v52 = sub_1C754FEEC();
    v53 = sub_1C75511BC();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v88[0] = v55;
      *v54 = 136642819;
      v56 = sub_1C6F765A4(v49, v51, v88);

      *(v54 + 4) = v56;
      _os_log_impl(&dword_1C6F5C000, v52, v53, "Storyteller completion with original keys, parsed using GMS:\n%{sensitive}s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      v23 = v78;
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    v57 = v23[85];
    v58 = v23[84];
    v85 = v23[83];
    v59 = v23[81];
    v60 = v23[79];
    v61 = v23[78];
    v62 = v23[77];
    v63 = v23[76];
    v64 = v23[75];
    v65 = v23[74];
    v66 = v23[71];
    v67 = v23[69];
    v68 = *v72;
    v69 = v72[1];
    v70 = v72[3];
    v67[2] = v72[2];
    v67[3] = v70;
    *v67 = v68;
    v67[1] = v69;
    (*(v64 + 8))(v63, v65);
    (*(v61 + 8))(v60, v62);
    OUTLINED_FUNCTION_1_11();
    sub_1C6FB5B50(v59, v71);
    OUTLINED_FUNCTION_70(v66, v66[3]);
    sub_1C754F1AC();
    (*(v58 + 8))(v57, v85);

    OUTLINED_FUNCTION_25();
  }

  return v46();
}

uint64_t sub_1C6FADF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  v17 = v16[84];
  v36 = v16[85];
  v37 = v16[83];
  v35 = v16[81];
  v18 = v16[76];
  v19 = v16[75];
  v20 = v16[74];
  v38 = v16[72];
  v21 = v16[71];

  (*(v19 + 8))(v18, v20);
  v22 = OUTLINED_FUNCTION_98_1();
  v23(v22);
  OUTLINED_FUNCTION_1_11();
  sub_1C6FB5B50(v35, v24);
  OUTLINED_FUNCTION_70(v21, v21[3]);
  sub_1C754F1AC();
  (*(v17 + 8))(v36, v37);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v25 + 8))(v38);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_129();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35, v36, v37, v38, a14, a15, a16);
}

uint64_t sub_1C6FAE0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF8);
  v7[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C6FAE1A4, 0, 0);
}

uint64_t sub_1C6FAE1A4()
{
  OUTLINED_FUNCTION_49_0();
  v2 = v0[16];
  v1 = v0[17];
  v3 = *(type metadata accessor for LLMConfiguration(0) + 44);
  v4 = sub_1C754E15C();
  OUTLINED_FUNCTION_12();
  (*(v5 + 16))(v1, v2 + v3, v4);
  OUTLINED_FUNCTION_52_5();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[18] = v10;
  *v10 = v11;
  v10[1] = sub_1C6FAE2A0;
  v12 = v0[17];
  v14 = v0[14];
  v13 = v0[15];
  v15 = v0[12];
  v16 = v0[13];
  v17 = v0[11];

  return sub_1C6FAAA3C((v0 + 2), v15, v12, v17, v16, v13, v14);
}

uint64_t sub_1C6FAE2A0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  *(v8 + 152) = v0;

  sub_1C6FB5FC8(v5, &qword_1EC214DF8);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C6FAE3C4()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 64);
  v1[2] = *(v0 + 48);
  v1[3] = v4;
  *v1 = v2;
  v1[1] = v3;

  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_1C6FAE430()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C6FAE48C()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v0[21] = v3;
  v0[22] = v4;
  v0[19] = v5;
  v0[20] = v6;
  v0[18] = v7;
  v8 = type metadata accessor for FreeformStoryCompletionGenerator.FreeformStoryCompletionGenerable.Streaming(0);
  v0[23] = v8;
  OUTLINED_FUNCTION_76(v8);
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v9 = sub_1C754FA7C();
  v0[26] = v9;
  OUTLINED_FUNCTION_18(v9);
  v0[27] = v10;
  v0[28] = OUTLINED_FUNCTION_77();
  v11 = sub_1C754E72C();
  v0[29] = v11;
  OUTLINED_FUNCTION_18(v11);
  v0[30] = v12;
  v0[31] = OUTLINED_FUNCTION_77();
  v13 = type metadata accessor for LLMConfiguration(0);
  v0[32] = v13;
  OUTLINED_FUNCTION_76(v13);
  v0[33] = OUTLINED_FUNCTION_77();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0);
  OUTLINED_FUNCTION_76(v14);
  v0[34] = swift_task_alloc();
  v0[35] = swift_task_alloc();
  v15 = sub_1C754F38C();
  v0[36] = v15;
  OUTLINED_FUNCTION_18(v15);
  v0[37] = v16;
  v17 = OUTLINED_FUNCTION_77();
  v18 = *v2;
  v0[38] = v17;
  v0[39] = v18;
  v19 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1C6FAE674()
{
  v82 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 160);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C6FACDD4();
  sub_1C754F61C();
  OUTLINED_FUNCTION_52_5();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  sub_1C754F16C();
  sub_1C6FB5FC8(v1, &qword_1EC214BF0);
  sub_1C754F2CC();
  v13 = sub_1C6FA7A90();
  *(v0 + 320) = v13;
  if (v13)
  {
    v14 = v13;
    OUTLINED_FUNCTION_70(*(v0 + 160), v2[3]);
    sub_1C754F15C();
    type metadata accessor for LLMWrapperUtils();
    if (qword_1EDD0A988 != -1)
    {
LABEL_33:
      OUTLINED_FUNCTION_30_0();
    }

    LOBYTE(v79) = byte_1EC218F88;
    static LLMWrapperUtils.storytellerModelType(for:)(&v75);
    v15 = v75;
    type metadata accessor for LLMConfigurationProvider();
    *(v0 + 352) = v15;
    if (qword_1EDD079A0 != -1)
    {
      OUTLINED_FUNCTION_28();
    }

    v16 = *(v0 + 264);
    v17 = sub_1C754FF1C();
    v18 = __swift_project_value_buffer(v17, qword_1EDD28990);
    static LLMConfigurationProvider.configuration(for:logger:)((v0 + 352), v18, v16);
    v20 = *(v0 + 256);
    v19 = *(v0 + 264);
    v21 = (v19 + *(v20 + 40));
    v22 = v21[1];
    v76 = *v21;
    v77 = v22;
    v24 = *v21;
    v23 = v21[1];
    v78[0] = v21[2];
    *(v78 + 9) = *(v21 + 41);
    v26 = *(v0 + 216);
    v25 = *(v0 + 224);
    v27 = *(v0 + 208);
    v28 = *(v0 + 152);
    v79 = v24;
    v80 = v23;
    v81[0] = v21[2];
    *(v81 + 9) = *(v21 + 41);
    static LLMWrapper.gmsSamplingParameters(from:)();
    (*(v26 + 16))(v25, v19 + *(v20 + 24), v27);
    if (v28)
    {
      v29 = *(v0 + 312);
      v30 = *(v0 + 152);
      *(v30 + 16) = v15;
      *(v30 + 24) = v29;
      sub_1C75504FC();

      v31 = v77;
      *(v30 + 32) = v76;
      *(v30 + 48) = v31;
      *(v30 + 64) = v78[0];
      *(v30 + 73) = *(v78 + 9);
      *(v30 + 96) = sub_1C754FA5C();
      *(v30 + 104) = v32;
    }

    v34 = sub_1C754FA4C();
    if (v33)
    {
      v35 = v33;
      v74 = v28;
      v36 = *(v0 + 312);
      v39 = *(v36 + 64);
      v38 = v36 + 64;
      v37 = v39;
      v40 = -1;
      v41 = -1 << *(*(v0 + 312) + 32);
      if (-v41 < 64)
      {
        v40 = ~(-1 << -v41);
      }

      v42 = v40 & v37;
      v43 = (63 - v41) >> 6;
      v72 = *(v0 + 312);
      sub_1C75504FC();
      v44 = 0;
      while (1)
      {
        v45 = v35;
        if (!v42)
        {
          break;
        }

        v46 = v42;
LABEL_23:
        v35 = 0;
        v42 = (v46 - 1) & v46;
        if (v45)
        {
          v48 = (v44 << 10) | (16 * __clz(__rbit64(v46)));
          v49 = *(*(v72 + 56) + v48);
          v50 = *(*(v72 + 56) + v48 + 8);
          v53 = (*(v72 + 48) + v48);
          v51 = *v53;
          v52 = v53[1];
          *(v0 + 96) = v34;
          *(v0 + 104) = v45;
          *(v0 + 112) = v51;
          *(v0 + 120) = v52;
          *(v0 + 128) = v49;
          *(v0 + 136) = v50;
          sub_1C6FB5E8C();
          sub_1C75504FC();
          sub_1C75504FC();
          v34 = sub_1C755155C();
          v35 = v54;
        }
      }

      while (1)
      {
        v47 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          __break(1u);
          goto LABEL_33;
        }

        if (v47 >= v43)
        {
          break;
        }

        v46 = *(v38 + 8 * v47);
        ++v44;
        if (v46)
        {
          v44 = v47;
          goto LABEL_23;
        }
      }

      if (!v74)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v45 = 0;
      if (!v28)
      {
        goto LABEL_27;
      }
    }

    v55 = *(v0 + 152);
    *(v55 + 112) = v34;
    *(v55 + 120) = v45;
LABEL_27:
    v56 = *(v0 + 312);
    v73 = *(v0 + 264);
    v57 = *(v0 + 248);
    v58 = *(v0 + 224);
    v59 = *(v0 + 176);

    v60 = *(v0 + 40);
    v61 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v60);
    sub_1C6FACDD4();
    OUTLINED_FUNCTION_52_5();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
    v66 = swift_task_alloc();
    *(v0 + 328) = v66;
    v66[2] = v56;
    v66[3] = v57;
    v66[4] = v59;
    v66[5] = v58;
    v66[6] = v14;
    v66[7] = v73;
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 336) = v67;
    *v67 = v68;
    v67[1] = sub_1C6FAED0C;
    v69 = *(v0 + 272);
    v70 = *(v0 + 200);
    v71 = *(v0 + 184);
    v84 = v60;
    v85 = v61;

    return MEMORY[0x1EEE2A678](v70, "FreeformStoryCompletionGenerator.submitStorytellingRequest", 58, 2, v69, &unk_1C755BF80, v66, v71);
  }

  sub_1C6FB5280();
  swift_allocError();
  swift_willThrow();
  v7 = OUTLINED_FUNCTION_57_0();
  __swift_project_boxed_opaque_existential_1(v7, v8);
  sub_1C754F1AC();
  v9 = *(v0 + 168);
  (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v10 + 8))(v9);

  OUTLINED_FUNCTION_43();

  return v11();
}

uint64_t sub_1C6FAED0C()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *v1;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 344) = v0;

  sub_1C6FB5FC8(*(v2 + 272), &qword_1EC214BF0);

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C6FAEE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_127_1();
  v23 = v22[37];
  v47 = v22[38];
  v48 = v22[36];
  v50 = v22[35];
  v51 = v22[34];
  v24 = v22[30];
  v45 = v22[31];
  v46 = v22[33];
  v25 = v22[28];
  v26 = v22[27];
  v43 = v22[26];
  v44 = v22[29];
  v28 = v22[24];
  v27 = v22[25];
  v29 = v22[20];
  v49 = v22[21];
  OUTLINED_FUNCTION_63_1();
  sub_1C6FB5BA4(v27, v28, v30);
  sub_1C6FB5E28(v29, (v22 + 7));
  sub_1C740A3EC();

  OUTLINED_FUNCTION_62_4();
  sub_1C6FB5B50(v27, v31);
  (*(v26 + 8))(v25, v43);
  (*(v24 + 8))(v45, v44);
  OUTLINED_FUNCTION_1_11();
  sub_1C6FB5B50(v46, v32);
  __swift_destroy_boxed_opaque_existential_1((v22 + 2));
  OUTLINED_FUNCTION_70(v29, v29[3]);
  sub_1C754F1AC();
  (*(v23 + 8))(v47, v48);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v33 + 8))(v49);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_128_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, v43, v44, v45, v46, v47, v48, v49, v28, v50, v51, a20, a21, a22);
}

uint64_t sub_1C6FAF02C()
{
  v1 = v0[33];
  v3 = v0[30];
  v2 = v0[31];
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[26];
  v7 = v0[27];
  v8 = v0[20];

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  OUTLINED_FUNCTION_1_11();
  sub_1C6FB5B50(v1, v9);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_1C754F1AC();
  v10 = v0[21];
  (*(v0[37] + 8))(v0[38], v0[36]);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v11 + 8))(v10);

  OUTLINED_FUNCTION_43();

  return v12();
}

uint64_t sub_1C6FAF1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = sub_1C754E72C();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C6FAF2AC, 0, 0);
}

uint64_t sub_1C6FAF2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_126_0();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  if (qword_1EDD079A0 != -1)
  {
    OUTLINED_FUNCTION_28();
  }

  v27 = *(v24 + 96);
  v28 = *(v24 + 72);
  v29 = *(v24 + 80);
  v30 = *(v24 + 32);
  v31 = sub_1C754FF1C();
  __swift_project_value_buffer(v31, qword_1EDD28990);
  v32 = *(v29 + 16);
  v32(v27, v30, v28);
  sub_1C75504FC();
  v33 = sub_1C754FEEC();
  v34 = sub_1C75511BC();

  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v24 + 96);
  if (v35)
  {
    v37 = *(v24 + 80);
    v65 = *(v24 + 88);
    v66 = v32;
    v38 = *(v24 + 72);
    v39 = swift_slowAlloc();
    a13 = swift_slowAlloc();
    *v39 = 136643075;
    v40 = sub_1C75504BC();
    v42 = sub_1C6F765A4(v40, v41, &a13);

    *(v39 + 4) = v42;
    *(v39 + 12) = 2080;
    v66(v65, v36, v38);
    v43 = sub_1C75506EC();
    v45 = v44;
    (*(v37 + 8))(v36, v38);
    v46 = sub_1C6F765A4(v43, v45, &a13);

    *(v39 + 14) = v46;
    _os_log_impl(&dword_1C6F5C000, v33, v34, "Generating freeform story streaming with prompt bindings: %{sensitive}s and sampling parameters: %s", v39, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
    v47 = *(v24 + 72);
    v48 = *(v24 + 80);

    (*(v48 + 8))(v36, v47);
  }

  v50 = *(v24 + 56);
  v49 = *(v24 + 64);
  v51 = *(v24 + 48);
  v52 = *(v24 + 24);
  v53 = *(v24 + 32);
  __swift_project_boxed_opaque_existential_1(*(v24 + 40), *(*(v24 + 40) + 24));
  *(v24 + 128) = 3;
  v54 = swift_task_alloc();
  *(v24 + 104) = v54;
  v54[2] = v51;
  v54[3] = v52;
  v54[4] = v50;
  v54[5] = v53;
  v54[6] = v49;
  v55 = swift_task_alloc();
  *(v24 + 112) = v55;
  type metadata accessor for FreeformStoryCompletionGenerator.FreeformStoryCompletionGenerable.Streaming(0);
  *v55 = v24;
  v55[1] = sub_1C6FAF5B8;
  OUTLINED_FUNCTION_129();

  return sub_1C70597B4(v56, v57, v58, v59, v60, v61, v62);
}

uint64_t sub_1C6FAF5B8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_25();

    return v10();
  }
}

uint64_t sub_1C6FAF6EC()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C6FAF75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF8);
  v7[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C6FAF804, 0, 0);
}

uint64_t sub_1C6FAF804()
{
  OUTLINED_FUNCTION_49_0();
  v2 = v0[8];
  v1 = v0[9];
  v3 = *(type metadata accessor for LLMConfiguration(0) + 44);
  v4 = sub_1C754E15C();
  OUTLINED_FUNCTION_12();
  (*(v5 + 16))(v1, v2 + v3, v4);
  OUTLINED_FUNCTION_52_5();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_45_3(v10);
  *v11 = v12;
  v11[1] = sub_1C6FAF8F8;
  v13 = v0[9];
  v15 = v0[6];
  v14 = v0[7];
  v16 = v0[4];
  v17 = v0[5];
  v18 = v0[2];
  v19 = v0[3];

  return sub_1C6FABB3C(v18, v16, v13, v19, v17, v14, v15);
}

uint64_t sub_1C6FAF8F8()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v3 + 88) = v0;

  sub_1C6FB5FC8(v6, &qword_1EC214DF8);
  if (v0)
  {
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_43();

    return v12();
  }
}

uint64_t sub_1C6FAFA50()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C6FAFAAC(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2 != 20)
  {
    v3 = *(v1 + 24);
    if (v3)
    {
      v4 = *(v1 + 56);
      if (v4 != 254)
      {
        v5 = result;
        v7 = *(v1 + 32);
        v8 = *(v1 + 48);
        v9 = v4;
        v10[0] = *(v1 + 64);
        *(v10 + 9) = *(v1 + 73);
        sub_1C75504FC();
        if (sub_1C71656D8())
        {
          v6 = (v5 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
          os_unfair_lock_lock((v5 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock));
          sub_1C6FAFB8C(&v6[2], v2, v3, &v7);
          os_unfair_lock_unlock(v6);
        }
      }
    }
  }

  return result;
}

void sub_1C6FAFB8C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_1C75504FC();
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a1 + 64);
  v9 = sub_1C6FC296C();
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_9;
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
      goto LABEL_5;
    }

LABEL_9:
    sub_1C7551E4C();
    __break(1u);
    return;
  }

LABEL_5:
  *(a1 + 64) = v8;
  if ((v12 & 1) == 0)
  {
    sub_1C6FCABDC(v11, a2, MEMORY[0x1E69E7CC0], v8);
  }

  v15 = *(v8 + 56) + 8 * v11;
  sub_1C6FB074C(sub_1C6FB19EC);
  v16 = *(*v15 + 16);
  sub_1C6FB1000();
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

uint64_t sub_1C6FAFD0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7079546C65646F6DLL && a2 == 0xE900000000000065;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x694274706D6F7270 && a2 == 0xEE0073676E69646ELL;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001C7597350 == a2;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001C7597370 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6D6F72506C6C7566 && a2 == 0xEA00000000007470)
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

uint64_t sub_1C6FAFEDC(unsigned __int8 a1)
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](a1);
  return sub_1C7551FAC();
}

unint64_t sub_1C6FAFF24(char a1)
{
  result = 0x7079546C65646F6DLL;
  switch(a1)
  {
    case 1:
      result = 0x694274706D6F7270;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x6D6F72506C6C7566;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C6FAFFF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6FAFD0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6FB0038@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C6FAFED4();
  *a1 = result;
  return result;
}

uint64_t sub_1C6FB0060(uint64_t a1)
{
  v2 = sub_1C6FB5C04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6FB009C(uint64_t a1)
{
  v2 = sub_1C6FB5C04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6FB00D8()
{

  return v0;
}

uint64_t sub_1C6FB0108()
{
  sub_1C6FB00D8();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6FB013C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C40);
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6FB5C04();
  sub_1C755200C();
  sub_1C6FB5C58();
  OUTLINED_FUNCTION_97();
  sub_1C7551CBC();
  if (v2)
  {
    v6 = OUTLINED_FUNCTION_90_4();
    return v7(v6);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C50);
    sub_1C6FB5CAC();
    OUTLINED_FUNCTION_97();
    sub_1C7551CBC();
    sub_1C6FB5D28();
    OUTLINED_FUNCTION_97();
    sub_1C7551CBC();
    v9 = *(v3 + 96);
    sub_1C75504FC();
    OUTLINED_FUNCTION_97();
    sub_1C7551C7C();
    if (!v9)
    {

      sub_1C75504FC();
      OUTLINED_FUNCTION_97();
      sub_1C7551C7C();
    }

    v10 = OUTLINED_FUNCTION_90_4();
    v11(v10);
  }
}

double sub_1C6FB03C4()
{
  *(v0 + 16) = 20;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 254;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  return result;
}

double sub_1C6FB043C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C6FA7B9C(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_1C6FB04A4@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1C754FDEC();
  __swift_project_value_buffer(v5, a2);
  OUTLINED_FUNCTION_89_1();
  v7 = *(v6 + 16);

  return v7(a3);
}

double sub_1C6FB0538@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6FA9710(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1C6FB0580(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1C75516BC();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t sub_1C6FB05A4(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1C6FB05C8(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void sub_1C6FB0600()
{
  v2 = OUTLINED_FUNCTION_86_1();
  *v1 = v0;
  if (!v2)
  {
    OUTLINED_FUNCTION_7_2();
    sub_1C6FB2908();
    *v1 = v3;
  }
}

uint64_t sub_1C6FB06B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v9;
  if (!result)
  {
    result = a4(result, *(v9 + 16) + 1, 1, v9, a1, a2, a3);
    *v4 = result;
  }

  return result;
}

uint64_t sub_1C6FB074C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

void sub_1C6FB07A8()
{
  v2 = OUTLINED_FUNCTION_86_1();
  *v1 = v0;
  if (!v2)
  {
    OUTLINED_FUNCTION_7_2();
    sub_1C6FB437C();
    *v1 = v3;
  }
}

void sub_1C6FB089C()
{
  v2 = OUTLINED_FUNCTION_86_1();
  *v1 = v0;
  if (!v2)
  {
    OUTLINED_FUNCTION_7_2();
    sub_1C6FB1EE4();
    *v1 = v3;
  }
}

void sub_1C6FB0900()
{
  v2 = OUTLINED_FUNCTION_86_1();
  *v1 = v0;
  if (!v2)
  {
    OUTLINED_FUNCTION_7_2();
    sub_1C6FB31C8();
    *v1 = v3;
  }
}

void sub_1C6FB097C()
{
  v2 = OUTLINED_FUNCTION_86_1();
  *v1 = v0;
  if (!v2)
  {
    OUTLINED_FUNCTION_7_2();
    sub_1C6FB50B8();
    *v1 = v3;
  }
}

void sub_1C6FB09E0()
{
  v2 = OUTLINED_FUNCTION_86_1();
  *v1 = v0;
  if (!v2)
  {
    OUTLINED_FUNCTION_7_2();
    sub_1C6FB4EEC();
    *v1 = v3;
  }
}

void sub_1C6FB0A44()
{
  v2 = OUTLINED_FUNCTION_86_1();
  *v1 = v0;
  if (!v2)
  {
    OUTLINED_FUNCTION_7_2();
    sub_1C6FB437C();
    *v1 = v3;
  }
}

void sub_1C6FB0AFC()
{
  v2 = OUTLINED_FUNCTION_86_1();
  *v1 = v0;
  if (!v2)
  {
    OUTLINED_FUNCTION_7_2();
    sub_1C6FB4A70();
    *v1 = v3;
  }
}

void sub_1C6FB0C38()
{
  v2 = OUTLINED_FUNCTION_86_1();
  *v1 = v0;
  if (!v2)
  {
    OUTLINED_FUNCTION_7_2();
    sub_1C6FB50B8();
    *v1 = v3;
  }
}

void sub_1C6FB0CF0()
{
  v2 = OUTLINED_FUNCTION_86_1();
  *v1 = v0;
  if (!v2)
  {
    OUTLINED_FUNCTION_7_2();
    sub_1C6FB437C();
    *v1 = v3;
  }
}

void sub_1C6FB0D6C()
{
  v2 = OUTLINED_FUNCTION_86_1();
  *v1 = v0;
  if (!v2)
  {
    OUTLINED_FUNCTION_7_2();
    sub_1C6FB3DD8();
    *v1 = v3;
  }
}

void sub_1C6FB0EFC()
{
  OUTLINED_FUNCTION_9_4();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_17_5();
    sub_1C6FB2908();
    *v0 = v4;
  }
}

void sub_1C6FB0FA0()
{
  OUTLINED_FUNCTION_117_1();
  if (!(v4 ^ v5 | v3))
  {
    *v0 = v1(v2 > 1);
  }
}

void sub_1C6FB1000()
{
  OUTLINED_FUNCTION_117_1();
  if (!(v4 ^ v5 | v3))
  {
    *v0 = v1(v2 > 1);
  }
}

void sub_1C6FB103C()
{
  OUTLINED_FUNCTION_9_4();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_60_0();
    sub_1C6FB437C();
    *v0 = v4;
  }
}

void sub_1C6FB1128()
{
  OUTLINED_FUNCTION_9_4();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_60_0();
    sub_1C6FB1EE4();
    *v0 = v4;
  }
}

void sub_1C6FB1184()
{
  OUTLINED_FUNCTION_9_4();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_34_2();
    sub_1C6FB31C8();
    *v0 = v4;
  }
}

void sub_1C6FB11EC()
{
  OUTLINED_FUNCTION_9_4();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_33_3();
    sub_1C6FB50B8();
    *v0 = v4;
  }
}

void sub_1C6FB123C()
{
  OUTLINED_FUNCTION_9_4();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_60_0();
    sub_1C6FB4EEC();
    *v0 = v4;
  }
}

void sub_1C6FB1298()
{
  OUTLINED_FUNCTION_9_4();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_60_0();
    sub_1C6FB437C();
    *v0 = v4;
  }
}

void sub_1C6FB1348()
{
  OUTLINED_FUNCTION_9_4();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_60_0();
    sub_1C6FB4A70();
    *v0 = v4;
  }
}

void sub_1C6FB147C()
{
  OUTLINED_FUNCTION_9_4();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_60_0();
    sub_1C6FB50B8();
    *v0 = v4;
  }
}

void sub_1C6FB152C()
{
  OUTLINED_FUNCTION_9_4();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_32_2();
    sub_1C6FB437C();
    *v0 = v4;
  }
}

void sub_1C6FB1594()
{
  OUTLINED_FUNCTION_9_4();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_60_0();
    sub_1C6FB3DD8();
    *v0 = v4;
  }
}

uint64_t sub_1C6FB1608(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1C7550B9C();
  }

  return result;
}

void sub_1C6FB1730()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E78);
      v6 = OUTLINED_FUNCTION_31_4();
      OUTLINED_FUNCTION_0_0(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_10_0();
        sub_1C7423D14(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E80);
    OUTLINED_FUNCTION_19_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C6FB1844()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE0);
      v6 = OUTLINED_FUNCTION_31_4();
      OUTLINED_FUNCTION_0_0(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_10_0();
        sub_1C7423D14(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE8);
    OUTLINED_FUNCTION_19_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C6FB1900()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E88);
      v6 = OUTLINED_FUNCTION_31_4();
      OUTLINED_FUNCTION_0_0(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_10_0();
        sub_1C7423D14(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E90);
    OUTLINED_FUNCTION_19_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1C6FB19EC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C60);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 72);
      if (v5)
      {
LABEL_13:
        sub_1C7423D04((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C68);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C6FB1B5C()
{
  OUTLINED_FUNCTION_39_3();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2150D0);
      v7 = OUTLINED_FUNCTION_73_0();
      OUTLINED_FUNCTION_13_0(v7);
      OUTLINED_FUNCTION_16_3(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_10_0();
        sub_1C741E320(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E7CC0];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 4 * v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v5)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C6FB1C14()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215100);
      v6 = OUTLINED_FUNCTION_31_4();
      OUTLINED_FUNCTION_0_0(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_10_0();
        sub_1C7423D14(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215108);
    OUTLINED_FUNCTION_19_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C6FB1E00()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214D48);
      v6 = OUTLINED_FUNCTION_50_1();
      OUTLINED_FUNCTION_2_2(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_10_0();
        sub_1C7423CF8(v7);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
    OUTLINED_FUNCTION_19_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C6FB1EE4()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_8_4();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_21_1();
    if (v3)
    {
      OUTLINED_FUNCTION_79_2(v7, v8, v9, v10, v11);
      v12 = OUTLINED_FUNCTION_67_0();
      OUTLINED_FUNCTION_15_9(v12);
      if (v2)
      {
LABEL_8:
        v13 = OUTLINED_FUNCTION_22_0();
        v1(v13);
        *(v0 + 16) = 0;
LABEL_11:

        OUTLINED_FUNCTION_135_0();
        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_26_1();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v5)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C6FB1F84()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214D98);
      v6 = OUTLINED_FUNCTION_44_2();
      OUTLINED_FUNCTION_0_0(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_10_0();
        sub_1C741E4AC(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_36_1();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C6FB2038()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DA0);
      v6 = OUTLINED_FUNCTION_44_2();
      OUTLINED_FUNCTION_0_0(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_10_0();
        sub_1C7423D18(v7);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DA8);
    OUTLINED_FUNCTION_19_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}