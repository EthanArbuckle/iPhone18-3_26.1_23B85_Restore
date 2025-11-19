uint64_t sub_1C706BC10()
{
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  *(v4 + 576) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C706BD14()
{
  v1 = *(v0 + 280);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E28);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1C6FD7FC8(v1, &qword_1EC214E08);
  }

  else
  {
    v39 = *(v0 + 552);
    v38 = *(v0 + 536);
    v37 = *(v0 + 600);
    v36 = *(v0 + 520);
    v35 = *(v0 + 512);
    v46 = *(v0 + 488);
    v41 = *(v0 + 472);
    v42 = *(v0 + 480);
    v44 = *(v0 + 416);
    v45 = *(v0 + 424);
    v33 = *(v0 + 408);
    v34 = *(v0 + 392);
    v28 = *(v0 + 376);
    v29 = *(v0 + 368);
    v30 = *(v0 + 360);
    v31 = *(v0 + 384);
    v47 = *(v0 + 344);
    v43 = *(v0 + 336);
    v3 = *(v0 + 328);
    v27 = *(v0 + 320);
    v4 = *(v0 + 304);
    v5 = *(v0 + 312);
    v7 = *(v0 + 288);
    v6 = *(v0 + 296);
    v32 = *(v0 + 232);
    v40 = *(v0 + 200);
    v25 = *(v7 + 48);
    v26 = *(v2 + 48);
    v8 = *(v43 + 32);
    v8(v6, v1, v3);
    v9 = *(v5 + 32);
    v9(v6 + v25, v1 + v26, v4);
    v10 = *(v7 + 48);
    v8(v47, v6, v3);
    v9(v27, v6 + v10, v4);
    sub_1C754EEBC();
    (*(v29 + 8))(v31, v30);
    (*(v29 + 32))(v31, v28, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E30);
    sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C755BAB0;
    *(inited + 32) = 0xD00000000000004FLL;
    *(inited + 40) = 0x80000001C75973D0;
    v36(v33, v32, v35);
    v38(v33, v37, v34);
    *(inited + 72) = v35;
    __swift_allocate_boxed_opaque_existential_0((inited + 48));
    sub_1C754EBEC();
    v39(v33, v34);
    sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E40);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_1C755BAB0;
    strcpy((v12 + 32), "promptTemplate");
    *(v12 + 47) = -18;
    v13 = sub_1C754FA7C();
    *(v12 + 72) = v13;
    *(v12 + 80) = sub_1C706CBD4(&qword_1EDD06CB0, MEMORY[0x1E69A14E8]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v12 + 48));
    (*(*(v13 - 8) + 16))(boxed_opaque_existential_0, v40, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E48);
    sub_1C75504DC();
    sub_1C754EEAC();

    (*(v5 + 8))(v27, v4);
    (*(v43 + 8))(v47, v3);
    v46(v42, v44);
    (*(v45 + 32))(v42, v41, v44);
  }

  v15 = *(v0 + 488);
  v16 = *(v0 + 472);
  v17 = *(v0 + 416);
  v18 = *(v0 + 240);
  sub_1C755039C();
  *(v0 + 192) = v18;
  sub_1C75503CC();
  v15(v16, v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  v20 = swift_task_alloc();
  *(v0 + 584) = v20;
  v21 = sub_1C706CBD4(&qword_1EDD0CB38, MEMORY[0x1E69DA470]);
  v22 = sub_1C6FB5A18();
  *v20 = v0;
  v20[1] = sub_1C706C2F4;
  v23 = *(v0 + 256);

  return MEMORY[0x1EEE0A3A0](v0 + 184, v19, v19, v23, v19, v21, v22);
}

uint64_t sub_1C706C2F4()
{
  v2 = *v1;
  *(*v1 + 592) = v0;

  (*(v2[33] + 8))(v2[34], v2[32]);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C706C458()
{
  v1 = v0[61];
  v2 = v0[60];
  v3 = v0[52];
  (*(v0[46] + 8))(v0[48], v0[45]);
  v1(v2, v3);
  v4 = v0[23];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1C706C5C0()
{
  v3 = OUTLINED_FUNCTION_83();
  v4(v3);
  v2(v1, v0);
  OUTLINED_FUNCTION_59_0();

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1C706C6D4()
{
  v3 = OUTLINED_FUNCTION_83();
  v4(v3);
  v2(v1, v0);
  OUTLINED_FUNCTION_59_0();

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1C706C7E8()
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

uint64_t sub_1C706C9A0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1C706CA78;

  return sub_1C706B114(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_1C706CA78()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C706CB5C(uint64_t a1)
{
  v2 = type metadata accessor for LLMConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C706CBD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t (*sub_1C706CC1C(uint64_t (*result)(_BYTE *), uint64_t a2, uint64_t a3))(_BYTE *)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  v9 = 32;
  v20 = result;
  v21 = a2;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_14;
    }

    if (v6 >= *(a3 + 16))
    {
      break;
    }

    memcpy(__dst, (a3 + v9), sizeof(__dst));
    memcpy(v24, (a3 + v9), 0x78uLL);
    sub_1C6FCA6E4(__dst, __src);
    v10 = v5(v24);
    if (v3)
    {
      OUTLINED_FUNCTION_257_0(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21, __src[0]);
      sub_1C6FDD548(__src);

LABEL_14:

      return v8;
    }

    if (v10)
    {
      OUTLINED_FUNCTION_257_0(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21, __src[0]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_99();
        sub_1C716D7D8();
        v8 = v25;
      }

      v19 = *(v8 + 16);
      if (v19 >= *(v8 + 24) >> 1)
      {
        sub_1C716D7D8();
        v8 = v25;
      }

      *(v8 + 16) = v19 + 1;
      result = memcpy((v8 + 120 * v19 + 32), __src, 0x78uLL);
      v5 = v20;
    }

    else
    {
      OUTLINED_FUNCTION_257_0(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21, __src[0]);
      result = sub_1C6FDD548(__src);
    }

    v9 += 120;
    ++v6;
  }

  __break(1u);
  return result;
}

void sub_1C706CDA4(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Hastings.Asset(0);
  v7 = OUTLINED_FUNCTION_18(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_209_0();
  v9 = 0;
  v10 = *(a3 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v10 == v9)
    {

      return;
    }

    if (v9 >= *(a3 + 16))
    {
      break;
    }

    sub_1C7080BB8();
    v11 = a1(v4);
    if (v3)
    {
      sub_1C7080E04();

      return;
    }

    if (v11)
    {
      sub_1C7080C2C();
      v12 = v19;
      v22 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = OUTLINED_FUNCTION_99();
        sub_1C716E298(v13, v14, v15);
        v12 = v19;
      }

      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v20 = v17 + 1;
        sub_1C716E298(v16 > 1, v17 + 1, 1);
        v18 = v20;
        v12 = v22;
      }

      ++v9;
      *(v12 + 16) = v18;
      v19 = v12;
      sub_1C7080C2C();
    }

    else
    {
      sub_1C7080E04();
      ++v9;
    }
  }

  __break(1u);
}

void sub_1C706D018(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  v13 = v7;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_13;
    }

    if (v6 >= *(a3 + 16))
    {
      break;
    }

    v15 = *(a3 + v6 + 32);
    v9 = v5(&v15);
    if (v3)
    {

LABEL_13:

      return;
    }

    if (v9)
    {
      v10 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_99();
        sub_1C716EBB0();
        v8 = v16;
      }

      v12 = *(v8 + 16);
      if (v12 >= *(v8 + 24) >> 1)
      {
        sub_1C716EBB0();
        v8 = v16;
      }

      *(v8 + 16) = v12 + 1;
      *(v8 + v12 + 32) = v10;
      v7 = v13;
      v5 = a1;
    }

    ++v6;
  }

  __break(1u);
}

void sub_1C706D1DC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_300();
  v1 = type metadata accessor for Hastings.Feature();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_206_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_29_8();
  MEMORY[0x1EEE9AC00](v4);
  v5 = *(v0 + 16);
  v6 = sub_1C707E638(&qword_1EC216778, type metadata accessor for Hastings.Feature);
  v7 = 0;
  MEMORY[0x1CCA5D4D0](v5, v1, v6);
  OUTLINED_FUNCTION_11();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  if ((v9 & v8) != 0)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v12)
    {

      OUTLINED_FUNCTION_25_0();
      return;
    }

    v10 = *(v0 + 64 + 8 * v13);
    ++v7;
    if (v10)
    {
      v7 = v13;
      do
      {
LABEL_7:
        v10 &= v10 - 1;
        sub_1C7080BB8();
        sub_1C7080C2C();
        OUTLINED_FUNCTION_103();
        sub_1C70F0B34();
        sub_1C7080E04();
      }

      while (v10);
      continue;
    }
  }

  __break(1u);
}

void sub_1C706D4E4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_300();
  v3 = sub_1C754E07C();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_206_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_291_0();
  sub_1C707E638(&qword_1EC215FD8, MEMORY[0x1E6969610]);
  v8 = OUTLINED_FUNCTION_81_6();
  MEMORY[0x1CCA5D4D0](v8, v3);
  v9 = *(v0 + 16);
  if (v9)
  {
    v10 = *(v5 + 16);
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_268_0();
    do
    {
      v11 = OUTLINED_FUNCTION_296_0();
      v10(v11);
      OUTLINED_FUNCTION_103();
      sub_1C70F1248();
      v12 = OUTLINED_FUNCTION_154();
      v13(v12);
      v1 += v2;
      --v9;
    }

    while (v9);
  }

  else
  {
    OUTLINED_FUNCTION_24_2();
  }

  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C706D644(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for PHSearchEntityCategoryType(0);
  v4 = v3;
  v5 = sub_1C707E638(&qword_1EDD06908, type metadata accessor for PHSearchEntityCategoryType);
  v6 = MEMORY[0x1CCA5D4D0](v2, v4, v5);
  v12 = v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 32;
    do
    {
      sub_1C70F1528(&v11, *(a1 + v8));
      v8 += 8;
      --v7;
    }

    while (v7);

    return v12;
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

void sub_1C706D714()
{
  OUTLINED_FUNCTION_72_4();
  v4 = sub_1C7080600();
  v5 = 0;
  v9 = MEMORY[0x1CCA5D4D0](v1, &type metadata for StoryMusicCurationSong, v4);
  OUTLINED_FUNCTION_167_1();
  while (1)
  {
    if (v2 == v5)
    {

      return;
    }

    OUTLINED_FUNCTION_96_4();
    if (v6)
    {
      break;
    }

    memcpy(__dst, (v0 + v3), sizeof(__dst));
    ++v5;
    sub_1C7080654(__dst, v8);
    sub_1C70F1A9C();
    memcpy(v8, __src, sizeof(v8));
    sub_1C70806B0(v8);
    v3 += 192;
  }

  __break(1u);
}

void sub_1C706D940()
{
  OUTLINED_FUNCTION_72_4();
  v3 = sub_1C7027E0C();
  v40 = MEMORY[0x1CCA5D4D0](v0, &type metadata for PersonExtendedToken, v3);
  OUTLINED_FUNCTION_167_1();
  while (1)
  {
    if (!v1)
    {

      return;
    }

    OUTLINED_FUNCTION_96_4();
    if (v4)
    {
      break;
    }

    v5 = OUTLINED_FUNCTION_267_0();
    memcpy(v5, v6, 0x41uLL);
    v7 = OUTLINED_FUNCTION_120_4();
    v9 = sub_1C7025F3C(v7, v8);
    v17 = OUTLINED_FUNCTION_122_3(v9, v10, v11, v12, v13, v14, v15, v16, v29);
    v19 = sub_1C70F3F1C(v17, v18);
    v27 = OUTLINED_FUNCTION_266_0(v19, v20, v21, v22, v23, v24, v25, v26, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39[0]);
    memcpy(v27, v28, 0x41uLL);
    sub_1C7025F74(v39);
    v2 += 72;
  }

  __break(1u);
}

void sub_1C706D9F4()
{
  OUTLINED_FUNCTION_72_4();
  v3 = sub_1C7027EF8();
  v40 = MEMORY[0x1CCA5D4D0](v0, &type metadata for PetExtendedToken, v3);
  OUTLINED_FUNCTION_167_1();
  while (1)
  {
    if (!v1)
    {

      return;
    }

    OUTLINED_FUNCTION_96_4();
    if (v4)
    {
      break;
    }

    v5 = OUTLINED_FUNCTION_267_0();
    memcpy(v5, v6, 0x42uLL);
    v7 = OUTLINED_FUNCTION_120_4();
    v9 = sub_1C7025FF8(v7, v8);
    v17 = OUTLINED_FUNCTION_122_3(v9, v10, v11, v12, v13, v14, v15, v16, v29);
    v19 = sub_1C70F3DC8(v17, v18);
    v27 = OUTLINED_FUNCTION_266_0(v19, v20, v21, v22, v23, v24, v25, v26, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39[0]);
    memcpy(v27, v28, 0x42uLL);
    sub_1C7026030(v39);
    v2 += 72;
  }

  __break(1u);
}

uint64_t sub_1C706DAA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1C7027FE4();
  result = MEMORY[0x1CCA5D4D0](v2, &type metadata for LocationExtendedToken, v3);
  v5 = 0;
  v37 = result;
  v6 = *(a1 + 16);
  for (i = 32; ; i += 56)
  {
    if (v6 == v5)
    {

      return v37;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v8 = OUTLINED_FUNCTION_264_0();
    v39 = v9;
    v40 = v8;
    v41 = *(v10 + 48);
    ++v5;
    v11 = sub_1C70260B4(v38, v35);
    v19 = OUTLINED_FUNCTION_276_0(v11, v12, v13, v14, v15, v16, v17, v18, v29, v31);
    v21 = sub_1C70F3B88(v19, v20);
    result = OUTLINED_FUNCTION_173_0(v21, v22, v23, v24, v25, v26, v27, v28, v30, v31, v32, v33, v34, v35[0], v35[1], v35[2], v36);
  }

  __break(1u);
  return result;
}

void sub_1C706DB74()
{
  OUTLINED_FUNCTION_72_4();
  v3 = sub_1C70280D0();
  MEMORY[0x1CCA5D4D0](v0, &type metadata for GenericLocationExtendedToken, v3);
  OUTLINED_FUNCTION_167_1();
  while (1)
  {
    if (!v1)
    {

      return;
    }

    OUTLINED_FUNCTION_96_4();
    if (v4)
    {
      break;
    }

    OUTLINED_FUNCTION_22_15();
    v7 = sub_1C70805A4(v5, v6);
    v15 = OUTLINED_FUNCTION_123_4(v7, v8, v9, v10, v11, v12, v13, v14, v17);
    sub_1C70F3990(v15, v16);
    OUTLINED_FUNCTION_318_0();

    v2 += 40;
  }

  __break(1u);
}

uint64_t sub_1C706DC14()
{
  v1 = OUTLINED_FUNCTION_300();
  type metadata accessor for TimeExtendedToken(v1);
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_212_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_290_0();
  sub_1C707E638(qword_1EDD0A7E0, type metadata accessor for TimeExtendedToken);
  v6 = OUTLINED_FUNCTION_117_0();
  v7 = MEMORY[0x1CCA5D4D0](v6);
  v14 = v7;
  v8 = *(v0 + 16);
  if (v8)
  {
    OUTLINED_FUNCTION_191();
    v10 = v0 + v9;
    v11 = *(v3 + 72);
    do
    {
      OUTLINED_FUNCTION_154();
      sub_1C7080BB8();
      OUTLINED_FUNCTION_211_0();
      sub_1C70F3190();
      OUTLINED_FUNCTION_115_4();
      v10 += v11;
      --v8;
    }

    while (v8);

    return v14;
  }

  else
  {
    v12 = v7;
  }

  return v12;
}

uint64_t sub_1C706DD74()
{
  OUTLINED_FUNCTION_72_4();
  v2 = sub_1C7028308();
  result = MEMORY[0x1CCA5D4D0](v1, &type metadata for PartOfDayExtendedToken, v2);
  v20 = result;
  v11 = *(v0 + 16);
  for (i = 32; ; i += 56)
  {
    if (!v11)
    {

      return v20;
    }

    if (!*(v0 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_145_1(result, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
    sub_1C70F2CAC();
  }

  __break(1u);
  return result;
}

void sub_1C706DE30()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = type metadata accessor for PartOfWeekExtendedToken(0);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_78();
  v62 = v8 - v9;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v10);
  v61 = v52 - v11;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v12);
  v56 = v52 - v13;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_209_0();
  sub_1C707E638(&qword_1EDD09800, type metadata accessor for PartOfWeekExtendedToken);
  v15 = OUTLINED_FUNCTION_81_6();
  v59 = v4;
  v16 = MEMORY[0x1CCA5D4D0](v15, v4);
  v53 = *(v3 + 16);
  if (!v53)
  {
    goto LABEL_50;
  }

  v17 = 0;
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_294_0(v3 + v18);
  *(v19 - 256) = v3;
  v52[0] = v6;
  while (1)
  {
    if (v17 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_52;
    }

    v20 = *(v6 + 72);
    v54 = v17;
    OUTLINED_FUNCTION_3_20();
    sub_1C7080BB8();
    sub_1C7551F3C();
    OUTLINED_FUNCTION_18_12();
    v21 = *v1;
    v22 = v1[1];
    v23 = OUTLINED_FUNCTION_296_0();
    MEMORY[0x1CCA5CD70](v23);
    OUTLINED_FUNCTION_192_0();

    sub_1C7551FAC();
    v24 = v16 + 56;
    OUTLINED_FUNCTION_40_12();
    v27 = *(v16 + 56 + v26) >> v0;
    v60 = v20;
    if ((v27 & 1) == 0)
    {
      break;
    }

    v28 = ~v25;
    v57 = v16;
    while (1)
    {
      OUTLINED_FUNCTION_3_20();
      v29 = v62;
      sub_1C7080BB8();
      v30 = *v29 == v21 && v29[1] == v22;
      if (!v30 && (sub_1C7551DBC() & 1) == 0)
      {
        goto LABEL_20;
      }

      if ((*(v62 + 24) & 1) == 0)
      {
        break;
      }

      if (*(v1 + 24))
      {
        goto LABEL_13;
      }

LABEL_20:
      OUTLINED_FUNCTION_1_28();
      sub_1C7080E04();
LABEL_21:
      v0 = (v0 + 1) & v28;
      OUTLINED_FUNCTION_187_0();
      if (((*(v24 + v35) >> v0) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    OUTLINED_FUNCTION_134_2();
    if (v34)
    {
      goto LABEL_20;
    }

LABEL_13:
    OUTLINED_FUNCTION_220_0();
    OUTLINED_FUNCTION_14_16();
    sub_1C707E638(&qword_1EC2147B8, v31);
    OUTLINED_FUNCTION_218_0();
    OUTLINED_FUNCTION_315_0();
    v1 = v64;
    OUTLINED_FUNCTION_284();
    if (!v30 || v1 != v24)
    {
      v33 = OUTLINED_FUNCTION_13_6();

      OUTLINED_FUNCTION_1_28();
      sub_1C7080E04();
      OUTLINED_FUNCTION_235_1();
      if (v33)
      {
        goto LABEL_47;
      }

      goto LABEL_21;
    }

    OUTLINED_FUNCTION_1_28();
    sub_1C7080E04();
    v16 = v57;
    v1 = v58;
LABEL_47:
    v17 = v54 + 1;
    OUTLINED_FUNCTION_1_28();
    sub_1C7080E04();
    v3 = v52[1];
    v6 = v52[0];
    if (v17 == v53)
    {
LABEL_50:

      OUTLINED_FUNCTION_25_0();
      return;
    }
  }

LABEL_22:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_3_20();
  v37 = v56;
  sub_1C7080BB8();
  v63 = v16;
  if (*(v16 + 24) <= *(v16 + 16))
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      sub_1C72E97B0();
    }

    else
    {
      sub_1C72F7BDC();
    }

    v38 = v63;
    sub_1C7551F3C();
    OUTLINED_FUNCTION_18_12();
    OUTLINED_FUNCTION_313_0();
    OUTLINED_FUNCTION_192_0();

    sub_1C7551FAC();
    OUTLINED_FUNCTION_40_12();
    if (((*(v38 + 56 + v40) >> v0) & 1) == 0)
    {
      goto LABEL_45;
    }

    v41 = ~v39;
    v57 = v38 + 56;
    v55 = ~v39;
    while (1)
    {
      OUTLINED_FUNCTION_3_20();
      v42 = v61;
      sub_1C7080BB8();
      v43 = *v42 == v16 && v42[1] == v21;
      if (!v43 && (sub_1C7551DBC() & 1) == 0)
      {
        break;
      }

      if (v61[24])
      {
        if (!*(v37 + 24))
        {
          break;
        }
      }

      else
      {
        OUTLINED_FUNCTION_134_2();
        if (v44)
        {
          break;
        }
      }

      OUTLINED_FUNCTION_216_0();
      OUTLINED_FUNCTION_14_16();
      sub_1C707E638(&qword_1EC2147B8, v45);
      OUTLINED_FUNCTION_219_0();
      OUTLINED_FUNCTION_314_0();
      v37 = v64;
      OUTLINED_FUNCTION_284();
      if (v30 && v37 == v42)
      {
        goto LABEL_53;
      }

      v47 = OUTLINED_FUNCTION_13_6();

      OUTLINED_FUNCTION_1_28();
      sub_1C7080E04();
      OUTLINED_FUNCTION_185_0();
      if (v47)
      {
        goto LABEL_54;
      }

LABEL_44:
      v0 = (v0 + 1) & v41;
      OUTLINED_FUNCTION_187_0();
      if (((*(v38 + 56 + v48) >> v0) & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    OUTLINED_FUNCTION_1_28();
    sub_1C7080E04();
    goto LABEL_44;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C72F3988();
  }

LABEL_45:
  OUTLINED_FUNCTION_73_4();
  v49 = *(v16 + 16);
  v50 = __OFADD__(v49, 1);
  v51 = v49 + 1;
  if (!v50)
  {
    *(v16 + 16) = v51;
    v1 = v58;
    goto LABEL_47;
  }

LABEL_52:
  __break(1u);
LABEL_53:

  OUTLINED_FUNCTION_1_28();
  sub_1C7080E04();
LABEL_54:
  sub_1C7551E3C();
  __break(1u);
}

void sub_1C706E37C()
{
  OUTLINED_FUNCTION_72_4();
  v3 = sub_1C70284E8();
  MEMORY[0x1CCA5D4D0](v0, &type metadata for TripExtendedToken, v3);
  OUTLINED_FUNCTION_167_1();
  while (1)
  {
    if (!v1)
    {

      return;
    }

    OUTLINED_FUNCTION_96_4();
    if (v4)
    {
      break;
    }

    v5 = OUTLINED_FUNCTION_43_7();
    v7 = sub_1C7026698(v5, v6);
    v15 = OUTLINED_FUNCTION_203_0(v7, v8, v9, v10, v11, v12, v13, v14, v26);
    v17 = sub_1C70F2A94(v15, v16);
    OUTLINED_FUNCTION_87_6(v17, v18, v19, v20, v21, v22, v23, v24, v27, v28, v29, v30, v31);
    sub_1C70266D0(v25);
    v2 += 64;
  }

  __break(1u);
}

void sub_1C706E418()
{
  OUTLINED_FUNCTION_72_4();
  v3 = sub_1C7028680();
  MEMORY[0x1CCA5D4D0](v0, &type metadata for EventExtendedToken, v3);
  OUTLINED_FUNCTION_167_1();
  while (1)
  {
    if (!v1)
    {

      return;
    }

    OUTLINED_FUNCTION_96_4();
    if (v4)
    {
      break;
    }

    OUTLINED_FUNCTION_22_15();
    v7 = sub_1C70804EC(v5, v6);
    v15 = OUTLINED_FUNCTION_123_4(v7, v8, v9, v10, v11, v12, v13, v14, v17);
    sub_1C70F26F0(v15, v16);
    OUTLINED_FUNCTION_318_0();

    v2 += 40;
  }

  __break(1u);
}

uint64_t sub_1C706E520(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_280_0(a1);
  v4 = MEMORY[0x1CCA5D4D0](v3, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v17 = v4;
  v11 = *(v1 + 16);
  if (v11)
  {
    v12 = 32;
    do
    {
      v13 = OUTLINED_FUNCTION_124_4(v4, *(v1 + v12), v5, v6, v7, v8, v9, v10, v16);
      v4 = sub_1C70F428C(v13, v14);
      v12 += 8;
      --v11;
    }

    while (v11);

    return v17;
  }

  else
  {
    OUTLINED_FUNCTION_24_2();
  }

  return v2;
}

uint64_t sub_1C706E610(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = __OFSUB__(a2, a1);
  result = a2 - a1;
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = MEMORY[0x1CCA5D4D0](result, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v15 = result;
  if (v2 == a2)
  {
    return result;
  }

  if (a2 < v2)
  {
    goto LABEL_9;
  }

  if (v2 >= a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  do
  {
    v13 = OUTLINED_FUNCTION_124_4(result, v6, v7, v8, v9, v10, v11, v12, v14);
    result = sub_1C70F428C(v13, v2++);
  }

  while (a2 != v2);
  return v15;
}

void sub_1C706E6DC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_300();
  v3 = sub_1C754F0FC();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_206_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_291_0();
  sub_1C707E638(&qword_1EC2167B8, MEMORY[0x1E69C1790]);
  v8 = OUTLINED_FUNCTION_81_6();
  MEMORY[0x1CCA5D4D0](v8, v3);
  v9 = *(v0 + 16);
  if (v9)
  {
    v10 = *(v5 + 16);
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_268_0();
    do
    {
      v11 = OUTLINED_FUNCTION_296_0();
      v10(v11);
      OUTLINED_FUNCTION_103();
      sub_1C70F5514();
      v12 = OUTLINED_FUNCTION_154();
      v13(v12);
      v1 += v2;
      --v9;
    }

    while (v9);
  }

  else
  {
    OUTLINED_FUNCTION_24_2();
  }

  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C706E8F0()
{
  v1 = OUTLINED_FUNCTION_300();
  type metadata accessor for Hastings.Asset(v1);
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_212_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_290_0();
  sub_1C707E638(&qword_1EC216190, type metadata accessor for Hastings.Asset);
  v6 = OUTLINED_FUNCTION_117_0();
  v7 = MEMORY[0x1CCA5D4D0](v6);
  v14 = v7;
  v8 = *(v0 + 16);
  if (v8)
  {
    OUTLINED_FUNCTION_191();
    v10 = v0 + v9;
    v11 = *(v3 + 72);
    do
    {
      OUTLINED_FUNCTION_154();
      sub_1C7080BB8();
      OUTLINED_FUNCTION_211_0();
      sub_1C70F0914();
      sub_1C7080E04();
      v10 += v11;
      --v8;
    }

    while (v8);

    return v14;
  }

  else
  {
    v12 = v7;
  }

  return v12;
}

void sub_1C706EA68()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = sub_1C754D8BC();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_29_8();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v24 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - v11;
  sub_1C707E638(&qword_1EDD0CBF8, MEMORY[0x1E6968130]);
  v13 = OUTLINED_FUNCTION_81_6();
  v14 = MEMORY[0x1CCA5D4D0](v13, v3);
  v15 = 0;
  v25 = v2;
  v26 = v14;
  v16 = v2 + 64;
  OUTLINED_FUNCTION_11();
  v19 = v18 & v17;
  v21 = (v20 + 63) >> 6;
  v24[2] = v5 + 32;
  v24[3] = v5 + 16;
  v24[1] = v5 + 8;
  if ((v18 & v17) != 0)
  {
    do
    {
      v22 = v15;
LABEL_7:
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v5 + 16))(v12, *(v25 + 56) + *(v5 + 72) * (v23 | (v22 << 6)), v3);
      (*(v5 + 32))(v0, v12, v3);
      OUTLINED_FUNCTION_117_0();
      sub_1C70F5684();
      (*(v5 + 8))(v9, v3);
    }

    while (v19);
  }

  while (1)
  {
    v22 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v22 >= v21)
    {

      OUTLINED_FUNCTION_25_0();
      return;
    }

    v19 = *(v16 + 8 * v22);
    ++v15;
    if (v19)
    {
      v15 = v22;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1C706EC80()
{
  OUTLINED_FUNCTION_72_4();
  v3 = sub_1C7080298();
  MEMORY[0x1CCA5D4D0](v0, &type metadata for GroundedLocation, v3);
  OUTLINED_FUNCTION_167_1();
  while (1)
  {
    if (!v1)
    {

      return;
    }

    OUTLINED_FUNCTION_96_4();
    if (v4)
    {
      break;
    }

    v5 = OUTLINED_FUNCTION_43_7();
    v7 = sub_1C70802EC(v5, v6);
    v15 = OUTLINED_FUNCTION_203_0(v7, v8, v9, v10, v11, v12, v13, v14, v26);
    v17 = sub_1C70F4DB8(v15, v16);
    OUTLINED_FUNCTION_87_6(v17, v18, v19, v20, v21, v22, v23, v24, v27, v28, v29, v30, v31);
    sub_1C7080348(v25);
    v2 += 64;
  }

  __break(1u);
}

uint64_t sub_1C706ED1C()
{
  OUTLINED_FUNCTION_72_4();
  type metadata accessor for PHPersonAgeType(0);
  v3 = v2;
  sub_1C707E638(&qword_1EC216788, type metadata accessor for PHPersonAgeType);
  v4 = OUTLINED_FUNCTION_81_6();
  v9 = MEMORY[0x1CCA5D4D0](v4, v3);
  v5 = *(v0 + 16);
  if (v5)
  {
    v6 = 32;
    do
    {
      sub_1C70F57F4(v8, *(v0 + v6));
      v6 += 2;
      --v5;
    }

    while (v5);

    return v9;
  }

  else
  {
    OUTLINED_FUNCTION_24_2();
  }

  return v1;
}

void sub_1C706F164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_23_12();
  a20 = v21;
  a21 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = *(v27 + 16);
  v31 = v30();
  a13 = MEMORY[0x1CCA5D4D0](v29, v26, v31);
  v32 = *(v28 + 16);
  if (v32)
  {
    v33 = 32;
    do
    {
      v24(&a12, *(v28 + v33++));
      --v32;
    }

    while (v32);
  }

  else
  {
    OUTLINED_FUNCTION_24_2();
  }

  OUTLINED_FUNCTION_22_14();
}

uint64_t sub_1C706F768(uint64_t a1)
{
  sub_1C6FB6304();
  v2 = type metadata accessor for MusicKeywordCompletion();
  sub_1C707E638(&qword_1EDD09B10, type metadata accessor for MusicKeywordCompletion);
  v3 = OUTLINED_FUNCTION_81_6();
  MEMORY[0x1CCA5D4D0](v3, v2);
  OUTLINED_FUNCTION_182_0();
  result = sub_1C6FB6304();
  v5 = result;
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return v25;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v22 = OUTLINED_FUNCTION_295();
      result = MEMORY[0x1CCA5DDD0](v22);
      v7 = result;
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v15 = OUTLINED_FUNCTION_124_4(result, v8, v9, v10, v11, v12, v13, v14, v23);
    sub_1C70F6268(v15, v7, v16, v17, v18, v19, v20, v21, v24);
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1C706F948()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_52_3(v1);
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_297_0();
  OUTLINED_FUNCTION_142();

  return SafetyController.validatedUserPromptBeforeQU(userPrompt:includeCriticalSafety:useCaseIdentifier:eventRecorder:)();
}

uint64_t SafetyController.validatedUserPromptBeforeQU(userPrompt:includeCriticalSafety:useCaseIdentifier:eventRecorder:)()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  *(v1 + 32) = v4;
  *(v1 + 40) = v0;
  *(v1 + 178) = v5;
  *(v1 + 16) = v6;
  *(v1 + 24) = v7;
  v8 = type metadata accessor for SafetyError(0);
  *(v1 + 48) = v8;
  OUTLINED_FUNCTION_76(v8);
  *(v1 + 56) = OUTLINED_FUNCTION_77();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216748);
  OUTLINED_FUNCTION_76(v9);
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  v10 = sub_1C754F38C();
  *(v1 + 96) = v10;
  OUTLINED_FUNCTION_18(v10);
  *(v1 + 104) = v11;
  *(v1 + 112) = OUTLINED_FUNCTION_77();
  *(v1 + 179) = *v3;
  v12 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1C706FB30()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 179);
  OUTLINED_FUNCTION_25_9(*(v0 + 32));
  OUTLINED_FUNCTION_132();
  sub_1C707DB58(&unk_1F469DFA8);
  *(v0 + 120) = v2;
  *(v0 + 176) = v1;
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_1C706FC28;
  OUTLINED_FUNCTION_61_3(*(v0 + 16));
  OUTLINED_FUNCTION_244_0();

  return static TextSanitizer.validateCharacterCategories(_:unsupportedCategories:storyGenerationCache:useCaseIdentifier:)(v4, v5, v6, v7, v8);
}

uint64_t sub_1C706FC28()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  v3[17] = v5;
  v3[18] = v0;

  if (v0)
  {
    v6 = v3[5];

    v7 = sub_1C7070508;
  }

  else
  {
    v6 = v3[5];

    v7 = sub_1C706FD44;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1C706FD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_111_0();
  v19 = *(v18 + 178);
  *(v18 + 152) = *(*(v18 + 136) + 16);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  if (v19 == 1)
  {
    if (qword_1EDD0AF98 != -1)
    {
      swift_once();
    }

    v24 = *(v18 + 179);
    v25 = type metadata accessor for TextSanitizer();
    __swift_project_value_buffer(v25, &unk_1EDD28C28);
    *(v18 + 177) = v24;
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v18 + 160) = v26;
    *v26 = v27;
    v26[1] = sub_1C7070108;
    OUTLINED_FUNCTION_297_0();
    OUTLINED_FUNCTION_94_1();

    return SafetyController.safety(of:with:useCaseIdentifier:)();
  }

  v30 = *(v18 + 152);
  v31 = *(v18 + 72);
  sub_1C6FD7F70();
  OUTLINED_FUNCTION_112(v31);
  if (v32)
  {
    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = OUTLINED_FUNCTION_49_3();
  sub_1C6FD7FC8(v34, v35);
  v73 = (v30 != 0) | (v33 << 16);
  LOBYTE(a14) = 1;
  sub_1C6FD1EE8();
  v36 = *(v18 + 88);
  if (v30)
  {
    OUTLINED_FUNCTION_0_30();
    sub_1C707E638(v37, v38);
    v39 = OUTLINED_FUNCTION_66_8();
    OUTLINED_FUNCTION_133_3(v39, v40);
    v72 = v33;
    swift_willThrow();
LABEL_17:
    sub_1C6FD7FC8(v36, &qword_1EC216748);
    OUTLINED_FUNCTION_129_4();
    v70 = *(v18 + 64);
    v71 = *(v18 + 56);
    OUTLINED_FUNCTION_49_7();
    v60 = OUTLINED_FUNCTION_45_1();
    v61(v60);

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_94_1();

    return v63(v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, 0, a14, a15, a16, a17, a18);
  }

  v41 = *(v18 + 64);
  v42 = *(v18 + 48);

  OUTLINED_FUNCTION_66_2();
  sub_1C6FD7F70();
  OUTLINED_FUNCTION_48_1(v41);
  if (!v32)
  {
    v36 = *(v18 + 88);
    OUTLINED_FUNCTION_8_15();
    sub_1C7080C2C();
    OUTLINED_FUNCTION_0_30();
    sub_1C707E638(v57, v58);
    v59 = OUTLINED_FUNCTION_86_0();
    OUTLINED_FUNCTION_21_16();
    v72 = v59;
    swift_willThrow();
    OUTLINED_FUNCTION_2_17();
    sub_1C7080E04();
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_168_1();
  OUTLINED_FUNCTION_180_0();
  sub_1C6FD7FC8(v43, v44);
  v45 = OUTLINED_FUNCTION_0_11();
  sub_1C6FD7FC8(v45, v46);
  v47 = OUTLINED_FUNCTION_66_2();
  __swift_project_boxed_opaque_existential_1(v47, v48);
  sub_1C75504FC();
  OUTLINED_FUNCTION_180_0();
  sub_1C754F1AC();
  MEMORY[8](v42, &unk_1C7565458);

  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_94_1();

  return v52(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, v73, 0, a14, a15, a16, a17, a18);
}

uint64_t sub_1C7070108()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 168) = v0;

  if (v0)
  {
    v7 = *(v3 + 40);

    v8 = sub_1C70705BC;
    v9 = v7;
  }

  else
  {
    v9 = *(v3 + 40);
    v8 = sub_1C7070218;
  }

  return MEMORY[0x1EEE6DFA0](v8, v9, 0);
}

uint64_t sub_1C7070218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_111_0();
  v19 = OUTLINED_FUNCTION_43_2();
  sub_1C6FD7FC8(v19, v20);
  v21 = OUTLINED_FUNCTION_90();
  sub_1C707DD50(v21, v22);
  v23 = v18[19];
  v24 = v18[9];
  sub_1C6FD7F70();
  OUTLINED_FUNCTION_112(v24);
  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  sub_1C6FD7FC8(v24, &qword_1EC216748);
  v65 = (v23 != 0) | (v26 << 16) | 0x100;
  LOBYTE(a14) = 1;
  sub_1C6FD1EE8();
  v27 = v18[11];
  if (v23)
  {
    OUTLINED_FUNCTION_0_30();
    sub_1C707E638(v28, v29);
    v30 = OUTLINED_FUNCTION_66_8();
    OUTLINED_FUNCTION_133_3(v30, v31);
    v64 = v26;
    swift_willThrow();
LABEL_11:
    sub_1C6FD7FC8(v27, &qword_1EC216748);
    OUTLINED_FUNCTION_129_4();
    v62 = v18[8];
    v63 = v18[7];
    OUTLINED_FUNCTION_49_7();
    v52 = OUTLINED_FUNCTION_45_1();
    v53(v52);

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_94_1();

    return v55(v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, 0, a14, a15, a16, a17, a18);
  }

  v32 = v18[8];
  v33 = v18[6];

  OUTLINED_FUNCTION_66_2();
  sub_1C6FD7F70();
  OUTLINED_FUNCTION_48_1(v32);
  if (!v25)
  {
    v27 = v18[11];
    OUTLINED_FUNCTION_8_15();
    sub_1C7080C2C();
    OUTLINED_FUNCTION_0_30();
    sub_1C707E638(v49, v50);
    v51 = OUTLINED_FUNCTION_86_0();
    OUTLINED_FUNCTION_21_16();
    v64 = v51;
    swift_willThrow();
    OUTLINED_FUNCTION_2_17();
    sub_1C7080E04();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_168_1();
  OUTLINED_FUNCTION_180_0();
  sub_1C6FD7FC8(v34, v35);
  v36 = OUTLINED_FUNCTION_0_11();
  sub_1C6FD7FC8(v36, v37);
  v38 = OUTLINED_FUNCTION_66_2();
  __swift_project_boxed_opaque_existential_1(v38, v39);
  sub_1C75504FC();
  OUTLINED_FUNCTION_180_0();
  sub_1C754F1AC();
  MEMORY[8](v33, v24);

  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_94_1();

  return v43(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, v65, 0, a14, a15, a16, a17, a18);
}

uint64_t sub_1C7070508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_129_4();
  v27 = *(v14 + 64);
  v28 = *(v14 + 56);
  v29 = v15;
  OUTLINED_FUNCTION_49_7();
  v16 = OUTLINED_FUNCTION_45_1();
  v17(v16);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, v27, v28, v29, a12, a13, a14);
}

uint64_t sub_1C70705BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  sub_1C6FD7FC8(v14[11], &qword_1EC216748);
  OUTLINED_FUNCTION_129_4();
  v27 = v14[8];
  v28 = v14[7];
  v29 = v15;
  OUTLINED_FUNCTION_49_7();
  v16 = OUTLINED_FUNCTION_45_1();
  v17(v16);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, v27, v28, v29, a12, a13, a14);
}

uint64_t sub_1C7070688()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_273_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_52_3(v1);
  v3 = OUTLINED_FUNCTION_48_8();

  return SafetyController.validatedPromptSuggestion(userPrompt:useCaseIdentifier:eventRecorder:)(v3, v4, v5);
}

uint64_t sub_1C7070718()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;

  OUTLINED_FUNCTION_116();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t SafetyController.validatedPromptSuggestion(userPrompt:useCaseIdentifier:eventRecorder:)(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 88) = a3;
  *(v4 + 96) = v3;
  *(v4 + 80) = a1;
  *(v4 + 186) = *a2;
  v5 = OUTLINED_FUNCTION_29_9();
  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C7070838()
{
  sub_1C707DDC0();
  v2 = OUTLINED_FUNCTION_57_3();
  static TextSanitizer.removeCategories(in:categories:)(v2, v3);

  v4 = OUTLINED_FUNCTION_90();
  v6 = sub_1C73BF00C(v4, v5);

  if (v6)
  {
    v7 = *(v0 + 186);
    v8 = [*(v0 + 80) string];
    sub_1C755068C();
    v10 = v9;

    *(v0 + 160) = v10;
    *(v0 + 185) = v7;
    v11 = swift_task_alloc();
    *(v0 + 168) = v11;
    *v11 = v0;
    v11[1] = sub_1C7070D84;
    OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_258_0();

    return SafetyController.validatedUserPromptWithMusicTitleOnly(userPrompt:useCaseIdentifier:eventRecorder:)();
  }

  else
  {
    sub_1C706D644(&unk_1F469E030);
    v14 = OUTLINED_FUNCTION_300_0();
    static TextSanitizer.removeCategories(in:categories:)(v14, v1);
    *(v0 + 104) = v15;
    sub_1C75504FC();
    sub_1C7073880(&unk_1F469E078, v1);
    v16 = OUTLINED_FUNCTION_275_0();
    static TextSanitizer.removeCategories(in:categories:)(v16, v17);
    *(v0 + 112) = v18;
    v19 = *(v0 + 80);

    v20 = sub_1C7073880(&unk_1F469E0A0, v1);
    static TextSanitizer.removeCategories(in:categories:)(v19, v20);
    *(v0 + 120) = v21;
    v22 = *(v0 + 80);

    v23 = sub_1C706D644(&unk_1F469E0D0);
    static TextSanitizer.removeCategories(in:categories:)(v22, v23);
    *(v0 + 128) = v24;
    v25 = *(v0 + 186);
    v26 = *(v0 + 80);

    v27 = [v26 string];
    sub_1C755068C();
    v29 = v28;

    *(v0 + 136) = v29;
    *(v0 + 184) = v25;
    v30 = swift_task_alloc();
    *(v0 + 144) = v30;
    *v30 = v0;
    v30[1] = sub_1C7070B9C;
    OUTLINED_FUNCTION_258_0();

    return sub_1C7076E90(v31, v32, v33, v34, v35, v36, v37, v38);
  }
}

uint64_t sub_1C7070B9C()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v3[2] = v1;
  v3[3] = v5;
  v3[4] = v6;
  v3[5] = v0;
  OUTLINED_FUNCTION_292_0();
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  v3[19] = v0;

  OUTLINED_FUNCTION_244_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C7070D04()
{
  OUTLINED_FUNCTION_42();
  sub_1C6F65BE8(0, &qword_1EDD0CE30);
  OUTLINED_FUNCTION_66_2();
  sub_1C7073450();
  OUTLINED_FUNCTION_116();

  return v0();
}

uint64_t sub_1C7070D84()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v3[6] = v1;
  v3[7] = v5;
  v3[8] = v6;
  v3[9] = v0;
  OUTLINED_FUNCTION_292_0();
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  v3[22] = v0;

  if (v0)
  {
    v9 = v3[12];

    v10 = sub_1C7070F1C;
  }

  else
  {
    v9 = v3[12];

    v10 = sub_1C7070E9C;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1C7070E9C()
{
  OUTLINED_FUNCTION_42();
  sub_1C6F65BE8(0, &qword_1EDD0CE30);
  OUTLINED_FUNCTION_66_2();
  sub_1C7073450();
  OUTLINED_FUNCTION_116();

  return v0();
}

uint64_t sub_1C7070F64()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_299_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_52_3(v1);
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_297_0();
  OUTLINED_FUNCTION_142();

  return SafetyController.validatedUserPrompt(userPrompt:queryTokens:useCaseIdentifier:eventRecorder:)();
}

uint64_t sub_1C7071004()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_47();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;

  OUTLINED_FUNCTION_82_0();
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_0_11();
  }

  return v5(v4);
}

uint64_t SafetyController.validatedUserPrompt(userPrompt:queryTokens:useCaseIdentifier:eventRecorder:)()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  *(v1 + 280) = v4;
  *(v1 + 288) = v0;
  *(v1 + 264) = v5;
  *(v1 + 272) = v6;
  *(v1 + 256) = v7;
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  *(v1 + 296) = TokenCategoryType;
  OUTLINED_FUNCTION_76(TokenCategoryType);
  *(v1 + 304) = swift_task_alloc();
  *(v1 + 312) = swift_task_alloc();
  *(v1 + 320) = swift_task_alloc();
  *(v1 + 328) = swift_task_alloc();
  *(v1 + 336) = swift_task_alloc();
  *(v1 + 344) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216368);
  *(v1 + 352) = v9;
  OUTLINED_FUNCTION_76(v9);
  *(v1 + 360) = OUTLINED_FUNCTION_77();
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  OUTLINED_FUNCTION_18(TokenSuggestion);
  *(v1 + 368) = v11;
  *(v1 + 376) = OUTLINED_FUNCTION_77();
  *(v1 + 450) = *v3;
  v12 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1C707124C()
{
  v104 = v0;
  v2 = *(v0 + 272);
  sub_1C707DEC4();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_0_11();
  static TextSanitizer.removeCategories(in:queryTokens:categories:)(v5, v6, v2, v4);

  v8 = OUTLINED_FUNCTION_90();
  v10 = sub_1C73BF00C(v8, v9);

  if (v10)
  {
    *(v0 + 449) = *(v0 + 450);
    v12 = swift_task_alloc();
    *(v0 + 432) = v12;
    *v12 = v0;
    v12[1] = sub_1C7071E88;
    OUTLINED_FUNCTION_61_3(*(v0 + 256));

    return SafetyController.validatedUserPromptWithMusicTitleOnly(userPrompt:useCaseIdentifier:eventRecorder:)();
  }

  v13 = 0;
  v14 = *(v0 + 272);
  v90 = v14 + 32;
  v15 = MEMORY[0x1E69E7CC0];
  v96 = *(v0 + 352);
  v91 = *(v14 + 16);
LABEL_10:
  v93 = v15;
  while (v13 != v91)
  {
    if (v13 >= v91)
    {
      __break(1u);
LABEL_83:
      __break(1u);
      return result;
    }

    result = memcpy((v0 + 16), (v90 + 120 * v13), 0x78uLL);
    v16 = __OFADD__(v13, 1);
    v17 = v13 + 1;
    if (v16)
    {
      goto LABEL_83;
    }

    v94 = v17;
    v18 = *(v0 + 96);
    v99 = *(v18 + 16);
    v19 = sub_1C6FCA6E4(v0 + 16, v0 + 136);
    v21 = 0;
    while (2)
    {
      if (v99 == v21)
      {
        goto LABEL_70;
      }

      if (v21 >= *(v18 + 16))
      {
        __break(1u);
        goto LABEL_77;
      }

      OUTLINED_FUNCTION_191();
      sub_1C7080BB8();
      if (qword_1EDD0E058 != -1)
      {
        swift_once();
      }

      v1 = *(v0 + 376);
      v22 = *(v0 + 360);
      __swift_project_value_buffer(*(v0 + 296), qword_1EDD0E060);
      v23 = v22 + *(v96 + 48);
      sub_1C7080BB8();
      OUTLINED_FUNCTION_151_1();
      sub_1C7080BB8();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          if (OUTLINED_FUNCTION_179_0() != 1)
          {
            goto LABEL_59;
          }

          goto LABEL_60;
        case 2u:
          v1 = *(v0 + 344);
          OUTLINED_FUNCTION_5_22();
          sub_1C7080BB8();
          v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CC0) + 48);
          OUTLINED_FUNCTION_66_2();
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v34 = *(v0 + 344);
          if (EnumCaseMultiPayload == 2)
          {
            sub_1C6FD7FC8(v23 + v32, &qword_1EC218C50);
            v41 = OUTLINED_FUNCTION_66_2();
            sub_1C6FD7FC8(v41, v42);
            sub_1C6FD7FC8(v1 + v32, &qword_1EC218C50);
            v39 = v34;
            v40 = &qword_1EC218C50;
LABEL_67:
            sub_1C6FD7FC8(v39, v40);
            goto LABEL_68;
          }

          sub_1C6FD7FC8(v1 + v32, &qword_1EC218C50);
          v30 = v34;
          v31 = &qword_1EC218C50;
          goto LABEL_58;
        case 3u:
          if (OUTLINED_FUNCTION_179_0() == 3)
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        case 4u:
          OUTLINED_FUNCTION_5_22();
          sub_1C7080BB8();
          OUTLINED_FUNCTION_66_2();
          v24 = swift_getEnumCaseMultiPayload();
          v1 = *(v0 + 336);
          v25 = sub_1C754F09C();
          OUTLINED_FUNCTION_12();
          v27 = *(v26 + 8);
          if (v24 == 4)
          {
            goto LABEL_62;
          }

          goto LABEL_47;
        case 5u:
          OUTLINED_FUNCTION_5_22();
          sub_1C7080BB8();
          OUTLINED_FUNCTION_66_2();
          v36 = swift_getEnumCaseMultiPayload();
          v1 = *(v0 + 328);
          v25 = sub_1C754F5FC();
          OUTLINED_FUNCTION_12();
          v27 = *(v37 + 8);
          if (v36 == 5)
          {
LABEL_62:
            v27(v23, v25);
            v27(v1, v25);
            goto LABEL_68;
          }

LABEL_47:
          v27(v1, v25);
          goto LABEL_59;
        case 6u:
          if (OUTLINED_FUNCTION_179_0() == 6)
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        case 7u:
          OUTLINED_FUNCTION_5_22();
          sub_1C7080BB8();
          OUTLINED_FUNCTION_66_2();
          v35 = swift_getEnumCaseMultiPayload();
          v1 = *(v0 + 320);
          if (v35 != 7)
          {
            sub_1C7080E04();
LABEL_59:
            v15 = *(v0 + 376);
            sub_1C6FD7FC8(*(v0 + 360), &qword_1EC216368);
            v19 = OUTLINED_FUNCTION_116_4();
            ++v21;
            continue;
          }

          sub_1C7080E04();
LABEL_61:
          sub_1C7080E04();
LABEL_68:
          OUTLINED_FUNCTION_106_1();
          sub_1C7080E04();
          OUTLINED_FUNCTION_116_4();
          memcpy(__dst, (v0 + 16), 0x78uLL);
          v15 = __dst;
          sub_1C72D36F8();
          if (v43 != 2)
          {
LABEL_70:
            v15 = v93;
            v102 = v93;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_99();
              sub_1C716D7D8();
              v15 = v93;
            }

            v44 = v15[2];
            v1 = v44 + 1;
            v13 = v94;
            if (v44 >= v15[3] >> 1)
            {
              sub_1C716D7D8();
              v15 = v93;
            }

            v15[2] = v1;
            result = memcpy(&v15[15 * v44 + 4], (v0 + 16), 0x78uLL);
            goto LABEL_10;
          }

          result = sub_1C6FDD548(v0 + 16);
          v13 = v94;
          break;
        case 8u:
          OUTLINED_FUNCTION_5_22();
          sub_1C7080BB8();
          OUTLINED_FUNCTION_66_2();
          v38 = swift_getEnumCaseMultiPayload();
          v1 = *(v0 + 312);
          if (v38 == 8)
          {
            sub_1C6FD7FC8(v23, &qword_1EC216328);
            v39 = v1;
            v40 = &qword_1EC216328;
            goto LABEL_67;
          }

          v30 = *(v0 + 312);
          v31 = &qword_1EC216328;
          goto LABEL_58;
        case 9u:
          v1 = *(v0 + 304);
          OUTLINED_FUNCTION_5_22();
          sub_1C7080BB8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0);
          OUTLINED_FUNCTION_66_2();
          v28 = swift_getEnumCaseMultiPayload();
          v29 = *(v0 + 304);
          if (v28 == 9)
          {
            sub_1C7080E04();
            sub_1C6FD7FC8(v23, &qword_1EC216320);
            sub_1C7080E04();
            v39 = v29;
            v40 = &qword_1EC216320;
            goto LABEL_67;
          }

          sub_1C7080E04();
          v30 = v29;
          v31 = &qword_1EC216320;
LABEL_58:
          sub_1C6FD7FC8(v30, v31);
          goto LABEL_59;
        case 0xAu:
          if (OUTLINED_FUNCTION_179_0() == 10)
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        case 0xBu:
          if (OUTLINED_FUNCTION_179_0() == 11)
          {
            goto LABEL_68;
          }

          goto LABEL_59;
        case 0xCu:
          if (OUTLINED_FUNCTION_179_0() == 12)
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        case 0xDu:
          if (OUTLINED_FUNCTION_179_0() == 13)
          {
            goto LABEL_68;
          }

          goto LABEL_59;
        case 0xEu:
          if (OUTLINED_FUNCTION_179_0() == 14)
          {
            goto LABEL_68;
          }

          goto LABEL_59;
        case 0xFu:
          if (OUTLINED_FUNCTION_179_0() == 15)
          {
            goto LABEL_68;
          }

          goto LABEL_59;
        case 0x10u:
          if (OUTLINED_FUNCTION_179_0() == 16)
          {
            goto LABEL_68;
          }

          goto LABEL_59;
        case 0x11u:
          if (OUTLINED_FUNCTION_179_0() == 17)
          {
            goto LABEL_68;
          }

          goto LABEL_59;
        case 0x12u:
          if (OUTLINED_FUNCTION_179_0() == 18)
          {
            goto LABEL_68;
          }

          goto LABEL_59;
        default:
          if (OUTLINED_FUNCTION_179_0())
          {
            goto LABEL_59;
          }

LABEL_60:
          OUTLINED_FUNCTION_106_1();
          goto LABEL_61;
      }

      break;
    }
  }

  v45 = *(v0 + 272);
  sub_1C707DEC4();
  v47 = v46;
  v48 = OUTLINED_FUNCTION_0_11();
  v21 = 0;
  v50 = static TextSanitizer.removeCategories(in:queryTokens:categories:)(v48, v49, v45, v47);
  *(v0 + 384) = v51;
  v1 = v50;
  v18 = v51;
  v53 = *(v0 + 256);
  v52 = *(v0 + 264);
  sub_1C75504FC();
  OUTLINED_FUNCTION_114_4(&unk_1F469E180, v54, v55, v56, v57, v58, v59, v60, v89, SWORD2(v89), SBYTE6(v89), SHIBYTE(v89), v90, v91, v93, v94, v96, v99, v102, __dst[0], __dst[1]);
  v15 = v93;
  v19 = static TextSanitizer.removeCategories(in:queryTokens:categories:)(v53, v52, v93, v61);
  *(v0 + 392) = v20;
LABEL_77:
  v62 = v20;
  v97 = v19;
  v100 = v1;
  v64 = *(v0 + 256);
  v63 = *(v0 + 264);

  OUTLINED_FUNCTION_114_4(&unk_1F469E1A8, v65, v66, v67, v68, v69, v70, v71, v89, SWORD2(v89), SBYTE6(v89), SHIBYTE(v89), v90, v91, v93, v94, v97, v100, v102, __dst[0], __dst[1]);
  v73 = static TextSanitizer.removeCategories(in:queryTokens:categories:)(v64, v63, v15, v72);
  *(v0 + 400) = v74;
  if (v21)
  {

    OUTLINED_FUNCTION_43();

    return v7();
  }

  else
  {
    v75 = v74;
    v92 = v73;
    v76 = *(v0 + 264);
    v95 = *(v0 + 272);
    v77 = *(v0 + 256);

    sub_1C707DEC4();
    v79 = static TextSanitizer.removeCategories(in:queryTokens:categories:)(v77, v76, v95, v78);
    *(v0 + 408) = v80;
    v81 = v79;
    v82 = v80;
    v83 = *(v0 + 450);

    *(v0 + 448) = v83;
    v84 = swift_task_alloc();
    *(v0 + 416) = v84;
    *v84 = v0;
    v84[1] = sub_1C7071CCC;
    v85 = *(v0 + 280);
    v86 = *(v0 + 256);
    v108 = v0 + 448;
    v109 = v85;
    v106 = v81;
    v107 = v82;
    v87 = OUTLINED_FUNCTION_61_3(v86);

    return sub_1C7076E90(v87, v88, v101, v18, v98, v62, v92, v75);
  }
}

uint64_t sub_1C7071CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_47();
  v15 = v14;
  OUTLINED_FUNCTION_6_4();
  *v16 = v15;
  v17 = *v13;
  OUTLINED_FUNCTION_14();
  *v18 = v17;
  *(v15 + 424) = v12;

  if (v12)
  {

    OUTLINED_FUNCTION_44();

    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }

  else
  {

    OUTLINED_FUNCTION_256_0();

    OUTLINED_FUNCTION_82_0();
    OUTLINED_FUNCTION_457();
    OUTLINED_FUNCTION_44();

    return v26(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
  }
}

uint64_t sub_1C7071E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_47();
  v15 = v14;
  OUTLINED_FUNCTION_6_4();
  *v16 = v15;
  v17 = *v13;
  OUTLINED_FUNCTION_14();
  *v18 = v17;
  *(v15 + 440) = v12;

  if (v12)
  {
    OUTLINED_FUNCTION_44();

    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }

  else
  {
    OUTLINED_FUNCTION_256_0();

    OUTLINED_FUNCTION_82_0();
    OUTLINED_FUNCTION_457();
    OUTLINED_FUNCTION_44();

    return v26(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
  }
}

uint64_t sub_1C7071FF8()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_248_0();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C70720A0()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_248_0();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C7072148()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_273_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_52_3(v1);
  OUTLINED_FUNCTION_48_8();

  return SafetyController.validateStoryTitle(storyTitle:eventRecorder:)();
}

uint64_t SafetyController.validateStoryTitle(storyTitle:eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_1C754F38C();
  v1[6] = v5;
  OUTLINED_FUNCTION_18(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_77();
  v7 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7072280()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_25_9(*(v0 + 32));
  OUTLINED_FUNCTION_132();
  if (qword_1EDD0AF90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for TextSanitizer();
  __swift_project_value_buffer(v1, &unk_1EDD28C10);
  OUTLINED_FUNCTION_208_0();
  *(v0 + 88) = v2;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_1C7072394;
  OUTLINED_FUNCTION_61_3(*(v0 + 16));

  return SafetyBundle.scrub(_:useCaseIdentifier:)();
}

uint64_t sub_1C7072394()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_42_9();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_287_0();
  }

  else
  {

    v7 = OUTLINED_FUNCTION_137_2();
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1C70724A8()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_191_0();
  sub_1C6FD1EE8();
  OUTLINED_FUNCTION_38_6(v1);
  v2 = OUTLINED_FUNCTION_39_1();
  v3(v2);

  OUTLINED_FUNCTION_116();
  v5 = *(v0 + 80) == 0;

  return v4(v5);
}

uint64_t sub_1C707256C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_158_1();
  OUTLINED_FUNCTION_31();
  v16 = *(v14 + 80);
  v17 = *(v14 + 24);
  sub_1C75504FC();
  v18 = v16;
  v19 = sub_1C754FEEC();
  v20 = sub_1C75511BC();

  if (OUTLINED_FUNCTION_262_0())
  {
    v21 = *(v14 + 80);
    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_160_1();
    v38 = OUTLINED_FUNCTION_15_5();
    *(v17 + 4) = OUTLINED_FUNCTION_178(4.9655e-34, v38);
    OUTLINED_FUNCTION_162_1();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_234_0(v22);
    OUTLINED_FUNCTION_91_3(&dword_1C6F5C000, v23, v24, "Story title %{sensitive}s found unsafe: %@");
    sub_1C6FD7FC8(v15, &qword_1EC215190);
    OUTLINED_FUNCTION_79();
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_23_3();
  }

  else
  {
    v25 = *(v14 + 80);
  }

  OUTLINED_FUNCTION_191_0();
  v39 = v26;
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_38_6(v20);
  v27 = OUTLINED_FUNCTION_39_1();
  v28(v27);

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_93_0();

  return v31(v29, v30, v31, v32, v33, v34, v35, v36, a9, v39, 0, a12, a13, a14);
}

uint64_t sub_1C70726F4()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_126();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_52_3(v1);
  OUTLINED_FUNCTION_0_11();

  return SafetyController.validatedPersonalTraits(traits:eventRecorder:)();
}

uint64_t SafetyController.validatedPersonalTraits(traits:eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = sub_1C754F38C();
  v1[7] = v4;
  OUTLINED_FUNCTION_18(v4);
  v1[8] = v5;
  v1[9] = OUTLINED_FUNCTION_77();
  v6 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C7072830()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_25_9(*(v0 + 40));
  OUTLINED_FUNCTION_132();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1C70728E8;
  v2 = OUTLINED_FUNCTION_61_3(*(v0 + 32));

  return sub_1C707B030(v2, v3);
}

uint64_t sub_1C70728E8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *(v1 + 16) = v0;
  *(v1 + 24) = v3;
  OUTLINED_FUNCTION_292_0();
  v4 = *v0;
  OUTLINED_FUNCTION_14();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C70729D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_158_1();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_150_1();
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_0_22(v14, v14[3]);
  OUTLINED_FUNCTION_103_4();
  v15 = OUTLINED_FUNCTION_57_0();
  v16(v15);

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_93_0();

  return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C7072A70()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_126();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_52_3(v1);
  OUTLINED_FUNCTION_0_11();

  return SafetyController.validatedGlobalTraits(traits:eventRecorder:)();
}

uint64_t SafetyController.validatedGlobalTraits(traits:eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = sub_1C754F38C();
  v1[7] = v4;
  OUTLINED_FUNCTION_18(v4);
  v1[8] = v5;
  v1[9] = OUTLINED_FUNCTION_77();
  v6 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C7072BAC()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_25_9(*(v0 + 40));
  OUTLINED_FUNCTION_132();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1C7072C64;
  v2 = OUTLINED_FUNCTION_61_3(*(v0 + 32));

  return sub_1C707B420(v2, v3);
}

uint64_t sub_1C7072C64()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *(v1 + 16) = v0;
  *(v1 + 24) = v3;
  OUTLINED_FUNCTION_292_0();
  v4 = *v0;
  OUTLINED_FUNCTION_14();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C7072D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_158_1();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_150_1();
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_0_22(v14, v14[3]);
  OUTLINED_FUNCTION_103_4();
  v15 = OUTLINED_FUNCTION_57_0();
  v16(v15);

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_93_0();

  return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C7072DEC()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_126();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_52_3(v1);
  OUTLINED_FUNCTION_0_11();

  return SafetyController.validatedAppleMusicSongs(songs:eventRecorder:)();
}

uint64_t SafetyController.validatedAppleMusicSongs(songs:eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_1C754F38C();
  v1[5] = v4;
  OUTLINED_FUNCTION_18(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_77();
  v6 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C7072F28()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_25_9(*(v0 + 24));
  OUTLINED_FUNCTION_132();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_41_7(v1);

  return sub_1C707B86C(v2, v3);
}

uint64_t sub_1C7072FD4()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v3;
  }

  OUTLINED_FUNCTION_286_0();
  OUTLINED_FUNCTION_244_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C70730F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_158_1();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_161_1();
  sub_1C706D714();
  v14 = OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_80_0(v14, v15);
  OUTLINED_FUNCTION_103_4();
  v16 = OUTLINED_FUNCTION_45_1();
  v17(v16);

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_93_0();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C7073190()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 72);
  v2 = sub_1C754FEEC();
  sub_1C755119C();

  if (OUTLINED_FUNCTION_200())
  {
    OUTLINED_FUNCTION_41_0();
    v3 = OUTLINED_FUNCTION_163_0();
    OUTLINED_FUNCTION_261_0(5.7779e-34);
    v4 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_232_0(v4);
    OUTLINED_FUNCTION_89(&dword_1C6F5C000, v5, v6, "Apple Music songs batch validation failed: %@, validating them individually");
    sub_1C6FD7FC8(v3, &qword_1EC215190);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_37();
  }

  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_41_7(v7);
  OUTLINED_FUNCTION_244_0();

  return sub_1C707CB38(v8, v9);
}

uint64_t sub_1C70732B8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;
  *(v6 + 96) = v5;

  v7 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C70733B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_158_1();
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_161_1();
  sub_1C706D714();
  v15 = OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_80_0(v15, v16);
  OUTLINED_FUNCTION_103_4();
  v17 = OUTLINED_FUNCTION_45_1();
  v18(v17);

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_93_0();

  return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

id sub_1C7073450()
{
  OUTLINED_FUNCTION_126();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_0_11();
  v1 = sub_1C755065C();

  v2 = [v0 initWithString_];

  return v2;
}

BOOL sub_1C707351C()
{
  OUTLINED_FUNCTION_143_2();
  v3 = (v2 + 32);
  v5 = v4 + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    memcpy(__dst, v3, sizeof(__dst));
    memcpy(v22, v3, sizeof(v22));
    sub_1C6FCA6E4(__dst, v21);
    v6 = v1(v22);
    if (v0)
    {
      v17 = OUTLINED_FUNCTION_276_0(v6, v7, v8, v9, v10, v11, v12, v13, v20, v21[0]);
      memcpy(v17, v18, 0x78uLL);
      sub_1C6FDD548(v21);
      return v5 != 0;
    }

    v14 = v6;
    v3 += 120;
    v15 = OUTLINED_FUNCTION_276_0(v6, v7, v8, v9, v10, v11, v12, v13, v20, v21[0]);
    memcpy(v15, v16, 0x78uLL);
    sub_1C6FDD548(v21);
  }

  while ((v14 & 1) == 0);
  return v5 != 0;
}

BOOL sub_1C70735F4()
{
  OUTLINED_FUNCTION_143_2();
  v3 = (v2 + 40);
  v5 = v4 + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = *v3;
    v10[0] = *(v3 - 1);
    v10[1] = v6;
    sub_1C75504FC();
    v7 = v1(v10);
    if (v0)
    {

      return v5 != 0;
    }

    v8 = v7;
    v3 += 2;
  }

  while ((v8 & 1) == 0);
  return v5 != 0;
}

BOOL sub_1C70736C8()
{
  OUTLINED_FUNCTION_143_2();
  v3 = (v2 + 48);
  v5 = v4 + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = *(v3 - 1);
    v7 = *v3;
    v10[0] = *(v3 - 2);
    v10[1] = v6;
    v10[2] = v7;
    sub_1C75504FC();
    sub_1C75504FC();
    v8 = v1(v10);

    if (v0)
    {
      break;
    }

    v3 += 3;
  }

  while ((v8 & 1) == 0);
  return v5 != 0;
}

BOOL sub_1C70737A4(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    v11 = a4(0);
    OUTLINED_FUNCTION_18(v11);
    v14 = a1(a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v13 + 72) * v10);
    if (v4)
    {
      break;
    }

    v8 = v10 + 1;
  }

  while ((v14 & 1) == 0);
  return v9 != v10;
}

uint64_t sub_1C7073880(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_1C70F1528(&v7, *(a1 + v4));
      v4 += 8;
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    v5 = a2;
  }

  return v5;
}

void sub_1C7073A2C()
{
  OUTLINED_FUNCTION_186_0();
  v40 = v3;
  OUTLINED_FUNCTION_227_0();
  while (1)
  {
    if (v1 == v0)
    {

      return;
    }

    OUTLINED_FUNCTION_96_4();
    if (v4)
    {
      break;
    }

    v5 = OUTLINED_FUNCTION_267_0();
    memcpy(v5, v6, 0x41uLL);
    v7 = OUTLINED_FUNCTION_120_4();
    v9 = sub_1C7025F3C(v7, v8);
    v17 = OUTLINED_FUNCTION_122_3(v9, v10, v11, v12, v13, v14, v15, v16, v29);
    v19 = sub_1C70F3F1C(v17, v18);
    v27 = OUTLINED_FUNCTION_266_0(v19, v20, v21, v22, v23, v24, v25, v26, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39[0]);
    memcpy(v27, v28, 0x41uLL);
    sub_1C7025F74(v39);
    v2 += 72;
  }

  __break(1u);
}

void sub_1C7073AC4()
{
  OUTLINED_FUNCTION_186_0();
  v40 = v3;
  OUTLINED_FUNCTION_227_0();
  while (1)
  {
    if (v1 == v0)
    {

      return;
    }

    OUTLINED_FUNCTION_96_4();
    if (v4)
    {
      break;
    }

    v5 = OUTLINED_FUNCTION_267_0();
    memcpy(v5, v6, 0x42uLL);
    v7 = OUTLINED_FUNCTION_120_4();
    v9 = sub_1C7025FF8(v7, v8);
    v17 = OUTLINED_FUNCTION_122_3(v9, v10, v11, v12, v13, v14, v15, v16, v29);
    v19 = sub_1C70F3DC8(v17, v18);
    v27 = OUTLINED_FUNCTION_266_0(v19, v20, v21, v22, v23, v24, v25, v26, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39[0]);
    memcpy(v27, v28, 0x42uLL);
    sub_1C7026030(v39);
    v2 += 72;
  }

  __break(1u);
}

void sub_1C7073B5C()
{
  OUTLINED_FUNCTION_186_0();
  v35 = v1;
  v3 = *(v2 + 16);
  for (i = 32; ; i += 56)
  {
    if (v3 == v0)
    {

      return;
    }

    OUTLINED_FUNCTION_96_4();
    if (v5)
    {
      break;
    }

    v6 = OUTLINED_FUNCTION_264_0();
    v37 = v7;
    v38 = v6;
    v39 = *(v8 + 48);
    ++v0;
    v9 = sub_1C70260B4(v36, v33);
    v17 = OUTLINED_FUNCTION_276_0(v9, v10, v11, v12, v13, v14, v15, v16, v27, v29);
    v19 = sub_1C70F3B88(v17, v18);
    OUTLINED_FUNCTION_173_0(v19, v20, v21, v22, v23, v24, v25, v26, v28, v29, v30, v31, v32, v33[0], v33[1], v33[2], v34);
  }

  __break(1u);
}

void sub_1C7073C04()
{
  OUTLINED_FUNCTION_186_0();
  OUTLINED_FUNCTION_227_0();
  while (1)
  {
    if (v1 == v0)
    {

      return;
    }

    OUTLINED_FUNCTION_96_4();
    if (v3)
    {
      break;
    }

    OUTLINED_FUNCTION_22_15();
    v6 = sub_1C70805A4(v4, v5);
    v14 = OUTLINED_FUNCTION_123_4(v6, v7, v8, v9, v10, v11, v12, v13, v16);
    sub_1C70F3990(v14, v15);
    OUTLINED_FUNCTION_318_0();

    v2 += 40;
  }

  __break(1u);
}

uint64_t sub_1C7073C88(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_300();
  v5 = type metadata accessor for TimeExtendedToken(v4) - 8;
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = *(v2 + 16);
  if (v8)
  {
    v9 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v10 = *(v7 + 72);
    do
    {
      OUTLINED_FUNCTION_154();
      sub_1C7080BB8();
      OUTLINED_FUNCTION_211_0();
      sub_1C70F3190();
      OUTLINED_FUNCTION_115_4();
      v9 += v10;
      --v8;
    }

    while (v8);
  }

  return a2;
}

uint64_t sub_1C7073DC8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  v18 = a2;
  v9 = *(result + 16);
  for (i = 32; ; i += 56)
  {
    if (!v9)
    {

      return v18;
    }

    if (!*(v8 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_145_1(result, a2, a3, a4, a5, a6, a7, a8, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
    sub_1C70F2CAC();
  }

  __break(1u);
  return result;
}

void sub_1C7073E6C()
{
  OUTLINED_FUNCTION_33();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_300();
  v57 = type metadata accessor for PartOfWeekExtendedToken(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_78();
  v60 = v8 - v9;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v10);
  v59 = v50 - v11;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_212_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_209_0();
  v51 = *(v0 + 16);
  if (!v51)
  {
    goto LABEL_50;
  }

  v14 = 0;
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_294_0(v0 + v15);
  *(v17 - 256) = v0;
  v50[0] = v16;
  v54 = v1;
  while (1)
  {
    if (v14 >= *(v0 + 16))
    {
      __break(1u);
      goto LABEL_52;
    }

    v18 = *(v16 + 72);
    v52 = v14;
    OUTLINED_FUNCTION_3_20();
    sub_1C7080BB8();
    sub_1C7551F3C();
    OUTLINED_FUNCTION_18_12();
    v19 = *v3;
    v20 = v3[1];
    v21 = OUTLINED_FUNCTION_296_0();
    MEMORY[0x1CCA5CD70](v21);
    OUTLINED_FUNCTION_192_0();

    sub_1C7551FAC();
    v22 = v5 + 7;
    OUTLINED_FUNCTION_40_12();
    v25 = *(v5 + v24 + 56) >> v2;
    v58 = v18;
    if ((v25 & 1) == 0)
    {
      break;
    }

    v26 = ~v23;
    v55 = v5;
    while (1)
    {
      OUTLINED_FUNCTION_3_20();
      v27 = v60;
      sub_1C7080BB8();
      v28 = *v27 == v19 && v27[1] == v20;
      if (!v28 && (sub_1C7551DBC() & 1) == 0)
      {
        goto LABEL_20;
      }

      if ((*(v60 + 24) & 1) == 0)
      {
        break;
      }

      if (*(v3 + 24))
      {
        goto LABEL_13;
      }

LABEL_20:
      OUTLINED_FUNCTION_1_28();
      sub_1C7080E04();
LABEL_21:
      v2 = (v2 + 1) & v26;
      OUTLINED_FUNCTION_187_0();
      if (((*(v22 + v33) >> v2) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    OUTLINED_FUNCTION_134_2();
    if (v32)
    {
      goto LABEL_20;
    }

LABEL_13:
    OUTLINED_FUNCTION_220_0();
    OUTLINED_FUNCTION_14_16();
    sub_1C707E638(&qword_1EC2147B8, v29);
    OUTLINED_FUNCTION_218_0();
    OUTLINED_FUNCTION_315_0();
    v3 = v62;
    OUTLINED_FUNCTION_284();
    if (!v28 || v3 != v22)
    {
      v31 = OUTLINED_FUNCTION_13_6();

      OUTLINED_FUNCTION_1_28();
      sub_1C7080E04();
      OUTLINED_FUNCTION_235_1();
      if (v31)
      {
        goto LABEL_47;
      }

      goto LABEL_21;
    }

    OUTLINED_FUNCTION_1_28();
    sub_1C7080E04();
    v5 = v55;
    v3 = v56;
LABEL_47:
    v14 = v52 + 1;
    OUTLINED_FUNCTION_1_28();
    sub_1C7080E04();
    v0 = v50[1];
    v16 = v50[0];
    if (v14 == v51)
    {
LABEL_50:

      OUTLINED_FUNCTION_25_0();
      return;
    }
  }

LABEL_22:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_3_20();
  v35 = v54;
  sub_1C7080BB8();
  v61 = v5;
  if (v5[3] <= v5[2])
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      sub_1C72E97B0();
    }

    else
    {
      sub_1C72F7BDC();
    }

    v36 = v61;
    sub_1C7551F3C();
    OUTLINED_FUNCTION_18_12();
    OUTLINED_FUNCTION_313_0();
    OUTLINED_FUNCTION_192_0();

    sub_1C7551FAC();
    OUTLINED_FUNCTION_40_12();
    if (((*(v36 + v38 + 56) >> v2) & 1) == 0)
    {
      goto LABEL_45;
    }

    v39 = ~v37;
    v55 = v36 + 7;
    v53 = ~v37;
    while (1)
    {
      OUTLINED_FUNCTION_3_20();
      v40 = v59;
      sub_1C7080BB8();
      v41 = *v40 == v5 && v40[1] == v19;
      if (!v41 && (sub_1C7551DBC() & 1) == 0)
      {
        break;
      }

      if (v59[24])
      {
        if (!*(v35 + 24))
        {
          break;
        }
      }

      else
      {
        OUTLINED_FUNCTION_134_2();
        if (v42)
        {
          break;
        }
      }

      OUTLINED_FUNCTION_216_0();
      OUTLINED_FUNCTION_14_16();
      sub_1C707E638(&qword_1EC2147B8, v43);
      OUTLINED_FUNCTION_219_0();
      OUTLINED_FUNCTION_314_0();
      v35 = v62;
      OUTLINED_FUNCTION_284();
      if (v28 && v35 == v40)
      {
        goto LABEL_53;
      }

      v45 = OUTLINED_FUNCTION_13_6();

      OUTLINED_FUNCTION_1_28();
      sub_1C7080E04();
      OUTLINED_FUNCTION_185_0();
      if (v45)
      {
        goto LABEL_54;
      }

LABEL_44:
      v2 = (v2 + 1) & v39;
      OUTLINED_FUNCTION_187_0();
      if (((*(v36 + v46 + 56) >> v2) & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    OUTLINED_FUNCTION_1_28();
    sub_1C7080E04();
    goto LABEL_44;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C72F3988();
  }

LABEL_45:
  OUTLINED_FUNCTION_73_4();
  v47 = v5[2];
  v48 = __OFADD__(v47, 1);
  v49 = v47 + 1;
  if (!v48)
  {
    v5[2] = v49;
    v3 = v56;
    goto LABEL_47;
  }

LABEL_52:
  __break(1u);
LABEL_53:

  OUTLINED_FUNCTION_1_28();
  sub_1C7080E04();
LABEL_54:
  sub_1C7551E3C();
  __break(1u);
}

void sub_1C7074368()
{
  OUTLINED_FUNCTION_186_0();
  OUTLINED_FUNCTION_227_0();
  while (1)
  {
    if (v1 == v0)
    {

      return;
    }

    OUTLINED_FUNCTION_96_4();
    if (v3)
    {
      break;
    }

    v4 = OUTLINED_FUNCTION_43_7();
    v6 = sub_1C7026698(v4, v5);
    v14 = OUTLINED_FUNCTION_203_0(v6, v7, v8, v9, v10, v11, v12, v13, v25);
    v16 = sub_1C70F2A94(v14, v15);
    OUTLINED_FUNCTION_87_6(v16, v17, v18, v19, v20, v21, v22, v23, v26, v27, v28, v29, v30);
    sub_1C70266D0(v24);
    v2 += 64;
  }

  __break(1u);
}

void sub_1C70743E8()
{
  OUTLINED_FUNCTION_186_0();
  OUTLINED_FUNCTION_227_0();
  while (1)
  {
    if (v1 == v0)
    {

      return;
    }

    OUTLINED_FUNCTION_96_4();
    if (v3)
    {
      break;
    }

    OUTLINED_FUNCTION_22_15();
    v6 = sub_1C70804EC(v4, v5);
    v14 = OUTLINED_FUNCTION_123_4(v6, v7, v8, v9, v10, v11, v12, v13, v16);
    sub_1C70F26F0(v14, v15);
    OUTLINED_FUNCTION_318_0();

    v2 += 40;
  }

  __break(1u);
}

void sub_1C707446C(unint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_1C755165C();
    sub_1C6F65BE8(0, &qword_1EDD0FAB0);
    sub_1C7080178(&qword_1EDD0FAA8, &qword_1EDD0FAB0);
    sub_1C7550FEC();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      OUTLINED_FUNCTION_57_0();
      sub_1C6F61E88();
      return;
    }

    while (1)
    {
      sub_1C70F25A0(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1C75516FC())
      {
        sub_1C6F65BE8(0, &qword_1EDD0FAB0);
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1C7074680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_23_12();
  a20 = v21;
  a21 = v23;
  v25 = v24;
  a13 = v26;
  v27 = *(v24 + 16);
  if (v27)
  {
    v28 = v22;
    v29 = 32;
    do
    {
      v28(&a12, *(v25 + v29++));
      --v27;
    }

    while (v27);
  }

  OUTLINED_FUNCTION_22_14();
}

void sub_1C7074704()
{
  OUTLINED_FUNCTION_23_12();
  v0 = 0;
  v2 = v1 + 56;
  OUTLINED_FUNCTION_11();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  if ((v4 & v3) != 0)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v8 = v0 + 1;
    if (__OFADD__(v0, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      OUTLINED_FUNCTION_22_14();
      return;
    }

    v5 = *(v2 + 8 * v8);
    ++v0;
    if (v5)
    {
      v0 = v8;
      do
      {
LABEL_7:
        OUTLINED_FUNCTION_121_4();
        sub_1C70F54FC(v9, v10);
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

void sub_1C7074834()
{
  OUTLINED_FUNCTION_33();
  sub_1C754FBCC();
  OUTLINED_FUNCTION_3_0();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2167F0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C759B4D0);
  v4 = sub_1C754FB7C();
  MEMORY[0x1CCA5CD70](v4);

  MEMORY[0x1CCA5CD70](0xD000000000000016, 0x80000001C759B4F0);
  sub_1C754FB9C();
  OUTLINED_FUNCTION_117_0();
  v5 = sub_1C75506EC();
  MEMORY[0x1CCA5CD70](v5);

  MEMORY[0x1CCA5CD70](0xD000000000000017, 0x80000001C759B510);
  v6 = sub_1C754FBAC();
  v7 = (v6 & 1) == 0;
  if (v6)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v7)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v8, v9);

  MEMORY[0x1CCA5CD70](0xD000000000000011, 0x80000001C759B530);
  sub_1C754FB6C();
  OUTLINED_FUNCTION_246_0();
  v10 = *(v1 + 8);
  v11 = OUTLINED_FUNCTION_295();
  v10(v11);
  MEMORY[0x1CCA5CD70](0xD00000000000001CLL, 0x80000001C759B550);
  sub_1C754FBBC();
  OUTLINED_FUNCTION_246_0();
  v12 = OUTLINED_FUNCTION_295();
  v10(v12);
  MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
  OUTLINED_FUNCTION_25_0();
}

uint64_t SafetyController.scrub(_:with:useCaseIdentifier:)()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  v3 = v2;
  OUTLINED_FUNCTION_126();
  *(v1 + 56) = v0;
  v4 = sub_1C754FBFC();
  *(v1 + 64) = v4;
  OUTLINED_FUNCTION_18(v4);
  *(v1 + 72) = v5;
  *(v1 + 80) = OUTLINED_FUNCTION_77();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2154E0);
  OUTLINED_FUNCTION_76(v6);
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  v7 = sub_1C754FACC();
  *(v1 + 104) = v7;
  OUTLINED_FUNCTION_18(v7);
  *(v1 + 112) = v8;
  *(v1 + 120) = swift_task_alloc();
  *(v1 + 128) = swift_task_alloc();
  v9 = sub_1C754FBDC();
  *(v1 + 136) = v9;
  OUTLINED_FUNCTION_18(v9);
  *(v1 + 144) = v10;
  *(v1 + 152) = OUTLINED_FUNCTION_77();
  v11 = sub_1C754FC4C();
  *(v1 + 160) = v11;
  OUTLINED_FUNCTION_18(v11);
  *(v1 + 168) = v12;
  *(v1 + 176) = OUTLINED_FUNCTION_77();
  v13 = sub_1C754FCEC();
  *(v1 + 184) = v13;
  OUTLINED_FUNCTION_18(v13);
  *(v1 + 192) = v14;
  *(v1 + 200) = OUTLINED_FUNCTION_77();
  v15 = sub_1C754FC6C();
  *(v1 + 208) = v15;
  OUTLINED_FUNCTION_18(v15);
  *(v1 + 216) = v16;
  *(v1 + 224) = OUTLINED_FUNCTION_77();
  v17 = sub_1C754FD2C();
  *(v1 + 232) = v17;
  OUTLINED_FUNCTION_18(v17);
  *(v1 + 240) = v18;
  *(v1 + 248) = swift_task_alloc();
  *(v1 + 256) = swift_task_alloc();
  v19 = *v3;
  type metadata accessor for TextSanitizer();
  *(v1 + 280) = v19;
  v20 = swift_task_alloc();
  *(v1 + 264) = v20;
  *v20 = v1;
  v20[1] = sub_1C7074DF8;
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_244_0();

  return SafetyBundle.scrub(_:useCaseIdentifier:)();
}

uint64_t sub_1C7074DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v17 = v16;
  v19 = v18;
  OUTLINED_FUNCTION_47();
  v21 = v20;
  OUTLINED_FUNCTION_6_4();
  *v22 = v21;
  v23 = *v15;
  OUTLINED_FUNCTION_14();
  *v24 = v23;
  *(v21 + 272) = v14;

  if (v14)
  {
    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_17_1();

    return MEMORY[0x1EEE6DFA0](v25, v26, v27);
  }

  else
  {
    v38 = *(v21 + 88);

    OUTLINED_FUNCTION_82_0();
    OUTLINED_FUNCTION_17_1();

    return v32(v29, v30, v31, v32, v33, v34, v35, v36, v38, v19, v17, a12, a13, a14);
  }
}

uint64_t sub_1C7074FB8()
{
  v166 = v0;
  v1 = *(v0 + 272);
  *(v0 + 48) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  OUTLINED_FUNCTION_66_2();
  v3 = swift_dynamicCast();
  v4 = *(v0 + 272);
  if (v3)
  {
    v6 = *(v0 + 192);
    v5 = *(v0 + 200);
    v7 = *(v0 + 184);

    v8 = OUTLINED_FUNCTION_154();
    v9(v8);
    sub_1C754FD0C();
    if ((*(v6 + 88))(v5, v7) == *MEMORY[0x1E69A0A58])
    {
      v10 = *(v0 + 168);
      (*(*(v0 + 192) + 96))(*(v0 + 200), *(v0 + 184));
      v11 = OUTLINED_FUNCTION_57_3();
      v12(v11);
      sub_1C754FC5C();
      v13 = v10 + 88;
      v14 = OUTLINED_FUNCTION_55();
      v16 = v15(v14);
      if (v16 == *MEMORY[0x1E69A09E0])
      {
        v17 = *(v0 + 152);
        v18 = *(v0 + 144);
        v19 = *(v0 + 96);
        (*(*(v0 + 168) + 96))(*(v0 + 176), *(v0 + 160));
        v20 = v18 + 32;
        v21 = OUTLINED_FUNCTION_90();
        v23 = v22(v21);
        MEMORY[0x1CCA5C070](v23);
        OUTLINED_FUNCTION_48_1(v19);
        if (v24)
        {
          sub_1C6FD7FC8(*(v0 + 96), &qword_1EC2154E0);
          if ((sub_1C754FB8C() & 1) == 0)
          {
            sub_1C754FBAC();
          }

          OUTLINED_FUNCTION_138_3();
          OUTLINED_FUNCTION_0_30();
          sub_1C707E638(v128, v129);
          OUTLINED_FUNCTION_65_6();
          OUTLINED_FUNCTION_117_3();
          sub_1C755180C();
          OUTLINED_FUNCTION_247_0();
          sub_1C7074834();
          MEMORY[0x1CCA5CD70]();

          OUTLINED_FUNCTION_4_18();
          sub_1C707E638(v130, v131);
          v132 = OUTLINED_FUNCTION_86_0();
          OUTLINED_FUNCTION_148_3(v132, v133);
          OUTLINED_FUNCTION_269_0();
          v134();
          type metadata accessor for SafetyError.SafetyValidationFailureInfo(0);
          OUTLINED_FUNCTION_84();
          __swift_storeEnumTagSinglePayload(v135, v136, v137, v161);
          OUTLINED_FUNCTION_288_0();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          (*(v20 + 8))();
          (*(v154 + 8))();
          (*(v13 + 8))(v19, v17);
        }

        else
        {
          v80 = *(v0 + 240);
          v81 = *(v0 + 248);
          v82 = *(v0 + 232);
          v156 = *(v0 + 208);
          v158 = *(v0 + 224);
          v140 = *(v0 + 152);
          v148 = *(v0 + 136);
          v152 = *(v0 + 216);
          v144 = *(v0 + 128);
          v146 = *(v0 + 144);
          v83 = *(v0 + 104);
          v84 = *(v0 + 112);
          (*(v84 + 32))();
          type metadata accessor for SafetyError(0);
          OUTLINED_FUNCTION_0_30();
          sub_1C707E638(v85, v86);
          OUTLINED_FUNCTION_65_6();
          v88 = v87;
          OUTLINED_FUNCTION_117_3();
          sub_1C755180C();
          OUTLINED_FUNCTION_201_0();
          MEMORY[0x1CCA5CD70](v89 + 32, v90 | 0x8000000000000000);
          sub_1C7074834();
          MEMORY[0x1CCA5CD70]();

          v91 = v165;
          OUTLINED_FUNCTION_4_18();
          sub_1C707E638(v92, v93);
          v94 = OUTLINED_FUNCTION_166_0();
          v96 = OUTLINED_FUNCTION_148_3(v94, v95);
          (*(v80 + 16))(v96, v81, v82);
          v97 = *(type metadata accessor for SafetyError.SafetyValidationFailureInfo(0) + 24);
          (*(v84 + 16))(&v88[v97], v144, v83);
          __swift_storeEnumTagSinglePayload(&v88[v97], 0, 1, v83);
          *v88 = v164;
          *(v88 + 1) = v91;
          *(v88 + 2) = &v164;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          (*(v84 + 8))(v144, v83);
          (*(v146 + 8))(v140, v148);
          (*(v152 + 8))(v158, v156);
          (*(v80 + 8))(v81);
        }
      }

      else if (v16 == *MEMORY[0x1E69A09E8])
      {
        v52 = *(v0 + 176);
        v53 = *(v0 + 104);
        v55 = *(v0 + 80);
        v54 = *(v0 + 88);
        v56 = *(v0 + 64);
        v57 = *(v0 + 72);
        (*(*(v0 + 168) + 96))(v52, *(v0 + 160));
        v58 = (*(v57 + 32))(v55, v52, v56);
        MEMORY[0x1CCA5C100](v58);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v54, 1, v53);
        v60 = *(v0 + 240);
        v61 = *(v0 + 232);
        v157 = *(v0 + 224);
        v160 = *(v0 + 216);
        v151 = *(v0 + 248);
        v155 = *(v0 + 208);
        if (EnumTagSinglePayload == 1)
        {
          v162 = *(v0 + 104);
          v62 = *(v0 + 72);
          v143 = *(v0 + 64);
          v145 = *(v0 + 80);
          sub_1C6FD7FC8(*(v0 + 88), &qword_1EC2154E0);
          type metadata accessor for SafetyError(0);
          OUTLINED_FUNCTION_0_30();
          sub_1C707E638(v63, v64);
          OUTLINED_FUNCTION_65_6();
          v66 = v65;
          OUTLINED_FUNCTION_117_3();
          sub_1C755180C();
          v67 = v165;
          *(v0 + 16) = v164;
          *(v0 + 24) = v67;
          OUTLINED_FUNCTION_201_0();
          MEMORY[0x1CCA5CD70](v68 + 4, v69 | 0x8000000000000000);
          sub_1C75519EC();
          v70 = *(v0 + 16);
          v71 = *(v0 + 24);
          OUTLINED_FUNCTION_4_18();
          sub_1C707E638(v72, v73);
          v74 = OUTLINED_FUNCTION_166_0();
          v76 = OUTLINED_FUNCTION_148_3(v74, v75);
          (*(v60 + 16))(v76, v151, v61);
          type metadata accessor for SafetyError.SafetyValidationFailureInfo(0);
          OUTLINED_FUNCTION_84();
          __swift_storeEnumTagSinglePayload(v77, v78, v79, v162);
          *v66 = v70;
          v66[1] = v71;
          v66[2] = v0 + 16;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          (*(v62 + 8))(v145, v143);
        }

        else
        {
          v114 = *(v0 + 112);
          v115 = *(v0 + 104);
          v147 = *(v0 + 120);
          v150 = *(v0 + 72);
          v141 = *(v0 + 64);
          v142 = *(v0 + 80);
          (*(v114 + 32))();
          type metadata accessor for SafetyError(0);
          OUTLINED_FUNCTION_0_30();
          sub_1C707E638(v116, v117);
          OUTLINED_FUNCTION_65_6();
          v164 = 0;
          v119 = v118;
          v165 = 0xE000000000000000;
          sub_1C755180C();
          *(v0 + 32) = 0;
          *(v0 + 40) = 0xE000000000000000;
          OUTLINED_FUNCTION_201_0();
          MEMORY[0x1CCA5CD70](v120 + 36, v121 | 0x8000000000000000);
          OUTLINED_FUNCTION_275_0();
          sub_1C75519EC();
          v138 = *(v0 + 40);
          v139 = *(v0 + 32);
          OUTLINED_FUNCTION_4_18();
          sub_1C707E638(v122, v123);
          v124 = OUTLINED_FUNCTION_166_0();
          v126 = OUTLINED_FUNCTION_148_3(v124, v125);
          (*(v60 + 16))(v126, v151, v61);
          v127 = *(type metadata accessor for SafetyError.SafetyValidationFailureInfo(0) + 24);
          (*(v114 + 16))(&v119[v127], v147, v115);
          __swift_storeEnumTagSinglePayload(&v119[v127], 0, 1, v115);
          *v119 = v139;
          *(v119 + 1) = v138;
          *(v119 + 2) = v0 + 32;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          (*(v114 + 8))(v147, v115);
          (*(v150 + 8))(v142, v141);
        }

        (*(v160 + 8))(v157, v155);
        (*(v60 + 8))(v151, v61);
      }

      else
      {
        v98 = *(v0 + 240);
        v99 = *(v0 + 248);
        v100 = *(v0 + 232);
        v101 = *(v0 + 216);
        v149 = *(v0 + 208);
        v153 = *(v0 + 224);
        v102 = *(v0 + 168);
        v159 = *(v0 + 176);
        v163 = *(v0 + 104);
        type metadata accessor for SafetyError(0);
        OUTLINED_FUNCTION_0_30();
        sub_1C707E638(v103, v104);
        OUTLINED_FUNCTION_66_8();
        v106 = v105;
        OUTLINED_FUNCTION_4_18();
        sub_1C707E638(v107, v108);
        v109 = OUTLINED_FUNCTION_166_0();
        (*(v98 + 16))(v110, v99, v100);
        type metadata accessor for SafetyError.SafetyValidationFailureInfo(0);
        OUTLINED_FUNCTION_84();
        __swift_storeEnumTagSinglePayload(v111, v112, v113, v163);
        *v106 = 0xD00000000000003DLL;
        v106[1] = 0x80000001C759B350;
        v106[2] = v109;
        OUTLINED_FUNCTION_57_3();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (*(v101 + 8))(v153, v149);
        (*(v98 + 8))(v99, v100);
        (*(v102 + 8))(v159);
      }
    }

    else
    {
      v33 = *(v0 + 240);
      v34 = *(v0 + 248);
      v35 = *(v0 + 232);
      v36 = *(v0 + 104);
      (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
      type metadata accessor for SafetyError(0);
      OUTLINED_FUNCTION_0_30();
      sub_1C707E638(v37, v38);
      OUTLINED_FUNCTION_166_0();
      v40 = v39;
      OUTLINED_FUNCTION_4_18();
      sub_1C707E638(v41, v42);
      v43 = OUTLINED_FUNCTION_66_8();
      (*(v33 + 16))(v44, v34, v35);
      type metadata accessor for SafetyError.SafetyValidationFailureInfo(0);
      OUTLINED_FUNCTION_84();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v36);
      *v40 = 0xD000000000000030;
      v40[1] = 0x80000001C759B310;
      v40[2] = v43;
      OUTLINED_FUNCTION_282();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v48 = OUTLINED_FUNCTION_57_3();
      v49(v48);
    }
  }

  else
  {
    v25 = *(v0 + 104);

    type metadata accessor for SafetyError(0);
    OUTLINED_FUNCTION_0_30();
    sub_1C707E638(v26, v27);
    OUTLINED_FUNCTION_66_8();
    v29 = v28;
    type metadata accessor for SafetyError.SafetyValidationFailureInfo(0);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v25);
    *v29 = 0xD00000000000002ELL;
    v29[1] = 0x80000001C759B2E0;
    v29[2] = v4;
    OUTLINED_FUNCTION_117_0();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  OUTLINED_FUNCTION_43();

  return v50();
}

uint64_t SafetyController.safety(of:with:useCaseIdentifier:)()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_299_0();
  *(v2 + 24) = v3;
  *(v2 + 32) = v1;
  v4 = type metadata accessor for SafetyError(0);
  *(v2 + 40) = v4;
  OUTLINED_FUNCTION_76(v4);
  *(v2 + 48) = OUTLINED_FUNCTION_77();
  *(v2 + 72) = *v0;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_298_0(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_52_3(v6);
  OUTLINED_FUNCTION_117_0();
  OUTLINED_FUNCTION_244_0();

  return SafetyController.scrub(_:with:useCaseIdentifier:)();
}

uint64_t sub_1C7075E40()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_42_9();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    v7 = *(v3 + 32);
    v8 = sub_1C7075FC4;
  }

  else
  {

    v8 = OUTLINED_FUNCTION_137_2();
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1C7075F58()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C7075FC4()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 64);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  OUTLINED_FUNCTION_90();
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 40);
    v4 = *(v0 + 24);

    OUTLINED_FUNCTION_8_15();
    OUTLINED_FUNCTION_43_2();
    sub_1C7080C2C();
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v3);
  }

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1C70760C0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216748);
  *(v6 + 56) = swift_task_alloc();
  v8 = sub_1C754F38C();
  *(v6 + 64) = v8;
  *(v6 + 72) = *(v8 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 105) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1C70761CC, v5, 0);
}

uint64_t sub_1C70761CC()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_25_9(*(v0 + 40));
  OUTLINED_FUNCTION_132();
  if (qword_1EDD0EFB0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 105);
  v2 = type metadata accessor for TextSanitizer();
  __swift_project_value_buffer(v2, &unk_1EDD28D90);
  *(v0 + 104) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 88) = v3;
  *v3 = v4;
  v3[1] = sub_1C70762DC;
  OUTLINED_FUNCTION_297_0();

  return SafetyController.safety(of:with:useCaseIdentifier:)();
}

uint64_t sub_1C70762DC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 96) = v0;

  v7 = *(v3 + 48);
  if (v0)
  {
    v8 = sub_1C70764B0;
  }

  else
  {
    v8 = sub_1C70763DC;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1C70763DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_158_1();
  OUTLINED_FUNCTION_31();
  v15 = *(v14 + 56);
  v16 = *(v14 + 16);
  v17 = type metadata accessor for SafetyError(0);
  v31 = __swift_getEnumTagSinglePayload(v15, 1, v17) == 1;
  OUTLINED_FUNCTION_252();
  sub_1C707DD50(v15, v16);
  v18 = OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_80_0(v18, v19);
  OUTLINED_FUNCTION_103_4();
  v20 = OUTLINED_FUNCTION_45_1();
  v21(v20);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_93_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, v31, 0, a12, a13, a14);
}

uint64_t sub_1C70764B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_38_6(*(v10 + 40));
  v11 = OUTLINED_FUNCTION_39_1();
  v12(v11);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C7076540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1C754F38C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7076604, v3, 0);
}

uint64_t sub_1C7076604()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_25_9(*(v0 + 32));
  OUTLINED_FUNCTION_132();
  *(v0 + 72) = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_storyPhotoLibraryContext + 16);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C707669C()
{
  OUTLINED_FUNCTION_42();
  sub_1C707DB58(&unk_1F469DFD0);
  v2 = v1;
  *(v0 + 80) = v1;
  *(v0 + 112) = 1;
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_1C7076758;
  v4 = OUTLINED_FUNCTION_61_3(*(v0 + 16));

  return static TextSanitizer.validateCharacterCategories(_:unsupportedCategories:storyGenerationCache:useCaseIdentifier:)(v4, v5, v2, v6, (v0 + 112));
}

uint64_t sub_1C7076758()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_287_0();
  }

  else
  {
    *(v5 + 104) = v3;
  }

  OUTLINED_FUNCTION_244_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C707688C()
{
  OUTLINED_FUNCTION_115_0();
  v1 = *(v0 + 32);
  v7 = *(v0 + 104);
  sub_1C75504FC();
  sub_1C6FD1EE8();
  sub_1C7080EAC(v7, 0, 3);
  OUTLINED_FUNCTION_38_6(v1);
  v2 = OUTLINED_FUNCTION_39_1();
  v3(v2);

  OUTLINED_FUNCTION_116();
  v5 = *(v0 + 104);

  return v4(v5);
}

uint64_t sub_1C7076968()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_0_22(*(v0 + 32), *(*(v0 + 32) + 24));
  OUTLINED_FUNCTION_95_1();
  sub_1C754F1AC();
  v1 = OUTLINED_FUNCTION_57_0();
  v2(v1);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_142();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t SafetyController.validatedUserPromptWithMusicTitleOnly(userPrompt:useCaseIdentifier:eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  *(v1 + 32) = v4;
  *(v1 + 40) = v0;
  *(v1 + 16) = v5;
  *(v1 + 24) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216748);
  OUTLINED_FUNCTION_76(v7);
  *(v1 + 48) = OUTLINED_FUNCTION_77();
  v8 = type metadata accessor for SafetyError(0);
  *(v1 + 56) = v8;
  OUTLINED_FUNCTION_76(v8);
  *(v1 + 64) = OUTLINED_FUNCTION_77();
  *(v1 + 89) = *v3;
  v9 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C7076AB8()
{
  OUTLINED_FUNCTION_49_0();
  v1 = sub_1C754FEEC();
  v2 = sub_1C75511BC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C6F5C000, v1, v2, "The user prompt was detected having a music title only, applying safety on the title", v3, 2u);
    OUTLINED_FUNCTION_23_3();
  }

  v4 = *(v0 + 89);

  *(v0 + 88) = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 72) = v5;
  *v5 = v6;
  v5[1] = sub_1C7076BD8;
  v7 = *(v0 + 48);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = *(v0 + 16);

  return sub_1C70760C0(v7, v10, v8, (v0 + 88), v9);
}

uint64_t sub_1C7076BD8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 80) = v0;

  v7 = *(v3 + 40);
  if (v0)
  {
    v8 = sub_1C7076E28;
  }

  else
  {
    v8 = sub_1C7076CD8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1C7076CD8()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 48);
  if (__swift_getEnumTagSinglePayload(v1, 1, *(v0 + 56)) == 1)
  {
    sub_1C6FD7FC8(v1, &qword_1EC216748);
    sub_1C75504FC();

    v2 = OUTLINED_FUNCTION_60_4();

    return v3(v2);
  }

  else
  {
    OUTLINED_FUNCTION_8_15();
    OUTLINED_FUNCTION_457();
    sub_1C7080C2C();
    OUTLINED_FUNCTION_0_30();
    sub_1C707E638(v5, v6);
    OUTLINED_FUNCTION_65_6();
    OUTLINED_FUNCTION_21_16();
    swift_willThrow();
    OUTLINED_FUNCTION_2_17();
    sub_1C7080E04();

    OUTLINED_FUNCTION_43();

    return v7();
  }
}

uint64_t sub_1C7076E28()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C7076E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 96) = v15;
  *(v9 + 104) = v8;
  *(v9 + 80) = v13;
  *(v9 + 64) = a7;
  *(v9 + 72) = a8;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 112) = type metadata accessor for SafetyError(0);
  *(v9 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216748);
  *(v9 + 128) = swift_task_alloc();
  *(v9 + 136) = swift_task_alloc();
  *(v9 + 144) = swift_task_alloc();
  *(v9 + 152) = swift_task_alloc();
  *(v9 + 160) = swift_task_alloc();
  *(v9 + 168) = swift_task_alloc();
  *(v9 + 176) = swift_task_alloc();
  *(v9 + 184) = swift_task_alloc();
  v10 = sub_1C754F38C();
  *(v9 + 192) = v10;
  *(v9 + 200) = *(v10 - 8);
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 299) = *v14;

  return MEMORY[0x1EEE6DFA0](sub_1C707703C, v8, 0);
}

uint64_t sub_1C707703C()
{
  OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_75_1();
  v1 = *(v0 + 104);
  __swift_project_boxed_opaque_existential_1(*(v0 + 96), *(*(v0 + 96) + 24));
  sub_1C754F1CC();
  *(v0 + 216) = OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_logger;
  sub_1C75504FC();
  v2 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_103_0();

  if (OUTLINED_FUNCTION_200())
  {
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_198();
    *(v1 + 4) = OUTLINED_FUNCTION_64_5(4.9654e-34, v3);
    OUTLINED_FUNCTION_67(&dword_1C6F5C000, v4, v5, "User prompt for checking safety: %{sensitive}s");
    OUTLINED_FUNCTION_56_2();
    OUTLINED_FUNCTION_10_1();
  }

  *(v0 + 296) = *(v0 + 299);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 224) = v6;
  *v6 = v7;
  v6[1] = sub_1C707719C;
  OUTLINED_FUNCTION_239_0();

  return sub_1C70760C0(v8, v9, v10, v11, v12);
}

uint64_t sub_1C707719C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 232) = v0;

  v7 = *(v3 + 104);
  if (v0)
  {
    v8 = sub_1C7077EFC;
  }

  else
  {
    v8 = sub_1C707729C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1C707729C()
{
  OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_75_1();
  v2 = *(v0 + 176);
  sub_1C6FD7F70();
  OUTLINED_FUNCTION_112(v2);
  if (!v3)
  {
    sub_1C6FD7F70();
    OUTLINED_FUNCTION_66_2();
    if ((swift_getEnumCaseMultiPayload() | 2) == 3)
    {
      v4 = *(v0 + 176);
      OUTLINED_FUNCTION_2_17();
      sub_1C7080E04();
      sub_1C6FD7FC8(v4, &qword_1EC216748);
      sub_1C75504FC();
      v5 = sub_1C754FEEC();
      sub_1C75511BC();
      OUTLINED_FUNCTION_103_0();

      if (OUTLINED_FUNCTION_200())
      {
        OUTLINED_FUNCTION_41_0();
        OUTLINED_FUNCTION_17_6();
        OUTLINED_FUNCTION_198();
        *(v1 + 4) = OUTLINED_FUNCTION_64_5(4.9654e-34, v6);
        OUTLINED_FUNCTION_67(&dword_1C6F5C000, v7, v8, "Safety rejected the prompt, trying without grounded names: %{sensitive}s");
        OUTLINED_FUNCTION_56_2();
        OUTLINED_FUNCTION_10_1();
      }

      *(v0 + 297) = *(v0 + 299);
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v0 + 240) = v9;
      *v9 = v10;
      v9[1] = sub_1C7077510;
      OUTLINED_FUNCTION_239_0();

      return sub_1C70760C0(v11, v12, v13, v14, v15);
    }

    OUTLINED_FUNCTION_2_17();
    sub_1C7080E04();
  }

  sub_1C6FD7FC8(*(v0 + 176), &qword_1EC216748);
  OUTLINED_FUNCTION_175();
  v18 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_103_0();

  if (OUTLINED_FUNCTION_200())
  {
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_198();
    *(v1 + 4) = OUTLINED_FUNCTION_64_5(4.9654e-34, v19);
    OUTLINED_FUNCTION_67(&dword_1C6F5C000, v20, v21, "User prompt for checking characters: %{sensitive}s");
    OUTLINED_FUNCTION_56_2();
    OUTLINED_FUNCTION_10_1();
  }

  v22 = swift_task_alloc();
  *(v0 + 272) = v22;
  *v22 = v0;
  OUTLINED_FUNCTION_23_13(v22);
  OUTLINED_FUNCTION_239_0();

  return sub_1C7076540(v23, v24, v25);
}

uint64_t sub_1C7077510()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 248) = v0;

  v7 = *(v3 + 104);
  if (v0)
  {
    v8 = sub_1C7077FC0;
  }

  else
  {
    v8 = sub_1C7077610;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1C7077610()
{
  OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_75_1();
  v1 = *(v0 + 152);
  OUTLINED_FUNCTION_109_0();
  sub_1C6FD7FC8(v2, v3);
  v4 = OUTLINED_FUNCTION_90();
  sub_1C707DD50(v4, v5);
  OUTLINED_FUNCTION_43_2();
  sub_1C6FD7F70();
  OUTLINED_FUNCTION_48_1(v1);
  if (!v6)
  {
    sub_1C6FD7F70();
    OUTLINED_FUNCTION_66_2();
    if ((swift_getEnumCaseMultiPayload() | 2) == 3)
    {
      v7 = *(v0 + 152);
      OUTLINED_FUNCTION_2_17();
      sub_1C7080E04();
      sub_1C6FD7FC8(v7, &qword_1EC216748);
      sub_1C75504FC();
      v8 = sub_1C754FEEC();
      sub_1C75511BC();
      OUTLINED_FUNCTION_103_0();

      if (OUTLINED_FUNCTION_200())
      {
        OUTLINED_FUNCTION_41_0();
        OUTLINED_FUNCTION_17_6();
        OUTLINED_FUNCTION_198();
        *(&qword_1EC216748 + 4) = OUTLINED_FUNCTION_64_5(4.9654e-34, v9);
        OUTLINED_FUNCTION_67(&dword_1C6F5C000, v10, v11, "Safety rejected the prompt, trying without grounded names and locations: %{sensitive}s");
        OUTLINED_FUNCTION_56_2();
        OUTLINED_FUNCTION_10_1();
      }

      *(v0 + 298) = *(v0 + 299);
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v0 + 256) = v12;
      *v12 = v13;
      v12[1] = sub_1C70778A4;
      OUTLINED_FUNCTION_239_0();

      return sub_1C70760C0(v14, v15, v16, v17, v18);
    }

    OUTLINED_FUNCTION_2_17();
    sub_1C7080E04();
  }

  sub_1C6FD7FC8(*(v0 + 152), &qword_1EC216748);
  OUTLINED_FUNCTION_175();
  v21 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_103_0();

  if (OUTLINED_FUNCTION_200())
  {
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_198();
    *(&qword_1EC216748 + 4) = OUTLINED_FUNCTION_64_5(4.9654e-34, v22);
    OUTLINED_FUNCTION_67(&dword_1C6F5C000, v23, v24, "User prompt for checking characters: %{sensitive}s");
    OUTLINED_FUNCTION_56_2();
    OUTLINED_FUNCTION_10_1();
  }

  v25 = swift_task_alloc();
  *(v0 + 272) = v25;
  *v25 = v0;
  OUTLINED_FUNCTION_23_13(v25);
  OUTLINED_FUNCTION_239_0();

  return sub_1C7076540(v26, v27, v28);
}

uint64_t sub_1C70778A4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 264) = v0;

  v7 = *(v3 + 104);
  if (v0)
  {
    v8 = sub_1C707809C;
  }

  else
  {
    v8 = sub_1C70779A4;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1C70779A4()
{
  OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_75_1();
  sub_1C6FD7FC8(*(v0 + 184), &qword_1EC216748);
  v2 = OUTLINED_FUNCTION_90();
  sub_1C707DD50(v2, v3);
  OUTLINED_FUNCTION_175();
  v4 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_103_0();

  if (OUTLINED_FUNCTION_200())
  {
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_198();
    *(v1 + 4) = OUTLINED_FUNCTION_64_5(4.9654e-34, v5);
    OUTLINED_FUNCTION_67(&dword_1C6F5C000, v6, v7, "User prompt for checking characters: %{sensitive}s");
    OUTLINED_FUNCTION_56_2();
    OUTLINED_FUNCTION_10_1();
  }

  v8 = swift_task_alloc();
  *(v0 + 272) = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_23_13(v8);
  OUTLINED_FUNCTION_239_0();

  return sub_1C7076540(v9, v10, v11);
}

uint64_t sub_1C7077AA4()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_20();
  *v5 = v4;
  *(v7 + 280) = v6;
  *(v7 + 288) = v0;

  OUTLINED_FUNCTION_286_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C7077BC0()
{
  v1 = *(v0 + 184);
  if (*(*(v0 + 280) + 16))
  {
    OUTLINED_FUNCTION_0_30();
    sub_1C707E638(v2, v3);
    v4 = OUTLINED_FUNCTION_66_8();
    OUTLINED_FUNCTION_133_3(v4, v5);
    swift_willThrow();
LABEL_8:
    sub_1C6FD7FC8(v1, &qword_1EC216748);
    __swift_project_boxed_opaque_existential_1(*(v0 + 96), *(*(v0 + 96) + 24));
    OUTLINED_FUNCTION_48_8();
    sub_1C754F1AC();
    v17 = OUTLINED_FUNCTION_88_3();
    v18(v17);

    OUTLINED_FUNCTION_43();

    return v19();
  }

  v6 = *(v0 + 128);

  OUTLINED_FUNCTION_66_2();
  sub_1C6FD7F70();
  OUTLINED_FUNCTION_48_1(v6);
  if (!v7)
  {
    v1 = *(v0 + 184);
    OUTLINED_FUNCTION_8_15();
    sub_1C7080C2C();
    OUTLINED_FUNCTION_0_30();
    sub_1C707E638(v15, v16);
    OUTLINED_FUNCTION_86_0();
    OUTLINED_FUNCTION_21_16();
    swift_willThrow();
    OUTLINED_FUNCTION_2_17();
    sub_1C7080E04();
    goto LABEL_8;
  }

  v8 = *(v0 + 128);
  v9 = *(v0 + 96);
  sub_1C6FD7FC8(*(v0 + 184), &qword_1EC216748);
  sub_1C6FD7FC8(v8, &qword_1EC216748);
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_1C75504FC();
  sub_1C754F1AC();
  v10 = OUTLINED_FUNCTION_457();
  v11(v10);

  v12 = OUTLINED_FUNCTION_60_4();

  return v13(v12);
}

uint64_t sub_1C7077EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_17_16();
  v18 = OUTLINED_FUNCTION_88_3();
  v19(v18);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_94_1();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C7077FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_111_0();
  sub_1C6FD7FC8(*(v18 + 184), &qword_1EC216748);
  OUTLINED_FUNCTION_17_16();
  v19 = OUTLINED_FUNCTION_88_3();
  v20(v19);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_94_1();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C707809C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_111_0();
  sub_1C6FD7FC8(*(v18 + 184), &qword_1EC216748);
  OUTLINED_FUNCTION_17_16();
  v19 = OUTLINED_FUNCTION_88_3();
  v20(v19);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_94_1();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C7078178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_111_0();
  sub_1C6FD7FC8(*(v18 + 184), &qword_1EC216748);
  OUTLINED_FUNCTION_17_16();
  v19 = OUTLINED_FUNCTION_88_3();
  v20(v19);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_94_1();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C7078254(uint64_t *a1)
{
  v2 = type metadata accessor for GlobalTrait();
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (![objc_opt_self() useGlobalTraitsV3])
  {
    goto LABEL_5;
  }

  sub_1C7080BB8();
  if (*(v4 + *(v2 + 28)) != 1)
  {
    sub_1C7080E04();
LABEL_5:
    v8 = *a1;
    sub_1C75504FC();
    return v8;
  }

  v5 = v4[1];
  v10[0] = *v4;
  v10[1] = v5;
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
  v6 = v4[2];
  v7 = v4[3];
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](v6, v7);

  v8 = v10[0];
  sub_1C7080E04();
  return v8;
}

uint64_t sub_1C70783BC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  v4 = sub_1C754F38C();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C70784A8, v2, 0);
}

uint64_t sub_1C70784A8()
{
  v18 = v0;
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_25_9(*(v0 + 32));
  OUTLINED_FUNCTION_132();
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    OUTLINED_FUNCTION_217();
    v4 = v16;
    v5 = type metadata accessor for PersonalTrait();
    OUTLINED_FUNCTION_18(v5);
    v1 += (*(v6 + 80) + 32) & ~*(v6 + 80);
    v7 = v0;
    do
    {
      sub_1C708010C(sub_1C7078E94, v17);
      OUTLINED_FUNCTION_243_0();
      if (v8)
      {
        OUTLINED_FUNCTION_317_0();
        v7 = v4;
        v4 = v16;
      }

      OUTLINED_FUNCTION_241_0();
    }

    while (!v9);
  }

  else
  {
    v7 = v0;
  }

  *(v7 + 16) = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  sub_1C703328C();
  OUTLINED_FUNCTION_213_0();
  OUTLINED_FUNCTION_181();
  *(v0 + 80) = v10;
  *(v0 + 88) = v3;
  if (qword_1EDD0AFA8 != -1)
  {
    OUTLINED_FUNCTION_57_2();
  }

  v11 = type metadata accessor for TextSanitizer();
  __swift_project_value_buffer(v11, &unk_1EDD28C40);
  OUTLINED_FUNCTION_135_3();
  *(v1 + 112) = v12;
  v13 = swift_task_alloc();
  *(v0 + 96) = v13;
  *v13 = v0;
  v13[1] = sub_1C70786A8;
  OUTLINED_FUNCTION_28_6();
  OUTLINED_FUNCTION_258_0();

  return SafetyBundle.scrub(_:useCaseIdentifier:)();
}

uint64_t sub_1C70786A8()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_42_9();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    v7 = sub_1C70787CC;
    v8 = 0;
  }

  else
  {
    v9 = *(v3 + 40);

    v7 = sub_1C7080ED0;
    v8 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1C70787E0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  v4 = sub_1C754F38C();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C70788CC, v2, 0);
}

uint64_t sub_1C70788CC()
{
  v18 = v0;
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_25_9(*(v0 + 32));
  OUTLINED_FUNCTION_132();
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    OUTLINED_FUNCTION_217();
    v4 = v16;
    v5 = type metadata accessor for GlobalTrait();
    OUTLINED_FUNCTION_18(v5);
    v1 += (*(v6 + 80) + 32) & ~*(v6 + 80);
    v7 = v0;
    do
    {
      sub_1C708010C(sub_1C7078EE8, v17);
      OUTLINED_FUNCTION_243_0();
      if (v8)
      {
        OUTLINED_FUNCTION_317_0();
        v7 = v4;
        v4 = v16;
      }

      OUTLINED_FUNCTION_241_0();
    }

    while (!v9);
  }

  else
  {
    v7 = v0;
  }

  *(v7 + 16) = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  sub_1C703328C();
  OUTLINED_FUNCTION_213_0();
  OUTLINED_FUNCTION_181();
  *(v0 + 80) = v10;
  *(v0 + 88) = v3;
  if (qword_1EDD0AFA8 != -1)
  {
    OUTLINED_FUNCTION_57_2();
  }

  v11 = type metadata accessor for TextSanitizer();
  __swift_project_value_buffer(v11, &unk_1EDD28C40);
  OUTLINED_FUNCTION_135_3();
  *(v1 + 112) = v12;
  v13 = swift_task_alloc();
  *(v0 + 96) = v13;
  *v13 = v0;
  v13[1] = sub_1C7078ACC;
  OUTLINED_FUNCTION_28_6();
  OUTLINED_FUNCTION_258_0();

  return SafetyBundle.scrub(_:useCaseIdentifier:)();
}

uint64_t sub_1C7078ACC()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_42_9();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    v7 = sub_1C7078C98;
    v8 = 0;
  }

  else
  {
    v9 = *(v3 + 40);

    v7 = sub_1C7078BF0;
    v8 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1C7078BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  __swift_project_boxed_opaque_existential_1(*(v10 + 32), *(*(v10 + 32) + 24));
  OUTLINED_FUNCTION_300_0();
  sub_1C75504FC();
  OUTLINED_FUNCTION_95_1();
  sub_1C754F1AC();
  v11 = OUTLINED_FUNCTION_39_1();
  v12(v11);

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_88_0();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C7078CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_309();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_115_0();
  a18 = v20;
  v24 = v20[13];
  sub_1C75504FC();
  v25 = v24;
  v26 = sub_1C754FEEC();
  v27 = sub_1C755119C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = v20[13];
    v30 = v20[10];
    v29 = v20[11];
    v31 = OUTLINED_FUNCTION_23_1();
    swift_slowAlloc();
    v32 = OUTLINED_FUNCTION_17_6();
    a9 = v32;
    *v31 = 136380931;
    v33 = sub_1C6F765A4(v30, v29, &a9);

    *(v31 + 4) = v33;
    *(v31 + 12) = 2112;
    v34 = v28;
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 14) = v35;
    *v21 = v35;
    _os_log_impl(&dword_1C6F5C000, v26, v27, "Batch validation of all traits at once failed: %{private}s, with error: %@", v31, 0x16u);
    sub_1C6FD7FC8(v21, &qword_1EC215190);
    OUTLINED_FUNCTION_10_1();
    __swift_destroy_boxed_opaque_existential_1(v32);
    OUTLINED_FUNCTION_37();
    MEMORY[0x1CCA5F8E0](v31, -1, -1);
  }

  else
  {
  }

  swift_willThrow();
  v36 = OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_0_22(v36, v37);
  sub_1C754F1AC();
  v38 = OUTLINED_FUNCTION_457();
  v39(v38);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_20_3();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
}

uint64_t sub_1C7078E94(uint64_t *a1)
{
  [objc_opt_self() useGlobalTraitsV3];
  v2 = *a1;
  sub_1C75504FC();
  return v2;
}

uint64_t sub_1C7078EE8(uint64_t *a1)
{
  v2 = type metadata accessor for GlobalTrait();
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (![objc_opt_self() useGlobalTraitsV3])
  {
    goto LABEL_5;
  }

  sub_1C7080BB8();
  if (*(v4 + *(v2 + 28)) != 1)
  {
    sub_1C7080E04();
LABEL_5:
    v8 = *a1;
    sub_1C75504FC();
    return v8;
  }

  v5 = v4[1];
  v10[0] = *v4;
  v10[1] = v5;
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
  v6 = v4[2];
  v7 = v4[3];
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](v6, v7);

  v8 = v10[0];
  sub_1C7080E04();
  return v8;
}

uint64_t sub_1C7079058(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  v4 = sub_1C754F38C();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7079144, v2, 0);
}

uint64_t sub_1C7079144()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_321_0();
  OUTLINED_FUNCTION_221_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216860);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2165B8);
  OUTLINED_FUNCTION_6_23();
  sub_1C707E638(v1, v2);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_281_0(v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 88) = v4;
  *v4 = v5;
  v4[1] = sub_1C7079270;
  OUTLINED_FUNCTION_139_2();
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_88_0();

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1C7079270()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_210();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C7079384(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  v4 = sub_1C754F38C();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7079470, v2, 0);
}

uint64_t sub_1C7079470()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_321_0();
  OUTLINED_FUNCTION_221_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216848);
  OUTLINED_FUNCTION_6_23();
  sub_1C707E638(v1, v2);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_281_0(v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 88) = v4;
  *v4 = v5;
  v4[1] = sub_1C707959C;
  OUTLINED_FUNCTION_139_2();
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_88_0();

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1C707959C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_210();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C70796B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_38_6(*(v10 + 32));
  v11 = OUTLINED_FUNCTION_39_1();
  v12(v11);

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_88_0();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C707973C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216868);
  v4[13] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216870);
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v7 = *(type metadata accessor for PersonalTrait() - 8);
  v4[17] = v7;
  v4[18] = *(v7 + 64);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7079904, a3, 0);
}

uint64_t sub_1C7079904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (*(v10[10] + 16))
  {
    v13 = OUTLINED_FUNCTION_78_5();
    v47 = v13 - 8;
    do
    {
      v14 = v10[22];
      v16 = v10[11];
      v15 = v10[12];
      OUTLINED_FUNCTION_84();
      __swift_storeEnumTagSinglePayload(v17, v18, v19, v13);
      OUTLINED_FUNCTION_10_18();
      OUTLINED_FUNCTION_275_0();
      sub_1C7080BB8();
      OUTLINED_FUNCTION_228_0();
      v20 = swift_allocObject();
      OUTLINED_FUNCTION_283_0(v20);
      OUTLINED_FUNCTION_27_11();
      sub_1C7080C2C();
      *(v11 + v50) = v16;
      *(v11 + v13) = v15;
      OUTLINED_FUNCTION_255_0();
      OUTLINED_FUNCTION_320();

      v21 = v10[22];
      if (v14 == 1)
      {
        v22 = OUTLINED_FUNCTION_43_2();
        sub_1C6FD7FC8(v22, v23);
      }

      else
      {
        sub_1C7550D4C();
        (*(*(v13 - 8) + 8))(v21, v13);
      }

      if (*v12)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v24 = sub_1C7550C8C();
        v26 = v25;
        swift_unknownObjectRelease();
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      OUTLINED_FUNCTION_30();
      v27 = swift_allocObject();
      *(v27 + 16) = &unk_1C7565648;
      *(v27 + 24) = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216860);
      v28 = v26 | v24;
      if (v26 | v24)
      {
        v28 = v48;
        *v48 = 0;
        v48[1] = 0;
        v10[4] = v24;
        v10[5] = v26;
      }

      OUTLINED_FUNCTION_236_0(v28, v46, v47, v48, v49, v50, v51, v52, v53, v54);
      OUTLINED_FUNCTION_312_0();

      sub_1C6FD7FC8(v24, &qword_1EC2158F8);
      OUTLINED_FUNCTION_265_0();
    }

    while (!v29);
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216860);
  OUTLINED_FUNCTION_311_0(v30);
  OUTLINED_FUNCTION_6_23();
  v33 = sub_1C707E638(v31, v32);
  v34 = MEMORY[0x1E69E7CC0];
  v10[25] = v33;
  v10[26] = v34;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v10[27] = v35;
  *v35 = v36;
  v37 = OUTLINED_FUNCTION_30_9(v35);

  return MEMORY[0x1EEE6D8A8](v37, v38, v39, v40, v41, v42, v43, v44, a9, a10);
}

uint64_t sub_1C7079BF4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C7079CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11 = v10[24];
  v12 = v10[13];
  OUTLINED_FUNCTION_112(v12);
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_169_1();
    v15(v14);

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_88_0();

    return v18(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
  }

  else
  {
    v25 = *(v12 + *(v11 + 48));
    OUTLINED_FUNCTION_27_11();
    sub_1C7080C2C();
    if (v25)
    {
      OUTLINED_FUNCTION_10_18();
      sub_1C7080BB8();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v10[26];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v40 = OUTLINED_FUNCTION_92();
        sub_1C6FB1D20(v40, v41, v42, v43);
        v27 = v44;
      }

      v29 = *(v27 + 16);
      v28 = *(v27 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1C6FB1D20(v28 > 1, v29 + 1, 1, v27);
        v27 = v45;
      }

      OUTLINED_FUNCTION_13_17();
      sub_1C7080E04();
      *(v27 + 16) = v29 + 1;
      OUTLINED_FUNCTION_191();
      OUTLINED_FUNCTION_27_11();
      sub_1C7080C2C();
    }

    else
    {
      OUTLINED_FUNCTION_13_17();
      sub_1C7080E04();
      v27 = v10[26];
    }

    v10[26] = v27;
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v10[27] = v30;
    *v30 = v31;
    OUTLINED_FUNCTION_30_9(v30);
    OUTLINED_FUNCTION_88_0();

    return MEMORY[0x1EEE6D8A8](v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
  }
}

uint64_t sub_1C7079EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216850);
  v4[13] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216858);
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v7 = *(type metadata accessor for GlobalTrait() - 8);
  v4[17] = v7;
  v4[18] = *(v7 + 64);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C707A0A4, a3, 0);
}

uint64_t sub_1C707A0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (*(v10[10] + 16))
  {
    v13 = OUTLINED_FUNCTION_78_5();
    v47 = v13 - 8;
    do
    {
      v14 = v10[22];
      v16 = v10[11];
      v15 = v10[12];
      OUTLINED_FUNCTION_84();
      __swift_storeEnumTagSinglePayload(v17, v18, v19, v13);
      OUTLINED_FUNCTION_9_16();
      OUTLINED_FUNCTION_275_0();
      sub_1C7080BB8();
      OUTLINED_FUNCTION_228_0();
      v20 = swift_allocObject();
      OUTLINED_FUNCTION_283_0(v20);
      OUTLINED_FUNCTION_26_11();
      sub_1C7080C2C();
      *(v11 + v50) = v16;
      *(v11 + v13) = v15;
      OUTLINED_FUNCTION_255_0();
      OUTLINED_FUNCTION_320();

      v21 = v10[22];
      if (v14 == 1)
      {
        v22 = OUTLINED_FUNCTION_43_2();
        sub_1C6FD7FC8(v22, v23);
      }

      else
      {
        sub_1C7550D4C();
        (*(*(v13 - 8) + 8))(v21, v13);
      }

      if (*v12)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v24 = sub_1C7550C8C();
        v26 = v25;
        swift_unknownObjectRelease();
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      OUTLINED_FUNCTION_30();
      v27 = swift_allocObject();
      *(v27 + 16) = &unk_1C75655F0;
      *(v27 + 24) = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216840);
      v28 = v26 | v24;
      if (v26 | v24)
      {
        v28 = v48;
        *v48 = 0;
        v48[1] = 0;
        v10[4] = v24;
        v10[5] = v26;
      }

      OUTLINED_FUNCTION_236_0(v28, v46, v47, v48, v49, v50, v51, v52, v53, v54);
      OUTLINED_FUNCTION_312_0();

      sub_1C6FD7FC8(v24, &qword_1EC2158F8);
      OUTLINED_FUNCTION_265_0();
    }

    while (!v29);
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216840);
  OUTLINED_FUNCTION_311_0(v30);
  OUTLINED_FUNCTION_6_23();
  v33 = sub_1C707E638(v31, v32);
  v34 = MEMORY[0x1E69E7CC0];
  v10[25] = v33;
  v10[26] = v34;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v10[27] = v35;
  *v35 = v36;
  v37 = OUTLINED_FUNCTION_30_9(v35);

  return MEMORY[0x1EEE6D8A8](v37, v38, v39, v40, v41, v42, v43, v44, a9, a10);
}

uint64_t sub_1C707A394()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C707A48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11 = v10[24];
  v12 = v10[13];
  OUTLINED_FUNCTION_112(v12);
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_169_1();
    v15(v14);

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_88_0();

    return v18(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
  }

  else
  {
    v25 = *(v12 + *(v11 + 48));
    OUTLINED_FUNCTION_26_11();
    sub_1C7080C2C();
    if (v25)
    {
      OUTLINED_FUNCTION_9_16();
      sub_1C7080BB8();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v10[26];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v40 = OUTLINED_FUNCTION_92();
        sub_1C6FB1D60(v40, v41, v42, v43);
        v27 = v44;
      }

      v29 = *(v27 + 16);
      v28 = *(v27 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1C6FB1D60(v28 > 1, v29 + 1, 1, v27);
        v27 = v45;
      }

      OUTLINED_FUNCTION_12_18();
      sub_1C7080E04();
      *(v27 + 16) = v29 + 1;
      OUTLINED_FUNCTION_191();
      OUTLINED_FUNCTION_26_11();
      sub_1C7080C2C();
    }

    else
    {
      OUTLINED_FUNCTION_12_18();
      sub_1C7080E04();
      v27 = v10[26];
    }

    v10[26] = v27;
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v10[27] = v30;
    *v30 = v31;
    OUTLINED_FUNCTION_30_9(v30);
    OUTLINED_FUNCTION_88_0();

    return MEMORY[0x1EEE6D8A8](v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
  }
}

uint64_t sub_1C707A67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  type metadata accessor for PersonalTrait();
  v5[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C707A710, 0, 0);
}

uint64_t sub_1C707A710()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  [objc_opt_self() useGlobalTraitsV3];
  if (qword_1EDD0AFA8 != -1)
  {
    OUTLINED_FUNCTION_57_2();
  }

  v2 = type metadata accessor for TextSanitizer();
  __swift_project_value_buffer(v2, &unk_1EDD28C40);
  OUTLINED_FUNCTION_135_3();
  *(v1 + 64) = v3;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1C707A814;
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_244_0();

  return SafetyBundle.scrub(_:useCaseIdentifier:)();
}

uint64_t sub_1C707A814()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C707A918()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_61_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216860);
  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_57_0();
  sub_1C7080BB8();
  OUTLINED_FUNCTION_319_0();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_244_0();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1C707A9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_94_0();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_115_0();
  a18 = v20;
  v24 = *(v20 + 56);
  v25 = OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_logger;
  OUTLINED_FUNCTION_10_18();
  sub_1C7080BB8();
  v26 = v24;
  v27 = sub_1C754FEEC();
  sub_1C75511BC();

  v28 = OUTLINED_FUNCTION_262_0();
  v29 = *(v20 + 56);
  v30 = *(v20 + 40);
  if (v28)
  {
    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_160_1();
    v31 = OUTLINED_FUNCTION_15_5();
    a9 = v31;
    *v25 = 136380931;
    v32 = *v30;
    v33 = v30[1];
    sub_1C75504FC();
    OUTLINED_FUNCTION_13_17();
    sub_1C7080E04();
    v34 = sub_1C6F765A4(v32, v33, &a9);

    *(v25 + 4) = v34;
    OUTLINED_FUNCTION_162_1();
    v35 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_234_0(v35);
    OUTLINED_FUNCTION_91_3(&dword_1C6F5C000, v36, v37, "Trait %{private}s found unsafe: %@");
    sub_1C6FD7FC8(v21, &qword_1EC215190);
    OUTLINED_FUNCTION_79();
    __swift_destroy_boxed_opaque_existential_1(v31);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_23_3();
  }

  else
  {

    OUTLINED_FUNCTION_13_17();
    sub_1C7080E04();
  }

  OUTLINED_FUNCTION_61_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216860);
  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_57_0();
  sub_1C7080BB8();
  OUTLINED_FUNCTION_319_0();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
}

uint64_t sub_1C707AB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  type metadata accessor for GlobalTrait();
  v5[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C707ABE0, 0, 0);
}

uint64_t sub_1C707ABE0()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  sub_1C7078254(*(v0 + 24));
  *(v0 + 48) = v2;
  if (qword_1EDD0AFA8 != -1)
  {
    OUTLINED_FUNCTION_57_2();
  }

  v3 = type metadata accessor for TextSanitizer();
  __swift_project_value_buffer(v3, &unk_1EDD28C40);
  OUTLINED_FUNCTION_135_3();
  *(v1 + 72) = v4;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_298_0(v5);
  *v6 = v7;
  v6[1] = sub_1C707ACD4;
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_244_0();

  return SafetyBundle.scrub(_:useCaseIdentifier:)();
}

uint64_t sub_1C707ACD4()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
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

uint64_t sub_1C707ADFC()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_61_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216840);
  OUTLINED_FUNCTION_9_16();
  OUTLINED_FUNCTION_57_0();
  sub_1C7080BB8();
  OUTLINED_FUNCTION_319_0();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_244_0();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1C707AE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_94_0();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_115_0();
  a18 = v20;
  v24 = *(v20 + 64);
  v25 = OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_logger;
  OUTLINED_FUNCTION_9_16();
  sub_1C7080BB8();
  v26 = v24;
  v27 = sub_1C754FEEC();
  sub_1C75511BC();

  v28 = OUTLINED_FUNCTION_262_0();
  v29 = *(v20 + 64);
  v30 = *(v20 + 40);
  if (v28)
  {
    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_160_1();
    v31 = OUTLINED_FUNCTION_15_5();
    a9 = v31;
    *v25 = 136380931;
    v32 = *v30;
    v33 = v30[1];
    sub_1C75504FC();
    OUTLINED_FUNCTION_12_18();
    sub_1C7080E04();
    v34 = sub_1C6F765A4(v32, v33, &a9);

    *(v25 + 4) = v34;
    OUTLINED_FUNCTION_162_1();
    v35 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_234_0(v35);
    OUTLINED_FUNCTION_91_3(&dword_1C6F5C000, v36, v37, "Trait %{private}s found unsafe: %@");
    sub_1C6FD7FC8(v21, &qword_1EC215190);
    OUTLINED_FUNCTION_79();
    __swift_destroy_boxed_opaque_existential_1(v31);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_23_3();
  }

  else
  {

    OUTLINED_FUNCTION_12_18();
    sub_1C7080E04();
  }

  OUTLINED_FUNCTION_61_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216840);
  OUTLINED_FUNCTION_9_16();
  OUTLINED_FUNCTION_57_0();
  sub_1C7080BB8();
  OUTLINED_FUNCTION_319_0();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
}

uint64_t sub_1C707B030(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1C707B0DC;

  return sub_1C70783BC(a1, a2);
}

uint64_t sub_1C707B0DC()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_286_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_270();

    return v11(v10);
  }
}

uint64_t sub_1C707B204()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 48);
  v2 = sub_1C754FEEC();
  sub_1C755119C();

  if (OUTLINED_FUNCTION_200())
  {
    OUTLINED_FUNCTION_41_0();
    v3 = OUTLINED_FUNCTION_163_0();
    OUTLINED_FUNCTION_261_0(5.7779e-34);
    v4 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_232_0(v4);
    OUTLINED_FUNCTION_89(&dword_1C6F5C000, v5, v6, "Batch traits validation failed: %@, validating them individually");
    sub_1C6FD7FC8(v3, &qword_1EC215190);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_37();
  }

  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_298_0(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_41_7(v8);
  OUTLINED_FUNCTION_244_0();

  return sub_1C7079058(v10, v11);
}

uint64_t sub_1C707B328()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;
  *(v6 + 64) = v5;

  v7 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C707B420(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1C707B4CC;

  return sub_1C70787E0(a1, a2);
}

uint64_t sub_1C707B4CC()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_286_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_270();

    return v11(v10);
  }
}

uint64_t sub_1C707B5F4()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 48);
  v2 = sub_1C754FEEC();
  sub_1C755119C();

  if (OUTLINED_FUNCTION_200())
  {
    OUTLINED_FUNCTION_41_0();
    v3 = OUTLINED_FUNCTION_163_0();
    OUTLINED_FUNCTION_261_0(5.7779e-34);
    v4 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_232_0(v4);
    OUTLINED_FUNCTION_89(&dword_1C6F5C000, v5, v6, "Batch traits validation failed: %@, validating them individually");
    sub_1C6FD7FC8(v3, &qword_1EC215190);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_37();
  }

  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_298_0(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_41_7(v8);
  OUTLINED_FUNCTION_244_0();

  return sub_1C7079384(v10, v11);
}

uint64_t sub_1C707B718()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;
  *(v6 + 64) = v5;

  v7 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C707B810()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_116();

  return v1();
}

uint64_t sub_1C707B86C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_1C754F38C();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C707B930, v2, 0);
}

uint64_t sub_1C707B930()
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_25_9(*(v0 + 40));
  OUTLINED_FUNCTION_132();
  v2 = *(v1 + 16);
  *(v0 + 80) = v2;
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = *(v0 + 32);
    v17 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v3 = v17;
    v5 = *(v17 + 16);
    v6 = 16 * v5;
    v7 = (v4 + 48);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      v1 = v5 + 1;
      v10 = *(v17 + 24);
      sub_1C75504FC();
      if (v5 >= v10 >> 1)
      {
        sub_1C6F7ED9C();
      }

      *(v17 + 16) = v1;
      v11 = v17 + v6;
      *(v11 + 32) = v9;
      *(v11 + 40) = v8;
      v6 += 16;
      v7 += 24;
      ++v5;
      --v2;
    }

    while (v2);
  }

  *(v0 + 16) = v3;
  *(v0 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  *(v0 + 96) = sub_1C703328C();
  sub_1C75505FC();
  OUTLINED_FUNCTION_181();
  *(v0 + 104) = v1;
  if (qword_1EDD0AF88 != -1)
  {
    OUTLINED_FUNCTION_55_5();
  }

  v12 = type metadata accessor for TextSanitizer();
  *(v0 + 112) = v12;
  __swift_project_value_buffer(v12, &unk_1EDD28BF8);
  OUTLINED_FUNCTION_208_0();
  *(v0 + 160) = v13;
  v14 = swift_task_alloc();
  *(v0 + 120) = v14;
  *v14 = v0;
  v14[1] = sub_1C707BB1C;
  OUTLINED_FUNCTION_28_6();
  OUTLINED_FUNCTION_44();

  return SafetyBundle.scrub(_:useCaseIdentifier:)();
}

uint64_t sub_1C707BB1C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_42_9();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {

    v7 = sub_1C707BDE8;
    v8 = 0;
  }

  else
  {
    v9 = *(v3 + 48);

    v7 = sub_1C707BC48;
    v8 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1C707BC48()
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v2 = MEMORY[0x1E69E7CC0];
  if (*(v0 + 80))
  {
    v3 = *(v0 + 32);
    v16 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v4 = 0;
    v2 = v16;
    v5 = *(v16 + 16);
    v6 = 16 * v5;
    v7 = (v3 + 64);
    do
    {
      v8 = *(v7 - 1);
      v1 = *v7;
      v9 = *(v16 + 24);
      sub_1C75504FC();
      if (v5 >= v9 >> 1)
      {
        sub_1C6F7ED9C();
      }

      v10 = *(v0 + 80);
      ++v4;
      *(v16 + 16) = v5 + 1;
      v11 = v16 + v6;
      *(v11 + 32) = v8;
      *(v11 + 40) = v1;
      v6 += 16;
      v7 += 24;
      ++v5;
    }

    while (v4 != v10);
  }

  *(v0 + 24) = v2;
  sub_1C75505FC();
  OUTLINED_FUNCTION_181();
  *(v0 + 136) = v1;
  if (qword_1EDD0AF80 != -1)
  {
    OUTLINED_FUNCTION_54_0();
  }

  __swift_project_value_buffer(*(v0 + 112), &unk_1EDD28BE0);
  OUTLINED_FUNCTION_208_0();
  *(v0 + 161) = v12;
  v13 = swift_task_alloc();
  *(v0 + 144) = v13;
  *v13 = v0;
  v13[1] = sub_1C707BF3C;
  OUTLINED_FUNCTION_28_6();
  OUTLINED_FUNCTION_44();

  return SafetyBundle.scrub(_:useCaseIdentifier:)();
}

uint64_t sub_1C707BDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11 = *(v10 + 128);
  v12 = sub_1C754FEEC();
  sub_1C755119C();

  if (OUTLINED_FUNCTION_200())
  {
    OUTLINED_FUNCTION_41_0();
    v13 = OUTLINED_FUNCTION_163_0();
    OUTLINED_FUNCTION_261_0(5.7779e-34);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_232_0(v14);
    OUTLINED_FUNCTION_89(&dword_1C6F5C000, v15, v16, "Batch validation of song ids failed with error: %@");
    sub_1C6FD7FC8(v13, &qword_1EC215190);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_37();
  }

  swift_willThrow();
  OUTLINED_FUNCTION_80_0(*(v10 + 40), *(*(v10 + 40) + 24));
  OUTLINED_FUNCTION_109_0();
  sub_1C754F1AC();
  v17 = OUTLINED_FUNCTION_49_3();
  v18(v17);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_1C707BF3C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_42_9();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 152) = v0;

  if (v0)
  {

    v7 = sub_1C707C110;
    v8 = 0;
  }

  else
  {
    v9 = *(v3 + 48);

    v7 = sub_1C707C068;
    v8 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1C707C068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  __swift_project_boxed_opaque_existential_1(*(v10 + 40), *(*(v10 + 40) + 24));
  OUTLINED_FUNCTION_300_0();
  sub_1C75504FC();
  OUTLINED_FUNCTION_95_1();
  sub_1C754F1AC();
  v11 = OUTLINED_FUNCTION_39_1();
  v12(v11);

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_88_0();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C707C124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11 = *(v10 + 152);
  v12 = sub_1C754FEEC();
  sub_1C755119C();

  if (OUTLINED_FUNCTION_200())
  {
    OUTLINED_FUNCTION_41_0();
    v13 = OUTLINED_FUNCTION_163_0();
    OUTLINED_FUNCTION_261_0(5.7779e-34);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_232_0(v14);
    OUTLINED_FUNCTION_89(&dword_1C6F5C000, v15, v16, "Batch validation of song titles failed with error: %@");
    sub_1C6FD7FC8(v13, &qword_1EC215190);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_37();
  }

  swift_willThrow();
  OUTLINED_FUNCTION_80_0(*(v10 + 40), *(*(v10 + 40) + 24));
  OUTLINED_FUNCTION_109_0();
  sub_1C754F1AC();
  v17 = OUTLINED_FUNCTION_49_3();
  v18(v17);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_1C707C264(const void *a1, uint64_t a2)
{
  v3[75] = v2;
  v3[74] = a2;
  v5 = sub_1C754F38C();
  v3[76] = v5;
  v3[77] = *(v5 - 8);
  v3[78] = swift_task_alloc();
  memcpy(v3 + 2, a1, 0xC0uLL);

  return MEMORY[0x1EEE6DFA0](sub_1C707C33C, v2, 0);
}

uint64_t sub_1C707C33C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_25_9(*(v0 + 592));
  OUTLINED_FUNCTION_132();
  if (qword_1EDD0AF88 != -1)
  {
    OUTLINED_FUNCTION_55_5();
  }

  v1 = type metadata accessor for TextSanitizer();
  *(v0 + 632) = v1;
  __swift_project_value_buffer(v1, &unk_1EDD28BF8);
  v2 = *(v0 + 32);
  *(v0 + 640) = *(v0 + 24);
  *(v0 + 648) = v2;
  *(v0 + 704) = 3;
  v3 = swift_task_alloc();
  *(v0 + 656) = v3;
  *v3 = v0;
  v3[1] = sub_1C707C44C;
  OUTLINED_FUNCTION_28_6();

  return SafetyBundle.scrub(_:useCaseIdentifier:)();
}

uint64_t sub_1C707C44C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_42_9();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 664) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_287_0();
  }

  else
  {

    v7 = OUTLINED_FUNCTION_137_2();
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1C707C560()
{
  OUTLINED_FUNCTION_49_0();
  if (qword_1EDD0AF80 != -1)
  {
    OUTLINED_FUNCTION_54_0();
  }

  __swift_project_value_buffer(*(v0 + 632), &unk_1EDD28BE0);
  v1 = *(v0 + 48);
  *(v0 + 672) = *(v0 + 40);
  *(v0 + 680) = v1;
  *(v0 + 705) = 3;
  v2 = swift_task_alloc();
  *(v0 + 688) = v2;
  *v2 = v0;
  v2[1] = sub_1C707C648;
  OUTLINED_FUNCTION_28_6();

  return SafetyBundle.scrub(_:useCaseIdentifier:)();
}

uint64_t sub_1C707C648()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_42_9();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 696) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_287_0();
  }

  else
  {

    v7 = OUTLINED_FUNCTION_137_2();
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1C707C770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_115_0();
  v14 = *(v12 + 664);
  v15 = OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_logger;
  sub_1C7080654(v12 + 16, v12 + 208);
  v16 = v14;
  v17 = sub_1C754FEEC();
  sub_1C755117C();
  sub_1C70806B0(v12 + 16);

  v18 = OUTLINED_FUNCTION_262_0();
  v19 = *(v12 + 664);
  if (v18)
  {
    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_160_1();
    a10 = OUTLINED_FUNCTION_15_5();
    *(v15 + 4) = OUTLINED_FUNCTION_178(4.8151e-34, a10);
    OUTLINED_FUNCTION_162_1();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_234_0(v20);
    OUTLINED_FUNCTION_91_3(&dword_1C6F5C000, v21, v22, "[Warning-Music] Song id=%s rejected: %@");
    sub_1C6FD7FC8(v13, &qword_1EC215190);
    OUTLINED_FUNCTION_79();
    __swift_destroy_boxed_opaque_existential_1(a10);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_23_3();
  }

  else
  {
  }

  OUTLINED_FUNCTION_0_22(*(v12 + 592), *(*(v12 + 592) + 24));
  OUTLINED_FUNCTION_95_1();
  sub_1C754F1AC();
  v23 = OUTLINED_FUNCTION_57_0();
  v24(v23);

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_20_3();

  return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_1C707C8FC()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_0_22(*(v0 + 592), *(*(v0 + 592) + 24));
  OUTLINED_FUNCTION_95_1();
  sub_1C754F1AC();
  v1 = OUTLINED_FUNCTION_57_0();
  v2(v1);

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_142();

  return v5(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C707C9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_115_0();
  v14 = *(v12 + 696);
  v15 = OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_logger;
  sub_1C7080654(v12 + 16, v12 + 400);
  v16 = v14;
  v17 = sub_1C754FEEC();
  sub_1C755117C();
  sub_1C70806B0(v12 + 16);

  v18 = OUTLINED_FUNCTION_262_0();
  v19 = *(v12 + 696);
  if (v18)
  {
    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_160_1();
    a10 = OUTLINED_FUNCTION_15_5();
    *(v15 + 4) = OUTLINED_FUNCTION_178(4.8151e-34, a10);
    OUTLINED_FUNCTION_162_1();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_234_0(v20);
    OUTLINED_FUNCTION_91_3(&dword_1C6F5C000, v21, v22, "[Warning-Music] Song title %s found unsafe: %@");
    sub_1C6FD7FC8(v13, &qword_1EC215190);
    OUTLINED_FUNCTION_79();
    __swift_destroy_boxed_opaque_existential_1(a10);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_23_3();
  }

  else
  {
  }

  OUTLINED_FUNCTION_0_22(*(v12 + 592), *(*(v12 + 592) + 24));
  OUTLINED_FUNCTION_95_1();
  sub_1C754F1AC();
  v23 = OUTLINED_FUNCTION_57_0();
  v24(v23);

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_20_3();

  return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_1C707CB38(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_1C754F38C();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C707CBFC, v2, 0);
}

uint64_t sub_1C707CBFC()
{
  OUTLINED_FUNCTION_75_1();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = OUTLINED_FUNCTION_49_3();
  __swift_project_boxed_opaque_existential_1(v4, v5);
  sub_1C754F1CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216818);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216820);
  OUTLINED_FUNCTION_6_23();
  sub_1C707E638(v6, v7);
  v8 = swift_task_alloc();
  v0[9] = v8;
  v8[2] = v3;
  v8[3] = v2;
  v8[4] = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[10] = v9;
  *v9 = v10;
  v9[1] = sub_1C707CD74;
  OUTLINED_FUNCTION_139_2();
  OUTLINED_FUNCTION_88_0();

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1C707CD74()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_210();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C707CE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_38_6(*(v10 + 32));
  v11 = OUTLINED_FUNCTION_39_1();
  v12(v11);

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_88_0();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C707CF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[171] = a5;
  v5[170] = a4;
  v5[169] = a3;
  v5[168] = a2;
  v5[167] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  v5[172] = swift_task_alloc();
  v5[173] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216830);
  v5[174] = v7;
  v5[175] = *(v7 - 8);
  v5[176] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C707D038, a5, 0);
}

uint64_t sub_1C707D038()
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_111_0();
  v40 = (v0 + 1272);
  v41 = *(v0 + 1360);
  v1 = *(v0 + 1352);
  v2 = *(v1 + 16);
  v3 = (v1 + 32);
  sub_1C75504FC();
  for (i = 1; i - v2 != 1; ++i)
  {
    v5 = *(v0 + 1376);
    v6 = *(v0 + 1368);
    memcpy((v0 + 808), v3, 0xC0uLL);
    v42 = v3;
    memcpy((v0 + 616), v3, 0xC0uLL);
    v7 = OUTLINED_FUNCTION_43_2();
    __swift_project_boxed_opaque_existential_1(v7, v8);
    sub_1C7080654(v0 + 808, v0 + 1000);
    sub_1C755180C();

    *(v0 + 1328) = i;
    v9 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v9);

    sub_1C754F17C();

    v10 = sub_1C7550D5C();
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
    sub_1C6FB5E28(v0 + 1192, v0 + 1232);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    memcpy(v14 + 4, (v0 + 616), 0xC0uLL);
    v14[28] = v6;
    sub_1C6FD80E4((v0 + 1232), (v14 + 29));
    sub_1C6FD7F70();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v10);

    if (EnumTagSinglePayload == 1)
    {
      sub_1C6FD7FC8(*(v0 + 1376), &qword_1EC2158F8);
    }

    else
    {
      sub_1C7550D4C();
      v16 = OUTLINED_FUNCTION_43_2();
      v17(v16);
    }

    if (v14[2])
    {
      swift_getObjectType();
      OUTLINED_FUNCTION_300_0();
      swift_unknownObjectRetain();
      v18 = sub_1C7550C8C();
      v20 = v19;
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    v21 = **(v0 + 1344);
    OUTLINED_FUNCTION_30();
    v22 = swift_allocObject();
    *(v22 + 16) = &unk_1C7565588;
    *(v22 + 24) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216818);
    v23 = v20 | v18;
    if (v20 | v18)
    {
      v23 = v0 + 1272;
      *v40 = 0;
      *(v0 + 1280) = 0;
      *(v0 + 1288) = v18;
      *(v0 + 1296) = v20;
    }

    v24 = *(v0 + 1384);
    *(v0 + 1304) = 1;
    *(v0 + 1312) = v23;
    *(v0 + 1320) = v21;
    swift_task_create();

    sub_1C6FD7FC8(v24, &qword_1EC2158F8);
    __swift_destroy_boxed_opaque_existential_1(v0 + 1192);
    v3 = v42 + 192;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216818);
  sub_1C7550CCC();
  OUTLINED_FUNCTION_6_23();
  v27 = sub_1C707E638(v25, v26);
  v28 = MEMORY[0x1E69E7CC0];
  *(v0 + 1416) = v27;
  *(v0 + 1432) = v28;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 1424) = v29;
  *v29 = v30;
  OUTLINED_FUNCTION_75_4(v29);
  OUTLINED_FUNCTION_94_1();

  return MEMORY[0x1EEE6D8A8](v31, v32, v33, v34, v35, v36, v37, v38, v40, v41);
}

uint64_t sub_1C707D46C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C707D564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  memcpy((v10 + 216), (v10 + 416), 0xC1uLL);
  memcpy((v10 + 16), (v10 + 216), 0xC1uLL);
  if (sub_1C70808D8(v10 + 16) == 1)
  {
    v11 = *(v10 + 1432);
    v12 = *(v10 + 1336);
    (*(*(v10 + 1400) + 8))(*(v10 + 1408), *(v10 + 1392));
    *v12 = v11;

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_244_0();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    if (*(v10 + 208) == 1)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *(v10 + 1432);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_92();
        sub_1C6FB2CFC();
        v23 = v36;
      }

      v24 = *(v23 + 16);
      v25 = v24 + 1;
      if (v24 >= *(v23 + 24) >> 1)
      {
        a9 = v24 + 1;
        sub_1C6FB2CFC();
        v25 = v24 + 1;
        v23 = v37;
      }

      *(v23 + 16) = v25;
      memcpy((v23 + 192 * v24 + 32), (v10 + 16), 0xC0uLL);
      *(v10 + 1432) = v23;
    }

    else
    {
      sub_1C6FD7FC8(v10 + 216, &qword_1EC216838);
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v10 + 1424) = v26;
    *v26 = v27;
    OUTLINED_FUNCTION_75_4();
    OUTLINED_FUNCTION_244_0();

    return MEMORY[0x1EEE6D8A8](v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
  }
}

uint64_t sub_1C707D730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[52] = a5;
  v6[53] = a6;
  v6[50] = a1;
  v6[51] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C707D754, 0, 0);
}

uint64_t sub_1C707D754()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 408);
  memcpy(*(v0 + 400), v1, 0xC0uLL);
  memcpy((v0 + 16), v1, 0xC0uLL);
  sub_1C7080654(v1, v0 + 208);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 432) = v2;
  *v2 = v3;
  v2[1] = sub_1C707D810;
  v4 = *(v0 + 424);

  return sub_1C707C264((v0 + 16), v4);
}

uint64_t sub_1C707D810()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 440) = v3;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C707D8FC()
{
  *(*(v0 + 400) + 192) = *(v0 + 440);
  OUTLINED_FUNCTION_43();
  return v1();
}

uint64_t sub_1C707D928(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v3 == *a1 && v4 == a1[1])
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1C7551DBC() ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_1C707D994(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v3 == *(a1 + 8) && v4 == *(a1 + 16))
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1C7551DBC() ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_1C707D9DC(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    if (a3)
    {
      v6 = MEMORY[0x1CCA5DB90](a4, a5, result, a2);
      return (v6 & 1) == 0;
    }
  }

  else if ((a3 & 1) == 0)
  {
    if (a5 == a2)
    {
      v6 = a4 < result;
      return (v6 & 1) == 0;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C707DA44()
{
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_72_4();
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2167E8), OUTLINED_FUNCTION_63(), v6 = sub_1C75517AC(), (v7 = *(v0 + 16)) != 0))
  {
    OUTLINED_FUNCTION_225_0();
    while (v4 < *(v0 + 16))
    {
      OUTLINED_FUNCTION_215();
      sub_1C75504FC();
      OUTLINED_FUNCTION_231();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_38_5();
      while (1)
      {
        OUTLINED_FUNCTION_240_1();
        if (v12)
        {
          break;
        }

        OUTLINED_FUNCTION_295_0();
        v12 = *v11 == v3 && v11[1] == v2;
        if (v12 || (OUTLINED_FUNCTION_253_0() & 1) != 0)
        {

          goto LABEL_15;
        }
      }

      *(v5 + 8 * v8) = v10 | v9;
      OUTLINED_FUNCTION_295_0();
      *v13 = v3;
      v13[1] = v2;
      OUTLINED_FUNCTION_99_4();
      if (v15)
      {
        goto LABEL_18;
      }

      *(v6 + 16) = v14;
LABEL_15:
      if (v4 == v7)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_16:

    OUTLINED_FUNCTION_224_0();
  }
}

void sub_1C707DB58(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216890), OUTLINED_FUNCTION_63(), v2 = sub_1C75517AC(), (v22 = *(v1 + 16)) != 0))
  {
    v3 = 0;
    v20 = v1;
    v21 = v1 + 32;
    while (v3 < *(v1 + 16))
    {
      v4 = *(v21 + v3);
      sub_1C7551F3C();
      if (v4)
      {
        v5 = 0xD000000000000015;
      }

      else
      {
        v5 = 0x696A6F6D65;
      }

      if (v4)
      {
        v6 = 0x80000001C75964E0;
      }

      else
      {
        v6 = 0xE500000000000000;
      }

      OUTLINED_FUNCTION_231();
      sub_1C75505AC();

      v7 = sub_1C7551FAC() & ~(-1 << *(v2 + 32));
      OUTLINED_FUNCTION_289_0();
      if ((v10 & v9) != 0)
      {
        v19 = v4;
        v12 = ~v11;
        while (1)
        {
          v13 = *(*(v2 + 48) + v7) ? 0xD000000000000015 : 0x696A6F6D65;
          v14 = *(*(v2 + 48) + v7) ? 0x80000001C75964E0 : 0xE500000000000000;
          if (v13 == v5 && v14 == v6)
          {
            break;
          }

          v16 = OUTLINED_FUNCTION_253_0();

          if (v16)
          {
            goto LABEL_29;
          }

          v7 = (v7 + 1) & v12;
          OUTLINED_FUNCTION_289_0();
          if ((v9 & v10) == 0)
          {
            LOBYTE(v4) = v19;
            goto LABEL_26;
          }
        }
      }

      else
      {
LABEL_26:
        *(v2 + 56 + 8 * v8) = v9 | v10;
        *(*(v2 + 48) + v7) = v4;
        OUTLINED_FUNCTION_99_4();
        if (v18)
        {
          goto LABEL_32;
        }

        *(v2 + 16) = v17;
      }

LABEL_29:
      ++v3;
      v1 = v20;
      if (v3 == v22)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
LABEL_30:
  }
}

uint64_t sub_1C707DD50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216748);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C707DDC0()
{
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_72_4();
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216888), OUTLINED_FUNCTION_63(), v5 = sub_1C75517AC(), (v6 = *(v0 + 16)) != 0))
  {
    OUTLINED_FUNCTION_226();
    while (1)
    {
      OUTLINED_FUNCTION_277_0();
      if (v7)
      {
        break;
      }

      v8 = *(v4 + 8 * v2++);
      sub_1C7551F3C();
      MEMORY[0x1CCA5E460](v8);
      sub_1C7551FAC();
      while (1)
      {
        OUTLINED_FUNCTION_238_0();
        if (v13)
        {
          break;
        }

        if (*(*(v5 + 48) + 8 * v9) == v8)
        {
          goto LABEL_11;
        }
      }

      *(v3 + 8 * v10) = v12 | v11;
      *(*(v5 + 48) + 8 * v9) = v8;
      OUTLINED_FUNCTION_99_4();
      if (v15)
      {
        goto LABEL_14;
      }

      *(v5 + 16) = v14;
LABEL_11:
      if (v2 == v6)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    OUTLINED_FUNCTION_224_0();
  }
}

void sub_1C707DEC4()
{
  OUTLINED_FUNCTION_72_4();
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216880), OUTLINED_FUNCTION_63(), v2 = sub_1C75517AC(), v3 = v2, (v40 = *(v0 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v38 = v0;
    v39 = v0 + 32;
    while (v4 < *(v0 + 16))
    {
      v6 = *(v39 + v4++);
      sub_1C7551F3C();
      switch(v6)
      {
        case 4:
        case 19:
          OUTLINED_FUNCTION_188();
          break;
        case 5:
        case 14:
          OUTLINED_FUNCTION_437();
          break;
        case 8:
          OUTLINED_FUNCTION_274();
          break;
        case 13:
          OUTLINED_FUNCTION_207();
          break;
        default:
          break;
      }

      sub_1C75505AC();

      sub_1C7551FAC();
      OUTLINED_FUNCTION_38_5();
      v8 = ~v7;
      v10 = v9 & ~v7;
      v11 = v10 >> 6;
      v12 = *(v5 + 8 * (v10 >> 6));
      v13 = 1 << v10;
      if (((1 << v10) & v12) != 0)
      {
        while (1)
        {
          v14 = 0xE400000000000000;
          v15 = 1701736302;
          switch(*(*(v3 + 48) + v10))
          {
            case 1:
              v14 = 0xE600000000000000;
              v16 = 1936876912;
              goto LABEL_29;
            case 2:
              v15 = 0x67416E6F73726570;
              v19 = 0x6570795465;
              goto LABEL_20;
            case 3:
              v15 = 1702125924;
              break;
            case 4:
              OUTLINED_FUNCTION_188();
              v14 = v20 + 20;
              v15 = 0x6144664F74726170;
              break;
            case 5:
              OUTLINED_FUNCTION_437();
              v14 = v21 + 1529;
              v15 = 0x6557664F74726170;
              break;
            case 6:
              v14 = 0xE600000000000000;
              v16 = 1935762803;
LABEL_29:
              v15 = v16 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
              break;
            case 7:
              v14 = 0xE800000000000000;
              v17 = 1633906540;
              goto LABEL_24;
            case 8:
              OUTLINED_FUNCTION_274();
              break;
            case 9:
              v15 = 1952540791;
              break;
            case 0xA:
              v15 = 0x764563696C627570;
              v14 = 0xEB00000000746E65;
              break;
            case 0xB:
              v15 = 0x6C616E6F73726570;
              v19 = 0x746E657645;
LABEL_20:
              v14 = v19 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
              break;
            case 0xC:
              v15 = 0x746954636973756DLL;
              v14 = 0xEA0000000000656CLL;
              break;
            case 0xD:
              OUTLINED_FUNCTION_207();
              v14 = v22 + 1284;
              v15 = 0x747241636973756DLL;
              break;
            case 0xE:
              OUTLINED_FUNCTION_437();
              v14 = v18 + 6;
              v15 = 0x6E6547636973756DLL;
              break;
            case 0xF:
              v15 = 1685024621;
              break;
            case 0x10:
              v14 = 0xE800000000000000;
              v17 = 1634891108;
LABEL_24:
              v15 = v17 | 0x6E6F697400000000;
              break;
            case 0x11:
              v14 = 0xE600000000000000;
              v15 = 0x706972547369;
              break;
            case 0x12:
              v15 = 0x6D69546C6C417369;
              v14 = 0xE900000000000065;
              break;
            case 0x13:
              OUTLINED_FUNCTION_188();
              v14 = v23 + 13;
              v15 = 0x6564724F74726F73;
              break;
            default:
              break;
          }

          v24 = 0xE400000000000000;
          v25 = 1701736302;
          switch(v6)
          {
            case 1:
              v24 = 0xE600000000000000;
              v26 = 1936876912;
              goto LABEL_52;
            case 2:
              v25 = 0x67416E6F73726570;
              v29 = 0x6570795465;
              goto LABEL_43;
            case 3:
              v25 = 1702125924;
              break;
            case 4:
              OUTLINED_FUNCTION_188();
              v24 = v30 + 20;
              v25 = 0x6144664F74726170;
              break;
            case 5:
              OUTLINED_FUNCTION_437();
              v24 = v31 + 1529;
              v25 = 0x6557664F74726170;
              break;
            case 6:
              v24 = 0xE600000000000000;
              v26 = 1935762803;
LABEL_52:
              v25 = v26 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
              break;
            case 7:
              v24 = 0xE800000000000000;
              v27 = 1633906540;
              goto LABEL_47;
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
              v29 = 0x746E657645;
LABEL_43:
              v24 = v29 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
              break;
            case 12:
              v25 = 0x746954636973756DLL;
              v24 = 0xEA0000000000656CLL;
              break;
            case 13:
              OUTLINED_FUNCTION_207();
              v24 = v32 + 1284;
              v25 = 0x747241636973756DLL;
              break;
            case 14:
              OUTLINED_FUNCTION_437();
              v24 = v28 + 6;
              v25 = 0x6E6547636973756DLL;
              break;
            case 15:
              v25 = 1685024621;
              break;
            case 16:
              v24 = 0xE800000000000000;
              v27 = 1634891108;
LABEL_47:
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
              OUTLINED_FUNCTION_188();
              v24 = v33 + 13;
              v25 = 0x6564724F74726F73;
              break;
            default:
              break;
          }

          if (v15 == v25 && v14 == v24)
          {
            break;
          }

          v35 = OUTLINED_FUNCTION_249_0();

          if (v35)
          {
            goto LABEL_66;
          }

          v10 = (v10 + 1) & v8;
          v11 = v10 >> 6;
          v12 = *(v5 + 8 * (v10 >> 6));
          v13 = 1 << v10;
          if ((v12 & (1 << v10)) == 0)
          {
            goto LABEL_63;
          }
        }
      }

      else
      {
LABEL_63:
        *(v5 + 8 * v11) = v12 | v13;
        *(*(v3 + 48) + v10) = v6;
        OUTLINED_FUNCTION_99_4();
        if (v37)
        {
          goto LABEL_69;
        }

        *(v3 + 16) = v36;
      }

LABEL_66:
      v0 = v38;
      if (v4 == v40)
      {
        goto LABEL_67;
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
  }

  else
  {
LABEL_67:
  }
}

uint64_t sub_1C707E638(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_63();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C707E67C()
{
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_72_4();
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2167B0), OUTLINED_FUNCTION_63(), v6 = sub_1C75517AC(), (v7 = *(v0 + 16)) != 0))
  {
    OUTLINED_FUNCTION_225_0();
    while (v4 < *(v0 + 16))
    {
      OUTLINED_FUNCTION_215();
      OUTLINED_FUNCTION_231();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_38_5();
      while (1)
      {
        OUTLINED_FUNCTION_240_1();
        if (v12)
        {
          break;
        }

        OUTLINED_FUNCTION_295_0();
        v12 = *v11 == v3 && v11[1] == v2;
        if (v12 || (OUTLINED_FUNCTION_253_0() & 1) != 0)
        {
          goto LABEL_15;
        }
      }

      *(v5 + 8 * v8) = v10 | v9;
      OUTLINED_FUNCTION_295_0();
      *v13 = v3;
      v13[1] = v2;
      OUTLINED_FUNCTION_99_4();
      if (v15)
      {
        goto LABEL_18;
      }

      *(v6 + 16) = v14;
      sub_1C75504FC();
LABEL_15:
      if (v4 == v7)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_16:

    OUTLINED_FUNCTION_224_0();
  }
}

void sub_1C707E784()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = sub_1C754E22C();
  OUTLINED_FUNCTION_3_0();
  v36 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_29_8();
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v31 - v7;
  if (*(v2 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2167D0), OUTLINED_FUNCTION_63(), v8 = sub_1C75517AC(), v9 = v8, (v35 = *(v2 + 16)) != 0))
  {
    v10 = 0;
    v39 = v8 + 56;
    v11 = *(v36 + 80);
    v33 = v2;
    v34 = v2 + ((v11 + 32) & ~v11);
    v38 = v36 + 16;
    v12 = (v36 + 8);
    v32 = (v36 + 32);
    while (v10 < *(v2 + 16))
    {
      v13 = *(v36 + 72);
      v37 = v10 + 1;
      v14 = *(v36 + 16);
      v14(v40, v34 + v13 * v10, v3);
      OUTLINED_FUNCTION_102_5();
      sub_1C707E638(&qword_1EC2167D8, v15);
      OUTLINED_FUNCTION_81_6();
      v16 = sub_1C755058C();
      v17 = ~(-1 << *(v9 + 32));
      while (1)
      {
        v18 = v16 & v17;
        OUTLINED_FUNCTION_85_3();
        if ((v21 & v20) == 0)
        {
          break;
        }

        v22 = v9;
        v14(v0, *(v9 + 48) + v18 * v13, v3);
        OUTLINED_FUNCTION_102_5();
        sub_1C707E638(&qword_1EC2167E0, v23);
        v24 = sub_1C755063C();
        v25 = *v12;
        v26 = OUTLINED_FUNCTION_154();
        v25(v26);
        if (v24)
        {
          (v25)(v40, v3);
          v9 = v22;
          goto LABEL_12;
        }

        v16 = v18 + 1;
        v9 = v22;
      }

      v27 = v40;
      *(v39 + 8 * v19) = v21 | v20;
      (*v32)(*(v9 + 48) + v18 * v13, v27, v3);
      v28 = *(v9 + 16);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_15;
      }

      *(v9 + 16) = v30;
LABEL_12:
      v10 = v37;
      v2 = v33;
      if (v37 == v35)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_13:

    OUTLINED_FUNCTION_25_0();
  }
}

void sub_1C707EA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_307();
  if (sub_1C6FB6304())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216808);
    OUTLINED_FUNCTION_63();
    v9 = v11;
    v12 = sub_1C75517AC();
  }

  else
  {
    v12 = MEMORY[0x1E69E7CD0];
  }

  v24 = sub_1C6FB6304();
  if (v24)
  {
    OUTLINED_FUNCTION_46_7();
    while (1)
    {
      v13 = OUTLINED_FUNCTION_90_6();
      sub_1C6FB6330(v13, v14, v15);
      if (v9)
      {
        v16 = OUTLINED_FUNCTION_103();
        v17 = MEMORY[0x1CCA5DDD0](v16);
      }

      else
      {
        v17 = *(a9 + 8 * v10);
      }

      v18 = v17;
      v19 = __OFADD__(v10++, 1);
      if (v19)
      {
        break;
      }

      v9 = v17;
      sub_1C75513DC();
      OUTLINED_FUNCTION_38_5();
      while (1)
      {
        OUTLINED_FUNCTION_84_4();
        if (v21)
        {
          break;
        }

        sub_1C6F65BE8(0, &qword_1EDD0CE08);
        v22 = OUTLINED_FUNCTION_250_0();
        v9 = sub_1C75513EC();

        if (v9)
        {

          goto LABEL_17;
        }
      }

      OUTLINED_FUNCTION_53_9(v20);
      if (v19)
      {
        goto LABEL_20;
      }

      *(v12 + 16) = v23;
LABEL_17:
      if (v10 == v24)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    OUTLINED_FUNCTION_110_0();
  }
}

void sub_1C707EBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, unint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_303_0();
  OUTLINED_FUNCTION_72_4();
  if (!v19)
  {
    goto LABEL_47;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216758);
  OUTLINED_FUNCTION_63();
  sub_1C75517AC();
  OUTLINED_FUNCTION_204_1();
  if (!v23)
  {
    goto LABEL_47;
  }

  v24 = 0;
  v25 = 0xEE0064696C61766ELL;
  v26 = 0x4973497465737361;
  OUTLINED_FUNCTION_301_0();
  OUTLINED_FUNCTION_242();
  while (1)
  {
    OUTLINED_FUNCTION_277_0();
    if (v27)
    {
      __break(1u);
      goto LABEL_49;
    }

    OUTLINED_FUNCTION_159_1();
    switch(v21)
    {
      case 1:
      case 5:
        OUTLINED_FUNCTION_524();
        break;
      case 3:
        OUTLINED_FUNCTION_197_0();
        break;
      default:
        break;
    }

    sub_1C75504FC();
    sub_1C75505AC();

    v50 = v24;
    sub_1C7551F5C();
    if (v22)
    {
      sub_1C75505AC();
    }

    sub_1C7551FAC();
    OUTLINED_FUNCTION_38_5();
    v51 = ~v28;
    v30 = v29 & ~v28;
    OUTLINED_FUNCTION_85_3();
    if ((v33 & v32) == 0)
    {
      break;
    }

    while (1)
    {
      OUTLINED_FUNCTION_140_3();
      v35 = *(v34 + 16);
      v52 = *(v34 + 8);
      v36 = v25;
      v37 = v22;
      v38 = v26;
      switch(*v34)
      {
        case 1:
          OUTLINED_FUNCTION_524();
          v38 = v39 + 5;
          v36 = a14;
          break;
        case 2:
          v38 = 0x726F6353706F7263;
          v36 = 0xEF776F4C6F6F5465;
          break;
        case 3:
          v38 = OUTLINED_FUNCTION_195_0();
          break;
        case 4:
          v38 = 0xD000000000000011;
          v36 = a15;
          break;
        case 5:
          OUTLINED_FUNCTION_524();
          v38 = v40 + 8;
          v36 = a16;
          break;
        default:
          break;
      }

      v22 = v20;
      v41 = v26;
      v20 = v25;
      switch(v21)
      {
        case 1:
          OUTLINED_FUNCTION_524();
          v41 = v42 + 5;
          v25 = a14;
          break;
        case 2:
          OUTLINED_FUNCTION_293_0();
          break;
        case 3:
          OUTLINED_FUNCTION_194_0();
          break;
        case 4:
          v41 = 0xD000000000000011;
          v25 = a15;
          break;
        case 5:
          OUTLINED_FUNCTION_524();
          v41 = v43 + 8;
          v25 = a16;
          break;
        default:
          break;
      }

      if (v38 == v41 && v36 == v25)
      {
        sub_1C75504FC();
      }

      else
      {
        v26 = sub_1C7551DBC();
        sub_1C75504FC();

        if ((v26 & 1) == 0)
        {

          v25 = v20;
          OUTLINED_FUNCTION_57_6();
          goto LABEL_41;
        }
      }

      v25 = v20;
      if (v35)
      {
        break;
      }

      OUTLINED_FUNCTION_57_6();
      if (!v37)
      {
        goto LABEL_45;
      }

LABEL_41:
      v30 = (v30 + 1) & v51;
      OUTLINED_FUNCTION_85_3();
      if ((v32 & v33) == 0)
      {
        goto LABEL_42;
      }
    }

    OUTLINED_FUNCTION_57_6();
    if (!v37)
    {

      goto LABEL_41;
    }

    if (v52 != a17 || v35 != v22)
    {
      v46 = OUTLINED_FUNCTION_249_0();

      if (v46)
      {
        goto LABEL_45;
      }

      goto LABEL_41;
    }

LABEL_45:

LABEL_46:
    v24 = v50;
    if (v50 == a12)
    {
LABEL_47:

      OUTLINED_FUNCTION_302_0();
      return;
    }
  }

LABEL_42:
  *(a19 + 8 * v31) = v32 | v33;
  OUTLINED_FUNCTION_140_3();
  *v47 = v21;
  *(v47 + 8) = a17;
  *(v47 + 16) = v22;
  OUTLINED_FUNCTION_99_4();
  if (!v49)
  {
    *(v20 + 16) = v48;
    goto LABEL_46;
  }

LABEL_49:
  __break(1u);
}

void sub_1C707EFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, unint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_303_0();
  OUTLINED_FUNCTION_72_4();
  if (!v19)
  {
    goto LABEL_47;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216760);
  OUTLINED_FUNCTION_63();
  sub_1C75517AC();
  OUTLINED_FUNCTION_204_1();
  if (!v24)
  {
    goto LABEL_47;
  }

  v25 = 0;
  OUTLINED_FUNCTION_293_0();
  v26 = 0x726F6353706F7263;
  OUTLINED_FUNCTION_301_0();
  OUTLINED_FUNCTION_242();
  while (1)
  {
    OUTLINED_FUNCTION_277_0();
    if (v27)
    {
      __break(1u);
      goto LABEL_49;
    }

    OUTLINED_FUNCTION_159_1();
    switch(v21)
    {
      case 2:
      case 4:
      case 5:
        break;
      case 3:
        OUTLINED_FUNCTION_197_0();
        break;
      default:
        OUTLINED_FUNCTION_524();
        break;
    }

    sub_1C75504FC();
    sub_1C75505AC();

    v50 = v25;
    sub_1C7551F5C();
    if (v22)
    {
      sub_1C75505AC();
    }

    sub_1C7551FAC();
    OUTLINED_FUNCTION_38_5();
    v51 = ~v28;
    v30 = v29 & ~v28;
    OUTLINED_FUNCTION_85_3();
    if ((v33 & v32) == 0)
    {
      break;
    }

    while (1)
    {
      OUTLINED_FUNCTION_140_3();
      v35 = *(v34 + 16);
      v52 = *(v34 + 8);
      v36 = v23;
      v37 = v22;
      v38 = v26;
      switch(*v34)
      {
        case 1:
          OUTLINED_FUNCTION_524();
          v38 = v40 + 5;
          v36 = a15;
          break;
        case 2:
          break;
        case 3:
          v38 = OUTLINED_FUNCTION_195_0();
          break;
        case 4:
          v38 = 0xD000000000000011;
          v36 = a16;
          break;
        case 5:
          v38 = 0x736E6961746E6F63;
          v36 = 0xEC00000074786554;
          break;
        default:
          OUTLINED_FUNCTION_524();
          v38 = v39 + 25;
          v36 = a14;
          break;
      }

      v22 = v20;
      v41 = v26;
      v20 = v23;
      switch(v21)
      {
        case 1:
          OUTLINED_FUNCTION_524();
          v41 = v43 + 5;
          v23 = a15;
          break;
        case 2:
          break;
        case 3:
          OUTLINED_FUNCTION_194_0();
          break;
        case 4:
          v41 = 0xD000000000000011;
          v23 = a16;
          break;
        case 5:
          v41 = 0x736E6961746E6F63;
          v23 = 0xEC00000074786554;
          break;
        default:
          OUTLINED_FUNCTION_524();
          v41 = v42 + 25;
          v23 = a14;
          break;
      }

      if (v38 == v41 && v36 == v23)
      {
        sub_1C75504FC();
      }

      else
      {
        v26 = sub_1C7551DBC();
        sub_1C75504FC();

        if ((v26 & 1) == 0)
        {

          v23 = v20;
          OUTLINED_FUNCTION_57_6();
          goto LABEL_41;
        }
      }

      v23 = v20;
      if (v35)
      {
        break;
      }

      OUTLINED_FUNCTION_57_6();
      if (!v37)
      {
        goto LABEL_45;
      }

LABEL_41:
      v30 = (v30 + 1) & v51;
      OUTLINED_FUNCTION_85_3();
      if ((v32 & v33) == 0)
      {
        goto LABEL_42;
      }
    }

    OUTLINED_FUNCTION_57_6();
    if (!v37)
    {

      goto LABEL_41;
    }

    if (v52 != a17 || v35 != v22)
    {
      v46 = OUTLINED_FUNCTION_249_0();

      if (v46)
      {
        goto LABEL_45;
      }

      goto LABEL_41;
    }

LABEL_45:

LABEL_46:
    v25 = v50;
    if (v50 == a12)
    {
LABEL_47:

      OUTLINED_FUNCTION_302_0();
      return;
    }
  }

LABEL_42:
  *(a19 + 8 * v31) = v32 | v33;
  OUTLINED_FUNCTION_140_3();
  *v47 = v21;
  *(v47 + 8) = a17;
  *(v47 + 16) = v22;
  OUTLINED_FUNCTION_99_4();
  if (!v49)
  {
    *(v20 + 16) = v48;
    goto LABEL_46;
  }

LABEL_49:
  __break(1u);
}

void sub_1C707F400()
{
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_72_4();
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(v5), OUTLINED_FUNCTION_63(), v6 = sub_1C75517AC(), (v7 = *(v0 + 16)) != 0))
  {
    OUTLINED_FUNCTION_226();
    while (1)
    {
      OUTLINED_FUNCTION_277_0();
      if (v8)
      {
        break;
      }

      v9 = *(v4 + v2++);
      sub_1C7551F3C();
      MEMORY[0x1CCA5E460](v9);
      sub_1C7551FAC();
      while (1)
      {
        OUTLINED_FUNCTION_238_0();
        if (v14)
        {
          break;
        }

        if (*(*(v6 + 48) + v10) == v9)
        {
          goto LABEL_11;
        }
      }

      *(v3 + 8 * v11) = v13 | v12;
      *(*(v6 + 48) + v10) = v9;
      OUTLINED_FUNCTION_99_4();
      if (v16)
      {
        goto LABEL_14;
      }

      *(v6 + 16) = v15;
LABEL_11:
      if (v2 == v7)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    OUTLINED_FUNCTION_224_0();
  }
}

void sub_1C707F4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_307();
  if (sub_1C6FB6304())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216790);
    OUTLINED_FUNCTION_63();
    v9 = v11;
    v12 = sub_1C75517AC();
  }

  else
  {
    v12 = MEMORY[0x1E69E7CD0];
  }

  v24 = sub_1C6FB6304();
  if (v24)
  {
    OUTLINED_FUNCTION_46_7();
    while (1)
    {
      v13 = OUTLINED_FUNCTION_90_6();
      sub_1C6FB6330(v13, v14, v15);
      if (v9)
      {
        v16 = OUTLINED_FUNCTION_103();
        v17 = MEMORY[0x1CCA5DDD0](v16);
      }

      else
      {
        v17 = *(a9 + 8 * v10);
      }

      v18 = v17;
      v19 = __OFADD__(v10++, 1);
      if (v19)
      {
        break;
      }

      v9 = v17;
      sub_1C75513DC();
      OUTLINED_FUNCTION_38_5();
      while (1)
      {
        OUTLINED_FUNCTION_84_4();
        if (v21)
        {
          break;
        }

        sub_1C6F65BE8(0, &qword_1EDD0CEB0);
        v22 = OUTLINED_FUNCTION_250_0();
        v9 = sub_1C75513EC();

        if (v9)
        {

          goto LABEL_17;
        }
      }

      OUTLINED_FUNCTION_53_9(v20);
      if (v19)
      {
        goto LABEL_20;
      }

      *(v12 + 16) = v23;
LABEL_17:
      if (v10 == v24)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    OUTLINED_FUNCTION_110_0();
  }
}

void sub_1C707F668()
{
  OUTLINED_FUNCTION_72_4();
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(v3), OUTLINED_FUNCTION_63(), sub_1C75517AC(), OUTLINED_FUNCTION_204_1(), v4))
  {
    v5 = 0;
    v6 = v2 + 56;
    v23 = v0;
    v24 = v0 + 32;
    while (v5 < *(v0 + 16))
    {
      v7 = *(v24 + 8 * v5++);
      sub_1C755068C();
      sub_1C7551F3C();
      v26 = v7;
      OUTLINED_FUNCTION_109_0();
      sub_1C75505AC();
      v8 = sub_1C7551FAC();

      OUTLINED_FUNCTION_38_5();
      v10 = ~v9;
      while (1)
      {
        v11 = v8 & v10;
        v12 = (v8 & v10) >> 6;
        v13 = *(v6 + 8 * v12);
        v14 = 1 << (v8 & v10);
        if ((v14 & v13) == 0)
        {
          break;
        }

        v15 = sub_1C755068C();
        v17 = v16;
        if (v15 == sub_1C755068C() && v17 == v18)
        {

          goto LABEL_17;
        }

        OUTLINED_FUNCTION_282();
        v20 = OUTLINED_FUNCTION_13_6();

        if (v20)
        {

          goto LABEL_17;
        }

        v8 = v11 + 1;
      }

      *(v6 + 8 * v12) = v14 | v13;
      *(*(v2 + 48) + 8 * v11) = v26;
      OUTLINED_FUNCTION_99_4();
      if (v22)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v21;
LABEL_17:
      v0 = v23;
      if (v5 == v25)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void sub_1C707F838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_307();
  if (sub_1C6FB6304())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216768);
    OUTLINED_FUNCTION_63();
    v9 = v11;
    v12 = sub_1C75517AC();
  }

  else
  {
    v12 = MEMORY[0x1E69E7CD0];
  }

  v24 = sub_1C6FB6304();
  if (v24)
  {
    OUTLINED_FUNCTION_46_7();
    while (1)
    {
      v13 = OUTLINED_FUNCTION_90_6();
      sub_1C6FB6330(v13, v14, v15);
      if (v9)
      {
        v16 = OUTLINED_FUNCTION_103();
        v17 = MEMORY[0x1CCA5DDD0](v16);
      }

      else
      {
        v17 = *(a9 + 8 * v10);
      }

      v18 = v17;
      v19 = __OFADD__(v10++, 1);
      if (v19)
      {
        break;
      }

      v9 = v17;
      sub_1C75513DC();
      OUTLINED_FUNCTION_38_5();
      while (1)
      {
        OUTLINED_FUNCTION_84_4();
        if (v21)
        {
          break;
        }

        sub_1C6F65BE8(0, &qword_1EDD0FAB0);
        v22 = OUTLINED_FUNCTION_250_0();
        v9 = sub_1C75513EC();

        if (v9)
        {

          goto LABEL_17;
        }
      }

      OUTLINED_FUNCTION_53_9(v20);
      if (v19)
      {
        goto LABEL_20;
      }

      *(v12 + 16) = v23;
LABEL_17:
      if (v10 == v24)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    OUTLINED_FUNCTION_110_0();
  }
}

uint64_t sub_1C707F97C(uint64_t result, int a2, char a3, uint64_t a4, int a5, char a6, uint64_t a7)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_29;
  }

  v7 = result;
  if (a4 < result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a5 != a2)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (result != a4)
  {
    if (*(a7 + 36) != a5)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    v8 = 1 << *(a7 + 32);
    result = 1;
    while ((v7 & 0x8000000000000000) == 0 && v7 < v8)
    {
      v9 = v7 >> 6;
      v10 = *(a7 + 56 + 8 * (v7 >> 6));
      if (((v10 >> v7) & 1) == 0)
      {
        goto LABEL_25;
      }

      v11 = v10 & (-2 << (v7 & 0x3F));
      if (v11)
      {
        v7 = __clz(__rbit64(v11)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v9 << 6;
        v13 = v9 + 1;
        v14 = (a7 + 64 + 8 * v9);
        while (v13 < (v8 + 63) >> 6)
        {
          v16 = *v14++;
          v15 = v16;
          v12 += 64;
          ++v13;
          if (v16)
          {
            v7 = __clz(__rbit64(v15)) + v12;
            goto LABEL_20;
          }
        }

        v7 = 1 << *(a7 + 32);
      }

LABEL_20:
      if (v7 == a4)
      {
        return result;
      }

      if (__OFADD__(result++, 1))
      {
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return 0;
}

void sub_1C707FD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_597();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_115();
  if ((v26 & 0xC000000000000001) == 0)
  {
    v27 = *v23;
    v28 = *(v23 + 8);
    v29 = *(v23 + 16);
    v30 = sub_1C707FE18(*v23, v28, v29, v22);
    v32 = v31;
    v34 = v33;
    sub_1C6F9ED50(v27, v28, v29);
    *v23 = v30;
    *(v23 + 8) = v32;
    *(v23 + 16) = v34 & 1;
LABEL_7:
    OUTLINED_FUNCTION_596();
    return;
  }

  if (*(v23 + 16) == 1)
  {
    if (sub_1C755166C())
    {
      swift_isUniquelyReferenced_nonNull_native();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155A0);
    v35 = sub_1C7550FCC();
    OUTLINED_FUNCTION_148_3(v35, v36);
    sub_1C755172C();
    (v23)(&a9, 0);
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1C707FE18(uint64_t result, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    goto LABEL_10;
  }

  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
  }

  else if ((*(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result))
  {
    if (*(a4 + 36) == a2)
    {
      return sub_1C755162C();
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1C707FEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_1C7080EDC;

  return sub_1C707973C(a2, a3, a4, a5);
}

uint64_t sub_1C707FF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_1C7080010;

  return sub_1C7079EDC(a2, a3, a4, a5);
}

uint64_t sub_1C7080010()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_47();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_14();
  *v6 = v5;

  *v4 = v2;
  OUTLINED_FUNCTION_43();

  return v7();
}

uint64_t sub_1C708010C@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

BOOL sub_1C7080144(uint64_t a1, int a2, char a3, uint64_t a4, int a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
LABEL_9:
      JUMPOUT(0x1CCA5DBA0);
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a6)
  {
    goto LABEL_8;
  }

  if (a2 != a5)
  {
    __break(1u);
    goto LABEL_8;
  }

  return a1 == a4;
}

uint64_t sub_1C7080178(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C6F65BE8(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C70801C8()
{
  result = qword_1EC216770;
  if (!qword_1EC216770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216770);
  }

  return result;
}

unint64_t sub_1C7080244()
{
  result = qword_1EDD09468;
  if (!qword_1EDD09468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09468);
  }

  return result;
}

unint64_t sub_1C7080298()
{
  result = qword_1EC216798;
  if (!qword_1EC216798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216798);
  }

  return result;
}

unint64_t sub_1C708039C()
{
  result = qword_1EDD0F0C8;
  if (!qword_1EDD0F0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F0C8);
  }

  return result;
}

unint64_t sub_1C70803F0()
{
  result = qword_1EDD0C908;
  if (!qword_1EDD0C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0C908);
  }

  return result;
}

unint64_t sub_1C7080444()
{
  result = qword_1EC2167F8;
  if (!qword_1EC2167F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2167F8);
  }

  return result;
}

unint64_t sub_1C7080498()
{
  result = qword_1EC216800;
  if (!qword_1EC216800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216800);
  }

  return result;
}

unint64_t sub_1C7080600()
{
  result = qword_1EC216810;
  if (!qword_1EC216810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216810);
  }

  return result;
}

uint64_t sub_1C7080704()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_126();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v1[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_55_6();
  OUTLINED_FUNCTION_244_0();

  return sub_1C707CF14(v3, v4, v5, v6, v7);
}

uint64_t sub_1C708079C()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v1[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_244_0();

  return sub_1C707D730(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1C7080844()
{
  OUTLINED_FUNCTION_49_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_8(v1);

  return v4(v3);
}

uint64_t sub_1C70808D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C70808F0()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_126();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v1[1] = sub_1C6F738F4;
  OUTLINED_FUNCTION_55_6();
  OUTLINED_FUNCTION_142();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C7080994()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_300();
  v0 = type metadata accessor for GlobalTrait();
  OUTLINED_FUNCTION_18(v0);
  OUTLINED_FUNCTION_146_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_5_2(v1);
  *v2 = v3;
  v2[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_88_0();

  return sub_1C707AB4C(v4, v5, v6, v7, v8);
}

uint64_t sub_1C7080A80()
{
  OUTLINED_FUNCTION_49_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_8(v1);

  return v4(v3);
}

uint64_t sub_1C7080B14()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_126();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v1[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_55_6();
  OUTLINED_FUNCTION_142();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C7080BB8()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

uint64_t sub_1C7080C10(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

uint64_t sub_1C7080C2C()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

uint64_t sub_1C7080C84()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_300();
  v0 = type metadata accessor for PersonalTrait();
  OUTLINED_FUNCTION_18(v0);
  OUTLINED_FUNCTION_146_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_5_2(v1);
  *v2 = v3;
  v2[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_88_0();

  return sub_1C707A67C(v4, v5, v6, v7, v8);
}

uint64_t sub_1C7080D70()
{
  OUTLINED_FUNCTION_49_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_8(v1);

  return v4(v3);
}

uint64_t sub_1C7080E04()
{
  v1 = OUTLINED_FUNCTION_300();
  v2(v1);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1C7080E58()
{
  result = qword_1EC216878;
  if (!qword_1EC216878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216878);
  }

  return result;
}

uint64_t sub_1C7080EAC(uint64_t a1, uint64_t a2, char a3)
{
  v3 = a3 == 3 || a3 == 7;
  if (v3 || a3 == 12)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_16()
{

  return sub_1C7080BB8();
}

uint64_t OUTLINED_FUNCTION_43_7()
{
  v3 = *(v0 + v1 + 16);
  *(v2 - 112) = *(v0 + v1);
  *(v2 - 96) = v3;
  v4 = *(v0 + v1 + 48);
  *(v2 - 80) = *(v0 + v1 + 32);
  *(v2 - 64) = v4;
  return v2 - 112;
}

uint64_t OUTLINED_FUNCTION_64_5(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v4 = a1;

  return sub_1C6F765A4(v3, v2, va);
}

uint64_t OUTLINED_FUNCTION_66_8()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_78_5()
{

  return sub_1C7550D5C();
}

void OUTLINED_FUNCTION_91_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_114_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{

  sub_1C7074680(a1, v21, sub_1C70F15D8, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t OUTLINED_FUNCTION_115_4()
{

  return sub_1C7080E04();
}

uint64_t OUTLINED_FUNCTION_116_4()
{

  return sub_1C7080E04();
}

uint64_t OUTLINED_FUNCTION_118_3()
{

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_133_3(uint64_t a1, void *a2)
{
  *a2 = v2;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_138_3()
{

  return type metadata accessor for SafetyError(0);
}

uint64_t OUTLINED_FUNCTION_145_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, __int128 a19, char a20)
{
  v23 = *(v20 + v21 + 16);
  a17 = *(v20 + v21);
  a18 = v23;
  a19 = *(v20 + v21 + 32);
  a20 = *(v20 + v21 + 48);

  return sub_1C7080548(&a17, &a9);
}

uint64_t OUTLINED_FUNCTION_159_1()
{

  return sub_1C7551F3C();
}

uint64_t OUTLINED_FUNCTION_160_1()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_161_1()
{

  sub_1C6FD1EE8();
}

id OUTLINED_FUNCTION_162_1()
{
  *(v1 + 12) = 2112;

  return v0;
}

uint64_t OUTLINED_FUNCTION_173_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, __int128 a11, __int128 a12, uint64_t a13, __int128 a14, __int128 a15, __int128 a16, uint64_t a17)
{
  a14 = a10;
  a15 = a11;
  a16 = a12;
  a17 = a13;

  return sub_1C70260EC(&a14);
}

uint64_t OUTLINED_FUNCTION_175()
{

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_178(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v2 = a1;

  return sub_1C6F765A4(v4, v3, va);
}

uint64_t OUTLINED_FUNCTION_179_0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_181()
{
}

uint64_t OUTLINED_FUNCTION_192_0()
{

  return sub_1C75505AC();
}

uint64_t OUTLINED_FUNCTION_213_0()
{

  return sub_1C75505FC();
}

uint64_t OUTLINED_FUNCTION_214_0()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_215()
{

  return sub_1C7551F3C();
}

uint64_t OUTLINED_FUNCTION_216_0()
{

  return sub_1C754F09C();
}

void OUTLINED_FUNCTION_217()
{

  sub_1C6F7ED9C();
}

uint64_t OUTLINED_FUNCTION_218_0()
{

  return sub_1C7550A5C();
}

uint64_t OUTLINED_FUNCTION_219_0()
{

  return sub_1C7550A5C();
}

uint64_t OUTLINED_FUNCTION_220_0()
{

  return sub_1C754F09C();
}

uint64_t OUTLINED_FUNCTION_221_0()
{

  return sub_1C754F1CC();
}

uint64_t OUTLINED_FUNCTION_232_0(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_234_0(uint64_t result)
{
  *(v1 + 14) = result;
  *v2 = result;
  return result;
}

void OUTLINED_FUNCTION_236_0(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10[6] = 1;
  v10[7] = a1;
  v10[8] = a10;
}

void OUTLINED_FUNCTION_241_0()
{
  *(v0 + 16) = v2;
  v5 = v0 + 16 * v1;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
}

uint64_t OUTLINED_FUNCTION_246_0()
{

  return sub_1C75519EC();
}

void OUTLINED_FUNCTION_247_0()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_248_0()
{
}

uint64_t OUTLINED_FUNCTION_249_0()
{

  return sub_1C7551DBC();
}