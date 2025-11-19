unint64_t sub_1C7491FFC()
{
  result = qword_1EC21C348;
  if (!qword_1EC21C348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C348);
  }

  return result;
}

unint64_t sub_1C7492098()
{
  result = qword_1EC21C360;
  if (!qword_1EC21C360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C360);
  }

  return result;
}

void sub_1C7492124()
{
  sub_1C749226C(319, &qword_1EDD06A00, MEMORY[0x1E69E87C8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1C74921E4()
{
  sub_1C749226C(319, &qword_1EC21C388, MEMORY[0x1E69E87B8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1C749226C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC219760);
    v7 = a3(a1, MEMORY[0x1E69E6158], v6, MEMORY[0x1E69E7288]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t dispatch thunk of LLMWrapperProtocol.countTokens(in:)()
{
  OUTLINED_FUNCTION_75_1();
  v5 = (*(v1 + 24) + **(v1 + 24));
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1C6FD50A8;
  v3 = OUTLINED_FUNCTION_117_0();

  return v5(v3);
}

_BYTE *storeEnumTagSinglePayload for LLMUseCaseIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LLMWrapper.Error(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C7492660()
{
  v2 = sub_1C754E72C();
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50);
  OUTLINED_FUNCTION_76(v3);
  OUTLINED_FUNCTION_130_8();
  v15 = v4;
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_75();

  return sub_1C74905B4(v11, v12, v13, v8, v15, v5, v6, v7);
}

uint64_t sub_1C74927F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C74928FC()
{
  OUTLINED_FUNCTION_115_0();
  v2 = sub_1C754E72C();
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50);
  OUTLINED_FUNCTION_76(v3);
  OUTLINED_FUNCTION_130_8();
  v15 = v4;
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_1C6F738F4;
  OUTLINED_FUNCTION_75();

  return sub_1C748C864(v11, v12, v13, v8, v15, v5, v6, v7);
}

uint64_t sub_1C7492A94(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_40_49()
{
}

uint64_t OUTLINED_FUNCTION_47_26()
{

  return sub_1C754FD7C();
}

uint64_t OUTLINED_FUNCTION_50_34()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_63_26()
{
}

uint64_t OUTLINED_FUNCTION_64_24()
{
}

uint64_t OUTLINED_FUNCTION_66_26()
{
  result = v0;
  *(v2 - 152) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_86_15(uint64_t a1)
{
  v5 = *(v2 - 128);
  v6 = *(v2 - 88);

  return MEMORY[0x1EEE0A308](v5, v6, v1, a1);
}

id OUTLINED_FUNCTION_87_21()
{
  *(v1 + 88) = v0;

  return v0;
}

id OUTLINED_FUNCTION_88_18()
{
  *(v1 + 88) = v0;

  return v0;
}

void OUTLINED_FUNCTION_89_18(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_93_17()
{

  return sub_1C755039C();
}

uint64_t OUTLINED_FUNCTION_102_14()
{

  return sub_1C75503BC();
}

uint64_t OUTLINED_FUNCTION_117_11(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1C6F765A4(a1, a2, &a9);
}

uint64_t OUTLINED_FUNCTION_118_12()
{

  return sub_1C7550EBC();
}

uint64_t OUTLINED_FUNCTION_119_15()
{

  return sub_1C7551EAC();
}

BOOL OUTLINED_FUNCTION_120_11()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_121_8@<X0>(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  a1[9] = v14;
  a1[10] = a2;
  a1[6] = a12;
  *(v13 + 56) = a13;

  return sub_1C75504FC();
}

__n128 OUTLINED_FUNCTION_142_5(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  a1[1] = a9;
  a1[2].n128_u64[0] = v10;
  a1[2].n128_u64[1] = v9;
  return result;
}

uint64_t OUTLINED_FUNCTION_152_7()
{
}

uint64_t OUTLINED_FUNCTION_153_6()
{

  return sub_1C7550EBC();
}

uint64_t sub_1C7493138(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C7423D10();
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1C74988C8(v6);
  return sub_1C755193C();
}

uint64_t sub_1C74931B4()
{
  OUTLINED_FUNCTION_42();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_1C754F38C();
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C74934B0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;
  *(v6 + 80) = v5;

  v7 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C74937A4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;
  *(v6 + 104) = v5;

  v7 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7493A90()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;
  *(v6 + 128) = v5;

  v7 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7493D88()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;
  *(v6 + 152) = v5;

  v7 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7494018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[97] = v3;
  v4[96] = a3;
  v4[95] = a2;
  v4[94] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C7494044, 0, 0);
}

uint64_t sub_1C7494878()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;
  *(v6 + 856) = v5;

  v7 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C74952CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[79] = v3;
  v4[78] = a3;
  v4[77] = a2;
  v4[76] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C74952F8, 0, 0);
}

uint64_t sub_1C74952F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v73 = v8;
  static StoryMusicEmbeddingTerms.termsByTags(_:matchAnyTags:)(&unk_1F46AAA38, 1, a3, a4, a5, a6, a7, a8, v66, v67, v68, v69, v71, __dst[0]);
  v12 = v11;
  v13 = MEMORY[0x1E69E7CC0];
  if (*(v11 + 16))
  {
    __dst[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_65_23();
    v14 = __dst[0];
    v15 = *(__dst[0] + 16);
    v10 = 16 * v15;
    do
    {
      v9 = *(v12 + 40);
      __dst[0] = v14;
      v16 = *(v14 + 24);
      v12 = v15 + 1;
      sub_1C75504FC();
      if (v15 >= v16 >> 1)
      {
        sub_1C6F7ED9C();
        v14 = __dst[0];
      }

      OUTLINED_FUNCTION_46_39();
    }

    while (!v17);

    v13 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v8[80] = v14;
  v18 = v8[76];
  v8[75] = v13;
  v19 = *(v18 + 16);
  v8[81] = v19;
  v20 = &qword_1EDD0DFF8[1];
  if (!v19)
  {

    v45 = MEMORY[0x1E69E7CC0];
LABEL_26:
    OUTLINED_FUNCTION_69_1();
    swift_bridgeObjectRetain_n();
    __dst[0] = sub_1C71CC894(v45);
    sub_1C7493138(__dst);
    OUTLINED_FUNCTION_69_1();
    swift_bridgeObjectRelease_n();
    v8[75] = __dst[0];
    OUTLINED_FUNCTION_61_23();
    if (!v17)
    {
      OUTLINED_FUNCTION_0_46();
    }

    v46 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v46, &dword_1EDD28D48);
    v47 = sub_1C754FEEC();
    v48 = sub_1C755118C();
    if (OUTLINED_FUNCTION_32(v48))
    {
      v49 = OUTLINED_FUNCTION_41_0();
      v50 = OUTLINED_FUNCTION_20_1();
      __dst[0] = v50;
      v51 = OUTLINED_FUNCTION_119_16(4.8149e-34);

      MEMORY[0x1CCA5D090](v52, v51);
      OUTLINED_FUNCTION_74_17();
      v53 = sub_1C6F765A4(v51, v10, __dst);

      *(v49 + 4) = v53;
      OUTLINED_FUNCTION_35_30();
      _os_log_impl(v54, v55, v56, v57, v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_23_3();
    }

    v59 = v8[79] + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
    OUTLINED_FUNCTION_20_18();
    v60 = *(type metadata accessor for StoryMusicCurationDiagnostics() + 32);
    swift_isUniquelyReferenced_nonNull_native();
    __dst[0] = *(v59 + v60);
    sub_1C6FC8A40();
    *(v59 + v60) = __dst[0];
    swift_endAccess();
    OUTLINED_FUNCTION_4_91();
    OUTLINED_FUNCTION_130_0();

    __asm { BRAA            X2, X16 }
  }

  v21 = 0;
  while (1)
  {
    v8[83] = v13;
    v8[82] = v21;
    v22 = OUTLINED_FUNCTION_108_12();
    memcpy(v22, v23, 0x42uLL);
    v24 = *(v8 + 81);
    v25 = v8[2];
    v10 = v8[3];
    v8[84] = v25;
    v8[85] = v10;
    if (v24 == 1)
    {
      type metadata accessor for MusicLocalizer();
      v26 = OUTLINED_FUNCTION_106_9();
      sub_1C7025FF8(v26, v27);
      v70 = static MusicLocalizer.localizedString(forKey:)(0xD000000000000018, 0x80000001C75B1CF0);
      v29 = v28;
    }

    else
    {
      sub_1C75504FC();
      v30 = OUTLINED_FUNCTION_107_13();
      sub_1C7025FF8(v30, v31);
      v29 = v10;
      v70 = v25;
    }

    v8[86] = v29;
    v32 = v20[433];
    sub_1C75504FC();
    if (v32 != -1)
    {
      swift_once();
    }

    v33 = sub_1C754FF1C();
    v8[87] = OUTLINED_FUNCTION_23_2(v33, &dword_1EDD28D48);
    v34 = OUTLINED_FUNCTION_104_12();
    sub_1C7025FF8(v34, v35);
    sub_1C75504FC();
    v36 = sub_1C754FEEC();
    sub_1C755118C();
    v37 = OUTLINED_FUNCTION_87_22();
    sub_1C7026030(v37);

    if (os_log_type_enabled(v36, v9))
    {
      OUTLINED_FUNCTION_23_1();
      v71 = OUTLINED_FUNCTION_60_11();
      LODWORD(dword_1EDD28D48) = 136315394;
      memcpy(__dst, v8 + 2, 0x42uLL);
      v38 = OUTLINED_FUNCTION_105_12();
      sub_1C7025FF8(v38, v39);
      PetExtendedToken.description.getter();
      OUTLINED_FUNCTION_98_6();
      memcpy(v8 + 38, __dst, 0x42uLL);
      v40 = sub_1C7026030((v8 + 38));
      OUTLINED_FUNCTION_121_9(v40, v41, &v71);
      OUTLINED_FUNCTION_24_2();
      v13 = MEMORY[0x1E69E7CC0];

      unk_1EDD28D4C = __dst;
      word_1EDD28D54 = 2080;
      v42 = v70;
      *algn_1EDD28D56 = sub_1C6F765A4(v70, v29, &v71);
      OUTLINED_FUNCTION_83_12(&dword_1C6F5C000, v36, v9, "WHO pet=%s, matchOnTerm=%s");
      OUTLINED_FUNCTION_122_12();
      v20 = qword_1EDD0DFF8 + 8;
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {

      v42 = v70;
    }

    v43 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v43 = v42 & 0xFFFFFFFFFFFFLL;
    }

    if (v43)
    {
      OUTLINED_FUNCTION_84_16();
      if (v44)
      {
        break;
      }
    }

    sub_1C7026030((v8 + 2));
    v21 = v8[82] + 1;
    if (v21 == v8[81])
    {

      v45 = v8[75];
      goto LABEL_26;
    }
  }

  v63 = swift_task_alloc();
  v8[88] = v63;
  *v63 = v8;
  OUTLINED_FUNCTION_15_83(v63);
  OUTLINED_FUNCTION_130_0();

  return sub_1C7458BF0();
}

uint64_t sub_1C74958C4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;
  *(v6 + 712) = v5;

  v7 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C74960B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[29] = a3;
  v4[30] = v3;
  v4[27] = a1;
  v4[28] = a2;
  v4[31] = *(type metadata accessor for TimeExtendedToken(0) - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7496188, 0, 0);
}

uint64_t sub_1C7496188()
{
  OUTLINED_FUNCTION_58_9();
  v111 = v0;
  static StoryMusicEmbeddingTerms.termsByTags(_:matchAnyTags:)(&unk_1F46AAA60, 1, v2, v3, v4, v5, v6, v7, v101, v104, v107, v108, v109, v110);
  v9 = v8;
  v10 = *(v8 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  v105 = v0;
  if (v10)
  {
    OUTLINED_FUNCTION_78_18();
    v12 = 0;
    v13 = v107;
    v14 = v107[2];
    v15 = 2 * v14;
    do
    {
      v17 = *(v9 + v12 + 32);
      v16 = *(v9 + v12 + 40);
      v107 = v13;
      v18 = v13[3];
      v1 = v14 + 1;
      sub_1C75504FC();
      if (v14 >= v18 >> 1)
      {
        OUTLINED_FUNCTION_186();
        sub_1C6F7ED9C();
        v13 = v107;
      }

      v13[2] = v1;
      v19 = &v13[v15];
      v19[4] = v17;
      v19[5] = v16;
      v15 += 2;
      v12 += 48;
      ++v14;
      --v10;
    }

    while (v10);

    v0 = v105;
    v11 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 280) = v13;
  static StoryMusicEmbeddingTerms.termsByTags(_:matchAnyTags:)(&unk_1F46AAA88, 1, v20, v21, v22, v23, v24, v25, v102, v105, v107, v108, v109, v110);
  v27 = v26;
  v28 = *(v26 + 16);
  if (v28)
  {
    v103 = v13;
    OUTLINED_FUNCTION_78_18();
    v29 = 0;
    v30 = v107;
    v1 = v107[2];
    v31 = 16 * v1;
    do
    {
      v33 = *(v27 + v29 + 32);
      v32 = *(v27 + v29 + 40);
      v107 = v30;
      v34 = *(v30 + 24);
      sub_1C75504FC();
      if (v1 >= v34 >> 1)
      {
        sub_1C6F7ED9C();
        v30 = v107;
      }

      *(v30 + 16) = v1 + 1;
      v35 = v30 + v31;
      *(v35 + 32) = v33;
      *(v35 + 40) = v32;
      v31 += 16;
      v29 += 48;
      ++v1;
      --v28;
    }

    while (v28);

    v0 = v106;
    v11 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v30 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 288) = v30;
  v36 = *(v0 + 216);
  *(v0 + 208) = v11;
  v37 = *(v36 + 16);
  *(v0 + 296) = v37;
  if (!v37)
  {
    v42 = v11;
    goto LABEL_30;
  }

  v38 = 0;
  v39 = *(v0 + 248);
  v40 = *(v39 + 80);
  *(v0 + 400) = v40;
  v41 = *(v39 + 72);
  *(v0 + 304) = v41;
  v42 = v11;
  while (2)
  {
    *(v0 + 320) = v42;
    *(v0 + 328) = v11;
    *(v0 + 312) = v38;
    v43 = *(v0 + 272);
    sub_1C721AB4C(v36 + ((v40 + 32) & ~v40) + v41 * v38, v43);
    switch(*(v43 + 57))
    {
      case 2:

        goto LABEL_20;
      default:
        v44 = OUTLINED_FUNCTION_55_33();

        if ((v44 & 1) == 0)
        {
          switch(*(*(v0 + 272) + 57))
          {
            case 1:
            case 2:
            case 3:
            case 4:
            case 6:
              goto LABEL_56;
            case 5:

              goto LABEL_57;
            default:
              OUTLINED_FUNCTION_69_26();
LABEL_56:
              v95 = sub_1C7551DBC();

              if (v95)
              {
LABEL_57:
                OUTLINED_FUNCTION_25_47();
                v96 = swift_task_alloc();
                *(v0 + 352) = v96;
                *v96 = v0;
                OUTLINED_FUNCTION_1_141(v96);
              }

              else
              {
                OUTLINED_FUNCTION_24_50();
                sub_1C75504FC();
                v97 = swift_task_alloc();
                *(v0 + 384) = v97;
                *v97 = v0;
                OUTLINED_FUNCTION_2_131(v97);
              }

              OUTLINED_FUNCTION_51_2();

              result = sub_1C7458BF0();
              break;
          }

          return result;
        }

LABEL_20:
        v45 = *(v0 + 272);
        if ((*(v45 + 40) & 1) == 0)
        {
          v46 = *(v45 + 32);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_24_0();
            sub_1C6FB3408();
            v42 = v50;
          }

          v48 = *(v42 + 16);
          v47 = *(v42 + 24);
          if (v48 >= v47 >> 1)
          {
            OUTLINED_FUNCTION_15(v47);
            sub_1C6FB3408();
            v42 = v51;
          }

          *(v42 + 16) = v48 + 1;
          *(v42 + 8 * v48 + 32) = v46;
          v45 = *(v0 + 272);
          v11 = MEMORY[0x1E69E7CC0];
        }

        v1 = *(v0 + 296);
        v49 = *(v0 + 312) + 1;
        sub_1C7415AE8(v45);
        if (v49 != v1)
        {
          v41 = *(v0 + 304);
          v38 = *(v0 + 312) + 1;
          LOBYTE(v40) = *(v0 + 400);
          v36 = *(v0 + 216);
          continue;
        }

        v13 = *(v0 + 280);
LABEL_30:

        v52 = &qword_1EDD0DFF8[1];
        if (*(v42 + 16) >= 3uLL)
        {
          OUTLINED_FUNCTION_36_41();
          OUTLINED_FUNCTION_11_2();
          v13 = OUTLINED_FUNCTION_11_77();
          if (qword_1EDD0ED88 != -1)
          {
            OUTLINED_FUNCTION_0_46();
          }

          v53 = sub_1C754FF1C();
          OUTLINED_FUNCTION_23_2(v53, &dword_1EDD28D48);

          v54 = sub_1C754FEEC();
          v55 = sub_1C755118C();

          if (os_log_type_enabled(v54, v55))
          {
            v56 = OUTLINED_FUNCTION_41_0();
            v57 = OUTLINED_FUNCTION_20_1();
            v107 = v57;
            *v56 = 136315138;

            v58 = MusicKeywordCompletion.description.getter();
            v60 = v59;

            v61 = sub_1C6F765A4(v58, v60, &v107);

            *(v56 + 4) = v61;
            _os_log_impl(&dword_1C6F5C000, v54, v55, "[curateKeywordsForExtendedTokens] OverTheYears: %s", v56, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v57);
            v52 = &qword_1EDD0DFF8[1];
            OUTLINED_FUNCTION_109();
            OUTLINED_FUNCTION_109();
          }

          MEMORY[0x1CCA5D040](v62);
          v63 = *((*(v0 + 208) & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((*(v0 + 208) & 0xFFFFFFFFFFFFFF8) + 0x10) >= v63 >> 1)
          {
            OUTLINED_FUNCTION_15(v63);
            OUTLINED_FUNCTION_116_16();
          }

          sub_1C7550BEC();
          v64 = MEMORY[0x1CCA5D090](v42, MEMORY[0x1E69E6530]);
          v66 = v65;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2171D8);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1C755BAB0;
          *(inited + 32) = v64;
          *(inited + 40) = v66;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
          v68 = OUTLINED_FUNCTION_11_2();
          *(v68 + 16) = xmmword_1C7565670;
          *(v68 + 32) = v13;
          *(inited + 48) = v68;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155F0);
          v69 = sub_1C75504DC();
          v70 = MEMORY[0x1E69E7CC0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_24_0();
            sub_1C6FB3268();
            v70 = v99;
          }

          v72 = *(v70 + 16);
          v71 = *(v70 + 24);
          v1 = v72 + 1;
          if (v72 >= v71 >> 1)
          {
            OUTLINED_FUNCTION_15(v71);
            OUTLINED_FUNCTION_186();
            sub_1C6FB3268();
            v70 = v100;
          }

          *(v70 + 16) = v1;
          *(v70 + 8 * v72 + 32) = v69;
        }

        v73 = *(v0 + 208);
        OUTLINED_FUNCTION_69_1();
        swift_bridgeObjectRetain_n();
        v74 = sub_1C71CC894(v73);
        OUTLINED_FUNCTION_40_50(v74, v75, v76, v77, v78, v79, v80, v81, v103, v106, v107);
        if (!v13)
        {
          OUTLINED_FUNCTION_69_1();
          swift_bridgeObjectRelease_n();

          *(v0 + 208) = v107;
          if (qword_1EDD0ED88 != -1)
          {
            OUTLINED_FUNCTION_0_46();
          }

          v84 = sub_1C754FF1C();
          OUTLINED_FUNCTION_23_2(v84, &dword_1EDD28D48);
          v85 = sub_1C754FEEC();
          v86 = sub_1C755118C();
          if (OUTLINED_FUNCTION_39_44(v86))
          {
            v87 = OUTLINED_FUNCTION_41_0();
            v107 = OUTLINED_FUNCTION_20_1();
            v88 = OUTLINED_FUNCTION_119_16(4.8149e-34);

            v52 = MEMORY[0x1CCA5D090](v89, v88);

            OUTLINED_FUNCTION_120_12(v90, v91, &v107);
            OUTLINED_FUNCTION_118_13();
            *(v87 + 4) = v52;
            _os_log_impl(&dword_1C6F5C000, v85, v1, "TimeExtendedTokenKeywords: %s", v87, 0xCu);
            OUTLINED_FUNCTION_56_2();
            OUTLINED_FUNCTION_23_3();
          }

          OUTLINED_FUNCTION_43_39();
          v92 = *(type metadata accessor for StoryMusicCurationDiagnostics() + 32);
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_53_37();
          *(v52 + v92) = v107;
          swift_endAccess();

          OUTLINED_FUNCTION_4_91();
          OUTLINED_FUNCTION_51_2();

          __asm { BRAA            X2, X16 }
        }

        OUTLINED_FUNCTION_51_2();
    }
  }
}

uint64_t sub_1C7496AFC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 360) = v3;

  v4 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C7496BE4()
{
  OUTLINED_FUNCTION_58_9();
  v84 = v1;
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_46();
  }

  v3 = v1[45];
  v5 = v1[33];
  v4 = v1[34];
  v81 = sub_1C754FF1C();
  __swift_project_value_buffer(v81, &dword_1EDD28D48);
  sub_1C721AB4C(v4, v5);
  sub_1C75504FC();
  v6 = sub_1C754FEEC();
  v7 = sub_1C755118C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v1[45];
    v9 = v1[33];
    v3 = OUTLINED_FUNCTION_23_1();
    v83[0] = swift_slowAlloc();
    *v3 = 136315394;
    v10 = TimeExtendedToken.description.getter();
    v2 = v11;
    sub_1C7415AE8(v9);
    v12 = sub_1C6F765A4(v10, v2, v83);

    *(v3 + 4) = v12;
    *(v3 + 12) = 2080;
    v13 = type metadata accessor for MusicKeywordCompletion();
    v14 = MEMORY[0x1CCA5D090](v8, v13);
    v16 = sub_1C6F765A4(v14, v15, v83);

    *(v3 + 14) = v16;
    _os_log_impl(&dword_1C6F5C000, v6, v7, "[curateKeywordsForExtendedTokens] Holiday keywords for '%s': %s", v3, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
    v17 = v1[33];

    sub_1C7415AE8(v17);
  }

  v18 = v1[45];
  if (v18 >> 62)
  {
    v19 = sub_1C75516BC();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = &unk_1C7565000;
  if (v19)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1CCA5DDD0](0, v1[45]);
    }

    else
    {
      if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_67;
      }

      v6 = *(v1[45] + 32);
    }

    MEMORY[0x1CCA5D040](v21);
    v22 = *((v1[26] & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v1[26] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v22 >> 1)
    {
      OUTLINED_FUNCTION_15(v22);
      OUTLINED_FUNCTION_116_16();
    }

    v23 = v1[42];
    v24 = v1[43];
    sub_1C7550BEC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2171D8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C755BAB0;
    *(inited + 32) = v23;
    *(inited + 40) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
    v26 = OUTLINED_FUNCTION_11_2();
    *(v26 + 16) = xmmword_1C7565670;
    *(v26 + 32) = v6;
    *(inited + 48) = v26;

    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155F0);
    sub_1C75504DC();
    OUTLINED_FUNCTION_51();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = v1[41];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB3268();
      v3 = v76;
    }

    v29 = *(v3 + 16);
    v28 = *(v3 + 24);
    if (v29 >= v28 >> 1)
    {
      OUTLINED_FUNCTION_15(v28);
      OUTLINED_FUNCTION_186();
      sub_1C6FB3268();
      v3 = v77;
    }

    *(v3 + 16) = v29 + 1;
    *(v3 + 8 * v29 + 32) = inited;
  }

  else
  {

    v3 = v1[41];
  }

  OUTLINED_FUNCTION_23_55();
  v7 = v1[40];
  while (1)
  {
    v30 = v1[34];
LABEL_22:
    v0 = v1[37];
    v31 = v1[39] + 1;
    sub_1C7415AE8(v30);
    if (v31 == v0)
    {
      break;
    }

    OUTLINED_FUNCTION_33_45();
    switch(*(v31 + 57))
    {
      case 2:

        goto LABEL_27;
      case 5:
        OUTLINED_FUNCTION_72_25();
        goto LABEL_26;
      default:
LABEL_26:
        v20 = OUTLINED_FUNCTION_55_33();

        if ((v20 & 1) == 0)
        {
          switch(*(v1[34] + 57))
          {
            case 1:
            case 2:
            case 3:
            case 4:
            case 6:
              goto LABEL_58;
            case 5:

              goto LABEL_59;
            default:
              OUTLINED_FUNCTION_69_26();
LABEL_58:
              v72 = OUTLINED_FUNCTION_63_27();

              if (v72)
              {
LABEL_59:
                OUTLINED_FUNCTION_25_47();
                v73 = swift_task_alloc();
                v1[44] = v73;
                *v73 = v1;
                OUTLINED_FUNCTION_1_141();
              }

              else
              {
                OUTLINED_FUNCTION_24_50();
                sub_1C75504FC();
                v74 = swift_task_alloc();
                v1[48] = v74;
                *v74 = v1;
                OUTLINED_FUNCTION_2_131();
              }

              OUTLINED_FUNCTION_51_2();

              result = sub_1C7458BF0();
              break;
          }

          return result;
        }

LABEL_27:
        v30 = v1[34];
        if (*(v30 + 40))
        {
          goto LABEL_22;
        }

        v20 = *(v30 + 32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB3408();
          v7 = v34;
        }

        v33 = *(v7 + 16);
        v32 = *(v7 + 24);
        if (v33 >= v32 >> 1)
        {
          OUTLINED_FUNCTION_41_23(v32);
          sub_1C6FB3408();
          v7 = v35;
        }

        *(v7 + 16) = v33 + 1;
        *(v7 + 8 * v33 + 32) = v20;
        break;
    }
  }

  v2 = &unk_1C755E000;
  if (*(v7 + 16) >= 3uLL)
  {
    OUTLINED_FUNCTION_36_41();
    OUTLINED_FUNCTION_11_2();
    v6 = OUTLINED_FUNCTION_11_77();
    if (qword_1EDD0ED88 == -1)
    {
LABEL_35:
      OUTLINED_FUNCTION_23_2(v81, &dword_1EDD28D48);

      v36 = sub_1C754FEEC();
      v37 = sub_1C755118C();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = OUTLINED_FUNCTION_41_0();
        v39 = OUTLINED_FUNCTION_20_1();
        v83[0] = v39;
        *v38 = 136315138;

        MusicKeywordCompletion.description.getter();
        OUTLINED_FUNCTION_98_6();

        OUTLINED_FUNCTION_121_9(v40, v41, v83);
        OUTLINED_FUNCTION_24_2();

        *(v38 + 4) = v6;
        OUTLINED_FUNCTION_114_15(&dword_1C6F5C000, v42, v43, "[curateKeywordsForExtendedTokens] OverTheYears: %s");
        __swift_destroy_boxed_opaque_existential_1(v39);
        v2 = &unk_1C755E000;
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      v20 = &unk_1C7565000;

      MEMORY[0x1CCA5D040](v44);
      OUTLINED_FUNCTION_66_27();
      if (v46)
      {
        OUTLINED_FUNCTION_15(v45);
        OUTLINED_FUNCTION_116_16();
      }

      sub_1C7550BEC();
      MEMORY[0x1CCA5D090](v7, MEMORY[0x1E69E6530]);
      OUTLINED_FUNCTION_98_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2171D8);
      v47 = swift_initStackObject();
      *(v47 + 16) = xmmword_1C755BAB0;
      *(v47 + 32) = v1 + 26;
      *(v47 + 40) = v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
      v48 = OUTLINED_FUNCTION_11_2();
      OUTLINED_FUNCTION_56_32(v48, xmmword_1C7565670);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155F0);
      sub_1C75504DC();
      OUTLINED_FUNCTION_51();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB3268();
        v3 = v78;
      }

      OUTLINED_FUNCTION_68_24();
      if (v46)
      {
        OUTLINED_FUNCTION_41_23(v49);
        sub_1C6FB3268();
        v3 = v79;
      }

      *(v3 + 16) = v47;
      *(v3 + 8 * v0 + 32) = v1 + 26;
      goto LABEL_44;
    }

LABEL_67:
    OUTLINED_FUNCTION_0_46();
    goto LABEL_35;
  }

LABEL_44:
  v50 = v1[26];
  OUTLINED_FUNCTION_69_1();
  swift_bridgeObjectRetain_n();
  v51 = sub_1C71CC894(v50);
  OUTLINED_FUNCTION_40_50(v51, v52, v53, v54, v55, v56, v57, v58, v80, v81, v83[0]);
  if (!v6)
  {
    OUTLINED_FUNCTION_69_1();
    swift_bridgeObjectRelease_n();

    v1[26] = v83[0];
    if (qword_1EDD0ED88 != -1)
    {
      OUTLINED_FUNCTION_0_46();
    }

    OUTLINED_FUNCTION_23_2(v82, &dword_1EDD28D48);
    v61 = sub_1C754FEEC();
    v62 = sub_1C755118C();
    if (OUTLINED_FUNCTION_39_44(v62))
    {
      v63 = OUTLINED_FUNCTION_41_0();
      v83[0] = OUTLINED_FUNCTION_20_1();
      v20 = OUTLINED_FUNCTION_117_12(COERCE_FLOAT(v2[350]));

      MEMORY[0x1CCA5D090](v64, v20);
      v65 = OUTLINED_FUNCTION_77_17();
      OUTLINED_FUNCTION_120_12(v65, v66, v83);
      OUTLINED_FUNCTION_118_13();
      *(v63 + 4) = v20;
      OUTLINED_FUNCTION_113(&dword_1C6F5C000, v67, v68, "TimeExtendedTokenKeywords: %s");
      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_109();
    }

    OUTLINED_FUNCTION_43_39();
    v69 = *(type metadata accessor for StoryMusicCurationDiagnostics() + 32);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_53_37();
    *(v20 + v69) = v83[0];
    swift_endAccess();

    OUTLINED_FUNCTION_20_61();
    OUTLINED_FUNCTION_51_2();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_51_2();
}

uint64_t sub_1C74975C0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 392) = v3;

  v4 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C74976A8()
{
  v75 = v0;
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_46();
  }

  v3 = v0[49];
  v4 = v0[34];
  v5 = v0[32];
  v73 = sub_1C754FF1C();
  __swift_project_value_buffer(v73, &dword_1EDD28D48);
  sub_1C721AB4C(v4, v5);
  sub_1C75504FC();
  v6 = sub_1C754FEEC();
  LOBYTE(v5) = sub_1C755118C();

  if (os_log_type_enabled(v6, v5))
  {
    v7 = v0[49];
    v8 = v0[32];
    OUTLINED_FUNCTION_23_1();
    v74[0] = OUTLINED_FUNCTION_60_11();
    *v3 = 136315394;
    v9 = *v8;
    v10 = v8[1];
    sub_1C75504FC();
    sub_1C7415AE8(v8);
    v2 = sub_1C6F765A4(v9, v10, v74);

    v11 = OUTLINED_FUNCTION_57_31();
    v12 = MEMORY[0x1CCA5D090](v7, v11);
    v1 = v13;
    sub_1C6F765A4(v12, v13, v74);
    OUTLINED_FUNCTION_44_34();

    *(v3 + 14) = v2;
    OUTLINED_FUNCTION_35_30();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_23_3();
  }

  else
  {
    v19 = v0[32];

    sub_1C7415AE8(v19);
  }

  v20 = v0[49];
  v22 = v0[46];
  v21 = v0[47];
  v23 = sub_1C75504FC();
  sub_1C6FD2F68(v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2171D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  *(inited + 32) = v22;
  *(inited + 40) = v21;
  *(inited + 48) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155F0);
  v25 = sub_1C75504DC();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v0[41];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_24_0();
    sub_1C6FB3268();
    v27 = v69;
  }

  OUTLINED_FUNCTION_68_24();
  if (v29)
  {
    OUTLINED_FUNCTION_41_23(v28);
    sub_1C6FB3268();
    v27 = v70;
  }

  OUTLINED_FUNCTION_23_55();
  *(v27 + 16) = v1;
  *(v27 + 8 * v21 + 32) = v25;
  v30 = v0[40];
LABEL_11:
  v31 = v0[34];
  while (2)
  {
    v32 = v0[37];
    v33 = v0[39] + 1;
    sub_1C7415AE8(v31);
    if (v33 == v32)
    {

      v38 = &unk_1C755E000;
      if (*(v30 + 16) >= 3uLL)
      {
        OUTLINED_FUNCTION_36_41();
        OUTLINED_FUNCTION_11_2();
        v39 = OUTLINED_FUNCTION_11_77();
        if (qword_1EDD0ED88 != -1)
        {
          OUTLINED_FUNCTION_0_46();
        }

        OUTLINED_FUNCTION_23_2(v73, &dword_1EDD28D48);

        v40 = sub_1C754FEEC();
        v2 = sub_1C755118C();

        if (os_log_type_enabled(v40, v2))
        {
          v41 = OUTLINED_FUNCTION_41_0();
          v42 = OUTLINED_FUNCTION_20_1();
          v74[0] = v42;
          *v41 = 136315138;

          MusicKeywordCompletion.description.getter();
          OUTLINED_FUNCTION_98_6();

          OUTLINED_FUNCTION_121_9(v43, v44, v74);
          OUTLINED_FUNCTION_24_2();

          *(v41 + 4) = v39;
          OUTLINED_FUNCTION_114_15(&dword_1C6F5C000, v45, v46, "[curateKeywordsForExtendedTokens] OverTheYears: %s");
          __swift_destroy_boxed_opaque_existential_1(v42);
          OUTLINED_FUNCTION_109();
          v38 = &unk_1C755E000;
          OUTLINED_FUNCTION_109();
        }

        MEMORY[0x1CCA5D040](v47);
        OUTLINED_FUNCTION_66_27();
        if (v29)
        {
          OUTLINED_FUNCTION_15(v48);
          OUTLINED_FUNCTION_116_16();
        }

        sub_1C7550BEC();
        MEMORY[0x1CCA5D090](v30, MEMORY[0x1E69E6530]);
        OUTLINED_FUNCTION_98_6();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2171D8);
        v49 = swift_initStackObject();
        *(v49 + 16) = xmmword_1C755BAB0;
        *(v49 + 32) = v0 + 26;
        *(v49 + 40) = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
        v50 = OUTLINED_FUNCTION_11_2();
        OUTLINED_FUNCTION_56_32(v50, xmmword_1C7565670);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155F0);
        sub_1C75504DC();
        OUTLINED_FUNCTION_51();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB3268();
          v27 = v71;
        }

        OUTLINED_FUNCTION_68_24();
        if (v29)
        {
          OUTLINED_FUNCTION_41_23(v51);
          sub_1C6FB3268();
          v27 = v72;
        }

        *(v27 + 16) = v49;
        *(v27 + 8 * v32 + 32) = v0 + 26;
      }

      v52 = v0[26];
      OUTLINED_FUNCTION_69_1();
      swift_bridgeObjectRetain_n();
      v74[0] = sub_1C71CC894(v52);
      sub_1C7493138(v74);
      OUTLINED_FUNCTION_69_1();
      swift_bridgeObjectRelease_n();

      v0[26] = v74[0];
      if (qword_1EDD0ED88 != -1)
      {
        OUTLINED_FUNCTION_0_46();
      }

      OUTLINED_FUNCTION_23_2(v73, &dword_1EDD28D48);
      v53 = sub_1C754FEEC();
      v54 = sub_1C755118C();
      if (OUTLINED_FUNCTION_39_44(v54))
      {
        v55 = OUTLINED_FUNCTION_41_0();
        v74[0] = OUTLINED_FUNCTION_20_1();
        v2 = OUTLINED_FUNCTION_117_12(COERCE_FLOAT(v38[350]));

        MEMORY[0x1CCA5D090](v56, v2);
        v57 = OUTLINED_FUNCTION_77_17();
        OUTLINED_FUNCTION_120_12(v57, v58, v74);
        OUTLINED_FUNCTION_118_13();
        *(v55 + 4) = v2;
        OUTLINED_FUNCTION_113(&dword_1C6F5C000, v59, v60, "TimeExtendedTokenKeywords: %s");
        OUTLINED_FUNCTION_56_2();
        OUTLINED_FUNCTION_109();
      }

      OUTLINED_FUNCTION_43_39();
      v61 = *(type metadata accessor for StoryMusicCurationDiagnostics() + 32);
      swift_isUniquelyReferenced_nonNull_native();
      v74[0] = *(v2 + v61);
      sub_1C6FC8A40();
      *(v2 + v61) = v74[0];
      swift_endAccess();

      OUTLINED_FUNCTION_20_61();
      OUTLINED_FUNCTION_12_1();

      __asm { BRAA            X2, X16 }
    }

    OUTLINED_FUNCTION_33_45();
    switch(*(v33 + 57))
    {
      case 2:

        goto LABEL_17;
      case 5:
        OUTLINED_FUNCTION_72_25();
        goto LABEL_16;
      default:
LABEL_16:
        v2 = OUTLINED_FUNCTION_55_33();

        if (v2)
        {
LABEL_17:
          v31 = v0[34];
          if (*(v31 + 40))
          {
            continue;
          }

          v2 = *(v31 + 32);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_24_0();
            sub_1C6FB3408();
            v30 = v36;
          }

          v35 = *(v30 + 16);
          v34 = *(v30 + 24);
          if (v35 >= v34 >> 1)
          {
            OUTLINED_FUNCTION_41_23(v34);
            sub_1C6FB3408();
            v30 = v37;
          }

          *(v30 + 16) = v35 + 1;
          *(v30 + 8 * v35 + 32) = v2;
          goto LABEL_11;
        }

        switch(*(v0[34] + 57))
        {
          case 1:
          case 2:
          case 3:
          case 4:
          case 6:
            goto LABEL_46;
          case 5:

            goto LABEL_47;
          default:
            OUTLINED_FUNCTION_69_26();
LABEL_46:
            v64 = OUTLINED_FUNCTION_63_27();

            if (v64)
            {
LABEL_47:
              OUTLINED_FUNCTION_25_47();
              v65 = swift_task_alloc();
              v0[44] = v65;
              *v65 = v0;
              OUTLINED_FUNCTION_1_141(v65);
            }

            else
            {
              OUTLINED_FUNCTION_24_50();
              sub_1C75504FC();
              v66 = swift_task_alloc();
              v0[48] = v66;
              *v66 = v0;
              OUTLINED_FUNCTION_2_131();
            }

            OUTLINED_FUNCTION_12_1();

            return sub_1C7458BF0();
        }
    }
  }
}

uint64_t sub_1C7497F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C7497FB4, 0, 0);
}

uint64_t sub_1C7497FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48 = v8;
  static StoryMusicEmbeddingTerms.termsByTags(_:matchAnyTags:)(&unk_1F46AAAB0, 1, a3, a4, a5, a6, a7, a8, v45, v47[0], v47[1], v47[2], v47[3], v47[4]);
  v11 = v10;
  v12 = *(v10 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v46 = v8;
    v47[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_65_23();
    v9 = 0;
    v14 = v47[0];
    v15 = *(v47[0] + 16);
    v16 = 16 * v15;
    do
    {
      v17 = v11;
      v19 = *(v11 + v9 + 32);
      v18 = *(v11 + v9 + 40);
      v47[0] = v14;
      v20 = *(v14 + 24);
      sub_1C75504FC();
      if (v15 >= v20 >> 1)
      {
        sub_1C6F7ED9C();
        v14 = v47[0];
      }

      *(v14 + 16) = v15 + 1;
      v21 = v14 + v16;
      *(v21 + 32) = v19;
      *(v21 + 40) = v18;
      v16 += 16;
      v9 += 48;
      ++v15;
      --v12;
      v11 = v17;
    }

    while (v12);

    v8 = v46;
    v13 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v8[17] = v14;
  v22 = v8[13];
  v8[12] = v13;
  v23 = v22[2];
  v8[18] = v23;
  if (!v23)
  {

    v27 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_69_1();
    swift_bridgeObjectRetain_n();
    v47[0] = sub_1C71CC894(v27);
    sub_1C7493138(v47);
    swift_bridgeObjectRelease_n();
    v8[12] = v47[0];
    if (qword_1EDD0ED88 != -1)
    {
      OUTLINED_FUNCTION_0_46();
    }

    v28 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v28, &dword_1EDD28D48);
    v29 = sub_1C754FEEC();
    v30 = sub_1C755118C();
    if (OUTLINED_FUNCTION_32(v30))
    {
      v31 = OUTLINED_FUNCTION_41_0();
      v32 = OUTLINED_FUNCTION_20_1();
      v47[0] = v32;
      v33 = OUTLINED_FUNCTION_119_16(4.8149e-34);

      MEMORY[0x1CCA5D090](v34, v33);
      OUTLINED_FUNCTION_74_17();
      v35 = sub_1C6F765A4(v33, v9, v47);

      *(v31 + 4) = v35;
      OUTLINED_FUNCTION_35_30();
      _os_log_impl(v36, v37, v38, v39, v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_23_3();
    }

    v41 = v8[16] + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
    OUTLINED_FUNCTION_20_18();
    v42 = *(type metadata accessor for StoryMusicCurationDiagnostics() + 32);
    swift_isUniquelyReferenced_nonNull_native();
    v47[0] = *(v41 + v42);
    sub_1C6FC8A40();
    *(v41 + v42) = v47[0];
    swift_endAccess();
    OUTLINED_FUNCTION_4_91();
    OUTLINED_FUNCTION_17_1();

    __asm { BRAA            X2, X16 }
  }

  v8[20] = v13;
  v8[21] = v13;
  v8[19] = 0;
  OUTLINED_FUNCTION_47_27(v22);
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v24 = swift_task_alloc();
  v8[26] = v24;
  *v24 = v8;
  OUTLINED_FUNCTION_16_69(v24);
  OUTLINED_FUNCTION_17_1();

  return sub_1C7458BF0();
}

uint64_t sub_1C7498348()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 216) = v3;

  v4 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C7498430()
{
  v35 = v0;
  v2 = v0[27];
  if (v2 >> 62)
  {
    if (sub_1C75516BC())
    {
      goto LABEL_3;
    }

LABEL_14:

    v13 = v0[20];
    v8 = v0[21];
    goto LABEL_15;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1CCA5DDD0](0, v0[27]);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_28;
    }
  }

  MEMORY[0x1CCA5D040](v3);
  OUTLINED_FUNCTION_66_27();
  if (v5)
  {
    OUTLINED_FUNCTION_15(v4);
    sub_1C7550B9C();
  }

  v7 = v0[22];
  v6 = v0[23];
  sub_1C7550BEC();
  v8 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2171D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  *(inited + 32) = v7;
  *(inited + 40) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v10 = OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_56_32(v10, xmmword_1C7565670);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155F0);
  v11 = sub_1C75504DC();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = v0[20];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_24_0();
    sub_1C6FB3268();
    v13 = v32;
  }

  v15 = *(v13 + 16);
  v14 = *(v13 + 24);
  v1 = v15 + 1;
  if (v15 >= v14 >> 1)
  {
    OUTLINED_FUNCTION_15(v14);
    OUTLINED_FUNCTION_186();
    sub_1C6FB3268();
    v13 = v33;
  }

  *(v13 + 16) = v1;
  *(v13 + 8 * v15 + 32) = v11;
LABEL_15:
  v16 = v0[19] + 1;
  if (v16 == v0[18])
  {

    OUTLINED_FUNCTION_69_1();
    swift_bridgeObjectRetain_n();
    v34[0] = sub_1C71CC894(v8);
    sub_1C7493138(v34);
    OUTLINED_FUNCTION_69_1();
    swift_bridgeObjectRelease_n();
    v0[12] = v34[0];
    if (qword_1EDD0ED88 == -1)
    {
LABEL_21:
      v20 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v20, &dword_1EDD28D48);
      v21 = sub_1C754FEEC();
      v22 = sub_1C755118C();
      if (OUTLINED_FUNCTION_39_44(v22))
      {
        v23 = OUTLINED_FUNCTION_41_0();
        v34[0] = OUTLINED_FUNCTION_20_1();
        *v23 = 136315138;
        v24 = type metadata accessor for MusicKeywordCompletion();

        MEMORY[0x1CCA5D090](v25, v24);
        v26 = OUTLINED_FUNCTION_77_17();
        OUTLINED_FUNCTION_120_12(v26, v27, v34);
        OUTLINED_FUNCTION_118_13();
        *(v23 + 4) = v24;
        _os_log_impl(&dword_1C6F5C000, v21, v1, "[curateKeywordsForExtendedTokens] LocationExtendedTokenKeywords: %s", v23, 0xCu);
        OUTLINED_FUNCTION_56_2();
        OUTLINED_FUNCTION_109();
      }

      v28 = v0[16] + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
      OUTLINED_FUNCTION_20_18();
      v29 = *(type metadata accessor for StoryMusicCurationDiagnostics() + 32);
      swift_isUniquelyReferenced_nonNull_native();
      v34[0] = *(v28 + v29);
      sub_1C6FC8A40();
      *(v28 + v29) = v34[0];
      swift_endAccess();
      OUTLINED_FUNCTION_20_61();
      OUTLINED_FUNCTION_20_3();

      __asm { BRAA            X2, X16 }
    }

LABEL_28:
    OUTLINED_FUNCTION_0_46();
    goto LABEL_21;
  }

  v0[20] = v13;
  v0[21] = v8;
  v0[19] = v16;
  OUTLINED_FUNCTION_47_27((v0[13] + 56 * v16));
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v17 = swift_task_alloc();
  v0[26] = v17;
  *v17 = v0;
  OUTLINED_FUNCTION_16_69();
  OUTLINED_FUNCTION_20_3();

  return sub_1C7458BF0();
}

void sub_1C74988C8(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1C7551D7C();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1C739D494(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1C74989A8(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1C70CCF4C(0, v3, 1, a1);
  }
}

void sub_1C74989A8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v79 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v74 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*(*a3 + 8 * v6) + 32);
        v10 = *(*(*a3 + 8 * v8) + 32);
        v11 = v6 + 2;
        v12 = v10;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (v12 >= *(*(*a3 + 8 * v11++) + 32));
          v12 = *(*(*a3 + 8 * v13) + 32);
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

            v15 = 8 * v5 - 8;
            v16 = 8 * v6;
            v17 = v8;
            v18 = v6;
            do
            {
              if (v18 != --v17)
              {
                v19 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v20 = *(v19 + v16);
                *(v19 + v16) = *(v19 + v15);
                *(v19 + v15) = v20;
              }

              ++v18;
              v15 -= 8;
              v16 += 8;
            }

            while (v18 < v17);
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
            v21 = *a3;
            v22 = *a3 + 8 * v8 - 8;
            v23 = v6 - v8;
            do
            {
              v24 = *(v21 + 8 * v8);
              v25 = v23;
              v26 = v22;
              do
              {
                v27 = *v26;
                if (*(*v26 + 32) >= *(v24 + 32))
                {
                  break;
                }

                if (!v21)
                {
                  goto LABEL_111;
                }

                *v26 = v24;
                v26[1] = v27;
                --v26;
              }

              while (!__CFADD__(v25++, 1));
              ++v8;
              v22 += 8;
              --v23;
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

      v76 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB17EC();
        v7 = v72;
      }

      v29 = v7[2];
      v30 = v29 + 1;
      if (v29 >= v7[3] >> 1)
      {
        sub_1C6FB17EC();
        v7 = v73;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      v77 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
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

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = *(v67 + 1);
          sub_1C70CD59C((*a3 + 8 * *v65), (*a3 + 8 * *v67), (*a3 + 8 * v68), v77);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = v7[2];
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          sub_1C7423CF4(v67 + 16, v70 - 1 - v33, &v31[2 * v33]);
          v69[2] = v70 - 1;
          v71 = v70 > 2;
          v7 = v69;
          if (!v71)
          {
            goto LABEL_85;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v76;
      a4 = v74;
      if (v76 >= v5)
      {
        v79 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1C70CD470(&v79, *a1, a3);
LABEL_89:
}

void OUTLINED_FUNCTION_24_50()
{
  v1 = v0[34];
  v0[46] = *v1;
  v0[47] = v1[1];
}

uint64_t OUTLINED_FUNCTION_40_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a11 = a1;

  return sub_1C7493138(&a11);
}

uint64_t OUTLINED_FUNCTION_43_39()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_47_27(void *a1@<X8>)
{
  v1[22] = a1[4];
  v1[23] = a1[5];
  v1[24] = a1[7];
  v1[25] = a1[10];
}

uint64_t OUTLINED_FUNCTION_53_37()
{

  return sub_1C6FC8A40();
}

uint64_t OUTLINED_FUNCTION_54_34()
{
  v2 = *(v0 + 104);

  return sub_1C6FD2F68(v2);
}

uint64_t OUTLINED_FUNCTION_55_33()
{

  return sub_1C7551DBC();
}

uint64_t OUTLINED_FUNCTION_56_32(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v2;
  *(v3 + 48) = a1;
}

uint64_t OUTLINED_FUNCTION_62_27()
{

  return sub_1C755195C();
}

uint64_t OUTLINED_FUNCTION_63_27()
{

  return sub_1C7551DBC();
}

uint64_t OUTLINED_FUNCTION_74_17()
{
}

uint64_t OUTLINED_FUNCTION_76_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  a20 = a1;

  return sub_1C7493138(&a20);
}

uint64_t OUTLINED_FUNCTION_77_17()
{
}

void OUTLINED_FUNCTION_78_18()
{

  sub_1C6F7ED9C();
}

uint64_t OUTLINED_FUNCTION_80_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return sub_1C6FB6304(a11);
}

uint64_t OUTLINED_FUNCTION_81_24()
{

  return sub_1C75504FC();
}

void OUTLINED_FUNCTION_114_15(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_115_16(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v4;
  a1[2].n128_u64[1] = v3;
  a1[3].n128_u64[0] = v2;

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_116_16()
{

  return sub_1C7550B9C();
}

uint64_t OUTLINED_FUNCTION_117_12(float a1)
{
  *v1 = a1;

  return type metadata accessor for MusicKeywordCompletion();
}

uint64_t OUTLINED_FUNCTION_118_13()
{
}

uint64_t OUTLINED_FUNCTION_119_16(float a1)
{
  *v1 = a1;

  return type metadata accessor for MusicKeywordCompletion();
}

uint64_t OUTLINED_FUNCTION_120_12(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1C6F765A4(v3, v4, a3);
}

uint64_t OUTLINED_FUNCTION_121_9(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1C6F765A4(v4, v3, a3);
}

void sub_1C74992D4(uint64_t a1, void *a2)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  while (v6 != v5)
  {
    if (v5 >= v6)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v8 = *(sub_1C754DF6C() - 8);
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_15;
    }

    sub_1C749D260(a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v5, a2, &v15);
    if (v2)
    {

      return;
    }

    v10 = v16;
    ++v5;
    if (v16)
    {
      v17 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v7 = v13;
      }

      v11 = *(v7 + 16);
      if (v11 >= *(v7 + 24) >> 1)
      {
        sub_1C6FB1814();
        v7 = v14;
      }

      *(v7 + 16) = v11 + 1;
      v12 = v7 + 16 * v11;
      *(v12 + 32) = v17;
      *(v12 + 40) = v10;
      v5 = v9;
    }
  }
}

uint64_t sub_1C7499448(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C7423D10();
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1C749E05C(v6);
  return sub_1C755193C();
}

uint64_t sub_1C74994C4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422C0C();
    v4 = v5;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_1C75504FC();
  sub_1C749E13C(v8, a2);
  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

void sub_1C7499560(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CD0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422C24();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1C749E284(v6);
  *a1 = v3;
}

void sub_1C7499614(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t *a3, uint64_t a4, void (*a5)(char *, int64_t, char *))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v12[0] = v10 + 32;
  v12[1] = v11;
  sub_1C749E3CC(v12, a3, a4, a5);
  *a1 = v10;
}

uint64_t PersonalTraitGenerator.AssetClusterWithSamples.init(assetUUIDs:sampledAssetUUIDs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void *sub_1C7499708(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  v2[15] = a2;
  v2[16] = 0;
  v2[14] = a1;
  return v2;
}

uint64_t sub_1C7499748(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_8_93();
}

uint64_t sub_1C7499760()
{
  v48 = v0;
  v1 = sub_1C7499C20();
  sub_1C7033F04(*(v0 + 16), v1);
  v3 = v2;
  v5 = v4;
  if (v4)
  {
    sub_1C7551DEC();
    swift_unknownObjectRetain_n();
    v8 = swift_dynamicCastClass();
    if (!v8)
    {
      swift_unknownObjectRelease();
      v8 = MEMORY[0x1E69E7CC0];
    }

    v9 = *(v8 + 16);

    if (__OFSUB__(v5 >> 1, v3))
    {
      goto LABEL_42;
    }

    if (v9 != (v5 >> 1) - v3)
    {
      goto LABEL_43;
    }

    v7 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v7)
    {
      goto LABEL_10;
    }

    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  while (1)
  {
    sub_1C739C4D0();
    v7 = v6;
LABEL_9:
    swift_unknownObjectRelease();
LABEL_10:
    v10 = *(v7 + 16);
    v45 = v0;
    if (!v10)
    {

      v12 = MEMORY[0x1E69E7CC0];
      goto LABEL_28;
    }

    v11 = *(v0 + 24);
    v47 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_11_78();
    sub_1C716DFEC();
    if ((v11 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_unknownObjectRelease();
  }

  v44 = *(v0 + 24);
  v12 = v47;
  v13 = 32;
  do
  {
    v14 = *(v0 + 24);
    v15 = v7;
    v16 = *(v7 + v13);
    v17 = v16[2];
    if (v17 < v14)
    {
      v14 = v16[2];
    }

    if (v44)
    {
      v18 = v14;
    }

    else
    {
      v18 = 0;
    }

    if (v17 == v18)
    {
      sub_1C75504FC();
      v19 = v16;
    }

    else if (v18)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
      v19 = swift_allocObject();
      _swift_stdlib_malloc_size(v19);
      OUTLINED_FUNCTION_27_4();
      v19[2] = v18;
      v19[3] = v20;
      swift_arrayInitWithCopy();
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
    }

    v47 = v12;
    v22 = v12[2];
    v21 = v12[3];
    sub_1C75504FC();
    if (v22 >= v21 >> 1)
    {
      OUTLINED_FUNCTION_186();
      sub_1C716DFEC();
      v12 = v47;
    }

    v12[2] = v22 + 1;
    v23 = &v12[2 * v22];
    v23[4] = v16;
    v23[5] = v19;
    v13 += 8;
    --v10;
    v0 = v45;
    v7 = v15;
  }

  while (v10);

LABEL_28:
  if (qword_1EC2141A0 != -1)
  {
    OUTLINED_FUNCTION_7_100();
    swift_once();
  }

  v24 = sub_1C754FF1C();
  __swift_project_value_buffer(v24, qword_1EC21C418);
  sub_1C75504FC();
  v25 = sub_1C754FEEC();
  v26 = sub_1C75511BC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    v46 = v28;
    *v27 = 136315138;
    v30 = v12[2];
    v31 = MEMORY[0x1E69E7CC0];
    if (v30)
    {
      v43 = v28;
      v47 = MEMORY[0x1E69E7CC0];
      sub_1C716D5B0(0, v30, 0);
      v31 = v47;
      v32 = v47[2];
      v33 = v12 + 5;
      do
      {
        v34 = *v33;
        v47 = v31;
        v35 = v31[3];
        sub_1C75504FC();
        if (v32 >= v35 >> 1)
        {
          sub_1C716D5B0((v35 > 1), v32 + 1, 1);
          v31 = v47;
        }

        v31[2] = v32 + 1;
        v31[v32 + 4] = v34;
        v33 += 2;
        ++v32;
        --v30;
      }

      while (v30);
      v29 = v43;
    }

    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    v37 = MEMORY[0x1CCA5D090](v31, v36);
    v39 = v38;

    v40 = sub_1C6F765A4(v37, v39, &v46);

    *(v27 + 4) = v40;
    _os_log_impl(&dword_1C6F5C000, v25, v26, "Sampled representative assets per cluster: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  OUTLINED_FUNCTION_116();

  return v41(v12);
}

uint64_t sub_1C7499C20()
{
  v204[1] = *MEMORY[0x1E69E9840];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216F50);
  v2 = OUTLINED_FUNCTION_76(v1);
  MEMORY[0x1EEE9AC00](v2);
  v191 = &v173 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A30);
  v5 = OUTLINED_FUNCTION_76(v4);
  MEMORY[0x1EEE9AC00](v5);
  v197 = &v173 - v6;
  OUTLINED_FUNCTION_37_3();
  v200 = sub_1C754DFFC();
  OUTLINED_FUNCTION_3_0();
  v194 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_78();
  v199 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_140_1();
  v192 = v12;
  OUTLINED_FUNCTION_37_3();
  v198 = sub_1C754EF5C();
  OUTLINED_FUNCTION_3_0();
  v196 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v193 = &v173 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_37_3();
  sub_1C754EFBC();
  OUTLINED_FUNCTION_3_0();
  v189 = v16;
  v190 = v17;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_78();
  v20 = (v18 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v173 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v173 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8);
  v28 = OUTLINED_FUNCTION_76(v27);
  MEMORY[0x1EEE9AC00](v28);
  v30 = (&v173 - v29);
  v31 = sub_1C754EFDC();
  OUTLINED_FUNCTION_3_0();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = (&v173 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_78();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_140_1();
  v43 = *(v0 + 128);
  if (v43)
  {
    sub_1C75504FC();
    return v43;
  }

  v183 = v42;
  v184 = v41;
  v178 = v33;
  v179 = v31;
  v180 = v36;
  v181 = v30;
  v187 = v0;
  v174 = v23;
  v175 = v20;
  v182 = v40;
  v186 = v39;
  v188 = v26;
  if (qword_1EC2141A0 != -1)
  {
LABEL_77:
    OUTLINED_FUNCTION_7_100();
    swift_once();
  }

  v44 = sub_1C754FF1C();
  v45 = __swift_project_value_buffer(v44, qword_1EC21C418);
  v46 = v187;

  v176 = v45;
  v47 = sub_1C754FEEC();
  v48 = sub_1C75511BC();
  v49 = OUTLINED_FUNCTION_7_0(v48);
  v50 = v195;
  v52 = v197;
  v51 = v198;
  if (v49)
  {
    v53 = swift_slowAlloc();
    *v53 = 134217984;
    *(v53 + 4) = *(*(v46 + 112) + 16);

    _os_log_impl(&dword_1C6F5C000, v47, v45, "Visual Clustering %ld assets", v53, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  if (qword_1EC214198 != -1)
  {
    swift_once();
  }

  v54 = qword_1EC21C410;
  type metadata accessor for PerformanceMeasure();
  swift_allocObject();
  v55 = v54;
  v185 = PerformanceMeasure.init(name:log:)();
  v56 = objc_opt_self();
  v57 = [*(v46 + 120) photoLibraryURL];
  v58 = v183;
  sub_1C754DCCC();

  v59 = sub_1C754DC8C();
  v60 = v184;
  v61 = *(v184 + 8);
  v62 = v58;
  v63 = v186;
  v183 = v184 + 8;
  v177 = v61;
  v61(v62, v186);
  v204[0] = 0;
  v64 = [v56 requestVUIndexURLForPhotoLibraryURL:v59 error:v204];

  v65 = v204[0];
  if (!v64)
  {
    v70 = v204[0];
    sub_1C754DBEC();

    swift_willThrow();
    v71 = v176;
    v43 = sub_1C754FEEC();
    v72 = sub_1C755119C();
    if (OUTLINED_FUNCTION_7_0(v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_1C6F5C000, v43, v71, "Unable to acquire access to the VU Index.", v73, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    swift_willThrow();
    goto LABEL_15;
  }

  v66 = v182;
  sub_1C754DCCC();
  v67 = v65;

  (*(v178 + 104))(v180, *MEMORY[0x1E69E0608], v179);
  v43 = v181;
  (*(v60 + 16))(v181, v66, v63);
  __swift_storeEnumTagSinglePayload(v43, 0, 1, v63);
  sub_1C754EFFC();
  swift_allocObject();
  v68 = sub_1C754EFCC();
  if (v50)
  {
    OUTLINED_FUNCTION_9_93();
    v69();
LABEL_15:

    return v43;
  }

  v179 = v68;
  v195 = 0;
  (*(v196 + 104))(v193, *MEMORY[0x1E69E05B8], v51);
  v75 = 0;
  v76 = *(v187 + 112);
  v77 = *(v76 + 16);
  v184 = v194 + 32;
  v43 = MEMORY[0x1E69E7CC0];
  v78 = (v76 + 40);
  v181 = (v76 + 40);
LABEL_18:
  v79 = &v78[2 * v75];
  while (v77 != v75)
  {
    if (v75 >= *(v76 + 16))
    {
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    sub_1C75504FC();
    sub_1C754DF7C();

    if (__swift_getEnumTagSinglePayload(v52, 1, v200) != 1)
    {
      v180 = *v184;
      v180(v192, v52, v200);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = OUTLINED_FUNCTION_24_0();
        sub_1C6FB2B50(v82, v83, v84, v43);
        v43 = v85;
      }

      isa = v43[2].isa;
      v80 = v43[3].isa;
      if (isa >= v80 >> 1)
      {
        OUTLINED_FUNCTION_15(v80);
        OUTLINED_FUNCTION_186();
        sub_1C6FB2B50(v86, v87, v88, v43);
        v43 = v89;
      }

      ++v75;
      v43[2].isa = (isa + 1);
      v180((v43 + ((*(v194 + 80) + 32) & ~*(v194 + 80)) + *(v194 + 72) * isa), v192, v200);
      v78 = v181;
      goto LABEL_18;
    }

    sub_1C7030CDC(v52, &unk_1EC217A30);
    v79 += 2;
    ++v75;
  }

  v90 = sub_1C754EF7C();
  v91 = v191;
  __swift_storeEnumTagSinglePayload(v191, 1, 1, v90);
  v92 = v188;
  v93 = v195;
  sub_1C754EFEC();
  v94 = v93;
  if (v93)
  {

    sub_1C7030CDC(v91, &qword_1EC216F50);
    v95 = OUTLINED_FUNCTION_24_51();
    v96(v95);
    OUTLINED_FUNCTION_9_93();
    v97();
    return v43;
  }

  sub_1C7030CDC(v91, &qword_1EC216F50);
  v98 = OUTLINED_FUNCTION_24_51();
  v99(v98);
  sub_1C6F85170();
  v100 = sub_1C754EFAC();
  v101 = *(v76 + 16);
  v102 = v190;
  v103 = v194;
  v104 = v199;
  v195 = 0;
  if (v100 < v101)
  {
    v105 = *(v190 + 16);
    v106 = v189;
    v105(v174, v92, v189);
    v105(v175, v92, v106);
    v107 = sub_1C754FEEC();
    v108 = sub_1C75511BC();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      *v109 = 134218240;
      v110 = v174;
      v198 = sub_1C754EFAC();
      v111 = *(v102 + 8);
      v111(v110, v106);
      *(v109 + 4) = v198;
      *(v109 + 12) = 2048;
      v112 = v175;
      v113 = sub_1C754EF9C();
      v198 = v107;
      v114 = v113;
      v111(v112, v106);
      *(v109 + 14) = v114;
      v107 = v198;
      v104 = v199;
      _os_log_impl(&dword_1C6F5C000, v198, v108, "The clustering is not complete for all queried assets. fullModeCount = %ld, fastModeCount = %ld. Trying to generate personal traits anyways.", v109, 0x16u);
      v94 = v195;
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
      v115 = *(v102 + 8);
      v115(v175, v106);
      v115(v174, v106);
    }
  }

  v116 = sub_1C754EF8C();
  v117 = *(v116 + 16);
  if (v117)
  {
    v204[0] = MEMORY[0x1E69E7CC0];
    v180 = v116;
    v181 = v117;
    sub_1C716D5B0(0, v117, 0);
    v118 = OUTLINED_FUNCTION_26_50();
    v120 = 0;
    v121 = v204[0];
    v184 = v118 + 32;
    v196 = v103 + 8;
    v197 = (v103 + 16);
    while (v120 < *(v118 + 16))
    {
      v122 = *(v184 + 8 * v120);
      v123 = *(v122 + 16);
      if (v123)
      {
        v192 = v120;
        v193 = v121;
        v203 = MEMORY[0x1E69E7CC0];
        sub_1C75504FC();
        sub_1C6F7ED9C();
        v124 = v203;
        v125 = *(v103 + 80);
        v191 = v122;
        v126 = v122 + ((v125 + 32) & ~v125);
        v198 = *(v103 + 72);
        v127 = *(v103 + 16);
        do
        {
          v128 = v200;
          v127(v104, v126, v200);
          v129 = sub_1C754DF8C();
          v131 = v130;
          (*v196)(v104, v128);
          v203 = v124;
          v133 = *(v124 + 16);
          v132 = *(v124 + 24);
          if (v133 >= v132 >> 1)
          {
            OUTLINED_FUNCTION_15(v132);
            sub_1C6F7ED9C();
            v124 = v203;
          }

          *(v124 + 16) = v133 + 1;
          v134 = v124 + 16 * v133;
          *(v134 + 32) = v129;
          *(v134 + 40) = v131;
          v104 = v199;
          v126 += v198;
          --v123;
        }

        while (v123);

        v103 = v194;
        v94 = v195;
        v92 = v188;
        v120 = v192;
        v121 = v193;
        v118 = v180;
        v119 = v181;
      }

      else
      {
        v124 = MEMORY[0x1E69E7CC0];
      }

      v204[0] = v121;
      v136 = *(v121 + 2);
      v135 = *(v121 + 3);
      if (v136 >= v135 >> 1)
      {
        v137 = OUTLINED_FUNCTION_15(v135);
        sub_1C716D5B0(v137, v136 + 1, 1);
        v118 = OUTLINED_FUNCTION_26_50();
        v121 = v204[0];
      }

      v120 = (v120 + 1);
      *(v121 + 2) = v136 + 1;
      *&v121[8 * v136 + 32] = v124;
      if (v120 == v119)
      {

        goto LABEL_50;
      }
    }

    goto LABEL_76;
  }

  v121 = MEMORY[0x1E69E7CC0];
LABEL_50:
  v138 = *(v121 + 2);
  v139 = MEMORY[0x1E69E7CC0];
  if (v138)
  {
    v204[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_11_78();
    sub_1C716DFCC();
    v139 = v204[0];
    v193 = v121;
    v140 = (v121 + 32);
    do
    {
      v141 = *v140;
      v203 = *v140;
      sub_1C75504FC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
      sub_1C7099594(&qword_1EDD0CF58, &unk_1EC217A00);
      v142 = sub_1C75505FC();
      v144 = v143;
      v204[0] = v139;
      v146 = v139[2];
      v145 = v139[3];
      if (v146 >= v145 >> 1)
      {
        OUTLINED_FUNCTION_15(v145);
        OUTLINED_FUNCTION_186();
        sub_1C716DFCC();
        v139 = v204[0];
      }

      v139[2] = v146 + 1;
      v147 = &v139[3 * v146];
      v147[4] = v142;
      v147[5] = v144;
      v147[6] = v141;
      ++v140;
      --v138;
    }

    while (v138);
    v94 = v195;
    v92 = v188;
  }

  v204[0] = v139;
  sub_1C75504FC();
  sub_1C7499614(v204, sub_1C7422C3C, &qword_1EC218198, &unk_1C7570F50, sub_1C7423D18);
  if (!v94)
  {
    v195 = 0;

    v148 = v204[0];
    v149 = *(v204[0] + 2);
    if (v149)
    {
      v204[0] = MEMORY[0x1E69E7CC0];
      v150 = OUTLINED_FUNCTION_11_78();
      sub_1C716D5B0(v150, v151, v152);
      v153 = 48;
      v43 = v204[0];
      do
      {
        v154 = *&v148[v153];
        v204[0] = v43;
        v156 = v43[2].isa;
        v155 = v43[3].isa;
        sub_1C75504FC();
        if (v156 >= v155 >> 1)
        {
          sub_1C716D5B0((v155 > 1), v156 + 1, 1);
          v43 = v204[0];
        }

        v43[2].isa = (v156 + 1);
        v43[v156 + 4].isa = v154;
        v153 += 24;
        --v149;
      }

      while (v149);
    }

    else
    {

      v43 = MEMORY[0x1E69E7CC0];
    }

    sub_1C75504FC();
    v157 = sub_1C754FEEC();
    v158 = sub_1C75511BC();
    v159 = os_log_type_enabled(v157, v158);
    v160 = v190;
    if (v159)
    {
      v161 = swift_slowAlloc();
      v200 = swift_slowAlloc();
      v204[0] = v200;
      *v161 = 134218242;
      *(v161 + 4) = v43[2];

      *(v161 + 12) = 2080;
      swift_getKeyPath();
      v162 = v43[2].isa;
      if (v162)
      {
        LODWORD(v198) = v158;
        v199 = v157;
        v203 = MEMORY[0x1E69E7CC0];
        sub_1C716D854();
        v163 = v203;
        v164 = v43 + 4;
        do
        {
          v201 = v164->isa;
          sub_1C75504FC();
          swift_getAtKeyPath();

          v165 = v202;
          v203 = v163;
          v167 = *(v163 + 16);
          v166 = *(v163 + 24);
          if (v167 >= v166 >> 1)
          {
            OUTLINED_FUNCTION_15(v166);
            sub_1C716D854();
            v163 = v203;
          }

          *(v163 + 16) = v167 + 1;
          *(v163 + 8 * v167 + 32) = v165;
          ++v164;
          v162 = (v162 - 1);
        }

        while (v162);

        v160 = v190;
        v92 = v188;
        v157 = v199;
        LOBYTE(v158) = v198;
      }

      else
      {

        v163 = MEMORY[0x1E69E7CC0];
      }

      v168 = MEMORY[0x1CCA5D090](v163, MEMORY[0x1E69E6530]);
      v170 = v169;

      v171 = sub_1C6F765A4(v168, v170, v204);

      *(v161 + 14) = v171;
      _os_log_impl(&dword_1C6F5C000, v157, v158, "Visual Clustering produced %ld clusters of sizes: %s", v161, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v200);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    (*(v160 + 8))(v92, v189);
    OUTLINED_FUNCTION_9_93();
    v172();
    *(v187 + 128) = v43;
    sub_1C75504FC();

    return v43;
  }

  __break(1u);
  return result;
}

uint64_t PersonalTraitGenerator.VUAssetSampler.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PersonalTraitGenerator.VUAssetSampler.__deallocating_deinit()
{
  PersonalTraitGenerator.VUAssetSampler.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C749AEFC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C74A36A4;

  return sub_1C7499748(a1, a2);
}

uint64_t sub_1C749AFB0(uint64_t a1, uint64_t *a2)
{
  sub_1C6F65BE8(0, &qword_1EDD0FA60);
  result = sub_1C755146C();
  *a2 = result;
  return result;
}

uint64_t sub_1C749B058(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return sub_1C754FF2C();
}

uint64_t sub_1C749B0EC(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = *(a4 + 4);
  v10 = a4[2];
  swift_defaultActor_initialize();
  *(v4 + 112) = 4;
  *(v4 + 120) = a1;
  *(v4 + 128) = a2;
  *(v4 + 136) = a3 & 1;
  *(v4 + 144) = v8;
  *(v4 + 152) = v9;
  *(v4 + 160) = v10;
  return v4;
}

uint64_t sub_1C749B164(uint64_t a1)
{
  result = MEMORY[0x1E69E7CC0];
  if (a1 >= 1)
  {
    v111 = a1;
    v128 = v2;
    v5 = sub_1C75504FC();
    v6 = sub_1C706D154(v5);
    v7 = *(v1 + 152);
    v122 = v1;
    v124 = *(v1 + 144);
    v8 = *(v1 + 160);
    LOWORD(v125) = v7;
    v126 = v8;
    v9 = v124;

    v10 = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v6, &v124);

    v11 = v124;

    v12 = v10 + 64;
    v13 = 1 << *(v10 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v10 + 64);
    v16 = (v13 + 63) >> 6;
    v115 = v10;
    sub_1C75504FC();
    v17 = 0;
    v18 = MEMORY[0x1E69E7CC8];
    v113 = v16;
    v114 = v12;
    if (v15)
    {
LABEL_9:
      while (1)
      {
        v20 = (v17 << 10) | (16 * __clz(__rbit64(v15)));
        v21 = (*(v115 + 48) + v20);
        v117 = v21[1];
        v119 = *v21;
        v22 = (*(v115 + 56) + v20);
        v23 = *v22;
        v24 = v22[1];
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_isUniquelyReferenced_nonNull_native();
        v124 = v18;
        v25 = sub_1C6F78124(v23, v24);
        if (__OFADD__(v18[2], (v26 & 1) == 0))
        {
          break;
        }

        v27 = v25;
        v28 = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DC0);
        v29 = sub_1C7551A2C();
        v18 = v124;
        if (v29)
        {
          v30 = sub_1C6F78124(v23, v24);
          if ((v28 & 1) != (v31 & 1))
          {
            goto LABEL_60;
          }

          v27 = v30;
        }

        if (v28)
        {
        }

        else
        {
          v18[(v27 >> 6) + 8] |= 1 << v27;
          v32 = (v18[6] + 16 * v27);
          *v32 = v23;
          v32[1] = v24;
          *(v18[7] + 8 * v27) = MEMORY[0x1E69E7CC0];
          v33 = v18[2];
          v34 = __OFADD__(v33, 1);
          v35 = v33 + 1;
          if (v34)
          {
            goto LABEL_57;
          }

          v18[2] = v35;
        }

        v36 = v18[7];
        v37 = *(v36 + 8 * v27);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v36 + 8 * v27) = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB1814();
          v37 = v43;
          *(v36 + 8 * v27) = v43;
        }

        v40 = *(v37 + 16);
        v39 = *(v37 + 24);
        if (v40 >= v39 >> 1)
        {
          OUTLINED_FUNCTION_15(v39);
          OUTLINED_FUNCTION_186();
          sub_1C6FB1814();
          *(v36 + 8 * v27) = v44;
        }

        v15 &= v15 - 1;

        v41 = *(v36 + 8 * v27);
        *(v41 + 16) = v40 + 1;
        v42 = v41 + 16 * v40;
        *(v42 + 32) = v119;
        *(v42 + 40) = v117;
        v16 = v113;
        v12 = v114;
        if (!v15)
        {
          goto LABEL_5;
        }
      }

LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
    }

    else
    {
      while (1)
      {
LABEL_5:
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
          goto LABEL_54;
        }

        if (v19 >= v16)
        {
          break;
        }

        v15 = *(v12 + 8 * v19);
        ++v17;
        if (v15)
        {
          v17 = v19;
          goto LABEL_9;
        }
      }

      v45 = v128;
      v46 = sub_1C723F424(v18, sub_1C74A2DBC, v122);

      sub_1C739C450(v46, v47, v48, v49, v50, v51, v52, v53, v111, v113, v114, v115, v117, v119, v122, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134);
      v124 = v54;
      sub_1C7499614(&v124, sub_1C7422BDC, &qword_1EC218188, &unk_1C7570F40, sub_1C7423D18);
      v17 = v45;
      if (v45)
      {
        goto LABEL_61;
      }

      sub_1C7033F04(v112, v124);
      v58 = (v57 >> 1) - v56;
      if (!__OFSUB__(v57 >> 1, v56))
      {
        v128 = 0;
        if (v58)
        {
          v59 = v55;
          v60 = v56;
          v120 = v57 >> 1;
          v124 = MEMORY[0x1E69E7CC0];
          sub_1C716DF64();
          if (v58 < 0)
          {
            goto LABEL_59;
          }

          v17 = v124;
          v61 = (v59 + 24 * v60 + 16);
          v62 = v120;
          while (v60 < v62)
          {
            v64 = *(v61 - 2);
            v63 = *(v61 - 1);
            v65 = *v61;
            v124 = v17;
            v67 = *(v17 + 16);
            v66 = *(v17 + 24);
            sub_1C75504FC();
            sub_1C75504FC();
            if (v67 >= v66 >> 1)
            {
              sub_1C716DF64();
              v62 = v120;
              v17 = v124;
            }

            *(v17 + 16) = v67 + 1;
            v68 = (v17 + 24 * v67);
            v68[4] = v64;
            v68[5] = v63;
            v68[6] = v65;
            ++v60;
            v61 += 3;
            if (v62 == v60)
            {
              swift_unknownObjectRelease();
              goto LABEL_34;
            }
          }

LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        swift_unknownObjectRelease();
        v17 = MEMORY[0x1E69E7CC0];
LABEL_34:
        v69 = *(v17 + 16);
        v70 = MEMORY[0x1E69E7CC0];
        if (v69)
        {
          v124 = MEMORY[0x1E69E7CC0];
          sub_1C6F7ED9C();
          v71 = v124;
          v72 = (v17 + 40);
          do
          {
            v74 = *(v72 - 1);
            v73 = *v72;
            v124 = v71;
            v76 = v71[2];
            v75 = v71[3];
            sub_1C75504FC();
            if (v76 >= v75 >> 1)
            {
              sub_1C6F7ED9C();
              v71 = v124;
            }

            v71[2] = v76 + 1;
            v77 = &v71[2 * v76];
            v77[4] = v74;
            v77[5] = v73;
            v72 += 3;
            --v69;
          }

          while (v69);
        }

        else
        {
          v71 = MEMORY[0x1E69E7CC0];
        }

        sub_1C706D154(v71);
        v78 = *(v123 + 152);
        v79 = *(v123 + 160);
        v124 = *(v123 + 144);
        LOWORD(v125) = v78;
        v126 = v79;
        v80 = v124;

        static StoryGenerationUtilities.momentLocalStartDateByMomentUUID(for:storyPhotoLibraryContext:)();
        v82 = v81;

        v83 = v124;

        v124 = v17;
        sub_1C75504FC();
        sub_1C75504FC();
        v84 = v128;
        sub_1C74994C4(&v124, v82);
        v85 = v84;
        if (!v84)
        {

          v86 = v124;
          v87 = *(v123 + 152);
          v88 = *(v123 + 144);

          v89 = [v88 librarySpecificFetchOptions];
          [v89 setSharingFilter_];

          v90 = v86[2];
          if (!v90)
          {

            return MEMORY[0x1E69E7CC0];
          }

          v124 = v70;
          sub_1C716DF44(0, v90, 0);
          v91 = 0;
          v92 = v124;
          v17 = (v86 + 6);
          v118 = v89;
          v121 = v86;
          v116 = v90;
          while (v91 < v86[2])
          {
            v93 = v92;
            v95 = *(v17 - 16);
            v94 = *(v17 - 8);
            v96 = *v17;
            sub_1C75504FC();
            sub_1C75504FC();
            v97 = sub_1C749BBD8(v95, v94, v96, v123, v89);
            v128 = v85;
            if (v85)
            {
            }

            v101 = v97;
            v102 = v98;
            v103 = v99;
            v104 = v100;

            v92 = v93;
            v124 = v93;
            v105 = v93[2];
            v106 = v92[3];
            if (v105 >= v106 >> 1)
            {
              v108 = OUTLINED_FUNCTION_15(v106);
              sub_1C716DF44(v108, v105 + 1, 1);
              v92 = v124;
            }

            ++v91;
            v92[2] = v105 + 1;
            v107 = &v92[4 * v105];
            v107[4] = v101;
            v107[5] = v102;
            v107[6] = v103;
            v107[7] = v104;
            v17 += 24;
            v89 = v118;
            v85 = v128;
            v86 = v121;
            if (v116 == v91)
            {
              v109 = v92;

              return v109;
            }
          }

          goto LABEL_55;
        }

        v110 = v84;
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    sub_1C7551E4C();
    __break(1u);
LABEL_61:
    v110 = v17;
LABEL_63:

    __break(1u);
  }

  return result;
}

uint64_t sub_1C749B92C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v12 = sub_1C754DF6C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v17;
  v19 = *a1;
  v20 = a1[1];
  v22 = *a2;
  v21 = a2[1];
  sub_1C6FE10EC(v19, v20, a3, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1C754DE6C();
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
    {
      sub_1C7030CDC(v11, &unk_1EC219230);
    }
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
  }

  sub_1C6FE10EC(v22, v21, a3, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v12) == 1)
  {
    sub_1C754DE6C();
    if (__swift_getEnumTagSinglePayload(v8, 1, v12) != 1)
    {
      sub_1C7030CDC(v8, &unk_1EC219230);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v8, v12);
  }

  v23 = sub_1C754DEDC();
  v24 = *(v13 + 8);
  v24(v15, v12);
  v24(v18, v12);
  return v23 & 1;
}

uint64_t sub_1C749BBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a1;
  v6 = v5;
  sub_1C75504FC();
  v10 = sub_1C706D154(a3);
  v11 = *(a4 + 144);
  v12 = *(a4 + 152);
  v13 = *(a4 + 160);
  v51 = v11;
  LOWORD(v52) = v12;
  v53 = v13;
  v14 = v11;

  v15 = static StoryGenerationUtilities.assetObjectIDs(for:storyPhotoLibraryContext:)(v10, &v51);

  v16 = v51;

  v17 = objc_opt_self();
  sub_1C71BA844(v15, v25, v18, v19, v20, v21, v22, v23, v24, v47, v48, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
  v27 = v26;

  v28 = sub_1C740A230(v27, a5, v17);
  if (v28 && (v29 = v28, v30 = [v28 fetchedObjects], v29, v30))
  {
    sub_1C6F65BE8(0, &qword_1EDD0FA70);
    sub_1C7550B5C();

    v31 = sub_1C75504FC();
    v51 = sub_1C71CC828(v31);
    sub_1C7499448(&v51);
    v49 = v6;
    if (!v6)
    {

      v32 = v51;
      v33 = sub_1C6FB6304();
      v34 = 0;
      v35 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v33 == v34)
        {
          sub_1C75504FC();
          return v55;
        }

        if ((v32 & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x1CCA5DDD0](v34, v32);
        }

        else
        {
          if (v34 >= *(v32 + 16))
          {
            goto LABEL_20;
          }

          v36 = *(v32 + 8 * v34 + 32);
        }

        v37 = v36;
        v38 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        v39 = sub_1C70CAC04(v36);
        v41 = v40;

        ++v34;
        if (v41)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB1814();
            v35 = v44;
          }

          v42 = *(v35 + 16);
          if (v42 >= *(v35 + 24) >> 1)
          {
            sub_1C6FB1814();
            v35 = v45;
          }

          *(v35 + 16) = v42 + 1;
          v43 = v35 + 16 * v42;
          *(v43 + 32) = v39;
          *(v43 + 40) = v41;
          v34 = v38;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_1C74A3540();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C749BEA0(id *a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = sub_1C754DF6C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  *&v18 = MEMORY[0x1EEE9AC00](v17).n128_u64[0];
  v20 = &v34 - v19;
  v21 = *a2;
  v22 = [*a1 creationDate];
  v34 = v11;
  v35 = v20;
  if (v22)
  {
    v23 = v22;
    sub_1C754DF2C();

    v24 = *(v11 + 32);
    v24(v9, v16, v10);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
    v24(v20, v9, v10);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
    sub_1C754DE6C();
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
    {
      sub_1C7030CDC(v9, &unk_1EC219230);
    }
  }

  v25 = [v21 creationDate];
  if (v25)
  {
    v26 = v25;
    sub_1C754DF2C();

    v27 = v34;
    v28 = *(v34 + 32);
    v28(v6, v16, v10);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
    v28(v13, v6, v10);
    v29 = v35;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v10);
    sub_1C754DE6C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v10);
    v27 = v34;
    v29 = v35;
    if (EnumTagSinglePayload != 1)
    {
      sub_1C7030CDC(v6, &unk_1EC219230);
    }
  }

  v31 = sub_1C754DEDC();
  v32 = *(v27 + 8);
  v32(v13, v10);
  v32(v29, v10);
  return v31 & 1;
}

uint64_t sub_1C749C218(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_8_93();
}

uint64_t sub_1C749C230()
{
  v1 = sub_1C749B164(*(v0 + 16));
  v2 = sub_1C749C320(v1, *(v0 + 24));

  v3 = sub_1C749D7C8(v2);

  OUTLINED_FUNCTION_116();

  return v4(v3);
}

uint64_t sub_1C749C320(uint64_t a1, uint64_t a2)
{
  v169 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C460);
  v5 = OUTLINED_FUNCTION_76(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_140_1();
  v157 = v7;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CD0);
  OUTLINED_FUNCTION_3_0();
  v153 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_140_1();
  v161 = v11;
  OUTLINED_FUNCTION_37_3();
  v165 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v158 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_130();
  v160 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_130();
  v162 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_140_1();
  v164 = v22;
  v23 = 0;
  v24 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  v171 = a1 + 32;
  v172 = v25;
  v26 = &unk_1EC215150;
  while (1)
  {
    if (v23 == v172)
    {
      v49 = sub_1C6FB6304();
      v51 = 0;
      v52 = v24 & 0xC000000000000001;
      v173 = v24;
      v53 = v24 & 0xFFFFFFFFFFFFFF8;
      v156 = (v158 + 16);
      v159 = (v158 + 32);
      v154 = (v158 + 8);
      v167 = v158 + 40;
      v54 = MEMORY[0x1E69E7CC8];
      while (1)
      {
        while (1)
        {
          if (v49 == v51)
          {
            if (!v172)
            {
              v81 = MEMORY[0x1E69E7CC0];
LABEL_110:

              return v81;
            }

            v79 = 0;
            v80 = v169;
            v81 = MEMORY[0x1E69E7CC0];
            *&v50 = 134217984;
            v148 = v50;
            while (2)
            {
              v82 = (v171 + 32 * v79);
              v83 = v82[2];
              v84 = *(v83 + 16);
              if (v84 <= v80)
              {
                swift_bridgeObjectRetain_n();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  OUTLINED_FUNCTION_24_0();
                  sub_1C6FB28D8();
                  v81 = v139;
                }

                v104 = *(v81 + 16);
                v103 = *(v81 + 24);
                if (v104 >= v103 >> 1)
                {
                  OUTLINED_FUNCTION_15(v103);
                  sub_1C6FB28D8();
                  v81 = v140;
                }

                *(v81 + 16) = v104 + 1;
                *(v81 + 16 * v104 + 32) = vdupq_n_s64(v83);
              }

              else if (v80 < 2)
              {
                if (v80 < 0)
                {
                  goto LABEL_120;
                }

                if (v84)
                {
                  v105 = v80;
                }

                else
                {
                  v105 = 0;
                }

                if (v80 == 1)
                {
                  v106 = v84 != 0;
                }

                else
                {
                  v106 = v105;
                }

                if (v84 < v106)
                {
                  goto LABEL_121;
                }

                if (v84 == v106)
                {
                  sub_1C75504FC();
                  v107 = v83;
                }

                else if (v106)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
                  v107 = swift_allocObject();
                  _swift_stdlib_malloc_size(v107);
                  OUTLINED_FUNCTION_27_4();
                  v107[2] = v106;
                  v107[3] = v108;
                  swift_arrayInitWithCopy();
                }

                else
                {
                  v107 = MEMORY[0x1E69E7CC0];
                }

                sub_1C75504FC();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  OUTLINED_FUNCTION_24_0();
                  sub_1C6FB28D8();
                  v81 = v141;
                }

                v137 = *(v81 + 16);
                v136 = *(v81 + 24);
                if (v137 >= v136 >> 1)
                {
                  OUTLINED_FUNCTION_15_2(v136);
                  sub_1C6FB28D8();
                  v81 = v142;
                }

                *(v81 + 16) = v137 + 1;
                v138 = v81 + 16 * v137;
                *(v138 + 32) = v83;
                *(v138 + 40) = v107;
              }

              else
              {
                v168 = v79;
                v2 = v82[3];
                v164 = v82[1];
                sub_1C75504FC();
                sub_1C75504FC();
                v167 = v2;
                sub_1C75504FC();
                v85 = 0;
                v86 = v83 + 40;
                v174 = MEMORY[0x1E69E7CC0];
                v170 = v81;
                v162 = v83 + 40;
LABEL_57:
                v87 = (v86 + 16 * v85);
                while (v84 != v85)
                {
                  if (v85 >= *(v83 + 16))
                  {
                    __break(1u);
                    goto LABEL_112;
                  }

                  if (v54[2])
                  {
                    v88 = *(v87 - 1);
                    v89 = *v87;
                    sub_1C75504FC();
                    v90 = sub_1C6F78124(v88, v89);
                    if (v91)
                    {
                      v92 = v158;
                      v93 = v165;
                      (*(v158 + 16))(v160, v54[7] + *(v158 + 72) * v90, v165);
                      v94 = *(v163 + 48);
                      v95 = v152;
                      *v152 = v88;
                      *(v95 + 8) = v89;
                      (*(v92 + 32))(v95 + v94, v160, v93);
                      sub_1C74A3420(v95, v161);
                      v96 = v174;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        OUTLINED_FUNCTION_24_0();
                        sub_1C6FB29B4();
                        v96 = v101;
                      }

                      v81 = v170;
                      v97 = v96;
                      v98 = *(v96 + 16);
                      v174 = v97;
                      v99 = *(v97 + 24);
                      if (v98 >= v99 >> 1)
                      {
                        OUTLINED_FUNCTION_15_2(v99);
                        sub_1C6FB29B4();
                        v174 = v102;
                      }

                      ++v85;
                      v100 = v174;
                      *(v174 + 16) = v98 + 1;
                      sub_1C74A3420(v161, v100 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v98);
                      v86 = v162;
                      goto LABEL_57;
                    }
                  }

                  v87 += 2;
                  ++v85;
                }

                v175[0] = v174;
                sub_1C75504FC();
                v2 = v166;
                sub_1C7499560(v175);
                if (v2)
                {
                  goto LABEL_125;
                }

                v166 = 0;

                v109 = v175[0];
                v110 = v157;
                sub_1C710D6E0(v175[0]);
                v111 = v163;
                if (__swift_getEnumTagSinglePayload(v110, 1, v163) == 1)
                {

                  sub_1C7030CDC(v110, &qword_1EC21C460);
                  v79 = v168;
                  goto LABEL_91;
                }

                v112 = *v159;
                v113 = v110 + *(v111 + 48);
                v114 = v149;
                v115 = v165;
                (*v159)(v149, v113, v165);
                v116 = v155;
                v112(v155, v114, v115);
                v117 = v151;
                sub_1C74ED3E4(v109, v151);
                if (__swift_getEnumTagSinglePayload(v117, 1, v111) == 1)
                {

                  sub_1C7030CDC(v117, &qword_1EC21C460);
                  (*v154)(v116, v115);
                  v79 = v168;
                  v81 = v170;
LABEL_91:
                  if (qword_1EC2141B0 != -1)
                  {
                    swift_once();
                  }

                  v118 = sub_1C754FF1C();
                  v119 = __swift_project_value_buffer(v118, qword_1EC21C438);

                  v120 = sub_1C754FEEC();
                  v121 = sub_1C755119C();
                  if (OUTLINED_FUNCTION_7_0(v121))
                  {
                    v122 = swift_slowAlloc();
                    *v122 = v148;
                    *(v122 + 4) = 4;

                    _os_log_impl(&dword_1C6F5C000, v120, v119, "Encountered empty list of creation dates but expected to have at least %ld assets", v122, 0xCu);
                    OUTLINED_FUNCTION_235();
                    MEMORY[0x1CCA5F8E0]();
                  }

                  else
                  {
                  }
                }

                else
                {

                  v123 = v117 + *(v111 + 48);
                  v124 = v147;
                  v112(v147, v123, v115);
                  v112(v150, v124, v115);
                  v125 = sub_1C754DEAC();
                  v126 = MEMORY[0x1EEE9AC00](v125).n128_u64[0];
                  *(&v146 - 2) = v116;
                  *(&v146 - 1) = v126;
                  v2 = v166;
                  v127 = sub_1C7159E0C(sub_1C74A3490, (&v146 - 4), 0, v169);
                  v175[0] = v109;
                  sub_1C74992D4(v127, v175);
                  v174 = v128;
                  v166 = v2;

                  v129 = v170;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    OUTLINED_FUNCTION_24_0();
                    sub_1C6FB28D8();
                    v129 = v143;
                  }

                  v79 = v168;
                  v131 = *(v129 + 16);
                  v130 = *(v129 + 24);
                  if (v131 >= v130 >> 1)
                  {
                    OUTLINED_FUNCTION_15_2(v130);
                    sub_1C6FB28D8();
                    v129 = v144;
                  }

                  v132 = *v154;
                  v133 = v165;
                  (*v154)(v150, v165);
                  *(v129 + 16) = v131 + 1;
                  v134 = v129 + 16 * v131;
                  v135 = v174;
                  *(v134 + 32) = v83;
                  *(v134 + 40) = v135;

                  v132(v155, v133);
                  v81 = v129;
                }
              }

              ++v79;
              v80 = v169;
              if (v79 == v172)
              {
                goto LABEL_110;
              }

              continue;
            }
          }

          if (v52)
          {
            v55 = MEMORY[0x1CCA5DDD0](v51, v173);
          }

          else
          {
            if (v51 >= *(v53 + 16))
            {
              goto LABEL_115;
            }

            v55 = *(v173 + 8 * v51 + 32);
          }

          v56 = v55;
          if (__OFADD__(v51, 1))
          {
            goto LABEL_114;
          }

          v57 = [v55 creationDate];
          if (v57)
          {
            break;
          }

          ++v51;
        }

        v58 = v57;
        sub_1C754DF2C();

        v59 = sub_1C70CAC04(v56);
        if (!v60)
        {
          goto LABEL_124;
        }

        v61 = v59;
        v62 = v60;
        (*v156)(v162, v164, v165);
        swift_isUniquelyReferenced_nonNull_native();
        v174 = v62;
        v175[0] = v54;
        v170 = v61;
        v63 = sub_1C6F78124(v61, v62);
        if (__OFADD__(v54[2], (v64 & 1) == 0))
        {
          goto LABEL_122;
        }

        v65 = v63;
        LODWORD(v168) = v64;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216738);
        v66 = v175;
        if (sub_1C7551A2C())
        {
          v66 = v175[0];
          v67 = sub_1C6F78124(v170, v174);
          if ((v168 & 1) != (v68 & 1))
          {
            goto LABEL_126;
          }

          v65 = v67;
          if (v168)
          {
LABEL_50:

            v54 = v175[0];
            v76 = OUTLINED_FUNCTION_19_78();
            (v66[5])(v76, v162, v165);

            v77 = OUTLINED_FUNCTION_13_92();
            v78(v77);
            goto LABEL_51;
          }
        }

        else if (v168)
        {
          goto LABEL_50;
        }

        v54 = v175[0];
        *(v175[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
        v69 = (v54[6] + 16 * v65);
        v70 = v174;
        *v69 = v170;
        v69[1] = v70;
        v71 = OUTLINED_FUNCTION_19_78();
        (v66[4])(v71, v162, v165);

        v72 = OUTLINED_FUNCTION_13_92();
        v73(v72);
        v74 = v54[2];
        v47 = __OFADD__(v74, 1);
        v75 = v74 + 1;
        if (v47)
        {
          goto LABEL_123;
        }

        v54[2] = v75;
LABEL_51:
        ++v51;
      }
    }

    v27 = *(v171 + 32 * v23 + 24);
    v28 = v27 >> 62 ? sub_1C75516BC() : *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v29 = v24 >> 62;
    v30 = v24 >> 62 ? sub_1C75516BC() : *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v31 = v30 + v28;
    if (__OFADD__(v30, v28))
    {
      break;
    }

    sub_1C75504FC();
    v174 = v28;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v29)
      {
LABEL_13:
        sub_1C75516BC();
      }

LABEL_14:
      v24 = sub_1C75518CC();
      v32 = v24 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_15;
    }

    if (v29)
    {
      goto LABEL_13;
    }

    v32 = v24 & 0xFFFFFFFFFFFFFF8;
    if (v31 > *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_14;
    }

LABEL_15:
    v33 = v26;
    ++v23;
    v34 = *(v32 + 16);
    v35 = (*(v32 + 24) >> 1) - v34;
    v36 = v32 + 8 * v34;
    v170 = v32;
    if (v27 >> 62)
    {
      v38 = sub_1C75516BC();
      if (!v38)
      {
        goto LABEL_29;
      }

      v39 = v38;
      v40 = sub_1C75516BC();
      if (v35 < v40)
      {
        goto LABEL_118;
      }

      if (v39 < 1)
      {
        goto LABEL_119;
      }

      v167 = v40;
      v168 = v23;
      v173 = v24;
      v41 = v36 + 32;
      sub_1C7099594(&qword_1EDD06A58, v26);
      for (i = 0; i != v39; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v26);
        v43 = sub_1C6FDD09C(v175, i, v27);
        v45 = *v44;
        v43(v175, 0);
        v26 = v33;
        *(v41 + 8 * i) = v45;
      }

      v24 = v173;
      v37 = v167;
      v23 = v168;
LABEL_25:

      if (v37 < v174)
      {
        goto LABEL_113;
      }

      if (v37 > 0)
      {
        v46 = *(v170 + 16);
        v47 = __OFADD__(v46, v37);
        v48 = v46 + v37;
        if (v47)
        {
          goto LABEL_116;
        }

        *(v170 + 16) = v48;
      }
    }

    else
    {
      v37 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v37)
      {
        if (v35 < v37)
        {
          goto LABEL_117;
        }

        sub_1C6F65BE8(0, &qword_1EDD0FA70);
        swift_arrayInitWithCopy();
        goto LABEL_25;
      }

LABEL_29:

      if (v174 > 0)
      {
        goto LABEL_113;
      }
    }
  }

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
LABEL_124:
  __break(1u);
LABEL_125:

  __break(1u);
LABEL_126:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C749D260@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int64_t *a3@<X8>)
{
  v51 = a3;
  v57 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CD0);
  v4 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v53 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v50 - v7);
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v50 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v50 - v12);
  v52 = a2;
  v14 = *a2;
  v15 = *(v14 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  v58 = v4;
  if (v15)
  {
    v61 = MEMORY[0x1E69E7CC0];
    sub_1C75504FC();
    result = sub_1C716EF70(0, v15, 0);
    v18 = 0;
    v16 = v61;
    v54 = v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v55 = v8;
    v56 = v15;
    do
    {
      if (v18 >= *(v14 + 16))
      {
        goto LABEL_37;
      }

      v19 = v14;
      sub_1C74A34D0(v54 + *(v4 + 72) * v18, v13);
      v21 = *v13;
      v20 = v13[1];
      sub_1C75504FC();
      sub_1C754DEAC();
      v23 = v22;
      result = sub_1C7030CDC(v13, &qword_1EC214CD0);
      v61 = v16;
      v25 = *(v16 + 16);
      v24 = *(v16 + 24);
      if (v25 >= v24 >> 1)
      {
        result = sub_1C716EF70((v24 > 1), v25 + 1, 1);
        v16 = v61;
      }

      ++v18;
      *(v16 + 16) = v25 + 1;
      v26 = v16 + 24 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v20;
      *(v26 + 48) = fabs(v23);
      v4 = v58;
      v14 = v19;
      v8 = v55;
    }

    while (v56 != v18);
  }

  v27 = *(v16 + 16);
  if (v27)
  {
    v28 = *(v16 + 40);
    v56 = *(v16 + 32);
    v29 = *(v16 + 48);
    result = sub_1C75504FC();
    v30 = 1;
LABEL_10:
    v31 = 24 * v30;
    while (v27 != v30)
    {
      if (v30 >= *(v16 + 16))
      {
        goto LABEL_38;
      }

      ++v30;
      v32 = v31 + 24;
      v33 = *(v16 + v31 + 48);
      v31 += 24;
      if (v33 < v29)
      {
        v34 = *(v16 + v32 + 16);
        v56 = *(v16 + v32 + 8);
        sub_1C75504FC();

        v28 = v34;
        v29 = v33;
        goto LABEL_10;
      }
    }
  }

  else
  {

    v56 = 0;
    v28 = 0;
  }

  v35 = *v52;
  v57 = *(*v52 + 16);
  result = sub_1C75504FC();
  v36 = 0;
  v54 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v57 == v36)
    {

      *v52 = v54;

      v49 = v51;
      *v51 = v56;
      v49[1] = v28;
      return result;
    }

    if (v36 >= *(v35 + 16))
    {
      break;
    }

    v37 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v38 = *(v4 + 72);
    v39 = v60;
    sub_1C74A34D0(v35 + v37 + v38 * v36, v60);
    sub_1C74A34D0(v39, v8);
    v40 = *(v59 + 48);
    if (!v28)
    {

      v45 = sub_1C754DF6C();
      (*(*(v45 - 8) + 8))(v8 + v40, v45);
      goto LABEL_30;
    }

    if (*v8 == v56 && v28 == v8[1])
    {

      v44 = sub_1C754DF6C();
      (*(*(v44 - 8) + 8))(v8 + v40, v44);
LABEL_28:
      result = sub_1C7030CDC(v60, &qword_1EC214CD0);
      ++v36;
      v4 = v58;
    }

    else
    {
      v42 = sub_1C7551DBC();

      v43 = sub_1C754DF6C();
      (*(*(v43 - 8) + 8))(v8 + v40, v43);
      if (v42)
      {
        goto LABEL_28;
      }

LABEL_30:
      sub_1C74A3420(v60, v53);
      v46 = v54;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61 = v46;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C716EF50();
        v46 = v61;
      }

      v48 = *(v46 + 16);
      if (v48 >= *(v46 + 24) >> 1)
      {
        sub_1C716EF50();
        v46 = v61;
      }

      ++v36;
      *(v46 + 16) = v48 + 1;
      v54 = v46;
      result = sub_1C74A3420(v53, v46 + v37 + v48 * v38);
      v4 = v58;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1C749D7C8(uint64_t a1)
{
  v2 = a1;
  if ((*(v1 + 136) & 1) != 0 || (v3 = *(v1 + 128), v3 < 1))
  {
    sub_1C75504FC();
    return v2;
  }

  v4 = MEMORY[0x1E69E7CC0];
  v77 = MEMORY[0x1E69E7CC0];
  v71 = *(a1 + 16);
  if (v71)
  {
    v5 = 0;
    v72 = a1 + 32;
    v2 = MEMORY[0x1E69E7CC0];
    v70 = *(v1 + 128);
LABEL_5:
    v75 = v2;
    v6 = 0;
    v7 = *(v72 + 16 * v5);
    v8 = v5 + 1;
    v9 = v77;
    v10 = *(v77 + 16);
    v11 = v10 + 1;
    v12 = 40;
    do
    {
      if (!--v11)
      {
        v16 = *(*(&v7 + 1) + 16);
        v15 = __OFADD__(v6, v16);
        v17 = v6 + v16;
        if (v15)
        {
          goto LABEL_102;
        }

        v74 = v8;
        v73 = v7;
        if (v3 >= v17)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CC0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1C755BAB0;
          *(inited + 32) = v73;
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C6FD2828(inited);
          v2 = v75;
        }

        else
        {
          sub_1C75504FC();
          sub_1C75504FC();
          v18 = 0;
          v19 = 32;
          v20 = MEMORY[0x1E69E7CC0];
          while (v10 != v18)
          {
            if (v18 >= *(v77 + 16))
            {
              goto LABEL_85;
            }

            v21 = *(v77 + v19);
            v22 = *(v21 + 16);
            v23 = *(v20 + 16);
            if (__OFADD__(v23, v22))
            {
              goto LABEL_86;
            }

            sub_1C75504FC();
            if (!swift_isUniquelyReferenced_nonNull_native() || v23 + v22 > *(v20 + 24) >> 1)
            {
              sub_1C6FB1814();
              v20 = v24;
            }

            if (*(v21 + 16))
            {
              OUTLINED_FUNCTION_495();
              if (v25 < v22)
              {
                goto LABEL_91;
              }

              swift_arrayInitWithCopy();

              if (v22)
              {
                v26 = *(v20 + 16);
                v15 = __OFADD__(v26, v22);
                v27 = v26 + v22;
                if (v15)
                {
                  goto LABEL_93;
                }

                *(v20 + 16) = v27;
              }
            }

            else
            {

              if (v22)
              {
                goto LABEL_87;
              }
            }

            v19 += 16;
            ++v18;
          }

          v29 = 0;
          v30 = 40;
          v31 = MEMORY[0x1E69E7CC0];
          while (v10 != v29)
          {
            if (v29 >= *(v77 + 16))
            {
              goto LABEL_88;
            }

            v32 = *(v77 + v30);
            v33 = *(v32 + 16);
            v34 = *(v31 + 16);
            if (__OFADD__(v34, v33))
            {
              goto LABEL_89;
            }

            sub_1C75504FC();
            if (!swift_isUniquelyReferenced_nonNull_native() || v34 + v33 > *(v31 + 24) >> 1)
            {
              sub_1C6FB1814();
              v31 = v35;
            }

            if (*(v32 + 16))
            {
              OUTLINED_FUNCTION_495();
              if (v36 < v33)
              {
                goto LABEL_92;
              }

              swift_arrayInitWithCopy();

              if (v33)
              {
                v37 = *(v31 + 16);
                v15 = __OFADD__(v37, v33);
                v38 = v37 + v33;
                if (v15)
                {
                  goto LABEL_94;
                }

                *(v31 + 16) = v38;
              }
            }

            else
            {

              if (v33)
              {
                goto LABEL_90;
              }
            }

            v30 += 16;
            ++v29;
          }

          v2 = v75;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_24_0();
            sub_1C6FB28D8();
            v2 = v43;
          }

          v40 = *(v2 + 16);
          v39 = *(v2 + 24);
          if (v40 >= v39 >> 1)
          {
            OUTLINED_FUNCTION_15_2(v39);
            sub_1C6FB28D8();
            v2 = v44;
          }

          *(v2 + 16) = v40 + 1;
          v41 = v2 + 16 * v40;
          *(v41 + 32) = v20;
          *(v41 + 40) = v31;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CC0);
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_1C755BAB0;
          *(v42 + 32) = v73;
          v77 = v42;
          v3 = v70;
        }

        v5 = v74;
        if (v74 == v71)
        {
          v4 = v77;
          goto LABEL_50;
        }

        goto LABEL_5;
      }

      v13 = *(v77 + v12);
      v12 += 16;
      v14 = *(v13 + 16);
      v15 = __OFADD__(v6, v14);
      v6 += v14;
    }

    while (!v15);
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
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
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
LABEL_50:
    v45 = *(v4 + 16);
    if (!v45)
    {

      return v2;
    }

    v76 = v2;
    v46 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    v47 = 32;
    v10 = MEMORY[0x1E69E6158];
    while (v45 != v46)
    {
      if (v46 >= *(v4 + 16))
      {
        goto LABEL_95;
      }

      v48 = *(v4 + v47);
      v49 = *(v48 + 16);
      v50 = *(v9 + 16);
      if (__OFADD__(v50, v49))
      {
        goto LABEL_96;
      }

      sub_1C75504FC();
      if (!swift_isUniquelyReferenced_nonNull_native() || v50 + v49 > *(v9 + 24) >> 1)
      {
        sub_1C6FB1814();
        v9 = v51;
      }

      if (*(v48 + 16))
      {
        OUTLINED_FUNCTION_495();
        if (v52 < v49)
        {
          goto LABEL_101;
        }

        swift_arrayInitWithCopy();

        if (v49)
        {
          v53 = *(v9 + 16);
          v15 = __OFADD__(v53, v49);
          v54 = v53 + v49;
          if (v15)
          {
            goto LABEL_104;
          }

          *(v9 + 16) = v54;
        }
      }

      else
      {

        if (v49)
        {
          goto LABEL_97;
        }
      }

      v47 += 16;
      ++v46;
    }

    v55 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    v56 = 40;
    while (v45 != v55)
    {
      if (v55 >= *(v4 + 16))
      {
        goto LABEL_98;
      }

      v57 = *(v4 + v56);
      v58 = *(v57 + 16);
      v59 = *(v10 + 16);
      if (__OFADD__(v59, v58))
      {
        goto LABEL_99;
      }

      sub_1C75504FC();
      if (!swift_isUniquelyReferenced_nonNull_native() || v59 + v58 > *(v10 + 24) >> 1)
      {
        sub_1C6FB1814();
        v10 = v60;
      }

      if (*(v57 + 16))
      {
        OUTLINED_FUNCTION_495();
        if (v61 < v58)
        {
          goto LABEL_103;
        }

        swift_arrayInitWithCopy();

        if (v58)
        {
          v62 = *(v10 + 16);
          v15 = __OFADD__(v62, v58);
          v63 = v62 + v58;
          if (v15)
          {
            goto LABEL_105;
          }

          *(v10 + 16) = v63;
        }
      }

      else
      {

        if (v58)
        {
          goto LABEL_100;
        }
      }

      v56 += 16;
      ++v55;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_80;
    }
  }

  OUTLINED_FUNCTION_24_0();
  sub_1C6FB28D8();
  v76 = v68;
LABEL_80:
  v65 = *(v76 + 16);
  v64 = *(v76 + 24);
  if (v65 >= v64 >> 1)
  {
    OUTLINED_FUNCTION_15(v64);
    sub_1C6FB28D8();
    v76 = v69;
  }

  *(v76 + 16) = v65 + 1;
  v66 = v76 + 16 * v65;
  *(v66 + 32) = v9;
  *(v66 + 40) = v10;
  return v76;
}

uint64_t PersonalTraitGenerator.MomentSampler.deinit()
{

  v1 = *(v0 + 144);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PersonalTraitGenerator.MomentSampler.__deallocating_deinit()
{
  PersonalTraitGenerator.MomentSampler.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C749DEB8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C749DF5C;

  return sub_1C749C218(a1, a2);
}

uint64_t sub_1C749DF5C(uint64_t a1)
{

  OUTLINED_FUNCTION_116();
  if (!v1)
  {
    v3 = a1;
  }

  return v4(v3);
}

void sub_1C749E05C(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1C7551D7C();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1C739D480(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1C749F0DC(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1C749E4E0(0, v3, 1, a1);
  }
}

uint64_t sub_1C749E13C(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1C7551D7C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218180);
        v8 = sub_1C7550BBC();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;
      sub_1C75504FC();
      sub_1C749FD20(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1C749E900(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

void sub_1C749E284(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C7551D7C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CD0);
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CD0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C74A0CBC(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1C749EDB4(0, v2, 1, a1);
  }
}

void sub_1C749E3CC(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(char *, int64_t, char *))
{
  v7 = a1[1];
  v8 = sub_1C7551D7C();
  if (v8 < v7)
  {
    if (v7 >= -1)
    {
      v9 = v8;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2);
        v11 = sub_1C7550BBC();
        *(v11 + 16) = v10;
      }

      v12[0] = (v11 + 32);
      v12[1] = v10;
      sub_1C74A1588(v12, v13, a1, v9, a4);
      *(v11 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    sub_1C749EFE4(0, v7, 1, a1);
  }
}

void sub_1C749E4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v45 - v11;
  v12 = sub_1C754DF6C();
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v56 = &v45 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v57 = &v45 - v18;
  v46 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v55 = (v17 + 32);
    v50 = (v17 + 8);
    v52 = v19;
    v20 = v19 + 8 * a3 - 8;
    v21 = a1 - a3;
    while (2)
    {
      v48 = v20;
      v49 = a3;
      v22 = *(v52 + 8 * a3);
      v47 = v21;
      do
      {
        v23 = *v20;
        v24 = v22;
        v25 = v23;
        v26 = [v24 creationDate];
        if (v26)
        {
          v27 = v26;
          v28 = v56;
          sub_1C754DF2C();

          v29 = *v55;
          v30 = v53;
          (*v55)(v53, v28, v12);
          __swift_storeEnumTagSinglePayload(v30, 0, 1, v12);
          (v29)(v57, v30, v12);
        }

        else
        {
          v31 = v53;
          __swift_storeEnumTagSinglePayload(v53, 1, 1, v12);
          sub_1C754DE6C();
          if (__swift_getEnumTagSinglePayload(v31, 1, v12) != 1)
          {
            sub_1C7030CDC(v53, &unk_1EC219230);
          }
        }

        v32 = [v25 creationDate];
        if (v32)
        {
          v33 = v32;
          v34 = v56;
          sub_1C754DF2C();

          v35 = v54;
          v36 = *v55;
          (*v55)(v54, v34, v12);
          __swift_storeEnumTagSinglePayload(v35, 0, 1, v12);
          v37 = v51;
          v36();
        }

        else
        {
          v38 = v54;
          __swift_storeEnumTagSinglePayload(v54, 1, 1, v12);
          v37 = v51;
          sub_1C754DE6C();
          if (__swift_getEnumTagSinglePayload(v38, 1, v12) != 1)
          {
            sub_1C7030CDC(v54, &unk_1EC219230);
          }
        }

        v39 = v57;
        v40 = sub_1C754DEDC();
        v41 = v37;
        v42 = *v50;
        (*v50)(v41, v12);
        v42(v39, v12);

        if ((v40 & 1) == 0)
        {
          break;
        }

        if (!v52)
        {
          __break(1u);
          return;
        }

        v43 = *v20;
        v22 = *(v20 + 8);
        *v20 = v22;
        *(v20 + 8) = v43;
        v20 -= 8;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v49 + 1;
      v20 = v48 + 8;
      v21 = v47 - 1;
      if (v49 + 1 != v46)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1C749E900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v65 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v64 = v52 - v14;
  v15 = sub_1C754DF6C();
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v71 = v52 - v19;
  v53 = a2;
  if (a3 == a2)
  {
  }

  v62 = v18;
  v63 = a5;
  v52[1] = v5;
  v21 = *a4;
  v57 = v17 + 32;
  v58 = v17 + 16;
  v59 = v17;
  v60 = (v17 + 8);
  v61 = v21;
  v22 = (v21 + 24 * a3);
  v23 = a1 - a3;
  while (2)
  {
    v55 = v22;
    v56 = a3;
    v24 = v61 + 24 * a3;
    v26 = *(v24 + 8);
    v25 = *(v24 + 16);
    v54 = v23;
    do
    {
      v70 = v23;
      v27 = *(v22 - 2);
      v28 = *(v22 - 1);
      v29 = v63;
      v30 = *(v63 + 16);
      v66 = *(v22 - 3);
      v67 = v28;
      if (!v30)
      {
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
LABEL_9:
        v36 = v64;
        __swift_storeEnumTagSinglePayload(v64, 1, 1, v15);
        sub_1C754DE6C();
        if (__swift_getEnumTagSinglePayload(v36, 1, v15) != 1)
        {
          sub_1C7030CDC(v64, &unk_1EC219230);
        }

        goto LABEL_11;
      }

      v31 = *v22;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v32 = sub_1C6F78124(v31, v26);
      if ((v33 & 1) == 0)
      {
        goto LABEL_9;
      }

      v34 = v59;
      v35 = v64;
      (*(v59 + 16))(v64, *(v29 + 56) + *(v59 + 72) * v32, v15);
      __swift_storeEnumTagSinglePayload(v35, 0, 1, v15);
      v29 = v63;
      (*(v34 + 32))(v71, v35, v15);
LABEL_11:
      v68 = v27;
      v69 = v25;
      v37 = v62;
      if (*(v29 + 16) && (v38 = sub_1C6F78124(v66, v27), (v39 & 1) != 0))
      {
        v40 = v59;
        v41 = v65;
        (*(v59 + 16))(v65, *(v29 + 56) + *(v59 + 72) * v38, v15);
        __swift_storeEnumTagSinglePayload(v41, 0, 1, v15);
        v42 = *(v40 + 32);
        v37 = v62;
        v42(v62, v41, v15);
        v43 = v15;
      }

      else
      {
        v44 = v65;
        __swift_storeEnumTagSinglePayload(v65, 1, 1, v15);
        sub_1C754DE6C();
        v43 = v15;
        if (__swift_getEnumTagSinglePayload(v44, 1, v15) != 1)
        {
          sub_1C7030CDC(v65, &unk_1EC219230);
        }
      }

      v45 = v71;
      v46 = sub_1C754DEDC();
      v47 = v37;
      v48 = *v60;
      (*v60)(v47, v43);
      v48(v45, v43);

      v15 = v43;
      v49 = v70;
      if ((v46 & 1) == 0)
      {
        break;
      }

      if (!v61)
      {
        __break(1u);
        return result;
      }

      v50 = *v22;
      v26 = v22[1];
      v25 = v22[2];
      *v22 = *(v22 - 3);
      v22[2] = *(v22 - 1);
      *(v22 - 2) = v26;
      *(v22 - 1) = v25;
      *(v22 - 3) = v50;
      v22 -= 3;
      v51 = __CFADD__(v49, 1);
      v23 = v49 + 1;
    }

    while (!v51);
    a3 = v56 + 1;
    v22 = v55 + 3;
    v23 = v54 - 1;
    if (v56 + 1 != v53)
    {
      continue;
    }
  }
}

void sub_1C749EDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CD0);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  v27 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v32 = -v18;
    v33 = v17;
    v20 = a1 - a3;
    v26 = v18;
    v21 = v17 + v18 * a3;
    while (2)
    {
      v30 = v19;
      v31 = a3;
      v28 = v21;
      v29 = v20;
      do
      {
        sub_1C74A34D0(v21, v16);
        sub_1C74A34D0(v19, v12);
        v22 = sub_1C754DEDC();
        sub_1C7030CDC(v12, &qword_1EC214CD0);
        sub_1C7030CDC(v16, &qword_1EC214CD0);
        if ((v22 & 1) == 0)
        {
          break;
        }

        if (!v33)
        {
          __break(1u);
          return;
        }

        v23 = v34;
        sub_1C74A3420(v21, v34);
        swift_arrayInitWithTakeFrontToBack();
        sub_1C74A3420(v23, v19);
        v19 += v32;
        v21 += v32;
      }

      while (!__CFADD__(v20++, 1));
      a3 = v31 + 1;
      v19 = v30 + v26;
      v20 = v29 - 1;
      v21 = v28 + v26;
      if (v31 + 1 != v27)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C749EFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3;
    v8 = a1 - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        OUTLINED_FUNCTION_5_100();
        if (v16)
        {
          v16 = v11 == v13 && v12 == *(v10 - 2);
          if (v16 || (sub_1C7551DBC() & 1) == 0)
          {
            break;
          }
        }

        else if (v15 >= v14)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return;
        }

        v17 = *v10;
        v18 = v10[1];
        v19 = v10[2];
        *v10 = *(v10 - 3);
        v10[2] = *(v10 - 1);
        *(v10 - 2) = v18;
        *(v10 - 1) = v19;
        *(v10 - 3) = v17;
        v10 -= 3;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C749F0DC(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v151 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v167 = &v148 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v166 = &v148 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v157 = &v148 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v156 = &v148 - v13;
  v14 = sub_1C754DF6C();
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v171 = &v148 - v16;
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v169 = &v148 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v158 = a3;
  v159 = &v148 - v24;
  v25 = a3[1];
  if (v25 < 1)
  {
    v27 = MEMORY[0x1E69E7CC0];
LABEL_110:
    v26 = *v151;
    if (!*v151)
    {
      goto LABEL_152;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_112:
      v140 = (v27 + 16);
      for (i = *(v27 + 2); i >= 2; *v140 = i)
      {
        if (!*v158)
        {
          goto LABEL_149;
        }

        v142 = &v27[16 * i];
        v143 = *v142;
        v144 = &v140[2 * i];
        v145 = *(v144 + 1);
        v146 = v162;
        sub_1C74A1BB4((*v158 + 8 * *v142), (*v158 + 8 * *v144), (*v158 + 8 * v145), v26);
        v162 = v146;
        if (v146)
        {
          break;
        }

        if (v145 < v143)
        {
          goto LABEL_137;
        }

        if (i - 2 >= *v140)
        {
          goto LABEL_138;
        }

        *v142 = v143;
        *(v142 + 1) = v145;
        v147 = *v140 - i;
        if (*v140 < i)
        {
          goto LABEL_139;
        }

        i = *v140 - 1;
        sub_1C7423CF4(v144 + 16, v147, v144);
      }

LABEL_120:

      return;
    }

LABEL_146:
    v27 = sub_1C7420830();
    goto LABEL_112;
  }

  v154 = v23;
  v163 = v22;
  v149 = a4;
  v26 = 0;
  v168 = (v21 + 32);
  v27 = MEMORY[0x1E69E7CC0];
  v165 = (v21 + 8);
  while (1)
  {
    v28 = v26++;
    if (v26 < v25)
    {
      v29 = v26;
      v30 = *v158;
      v31 = v29;
      v173 = *(*v158 + 8 * v29);
      v172 = *(v30 + 8 * v28);
      v32 = v172;
      v33 = v173;
      v34 = v32;
      v35 = v162;
      LODWORD(v164) = sub_1C749BEA0(&v173, &v172);
      v162 = v35;
      if (v35)
      {

        return;
      }

      v160 = v27;

      v153 = 8 * v28;
      v36 = v28;
      v37 = (v30 + 8 * v28 + 16);
      v150 = v36;
      v38 = v36 + 2;
      v26 = v31;
      v155 = v25;
      while (1)
      {
        v39 = v38;
        if (v26 + 1 >= v25)
        {
          break;
        }

        v161 = v26;
        v40 = *(v37 - 1);
        v41 = *v37;
        v42 = v40;
        v170 = v41;
        v43 = [v41 creationDate];
        if (v43)
        {
          v44 = v43;
          v45 = v169;
          sub_1C754DF2C();

          v46 = *v168;
          v47 = v156;
          (*v168)(v156, v45, v14);
          __swift_storeEnumTagSinglePayload(v47, 0, 1, v14);
          v46(v159, v47, v14);
        }

        else
        {
          v48 = v156;
          __swift_storeEnumTagSinglePayload(v156, 1, 1, v14);
          sub_1C754DE6C();
          if (__swift_getEnumTagSinglePayload(v48, 1, v14) != 1)
          {
            sub_1C7030CDC(v156, &unk_1EC219230);
          }
        }

        v49 = [v42 creationDate];
        if (v49)
        {
          v50 = v49;
          v51 = v169;
          sub_1C754DF2C();

          v52 = *v168;
          v53 = v157;
          (*v168)(v157, v51, v14);
          __swift_storeEnumTagSinglePayload(v53, 0, 1, v14);
          v54 = v154;
          v52(v154, v53, v14);
        }

        else
        {
          v55 = v157;
          __swift_storeEnumTagSinglePayload(v157, 1, 1, v14);
          v54 = v154;
          sub_1C754DE6C();
          if (__swift_getEnumTagSinglePayload(v55, 1, v14) != 1)
          {
            sub_1C7030CDC(v157, &unk_1EC219230);
          }
        }

        v56 = v159;
        v57 = sub_1C754DEDC();
        v58 = *v165;
        (*v165)(v54, v14);
        v58(v56, v14);

        ++v37;
        v26 = v161 + 1;
        v38 = v39 + 1;
        v25 = v155;
        if ((v164 ^ v57))
        {
          goto LABEL_18;
        }
      }

      v26 = v25;
LABEL_18:
      if (v164)
      {
        v28 = v150;
        if (v26 < v150)
        {
          goto LABEL_145;
        }

        if (v150 >= v26)
        {
          v27 = v160;
        }

        else
        {
          if (v25 >= v39)
          {
            v59 = v39;
          }

          else
          {
            v59 = v25;
          }

          v60 = 8 * v59 - 8;
          v61 = v26;
          v62 = v150;
          v27 = v160;
          v63 = v153;
          do
          {
            if (v62 != --v61)
            {
              v64 = *v158;
              if (!*v158)
              {
                goto LABEL_150;
              }

              v65 = *(v64 + v63);
              *(v64 + v63) = *(v64 + v60);
              *(v64 + v60) = v65;
            }

            ++v62;
            v60 -= 8;
            v63 += 8;
          }

          while (v62 < v61);
        }
      }

      else
      {
        v27 = v160;
        v28 = v150;
      }
    }

    v66 = v158[1];
    if (v26 < v66)
    {
      if (__OFSUB__(v26, v28))
      {
        goto LABEL_142;
      }

      if (v26 - v28 < v149)
      {
        break;
      }
    }

LABEL_56:
    if (v26 < v28)
    {
      goto LABEL_141;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC();
      v27 = v138;
    }

    v93 = *(v27 + 2);
    v94 = v93 + 1;
    if (v93 >= *(v27 + 3) >> 1)
    {
      sub_1C6FB17EC();
      v27 = v139;
    }

    *(v27 + 2) = v94;
    v95 = v27 + 32;
    v96 = &v27[16 * v93 + 32];
    *v96 = v28;
    *(v96 + 1) = v26;
    v170 = *v151;
    if (!v170)
    {
      goto LABEL_151;
    }

    if (v93)
    {
      v160 = v27;
      while (1)
      {
        v97 = v94 - 1;
        v98 = &v95[16 * v94 - 16];
        v99 = &v27[16 * v94];
        if (v94 >= 4)
        {
          break;
        }

        if (v94 == 3)
        {
          v100 = *(v27 + 4);
          v101 = *(v27 + 5);
          v110 = __OFSUB__(v101, v100);
          v102 = v101 - v100;
          v103 = v110;
LABEL_77:
          if (v103)
          {
            goto LABEL_128;
          }

          v115 = *v99;
          v114 = *(v99 + 1);
          v116 = __OFSUB__(v114, v115);
          v117 = v114 - v115;
          v118 = v116;
          if (v116)
          {
            goto LABEL_131;
          }

          v119 = *(v98 + 1);
          v120 = v119 - *v98;
          if (__OFSUB__(v119, *v98))
          {
            goto LABEL_134;
          }

          if (__OFADD__(v117, v120))
          {
            goto LABEL_136;
          }

          if (v117 + v120 >= v102)
          {
            if (v102 < v120)
            {
              v97 = v94 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_92;
        }

        if (v94 < 2)
        {
          goto LABEL_130;
        }

        v122 = *v99;
        v121 = *(v99 + 1);
        v110 = __OFSUB__(v121, v122);
        v117 = v121 - v122;
        v118 = v110;
LABEL_92:
        if (v118)
        {
          goto LABEL_133;
        }

        v124 = *v98;
        v123 = *(v98 + 1);
        v110 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v110)
        {
          goto LABEL_135;
        }

        if (v125 < v117)
        {
          goto LABEL_106;
        }

LABEL_99:
        if (v97 - 1 >= v94)
        {
          __break(1u);
LABEL_123:
          __break(1u);
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
LABEL_130:
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
          goto LABEL_144;
        }

        if (!*v158)
        {
          goto LABEL_148;
        }

        v129 = &v95[16 * v97 - 16];
        v130 = *v129;
        v131 = v97;
        v132 = &v95[16 * v97];
        v133 = *(v132 + 1);
        v134 = v162;
        sub_1C74A1BB4((*v158 + 8 * *v129), (*v158 + 8 * *v132), (*v158 + 8 * v133), v170);
        v162 = v134;
        if (v134)
        {
          goto LABEL_120;
        }

        if (v133 < v130)
        {
          goto LABEL_123;
        }

        v135 = v95;
        v136 = v26;
        v26 = *(v160 + 2);
        if (v131 > v26)
        {
          goto LABEL_124;
        }

        *v129 = v130;
        *(v129 + 1) = v133;
        if (v131 >= v26)
        {
          goto LABEL_125;
        }

        v94 = v26 - 1;
        sub_1C7423CF4(v132 + 16, v26 - 1 - v131, v132);
        v27 = v160;
        *(v160 + 2) = v26 - 1;
        v137 = v26 > 2;
        v26 = v136;
        v95 = v135;
        if (!v137)
        {
          goto LABEL_106;
        }
      }

      v104 = &v95[16 * v94];
      v105 = *(v104 - 8);
      v106 = *(v104 - 7);
      v110 = __OFSUB__(v106, v105);
      v107 = v106 - v105;
      if (v110)
      {
        goto LABEL_126;
      }

      v109 = *(v104 - 6);
      v108 = *(v104 - 5);
      v110 = __OFSUB__(v108, v109);
      v102 = v108 - v109;
      v103 = v110;
      if (v110)
      {
        goto LABEL_127;
      }

      v111 = *(v99 + 1);
      v112 = v111 - *v99;
      if (__OFSUB__(v111, *v99))
      {
        goto LABEL_129;
      }

      v110 = __OFADD__(v102, v112);
      v113 = v102 + v112;
      if (v110)
      {
        goto LABEL_132;
      }

      if (v113 >= v107)
      {
        v127 = *v98;
        v126 = *(v98 + 1);
        v110 = __OFSUB__(v126, v127);
        v128 = v126 - v127;
        if (v110)
        {
          goto LABEL_140;
        }

        if (v102 < v128)
        {
          v97 = v94 - 2;
        }

        goto LABEL_99;
      }

      goto LABEL_77;
    }

LABEL_106:
    v25 = v158[1];
    if (v26 >= v25)
    {
      goto LABEL_110;
    }
  }

  v67 = (v28 + v149);
  if (__OFADD__(v28, v149))
  {
    goto LABEL_143;
  }

  if (v67 >= v66)
  {
    v67 = v158[1];
  }

  if (v67 < v28)
  {
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (v26 == v67)
  {
    goto LABEL_56;
  }

  v160 = v27;
  v164 = *v158;
  v68 = v164 + 8 * v26 - 8;
  v150 = v28;
  v69 = v28 - v26;
  v152 = v67;
LABEL_41:
  v161 = v26;
  v70 = *(v164 + 8 * v26);
  v153 = v69;
  v155 = v68;
  v71 = v68;
  while (1)
  {
    v72 = *v71;
    v73 = v70;
    v74 = v72;
    v170 = v73;
    v75 = [v73 creationDate];
    if (v75)
    {
      v76 = v75;
      v77 = v169;
      sub_1C754DF2C();

      v78 = *v168;
      v79 = v166;
      (*v168)(v166, v77, v14);
      __swift_storeEnumTagSinglePayload(v79, 0, 1, v14);
      v78(v171, v79, v14);
    }

    else
    {
      v80 = v166;
      __swift_storeEnumTagSinglePayload(v166, 1, 1, v14);
      sub_1C754DE6C();
      if (__swift_getEnumTagSinglePayload(v80, 1, v14) != 1)
      {
        sub_1C7030CDC(v166, &unk_1EC219230);
      }
    }

    v81 = [v74 creationDate];
    if (v81)
    {
      v82 = v81;
      v83 = v169;
      sub_1C754DF2C();

      v84 = v167;
      v85 = *v168;
      (*v168)(v167, v83, v14);
      __swift_storeEnumTagSinglePayload(v84, 0, 1, v14);
      v86 = v163;
      v85(v163, v84, v14);
    }

    else
    {
      v87 = v167;
      __swift_storeEnumTagSinglePayload(v167, 1, 1, v14);
      v86 = v163;
      sub_1C754DE6C();
      if (__swift_getEnumTagSinglePayload(v87, 1, v14) != 1)
      {
        sub_1C7030CDC(v167, &unk_1EC219230);
      }
    }

    v88 = v171;
    v89 = sub_1C754DEDC();
    v90 = *v165;
    (*v165)(v86, v14);
    v90(v88, v14);

    if ((v89 & 1) == 0)
    {
LABEL_54:
      v26 = v161 + 1;
      v68 = v155 + 8;
      v69 = v153 - 1;
      if ((v161 + 1) == v152)
      {
        v26 = v152;
        v27 = v160;
        v28 = v150;
        goto LABEL_56;
      }

      goto LABEL_41;
    }

    if (!v164)
    {
      break;
    }

    v91 = *v71;
    v70 = *(v71 + 8);
    *v71 = v70;
    *(v71 + 8) = v91;
    v71 -= 8;
    if (__CFADD__(v69++, 1))
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
}

uint64_t sub_1C749FD20(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v186 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v206 = &v184 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v205 = &v184 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v195 = &v184 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v194 = &v184 - v15;
  v16 = sub_1C754DF6C();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v184 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v212 = (&v184 - v20);
  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v22);
  v197 = &v184 - v26;
  v196 = a3;
  v27 = a3[1];
  v207 = a5;
  if (v27 < 1)
  {
    swift_bridgeObjectRetain_n();
    v29 = MEMORY[0x1E69E7CC0];
LABEL_120:
    v212 = *v186;
    if (!v212)
    {
      goto LABEL_164;
    }

    swift_bridgeObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_122;
  }

  v192 = v25;
  v215 = v23;
  v185 = a4;
  v199 = v24 + 32;
  v200 = v24 + 16;
  v201 = v24;
  v204 = (v24 + 8);
  swift_bridgeObjectRetain_n();
  v28 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  v202 = v18;
  while (1)
  {
    v30 = v28 + 1;
    v187 = v28;
    if (v28 + 1 >= v27)
    {
      v42 = v207;
      goto LABEL_36;
    }

    v203 = v27;
    v31 = *v196;
    v32 = (*v196 + 24 * v30);
    v33 = v32[1];
    v34 = v32[2];
    v214[0] = *v32;
    v214[1] = v33;
    v214[2] = v34;
    v35 = (v31 + 24 * v28);
    v36 = v35[1];
    v37 = v35[2];
    v213[0] = *v35;
    v213[1] = v36;
    v213[2] = v37;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v38 = v198;
    LODWORD(v193) = sub_1C749B92C(v214, v213, v207);
    v198 = v38;
    if (v38)
    {
      swift_bridgeObjectRelease_n();

LABEL_118:
    }

    v189 = v29;

    v191 = 24 * v28;
    v39 = (v31 + 24 * v28 + 32);
    v40 = (v28 + 2);
    v41 = v203;
    v42 = v207;
    while (1)
    {
      v43 = v40;
      if (v30 + 1 >= v41)
      {
        break;
      }

      v44 = v39[3];
      v45 = v39[4];
      v47 = *(v39 - 1);
      v46 = *v39;
      v48 = v39[1];
      v49 = *(v42 + 16);
      v210 = v44;
      v211 = v43;
      v208 = v45;
      if (!v49)
      {
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        v52 = v215;
LABEL_11:
        v58 = v194;
        __swift_storeEnumTagSinglePayload(v194, 1, 1, v52);
        sub_1C754DE6C();
        if (__swift_getEnumTagSinglePayload(v58, 1, v52) != 1)
        {
          sub_1C7030CDC(v194, &unk_1EC219230);
        }

        goto LABEL_13;
      }

      v50 = v39[2];
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v51 = sub_1C6F78124(v50, v44);
      v52 = v215;
      if ((v53 & 1) == 0)
      {
        goto LABEL_11;
      }

      v54 = *(v42 + 56);
      v55 = v201;
      v56 = v194;
      (*(v201 + 16))(v194, v54 + *(v201 + 72) * v51, v215);
      __swift_storeEnumTagSinglePayload(v56, 0, 1, v52);
      v57 = *(v55 + 32);
      v42 = v207;
      v57(v197, v56, v52);
LABEL_13:
      v209 = v48;
      if (*(v42 + 16) && (v59 = sub_1C6F78124(v47, v46), (v60 & 1) != 0))
      {
        v61 = v30;
        v62 = *(v42 + 56);
        v63 = v201;
        v64 = v195;
        (*(v201 + 16))(v195, v62 + *(v201 + 72) * v59, v52);
        __swift_storeEnumTagSinglePayload(v64, 0, 1, v52);
        v65 = v192;
        (*(v63 + 32))(v192, v64, v52);
      }

      else
      {
        v61 = v30;
        v66 = v195;
        __swift_storeEnumTagSinglePayload(v195, 1, 1, v52);
        v65 = v192;
        sub_1C754DE6C();
        if (__swift_getEnumTagSinglePayload(v66, 1, v52) != 1)
        {
          sub_1C7030CDC(v195, &unk_1EC219230);
        }
      }

      v67 = v197;
      v68 = sub_1C754DEDC();
      v69 = *v204;
      (*v204)(v65, v52);
      v69(v67, v52);

      v70 = v193 ^ v68;
      v39 += 3;
      v30 = v61 + 1;
      v43 = v211;
      v40 = (v211 + 1);
      v41 = v203;
      v42 = v207;
      if (v70)
      {
        goto LABEL_22;
      }
    }

    v30 = v41;
LABEL_22:
    if ((v193 & 1) == 0)
    {
      v29 = v189;
      goto LABEL_35;
    }

    v28 = v187;
    if (v30 < v187)
    {
      goto LABEL_157;
    }

    v29 = v189;
    if (v187 < v30)
    {
      if (v41 >= v43)
      {
        v71 = v43;
      }

      else
      {
        v71 = v41;
      }

      v72 = 24 * v71;
      v73 = v30;
      v74 = v191;
      do
      {
        if (v28 != --v73)
        {
          v75 = *v196;
          if (!*v196)
          {
            goto LABEL_162;
          }

          v76 = (v75 + v74);
          v77 = v75 + v72;
          v78 = *v76;
          v79 = *(v76 + 1);
          v80 = *(v77 - 24);
          v76[2] = *(v77 - 8);
          *v76 = v80;
          *(v77 - 24) = v78;
          *(v77 - 16) = v79;
        }

        ++v28;
        v72 -= 24;
        v74 += 24;
      }

      while (v28 < v73);
LABEL_35:
      v28 = v187;
    }

LABEL_36:
    v81 = v196[1];
    if (v30 < v81)
    {
      if (__OFSUB__(v30, v28))
      {
        goto LABEL_154;
      }

      if (v30 - v28 >= v185)
      {
LABEL_64:
        v28 = v187;
        goto LABEL_65;
      }

      v28 = v187;
      v82 = v187 + v185;
      if (__OFADD__(v187, v185))
      {
        goto LABEL_155;
      }

      if (v82 >= v81)
      {
        v82 = v196[1];
      }

      if (v82 < v187)
      {
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        v29 = sub_1C7420830();
LABEL_122:
        v189 = v29;
        v169 = v29 + 16;
        for (i = *(v29 + 2); ; *v174 = i)
        {
          if (i < 2)
          {

            return swift_bridgeObjectRelease_n();
          }

          v171 = *v196;
          if (!*v196)
          {
            goto LABEL_161;
          }

          v172 = &v189[16 * i];
          v173 = *v172;
          v174 = v169;
          v175 = &v169[16 * i];
          v176 = *(v175 + 1);
          v177 = (v171 + 24 * *v172);
          v178 = (v171 + 24 * *v175);
          v215 = (v171 + 24 * v176);
          v179 = v207;
          sub_1C75504FC();
          v180 = v177;
          v181 = v198;
          sub_1C74A1EA8(v180, v178, v215, v212, v179);
          v198 = v181;
          if (v181)
          {
            break;
          }

          if (v176 < v173)
          {
            goto LABEL_149;
          }

          if (i - 2 >= *v174)
          {
            goto LABEL_150;
          }

          v169 = v174;
          *v172 = v173;
          *(v172 + 1) = v176;
          v182 = *v174 - i;
          if (*v174 < i)
          {
            goto LABEL_151;
          }

          i = *v174 - 1;
          sub_1C7423CF4(v175 + 16, v182, v175);
        }

        swift_bridgeObjectRelease_n();
      }

      if (v30 != v82)
      {
        break;
      }
    }

LABEL_65:
    if (v30 < v28)
    {
      goto LABEL_153;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC();
      v29 = v167;
    }

    v116 = *(v29 + 2);
    v117 = v116 + 1;
    v118 = v187;
    if (v116 >= *(v29 + 3) >> 1)
    {
      sub_1C6FB17EC();
      v118 = v187;
      v29 = v168;
    }

    *(v29 + 2) = v117;
    v119 = v29 + 32;
    v120 = &v29[16 * v116 + 32];
    *v120 = v118;
    *(v120 + 1) = v30;
    v211 = *v186;
    if (!v211)
    {
      goto LABEL_163;
    }

    v193 = v30;
    if (v116)
    {
      v210 = v29 + 32;
      while (1)
      {
        v121 = v117 - 1;
        v122 = &v119[16 * v117 - 16];
        v123 = &v29[16 * v117];
        if (v117 >= 4)
        {
          break;
        }

        if (v117 == 3)
        {
          v124 = *(v29 + 4);
          v125 = *(v29 + 5);
          v134 = __OFSUB__(v125, v124);
          v126 = v125 - v124;
          v127 = v134;
LABEL_86:
          if (v127)
          {
            goto LABEL_140;
          }

          v139 = *v123;
          v138 = *(v123 + 1);
          v140 = __OFSUB__(v138, v139);
          v141 = v138 - v139;
          v142 = v140;
          if (v140)
          {
            goto LABEL_143;
          }

          v143 = *(v122 + 1);
          v144 = v143 - *v122;
          if (__OFSUB__(v143, *v122))
          {
            goto LABEL_146;
          }

          if (__OFADD__(v141, v144))
          {
            goto LABEL_148;
          }

          if (v141 + v144 >= v126)
          {
            if (v126 < v144)
            {
              v121 = v117 - 2;
            }

            goto LABEL_108;
          }

          goto LABEL_101;
        }

        if (v117 < 2)
        {
          goto LABEL_142;
        }

        v146 = *v123;
        v145 = *(v123 + 1);
        v134 = __OFSUB__(v145, v146);
        v141 = v145 - v146;
        v142 = v134;
LABEL_101:
        if (v142)
        {
          goto LABEL_145;
        }

        v148 = *v122;
        v147 = *(v122 + 1);
        v134 = __OFSUB__(v147, v148);
        v149 = v147 - v148;
        if (v134)
        {
          goto LABEL_147;
        }

        if (v149 < v141)
        {
          goto LABEL_115;
        }

LABEL_108:
        if (v121 - 1 >= v117)
        {
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
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
          goto LABEL_156;
        }

        v153 = *v196;
        if (!*v196)
        {
          goto LABEL_160;
        }

        v154 = v29;
        v155 = &v119[16 * v121 - 16];
        v156 = *v155;
        v157 = v121;
        v158 = &v119[16 * v121];
        v159 = *(v158 + 1);
        v160 = (v153 + 24 * *v155);
        v161 = (v153 + 24 * *v158);
        v162 = (v153 + 24 * v159);
        v163 = v207;
        sub_1C75504FC();
        v164 = v160;
        v165 = v198;
        sub_1C74A1EA8(v164, v161, v162, v211, v163);
        v198 = v165;
        if (v165)
        {
          swift_bridgeObjectRelease_n();
          goto LABEL_118;
        }

        if (v159 < v156)
        {
          goto LABEL_135;
        }

        v166 = *(v154 + 2);
        if (v157 > v166)
        {
          goto LABEL_136;
        }

        *v155 = v156;
        *(v155 + 1) = v159;
        if (v157 >= v166)
        {
          goto LABEL_137;
        }

        v117 = v166 - 1;
        sub_1C7423CF4(v158 + 16, v166 - 1 - v157, v158);
        v29 = v154;
        *(v154 + 2) = v166 - 1;
        v119 = v210;
        if (v166 <= 2)
        {
          goto LABEL_115;
        }
      }

      v128 = &v119[16 * v117];
      v129 = *(v128 - 8);
      v130 = *(v128 - 7);
      v134 = __OFSUB__(v130, v129);
      v131 = v130 - v129;
      if (v134)
      {
        goto LABEL_138;
      }

      v133 = *(v128 - 6);
      v132 = *(v128 - 5);
      v134 = __OFSUB__(v132, v133);
      v126 = v132 - v133;
      v127 = v134;
      if (v134)
      {
        goto LABEL_139;
      }

      v135 = *(v123 + 1);
      v136 = v135 - *v123;
      if (__OFSUB__(v135, *v123))
      {
        goto LABEL_141;
      }

      v134 = __OFADD__(v126, v136);
      v137 = v126 + v136;
      if (v134)
      {
        goto LABEL_144;
      }

      if (v137 >= v131)
      {
        v151 = *v122;
        v150 = *(v122 + 1);
        v134 = __OFSUB__(v150, v151);
        v152 = v150 - v151;
        if (v134)
        {
          goto LABEL_152;
        }

        if (v126 < v152)
        {
          v121 = v117 - 2;
        }

        goto LABEL_108;
      }

      goto LABEL_86;
    }

LABEL_115:
    v27 = v196[1];
    v28 = v193;
    if (v193 >= v27)
    {
      goto LABEL_120;
    }
  }

  v189 = v29;
  v203 = *v196;
  v83 = (v203 + 24 * v30);
  v84 = v187 - v30;
  v188 = v82;
  while (2)
  {
    v193 = v30;
    v85 = v203 + 24 * v30;
    v86 = *(v85 + 8);
    v87 = *(v85 + 16);
    v190 = v84;
    v191 = v83;
    v88 = v83;
LABEL_46:
    v89 = *(v88 - 3);
    v90 = *(v88 - 2);
    v91 = *(v88 - 1);
    v92 = *(v42 + 16);
    v211 = v87;
    v208 = v84;
    v209 = v91;
    if (v92)
    {
      v93 = *v88;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v94 = sub_1C6F78124(v93, v86);
      if (v95)
      {
        v96 = v89;
        v97 = v201;
        v98 = v205;
        v99 = v215;
        (*(v201 + 16))(v205, *(v42 + 56) + *(v201 + 72) * v94, v215);
        __swift_storeEnumTagSinglePayload(v98, 0, 1, v99);
        v100 = *(v97 + 32);
        v89 = v96;
        v100(v212, v98, v99);
        goto LABEL_52;
      }
    }

    else
    {
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
    }

    v101 = v205;
    v102 = v215;
    __swift_storeEnumTagSinglePayload(v205, 1, 1, v215);
    sub_1C754DE6C();
    if (__swift_getEnumTagSinglePayload(v101, 1, v102) != 1)
    {
      sub_1C7030CDC(v205, &unk_1EC219230);
    }

LABEL_52:
    v103 = *(v42 + 16);
    v210 = v90;
    if (v103 && (v104 = sub_1C6F78124(v89, v90), (v105 & 1) != 0))
    {
      v106 = v201;
      v107 = v206;
      v108 = v215;
      (*(v201 + 16))(v206, *(v42 + 56) + *(v201 + 72) * v104, v215);
      __swift_storeEnumTagSinglePayload(v107, 0, 1, v108);
      v109 = v202;
      (*(v106 + 32))(v202, v107, v108);
    }

    else
    {
      v110 = v206;
      v108 = v215;
      __swift_storeEnumTagSinglePayload(v206, 1, 1, v215);
      v109 = v202;
      sub_1C754DE6C();
      if (__swift_getEnumTagSinglePayload(v110, 1, v108) != 1)
      {
        sub_1C7030CDC(v206, &unk_1EC219230);
      }
    }

    v111 = v212;
    v112 = sub_1C754DEDC();
    v113 = *v204;
    (*v204)(v109, v108);
    v113(v111, v108);

    if ((v112 & 1) == 0)
    {
      v42 = v207;
LABEL_62:
      v30 = v193 + 1;
      v83 = (v191 + 24);
      v84 = v190 - 1;
      if (v193 + 1 == v188)
      {
        v30 = v188;
        v29 = v189;
        goto LABEL_64;
      }

      continue;
    }

    break;
  }

  v114 = v208;
  if (v203)
  {
    v115 = *v88;
    v86 = v88[1];
    v87 = v88[2];
    *v88 = *(v88 - 3);
    v88[2] = *(v88 - 1);
    *(v88 - 2) = v86;
    *(v88 - 1) = v87;
    *(v88 - 3) = v115;
    v88 -= 3;
    v84 = v114 + 1;
    v42 = v207;
    if (v114 == -1)
    {
      goto LABEL_62;
    }

    goto LABEL_46;
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_160:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_161:

  __break(1u);
LABEL_162:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_163:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_164:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

void sub_1C74A0CBC(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v105 = a1;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CD0);
  v111 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v108 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v116 = &v102 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v117 = &v102 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v102 - v14;
  v114 = a3;
  v16 = a3[1];
  if (v16 < 1)
  {
    v18 = MEMORY[0x1E69E7CC0];
    v19 = v4;
LABEL_100:
    v5 = *v105;
    if (!*v105)
    {
      goto LABEL_142;
    }

    v16 = v19;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_102:
      v95 = v18 + 16;
      v96 = *(v18 + 2);
      for (i = v18; v96 >= 2; v18 = i)
      {
        if (!*v114)
        {
          goto LABEL_139;
        }

        v97 = &v18[16 * v96];
        v98 = *v97;
        v99 = &v95[2 * v96];
        v100 = *(v99 + 1);
        sub_1C74A273C(*v114 + *(v111 + 72) * *v97, *v114 + *(v111 + 72) * *v99, *v114 + *(v111 + 72) * v100, v5);
        if (v16)
        {
          break;
        }

        if (v100 < v98)
        {
          goto LABEL_127;
        }

        if (v96 - 2 >= *v95)
        {
          goto LABEL_128;
        }

        *v97 = v98;
        *(v97 + 1) = v100;
        v101 = *v95 - v96;
        if (*v95 < v96)
        {
          goto LABEL_129;
        }

        v96 = *v95 - 1;
        sub_1C7423CF4(v99 + 16, v101, v99);
        *v95 = v96;
      }

LABEL_110:

      return;
    }

LABEL_136:
    v18 = sub_1C7420830();
    goto LABEL_102;
  }

  v102 = a4;
  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  v19 = v4;
  while (1)
  {
    v20 = v17;
    v21 = v17 + 1;
    if (v17 + 1 >= v16)
    {
      goto LABEL_31;
    }

    i = v18;
    v104 = v19;
    v22 = *v114;
    v23 = *(v111 + 72);
    v24 = *v114 + v23 * v21;
    sub_1C74A34D0(v24, v15);
    v25 = v117;
    sub_1C74A34D0(v22 + v23 * v20, v117);
    LODWORD(v110) = sub_1C754DEDC();
    v26 = v25;
    v5 = &qword_1EC214CD0;
    sub_1C7030CDC(v26, &qword_1EC214CD0);
    sub_1C7030CDC(v15, &qword_1EC214CD0);
    v103 = v20;
    v27 = v20 + 2;
    v112 = v23;
    v28 = v22 + v23 * (v20 + 2);
    while (1)
    {
      v29 = v27;
      v30 = v21 + 1;
      if (v30 >= v16)
      {
        break;
      }

      sub_1C74A34D0(v28, v15);
      v31 = v117;
      sub_1C74A34D0(v24, v117);
      v5 = v30;
      v32 = sub_1C754DEDC() & 1;
      sub_1C7030CDC(v31, &qword_1EC214CD0);
      sub_1C7030CDC(v15, &qword_1EC214CD0);
      v28 += v112;
      v24 += v112;
      v27 = v29 + 1;
      v33 = (v110 & 1) == v32;
      v21 = v5;
      if (!v33)
      {
        goto LABEL_10;
      }
    }

    v21 = v16;
LABEL_10:
    v19 = v104;
    if (v110)
    {
      v34 = v16;
      v16 = v103;
      if (v21 < v103)
      {
        goto LABEL_133;
      }

      if (v103 >= v21)
      {
        v18 = i;
        v20 = v103;
        goto LABEL_31;
      }

      if (v34 >= v29)
      {
        v34 = v29;
      }

      v35 = v112 * (v34 - 1);
      v5 = v112 * v34;
      v36 = v103 * v112;
      v37 = v21;
      v113 = v21;
      do
      {
        if (v16 != --v37)
        {
          v38 = *v114;
          if (!*v114)
          {
            goto LABEL_140;
          }

          sub_1C74A3420(v38 + v36, v108);
          v39 = v36 < v35 || v38 + v36 >= v38 + v5;
          if (v39)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v36 != v35)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1C74A3420(v108, v38 + v35);
          v21 = v113;
        }

        ++v16;
        v35 -= v112;
        v5 -= v112;
        v36 += v112;
      }

      while (v16 < v37);
      v19 = v104;
    }

    v18 = i;
    v20 = v103;
LABEL_31:
    v40 = v114[1];
    if (v21 < v40)
    {
      if (__OFSUB__(v21, v20))
      {
        goto LABEL_132;
      }

      if (v21 - v20 < v102)
      {
        break;
      }
    }

LABEL_47:
    if (v21 < v20)
    {
      goto LABEL_131;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v113 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C6FB17EC();
      v18 = v93;
    }

    v51 = *(v18 + 2);
    v52 = v51 + 1;
    if (v51 >= *(v18 + 3) >> 1)
    {
      sub_1C6FB17EC();
      v18 = v94;
    }

    *(v18 + 2) = v52;
    v53 = v18 + 32;
    v54 = &v18[16 * v51 + 32];
    v55 = v113;
    *v54 = v20;
    *(v54 + 1) = v55;
    v112 = *v105;
    if (!v112)
    {
      goto LABEL_141;
    }

    if (v51)
    {
      i = v18;
      while (1)
      {
        v56 = v52 - 1;
        v57 = &v53[16 * v52 - 16];
        v58 = &v18[16 * v52];
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v59 = *(v18 + 4);
          v60 = *(v18 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_68:
          if (v62)
          {
            goto LABEL_118;
          }

          v74 = *v58;
          v73 = *(v58 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_121;
          }

          v78 = *(v57 + 1);
          v79 = v78 - *v57;
          if (__OFSUB__(v78, *v57))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v76, v79))
          {
            goto LABEL_126;
          }

          if (v76 + v79 >= v61)
          {
            if (v61 < v79)
            {
              v56 = v52 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v52 < 2)
        {
          goto LABEL_120;
        }

        v81 = *v58;
        v80 = *(v58 + 1);
        v69 = __OFSUB__(v80, v81);
        v76 = v80 - v81;
        v77 = v69;
LABEL_83:
        if (v77)
        {
          goto LABEL_123;
        }

        v83 = *v57;
        v82 = *(v57 + 1);
        v69 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v69)
        {
          goto LABEL_125;
        }

        if (v84 < v76)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v56 - 1 >= v52)
        {
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
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v114)
        {
          goto LABEL_138;
        }

        v5 = v15;
        v88 = &v53[16 * v56 - 16];
        v89 = *v88;
        v90 = v56;
        v91 = &v53[16 * v56];
        v92 = *(v91 + 1);
        sub_1C74A273C(*v114 + *(v111 + 72) * *v88, *v114 + *(v111 + 72) * *v91, *v114 + *(v111 + 72) * v92, v112);
        if (v19)
        {
          goto LABEL_110;
        }

        if (v92 < v89)
        {
          goto LABEL_113;
        }

        v16 = *(i + 2);
        if (v90 > v16)
        {
          goto LABEL_114;
        }

        *v88 = v89;
        *(v88 + 1) = v92;
        if (v90 >= v16)
        {
          goto LABEL_115;
        }

        v52 = v16 - 1;
        sub_1C7423CF4(v91 + 16, v16 - 1 - v90, v91);
        v18 = i;
        *(i + 2) = v16 - 1;
        v15 = v5;
        if (v16 <= 2)
        {
          goto LABEL_97;
        }
      }

      v63 = &v53[16 * v52];
      v64 = *(v63 - 8);
      v65 = *(v63 - 7);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_116;
      }

      v68 = *(v63 - 6);
      v67 = *(v63 - 5);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_117;
      }

      v70 = *(v58 + 1);
      v71 = v70 - *v58;
      if (__OFSUB__(v70, *v58))
      {
        goto LABEL_119;
      }

      v69 = __OFADD__(v61, v71);
      v72 = v61 + v71;
      if (v69)
      {
        goto LABEL_122;
      }

      if (v72 >= v66)
      {
        v86 = *v57;
        v85 = *(v57 + 1);
        v69 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v69)
        {
          goto LABEL_130;
        }

        if (v61 < v87)
        {
          v56 = v52 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v17 = v113;
    v16 = v114[1];
    if (v113 >= v16)
    {
      goto LABEL_100;
    }
  }

  v41 = v20 + v102;
  if (__OFADD__(v20, v102))
  {
    goto LABEL_134;
  }

  if (v41 >= v40)
  {
    v41 = v114[1];
  }

  if (v41 < v20)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v21 == v41)
  {
    goto LABEL_47;
  }

  i = v18;
  v103 = v20;
  v104 = v19;
  v5 = *v114;
  v42 = *(v111 + 72);
  v43 = *v114 + v42 * (v21 - 1);
  v16 = -v42;
  v44 = v20 - v21;
  v106 = v42;
  v107 = v41;
  v45 = v5 + v21 * v42;
LABEL_40:
  v112 = v43;
  v113 = v21;
  v109 = v45;
  v110 = v44;
  v46 = v43;
  while (1)
  {
    sub_1C74A34D0(v45, v15);
    v47 = v117;
    sub_1C74A34D0(v46, v117);
    v48 = sub_1C754DEDC();
    sub_1C7030CDC(v47, &qword_1EC214CD0);
    sub_1C7030CDC(v15, &qword_1EC214CD0);
    if ((v48 & 1) == 0)
    {
LABEL_45:
      v21 = v113 + 1;
      v43 = v112 + v106;
      v44 = v110 - 1;
      v45 = v109 + v106;
      if (v113 + 1 == v107)
      {
        v21 = v107;
        v20 = v103;
        v19 = v104;
        v18 = i;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v5)
    {
      break;
    }

    v49 = v116;
    sub_1C74A3420(v45, v116);
    swift_arrayInitWithTakeFrontToBack();
    sub_1C74A3420(v49, v46);
    v46 += v16;
    v45 += v16;
    v39 = __CFADD__(v44++, 1);
    if (v39)
    {
      goto LABEL_45;
    }
  }

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
}

void sub_1C74A1588(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(char *, int64_t, char *))
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_110:
    v103 = *a1;
    if (!*a1)
    {
      goto LABEL_151;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_112:
      v93 = v7 + 16;
      v94 = *(v7 + 2);
      while (v94 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_148;
        }

        v95 = v7;
        v96 = &v7[16 * v94];
        v97 = *v96;
        v98 = &v93[2 * v94];
        v99 = *(v98 + 1);
        sub_1C74A2BB8((*a3 + 24 * *v96), (*a3 + 24 * *v98), *a3 + 24 * v99, v103, a5);
        if (v106)
        {
          break;
        }

        if (v99 < v97)
        {
          goto LABEL_136;
        }

        if (v94 - 2 >= *v93)
        {
          goto LABEL_137;
        }

        *v96 = v97;
        *(v96 + 1) = v99;
        v100 = *v93 - v94;
        if (*v93 < v94)
        {
          goto LABEL_138;
        }

        v106 = 0;
        v94 = *v93 - 1;
        sub_1C7423CF4(v98 + 16, v100, v98);
        *v93 = v94;
        v7 = v95;
      }

LABEL_120:

      return;
    }

LABEL_145:
    v7 = sub_1C7420830();
    goto LABEL_112;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v8 = v6++;
    if (v6 >= v5)
    {
      goto LABEL_33;
    }

    v9 = *a3;
    v10 = (*a3 + 24 * v6);
    v11 = (*a3 + 24 * v8);
    v12 = *(v10[2] + 16);
    v13 = *(v11[2] + 16);
    if (v12 == v13)
    {
      v14 = *v10 == *v11 && v10[1] == v11[1];
      if (v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = sub_1C7551DBC();
      }
    }

    else
    {
      v15 = v13 < v12;
    }

    v6 = v8 + 2;
    v16 = v9 + 24 * v8;
    v17 = 24 * v8;
    v18 = v16 + 64;
    while (v6 < v5)
    {
      OUTLINED_FUNCTION_5_100();
      if (v14)
      {
        if (*(v18 - 16) == *(v18 - 40) && *(v18 - 8) == *(v18 - 32))
        {
          if (v15)
          {
            goto LABEL_26;
          }

          goto LABEL_24;
        }

        v22 = sub_1C7551DBC();
      }

      else
      {
        v22 = v20 < v19;
      }

      if ((v15 ^ v22))
      {
        break;
      }

LABEL_24:
      ++v6;
      v18 += 24;
    }

    if ((v15 & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_26:
    if (v6 < v8)
    {
      goto LABEL_142;
    }

    if (v8 < v6)
    {
      v23 = 24 * v6;
      v24 = v6;
      v25 = v8;
      do
      {
        if (v25 != --v24)
        {
          v26 = *a3;
          if (!*a3)
          {
            goto LABEL_149;
          }

          v27 = (v26 + v17);
          v28 = v26 + v23;
          v29 = *v27;
          v30 = *(v27 + 1);
          v31 = *(v28 - 24);
          v27[2] = *(v28 - 8);
          *v27 = v31;
          *(v28 - 24) = v29;
          *(v28 - 16) = v30;
        }

        ++v25;
        v23 -= 24;
        v17 += 24;
      }

      while (v25 < v24);
    }

LABEL_33:
    v32 = a3[1];
    if (v6 >= v32)
    {
      goto LABEL_58;
    }

    if (__OFSUB__(v6, v8))
    {
      goto LABEL_141;
    }

    if (v6 - v8 >= a4)
    {
LABEL_58:
      if (v6 < v8)
      {
        goto LABEL_140;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB17EC();
        v7 = v91;
      }

      v49 = *(v7 + 2);
      v50 = v49 + 1;
      if (v49 >= *(v7 + 3) >> 1)
      {
        sub_1C6FB17EC();
        v7 = v92;
      }

      *(v7 + 2) = v50;
      v51 = v7 + 32;
      v52 = &v7[16 * v49 + 32];
      *v52 = v8;
      *(v52 + 1) = v6;
      v103 = *a1;
      if (!*a1)
      {
        goto LABEL_150;
      }

      if (!v49)
      {
LABEL_107:
        v5 = a3[1];
        if (v6 >= v5)
        {
          goto LABEL_110;
        }

        continue;
      }

      while (1)
      {
        v53 = v50 - 1;
        v54 = &v51[16 * v50 - 16];
        v55 = &v7[16 * v50];
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v56 = *(v7 + 4);
          v57 = *(v7 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_78:
          if (v59)
          {
            goto LABEL_127;
          }

          v71 = *v55;
          v70 = *(v55 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_130;
          }

          v75 = *(v54 + 1);
          v76 = v75 - *v54;
          if (__OFSUB__(v75, *v54))
          {
            goto LABEL_133;
          }

          if (__OFADD__(v73, v76))
          {
            goto LABEL_135;
          }

          if (v73 + v76 >= v58)
          {
            if (v58 < v76)
            {
              v53 = v50 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        if (v50 < 2)
        {
          goto LABEL_129;
        }

        v78 = *v55;
        v77 = *(v55 + 1);
        v66 = __OFSUB__(v77, v78);
        v73 = v77 - v78;
        v74 = v66;
LABEL_93:
        if (v74)
        {
          goto LABEL_132;
        }

        v80 = *v54;
        v79 = *(v54 + 1);
        v66 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v66)
        {
          goto LABEL_134;
        }

        if (v81 < v73)
        {
          goto LABEL_107;
        }

LABEL_100:
        if (v53 - 1 >= v50)
        {
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
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
LABEL_130:
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
          goto LABEL_144;
        }

        if (!*a3)
        {
          goto LABEL_147;
        }

        v85 = v7;
        v86 = &v51[16 * v53 - 16];
        v87 = *v86;
        v88 = &v51[16 * v53];
        v89 = *(v88 + 1);
        sub_1C74A2BB8((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v103, a5);
        if (v106)
        {
          goto LABEL_120;
        }

        if (v89 < v87)
        {
          goto LABEL_122;
        }

        v90 = *(v85 + 2);
        if (v53 > v90)
        {
          goto LABEL_123;
        }

        *v86 = v87;
        *(v86 + 1) = v89;
        if (v53 >= v90)
        {
          goto LABEL_124;
        }

        v106 = 0;
        v50 = v90 - 1;
        sub_1C7423CF4(v88 + 16, v90 - 1 - v53, &v51[16 * v53]);
        v7 = v85;
        *(v85 + 2) = v90 - 1;
        if (v90 <= 2)
        {
          goto LABEL_107;
        }
      }

      v60 = &v51[16 * v50];
      v61 = *(v60 - 8);
      v62 = *(v60 - 7);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_125;
      }

      v65 = *(v60 - 6);
      v64 = *(v60 - 5);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_126;
      }

      v67 = *(v55 + 1);
      v68 = v67 - *v55;
      if (__OFSUB__(v67, *v55))
      {
        goto LABEL_128;
      }

      v66 = __OFADD__(v58, v68);
      v69 = v58 + v68;
      if (v66)
      {
        goto LABEL_131;
      }

      if (v69 >= v63)
      {
        v83 = *v54;
        v82 = *(v54 + 1);
        v66 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v66)
        {
          goto LABEL_139;
        }

        if (v58 < v84)
        {
          v53 = v50 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_78;
    }

    break;
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_143;
  }

  if (v8 + a4 >= v32)
  {
    v33 = a3[1];
  }

  else
  {
    v33 = (v8 + a4);
  }

  if (v33 < v8)
  {
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  if (v6 == v33)
  {
    goto LABEL_58;
  }

  v34 = *a3;
  v35 = *a3 + 24 * v6;
  v103 = v8;
  v36 = (v8 - v6);
LABEL_43:
  v37 = v36;
  v38 = v35;
  while (1)
  {
    OUTLINED_FUNCTION_5_100();
    if (v14)
    {
      v44 = v39 == v41 && v40 == *(v38 - 2);
      if (v44 || (sub_1C7551DBC() & 1) == 0)
      {
LABEL_56:
        ++v6;
        v35 += 24;
        --v36;
        if (v6 == v33)
        {
          v6 = v33;
          v8 = v103;
          goto LABEL_58;
        }

        goto LABEL_43;
      }
    }

    else if (v43 >= v42)
    {
      goto LABEL_56;
    }

    if (!v34)
    {
      break;
    }

    v45 = *v38;
    v46 = v38[1];
    v47 = v38[2];
    *v38 = *(v38 - 3);
    v38[2] = *(v38 - 1);
    *(v38 - 2) = v46;
    *(v38 - 1) = v47;
    *(v38 - 3) = v45;
    v38 -= 3;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_56;
    }
  }

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
}

uint64_t sub_1C74A1BB4(void **a1, void **a2, id *a3, void **a4)
{
  v5 = a3;
  v6 = a1;
  v7 = a2 - a1;
  v8 = a3 - a2;
  if (v7 >= v8)
  {
    sub_1C7423CF8(a2);
    v25 = a2;
    v11 = &a4[v8];
    v26 = -a4;
    __src = a4;
LABEL_15:
    v27 = v25 - 1;
    v28 = v5 - 1;
    v29 = v11 + v26;
    v49 = v25;
    while (v11 > a4 && v25 > v6)
    {
      v50 = v29;
      v31 = v28;
      v32 = v11;
      v33 = v11 - 1;
      v53 = *(v11 - 1);
      v34 = v27;
      v52 = *v27;
      v35 = v52;
      v36 = v53;
      v37 = v35;
      v38 = sub_1C749BEA0(&v53, &v52);
      if (v51)
      {

        v25 = v49;
        v46 = v50 / 8;
        v44 = __src;
        if (v49 < __src || v49 >= &__src[v50 / 8])
        {
          memmove(v49, __src, 8 * v46);
          return 1;
        }

        if (v49 != __src)
        {
          v43 = 8 * v46;
          goto LABEL_41;
        }

        return 1;
      }

      v39 = v38;

      if (v39)
      {
        v5 = v31;
        a4 = __src;
        v25 = v34;
        v11 = v32;
        if (v31 + 1 != v49)
        {
          *v31 = *v34;
          v25 = v34;
        }

        goto LABEL_15;
      }

      v25 = v49;
      v27 = v34;
      if (v32 != v31 + 1)
      {
        *v31 = *v33;
      }

      v28 = v31 - 1;
      v29 = v50 - 8;
      v11 = v33;
      a4 = __src;
    }

LABEL_29:
    v40 = v11 - a4;
    if (v25 < a4 || v25 >= &a4[v40])
    {
      goto LABEL_40;
    }

LABEL_39:
    if (v25 == a4)
    {
      return 1;
    }

    goto LABEL_40;
  }

  sub_1C7423CF8(a1);
  v10 = a2;
  v11 = &a4[v7];
  while (1)
  {
    if (a4 >= v11 || v10 >= v5)
    {
      v25 = v6;
      goto LABEL_29;
    }

    v13 = v11;
    v14 = v5;
    v15 = v6;
    v16 = v10;
    v53 = *v10;
    v52 = *a4;
    v17 = v52;
    v18 = v53;
    v19 = v17;
    v20 = sub_1C749BEA0(&v53, &v52);
    if (v51)
    {
      break;
    }

    v21 = v20;
    v51 = 0;

    if (v21)
    {
      v22 = v16;
      v10 = v16 + 1;
      v23 = v15 == v16;
    }

    else
    {
      v22 = a4;
      v23 = v15 == a4++;
      v10 = v16;
    }

    v11 = v13;
    if (!v23)
    {
      *v15 = *v22;
    }

    v6 = v15 + 1;
    v5 = v14;
  }

  v40 = v13 - a4;
  v25 = v15;
  if (v15 >= a4 && v15 < &a4[v40])
  {
    goto LABEL_39;
  }

LABEL_40:
  v43 = 8 * v40;
  v44 = a4;
LABEL_41:
  memmove(v25, v44, v43);
  return 1;
}

uint64_t sub_1C74A1EA8(uint64_t *a1, uint64_t *a2, char *a3, uint64_t *a4, uint64_t a5)
{
  v109 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v101 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v100 = &v92 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v99 = (&v92 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v98 = (&v92 - v16);
  v17 = sub_1C754DF6C();
  MEMORY[0x1EEE9AC00](v17);
  v94 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v104 = &v92 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v92 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v103 = &v92 - v25;
  v26 = (a2 - a1) / 24;
  v95 = v27 + 32;
  v96 = v27 + 16;
  v97 = v27;
  v105 = (v27 + 8);
  v28 = (a3 - a2) / 24;
  if (v26 < v28)
  {
    sub_1C7423D18(a1);
    v29 = &a4[3 * v26];
    v100 = v23;
    v106 = v29;
    v107 = a3;
    while (1)
    {
      if (a4 >= v29 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_49;
      }

      v108 = a1;
      v32 = a2[1];
      v31 = a2[2];
      v33 = a4[1];
      v101 = *a4;
      v102 = v31;
      v34 = v109;
      v35 = *(v109 + 16);
      v104 = a4[2];
      if (v35)
      {
        v36 = *a2;
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        v37 = sub_1C6F78124(v36, v32);
        if (v38)
        {
          v39 = v97;
          v40 = v98;
          (*(v97 + 16))(v98, *(v34 + 56) + *(v97 + 72) * v37, v17);
          __swift_storeEnumTagSinglePayload(v40, 0, 1, v17);
          v41 = v40;
          v23 = v100;
          (*(v39 + 32))(v103, v41, v17);
          goto LABEL_13;
        }
      }

      else
      {
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
      }

      v42 = v98;
      __swift_storeEnumTagSinglePayload(v98, 1, 1, v17);
      sub_1C754DE6C();
      if (__swift_getEnumTagSinglePayload(v42, 1, v17) != 1)
      {
        sub_1C7030CDC(v98, &unk_1EC219230);
      }

LABEL_13:
      v43 = v109;
      if (*(v109 + 16) && (v44 = sub_1C6F78124(v101, v33), (v45 & 1) != 0))
      {
        v46 = v43;
        v47 = a4;
        v48 = v97;
        v49 = v99;
        (*(v97 + 16))(v99, *(v46 + 56) + *(v97 + 72) * v44, v17);
        __swift_storeEnumTagSinglePayload(v49, 0, 1, v17);
        (*(v48 + 32))(v23, v49, v17);
      }

      else
      {
        v47 = a4;
        v50 = v99;
        __swift_storeEnumTagSinglePayload(v99, 1, 1, v17);
        sub_1C754DE6C();
        if (__swift_getEnumTagSinglePayload(v50, 1, v17) != 1)
        {
          sub_1C7030CDC(v99, &unk_1EC219230);
        }
      }

      v51 = v103;
      v52 = sub_1C754DEDC();
      v53 = *v105;
      (*v105)(v23, v17);
      v53(v51, v17);

      if (v52)
      {
        v54 = a2;
        v55 = v108;
        v56 = v108 == a2;
        a2 += 3;
        a4 = v47;
      }

      else
      {
        v54 = v47;
        a4 = v47 + 3;
        v55 = v108;
        v56 = v108 == v47;
      }

      v29 = v106;
      a3 = v107;
      if (!v56)
      {
        v57 = *v54;
        v55[2] = v54[2];
        *v55 = v57;
      }

      a1 = v55 + 3;
      v23 = v100;
    }
  }

  sub_1C7423D18(a2);
  v29 = &a4[3 * v28];
  v93 = a4;
  v108 = a1;
LABEL_25:
  v58 = a3 - 24;
  v98 = a2 - 3;
  v99 = a2;
  while (v29 > a4 && a2 > a1)
  {
    v106 = v29;
    v107 = v58;
    v60 = v29 - 3;
    v61 = *(v29 - 2);
    v63 = *(a2 - 3);
    v62 = *(a2 - 2);
    v64 = *(a2 - 1);
    v65 = v109;
    v66 = *(v109 + 16);
    v102 = *(v29 - 1);
    v103 = v64;
    if (v66)
    {
      v67 = *v60;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v68 = sub_1C6F78124(v67, v61);
      if (v69)
      {
        v70 = v97;
        v71 = v100;
        (*(v97 + 16))(v100, *(v65 + 56) + *(v97 + 72) * v68, v17);
        __swift_storeEnumTagSinglePayload(v71, 0, 1, v17);
        v65 = v109;
        (*(v70 + 32))(v104, v71, v17);
        goto LABEL_37;
      }
    }

    else
    {
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
    }

    v72 = v100;
    __swift_storeEnumTagSinglePayload(v100, 1, 1, v17);
    sub_1C754DE6C();
    if (__swift_getEnumTagSinglePayload(v72, 1, v17) != 1)
    {
      sub_1C7030CDC(v100, &unk_1EC219230);
    }

LABEL_37:
    if (*(v65 + 16) && (v73 = sub_1C6F78124(v63, v62), (v74 & 1) != 0))
    {
      v75 = v97;
      v76 = v101;
      (*(v97 + 16))(v101, *(v65 + 56) + *(v97 + 72) * v73, v17);
      __swift_storeEnumTagSinglePayload(v76, 0, 1, v17);
      v77 = *(v75 + 32);
      v78 = v94;
      v77(v94, v76, v17);
    }

    else
    {
      v79 = v101;
      __swift_storeEnumTagSinglePayload(v101, 1, 1, v17);
      v78 = v94;
      sub_1C754DE6C();
      if (__swift_getEnumTagSinglePayload(v79, 1, v17) != 1)
      {
        sub_1C7030CDC(v101, &unk_1EC219230);
      }
    }

    v80 = v104;
    v81 = sub_1C754DEDC();
    v82 = v78;
    v83 = v81;
    v84 = *v105;
    (*v105)(v82, v17);
    v84(v80, v17);

    if (v83)
    {
      a3 = v107;
      a1 = v108;
      v87 = v98;
      a2 = v98;
      a4 = v93;
      v29 = v106;
      if (v107 + 24 != v99)
      {
        v88 = *v98;
        *(v107 + 2) = v98[2];
        *a3 = v88;
        a2 = v87;
      }

      goto LABEL_25;
    }

    v85 = v107;
    a2 = v99;
    if (v106 != (v107 + 24))
    {
      v86 = *v60;
      *(v107 + 2) = v60[2];
      *v85 = v86;
    }

    v58 = v85 - 24;
    v29 = v60;
    a4 = v93;
    a1 = v108;
  }

LABEL_49:
  v89 = (v29 - a4) / 24;
  if (a2 != a4 || a2 >= &a4[3 * v89])
  {
    memmove(a2, a4, 24 * v89);
  }

  return 1;
}

void sub_1C74A273C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v50 = a3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CD0);
  MEMORY[0x1EEE9AC00](v51);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v43 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v15 = a2 - a1;
  v16 = a2 - a1 == 0x8000000000000000 && v14 == -1;
  if (v16)
  {
    goto LABEL_61;
  }

  v17 = v50 - a2;
  if (v50 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v19 = v15 / v14;
  v54 = a1;
  v53 = a4;
  v20 = v17 / v14;
  v43[1] = v4;
  if (v15 / v14 >= v17 / v14)
  {
    sub_1C741E640(a2, v17 / v14, a4);
    v25 = a4 + v20 * v14;
    v26 = -v14;
    v27 = v25;
    v28 = v50;
    v48 = a4;
    v49 = v26;
    v46 = v9;
    v47 = a1;
    v45 = v12;
LABEL_37:
    v29 = a2 + v26;
    v30 = v28;
    v43[0] = v27;
    v31 = v26;
    v50 = a2 + v26;
    while (1)
    {
      if (v25 <= a4)
      {
        v54 = a2;
        v52 = v27;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v44 = v27;
      v32 = v30 + v31;
      v33 = v25 + v31;
      v34 = v29;
      v35 = v25 + v31;
      v36 = v30;
      sub_1C74A34D0(v35, v12);
      sub_1C74A34D0(v34, v9);
      v37 = sub_1C754DEDC();
      v38 = v9;
      v39 = v37;
      sub_1C7030CDC(v38, &qword_1EC214CD0);
      sub_1C7030CDC(v12, &qword_1EC214CD0);
      if (v39)
      {
        v41 = v36 < a2 || v32 >= a2;
        v28 = v32;
        if (v41)
        {
          a2 = v50;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v44;
          v12 = v45;
          v9 = v46;
          a1 = v47;
          a4 = v48;
          v26 = v49;
        }

        else
        {
          v12 = v45;
          v27 = v44;
          v16 = v36 == a2;
          v26 = v49;
          a2 = v50;
          v9 = v46;
          a1 = v47;
          a4 = v48;
          if (!v16)
          {
            a2 = v50;
            v42 = v44;
            swift_arrayInitWithTakeBackToFront();
            v27 = v42;
          }
        }

        goto LABEL_37;
      }

      if (v36 < v25 || v32 >= v25)
      {
        swift_arrayInitWithTakeFrontToBack();
        v30 = v32;
        v25 = v33;
        v27 = v33;
        v12 = v45;
        v9 = v46;
        a4 = v48;
        v31 = v49;
        a1 = v47;
        v29 = v50;
      }

      else
      {
        v27 = v33;
        v16 = v25 == v36;
        v30 = v32;
        v25 = v33;
        v12 = v45;
        v9 = v46;
        a4 = v48;
        v31 = v49;
        a1 = v47;
        v29 = v50;
        if (!v16)
        {
          swift_arrayInitWithTakeBackToFront();
          v29 = v50;
          v30 = v32;
          v25 = v33;
          v27 = v33;
        }
      }
    }

    v54 = a2;
    v52 = v43[0];
  }

  else
  {
    sub_1C741E640(a1, v15 / v14, a4);
    v49 = a4 + v19 * v14;
    v52 = v49;
    while (a4 < v49 && a2 < v50)
    {
      sub_1C74A34D0(a2, v12);
      sub_1C74A34D0(a4, v9);
      v22 = sub_1C754DEDC();
      sub_1C7030CDC(v9, &qword_1EC214CD0);
      sub_1C7030CDC(v12, &qword_1EC214CD0);
      if (v22)
      {
        if (a1 < a2 || a1 >= a2 + v14)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v14;
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v14)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v53 = a4 + v14;
        a4 += v14;
      }

      a1 += v14;
      v54 = a1;
    }
  }

LABEL_59:
  sub_1C7420878(&v54, &v53, &v52);
}

uint64_t sub_1C74A2BB8(char *a1, char *a2, unint64_t a3, char *a4, void (*a5)(char *, int64_t, char *))
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 24;
  v10 = (a3 - a2) / 24;
  if (v9 < v10)
  {
    a5(a1, (a2 - a1) / 24, a4);
    v11 = &v5[24 * v9];
    while (1)
    {
      if (v5 >= v11 || v7 >= v6)
      {
        v18 = v8;
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_5_100();
      if (v15)
      {
        v15 = *v7 == *v5 && *(v7 + 1) == *(v5 + 1);
        if (v15 || (sub_1C7551DBC() & 1) == 0)
        {
LABEL_14:
          v16 = v5;
          v15 = v8 == v5;
          v5 += 24;
          if (v15)
          {
            goto LABEL_16;
          }

LABEL_15:
          v17 = *v16;
          *(v8 + 2) = *(v16 + 2);
          *v8 = v17;
          goto LABEL_16;
        }
      }

      else if (v14 >= v13)
      {
        goto LABEL_14;
      }

      v16 = v7;
      v15 = v8 == v7;
      v7 += 24;
      if (!v15)
      {
        goto LABEL_15;
      }

LABEL_16:
      v8 += 24;
    }
  }

  a5(a2, (a3 - a2) / 24, a4);
  v11 = &v5[24 * v10];
LABEL_22:
  v18 = v7;
  v7 -= 24;
  for (v6 -= 24; v11 > v5 && v18 > v8; v6 -= 24)
  {
    OUTLINED_FUNCTION_5_100();
    if (v15)
    {
      v23 = v20 == *(v18 - 3) && *(v11 - 2) == *(v18 - 2);
      if (!v23 && (sub_1C7551DBC() & 1) != 0)
      {
LABEL_40:
        if ((v6 + 24) != v18)
        {
          v25 = *v7;
          *(v6 + 16) = *(v7 + 2);
          *v6 = v25;
        }

        goto LABEL_22;
      }
    }

    else if (v22 < v21)
    {
      goto LABEL_40;
    }

    if (v11 != (v6 + 24))
    {
      v24 = *(v11 - 24);
      *(v6 + 16) = *(v11 - 1);
      *v6 = v24;
    }

    v11 -= 24;
  }

LABEL_43:
  v26 = (v11 - v5) / 24;
  if (v18 != v5 || v18 >= &v5[24 * v26])
  {
    memmove(v18, v5, 24 * v26);
  }

  return 1;
}