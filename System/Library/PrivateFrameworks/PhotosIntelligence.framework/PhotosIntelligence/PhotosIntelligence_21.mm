uint64_t StoryMusicCuration.encode(to:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217678);
  OUTLINED_FUNCTION_3_0();
  v30 = v4;
  v31 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_22_22(v7, v26);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217680);
  OUTLINED_FUNCTION_3_0();
  v32 = v9;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217688);
  OUTLINED_FUNCTION_3_0();
  v15 = v14;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C70ED048();
  sub_1C755200C();
  LOBYTE(v35) = 0;
  sub_1C70ED09C();
  sub_1C7551C6C();
  LOBYTE(v35) = 0;
  v19 = v33;
  sub_1C7551CCC();
  if (v19)
  {
    (*(v32 + 8))(v12, v8);
    return (*(v15 + 8))(v18, v13);
  }

  else
  {
    v28 = v15;
    v29 = v18;
    v21 = v32;
    v33 = v13;
    v35 = v2[2];
    OUTLINED_FUNCTION_23_16();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155F0);
    sub_1C70ED2CC(&qword_1EDD06B50, &qword_1EDD09B18);
    OUTLINED_FUNCTION_20_5();
    OUTLINED_FUNCTION_3_40();
    v35 = v2[3];
    v34 = 2;
    OUTLINED_FUNCTION_20_5();
    OUTLINED_FUNCTION_3_40();
    v26 = v12;
    v27 = v8;
    LOBYTE(v35) = 1;
    sub_1C70ED0F0();
    sub_1C7551C6C();
    v35 = v2[4];
    v34 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216820);
    sub_1C70ED144(&qword_1EDD06B40, sub_1C70ED368);
    OUTLINED_FUNCTION_20_5();
    OUTLINED_FUNCTION_3_40();
    v35 = v2[5];
    OUTLINED_FUNCTION_23_16();
    OUTLINED_FUNCTION_20_5();
    OUTLINED_FUNCTION_3_40();
    type metadata accessor for StoryMusicCuration();
    LOBYTE(v35) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217638);
    sub_1C70ED3BC();
    v22 = v33;
    v23 = v29;
    sub_1C7551D2C();
    v24 = OUTLINED_FUNCTION_216();
    v25(v24);
    (*(v21 + 8))(v26, v27);
    return (*(v28 + 8))(v23, v22);
  }
}

uint64_t sub_1C70EC524(uint64_t result)
{
  v1 = *(result + 16);
  for (i = (result + 32); v1; --v1)
  {
    memcpy(__dst, i, sizeof(__dst));
    v6 = 2128906;
    v7 = 0xE300000000000000;
    memcpy(v5, i, sizeof(v5));
    sub_1C7080654(__dst, &v4);
    v3 = StoryMusicCurationSong.description.getter();
    MEMORY[0x1CCA5CD70](v3);

    MEMORY[0x1CCA5CD70](v6, v7);

    result = sub_1C70806B0(__dst);
    i += 192;
  }

  return result;
}

Swift::String __swiftcall StoryMusicCuration.keySongInfo()()
{
  v1 = v0;
  v2 = StoryMusicCuration.appleMusicStoryRecipeKeySong()();
  OUTLINED_FUNCTION_90_3();
  sub_1C755180C();

  v3 = [v2 songID];
  if (v3)
  {
    v4 = v3;
    sub_1C755068C();
  }

  OUTLINED_FUNCTION_15_25();

  OUTLINED_FUNCTION_10_31();
  v5 = [v2 title];
  if (v5)
  {
    v6 = v5;
    sub_1C755068C();
  }

  OUTLINED_FUNCTION_15_25();

  OUTLINED_FUNCTION_10_31();
  v7 = [v2 subtitle];
  if (v7)
  {
    v8 = v7;
    sub_1C755068C();
  }

  OUTLINED_FUNCTION_15_25();

  MEMORY[0x1CCA5CD70](0x203D204D4120, 0xE600000000000000);
  swift_unknownObjectRelease();

  v9 = StoryMusicCuration.flexMusicStoryRecipeKeySong()();
  OUTLINED_FUNCTION_90_3();
  sub_1C755180C();

  v10 = [v9 songID];
  if (v10)
  {
    v11 = v10;
    sub_1C755068C();
  }

  OUTLINED_FUNCTION_14_23();

  OUTLINED_FUNCTION_10_31();
  v12 = [v9 title];
  if (v12)
  {
    v13 = v12;
    sub_1C755068C();
  }

  OUTLINED_FUNCTION_14_23();

  OUTLINED_FUNCTION_10_31();
  v14 = [v9 subtitle];
  if (v14)
  {
    v15 = v14;
    sub_1C755068C();
  }

  OUTLINED_FUNCTION_14_23();

  MEMORY[0x1CCA5CD70](0x2078656C46207C20, 0xEA0000000000203DLL);
  swift_unknownObjectRelease();

  v16 = *(v1 + 24);
  if (sub_1C6FB6304() >= 1)
  {
    OUTLINED_FUNCTION_90_3();
    sub_1C755180C();

    v17 = type metadata accessor for MusicKeywordCompletion();
    v18 = MEMORY[0x1CCA5D090](v16, v17);
    MEMORY[0x1CCA5CD70](v18);

    MEMORY[0x1CCA5CD70](0xD000000000000013, 0x80000001C759E510);
  }

  v19 = 0x73676E6F5379654BLL;
  v20 = 0xE90000000000003ALL;
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

unint64_t StoryMusicCuration.jsonDescription.getter()
{
  v0 = sub_1C75506DC();
  MEMORY[0x1EEE9AC00](v0 - 8);
  OUTLINED_FUNCTION_14_0();
  v1 = sub_1C754D76C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_14_0();
  sub_1C754D7AC();
  swift_allocObject();
  sub_1C754D79C();
  sub_1C754D74C();
  sub_1C754D77C();
  type metadata accessor for StoryMusicCuration();
  sub_1C70ED470(&unk_1EDD0A748, type metadata accessor for StoryMusicCuration);
  sub_1C754D78C();
  sub_1C75506CC();
  OUTLINED_FUNCTION_216();
  v2 = sub_1C75506AC();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_216();
  sub_1C6FC1640(v5, v6);

  if (!v4)
  {
    return 0xD000000000000026;
  }

  return v2;
}

uint64_t StoryMusicCuration.appleMusicCurationAsDictionary()()
{
  sub_1C70EB0F0();
  swift_allocError();
  *v0 = 7;
  return swift_willThrow();
}

uint64_t StoryMusicCuration.dictionaryForSavingToPHMemory()()
{
  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C75604F0;
  *(inited + 32) = sub_1C755068C();
  *(inited + 40) = v5;
  v6 = *(*(v0 + 32) + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v7 = v13;
    do
    {
      OUTLINED_FUNCTION_16_20();
      if (v1 >= v2 >> 1)
      {
        sub_1C6F7ED9C();
        v7 = v13;
      }

      OUTLINED_FUNCTION_21_20();
      --v6;
    }

    while (v6);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  *(inited + 72) = v8;
  *(inited + 48) = v7;
  *(inited + 80) = sub_1C755068C();
  *(inited + 88) = v9;
  v10 = *(*(v3 + 40) + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v11 = v14;
    do
    {
      OUTLINED_FUNCTION_16_20();
      if (v1 >= v2 >> 1)
      {
        sub_1C6F7ED9C();
        v11 = v14;
      }

      OUTLINED_FUNCTION_21_20();
      --v10;
    }

    while (v10);
  }

  *(inited + 120) = v8;
  *(inited + 96) = v11;
  return sub_1C75504DC();
}

id sub_1C70ECD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v14 = sub_1C755065C();

  v15 = sub_1C755065C();

  v16 = [a10 createAssetWithCategory:a1 subcategory:a2 catalog:a3 songID:a4 title:v14 subtitle:v15 colorGradeCategory:a9];

  return v16;
}

uint64_t type metadata accessor for StoryMusicCuration()
{
  result = qword_1EDD0A738;
  if (!qword_1EDD0A738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C70ECE9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217638);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C70ECF0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217638);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C70ECF74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoryMusicCurationDiagnostics();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C70ECFD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217638);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C70ED048()
{
  result = qword_1EDD0A788;
  if (!qword_1EDD0A788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A788);
  }

  return result;
}

unint64_t sub_1C70ED09C()
{
  result = qword_1EDD0A7B8;
  if (!qword_1EDD0A7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A7B8);
  }

  return result;
}

unint64_t sub_1C70ED0F0()
{
  result = qword_1EDD0A7A0;
  if (!qword_1EDD0A7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A7A0);
  }

  return result;
}

uint64_t sub_1C70ED144(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC216820);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C70ED1BC()
{
  result = qword_1EC217670;
  if (!qword_1EC217670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217670);
  }

  return result;
}

uint64_t sub_1C70ED210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoryMusicCuration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C70ED274(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C70ED2CC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2155F0);
    sub_1C70ED470(a2, type metadata accessor for MusicKeywordCompletion);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C70ED368()
{
  result = qword_1EDD09938;
  if (!qword_1EDD09938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09938);
  }

  return result;
}

unint64_t sub_1C70ED3BC()
{
  result = qword_1EDD07ED0;
  if (!qword_1EDD07ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC217638);
    sub_1C70ED470(&qword_1EDD07EE0, type metadata accessor for StoryMusicCurationDiagnostics);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07ED0);
  }

  return result;
}

uint64_t sub_1C70ED470(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C70ED4E0()
{
  sub_1C70ED644(319, &qword_1EDD0CFE8, type metadata accessor for MusicKeywordCompletion, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C70ED5F4();
    if (v1 <= 0x3F)
    {
      sub_1C70ED644(319, &qword_1EDD07ED8, type metadata accessor for StoryMusicCurationDiagnostics, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C70ED5F4()
{
  if (!qword_1EDD06B48)
  {
    v0 = sub_1C7550C3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD06B48);
    }
  }
}

void sub_1C70ED644(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

_BYTE *sub_1C70ED6B8(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for StoryMusicCuration.CurationResultKey(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C70ED874()
{
  result = qword_1EC217690;
  if (!qword_1EC217690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217690);
  }

  return result;
}

unint64_t sub_1C70ED8CC()
{
  result = qword_1EC217698;
  if (!qword_1EC217698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217698);
  }

  return result;
}

unint64_t sub_1C70ED924()
{
  result = qword_1EC2176A0;
  if (!qword_1EC2176A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2176A0);
  }

  return result;
}

unint64_t sub_1C70ED97C()
{
  result = qword_1EDD0A790;
  if (!qword_1EDD0A790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A790);
  }

  return result;
}

unint64_t sub_1C70ED9D4()
{
  result = qword_1EDD0A798;
  if (!qword_1EDD0A798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A798);
  }

  return result;
}

unint64_t sub_1C70EDA2C()
{
  result = qword_1EDD0A7A8;
  if (!qword_1EDD0A7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A7A8);
  }

  return result;
}

unint64_t sub_1C70EDA84()
{
  result = qword_1EDD0A7B0;
  if (!qword_1EDD0A7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A7B0);
  }

  return result;
}

unint64_t sub_1C70EDADC()
{
  result = qword_1EDD0A778;
  if (!qword_1EDD0A778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A778);
  }

  return result;
}

unint64_t sub_1C70EDB34()
{
  result = qword_1EDD0A780;
  if (!qword_1EDD0A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A780);
  }

  return result;
}

void OUTLINED_FUNCTION_21_20()
{
  *(v0 + 16) = v2;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v3;
  *(v5 + 40) = v1;
}

uint64_t sub_1C70EDBB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x747369747261 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65726E6567 && a2 == 0xE500000000000000;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1685024621 && a2 == 0xE400000000000000;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7364726F7779656BLL && a2 == 0xE800000000000000)
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

uint64_t sub_1C70EDD4C(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x747369747261;
      break;
    case 2:
      result = 0x65726E6567;
      break;
    case 3:
      result = 1685024621;
      break;
    case 4:
      result = 0x7364726F7779656BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C70EDDD0(uint64_t a1)
{
  v2 = sub_1C70EE674();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70EDE0C(uint64_t a1)
{
  v2 = sub_1C70EE674();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C70EDE50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C70EDBB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C70EDE78(uint64_t a1)
{
  v2 = sub_1C70EE524();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70EDEB4(uint64_t a1)
{
  v2 = sub_1C70EE524();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C70EDEF0(uint64_t a1)
{
  v2 = sub_1C70EE620();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70EDF2C(uint64_t a1)
{
  v2 = sub_1C70EE620();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C70EDF68(uint64_t a1)
{
  v2 = sub_1C70EE578();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70EDFA4(uint64_t a1)
{
  v2 = sub_1C70EE578();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C70EDFE0(uint64_t a1)
{
  v2 = sub_1C70EE5CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70EE01C(uint64_t a1)
{
  v2 = sub_1C70EE5CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C70EE058(uint64_t a1)
{
  v2 = sub_1C70EE6C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70EE094(uint64_t a1)
{
  v2 = sub_1C70EE6C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppleMusicSearchQueryType.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2176A8);
  OUTLINED_FUNCTION_3_0();
  v49 = v4;
  v50 = v3;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_36();
  v48 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2176B0);
  OUTLINED_FUNCTION_3_0();
  v46 = v8;
  v47 = v7;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_36();
  v45 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2176B8);
  OUTLINED_FUNCTION_3_0();
  v43 = v12;
  v44 = v11;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_36();
  v42 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2176C0);
  OUTLINED_FUNCTION_3_0();
  v40 = v16;
  v41 = v15;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_36();
  v39 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2176C8);
  OUTLINED_FUNCTION_3_0();
  v37 = v20;
  v38 = v19;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v36 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2176D0);
  OUTLINED_FUNCTION_3_0();
  v26 = v25;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v36 - v28;
  v30 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C70EE524();
  sub_1C755200C();
  v31 = (v26 + 8);
  switch(v30)
  {
    case 1:
      v52 = 1;
      sub_1C70EE674();
      v32 = v39;
      OUTLINED_FUNCTION_3_41();
      v34 = v40;
      v33 = v41;
      goto LABEL_7;
    case 2:
      v53 = 2;
      sub_1C70EE620();
      v32 = v42;
      OUTLINED_FUNCTION_3_41();
      v34 = v43;
      v33 = v44;
      goto LABEL_7;
    case 3:
      v54 = 3;
      sub_1C70EE5CC();
      v32 = v45;
      OUTLINED_FUNCTION_3_41();
      v34 = v46;
      v33 = v47;
      goto LABEL_7;
    case 4:
      v55 = 4;
      sub_1C70EE578();
      v32 = v48;
      OUTLINED_FUNCTION_3_41();
      v34 = v49;
      v33 = v50;
LABEL_7:
      (*(v34 + 8))(v32, v33);
      break;
    default:
      v51 = 0;
      sub_1C70EE6C8();
      sub_1C7551C6C();
      (*(v37 + 8))(v23, v38);
      break;
  }

  return (*v31)(v29, v24);
}

unint64_t sub_1C70EE524()
{
  result = qword_1EDD094E8;
  if (!qword_1EDD094E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD094E8);
  }

  return result;
}

unint64_t sub_1C70EE578()
{
  result = qword_1EC2176D8;
  if (!qword_1EC2176D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2176D8);
  }

  return result;
}

unint64_t sub_1C70EE5CC()
{
  result = qword_1EC2176E0;
  if (!qword_1EC2176E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2176E0);
  }

  return result;
}

unint64_t sub_1C70EE620()
{
  result = qword_1EC2176E8;
  if (!qword_1EC2176E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2176E8);
  }

  return result;
}

unint64_t sub_1C70EE674()
{
  result = qword_1EC2176F0;
  if (!qword_1EC2176F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2176F0);
  }

  return result;
}

unint64_t sub_1C70EE6C8()
{
  result = qword_1EDD094B0;
  if (!qword_1EDD094B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD094B0);
  }

  return result;
}

uint64_t AppleMusicSearchQueryType.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t AppleMusicSearchQueryType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v68 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2176F8);
  OUTLINED_FUNCTION_3_0();
  v65 = v3;
  v66 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_36();
  v71 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217700);
  OUTLINED_FUNCTION_3_0();
  v63 = v7;
  v64 = v8;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_36();
  v70 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217708);
  OUTLINED_FUNCTION_3_0();
  v61 = v12;
  v62 = v11;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_36();
  v67 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217710);
  OUTLINED_FUNCTION_3_0();
  v59 = v16;
  v60 = v15;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v53 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217718);
  OUTLINED_FUNCTION_3_0();
  v58 = v21;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v53 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217720);
  OUTLINED_FUNCTION_3_0();
  v69 = v26;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v53 - v28;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C70EE524();
  v30 = v72;
  sub_1C7551FFC();
  if (v30)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v56 = v20;
  v57 = v24;
  v72 = v19;
  v31 = v70;
  v32 = v71;
  v33 = v29;
  v34 = sub_1C7551C5C();
  result = sub_1C6FD80E0(v34, 0);
  if (v37 == v38 >> 1)
  {
    v39 = v69;
LABEL_9:
    v48 = sub_1C75518EC();
    swift_allocError();
    v50 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490);
    *v50 = &type metadata for AppleMusicSearchQueryType;
    sub_1C7551B5C();
    sub_1C75518DC();
    (*(*(v48 - 8) + 104))(v50, *MEMORY[0x1E69E6AF8], v48);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v39 + 8))(v33, v25);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  if (v37 >= (v38 >> 1))
  {
    __break(1u);
  }

  else
  {
    v54 = *(v36 + v37);
    v40 = sub_1C6FD80C8(v37 + 1);
    v42 = v41;
    v44 = v43;
    swift_unknownObjectRelease();
    v55 = v40;
    if (v42 != v44 >> 1)
    {
      v39 = v69;
      v33 = v29;
      goto LABEL_9;
    }

    v45 = v68;
    v46 = v69;
    switch(v54)
    {
      case 1:
        v74 = 1;
        sub_1C70EE674();
        v31 = v72;
        OUTLINED_FUNCTION_1_45();
        swift_unknownObjectRelease();
        v52 = v59;
        v51 = v60;
        goto LABEL_15;
      case 2:
        v75 = 2;
        sub_1C70EE620();
        v31 = v67;
        OUTLINED_FUNCTION_1_45();
        swift_unknownObjectRelease();
        v52 = v61;
        v51 = v62;
        goto LABEL_15;
      case 3:
        v76 = 3;
        sub_1C70EE5CC();
        OUTLINED_FUNCTION_1_45();
        swift_unknownObjectRelease();
        v51 = v63;
        v52 = v64;
LABEL_15:
        (*(v52 + 8))(v31, v51);
        break;
      case 4:
        v77 = 4;
        sub_1C70EE578();
        v40 = v29;
        sub_1C7551B4C();
        swift_unknownObjectRelease();
        (*(v66 + 8))(v32, v65);
        break;
      default:
        v73 = 0;
        sub_1C70EE6C8();
        v47 = v57;
        OUTLINED_FUNCTION_1_45();
        swift_unknownObjectRelease();
        (*(v58 + 8))(v47, v56);
        break;
    }

    (*(v46 + 8))(v40, v25);
    *v45 = v54;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return result;
}

uint64_t AppleMusicSearchQueryInfo.prompt.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

PhotosIntelligence::AppleMusicSearchQueryInfo __swiftcall AppleMusicSearchQueryInfo.init(prompt:types:)(Swift::String prompt, Swift::OpaquePointer types)
{
  *v2 = prompt;
  *(v2 + 16) = types;
  result.prompt = prompt;
  result.types = types;
  return result;
}

uint64_t AppleMusicSearchQueryInfo.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C755180C();

  MEMORY[0x1CCA5CD70](v1, v2);
  MEMORY[0x1CCA5CD70](0x547972657571202CLL, 0xED00003D73657079);
  v4 = MEMORY[0x1CCA5D090](v3, &type metadata for AppleMusicSearchQueryType);
  MEMORY[0x1CCA5CD70](v4);

  return 0x3D74706D6F7270;
}

unint64_t sub_1C70EEF64()
{
  result = qword_1EC217728;
  if (!qword_1EC217728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217728);
  }

  return result;
}

_BYTE *sub_1C70EEFD8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C70EF108()
{
  result = qword_1EC217730;
  if (!qword_1EC217730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217730);
  }

  return result;
}

unint64_t sub_1C70EF160()
{
  result = qword_1EDD094A0;
  if (!qword_1EDD094A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD094A0);
  }

  return result;
}

unint64_t sub_1C70EF1B8()
{
  result = qword_1EDD094A8;
  if (!qword_1EDD094A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD094A8);
  }

  return result;
}

unint64_t sub_1C70EF210()
{
  result = qword_1EDD09490;
  if (!qword_1EDD09490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09490);
  }

  return result;
}

unint64_t sub_1C70EF268()
{
  result = qword_1EDD09498;
  if (!qword_1EDD09498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09498);
  }

  return result;
}

unint64_t sub_1C70EF2C0()
{
  result = qword_1EDD094B8;
  if (!qword_1EDD094B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD094B8);
  }

  return result;
}

unint64_t sub_1C70EF318()
{
  result = qword_1EDD094C0;
  if (!qword_1EDD094C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD094C0);
  }

  return result;
}

unint64_t sub_1C70EF370()
{
  result = qword_1EDD094C8;
  if (!qword_1EDD094C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD094C8);
  }

  return result;
}

unint64_t sub_1C70EF3C8()
{
  result = qword_1EDD094D0;
  if (!qword_1EDD094D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD094D0);
  }

  return result;
}

unint64_t sub_1C70EF420()
{
  result = qword_1EDD09480;
  if (!qword_1EDD09480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09480);
  }

  return result;
}

unint64_t sub_1C70EF478()
{
  result = qword_1EDD09488;
  if (!qword_1EDD09488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09488);
  }

  return result;
}

unint64_t sub_1C70EF4D0()
{
  result = qword_1EDD094D8;
  if (!qword_1EDD094D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD094D8);
  }

  return result;
}

unint64_t sub_1C70EF528()
{
  result = qword_1EDD094E0;
  if (!qword_1EDD094E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD094E0);
  }

  return result;
}

uint64_t static LibraryUnderstandingAvailabilityMonitor.isAvailableForPersonalTraits(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 176);
  v5 = *(a1 + 177);
  result = sub_1C70F0700();
  if (!v2)
  {
    v12 = result;
    if ((v4 & 1) == 0)
    {
      OUTLINED_FUNCTION_13_27();
      sub_1C70F5E40(&v11, 2, v7);
    }

    if ((v5 & 1) == 0)
    {
      v8 = sub_1C70EFD9C();
      if ((v8 & 1) == 0)
      {
        OUTLINED_FUNCTION_13_27();
        sub_1C70F5E40(&v10, 3, v9);
      }
    }

    result = v12;
    if (!*(v12 + 16))
    {

      result = 0;
    }

    *a2 = result;
  }

  return result;
}

uint64_t sub_1C70EF648()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC217738);
  __swift_project_value_buffer(v0, qword_1EC217738);
  return sub_1C754FEFC();
}

uint64_t LibraryUnderstandingAvailabilityMonitor.Error.hashValue.getter()
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](0);
  return sub_1C7551FAC();
}

uint64_t LibraryUnderstandingAvailabilityMonitor.UnavailabilityReasons.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t static LibraryUnderstandingAvailabilityMonitor.Availability.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (!v3)
  {
    if (!v4)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  return sub_1C7043F5C(v3, v4);
}

uint64_t LibraryUnderstandingAvailabilityMonitor.Availability.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (!*v1)
  {
    return MEMORY[0x1CCA5E460](0);
  }

  MEMORY[0x1CCA5E460](1);

  return sub_1C7043F64(a1, v3);
}

uint64_t LibraryUnderstandingAvailabilityMonitor.Availability.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  if (v1)
  {
    MEMORY[0x1CCA5E460](1);
    sub_1C7043F64(v3, v1);
  }

  else
  {
    MEMORY[0x1CCA5E460](0);
  }

  return sub_1C7551FAC();
}

uint64_t sub_1C70EF930()
{
  v1 = *v0;
  sub_1C7551F3C();
  if (v1)
  {
    MEMORY[0x1CCA5E460](1);
    sub_1C7043F64(v3, v1);
  }

  else
  {
    MEMORY[0x1CCA5E460](0);
  }

  return sub_1C7551FAC();
}

uint64_t sub_1C70EF994@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2177A8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v20 = &v17 - v2;
  v19 = sub_1C754E13C();
  v3 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C754E15C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  sub_1C754E0AC();
  sub_1C754E04C();
  v13 = *(v7 + 8);
  v13(v9, v6);
  sub_1C754E03C();
  sub_1C754E14C();
  v13(v12, v6);
  v14 = v20;
  sub_1C754E12C();
  (*(v3 + 8))(v5, v19);
  v15 = sub_1C754E07C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) != 1)
  {
    return (*(*(v15 - 8) + 32))(v18, v14, v15);
  }

  sub_1C6FD7FC8(v14, &qword_1EC2177A8);
  sub_1C70F7588();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_1C70EFC64()
{
  v2 = sub_1C754E07C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C70EF994(v5);
  if (!v1)
  {
    v6 = sub_1C754E05C();
    v8 = v7;
    (*(v3 + 8))(v5, v2);
    v10[2] = v6;
    v10[3] = v8;
    v10[0] = 28261;
    v10[1] = 0xE200000000000000;
    sub_1C6FB5E8C();
    v0 = sub_1C75515AC();
  }

  return v0 & 1;
}

uint64_t sub_1C70EFD9C()
{
  v63 = sub_1C754E99C();
  v61 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v60 = &v59 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v62 = &v59 - v2;
  v69 = sub_1C754E9DC();
  v3 = *(v69 - 1);
  MEMORY[0x1EEE9AC00](v69);
  v65 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v59 - v6;
  v67 = sub_1C754E9CC();
  v64 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v59 - v10;
  v11 = sub_1C754EA2C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C754E9FC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C754EA7C();
  v70 = *(v19 - 8);
  v71 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v14, *MEMORY[0x1E69A12A0], v11, v20);
  v23 = v69;
  sub_1C754E9EC();
  sub_1C754EA5C();
  (*(v16 + 8))(v18, v15);
  sub_1C754EA0C();
  v24 = *(v3 + 88);
  if (v24(v7, v23) != *MEMORY[0x1E69A0F00])
  {
    v39 = *(v3 + 8);
    v39(v7, v23);
    v40 = v65;
    sub_1C754EA0C();
    if (v24(v40, v23) != *MEMORY[0x1E69A0EF8])
    {
      (*(v70 + 8))(v22, v71);
      v39(v40, v23);
      return 1;
    }

    (*(v3 + 96))(v40, v23);
    v42 = v61;
    v41 = v62;
    v43 = v63;
    (*(v61 + 32))(v62, v40, v63);
    if (qword_1EC213DD0 != -1)
    {
      swift_once();
    }

    v44 = sub_1C754FF1C();
    __swift_project_value_buffer(v44, qword_1EC217738);
    v45 = v60;
    (*(v42 + 16))(v60, v41, v43);
    v46 = sub_1C754FEEC();
    v47 = sub_1C75511BC();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v72 = v69;
      *v48 = 136315138;
      sub_1C754E98C();
      sub_1C754E97C();
      sub_1C70F7844(&qword_1EDD0CB30, MEMORY[0x1E69A0F90]);
      v49 = sub_1C7550F9C();
      v51 = v50;

      v68 = *(v42 + 8);
      v52 = v45;
      v53 = v63;
      (v68)(v52, v63);
      v54 = sub_1C6F765A4(v49, v51, &v72);

      *(v48 + 4) = v54;
      _os_log_impl(&dword_1C6F5C000, v46, v47, "Library Understanding is restricted with reasons: %s", v48, 0xCu);
      v55 = v69;
      __swift_destroy_boxed_opaque_existential_1(v69);
      MEMORY[0x1CCA5F8E0](v55, -1, -1);
      MEMORY[0x1CCA5F8E0](v48, -1, -1);

      (v68)(v62, v53);
    }

    else
    {

      v58 = *(v42 + 8);
      v58(v45, v43);
      v58(v41, v43);
    }

    goto LABEL_14;
  }

  (*(v3 + 96))(v7, v23);
  v25 = v64;
  v27 = v66;
  v26 = v67;
  (*(v64 + 32))(v66, v7, v67);
  if (qword_1EC213DD0 != -1)
  {
    swift_once();
  }

  v28 = sub_1C754FF1C();
  __swift_project_value_buffer(v28, qword_1EC217738);
  v29 = v68;
  (*(v25 + 16))(v68, v27, v26);
  v30 = sub_1C754FEEC();
  v31 = sub_1C75511BC();
  if (!os_log_type_enabled(v30, v31))
  {

    v56 = *(v25 + 8);
    v56(v29, v26);
    v56(v27, v26);
LABEL_14:
    (*(v70 + 8))(v22, v71);
    return 0;
  }

  v32 = swift_slowAlloc();
  v33 = swift_slowAlloc();
  v72 = v33;
  *v32 = 136315138;
  sub_1C754E9BC();
  sub_1C754E9AC();
  sub_1C70F7844(&qword_1EDD100A0, MEMORY[0x1E69A1168]);
  v34 = sub_1C7550F9C();
  v69 = v22;
  v36 = v35;

  v37 = *(v25 + 8);
  v37(v68, v26);
  v38 = sub_1C6F765A4(v34, v36, &v72);

  *(v32 + 4) = v38;
  _os_log_impl(&dword_1C6F5C000, v30, v31, "Library Understanding is unavailable with reasons: %s", v32, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v33);
  MEMORY[0x1CCA5F8E0](v33, -1, -1);
  MEMORY[0x1CCA5F8E0](v32, -1, -1);

  v37(v66, v67);
  (*(v70 + 8))(v69, v71);
  return 0;
}

uint64_t sub_1C70F0700()
{
  v3 = MEMORY[0x1E69E7CD0];
  result = sub_1C70EFC64();
  if (!v0)
  {
    if (result)
    {
      return MEMORY[0x1E69E7CD0];
    }

    else
    {
      sub_1C70F5E40(&v2, 0, sub_1C72F09FC);
      return v3;
    }
  }

  return result;
}

uint64_t static LibraryUnderstandingAvailabilityMonitor.isAvailableForOvernightTask()@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C70F0700();
  if (!v1)
  {
    v4 = result;
    v7 = result;
    result = sub_1C70EFD9C();
    if ((result & 1) == 0)
    {
      OUTLINED_FUNCTION_13_27();
      result = sub_1C70F5E40(&v6, 3, v5);
      v4 = v7;
    }

    if (!*(v4 + 16))
    {

      v4 = 0;
    }

    *a1 = v4;
  }

  return result;
}

void sub_1C70F0914()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v23 = v4;
  v5 = type metadata accessor for Hastings.Asset(0);
  v24 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_78();
  v8 = (v6 - v7);
  MEMORY[0x1EEE9AC00](v9);
  v20 = &v20 - v10;
  v21 = v0;
  OUTLINED_FUNCTION_95_6();
  sub_1C7551F3C();
  v11 = *v3;
  v12 = v3[1];
  v22 = v3;
  sub_1C75505AC();
  sub_1C7551FAC();
  OUTLINED_FUNCTION_9_2();
  v15 = ~v14;
  while (1)
  {
    v16 = v13 & v15;
    if (((1 << (v13 & v15)) & *(v1 + 56 + (((v13 & v15) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v19 = v21;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_37_17();
      sub_1C70F7684();
      v25 = *v19;
      sub_1C72ED1E0();
      *v19 = v25;
      sub_1C70F7738();
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_37_17();
    sub_1C70F7684();
    if (*v8 == v11 && v8[1] == v12)
    {
      break;
    }

    v18 = OUTLINED_FUNCTION_118_4();
    OUTLINED_FUNCTION_50_10();
    if (v18)
    {
      goto LABEL_11;
    }

    v13 = v16 + 1;
  }

  OUTLINED_FUNCTION_50_10();
LABEL_11:
  sub_1C70F76E0(v22, type metadata accessor for Hastings.Asset);
  sub_1C70F7684();
LABEL_12:
  OUTLINED_FUNCTION_25_0();
}

void sub_1C70F0B34()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v37 = v4;
  v5 = type metadata accessor for Hastings.Feature();
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_78();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v35[1] = v35 - v13;
  v36 = v1;
  OUTLINED_FUNCTION_106_2();
  sub_1C7551F3C();
  v14 = *v3;
  v15 = *(v3 + 8);
  sub_1C75505AC();
  sub_1C6FF7814();
  v39 = v5;
  v16 = *(v5 + 24);
  sub_1C754F58C();
  OUTLINED_FUNCTION_43_12();
  sub_1C70F7844(v17, v18);
  v38 = v16;
  sub_1C755059C();
  sub_1C7551FAC();
  v42 = v0 + 56;
  v43 = v0;
  OUTLINED_FUNCTION_9_2();
  v21 = v20 & ~v19;
  if (((*(v22 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
  {
LABEL_33:
    v34 = v36;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_41_12();
    sub_1C70F7684();
    v46 = *v34;
    sub_1C72ED3C8();
    *v34 = v46;
    sub_1C70F7738();
    goto LABEL_36;
  }

  v40 = ~v19;
  v41 = *(v7 + 72);
  while (1)
  {
    OUTLINED_FUNCTION_41_12();
    sub_1C70F7684();
    v23 = *v11 == v14 && *(v11 + 8) == v15;
    if (!v23 && (OUTLINED_FUNCTION_118_4() & 1) == 0)
    {
LABEL_25:
      OUTLINED_FUNCTION_19_20();
      goto LABEL_32;
    }

    v24 = *(v3 + 16);
    v25 = 0xE900000000000072;
    v26 = 0x6574636172616843;
    switch(*(v11 + 16))
    {
      case 1:
        v25 = 0xE800000000000000;
        v26 = OUTLINED_FUNCTION_79_4(0x61636F4Cu);
        break;
      case 2:
        v25 = 0xE500000000000000;
        v26 = 0x746E657645;
        break;
      case 3:
        v25 = 0xE400000000000000;
        v26 = 1885958740;
        break;
      case 4:
        v25 = 0xE500000000000000;
        v26 = 0x7972657551;
        break;
      case 5:
        v26 = 0x6B61657262656954;
        v25 = 0xEA00000000007265;
        break;
      default:
        break;
    }

    v27 = 0x6574636172616843;
    v28 = 0xE900000000000072;
    switch(v24)
    {
      case 1:
        v28 = 0xE800000000000000;
        OUTLINED_FUNCTION_105_6();
        break;
      case 2:
        v28 = 0xE500000000000000;
        v27 = 0x746E657645;
        break;
      case 3:
        v28 = 0xE400000000000000;
        v27 = 1885958740;
        break;
      case 4:
        v28 = 0xE500000000000000;
        v27 = 0x7972657551;
        break;
      case 5:
        v27 = 0x6B61657262656954;
        v28 = 0xEA00000000007265;
        break;
      default:
        break;
    }

    if (v26 == v27 && v25 == v28)
    {
    }

    else
    {
      v30 = sub_1C7551DBC();

      if ((v30 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    OUTLINED_FUNCTION_43_12();
    sub_1C70F7844(&qword_1EC2147A0, v31);
    sub_1C7550A5C();
    sub_1C7550A5C();
    if (v46 == v44 && v47 == v45)
    {
      break;
    }

    v33 = sub_1C7551DBC();

    OUTLINED_FUNCTION_19_20();
    if (v33)
    {
      goto LABEL_35;
    }

LABEL_32:
    v21 = (v21 + 1) & v40;
    if (((*(v42 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  OUTLINED_FUNCTION_19_20();
LABEL_35:
  sub_1C70F76E0(v3, type metadata accessor for Hastings.Feature);
  sub_1C70F7684();
LABEL_36:
  OUTLINED_FUNCTION_25_0();
}

void sub_1C70F1248()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_51_9(v3);
  sub_1C754E07C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_28();
  OUTLINED_FUNCTION_44_11();
  sub_1C70F7844(v5, v6);
  OUTLINED_FUNCTION_31_14();
  OUTLINED_FUNCTION_4_33();
  do
  {
    OUTLINED_FUNCTION_8_25();
    if (v7)
    {
      OUTLINED_FUNCTION_119_5();
      v11 = OUTLINED_FUNCTION_16_21();
      v12(v11);
      OUTLINED_FUNCTION_14_24();
      sub_1C72ED99C();
      v13 = OUTLINED_FUNCTION_15_26();
      v14(v13);
      goto LABEL_7;
    }

    v8 = OUTLINED_FUNCTION_5_35();
    v2(v8);
    OUTLINED_FUNCTION_44_11();
    sub_1C70F7844(&qword_1EC215FE0, v9);
    OUTLINED_FUNCTION_30_16();
    v10 = OUTLINED_FUNCTION_20_22();
    v1(v10);
  }

  while ((v0 & 1) == 0);
  v15 = OUTLINED_FUNCTION_53_14();
  v1(v15);
  v16 = OUTLINED_FUNCTION_17_26();
  v2(v16);
LABEL_7:
  OUTLINED_FUNCTION_25_0();
}

void sub_1C70F13B8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_51_9(v3);
  sub_1C754E15C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_28();
  OUTLINED_FUNCTION_42_14();
  sub_1C70F7844(v5, v6);
  OUTLINED_FUNCTION_31_14();
  OUTLINED_FUNCTION_4_33();
  do
  {
    OUTLINED_FUNCTION_8_25();
    if (v7)
    {
      OUTLINED_FUNCTION_119_5();
      v11 = OUTLINED_FUNCTION_16_21();
      v12(v11);
      OUTLINED_FUNCTION_14_24();
      sub_1C72EDB3C();
      v13 = OUTLINED_FUNCTION_15_26();
      v14(v13);
      goto LABEL_7;
    }

    v8 = OUTLINED_FUNCTION_5_35();
    v2(v8);
    OUTLINED_FUNCTION_42_14();
    sub_1C70F7844(&qword_1EDD0F9B8, v9);
    OUTLINED_FUNCTION_30_16();
    v10 = OUTLINED_FUNCTION_20_22();
    v1(v10);
  }

  while ((v0 & 1) == 0);
  v15 = OUTLINED_FUNCTION_53_14();
  v1(v15);
  v16 = OUTLINED_FUNCTION_17_26();
  v2(v16);
LABEL_7:
  OUTLINED_FUNCTION_25_0();
}

BOOL sub_1C70F1528(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_115_5();
  MEMORY[0x1CCA5E460](a2);
  sub_1C7551FAC();
  OUTLINED_FUNCTION_23_17();
  while (1)
  {
    OUTLINED_FUNCTION_21_21();
    v8 = v7 & v6;
    if ((v7 & v6) == 0)
    {
      break;
    }

    if (*(*(v4 + 48) + 8 * v3) == a2)
    {
      goto LABEL_6;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_10_32();
  OUTLINED_FUNCTION_457();
  sub_1C72EDEC0();
  OUTLINED_FUNCTION_49_10(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19);
LABEL_6:
  result = v8 == 0;
  *v2 = a2;
  return result;
}

void sub_1C70F1A9C()
{
  OUTLINED_FUNCTION_33();
  v4 = v3;
  v22 = v5;
  v21 = v1;
  OUTLINED_FUNCTION_106_2();
  sub_1C7551F3C();
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  sub_1C75505AC();
  v23 = v6;
  sub_1C6FF87E8();
  sub_1C7551FAC();
  OUTLINED_FUNCTION_3_42();
  if (((*(v0 + 56 + v10) >> v2) & 1) == 0)
  {
LABEL_22:
    swift_isUniquelyReferenced_nonNull_native();
    v26[0] = *v21;
    sub_1C7080654(v4, __dst);
    OUTLINED_FUNCTION_457();
    sub_1C72EE4E4();
    *v21 = v26[0];
    memcpy(v22, v4, 0xC0uLL);
    goto LABEL_25;
  }

  v24 = ~v9;
  while (1)
  {
    memcpy(__dst, (*(v0 + 48) + 192 * v2), 0xC0uLL);
    v11 = __dst[1] == v7 && __dst[2] == v8;
    if (!v11 && (sub_1C7551DBC() & 1) == 0)
    {
      goto LABEL_21;
    }

    v12 = 0xD000000000000011;
    v13 = "edMoodsInferredFallback";
    switch(LOBYTE(__dst[0]))
    {
      case 1:
        v12 = 0xD000000000000016;
        v13 = "appleMusicMaestro";
        break;
      case 2:
        v12 = 0xD000000000000015;
        v13 = "appleMusicSimpleSearch";
        break;
      case 3:
        v12 = 0xD000000000000010;
        v13 = "appleMusicSmartSearch";
        break;
      default:
        break;
    }

    v14 = v13 | 0x8000000000000000;
    v15 = 0xD000000000000011;
    v16 = "edMoodsInferredFallback";
    switch(v23)
    {
      case 1:
        v15 = 0xD000000000000016;
        v16 = "appleMusicMaestro";
        break;
      case 2:
        v15 = 0xD000000000000015;
        v16 = "appleMusicSimpleSearch";
        break;
      case 3:
        v15 = 0xD000000000000010;
        v16 = "appleMusicSmartSearch";
        break;
      default:
        break;
    }

    if (v12 == v15 && v14 == (v16 | 0x8000000000000000))
    {
      break;
    }

    v18 = OUTLINED_FUNCTION_118_4();
    sub_1C7080654(__dst, v26);

    sub_1C70806B0(__dst);
    if (v18)
    {
      goto LABEL_24;
    }

LABEL_21:
    v2 = (v2 + 1) & v24;
    OUTLINED_FUNCTION_62_0();
    if (((*(v0 + 56 + v19) >> v2) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  sub_1C7080654(__dst, v26);

  sub_1C70806B0(__dst);
LABEL_24:
  sub_1C70806B0(v4);
  v20 = (*(v0 + 48) + 192 * v2);
  memcpy(v26, v20, sizeof(v26));
  memcpy(v22, v20, 0xC0uLL);
  sub_1C7080654(v26, v25);
LABEL_25:
  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C70F1D7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_106_2();
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C7551FAC();
  OUTLINED_FUNCTION_9_2();
  v10 = v9 & ~v8;
  if ((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v8;
    do
    {
      v12 = (*(v5 + 48) + 32 * v10);
      v13 = v12[2];
      v14 = v12[3];
      v15 = *v12 == a2 && v12[1] == a3;
      if (v15 || (OUTLINED_FUNCTION_93_7() & 1) != 0)
      {
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C7036A90(v13, a4);
        if (v16)
        {
          sub_1C7036A90(v14, a5);
          v18 = v17;

          if (v18)
          {

            v19 = (*(v5 + 48) + 32 * v10);
            v20 = v19[1];
            v21 = v19[2];
            v22 = v19[3];
            *a1 = *v19;
            a1[1] = v20;
            a1[2] = v21;
            a1[3] = v22;
            sub_1C75504FC();
            sub_1C75504FC();
            sub_1C75504FC();
            return 0;
          }
        }

        else
        {
        }
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  swift_isUniquelyReferenced_nonNull_native();
  v28 = *v24;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C72EE7A8();
  *v24 = v28;
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  return 1;
}

void sub_1C70F1F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_103_1();
  a37 = v41;
  a38 = v42;
  v45 = *v43;
  v44 = v43[1];
  v68 = v43[2];
  v66 = v46;
  v67 = v43[3];
  v65 = v43;
  a26 = v43[4];
  OUTLINED_FUNCTION_106_2();
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C7551FAC();
  v47 = v38 + 56;
  OUTLINED_FUNCTION_3_42();
  if (((*(v38 + 56 + v49) >> v40) & 1) == 0)
  {
LABEL_13:
    swift_isUniquelyReferenced_nonNull_native();
    v69 = *v39;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C70F7794();
    sub_1C72EE964(v65, v40);
    *v39 = v69;
    v59 = *(v65 + 16);
    *v66 = *v65;
    *(v66 + 16) = v59;
    *(v66 + 32) = *(v65 + 32);
    goto LABEL_14;
  }

  v50 = ~v48;
  while (1)
  {
    OUTLINED_FUNCTION_100_5();
    v53 = v51[2];
    v52 = v51[3];
    v54 = *v51 == v45 && v51[1] == v44;
    if (!v54 && (OUTLINED_FUNCTION_598() & 1) == 0)
    {
      goto LABEL_12;
    }

    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C7036A90(v53, v68);
    if ((v55 & 1) == 0)
    {

      goto LABEL_12;
    }

    sub_1C7036A90(v52, v67);
    v57 = v56;

    if (v57)
    {
      break;
    }

LABEL_12:
    v40 = (v40 + 1) & v50;
    OUTLINED_FUNCTION_62_0();
    if (((*(v47 + v58) >> v40) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  sub_1C6FD7FC8(&a26, &qword_1EC217768);
  OUTLINED_FUNCTION_100_5();
  v61 = v60[1];
  v62 = v60[2];
  v63 = v60[3];
  v64 = v60[4];
  *v66 = *v60;
  *(v66 + 8) = v61;
  *(v66 + 16) = v62;
  *(v66 + 24) = v63;
  *(v66 + 32) = v64;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
LABEL_14:
  OUTLINED_FUNCTION_102_0();
}

void sub_1C70F21F4()
{
  OUTLINED_FUNCTION_103_1();
  v29 = v4;
  v30 = v3;
  v5 = *v4;
  v6 = v4[1];
  v34 = v4[3];
  v35 = v4[2];
  v32 = v4[5];
  v33 = v4[4];
  OUTLINED_FUNCTION_95_6();
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C7551FAC();
  v7 = v1 + 56;
  OUTLINED_FUNCTION_6_12();
  if (((*(v1 + 56 + v9) >> v2) & 1) == 0)
  {
LABEL_15:
    swift_isUniquelyReferenced_nonNull_native();
    v36 = *v0;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C72EEB44();
    *v0 = v36;
    v22 = v29[1];
    *v30 = *v29;
    *(v30 + 16) = v22;
    *(v30 + 32) = v29[2];
    goto LABEL_16;
  }

  v10 = ~v8;
  while (1)
  {
    OUTLINED_FUNCTION_97_4();
    v13 = v11[2];
    v12 = v11[3];
    v15 = v11[4];
    v14 = v11[5];
    v16 = *v11 == v5 && v11[1] == v6;
    if (!v16 && (sub_1C7551DBC() & 1) == 0)
    {
      goto LABEL_14;
    }

    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C7036A90(v13, v35);
    if ((v17 & 1) == 0 || (sub_1C7036A90(v12, v34), (v18 & 1) == 0) || (sub_1C7036A90(v15, v33), (v19 & 1) == 0))
    {

      goto LABEL_14;
    }

    sub_1C7036A90(v14, v32);
    v31 = v20;

    if (v31)
    {
      break;
    }

LABEL_14:
    v2 = (v2 + 1) & v10;
    OUTLINED_FUNCTION_34_11();
    if (((*(v7 + v21) >> v2) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  OUTLINED_FUNCTION_97_4();
  v24 = v23[1];
  v25 = v23[2];
  v26 = v23[3];
  v27 = v23[4];
  v28 = v23[5];
  *v30 = *v23;
  *(v30 + 8) = v24;
  *(v30 + 16) = v25;
  *(v30 + 24) = v26;
  *(v30 + 32) = v27;
  *(v30 + 40) = v28;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
LABEL_16:
  OUTLINED_FUNCTION_102_0();
}

uint64_t sub_1C70F26F0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_95_6();
  sub_1C7551F3C();
  v5 = *a2;
  v6 = *(a2 + 8);
  MEMORY[0x1CCA5CD70](*a2, v6);
  sub_1C75505AC();

  sub_1C7551FAC();
  OUTLINED_FUNCTION_3_42();
  v37 = a2;
  if (((*(v2 + 56 + v8) >> v3) & 1) == 0)
  {
LABEL_33:
    swift_isUniquelyReferenced_nonNull_native();
    v41 = *v36;
    sub_1C70804EC(v37, v42);
    v25 = OUTLINED_FUNCTION_457();
    sub_1C72EF04C(v25, v26);
    v27 = OUTLINED_FUNCTION_94_7(v41);
    return OUTLINED_FUNCTION_96_5(v27, v28);
  }

  v9 = ~v7;
  v10 = *(a2 + 24);
  v39 = *(a2 + 16);
  v40 = *(a2 + 25);
  while (1)
  {
    OUTLINED_FUNCTION_100_5();
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    v14 = *(v11 + 25);
    v15 = *v11 == v5 && *(v11 + 8) == v6;
    if (!v15 && (sub_1C7551DBC() & 1) == 0)
    {
      goto LABEL_32;
    }

    if (v13)
    {
      if ((v10 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else if ((v10 & 1) != 0 || v12 != v39)
    {
      goto LABEL_32;
    }

    v16 = 0xEB00000000797261;
    v17 = 0xEB00000000797261;
    v18 = 0x73726576696E6E61;
    v19 = 0x73726576696E6E61;
    switch(v14)
    {
      case 1:
        v17 = 0xE800000000000000;
        v19 = 0x7961646874726962;
        break;
      case 2:
        v17 = 0xE700000000000000;
        v19 = 0x676E6964646577;
        break;
      case 3:
        v17 = 0xE700000000000000;
        v19 = 0x747265636E6F63;
        break;
      case 4:
        v19 = OUTLINED_FUNCTION_77_6() & 0xFFFFFFFFFFFFLL | 0x4579000000000000;
        v17 = 0xEC000000746E6576;
        break;
      case 5:
        v19 = 0x65764574726F7073;
        v17 = 0xEA0000000000746ELL;
        break;
      case 6:
        v17 = 0xE700000000000000;
        v19 = 0x64656D616E6E75;
        break;
      default:
        break;
    }

    v20 = v16;
    switch(v40)
    {
      case 1:
        v20 = 0xE800000000000000;
        v18 = 0x7961646874726962;
        break;
      case 2:
        v20 = 0xE700000000000000;
        v18 = 0x676E6964646577;
        break;
      case 3:
        v20 = 0xE700000000000000;
        v18 = 0x747265636E6F63;
        break;
      case 4:
        OUTLINED_FUNCTION_75_6();
        v18 = v21 & 0xFFFFFFFFFFFFLL | 0x4579000000000000;
        v20 = 0xEC000000746E6576;
        break;
      case 5:
        v18 = 0x65764574726F7073;
        v20 = 0xEA0000000000746ELL;
        break;
      case 6:
        v20 = 0xE700000000000000;
        v18 = 0x64656D616E6E75;
        break;
      default:
        break;
    }

    if (v19 == v18 && v17 == v20)
    {
      break;
    }

    v23 = OUTLINED_FUNCTION_118_4();

    if (v23)
    {
      goto LABEL_35;
    }

LABEL_32:
    v3 = (v3 + 1) & v9;
    OUTLINED_FUNCTION_62_0();
    if (((*(v2 + 56 + v24) >> v3) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

LABEL_35:
  sub_1C70F75DC(v37);
  OUTLINED_FUNCTION_100_5();
  v31 = *(v30 + 8);
  v32 = *(v30 + 16);
  v33 = *(v30 + 24);
  v34 = *(v30 + 25);
  v35 = *(v30 + 32);
  *a1 = *v30;
  *(a1 + 8) = v31;
  *(a1 + 16) = v32;
  *(a1 + 24) = v33;
  *(a1 + 25) = v34;
  *(a1 + 32) = v35;
  sub_1C75504FC();
  sub_1C75504FC();
  return 0;
}

uint64_t sub_1C70F2A94(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1C7551F3C();
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v40[0] = 0x3A70697254;
  v40[1] = 0xE500000000000000;
  v38 = v7;
  v39 = v6;
  MEMORY[0x1CCA5CD70]();
  sub_1C75505AC();

  sub_1C7551FAC();
  v8 = v5 + 56;
  OUTLINED_FUNCTION_6_12();
  v34 = a2;
  if (((*(v5 + 56 + v10) >> v3) & 1) == 0)
  {
LABEL_19:
    swift_isUniquelyReferenced_nonNull_native();
    v40[0] = *v33;
    sub_1C7026698(v34, v41);
    OUTLINED_FUNCTION_66_11();
    sub_1C72EF3CC();
    *a1 = OUTLINED_FUNCTION_94_7(v40[0]);
    *(a1 + 16) = v23;
    v24 = *(v34 + 48);
    *(a1 + 32) = *(v34 + 32);
    *(a1 + 48) = v24;
    return 1;
  }

  v11 = ~v9;
  v12 = *(a2 + 8);
  v36 = *(a2 + 16);
  v37 = *(a2 + 24);
  v13 = *a2;
  v32 = v5;
  v14 = *(v5 + 48);
  while (1)
  {
    v15 = v14 + (v3 << 6);
    v16 = *(v15 + 16);
    v17 = *(v15 + 24);
    v18 = *(v15 + 32);
    v19 = *(v15 + 40);
    v20 = *v15 == v13 && *(v15 + 8) == v12;
    if (!v20 && (sub_1C7551DBC() & 1) == 0)
    {
      goto LABEL_18;
    }

    if ((v17 & 1) == 0)
    {
      break;
    }

    if (v37)
    {
      goto LABEL_13;
    }

LABEL_18:
    v3 = (v3 + 1) & v11;
    OUTLINED_FUNCTION_34_11();
    if (((*(v8 + v22) >> v3) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  if ((v37 & 1) != 0 || v16 != v36)
  {
    goto LABEL_18;
  }

LABEL_13:
  v21 = v18 == v39 && v19 == v38;
  if (!v21 && (sub_1C7551DBC() & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_1C70266D0(v34);
  v26 = (*(v32 + 48) + (v3 << 6));
  v27 = *v26;
  v28 = v26[1];
  v29 = v26[3];
  v41[2] = v26[2];
  v41[3] = v29;
  v41[0] = v27;
  v41[1] = v28;
  v30 = v26[1];
  *a1 = *v26;
  *(a1 + 16) = v30;
  v31 = v26[3];
  *(a1 + 32) = v26[2];
  *(a1 + 48) = v31;
  sub_1C7026698(v41, v40);
  return 0;
}

void sub_1C70F2CAC()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  v6 = sub_1C754F65C();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_78();
  v70 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  v55 = v0;
  OUTLINED_FUNCTION_95_6();
  sub_1C7551F3C();
  v15 = *v3;
  v16 = *(v3 + 8);
  v73 = 0x6144664F74726150;
  v74 = 0xEA00000000003A79;
  v65 = v16;
  v66 = v15;
  MEMORY[0x1CCA5CD70]();
  sub_1C75505AC();

  sub_1C7551FAC();
  v63 = v1;
  OUTLINED_FUNCTION_9_2();
  v19 = v18 & ~v17;
  v62 = v20;
  v21 = *(v20 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19;
  v57 = v3;
  if ((v21 & 1) == 0)
  {
LABEL_24:
    v43 = v55;
    swift_isUniquelyReferenced_nonNull_native();
    v73 = *v43;
    v44 = v57;
    sub_1C7080548(v57, &v75);
    sub_1C72EF590();
    *v43 = v73;
    v45 = *(v44 + 16);
    *v5 = *v44;
    *(v5 + 16) = v45;
    *(v5 + 32) = *(v44 + 32);
    *(v5 + 48) = *(v44 + 48);
LABEL_26:
    OUTLINED_FUNCTION_25_0();
    return;
  }

  v60 = ~v17;
  v58 = *(v3 + 16);
  v59 = *(v3 + 24);
  v67 = v8 + 16;
  v22 = (v8 + 8);
  v23 = *(v3 + 32);
  v71 = v8;
  v72 = v23;
  v25 = v65;
  v24 = v66;
  v54 = v5;
  while (1)
  {
    v26 = *(v63 + 48);
    v61 = 56 * v19;
    v27 = (v26 + 56 * v19);
    v28 = *v27;
    v29 = v27[1];
    v30 = v27[2];
    v31 = *(v27 + 24);
    v32 = v27[4];
    v64 = v27[5];
    if (v28 != v24 || v29 != v25)
    {
      v34 = sub_1C7551DBC();
      v25 = v65;
      v24 = v66;
      if ((v34 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    if (v31)
    {
      if ((v59 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if ((v59 & 1) != 0 || v30 != v58)
    {
      goto LABEL_23;
    }

    v35 = *(v32 + 16);
    if (v35 == *(v72 + 16))
    {
      break;
    }

LABEL_23:
    v19 = (v19 + 1) & v60;
    if (((*(v62 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if (!v35 || v32 == v72)
  {
LABEL_25:
    sub_1C70F7630(v57);
    v46 = *(v63 + 48) + v61;
    v47 = *v46;
    v48 = *(v46 + 8);
    v49 = *(v46 + 16);
    v50 = *(v46 + 24);
    v52 = *(v46 + 32);
    v51 = *(v46 + 40);
    LOBYTE(v46) = *(v46 + 48);
    *v5 = v47;
    *(v5 + 8) = v48;
    *(v5 + 16) = v49;
    *(v5 + 24) = v50;
    *(v5 + 32) = v52;
    *(v5 + 40) = v51;
    *(v5 + 48) = v46;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    goto LABEL_26;
  }

  v53 = v19;
  v36 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v68 = v72 + v36;
  v69 = v32 + v36;
  sub_1C75504FC();
  v56 = v29;
  sub_1C75504FC();
  sub_1C75504FC();
  v37 = 0;
  while (v37 < *(v32 + 16))
  {
    v38 = *(v71 + 72) * v37;
    v39 = *(v71 + 16);
    v39(v14, v69 + v38, v6);
    if (v37 >= *(v72 + 16))
    {
      goto LABEL_28;
    }

    v40 = v70;
    v39(v70, v68 + v38, v6);
    sub_1C70F7844(&qword_1EC215FE8, MEMORY[0x1E69C19F0]);
    v41 = sub_1C755063C();
    v42 = *v22;
    (*v22)(v40, v6);
    v42(v14, v6);
    if ((v41 & 1) == 0)
    {

      v5 = v54;
      v25 = v65;
      v24 = v66;
      v19 = v53;
      goto LABEL_23;
    }

    if (v35 == ++v37)
    {

      v5 = v54;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_1C70F3190()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v60 = v4;
  v5 = sub_1C754DABC();
  OUTLINED_FUNCTION_3_0();
  v57 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v53 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215D50);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  v65 = type metadata accessor for TimeExtendedToken(0);
  OUTLINED_FUNCTION_3_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_78();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v58 = &v53 - v22;
  v59 = v0;
  OUTLINED_FUNCTION_71_4();
  sub_1C7551F3C();
  v71 = 0x3A656D6954;
  v72 = 0xE500000000000000;
  v24 = *v3;
  v23 = v3[1];
  v67 = v3;
  MEMORY[0x1CCA5CD70](v24, v23);
  sub_1C75505AC();

  sub_1C7551FAC();
  v66 = v1;
  OUTLINED_FUNCTION_9_2();
  v27 = v26 & ~v25;
  v70 = v28;
  if (((*(v28 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
  {
LABEL_50:
    v52 = v59;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_38_11();
    sub_1C70F7684();
    v73 = *v52;
    sub_1C72EFA10();
    *v52 = v73;
    sub_1C70F7738();
    goto LABEL_51;
  }

  v56 = v11;
  v63 = v5;
  v68 = ~v25;
  v69 = *(v16 + 72);
  v53 = (v57 + 4);
  ++v57;
  v29 = v14;
  v30 = v67;
  v61 = v24;
  v62 = v23;
  while (1)
  {
    OUTLINED_FUNCTION_38_11();
    sub_1C70F7684();
    v31 = *v20 == v24 && *(v20 + 8) == v23;
    if (!v31 && (sub_1C7551DBC() & 1) == 0)
    {
      goto LABEL_45;
    }

    v32 = *(v30 + 56);
    if (*(v20 + 56))
    {
      if (!*(v30 + 56))
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (*(v20 + 48) != *(v30 + 48))
      {
        v32 = 1;
      }

      if (v32)
      {
        goto LABEL_45;
      }
    }

    v33 = *(v30 + 57);
    v34 = 0xE300000000000000;
    v35 = 7954788;
    switch(*(v20 + 57))
    {
      case 1:
        v35 = 0x61655968746E6F6DLL;
        v34 = 0xE900000000000072;
        break;
      case 2:
        v34 = 0xE400000000000000;
        v35 = 1918985593;
        break;
      case 3:
        v35 = 0x596568547265766FLL;
        v36 = 1936875877;
        goto LABEL_21;
      case 4:
        v34 = 0xE600000000000000;
        v35 = 0x6E6F73616573;
        break;
      case 5:
        v34 = 0xE700000000000000;
        v35 = OUTLINED_FUNCTION_77_6() & 0xFFFFFFFFFFFFLL | 0x79000000000000;
        break;
      case 6:
        v35 = 0x6D72657465646E75;
        v36 = 1684369001;
LABEL_21:
        v34 = v36 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      default:
        break;
    }

    v37 = 0xE300000000000000;
    v38 = 7954788;
    switch(v33)
    {
      case 1:
        v38 = 0x61655968746E6F6DLL;
        v37 = 0xE900000000000072;
        break;
      case 2:
        v37 = 0xE400000000000000;
        v38 = 1918985593;
        break;
      case 3:
        v38 = 0x596568547265766FLL;
        v39 = 1936875877;
        goto LABEL_29;
      case 4:
        v37 = 0xE600000000000000;
        v38 = 0x6E6F73616573;
        break;
      case 5:
        v37 = 0xE700000000000000;
        OUTLINED_FUNCTION_75_6();
        v38 = v40 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
        break;
      case 6:
        v38 = 0x6D72657465646E75;
        v39 = 1684369001;
LABEL_29:
        v37 = v39 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      default:
        break;
    }

    if (v35 == v38 && v34 == v37)
    {

      v30 = v67;
    }

    else
    {
      v42 = sub_1C7551DBC();

      v30 = v67;
      if ((v42 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    if ((MEMORY[0x1CCA59F10](v20 + *(v65 + 36), v30 + *(v65 + 36)) & 1) == 0)
    {
      goto LABEL_45;
    }

    v43 = *(v64 + 48);
    sub_1C70F7794();
    sub_1C70F7794();
    v44 = v63;
    if (__swift_getEnumTagSinglePayload(v29, 1, v63) == 1)
    {
      break;
    }

    v46 = v29;
    v47 = v56;
    sub_1C70F7794();
    if (__swift_getEnumTagSinglePayload(v46 + v43, 1, v44) == 1)
    {
      (*v57)(v47, v44);
      v45 = v46;
      v23 = v62;
LABEL_44:
      v29 = v45;
      sub_1C6FD7FC8(v45, &qword_1EC215D50);
      v30 = v67;
      v24 = v61;
LABEL_45:
      OUTLINED_FUNCTION_18_17();
      goto LABEL_46;
    }

    v48 = v46 + v43;
    v49 = v55;
    (*v53)(v55, v48, v44);
    sub_1C70F7844(&qword_1EC215D58, MEMORY[0x1E6968278]);
    v54 = sub_1C755063C();
    v50 = v44;
    v51 = *v57;
    (*v57)(v49, v50);
    v51(v47, v50);
    sub_1C6FD7FC8(v46, &qword_1EC218C50);
    OUTLINED_FUNCTION_18_17();
    v29 = v46;
    v30 = v67;
    v24 = v61;
    v23 = v62;
    if (v54)
    {
      goto LABEL_52;
    }

LABEL_46:
    v27 = (v27 + 1) & v68;
    if (((*(v70 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  v31 = __swift_getEnumTagSinglePayload(v29 + v43, 1, v44) == 1;
  v23 = v62;
  v45 = v29;
  if (!v31)
  {
    goto LABEL_44;
  }

  sub_1C6FD7FC8(v29, &qword_1EC218C50);
  OUTLINED_FUNCTION_18_17();
  v30 = v67;
LABEL_52:
  sub_1C70F76E0(v30, type metadata accessor for TimeExtendedToken);
  sub_1C70F7684();
LABEL_51:
  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C70F3990(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1C7551F3C();
  v6 = *a2;
  v7 = *(a2 + 8);
  sub_1C755180C();

  OUTLINED_FUNCTION_3_1();
  MEMORY[0x1CCA5CD70](v6, v7);
  sub_1C75505AC();

  sub_1C7551FAC();
  v8 = v5 + 56;
  OUTLINED_FUNCTION_6_12();
  if (((*(v5 + 56 + v10) >> v3) & 1) == 0)
  {
LABEL_14:
    swift_isUniquelyReferenced_nonNull_native();
    v34 = *v31;
    sub_1C70805A4(a2, v35);
    OUTLINED_FUNCTION_66_11();
    sub_1C72F01A0(v19, v20);
    v21 = OUTLINED_FUNCTION_94_7(v34);
    return OUTLINED_FUNCTION_96_5(v21, v22);
  }

  v11 = ~v9;
  v33 = *(a2 + 16);
  v12 = *(a2 + 24);
  v30 = v5;
  v13 = *(v5 + 48);
  while (1)
  {
    v14 = v13 + 40 * v3;
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    v17 = *v14 == v6 && *(v14 + 8) == v7;
    if (!v17 && (OUTLINED_FUNCTION_69_10() & 1) == 0)
    {
      goto LABEL_13;
    }

    if ((v16 & 1) == 0)
    {
      break;
    }

    if (v12)
    {
      goto LABEL_15;
    }

LABEL_13:
    v3 = (v3 + 1) & v11;
    OUTLINED_FUNCTION_34_11();
    if (((*(v8 + v18) >> v3) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if ((v12 & 1) != 0 || v15 != v33)
  {
    goto LABEL_13;
  }

LABEL_15:
  sub_1C70F77F0(a2);
  v24 = *(v30 + 48) + 40 * v3;
  v25 = *(v24 + 8);
  v26 = *(v24 + 16);
  v27 = *(v24 + 24);
  v28 = *(v24 + 25);
  v29 = *(v24 + 32);
  *a1 = *v24;
  *(a1 + 8) = v25;
  *(a1 + 16) = v26;
  *(a1 + 24) = v27;
  *(a1 + 25) = v28;
  *(a1 + 32) = v29;
  sub_1C75504FC();
  sub_1C75504FC();
  return 0;
}

uint64_t sub_1C70F3B88(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1C7551F3C();
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v38[0] = 0x6E6F697461636F4CLL;
  v38[1] = 0xE90000000000003ALL;
  v36 = v7;
  v37 = v6;
  MEMORY[0x1CCA5CD70]();
  sub_1C75505AC();

  sub_1C7551FAC();
  v8 = v5 + 56;
  OUTLINED_FUNCTION_6_12();
  v32 = a2;
  if (((*(v5 + 56 + v10) >> v3) & 1) == 0)
  {
LABEL_19:
    swift_isUniquelyReferenced_nonNull_native();
    v38[0] = *v31;
    sub_1C70260B4(v32, v39);
    OUTLINED_FUNCTION_66_11();
    sub_1C72F0360();
    *a1 = OUTLINED_FUNCTION_94_7(v38[0]);
    *(a1 + 16) = v23;
    *(a1 + 32) = *(v32 + 32);
    *(a1 + 48) = *(v32 + 48);
    return 1;
  }

  v11 = ~v9;
  v34 = *(a2 + 32);
  v35 = *(a2 + 40);
  v12 = *a2;
  v13 = *(a2 + 8);
  v30 = v5;
  v14 = *(v5 + 48);
  while (1)
  {
    v15 = v14 + 56 * v3;
    v16 = *(v15 + 16);
    v17 = *(v15 + 24);
    v18 = *(v15 + 32);
    v19 = *(v15 + 40);
    v20 = *v15 == v12 && *(v15 + 8) == v13;
    if (!v20 && (sub_1C7551DBC() & 1) == 0)
    {
      goto LABEL_18;
    }

    if ((v19 & 1) == 0)
    {
      break;
    }

    if (v35)
    {
      goto LABEL_13;
    }

LABEL_18:
    v3 = (v3 + 1) & v11;
    OUTLINED_FUNCTION_34_11();
    if (((*(v8 + v22) >> v3) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  if ((v35 & 1) != 0 || v18 != v34)
  {
    goto LABEL_18;
  }

LABEL_13:
  v21 = v16 == v37 && v17 == v36;
  if (!v21 && (sub_1C7551DBC() & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_1C70260EC(v32);
  v25 = *(v30 + 48) + 56 * v3;
  v26 = *v25;
  v27 = *(v25 + 16);
  v28 = *(v25 + 32);
  v40 = *(v25 + 48);
  v39[1] = v27;
  v39[2] = v28;
  v39[0] = v26;
  v29 = *(v25 + 16);
  *a1 = *v25;
  *(a1 + 16) = v29;
  *(a1 + 32) = *(v25 + 32);
  *(a1 + 48) = *(v25 + 48);
  sub_1C70260B4(v39, v38);
  return 0;
}

BOOL sub_1C70F3DC8(void *a1, void *a2)
{
  OUTLINED_FUNCTION_71_4();
  sub_1C7551F3C();
  v5 = a2[5];
  OUTLINED_FUNCTION_114_5();
  sub_1C75505AC();

  sub_1C7551FAC();
  OUTLINED_FUNCTION_9_2();
  v8 = ~v7;
  while (1)
  {
    v9 = v6 & v8;
    OUTLINED_FUNCTION_34_11();
    v11 = (1 << v9) & *(v3 + 56 + v10);
    if (!v11)
    {
      break;
    }

    OUTLINED_FUNCTION_86_6();
    v13 = v13 && v12 == v5;
    if (v13 || (OUTLINED_FUNCTION_69_10() & 1) != 0)
    {
      sub_1C7026030(a2);
      v14 = *(v3 + 48);
      memcpy(__dst, (v14 + 8 * v2), 0x42uLL);
      memcpy(a1, (v14 + 8 * v2), 0x42uLL);
      sub_1C7025FF8(__dst, &v20);
      return v11 == 0;
    }

    v6 = v9 + 1;
  }

  swift_isUniquelyReferenced_nonNull_native();
  v15 = OUTLINED_FUNCTION_85_7();
  sub_1C7025FF8(v15, v16);
  OUTLINED_FUNCTION_66_11();
  sub_1C72F0530();
  *v18 = v20;
  memcpy(a1, a2, 0x42uLL);
  return v11 == 0;
}

BOOL sub_1C70F3F1C(void *a1, void *a2)
{
  OUTLINED_FUNCTION_71_4();
  sub_1C7551F3C();
  v5 = a2[5];
  OUTLINED_FUNCTION_114_5();
  sub_1C75505AC();

  sub_1C7551FAC();
  OUTLINED_FUNCTION_9_2();
  v8 = ~v7;
  while (1)
  {
    v9 = v6 & v8;
    OUTLINED_FUNCTION_34_11();
    v11 = (1 << v9) & *(v3 + 56 + v10);
    if (!v11)
    {
      break;
    }

    OUTLINED_FUNCTION_86_6();
    v13 = v13 && v12 == v5;
    if (v13 || (OUTLINED_FUNCTION_69_10() & 1) != 0)
    {
      sub_1C7025F74(a2);
      v14 = *(v3 + 48);
      memcpy(__dst, (v14 + 8 * v2), 0x41uLL);
      memcpy(a1, (v14 + 8 * v2), 0x41uLL);
      sub_1C7025F3C(__dst, &v20);
      return v11 == 0;
    }

    v6 = v9 + 1;
  }

  swift_isUniquelyReferenced_nonNull_native();
  v15 = OUTLINED_FUNCTION_85_7();
  sub_1C7025F3C(v15, v16);
  OUTLINED_FUNCTION_66_11();
  sub_1C72F065C();
  *v18 = v20;
  memcpy(a1, a2, 0x41uLL);
  return v11 == 0;
}

BOOL sub_1C70F428C(void *a1, uint64_t a2)
{
  v6 = *v2;
  sub_1C7551F2C();
  OUTLINED_FUNCTION_23_17();
  while (1)
  {
    OUTLINED_FUNCTION_21_21();
    v9 = v8 & v7;
    if ((v8 & v7) == 0)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v3) == a2)
    {
      goto LABEL_6;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_10_32();
  v10 = OUTLINED_FUNCTION_457();
  sub_1C72F0A18(v10, v11);
  OUTLINED_FUNCTION_49_10(v12, v13, v14, v15, v16, v17, v18, v19, v21, v22);
LABEL_6:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_1C70F435C()
{
  OUTLINED_FUNCTION_76_6();
  OUTLINED_FUNCTION_71_4();
  sub_1C72DE9F8();
  OUTLINED_FUNCTION_3_42();
  if ((*(v4 + 56 + v5) >> v3))
  {
    OUTLINED_FUNCTION_109_6();
    OUTLINED_FUNCTION_3_1();
    v36 = v6;
    v37 = v7;
    OUTLINED_FUNCTION_109_6();
    OUTLINED_FUNCTION_3_1();
    v34 = v8;
    v35 = v9;
    while (1)
    {
      v10 = 0xE300000000000000;
      v11 = 7105633;
      switch(*(*(v4 + 48) + v3))
      {
        case 1:
          v11 = 0x4B6F72747365616DLL;
          v10 = 0xEE0064726F777965;
          break;
        case 2:
          v11 = 0xD000000000000010;
          v10 = v34;
          break;
        case 3:
          OUTLINED_FUNCTION_1_4();
          v11 = v16 + 7;
          v10 = v35;
          break;
        case 4:
          OUTLINED_FUNCTION_1_4();
          v11 = v13 + 3;
          v10 = v36;
          break;
        case 5:
          v10 = 0xE800000000000000;
          v11 = 0x7974697669746361;
          break;
        case 6:
          v10 = 0xE600000000000000;
          v11 = 0x656C706F6570;
          break;
        case 7:
          v10 = 0xE400000000000000;
          v11 = 1701669236;
          break;
        case 8:
          v10 = 0xE500000000000000;
          v11 = 0x6563616C70;
          break;
        case 9:
          v11 = 0x74617262656C6563;
          v15 = 7237481;
          goto LABEL_32;
        case 0xA:
          v10 = 0xE700000000000000;
          v14 = OUTLINED_FUNCTION_77_6();
          goto LABEL_26;
        case 0xB:
          v10 = 0xE400000000000000;
          v11 = 1885958772;
          break;
        case 0xC:
          v10 = 0xE700000000000000;
          v14 = 0x72746E756F63;
LABEL_26:
          v11 = v14 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
          break;
        case 0xD:
          v10 = 0xE700000000000000;
          v11 = 0x41535579746963;
          break;
        case 0xE:
          OUTLINED_FUNCTION_1_4();
          v11 = v12 + 1;
          v10 = v37;
          break;
        case 0xF:
          v10 = 0xE600000000000000;
          v11 = 0x6C6175736976;
          break;
        case 0x10:
          v10 = 0xE800000000000000;
          v11 = 0x656E6F54646F6F6DLL;
          break;
        case 0x11:
          v10 = 0xE800000000000000;
          v11 = OUTLINED_FUNCTION_79_4(0x61727563u);
          break;
        case 0x12:
          v11 = 7628144;
          break;
        case 0x13:
          v10 = 0xE500000000000000;
          v11 = OUTLINED_FUNCTION_8_13() & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
          break;
        case 0x14:
          v10 = 0xE600000000000000;
          v11 = OUTLINED_FUNCTION_8_13() & 0xFFFF0000FFFFFFFFLL | 0x746100000000;
          break;
        case 0x15:
          v10 = 0xE600000000000000;
          v11 = OUTLINED_FUNCTION_8_13() & 0xFFFF0000FFFFFFFFLL | 0x6E6500000000;
          break;
        case 0x16:
          v10 = 0xE700000000000000;
          v11 = OUTLINED_FUNCTION_8_13() | 0x65726500000000;
          break;
        case 0x17:
          v11 = 0x697254726F467369;
          v10 = 0xE900000000000070;
          break;
        case 0x18:
          v11 = 0x726F5769746C756DLL;
          v10 = 0xEF65736172685064;
          break;
        case 0x19:
          v10 = 0xE700000000000000;
          v11 = 0x646574736F6F62;
          break;
        case 0x1A:
          v11 = 0x54646574736F6F62;
          v15 = 7367026;
LABEL_32:
          v10 = v15 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 0x1B:
          v11 = 0x6146656C706F6570;
          v10 = 0xEC000000796C696DLL;
          break;
        default:
          break;
      }

      v17 = 0xE300000000000000;
      v18 = 7105633;
      switch(v1)
      {
        case 1:
          v18 = 0x4B6F72747365616DLL;
          v17 = 0xEE0064726F777965;
          break;
        case 2:
          v18 = 0xD000000000000010;
          v17 = v34;
          break;
        case 3:
          OUTLINED_FUNCTION_1_4();
          v18 = v23 + 7;
          v17 = v35;
          break;
        case 4:
          OUTLINED_FUNCTION_1_4();
          v18 = v20 + 3;
          v17 = v36;
          break;
        case 5:
          v17 = 0xE800000000000000;
          v18 = 0x7974697669746361;
          break;
        case 6:
          v17 = 0xE600000000000000;
          v18 = 0x656C706F6570;
          break;
        case 7:
          v17 = 0xE400000000000000;
          v18 = 1701669236;
          break;
        case 8:
          v17 = 0xE500000000000000;
          v18 = 0x6563616C70;
          break;
        case 9:
          v18 = 0x74617262656C6563;
          v22 = 7237481;
          goto LABEL_62;
        case 10:
          v17 = 0xE700000000000000;
          OUTLINED_FUNCTION_75_6();
          goto LABEL_56;
        case 11:
          v17 = 0xE400000000000000;
          v18 = 1885958772;
          break;
        case 12:
          v17 = 0xE700000000000000;
          v21 = 0x72746E756F63;
LABEL_56:
          v18 = v21 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
          break;
        case 13:
          v17 = 0xE700000000000000;
          v18 = 0x41535579746963;
          break;
        case 14:
          OUTLINED_FUNCTION_1_4();
          v18 = v19 + 1;
          v17 = v37;
          break;
        case 15:
          v17 = 0xE600000000000000;
          v18 = 0x6C6175736976;
          break;
        case 16:
          v17 = 0xE800000000000000;
          v18 = 0x656E6F54646F6F6DLL;
          break;
        case 17:
          v17 = 0xE800000000000000;
          OUTLINED_FUNCTION_105_6();
          break;
        case 18:
          v18 = 7628144;
          break;
        case 19:
          v17 = 0xE500000000000000;
          OUTLINED_FUNCTION_10_16();
          v18 = v27 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
          break;
        case 20:
          v17 = 0xE600000000000000;
          OUTLINED_FUNCTION_10_16();
          v18 = v24 & 0xFFFF0000FFFFFFFFLL | 0x746100000000;
          break;
        case 21:
          v17 = 0xE600000000000000;
          OUTLINED_FUNCTION_10_16();
          v18 = v25 & 0xFFFF0000FFFFFFFFLL | 0x6E6500000000;
          break;
        case 22:
          v17 = 0xE700000000000000;
          OUTLINED_FUNCTION_10_16();
          v18 = v26 | 0x65726500000000;
          break;
        case 23:
          v18 = 0x697254726F467369;
          v17 = 0xE900000000000070;
          break;
        case 24:
          v18 = 0x726F5769746C756DLL;
          v17 = 0xEF65736172685064;
          break;
        case 25:
          v17 = 0xE700000000000000;
          v18 = 0x646574736F6F62;
          break;
        case 26:
          v18 = 0x54646574736F6F62;
          v22 = 7367026;
LABEL_62:
          v17 = v22 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 27:
          v18 = 0x6146656C706F6570;
          v17 = 0xEC000000796C696DLL;
          break;
        default:
          break;
      }

      if (v11 == v18 && v10 == v17)
      {
        break;
      }

      v29 = OUTLINED_FUNCTION_598();

      if (v29)
      {
        goto LABEL_71;
      }

      OUTLINED_FUNCTION_27_18();
      if ((v30 & 1) == 0)
      {
        goto LABEL_69;
      }
    }

LABEL_71:
    result = OUTLINED_FUNCTION_78_7();
  }

  else
  {
LABEL_69:
    swift_isUniquelyReferenced_nonNull_native();
    v38 = *v2;
    v31 = OUTLINED_FUNCTION_49_3();
    sub_1C72F0C38(v31, v32);
    *v2 = v38;
    result = 1;
  }

  *v0 = v1;
  return result;
}

uint64_t sub_1C70F4DB8(__int128 *a1, uint64_t *a2)
{
  v4 = *v2;
  sub_1C7551F3C();
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  sub_1C75505AC();
  v52 = v8;
  v53 = v7;
  sub_1C75505AC();
  v49 = v10;
  sub_1C70418D0();
  v48 = v11;
  v42 = v2;
  sub_1C7551F5C();
  if (v11)
  {
    sub_1C75505AC();
  }

  v43 = a2;
  v47 = a2[7];
  MEMORY[0x1CCA5E460]();
  sub_1C7551FAC();
  OUTLINED_FUNCTION_9_2();
  v14 = v13 & ~v12;
  v51 = v15;
  if (((*(v15 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_39:
    swift_isUniquelyReferenced_nonNull_native();
    v54[0] = *v42;
    sub_1C70802EC(v43, v55);
    sub_1C72F161C(v43, v14);
    *v42 = v54[0];
    v33 = *(v43 + 16);
    *a1 = *v43;
    a1[1] = v33;
    v34 = *(v43 + 48);
    a1[2] = *(v43 + 32);
    a1[3] = v34;
    return 1;
  }

  v50 = ~v12;
  v41 = v4;
  v16 = *(v4 + 48);
  v45 = v9;
  v46 = (v10 + 40);
  while (1)
  {
    v17 = (v16 + (v14 << 6));
    result = *v17;
    v19 = v17[2];
    v20 = v17[3];
    v21 = v17[4];
    v22 = v17[5];
    v23 = v17[6];
    v24 = v17[7];
    if (*v17 != v5 || v17[1] != v6)
    {
      result = OUTLINED_FUNCTION_69_10();
      if ((result & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    if (v19 != v53 || v20 != v52)
    {
      result = sub_1C7551DBC();
      if ((result & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    v27 = *(v21 + 16);
    if (v27 != *(v49 + 16))
    {
      goto LABEL_38;
    }

    if (v27 && v21 != v49)
    {
      break;
    }

LABEL_28:
    if (v23)
    {
      if (!v48)
      {
        goto LABEL_38;
      }

      v32 = v22 == v45 && v23 == v48;
      if (!v32 && (sub_1C7551DBC() & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else if (v48)
    {
      goto LABEL_38;
    }

    if (v24 == v47)
    {
      sub_1C7080348(v43);
      v35 = (*(v41 + 48) + (v14 << 6));
      v37 = *v35;
      v36 = v35[1];
      v38 = v35[3];
      v55[2] = v35[2];
      v55[3] = v38;
      v55[0] = v37;
      v55[1] = v36;
      v39 = v35[1];
      *a1 = *v35;
      a1[1] = v39;
      v40 = v35[3];
      a1[2] = v35[2];
      a1[3] = v40;
      sub_1C70802EC(v55, v54);
      return 0;
    }

LABEL_38:
    v14 = (v14 + 1) & v50;
    if (((*(v51 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  v29 = (v21 + 40);
  v30 = v46;
  while (v27)
  {
    result = *(v29 - 1);
    if (result != *(v30 - 1) || *v29 != *v30)
    {
      result = sub_1C7551DBC();
      if ((result & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    v29 += 2;
    v30 += 2;
    if (!--v27)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
  return result;
}

void sub_1C70F50AC()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v48 = *(TokenSuggestion - 8);
  MEMORY[0x1EEE9AC00](TokenSuggestion - 8);
  OUTLINED_FUNCTION_78();
  v47 = v6 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  v45 = v0;
  v11 = *v0;
  sub_1C7551F3C();
  v12 = *(v2 + 16);
  v13 = *(v2 + 80);
  v54 = *(v2 + 24);
  v55 = v12;
  sub_1C75505AC();
  v52 = v13;
  sub_1C7041CDC(v58, v13);
  sub_1C7551FAC();
  v50 = v11 + 56;
  v51 = v11;
  OUTLINED_FUNCTION_9_2();
  v16 = v15 & ~v14;
  if (((*(v17 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
  {
LABEL_47:
    v35 = v45;
    swift_isUniquelyReferenced_nonNull_native();
    v57[0] = *v35;
    sub_1C6FCA6E4(v2, v58);
    sub_1C72F18F0();
    *v35 = v57[0];
    memcpy(v4, v2, 0x78uLL);
LABEL_48:
    OUTLINED_FUNCTION_25_0();
    return;
  }

  v49 = ~v14;
  v18 = *(v2 + 40);
  v43 = *(v2 + 48);
  v44 = v18;
  v19 = *(v2 + 64);
  v42 = *(v2 + 56);
  v41 = v42 ^ 1;
  v53 = v19;
  v39 = v4;
  v40 = (v19 + 40);
  v38 = v2;
  while (1)
  {
    memcpy(v58, (*(v51 + 48) + 120 * v16), 0x78uLL);
    v20 = v58[2] == v55 && v58[3] == v54;
    if (!v20 && (sub_1C7551DBC() & 1) == 0)
    {
      goto LABEL_46;
    }

    if (!v58[8])
    {
      if (v53)
      {
        goto LABEL_46;
      }

      goto LABEL_25;
    }

    if (!v53)
    {
      goto LABEL_46;
    }

    v21 = *(v58[8] + 16);
    if (v21 != *(v53 + 16))
    {
      goto LABEL_46;
    }

    if (v21 && v58[8] != v53)
    {
      break;
    }

LABEL_25:
    v26 = v58[10];
    v27 = *(v58[10] + 16);
    if (v27 == *(v52 + 16))
    {
      if (v27 && v58[10] != v52)
      {
        v46 = v58[10] + ((*(v48 + 80) + 32) & ~*(v48 + 80));
        sub_1C6FCA6E4(v58, v57);
        v28 = 0;
        while (v28 < *(v26 + 16))
        {
          sub_1C70F7684();
          if (v28 >= *(v52 + 16))
          {
            goto LABEL_52;
          }

          v29 = v10;
          v30 = v47;
          sub_1C70F7684();
          v31 = static QueryTokenSuggestion.== infix(_:_:)(v29, v30);
          v32 = v30;
          v10 = v29;
          sub_1C70F76E0(v32, type metadata accessor for QueryTokenSuggestion);
          sub_1C70F76E0(v29, type metadata accessor for QueryTokenSuggestion);
          if ((v31 & 1) == 0)
          {
            sub_1C6FDD548(v58);
            v2 = v38;
            v4 = v39;
            goto LABEL_46;
          }

          if (v27 == ++v28)
          {
            sub_1C6FDD548(v58);
            v2 = v38;
            v4 = v39;
            goto LABEL_34;
          }
        }

        goto LABEL_51;
      }

LABEL_34:
      if (v58[7])
      {
        if (v42)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v33 = v41;
        if (v58[5] != v44)
        {
          v33 = 0;
        }

        if (v33 == 1 && v58[6] == v43)
        {
LABEL_49:
          sub_1C6FDD548(v2);
          v36 = (*(v51 + 48) + 120 * v16);
          memcpy(v57, v36, sizeof(v57));
          memcpy(v4, v36, 0x78uLL);
          sub_1C6FCA6E4(v57, &v56);
          goto LABEL_48;
        }
      }
    }

LABEL_46:
    v16 = (v16 + 1) & v49;
    if (((*(v50 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  v23 = (v58[8] + 40);
  v24 = v40;
  while (v21)
  {
    v25 = *(v23 - 1) == *(v24 - 1) && *v23 == *v24;
    if (!v25 && (sub_1C7551DBC() & 1) == 0)
    {
      goto LABEL_46;
    }

    v23 += 2;
    v24 += 2;
    if (!--v21)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

void sub_1C70F5514()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_51_9(v3);
  sub_1C754F0FC();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_28();
  OUTLINED_FUNCTION_40_13();
  sub_1C70F7844(v5, v6);
  OUTLINED_FUNCTION_31_14();
  OUTLINED_FUNCTION_4_33();
  do
  {
    OUTLINED_FUNCTION_8_25();
    if (v7)
    {
      OUTLINED_FUNCTION_119_5();
      v11 = OUTLINED_FUNCTION_16_21();
      v12(v11);
      OUTLINED_FUNCTION_14_24();
      sub_1C72F1DD4();
      v13 = OUTLINED_FUNCTION_15_26();
      v14(v13);
      goto LABEL_7;
    }

    v8 = OUTLINED_FUNCTION_5_35();
    v2(v8);
    OUTLINED_FUNCTION_40_13();
    sub_1C70F7844(&qword_1EC217798, v9);
    OUTLINED_FUNCTION_30_16();
    v10 = OUTLINED_FUNCTION_20_22();
    v1(v10);
  }

  while ((v0 & 1) == 0);
  v15 = OUTLINED_FUNCTION_53_14();
  v1(v15);
  v16 = OUTLINED_FUNCTION_17_26();
  v2(v16);
LABEL_7:
  OUTLINED_FUNCTION_25_0();
}

void sub_1C70F5684()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_51_9(v3);
  sub_1C754D8BC();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_28();
  OUTLINED_FUNCTION_39_13();
  sub_1C70F7844(v5, v6);
  OUTLINED_FUNCTION_31_14();
  OUTLINED_FUNCTION_4_33();
  do
  {
    OUTLINED_FUNCTION_8_25();
    if (v7)
    {
      OUTLINED_FUNCTION_119_5();
      v11 = OUTLINED_FUNCTION_16_21();
      v12(v11);
      OUTLINED_FUNCTION_14_24();
      sub_1C72F1F74();
      v13 = OUTLINED_FUNCTION_15_26();
      v14(v13);
      goto LABEL_7;
    }

    v8 = OUTLINED_FUNCTION_5_35();
    v2(v8);
    OUTLINED_FUNCTION_39_13();
    sub_1C70F7844(&qword_1EDD0CBF0, v9);
    OUTLINED_FUNCTION_30_16();
    v10 = OUTLINED_FUNCTION_20_22();
    v1(v10);
  }

  while ((v0 & 1) == 0);
  v15 = OUTLINED_FUNCTION_53_14();
  v1(v15);
  v16 = OUTLINED_FUNCTION_17_26();
  v2(v16);
LABEL_7:
  OUTLINED_FUNCTION_25_0();
}

BOOL sub_1C70F57F4(uint64_t a1, unsigned __int16 a2)
{
  OUTLINED_FUNCTION_115_5();
  sub_1C7551F6C();
  sub_1C7551FAC();
  OUTLINED_FUNCTION_23_17();
  while (1)
  {
    OUTLINED_FUNCTION_21_21();
    v8 = v7 & v6;
    if ((v7 & v6) == 0)
    {
      break;
    }

    if (*(*(v4 + 48) + 2 * v3) == a2)
    {
      goto LABEL_6;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_10_32();
  sub_1C72F2114();
  OUTLINED_FUNCTION_49_10(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19);
LABEL_6:
  result = v8 == 0;
  *v2 = a2;
  return result;
}

BOOL sub_1C70F5E40(_BYTE *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v7 = *v3;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](a2);
  sub_1C7551FAC();
  OUTLINED_FUNCTION_23_17();
  while (1)
  {
    v12 = v8 & v10;
    v13 = (v11 << (v8 & v10)) & *(v9 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v13)
    {
      break;
    }

    if (*(*(v7 + 48) + v12) == a2)
    {
      goto LABEL_6;
    }

    v8 = v12 + 1;
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_10_32();
  v14 = a3(a2, v12);
  OUTLINED_FUNCTION_49_10(v14, v15, v16, v17, v18, v19, v20, v21, v23, v24);
LABEL_6:
  result = v13 == 0;
  *a1 = a2;
  return result;
}

BOOL sub_1C70F5F1C(unsigned __int16 *a1, unsigned __int16 a2)
{
  v6 = *v2;
  MEMORY[0x1CCA5E430](*(v6 + 40), a2, 2);
  OUTLINED_FUNCTION_23_17();
  while (1)
  {
    OUTLINED_FUNCTION_21_21();
    v9 = v8 & v7;
    if ((v8 & v7) == 0)
    {
      break;
    }

    if (*(*(v6 + 48) + 2 * v3) == a2)
    {
      goto LABEL_6;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_10_32();
  sub_1C72F26C0(a2, v3);
  OUTLINED_FUNCTION_49_10(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20);
LABEL_6:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

void sub_1C70F6268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_223();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = *v9;
  if ((*v9 & 0xC000000000000001) == 0)
  {
    type metadata accessor for MusicKeywordCompletion();
    sub_1C7551F3C();
    sub_1C75505AC();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_9_2();
    v20 = ~v19;
    while (1)
    {
      v21 = v18 & v20;
      OUTLINED_FUNCTION_34_11();
      if (((*(v15 + 56 + v22) >> v21) & 1) == 0)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v26 = *v9;

        OUTLINED_FUNCTION_66_11();
        sub_1C72F27DC();
        *v9 = v26;
        goto LABEL_16;
      }

      if (static MusicKeywordCompletion.== infix(_:_:)(*(*(v15 + 48) + 8 * v21), v12))
      {
        break;
      }

      v18 = v21 + 1;
    }

    *v14 = *(*(v15 + 48) + 8 * v21);

    goto LABEL_18;
  }

  if (v15 < 0)
  {
    v16 = *v9;
  }

  else
  {
    v16 = v15 & 0xFFFFFFFFFFFFFF8;
  }

  sub_1C75504FC();
  v17 = sub_1C75516CC();

  if (v17)
  {

    type metadata accessor for MusicKeywordCompletion();
    swift_dynamicCast();
    *v14 = a9;
LABEL_18:
    OUTLINED_FUNCTION_224_0();
    return;
  }

  v23 = sub_1C75516BC();
  if (!__OFADD__(v23, 1))
  {
    v24 = sub_1C70F6FD0(v16, v23 + 1);
    if (*(v24 + 24) <= *(v24 + 16))
    {
      sub_1C72ECF50();
    }

    sub_1C70F7218(v25, v24);

    *v10 = v24;
LABEL_16:
    *v14 = v12;
    goto LABEL_18;
  }

  __break(1u);
}

void sub_1C70F6458(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217780);
    OUTLINED_FUNCTION_92_7();
    OUTLINED_FUNCTION_91_6();
    while (1)
    {
      if (!sub_1C75516FC())
      {

        return;
      }

      v3 = OUTLINED_FUNCTION_117_4();
      OUTLINED_FUNCTION_74_6(v3, v4, v5, v6, v7, v8, v9, v10, v17, v18, v19);
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1C72E7258();
      }

      v2 = v20;
      sub_1C75513DC();
      OUTLINED_FUNCTION_57_9();
      if (v13)
      {
        break;
      }

      OUTLINED_FUNCTION_54_12();
LABEL_13:
      OUTLINED_FUNCTION_22_23(v14);
    }

    v15 = 0;
    v16 = (63 - v12) >> 6;
    while (v11 + 1 != v16 || (v15 & 1) == 0)
    {
      OUTLINED_FUNCTION_79_6();
      if (!v13)
      {
        OUTLINED_FUNCTION_52_10();
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1C70F65AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216768);
    v2 = sub_1C755179C();
    v14 = v2;
    sub_1C755165C();
    while (1)
    {
      if (!sub_1C75516FC())
      {

        return v2;
      }

      sub_1C6F65BE8(0, &qword_1EDD0FAB0);
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1C72E921C();
      }

      v2 = v14;
      result = sub_1C75513DC();
      v4 = v14 + 56;
      v5 = -1 << *(v14 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v14 + 48) + 8 * v8) = v13;
      ++*(v14 + 16);
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      v12 = *(v4 + 8 * v7);
      if (v12 != -1)
      {
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1C70F6788(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2177A0);
    v2 = sub_1C755179C();
    v14 = v2;
    sub_1C755165C();
    while (1)
    {
      if (!sub_1C75516FC())
      {

        return v2;
      }

      sub_1C6F65BE8(0, &qword_1EDD0CE30);
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1C72EB650();
      }

      v2 = v14;
      result = sub_1C75513DC();
      v4 = v14 + 56;
      v5 = -1 << *(v14 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v14 + 48) + 8 * v8) = v13;
      ++*(v14 + 16);
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      v12 = *(v4 + 8 * v7);
      if (v12 != -1)
      {
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void sub_1C70F6964(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217790);
    OUTLINED_FUNCTION_92_7();
    OUTLINED_FUNCTION_91_6();
    while (1)
    {
      v3 = sub_1C75516FC();
      if (!v3)
      {

        return;
      }

      v21 = v3;
      v4 = type metadata accessor for Spatial3DCuration.WallpaperSuggester.SuggestionCandidate();
      OUTLINED_FUNCTION_74_6(v4, v5, v6, v7, v8, v9, v10, v11, v20, v21, v22);
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1C72ECA60();
      }

      v2 = v23;
      v12 = sub_1C75513DC();
      v13 = -1 << *(v23 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_54_12();
LABEL_13:
      OUTLINED_FUNCTION_22_23(v16);
    }

    v17 = 0;
    v18 = (63 - v13) >> 6;
    while (v15 + 1 != v18 || (v17 & 1) == 0)
    {
      OUTLINED_FUNCTION_79_6();
      if (!v19)
      {
        OUTLINED_FUNCTION_52_10();
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_1C70F6AC4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217788);
    OUTLINED_FUNCTION_92_7();
    OUTLINED_FUNCTION_91_6();
    while (1)
    {
      if (!sub_1C75516FC())
      {

        return;
      }

      v3 = OUTLINED_FUNCTION_117_4();
      OUTLINED_FUNCTION_74_6(v3, v4, v5, v6, v7, v8, v9, v10, v17, v18, v19);
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1C72ECA74();
      }

      v2 = v20;
      sub_1C75513DC();
      OUTLINED_FUNCTION_57_9();
      if (v13)
      {
        break;
      }

      OUTLINED_FUNCTION_54_12();
LABEL_13:
      OUTLINED_FUNCTION_22_23(v14);
    }

    v15 = 0;
    v16 = (63 - v12) >> 6;
    while (v11 + 1 != v16 || (v15 & 1) == 0)
    {
      OUTLINED_FUNCTION_79_6();
      if (!v13)
      {
        OUTLINED_FUNCTION_52_10();
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1C70F6C18(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216790);
    v2 = sub_1C755179C();
    v14 = v2;
    sub_1C755165C();
    while (1)
    {
      if (!sub_1C75516FC())
      {

        return v2;
      }

      sub_1C6F65BE8(0, &qword_1EDD0CEB0);
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1C72ECDF8();
      }

      v2 = v14;
      result = sub_1C75513DC();
      v4 = v14 + 56;
      v5 = -1 << *(v14 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v14 + 48) + 8 * v8) = v13;
      ++*(v14 + 16);
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      v12 = *(v4 + 8 * v7);
      if (v12 != -1)
      {
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1C70F6DF4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217778);
    v2 = sub_1C755179C();
    v14 = v2;
    sub_1C755165C();
    while (1)
    {
      if (!sub_1C75516FC())
      {

        return v2;
      }

      sub_1C6F65BE8(0, &qword_1EDD06988);
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1C72ECE0C();
      }

      v2 = v14;
      result = sub_1C75513DC();
      v4 = v14 + 56;
      v5 = -1 << *(v14 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v14 + 48) + 8 * v8) = v13;
      ++*(v14 + 16);
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      v12 = *(v4 + 8 * v7);
      if (v12 != -1)
      {
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1C70F6FD0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217770);
    v2 = sub_1C755179C();
    v14 = v2;
    sub_1C755165C();
    while (1)
    {
      if (!sub_1C75516FC())
      {

        return v2;
      }

      type metadata accessor for MusicKeywordCompletion();
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1C72ECF50();
      }

      v2 = v14;
      sub_1C7551F3C();
      sub_1C75505AC();
      result = sub_1C7551FAC();
      v4 = v14 + 56;
      v5 = -1 << *(v14 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v14 + 48) + 8 * v8) = v13;
      ++*(v14 + 16);
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      v12 = *(v4 + 8 * v7);
      if (v12 != -1)
      {
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void sub_1C70F71A8()
{
  OUTLINED_FUNCTION_115();
  sub_1C75513DC();
  OUTLINED_FUNCTION_9_2();
  sub_1C755163C();
  OUTLINED_FUNCTION_104_4();
  *(v0 + 56 + v2) |= v3;
  *(*(v0 + 48) + 8 * v4) = v1;
  ++*(v0 + 16);
}

void sub_1C70F7218(uint64_t a1, uint64_t a2)
{
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C7551FAC();
  OUTLINED_FUNCTION_9_2();
  sub_1C755163C();
  OUTLINED_FUNCTION_104_4();
  *(a2 + 56 + v4) |= v5;
  *(*(a2 + 48) + 8 * v6) = a1;
  ++*(a2 + 16);
}

unint64_t sub_1C70F72B0()
{
  result = qword_1EC217750;
  if (!qword_1EC217750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217750);
  }

  return result;
}

unint64_t sub_1C70F7308()
{
  result = qword_1EC217758;
  if (!qword_1EC217758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217758);
  }

  return result;
}

unint64_t sub_1C70F7360()
{
  result = qword_1EC217760;
  if (!qword_1EC217760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217760);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LibraryUnderstandingAvailabilityMonitor.Error(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for LibraryUnderstandingAvailabilityMonitor.UnavailabilityReasons(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C70F7588()
{
  result = qword_1EC2177B0;
  if (!qword_1EC2177B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2177B0);
  }

  return result;
}

uint64_t sub_1C70F7684()
{
  OUTLINED_FUNCTION_115();
  v2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1C70F76E0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C70F7738()
{
  OUTLINED_FUNCTION_115();
  v2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1C70F7794()
{
  OUTLINED_FUNCTION_115();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_12();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1C70F7844(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_24_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = 0;
  *v10 = a10;
  return result;
}

id OUTLINED_FUNCTION_47_11()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_50_10()
{

  return sub_1C70F76E0(v0, type metadata accessor for Hastings.Asset);
}

uint64_t OUTLINED_FUNCTION_69_10()
{

  return sub_1C7551DBC();
}

uint64_t OUTLINED_FUNCTION_70_7()
{

  return sub_1C7551F3C();
}

uint64_t OUTLINED_FUNCTION_88_5()
{

  return sub_1C75516CC();
}

uint64_t OUTLINED_FUNCTION_89_7()
{

  return sub_1C75504FC();
}

void OUTLINED_FUNCTION_90_8()
{

  sub_1C70F71A8();
}

uint64_t OUTLINED_FUNCTION_91_6()
{

  return sub_1C755165C();
}

uint64_t OUTLINED_FUNCTION_92_7()
{

  return sub_1C755179C();
}

uint64_t OUTLINED_FUNCTION_93_7()
{

  return sub_1C7551DBC();
}

uint64_t OUTLINED_FUNCTION_96_5(__n128 a1, __n128 a2)
{
  *v2 = a1;
  v2[1] = a2;
  v2[2].n128_u64[0] = *(v3 + 32);
  return 1;
}

uint64_t OUTLINED_FUNCTION_112_2@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 8) = v4;
  *(v1 + 16) = v3;

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_113_4()
{

  return sub_1C75504FC();
}

void OUTLINED_FUNCTION_114_5()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_115_5()
{

  return sub_1C7551F3C();
}

uint64_t OUTLINED_FUNCTION_116_5()
{

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_117_4()
{

  return sub_1C6F65BE8(0, v0);
}

uint64_t OUTLINED_FUNCTION_118_4()
{

  return sub_1C7551DBC();
}

uint64_t OUTLINED_FUNCTION_119_5()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

PhotosIntelligence::ExtendedTokenDiagnosticsFile_optional __swiftcall ExtendedTokenDiagnosticsFile.init(rawValue:)(Swift::String rawValue)
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

uint64_t ExtendedTokenDiagnosticsFile.rawValue.getter()
{
  if (*v0)
  {
    return 0x6B6F546C616E6966;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1C70F7D78@<X0>(uint64_t *a1@<X8>)
{
  result = ExtendedTokenDiagnosticsFile.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void static ExtendedTokenDiagnosticsGenerator.save(extendedTokens:diagnosticsFileType:in:)(const void *a1)
{
  if (PFOSVariantHasInternalDiagnostics())
  {
    sub_1C754DBCC();
    swift_allocObject();
    sub_1C754DBBC();
    sub_1C754DB9C();
    v3 = memcpy(__dst, a1, sizeof(__dst));
    sub_1C7017CC4(v3, v4, v5, v6, v7, v8, v9, v10, v19, v20, v21, v22, v23, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __src[0], __src[1], __src[2]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1C7059260();
    v11 = sub_1C754DBAC();
    if (v1)
    {

      sub_1C7027A58(__src);
      __dst[0] = 0;
      __dst[1] = 0xE000000000000000;
      sub_1C755180C();

      memcpy(__dst, a1, sizeof(__dst));
      ExtendedTokenCollection.description.getter();
      MEMORY[0x1CCA5CD70]();

      swift_getErrorValue();
      v13 = sub_1C7551EAC();
      v15 = v14;
      sub_1C70F82D4();
      swift_allocError();
      *v16 = 0xD000000000000010;
      v16[1] = 0x80000001C759E5D0;
      v16[2] = v13;
      v16[3] = v15;
      swift_willThrow();
    }

    else
    {
      v17 = v11;
      v18 = v12;
      sub_1C7027A58(__src);
      sub_1C7161C08();
      sub_1C6FC1640(v17, v18);
    }
  }
}

uint64_t static ExtendedTokenDiagnosticsGenerator.makeExtendedTokens(from:with:)(uint64_t a1, _BYTE *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21[-v6];
  v8 = sub_1C754DD2C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a2)
  {
    v12 = 0x6B6F546C616E6966;
  }

  else
  {
    v12 = 0xD000000000000012;
  }

  if (*a2)
  {
    v13 = 0xEF6C6D782E736E65;
  }

  else
  {
    v13 = 0x80000001C7595AA0;
  }

  sub_1C73C6860(v12, v13, v7);

  if (!v2)
  {
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
    {
      sub_1C7044B24(v7);
      return 0;
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      sub_1C754DB8C();
      swift_allocObject();
      sub_1C754DB7C();
      v15 = sub_1C754DD6C();
      v17 = v16;
      sub_1C70F8328();
      sub_1C754DB5C();
      sub_1C6FC1640(v15, v17);

      memcpy(__dst, __src, sizeof(__dst));
      v18 = memcpy(v21, __src, sizeof(v21));
      a1 = ExtendedTokenCollection.allTokens.getter(v18);
      v19 = OUTLINED_FUNCTION_0_57();
      v20(v19);
      sub_1C7027A58(__dst);
    }
  }

  return a1;
}

unint64_t sub_1C70F82D4()
{
  result = qword_1EC2177B8;
  if (!qword_1EC2177B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2177B8);
  }

  return result;
}

unint64_t sub_1C70F8328()
{
  result = qword_1EDD09928;
  if (!qword_1EDD09928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09928);
  }

  return result;
}

unint64_t sub_1C70F8380()
{
  result = qword_1EC2177C0;
  if (!qword_1EC2177C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2177C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ExtendedTokenDiagnosticsFile(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ExtendedTokenDiagnosticsGenerator(_BYTE *result, int a2, int a3)
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

void sub_1C70F8750(uint64_t a1, char a2)
{
  v3 = sub_1C6F7740C();
  v4 = 0;
  OUTLINED_FUNCTION_4_34();
  v6 = v5 >> 6;
  if (v2)
  {
    while (1)
    {
LABEL_5:
      OUTLINED_FUNCTION_32_0();
      v10 = (*(v3 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];
      v13 = objc_opt_self();
      sub_1C75504FC();
      sub_1C75504FC();
      v14 = [v13 standardUserDefaults];
      v15 = sub_1C755065C();

      OUTLINED_FUNCTION_14_25();
      v16 = sub_1C755065C();
      sub_1C70F8C78(v15, v11, v12, v16, v14);
    }
  }

  while (1)
  {
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      return;
    }

    if (v7 >= v6)
    {
      break;
    }

    ++v4;
    if (*(v3 + 64 + 8 * v7))
    {
      goto LABEL_5;
    }
  }

  if (a2)
  {
    OUTLINED_FUNCTION_14_25();
    sub_1C70F88C4();
  }
}

uint64_t sub_1C70F88C4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1C755065C();
  v2 = [v0 persistentDomainForName_];

  if (v2)
  {
    v3 = MEMORY[0x1E69E6158];
    sub_1C75504AC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1C755BAB0;
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](0xD000000000000027, 0x80000001C759E750);
    OUTLINED_FUNCTION_9_29();
    MEMORY[0x1CCA5CD70](0xD000000000000031, 0x80000001C759E780);
    OUTLINED_FUNCTION_9_29();
    MEMORY[0x1CCA5CD70](39, 0xE100000000000000);
    *(v4 + 56) = v3;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    OUTLINED_FUNCTION_6_6();

    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1C755BAB0;
    v6 = sub_1C755048C();

    sub_1C75519EC();

    *(v5 + 56) = v3;
    *(v5 + 32) = 0;
    *(v5 + 40) = 0xE000000000000000;
    OUTLINED_FUNCTION_6_6();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C755BAB0;
    sub_1C755180C();

    OUTLINED_FUNCTION_9_29();
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 32) = 0xD000000000000024;
    *(v8 + 40) = 0x80000001C759E720;
    OUTLINED_FUNCTION_6_6();
  }
}

id LLMDefaults.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LLMDefaults.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LLMDefaults();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LLMDefaults.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LLMDefaults();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C70F8C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1C755065C();

  [a5 setObject:a1 forKey:v8 inDomain:a4];
}

void sub_1C70F8CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1C755065C();

  [a5 setObject:a1 forKey:a2 inDomain:v8];
}

uint64_t sub_1C70F8DA4()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD07138);
  __swift_project_value_buffer(v0, qword_1EDD07138);
  return sub_1C754FEFC();
}

uint64_t PersonalTraitGeneratorConfiguration.denyList.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
  sub_1C75504FC();

  return sub_1C75504FC();
}

uint64_t PersonalTraitGeneratorConfiguration.randomWeightedSamplingSeed.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t PersonalTraitGeneratorConfiguration.personalTraitsSelectionSteps.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

double PersonalTraitGeneratorConfiguration.representativeMomentConfiguration.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  result = *(v1 + 136);
  v5 = *(v1 + 144);
  *a1 = *(v1 + 104);
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = result;
  *(a1 + 40) = v5;
  return result;
}

double PersonalTraitGeneratorConfiguration.representativeMomentConfiguration.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = *(a1 + 32);
  v5 = *(a1 + 40);
  *(v1 + 104) = *a1;
  *(v1 + 120) = v2;
  *(v1 + 128) = v3;
  *(v1 + 136) = result;
  *(v1 + 144) = v5;
  return result;
}

uint64_t PersonalTraitGeneratorConfiguration.DenyList.init(reject:replace:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

int64x2_t PersonalTraitGeneratorConfiguration.init(personalTraitsSceneNames:personalTraitsDominantRequiredSceneNames:personalTraitsMeaningNames:denyList:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v28 = *a4;
  v7 = objc_opt_self();
  [v7 personalTraitGaussianFilteringCDFThreshold];
  v9 = v8;
  [v7 personalTraitMinRatioOfAssets];
  v11 = v10;
  [v7 personalTraitWeightedRandomSamplingTemperature];
  v13 = v12;
  v14 = [v7 personalTraitWeightedRandomSamplingSeed];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 integerValue];
  }

  else
  {
    v16 = 0;
  }

  v31 = v15 == 0;
  sub_1C707EFC8();
  v18 = v17;
  [v7 useNormalDistributionForMoments];
  [v7 minimumCumulativeDistributionOfMomentFrequency];
  v20 = v19;
  v21 = [v7 enableLibraryUnderstandingPersonalTraits];
  v22 = [v7 useLibraryUnderstandingOvernightProcessedResults];
  v23 = [v7 maximumNumberOfClustersForLibraryUnderstanding];
  v24 = [v7 numberOfRepresentativeAssetsPerClusterForLibraryUnderstanding];
  v25 = [v7 enableClusterByClusterForLibraryUnderstandingPersonalTraits];
  v26 = [v7 maximumNumberOfAssetsPerMomentBatchForLibraryUnderstandingPersonalTraits];
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = v28;
  *(a5 + 40) = 0;
  *(a5 + 48) = 10;
  *(a5 + 56) = v9;
  *(a5 + 64) = v11;
  *(a5 + 72) = v13;
  *(a5 + 80) = v16;
  *(a5 + 88) = v31;
  *(a5 + 96) = v18;
  result = vdupq_n_s64(0x3FE999999999999AuLL);
  *(a5 + 104) = result;
  *(a5 + 120) = 4;
  *(a5 + 128) = 0;
  *(a5 + 136) = v20;
  *(a5 + 144) = 0;
  *(a5 + 152) = 60;
  *(a5 + 160) = 0x3FC999999999999ALL;
  *(a5 + 168) = 12;
  *(a5 + 176) = v21;
  *(a5 + 177) = v22;
  *(a5 + 184) = v23;
  *(a5 + 192) = v24;
  *(a5 + 200) = v25;
  *(a5 + 208) = v26;
  return result;
}

void static PersonalTraitGeneratorConfiguration.fromRemoteConfiguration(eventRecorder:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C754F1CC();
  v11 = sub_1C6F855EC();
  if (!v0)
  {
    v14 = v11;
    v15 = v12;
    v16 = v13;
    sub_1C70F95F4(&v17);
    PersonalTraitGeneratorConfiguration.init(personalTraitsSceneNames:personalTraitsDominantRequiredSceneNames:personalTraitsMeaningNames:denyList:)(v14, v15, v16, &v17, v4);
  }

  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C754F1AC();
  (*(v7 + 8))(v10, v5);
  OUTLINED_FUNCTION_125();
}

void sub_1C70F95F4(uint64_t *a1@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = sub_1C754DD2C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(type metadata accessor for StoryRemoteConfiguration()) init];
  sub_1C6F85DE8();

  if (!v1)
  {
    v8 = sub_1C754DD6C();
    v10 = v9;
    v11 = objc_opt_self();
    v12 = sub_1C754DDCC();
    v29 = 0;
    v13 = [v11 propertyListWithData:v12 options:0 format:0 error:&v29];

    v14 = v29;
    if (!v13)
    {
      v19 = v14;
      sub_1C754DBEC();

      swift_willThrow();
      sub_1C6FC1640(v8, v10);
LABEL_19:
      (*(v4 + 8))(v6, v3);
      return;
    }

    sub_1C75515CC();
    swift_unknownObjectRelease();
    sub_1C6F774EC(v32, &v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0);
    if (!swift_dynamicCast())
    {
      sub_1C70FC298();
      swift_allocError();
      *v20 = 0xD000000000000036;
      v20[1] = 0x80000001C759EC80;
LABEL_18:
      swift_willThrow();
      sub_1C6FC1640(v8, v10);
      __swift_destroy_boxed_opaque_existential_1(v32);
      goto LABEL_19;
    }

    v15 = v28;
    sub_1C6FE3750(0x65546465696E6564, 0xEB00000000736D72, v28);
    if (v31)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
      if (swift_dynamicCast())
      {
        v26 = "list: bad value for key ";
        v27 = v28;
        sub_1C6FE3750(0xD000000000000010, 0x80000001C759ED00, v15);

        if (v31)
        {
          v16 = v27;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C50);
          if (swift_dynamicCast())
          {
            v17 = v28;
            v18 = sub_1C706D154(v16);
            sub_1C6FC1640(v8, v10);
            __swift_destroy_boxed_opaque_existential_1(v32);
            (*(v4 + 8))(v6, v3);
            *a1 = v18;
            a1[1] = v17;
            return;
          }
        }

        else
        {

          sub_1C6FE32F4(&v29);
        }

        v29 = 0;
        v30 = 0xE000000000000000;
        sub_1C755180C();
        MEMORY[0x1CCA5CD70](0xD000000000000038, 0x80000001C759ECC0);
        v22 = v26 | 0x8000000000000000;
        v21 = 0xD000000000000010;
        goto LABEL_17;
      }
    }

    else
    {

      sub_1C6FE32F4(&v29);
    }

    v29 = 0;
    v30 = 0xE000000000000000;
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](0xD000000000000038, 0x80000001C759ECC0);
    v21 = 0x65546465696E6564;
    v22 = 0xEB00000000736D72;
LABEL_17:
    MEMORY[0x1CCA5CD70](v21, v22);
    v23 = v29;
    v24 = v30;
    sub_1C70FC298();
    swift_allocError();
    *v25 = v23;
    v25[1] = v24;
    goto LABEL_18;
  }
}

uint64_t sub_1C70F9AD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x80000001C759E8F0 == a2;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000028 && 0x80000001C759E910 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001ALL && 0x80000001C759E940 == a2;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7473694C796E6564 && a2 == 0xE800000000000000;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001FLL && 0x80000001C759E960 == a2;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001DLL && 0x80000001C759E980 == a2;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001DLL && 0x80000001C759E9A0 == a2;
              if (v11 || (sub_1C7551DBC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD00000000000002CLL && 0x80000001C759E9C0 == a2;
                if (v12 || (sub_1C7551DBC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000021 && 0x80000001C759E9F0 == a2;
                  if (v13 || (sub_1C7551DBC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD00000000000001ALL && 0x80000001C759EA20 == a2;
                    if (v14 || (sub_1C7551DBC() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD00000000000001CLL && 0x80000001C759EA40 == a2;
                      if (v15 || (sub_1C7551DBC() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000021 && 0x80000001C759EA60 == a2;
                        if (v16 || (sub_1C7551DBC() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000026 && 0x80000001C759EA90 == a2;
                          if (v17 || (sub_1C7551DBC() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD00000000000002BLL && 0x80000001C759EAC0 == a2;
                            if (v18 || (sub_1C7551DBC() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000017 && 0x80000001C759EAF0 == a2;
                              if (v19 || (sub_1C7551DBC() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000028 && 0x80000001C759EB10 == a2;
                                if (v20 || (sub_1C7551DBC() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000030 && 0x80000001C759EB40 == a2;
                                  if (v21 || (sub_1C7551DBC() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD00000000000002ELL && 0x80000001C759EB80 == a2;
                                    if (v22 || (sub_1C7551DBC() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD00000000000003DLL && 0x80000001C759EBB0 == a2;
                                      if (v23 || (sub_1C7551DBC() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD00000000000002ALL && 0x80000001C759EBF0 == a2;
                                        if (v24 || (sub_1C7551DBC() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else if (a1 == 0xD000000000000023 && 0x80000001C759EC20 == a2)
                                        {

                                          return 20;
                                        }

                                        else
                                        {
                                          v26 = sub_1C7551DBC();

                                          if (v26)
                                          {
                                            return 20;
                                          }

                                          else
                                          {
                                            return 21;
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
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C70FA0DC(char a1)
{
  result = 0x7473694C796E6564;
  switch(a1)
  {
    case 1:
    case 15:
      result = 0xD000000000000028;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD00000000000001FLL;
      break;
    case 5:
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 7:
      result = 0xD00000000000002CLL;
      break;
    case 8:
    case 11:
      result = 0xD000000000000021;
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 10:
      result = 0xD00000000000001CLL;
      break;
    case 12:
      result = 0xD000000000000026;
      break;
    case 13:
      result = 0xD00000000000002BLL;
      break;
    case 14:
      result = 0xD000000000000017;
      break;
    case 16:
      result = 0xD000000000000030;
      break;
    case 17:
      result = 0xD00000000000002ELL;
      break;
    case 18:
      result = 0xD00000000000003DLL;
      break;
    case 19:
      result = 0xD00000000000002ALL;
      break;
    case 20:
      result = 0xD000000000000023;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t sub_1C70FA358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C70F9AD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C70FA380@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C70FA0D4();
  *a1 = result;
  return result;
}

uint64_t sub_1C70FA3A8(uint64_t a1)
{
  v2 = sub_1C70FB980();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70FA3E4(uint64_t a1)
{
  v2 = sub_1C70FB980();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PersonalTraitGeneratorConfiguration.encode(to:)()
{
  OUTLINED_FUNCTION_18_18();
  v41 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2177C8);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - v8;
  v11 = *v0;
  v10 = v0[1];
  v12 = v0[3];
  v39 = v0[2];
  v40 = v10;
  v37 = v0[4];
  v38 = v12;
  v36 = *(v0 + 40);
  v35 = v0[6];
  v33 = v0[10];
  v34 = *(v0 + 88);
  v32 = v0[12];
  v13 = v0[13];
  v14 = v0[14];
  v31 = v0[15];
  v30 = *(v0 + 128);
  v15 = v0[17];
  v29 = *(v0 + 144);
  v28 = v0[19];
  v27 = v0[21];
  v26 = *(v0 + 176);
  v25 = *(v0 + 177);
  v16 = v0[24];
  v23[0] = v0[23];
  v23[1] = v16;
  v24 = *(v0 + 200);
  v17 = v0[26];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C70FB980();
  sub_1C75504FC();
  OUTLINED_FUNCTION_14_26();
  sub_1C755200C();
  v43 = v11;
  v49 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
  OUTLINED_FUNCTION_6_3(&qword_1EDD0CEF0);
  OUTLINED_FUNCTION_11_28();
  v42 = v4;
  v18 = v9;
  v19 = v41;
  sub_1C7551D2C();
  if (v19)
  {

    (*(v6 + 8))(v9, v42);
  }

  else
  {
    v21 = v38;
    v20 = v39;
    v41 = v17;

    v43 = v40;
    v49 = 1;
    OUTLINED_FUNCTION_11_28();
    OUTLINED_FUNCTION_22_24();
    v43 = v20;
    v49 = 2;
    OUTLINED_FUNCTION_11_28();
    OUTLINED_FUNCTION_22_24();
    v43 = v21;
    v44 = v37;
    v49 = 3;
    sub_1C70FB9D4();
    sub_1C75504FC();
    sub_1C75504FC();
    OUTLINED_FUNCTION_11_28();
    sub_1C7551D2C();

    OUTLINED_FUNCTION_4_35(4);
    sub_1C7551CDC();
    OUTLINED_FUNCTION_4_35(5);
    sub_1C7551D0C();
    OUTLINED_FUNCTION_17_27(6);
    sub_1C7551CEC();
    OUTLINED_FUNCTION_17_27(7);
    sub_1C7551CEC();
    OUTLINED_FUNCTION_17_27(8);
    sub_1C7551CEC();
    LOBYTE(v43) = 9;
    sub_1C7551CAC();
    v43 = v32;
    v49 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2177D8);
    sub_1C70FBB90(&qword_1EC2177E0, sub_1C70FBA28);
    OUTLINED_FUNCTION_11_28();
    sub_1C7551D2C();
    v43 = v13;
    v44 = v14;
    v45 = v31;
    v46 = v30;
    v47 = v15;
    v48 = v29;
    v49 = 11;
    sub_1C70FBA7C();
    OUTLINED_FUNCTION_11_28();
    OUTLINED_FUNCTION_2_43();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_4_35(12);
    OUTLINED_FUNCTION_2_43();
    sub_1C7551D0C();
    OUTLINED_FUNCTION_17_27(13);
    sub_1C7551CEC();
    OUTLINED_FUNCTION_4_35(14);
    OUTLINED_FUNCTION_2_43();
    sub_1C7551D0C();
    OUTLINED_FUNCTION_4_35(15);
    OUTLINED_FUNCTION_2_43();
    sub_1C7551CDC();
    OUTLINED_FUNCTION_4_35(16);
    OUTLINED_FUNCTION_2_43();
    sub_1C7551CDC();
    OUTLINED_FUNCTION_4_35(17);
    OUTLINED_FUNCTION_2_43();
    sub_1C7551D0C();
    OUTLINED_FUNCTION_4_35(18);
    OUTLINED_FUNCTION_2_43();
    sub_1C7551D0C();
    OUTLINED_FUNCTION_4_35(19);
    OUTLINED_FUNCTION_2_43();
    sub_1C7551CDC();
    OUTLINED_FUNCTION_4_35(20);
    v22 = v42;
    sub_1C7551D0C();
    (*(v6 + 8))(v18, v22);
  }

  OUTLINED_FUNCTION_19_21();
}

void PersonalTraitGeneratorConfiguration.init(from:)()
{
  OUTLINED_FUNCTION_18_18();
  v2 = v1;
  v41 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2177F0);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = objc_opt_self();
  [v5 personalTraitGaussianFilteringCDFThreshold];
  [v5 personalTraitMinRatioOfAssets];
  [v5 personalTraitWeightedRandomSamplingTemperature];
  v6 = [v5 personalTraitWeightedRandomSamplingSeed];
  [v6 integerValue];

  sub_1C707EFC8();
  [v5 useNormalDistributionForMoments];
  [v5 minimumCumulativeDistributionOfMomentFrequency];
  [v5 enableLibraryUnderstandingPersonalTraits];
  [v5 useLibraryUnderstandingOvernightProcessedResults];
  [v5 maximumNumberOfClustersForLibraryUnderstanding];
  [v5 numberOfRepresentativeAssetsPerClusterForLibraryUnderstanding];
  [v5 enableClusterByClusterForLibraryUnderstandingPersonalTraits];
  [v5 maximumNumberOfAssetsPerMomentBatchForLibraryUnderstandingPersonalTraits];
  v43 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C70FB980();
  OUTLINED_FUNCTION_14_26();
  sub_1C7551FFC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
    OUTLINED_FUNCTION_9_30(&qword_1EDD0CEE8);
    OUTLINED_FUNCTION_12_27();
    OUTLINED_FUNCTION_14_26();
    OUTLINED_FUNCTION_5_0();
    sub_1C7551C1C();
    v40 = v45;
    OUTLINED_FUNCTION_12_27();
    OUTLINED_FUNCTION_14_26();
    OUTLINED_FUNCTION_5_0();
    sub_1C7551C1C();
    v39 = v45;
    OUTLINED_FUNCTION_12_27();
    OUTLINED_FUNCTION_14_26();
    OUTLINED_FUNCTION_5_0();
    sub_1C7551C1C();
    v7 = v45;
    sub_1C70FBB3C();
    OUTLINED_FUNCTION_12_27();
    OUTLINED_FUNCTION_5_0();
    sub_1C7551C1C();
    v37 = v46;
    v38 = v45;
    OUTLINED_FUNCTION_1_48(4);
    v36 = sub_1C7551BCC();
    OUTLINED_FUNCTION_1_48(5);
    v8 = sub_1C7551BFC();
    OUTLINED_FUNCTION_1_48(6);
    sub_1C7551BDC();
    v10 = v9;
    OUTLINED_FUNCTION_1_48(7);
    sub_1C7551BDC();
    v12 = v11;
    OUTLINED_FUNCTION_1_48(8);
    sub_1C7551BDC();
    v14 = v13;
    LOBYTE(v45) = 9;
    OUTLINED_FUNCTION_5_0();
    v15 = sub_1C7551B9C();
    v87 = v16 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2177D8);
    sub_1C70FBB90(&qword_1EC217800, sub_1C70FBC08);
    OUTLINED_FUNCTION_12_27();
    sub_1C7551C1C();

    v17 = v45;
    LOBYTE(v44[0]) = 11;
    sub_1C70FBC5C();
    OUTLINED_FUNCTION_12_27();
    sub_1C7551C1C();
    v18 = v45;
    v19 = v46;
    v33 = v47;
    v20 = v49;
    v34 = v48;
    v35 = v50;
    OUTLINED_FUNCTION_0_59(12);
    v21 = sub_1C7551BFC();
    OUTLINED_FUNCTION_0_59(13);
    sub_1C7551BDC();
    v23 = v22;
    OUTLINED_FUNCTION_0_59(14);
    v32 = sub_1C7551BFC();
    OUTLINED_FUNCTION_0_59(15);
    v31 = sub_1C7551BCC();
    OUTLINED_FUNCTION_0_59(16);
    v30 = sub_1C7551BCC();
    OUTLINED_FUNCTION_0_59(17);
    v29 = sub_1C7551BFC();
    OUTLINED_FUNCTION_0_59(18);
    v28 = sub_1C7551BFC();
    OUTLINED_FUNCTION_0_59(19);
    v27 = sub_1C7551BCC();
    v80 = 20;
    v26 = sub_1C7551BFC();
    v30 &= 1u;
    v31 &= 1u;
    v24 = OUTLINED_FUNCTION_8_26();
    v25(v24);
    v44[0] = v40;
    v44[1] = v39;
    v44[2] = v7;
    v44[3] = v38;
    v44[4] = v37;
    LOBYTE(v44[5]) = v36 & 1;
    *(&v44[5] + 1) = v88[0];
    HIDWORD(v44[5]) = *(v88 + 3);
    v44[6] = v8;
    v44[7] = v10;
    v44[8] = v12;
    v44[9] = v14;
    v44[10] = v15;
    v42 = v87;
    LOBYTE(v44[11]) = v87;
    HIDWORD(v44[11]) = *&v86[3];
    *(&v44[11] + 1) = *v86;
    v44[12] = v17;
    v44[13] = v18;
    v44[14] = v19;
    v44[15] = v33;
    LOBYTE(v44[16]) = v34;
    *(&v44[16] + 1) = *v85;
    HIDWORD(v44[16]) = *&v85[3];
    v44[17] = v20;
    LOBYTE(v44[18]) = v35;
    *(&v44[18] + 1) = *v84;
    HIDWORD(v44[18]) = *&v84[3];
    v44[19] = v21;
    v44[20] = v23;
    v44[21] = v32;
    LOBYTE(v44[22]) = v31;
    BYTE1(v44[22]) = v30;
    HIWORD(v44[22]) = v83;
    *(&v44[22] + 2) = v82;
    v44[23] = v29;
    v44[24] = v28;
    LOBYTE(v44[25]) = v27 & 1;
    HIDWORD(v44[25]) = *&v81[3];
    *(&v44[25] + 1) = *v81;
    v44[26] = v26;
    memcpy(v41, v44, 0xD8uLL);
    sub_1C70592B4(v44, &v45);
    __swift_destroy_boxed_opaque_existential_1(v43);
    v45 = v40;
    v46 = v39;
    v47 = v7;
    v48 = v38;
    v49 = v37;
    v50 = v36 & 1;
    *v51 = v88[0];
    *&v51[3] = *(v88 + 3);
    v52 = v8;
    v53 = v10;
    v54 = v12;
    v55 = v14;
    v56 = v15;
    v57 = v42;
    *v58 = *v86;
    *&v58[3] = *&v86[3];
    v59 = v17;
    v60 = v18;
    v61 = v19;
    v62 = v33;
    v63 = v34;
    *v64 = *v85;
    *&v64[3] = *&v85[3];
    v65 = v20;
    v66 = v35;
    *v67 = *v84;
    *&v67[3] = *&v84[3];
    v68 = v21;
    v69 = v23;
    v70 = v32;
    v71 = v31;
    v72 = v30;
    v74 = v83;
    v73 = v82;
    v75 = v29;
    v76 = v28;
    v77 = v27 & 1;
    *&v78[3] = *&v81[3];
    *v78 = *v81;
    v79 = v26;
    sub_1C7059364(&v45);
  }

  OUTLINED_FUNCTION_19_21();
}

Swift::String_optional __swiftcall PersonalTraitGeneratorConfiguration.DenyList.scrub(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *v1;
  v5 = v1[1];
  if (sub_1C7009C30(a1._countAndFlagsBits, a1._object, v4))
  {
    countAndFlagsBits = 0;
    object = 0;
  }

  else
  {
    if (*(v5 + 16))
    {
      v6 = sub_1C6F78124(countAndFlagsBits, object);
      if (v7)
      {
        v8 = (*(v5 + 56) + 16 * v6);
        countAndFlagsBits = *v8;
        object = v8[1];
      }
    }

    sub_1C75504FC();
  }

  v9 = countAndFlagsBits;
  v10 = object;
  result.value._object = v10;
  result.value._countAndFlagsBits = v9;
  return result;
}

uint64_t sub_1C70FB3F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656A6572 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6563616C706572 && a2 == 0xE700000000000000)
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

uint64_t sub_1C70FB4BC(char a1)
{
  if (a1)
  {
    return 0x6563616C706572;
  }

  else
  {
    return 0x7463656A6572;
  }
}

uint64_t sub_1C70FB4F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C70FB3F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C70FB520(uint64_t a1)
{
  v2 = sub_1C70FBCB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70FB55C(uint64_t a1)
{
  v2 = sub_1C70FBCB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PersonalTraitGeneratorConfiguration.DenyList.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217810);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  v10 = *(v0 + 8);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v9 = sub_1C70FBCB0();
  sub_1C75504FC();
  sub_1C755200C();
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
  OUTLINED_FUNCTION_6_3(&qword_1EDD0CEF0);
  OUTLINED_FUNCTION_13_4();

  if (!v9)
  {
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C50);
    sub_1C703195C(&qword_1EDD06C70);
    OUTLINED_FUNCTION_13_4();
  }

  (*(v5 + 8))(v8, v3);
  OUTLINED_FUNCTION_125();
}

void PersonalTraitGeneratorConfiguration.DenyList.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_124();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217820);
  OUTLINED_FUNCTION_3_0();
  v17 = v16;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v21 - v19;
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_1C70FBCB0();
  sub_1C7551FFC();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
    v22 = 0;
    OUTLINED_FUNCTION_9_30(&qword_1EDD0CEE8);
    OUTLINED_FUNCTION_10_34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C50);
    v22 = 1;
    sub_1C703195C(&qword_1EC216128);
    OUTLINED_FUNCTION_10_34();
    (*(v17 + 8))(v20, v15);
    *v14 = a10;
    v14[1] = a10;
    sub_1C75504FC();
    sub_1C75504FC();
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_125();
}

unint64_t sub_1C70FB980()
{
  result = qword_1EDD0D210;
  if (!qword_1EDD0D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D210);
  }

  return result;
}

unint64_t sub_1C70FB9D4()
{
  result = qword_1EC2177D0;
  if (!qword_1EC2177D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2177D0);
  }

  return result;
}

unint64_t sub_1C70FBA28()
{
  result = qword_1EC2177E8;
  if (!qword_1EC2177E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2177E8);
  }

  return result;
}

unint64_t sub_1C70FBA7C()
{
  result = qword_1EDD09588;
  if (!qword_1EDD09588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09588);
  }

  return result;
}

uint64_t sub_1C70FBAD0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC215BF0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C70FBB3C()
{
  result = qword_1EC2177F8;
  if (!qword_1EC2177F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2177F8);
  }

  return result;
}

uint64_t sub_1C70FBB90(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2177D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C70FBC08()
{
  result = qword_1EC217808;
  if (!qword_1EC217808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217808);
  }

  return result;
}

unint64_t sub_1C70FBC5C()
{
  result = qword_1EDD09580;
  if (!qword_1EDD09580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09580);
  }

  return result;
}

unint64_t sub_1C70FBCB0()
{
  result = qword_1EC217818;
  if (!qword_1EC217818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217818);
  }

  return result;
}

uint64_t sub_1C70FBD0C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 216))
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

uint64_t sub_1C70FBD4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C70FBDC0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1C70FBE00(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for PersonalTraitGeneratorConfiguration.DenyList.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PersonalTraitGeneratorConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEC)
  {
    if (a2 + 20 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 20) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 21;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v5 = v6 - 21;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PersonalTraitGeneratorConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEB)
  {
    v6 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
          *result = a2 + 20;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C70FC08C()
{
  result = qword_1EC217828;
  if (!qword_1EC217828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217828);
  }

  return result;
}

unint64_t sub_1C70FC0E4()
{
  result = qword_1EC217830;
  if (!qword_1EC217830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217830);
  }

  return result;
}

unint64_t sub_1C70FC13C()
{
  result = qword_1EC217838;
  if (!qword_1EC217838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217838);
  }

  return result;
}

unint64_t sub_1C70FC194()
{
  result = qword_1EC217840;
  if (!qword_1EC217840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217840);
  }

  return result;
}

unint64_t sub_1C70FC1EC()
{
  result = qword_1EDD0D200;
  if (!qword_1EDD0D200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D200);
  }

  return result;
}

unint64_t sub_1C70FC244()
{
  result = qword_1EDD0D208;
  if (!qword_1EDD0D208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D208);
  }

  return result;
}

unint64_t sub_1C70FC298()
{
  result = qword_1EC217848;
  if (!qword_1EC217848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217848);
  }

  return result;
}

uint64_t sub_1C70FC2EC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1C7550F8C();

  return v4;
}

uint64_t sub_1C70FC354(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x80000001C759EDF0 == a2;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000021 && 0x80000001C759EE10 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001BLL && 0x80000001C759EE40 == a2)
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

unint64_t sub_1C70FC46C(char a1)
{
  result = 0xD000000000000016;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD000000000000021;
    }

    else
    {
      return 0xD00000000000001BLL;
    }
  }

  return result;
}

uint64_t sub_1C70FC4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C70FC354(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C70FC4F4(uint64_t a1)
{
  v2 = sub_1C70FC710();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70FC530(uint64_t a1)
{
  v2 = sub_1C70FC710();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VersionDiagnostics.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217868);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v13 - v7;
  v9 = v1[2];
  v13[3] = v1[3];
  v13[4] = v9;
  v10 = v1[4];
  v13[1] = v1[5];
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C70FC710();
  sub_1C755200C();
  v16 = 0;
  v11 = v13[5];
  sub_1C7551CCC();
  if (!v11)
  {
    v15 = 1;
    sub_1C7551CCC();
    v14 = 2;
    sub_1C7551CCC();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1C70FC710()
{
  result = qword_1EDD0A690;
  if (!qword_1EDD0A690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A690);
  }

  return result;
}

uint64_t VersionDiagnostics.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217870);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C70FC710();
  sub_1C7551FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_1C7551BBC();
  v24 = v12;
  v26 = 1;
  v22 = sub_1C7551BBC();
  v23 = v13;
  v25 = 2;
  v14 = sub_1C7551BBC();
  v16 = v15;
  v17 = v14;
  (*(v7 + 8))(v10, v5);
  v19 = v23;
  v18 = v24;
  *a2 = v11;
  a2[1] = v18;
  a2[2] = v22;
  a2[3] = v19;
  a2[4] = v17;
  a2[5] = v16;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C70FC9E8()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC217850);
  __swift_project_value_buffer(v0, qword_1EC217850);
  return sub_1C754FEFC();
}

uint64_t static VersionDiagnosticsGenerator.save()()
{
  if (PFOSVariantHasInternalDiagnostics())
  {
    sub_1C755180C();

    v0 = [objc_opt_self() processInfo];
    v1 = [v0 operatingSystemVersionString];

    sub_1C755068C();
    OUTLINED_FUNCTION_3_44();

    v2 = sub_1C755065C();
    v3 = PFStringVersionOfRunTimeLibrary();

    sub_1C755068C();
    sub_1C755180C();

    OUTLINED_FUNCTION_3_44();

    v4 = sub_1C755065C();
    v5 = PFStringVersionOfRunTimeLibrary();

    sub_1C755068C();
    sub_1C755180C();

    OUTLINED_FUNCTION_3_44();

    sub_1C754DBCC();
    swift_allocObject();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C754DBBC();
    sub_1C754DB9C();
    v12 = 0xD00000000000001ALL;
    v13 = 0x80000001C759ED70;
    v14 = 0xD000000000000018;
    v15 = 0x80000001C759EDB0;
    v16 = 0xD00000000000001BLL;
    v17 = 0x80000001C759EDD0;
    sub_1C70FD134();
    v6 = sub_1C754DBAC();
    v8 = v7;
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217878);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C755BAB0;
    strcpy((inited + 32), "versions.xml");
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    *(inited + 48) = v6;
    *(inited + 56) = v8;
    v10 = sub_1C75504DC();

    return v10;
  }

  else
  {

    return sub_1C75504DC();
  }
}

unint64_t sub_1C70FD134()
{
  result = qword_1EDD0A678;
  if (!qword_1EDD0A678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A678);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1C70FD19C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1C70FD1DC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for VersionDiagnosticsGenerator(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for VersionDiagnostics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C70FD3C4()
{
  result = qword_1EC217880;
  if (!qword_1EC217880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217880);
  }

  return result;
}

unint64_t sub_1C70FD41C()
{
  result = qword_1EDD0A680;
  if (!qword_1EDD0A680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A680);
  }

  return result;
}

unint64_t sub_1C70FD474()
{
  result = qword_1EDD0A688;
  if (!qword_1EDD0A688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A688);
  }

  return result;
}

uint64_t QueryDisambiguationSuggestionProducer.produceEventSuggestions(forQueryToken:withAssetUUIDs:recipe:eventRecorder:progressReporter:)(const void *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v32 = a5;
  v9 = sub_1C754F38C();
  MEMORY[0x1EEE9AC00](v9);
  memcpy(v31, a1, 0x78uLL);
  v10 = *a3;
  v27 = a3[1];
  v11 = sub_1C754FEEC();
  v12 = sub_1C75511BC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1C6F5C000, v11, v12, "Producing event suggestions for disambiguation", v13, 2u);
    MEMORY[0x1CCA5F8E0](v13, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  sub_1C754F1CC();
  v14 = v32;
  sub_1C754F2CC();
  if (v5)
  {
    v15 = a4[3];
    OUTLINED_FUNCTION_0_61();
    sub_1C754F1AC();
    v16 = OUTLINED_FUNCTION_1_49();
    v17(v16);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v18 + 8))(v14);
  }

  else
  {
    memcpy(v30, v31, sizeof(v30));
    v29[0] = v10;
    v29[1] = v27;
    v19 = sub_1C70FD824(v30, a2, v29);
    sub_1C6FCA6E4(v31, v30);
    v20 = sub_1C754FEEC();
    v21 = sub_1C75511BC();
    sub_1C6FDD548(v31);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30[0] = v23;
      *v22 = 136380675;
      *(v22 + 4) = sub_1C6F765A4(v31[2], v31[3], v30);
      _os_log_impl(&dword_1C6F5C000, v20, v21, "Finished producing event suggestions for query token %{private}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1CCA5F8E0](v23, -1, -1);
      MEMORY[0x1CCA5F8E0](v22, -1, -1);
    }

    sub_1C754F2EC();
    OUTLINED_FUNCTION_0_61();
    v15 = v19;
    sub_1C754F1AC();
    v25 = OUTLINED_FUNCTION_1_49();
    v26(v25);
  }

  return v15;
}

uint64_t sub_1C70FD824(void *__src, uint64_t a2, uint64_t *a3)
{
  v127 = *MEMORY[0x1E69E9840];
  memcpy(__dst, __src, sizeof(__dst));
  if (!*(a2 + 16))
  {
    v10 = sub_1C754FEEC();
    v11 = sub_1C755119C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1C6F5C000, v10, v11, "No assets to be used for generating the event suggestions", v12, 2u);
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  v6 = a3[1];
  v108 = *a3;
  v114 = v6;
  sub_1C75504FC();
  v7 = sub_1C754FEEC();
  v8 = sub_1C75511BC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(a2 + 16);

    _os_log_impl(&dword_1C6F5C000, v7, v8, "There are %ld assets that are used for generating event suggestions", v9, 0xCu);
    MEMORY[0x1CCA5F8E0](v9, -1, -1);
  }

  else
  {
  }

  v14 = sub_1C70FE268(a2);
  v113 = sub_1C70FE774();
  v15 = sub_1C70FEBDC(v14, v113);

  sub_1C75504FC();
  v16 = sub_1C754FEEC();
  v17 = sub_1C75511BC();

  LODWORD(v107) = v17;
  v110 = v16;
  v112 = v3;
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v124 = v105;
    v106 = v18;
    *v18 = 136315138;
    v19 = *(v15 + 16);
    v20 = MEMORY[0x1E69E7CC0];
    if (v19)
    {
      v123 = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C();
      v121 = v123;
      v23 = sub_1C70D4544(v15);
      v24 = 0;
      v25 = v15 + 64;
      v115 = v21;
      v116 = v19;
      v111 = v15 + 72;
      v117 = v15 + 64;
      do
      {
        if (v23 < 0 || v23 >= 1 << *(v15 + 32))
        {
          goto LABEL_78;
        }

        v26 = v23 >> 6;
        if ((*(v25 + 8 * (v23 >> 6)) & (1 << v23)) == 0)
        {
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
          goto LABEL_84;
        }

        if (*(v15 + 36) != v21)
        {
          goto LABEL_80;
        }

        v119 = v24;
        v120 = v21;
        LODWORD(v118) = v22;
        v27 = (*(v15 + 48) + 16 * v23);
        v28 = v27[1];
        v29 = *(*(v15 + 56) + 8 * v23);
        v125[0] = *v27;
        v125[1] = v28;
        swift_bridgeObjectRetain_n();
        sub_1C75504FC();
        MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
        v122 = *(v29 + 16);
        v30 = sub_1C7551D8C();
        MEMORY[0x1CCA5CD70](v30);

        v31 = v125[0];
        v32 = v121;
        v123 = v121;
        v33 = v15;
        v34 = v121[2];
        if (v34 >= v121[3] >> 1)
        {
          sub_1C6F7ED9C();
          v32 = v123;
        }

        v32[2] = v34 + 1;
        v35 = &v32[2 * v34];
        v35[4] = v31;
        v35[5] = v28;
        v36 = 1 << *(v33 + 32);
        if (v23 >= v36)
        {
          goto LABEL_81;
        }

        v25 = v117;
        v37 = *(v117 + 8 * v26);
        if ((v37 & (1 << v23)) == 0)
        {
          goto LABEL_82;
        }

        v15 = v33;
        v121 = v32;
        if (*(v33 + 36) != v120)
        {
          goto LABEL_83;
        }

        v38 = v37 & (-2 << (v23 & 0x3F));
        if (v38)
        {
          v36 = __clz(__rbit64(v38)) | v23 & 0x7FFFFFFFFFFFFFC0;
          v39 = v116;
          v40 = v119;
        }

        else
        {
          v41 = v26 << 6;
          v42 = v26 + 1;
          v43 = (v111 + 8 * v26);
          v39 = v116;
          v40 = v119;
          while (v42 < (v36 + 63) >> 6)
          {
            v45 = *v43++;
            v44 = v45;
            v41 += 64;
            ++v42;
            if (v45)
            {
              sub_1C6F9ED50(v23, v120, v118 & 1);
              v36 = __clz(__rbit64(v44)) + v41;
              goto LABEL_27;
            }
          }

          sub_1C6F9ED50(v23, v120, v118 & 1);
        }

LABEL_27:
        v22 = 0;
        v24 = v40 + 1;
        v23 = v36;
        v21 = v115;
      }

      while (v24 != v39);
      v20 = v121;
    }

    v46 = MEMORY[0x1CCA5D090](v20, MEMORY[0x1E69E6158]);
    v48 = v47;

    v49 = sub_1C6F765A4(v46, v48, &v124);

    v50 = v106;
    *(v106 + 1) = v49;
    _os_log_impl(&dword_1C6F5C000, v110, v107, "The number of assets per highlight = %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v105);
    MEMORY[0x1CCA5F8E0](v105, -1, -1);
    MEMORY[0x1CCA5F8E0](v50, -1, -1);
  }

  else
  {
  }

  v51 = 0;
  v121 = 0;
  v52 = v15 + 64;
  v53 = 1 << *(v15 + 32);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v54 & *(v15 + 64);
  v56 = (v53 + 63) >> 6;
  v110 = v114 + 4;
  v57 = MEMORY[0x1E69E7CC0];
  v115 = v56;
  v116 = v15 + 64;
  v109 = v15;
  if (!v55)
  {
    goto LABEL_34;
  }

LABEL_38:
  while (1)
  {
    v117 = v51;
    v118 = v55;
    v59 = __clz(__rbit64(v55)) | (v51 << 6);
    v60 = *(v15 + 56);
    v61 = (*(v15 + 48) + 16 * v59);
    v62 = v61[1];
    v120 = *v61;
    v63 = *(v60 + 8 * v59);
    isa = v114[2].isa;
    sub_1C75504FC();
    v119 = v62;
    if (isa)
    {
      break;
    }

    sub_1C75504FC();
    v65 = 0;
    v66 = 0;
LABEL_51:
    v84 = v113;
    if (*(v113 + 16) && (v85 = sub_1C6F78124(v120, v119), (v86 & 1) != 0))
    {
      v87 = *(*(v84 + 56) + 8 * v85);
      sub_1C75504FC();
    }

    else
    {
      v87 = MEMORY[0x1E69E7CD0];
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB3430();
      v57 = v92;
    }

    v88 = *(v57 + 16);
    v89 = v118;
    if (v88 >= *(v57 + 24) >> 1)
    {
      sub_1C6FB3430();
      v89 = v118;
      v57 = v93;
    }

    v55 = (v89 - 1) & v89;
    *(v57 + 16) = v88 + 1;
    v90 = (v57 + 48 * v88);
    v91 = v119;
    v90[4] = v120;
    v90[5] = v91;
    v90[6] = v66;
    v90[7] = v65;
    v90[8] = v87;
    v90[9] = v63;
    v52 = v116;
    v51 = v117;
    v56 = v115;
    if (!v55)
    {
LABEL_34:
      while (1)
      {
        v58 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          break;
        }

        if (v58 >= v56)
        {

          memcpy(v125, __dst, sizeof(v125));
          if (sub_1C70FEFF4(v125))
          {
            v125[0] = v57;
            sub_1C75504FC();
            v83 = v121;
            sub_1C7100360(v125);
            if (v83)
            {
              goto LABEL_88;
            }

            v57 = v125[0];
          }

          sub_1C7033F04(v108, v57);
          v95 = v94;
          v97 = v96;
          if ((v96 & 1) == 0)
          {
LABEL_65:
            sub_1C739C8FC();
            v99 = v98;
            goto LABEL_72;
          }

          sub_1C7551DEC();
          swift_unknownObjectRetain_n();
          v100 = swift_dynamicCastClass();
          if (!v100)
          {
            swift_unknownObjectRelease();
            v100 = MEMORY[0x1E69E7CC0];
          }

          v101 = *(v100 + 16);

          if (!__OFSUB__(v97 >> 1, v95))
          {
            if (v101 == (v97 >> 1) - v95)
            {
              v99 = swift_dynamicCastClass();
              swift_unknownObjectRelease();
              if (!v99)
              {
                v99 = MEMORY[0x1E69E7CC0];
LABEL_72:
                swift_unknownObjectRelease();
              }

              v13 = sub_1C70FF274(v99);

              return v13;
            }

LABEL_85:
            swift_unknownObjectRelease();
            goto LABEL_65;
          }

LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        v55 = *(v52 + 8 * v58);
        ++v51;
        if (v55)
        {
          v51 = v58;
          goto LABEL_38;
        }
      }

LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }
  }

  v111 = v57;
  sub_1C75504FC();
  sub_1C75504FC();
  v65 = 0;
  v66 = 0;
  v67 = v110;
  while (1)
  {
    v68 = v67->isa;
    v69 = *(v67->isa + 32);
    v70 = v69 & 0x3F;
    v71 = ((1 << v69) + 63) >> 6;
    swift_bridgeObjectRetain_n();
    isStackAllocationSafe = sub_1C75504FC();
    if (v70 <= 0xD)
    {
      break;
    }

    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
      break;
    }

    v81 = swift_slowAlloc();
    sub_1C75504FC();
    sub_1C75504FC();
    v107 = v81;
    v82 = v71;
    v83 = v121;
    v77 = sub_1C70A9074(v81, v82, v68, v63);

    v121 = v83;
    if (v83)
    {
      goto LABEL_87;
    }

    MEMORY[0x1CCA5F8E0](v107, -1, -1);
LABEL_43:
    v78 = v77[2];

    v79 = v78 != 0;
    v80 = __OFADD__(v66, v79);
    v66 += v79;
    if (v80)
    {
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v80 = __OFADD__(v65, v78);
    v65 += v78;
    if (v80)
    {
      goto LABEL_76;
    }

    ++v67;
    isa = (isa - 1);
    if (!isa)
    {

      v15 = v109;
      v57 = v111;
      goto LABEL_51;
    }
  }

  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v73 = &v104 - ((8 * v71 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C71FAC38(0, v71, v73);
  v74 = v71;
  v75 = v121;
  sub_1C70A9104(v73, v74, v68, v63);
  v121 = v75;
  if (!v75)
  {
    v77 = v76;

    goto LABEL_43;
  }

  v103 = v121;
  v83 = v121;
  swift_willThrow();

  __break(1u);
LABEL_87:

  MEMORY[0x1CCA5F8E0](v107, -1, -1);
  __break(1u);
LABEL_88:

  __break(1u);
  return result;
}

uint64_t sub_1C70FE268(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v54 = sub_1C754FEEC();
    v55 = sub_1C755119C();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_1C6F5C000, v54, v55, "No assets that are used to fetch moments", v56, 2u);
      MEMORY[0x1CCA5F8E0](v56, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);

    return sub_1C75504DC();
  }

  v3 = (v1 + *(type metadata accessor for QueryDisambiguationSuggestionProducer() + 20));
  v4 = *(v3 + 4);
  v5 = v3[2];
  v62 = *v3;
  LOWORD(v63) = v4;
  v64 = v5;
  v6 = v62;

  v7 = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(a1, &v62);
  v8 = v62;

  v9 = v7 + 64;
  v10 = 1 << *(v7 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v7 + 64);
  v13 = (v10 + 63) >> 6;
  sub_1C75504FC();
  v14 = 0;
  v15 = MEMORY[0x1E69E7CC8];
  v57 = v13;
  if (v12)
  {
    while (1)
    {
LABEL_9:
      v17 = (v14 << 10) | (16 * __clz(__rbit64(v12)));
      v18 = (*(v7 + 48) + v17);
      v19 = v18[1];
      v60 = *v18;
      v20 = (*(v7 + 56) + v17);
      v22 = *v20;
      v21 = v20[1];
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_isUniquelyReferenced_nonNull_native();
      v62 = v15;
      v23 = sub_1C6F78124(v22, v21);
      if (__OFADD__(*(v15 + 2), (v24 & 1) == 0))
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v25 = v23;
      v26 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280);
      v27 = sub_1C7551A2C();
      v15 = v62;
      if (v27)
      {
        v28 = sub_1C6F78124(v22, v21);
        if ((v26 & 1) != (v29 & 1))
        {
          goto LABEL_46;
        }

        v25 = v28;
      }

      if (v26)
      {
      }

      else
      {
        sub_1C6FCABE4(v25);
      }

      v13 = v57;
      v9 = v7 + 64;
      v12 &= v12 - 1;
      sub_1C70F082C(&v62, v60, v19);

      if (!v12)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if (v16 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v16);
    ++v14;
    if (v12)
    {
      v14 = v16;
      goto LABEL_9;
    }
  }

  v30 = 0;
  v61 = v15;
  v31 = v15 + 64;
  v32 = 1 << v15[32];
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v15 + 8);
  v35 = (v32 + 63) >> 6;
  v36 = MEMORY[0x1E69E7CC8];
  v58 = v35;
  v59 = v15 + 64;
  if (!v34)
  {
LABEL_22:
    while (1)
    {
      v37 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_42;
      }

      if (v37 >= v35)
      {

        return v36;
      }

      v34 = *&v31[8 * v37];
      ++v30;
      if (v34)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v37 = v30;
LABEL_25:
    v38 = __clz(__rbit64(v34)) | (v37 << 6);
    v39 = (*(v61 + 6) + 16 * v38);
    v41 = *v39;
    v40 = v39[1];
    v42 = *(*(v61 + 7) + 8 * v38);
    sub_1C75504FC();
    sub_1C75504FC();
    swift_isUniquelyReferenced_nonNull_native();
    v62 = v36;
    v43 = sub_1C6F78124(v41, v40);
    if (__OFADD__(*(v36 + 2), (v44 & 1) == 0))
    {
      break;
    }

    v45 = v43;
    v46 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280);
    if (sub_1C7551A2C())
    {
      v47 = sub_1C6F78124(v41, v40);
      if ((v46 & 1) != (v48 & 1))
      {
        goto LABEL_46;
      }

      v45 = v47;
    }

    v34 &= v34 - 1;
    if (v46)
    {

      v36 = v62;
      *(*(v62 + 7) + 8 * v45) = v42;
    }

    else
    {
      v36 = v62;
      *&v62[8 * (v45 >> 6) + 64] |= 1 << v45;
      v49 = (*(v36 + 6) + 16 * v45);
      *v49 = v41;
      v49[1] = v40;
      *(*(v36 + 7) + 8 * v45) = v42;
      v50 = *(v36 + 2);
      v51 = __OFADD__(v50, 1);
      v52 = v50 + 1;
      if (v51)
      {
        goto LABEL_45;
      }

      *(v36 + 2) = v52;
    }

    v30 = v37;
    v35 = v58;
    v31 = v59;
    if (!v34)
    {
      goto LABEL_22;
    }
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C70FE774()
{
  v1 = sub_1C75504FC();
  if (*(sub_1C71CD90C(v1) + 16))
  {
    v2 = v0 + *(type metadata accessor for QueryDisambiguationSuggestionProducer() + 20);
    v3 = *(v2 + 8);
    v4 = *v2;

    v5 = v4;
    v6 = [v5 librarySpecificFetchOptions];
    [v6 setSharingFilter_];

    type metadata accessor for DayEventsFetcher();
    LOBYTE(v41) = 0;
    type metadata accessor for CollectionFetcherOptions();
    swift_initStackObject();
    v7 = CollectionFetcherOptions.init(photoLibrary:fetchOptions:fetchContext:sortAscending:)(v5, 0, &v41, 0);
    v8 = static DayEventsFetcher.basePredicate(using:)(v7);

    [v6 setPredicate_];

    v9 = objc_opt_self();
    v10 = sub_1C7550B3C();

    v38 = v6;
    v11 = [v9 fetchPhotosHighlightUUIDByMomentUUIDForMomentUUIDs:v10 options:v6];

    v12 = sub_1C75504AC();
    v13 = v12 + 64;
    v14 = 1 << *(v12 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v12 + 64);
    v17 = (v14 + 63) >> 6;
    sub_1C75504FC();
    v18 = 0;
    v19 = MEMORY[0x1E69E7CC8];
    v39 = v17;
    if (v16)
    {
LABEL_9:
      while (1)
      {
        v21 = (v18 << 10) | (16 * __clz(__rbit64(v16)));
        v22 = (*(v12 + 48) + v21);
        v23 = v22[1];
        v40 = *v22;
        v24 = (*(v12 + 56) + v21);
        v25 = *v24;
        v26 = v24[1];
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_isUniquelyReferenced_nonNull_native();
        v41 = v19;
        v27 = sub_1C6F78124(v25, v26);
        if (__OFADD__(*(v19 + 16), (v28 & 1) == 0))
        {
          break;
        }

        v29 = v27;
        v30 = v28;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280);
        v31 = sub_1C7551A2C();
        v19 = v41;
        if (v31)
        {
          v32 = sub_1C6F78124(v25, v26);
          if ((v30 & 1) != (v33 & 1))
          {
            goto LABEL_26;
          }

          v29 = v32;
        }

        if (v30)
        {
        }

        else
        {
          sub_1C6FCABE4(v29);
        }

        v17 = v39;
        v13 = v12 + 64;
        v16 &= v16 - 1;
        sub_1C70F082C(&v41, v40, v23);

        if (!v16)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
LABEL_5:
      while (1)
      {
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v20 >= v17)
        {

          return v19;
        }

        v16 = *(v13 + 8 * v20);
        ++v18;
        if (v16)
        {
          v18 = v20;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_26:
    result = sub_1C7551E4C();
    __break(1u);
  }

  else
  {

    v35 = sub_1C754FEEC();
    v36 = sub_1C755119C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1C6F5C000, v35, v36, "No moments that are used to fetch Day Highlights", v37, 2u);
      MEMORY[0x1CCA5F8E0](v37, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);

    return sub_1C75504DC();
  }

  return result;
}

uint64_t sub_1C70FEBDC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v2 = a2;
    v3 = a2 + 64;
    v4 = 1 << *(a2 + 32);
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    else
    {
      v5 = -1;
    }

    v6 = v5 & *(a2 + 64);
    v7 = (v4 + 63) >> 6;
    sub_1C75504FC();
    v36 = 0;
    v8 = 0;
    v37 = MEMORY[0x1E69E7CC8];
    v39 = v7;
    for (i = v2; ; v2 = i)
    {
      v9 = v8;
      if (!v6)
      {
        goto LABEL_8;
      }

LABEL_7:
      v8 = v9;
LABEL_11:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = v10 | (v8 << 6);
      v12 = (*(v2 + 48) + 16 * v11);
      v13 = v12[1];
      v38 = *v12;
      v14 = *(*(v2 + 56) + 8 * v11);
      v43 = MEMORY[0x1E69E7CD0];
      v15 = 1 << *(v14 + 32);
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      else
      {
        v16 = -1;
      }

      v17 = v16 & *(v14 + 56);
      v18 = (v15 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v41 = v13;
      sub_1C75504FC();
      v19 = 0;
      if (v17)
      {
        while (1)
        {
          v20 = v19;
LABEL_20:
          v21 = __clz(__rbit64(v17));
          v17 &= v17 - 1;
          v22 = (*(v14 + 48) + ((v20 << 10) | (16 * v21)));
          v23 = *v22;
          v24 = v22[1];
          sub_1C75504FC();
          v25 = sub_1C6FE3768(v23, v24, a1);
          if (!v25)
          {
            v25 = MEMORY[0x1E69E7CD0];
          }

          sub_1C739796C(v25);

          if (!v17)
          {
            goto LABEL_16;
          }
        }
      }

      while (1)
      {
LABEL_16:
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
          goto LABEL_42;
        }

        if (v20 >= v18)
        {
          break;
        }

        v17 = *(v14 + 56 + 8 * v20);
        ++v19;
        if (v17)
        {
          v19 = v20;
          goto LABEL_20;
        }
      }

      if (!*(v43 + 16))
      {
        break;
      }

      sub_1C6F6E5B4(v36);
      swift_isUniquelyReferenced_nonNull_native();
      v26 = sub_1C6F78124(v38, v41);
      if (__OFADD__(*(v37 + 16), (v27 & 1) == 0))
      {
        goto LABEL_43;
      }

      v28 = v26;
      v29 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280);
      if (sub_1C7551A2C())
      {
        v30 = sub_1C6F78124(v38, v41);
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_44;
        }

        v28 = v30;
      }

      if (v29)
      {
      }

      else
      {
        sub_1C6FCABE4(v28);
      }

      sub_1C739796C(v43);
      v36 = sub_1C6F9EEA8;
      v7 = v39;
    }

    v9 = v8;
    v7 = v39;
    v2 = i;
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_8:
    while (1)
    {
      v8 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v8 >= v7)
      {

        sub_1C6F6E5B4(v36);
        return v37;
      }

      v6 = *(v3 + 8 * v8);
      ++v9;
      if (v6)
      {
        goto LABEL_11;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    result = sub_1C7551E4C();
    __break(1u);
  }

  else
  {
    v33 = sub_1C754FEEC();
    v34 = sub_1C755119C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1C6F5C000, v33, v34, "No assets for the given moments", v35, 2u);
      MEMORY[0x1CCA5F8E0](v35, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);

    return sub_1C75504DC();
  }

  return result;
}

uint64_t sub_1C70FEFF4(const void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216328);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &__dst[-v3 - 8];
  v5 = sub_1C754F14C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &__dst[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  memcpy(__dst, a1, sizeof(__dst));
  QueryToken.publicEvent()();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1C6FB5FC8(v4, &qword_1EC216328);
    v9 = 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217890);
    v10 = *(v6 + 72);
    v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C75604F0;
    v13 = v12 + v11;
    v14 = *(v6 + 104);
    v14(v13, *MEMORY[0x1E69C17C0], v5);
    v15 = (v14)(v13 + v10, *MEMORY[0x1E69C17B0], v5);
    MEMORY[0x1EEE9AC00](v15);
    *(&v17 - 2) = v8;
    LOBYTE(v13) = sub_1C70734EC(sub_1C710104C, (&v17 - 4), v12);
    swift_setDeallocating();
    sub_1C6FDC924();
    (*(v6 + 8))(v8, v5);
    v9 = v13 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_1C70FF274(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = (a1 + 72);
  v5 = MEMORY[0x1E69E7CC8];
  if (v3)
  {
    while (1)
    {
      v57 = v3;
      v7 = *(v4 - 5);
      v6 = *(v4 - 4);
      v58 = *(v4 - 3);
      v59 = *(v4 - 2);
      v8 = *(v4 - 1);
      v9 = *v4;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_isUniquelyReferenced_nonNull_native();
      v61 = v5;
      v10 = sub_1C6F78124(v7, v6);
      if (__OFADD__(v5[2], (v11 & 1) == 0))
      {
        break;
      }

      v12 = v10;
      v13 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217888);
      if (sub_1C7551A2C())
      {
        v14 = sub_1C6F78124(v7, v6);
        if ((v13 & 1) != (v15 & 1))
        {
          goto LABEL_29;
        }

        v12 = v14;
      }

      v5 = v61;
      if (v13)
      {
        v16 = (v61[7] + 48 * v12);
        *v16 = v7;
        v16[1] = v6;
        v16[2] = v58;
        v16[3] = v59;
        v16[4] = v8;
        v16[5] = v9;
      }

      else
      {
        v61[(v12 >> 6) + 8] |= 1 << v12;
        v17 = (v5[6] + 16 * v12);
        *v17 = v7;
        v17[1] = v6;
        v18 = (v5[7] + 48 * v12);
        *v18 = v7;
        v18[1] = v6;
        v18[2] = v58;
        v18[3] = v59;
        v18[4] = v8;
        v18[5] = v9;

        v19 = v5[2];
        v20 = __OFADD__(v19, 1);
        v21 = v19 + 1;
        if (v20)
        {
          goto LABEL_27;
        }

        v5[2] = v21;
      }

      v3 = v57 - 1;
      v4 += 6;
      v2 = v56;
      if (v57 == 1)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_11:
    v22 = sub_1C75504FC();
    v23 = sub_1C7080ED4(v22);
    v24 = v2 + *(type metadata accessor for QueryDisambiguationSuggestionProducer() + 20);
    v25 = *v24;
    v60 = 0;
    type metadata accessor for CollectionFetcherOptions();
    swift_initStackObject();
    v26 = CollectionFetcherOptions.init(photoLibrary:fetchOptions:fetchContext:sortAscending:)(v25, 0, &v60, 0);
    v29 = sub_1C7082250(v26, v23, v27, v28);
    v30 = [v29 fetchedObjects];

    if (!v30)
    {

      sub_1C75504FC();
      v43 = sub_1C754FEEC();
      v44 = sub_1C755119C();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v61 = v46;
        *v45 = 136315138;
        v47 = sub_1C7550F9C();
        v49 = v48;

        v50 = sub_1C6F765A4(v47, v49, &v61);

        *(v45 + 4) = v50;
        _os_log_impl(&dword_1C6F5C000, v43, v44, "Unable to fetch Day Highlights for the given uuids = %s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v46);
        MEMORY[0x1CCA5F8E0](v46, -1, -1);
        MEMORY[0x1CCA5F8E0](v45, -1, -1);
      }

      else
      {
      }

      return MEMORY[0x1E69E7CC0];
    }

    sub_1C6F65BE8(0, &qword_1EC2155D8);
    v31 = sub_1C7550B5C();
    v32 = *(v24 + 8);
    v33 = *v24;

    v34 = [v33 librarySpecificFetchOptions];
    [v34 setSharingFilter_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1C755BAB0;
    *(v35 + 32) = sub_1C755068C();
    *(v35 + 40) = v36;
    sub_1C6FCA0EC(v35, v34);
    [v34 setIncludeHiddenAssets_];
    [v34 setIncludeGuestAssets_];
    sub_1C6F65BE8(0, &qword_1EDD0FAD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1C75604F0;
    *(v37 + 56) = MEMORY[0x1E69E6158];
    *(v37 + 64) = sub_1C6F6D524();
    v38 = MEMORY[0x1E69E7290];
    *(v37 + 32) = 1684957547;
    *(v37 + 40) = 0xE400000000000000;
    v39 = MEMORY[0x1E69E72E8];
    *(v37 + 96) = v38;
    *(v37 + 104) = v39;
    *(v37 + 72) = 0;
    v40 = sub_1C755112C();
    [v34 setInternalPredicate_];

    v41 = [objc_opt_self() fetchKeyAssetByHighlightUUIDForHighlights:v30 options:v34];
    sub_1C6F65BE8(0, &qword_1EDD0FA70);
    if (v41)
    {
      v42 = sub_1C75504AC();
    }

    else
    {
      v42 = sub_1C75504DC();
    }

    v61 = MEMORY[0x1E69E7CC0];
    v51 = sub_1C6FB6304();
    if ((v51 & 0x8000000000000000) == 0)
    {
      v52 = v51;
      for (i = 0; v52 != i; ++i)
      {
        if (__OFADD__(i, 1))
        {
          goto LABEL_26;
        }

        v54 = objc_autoreleasePoolPush();
        sub_1C70FF928(v31, i, v5, v2, v42, &v61);
        objc_autoreleasePoolPop(v54);
      }

      return v61;
    }
  }

  __break(1u);
LABEL_29:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}